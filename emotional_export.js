(function() {

    function getData(animation) {
        let length = Math.ceil(animation.length * 20);
        let defaultFrame = {head:[],right_arm:[],left_arm:[],body:[],right_leg:[],left_leg:[],shadow:[],nameplate:[]};
        let data = [];
        for (bone in defaultFrame) {
            for (let t = 0; t <= length; ++t) {
                if (!data[t]) {
                    data[t] = {};
                }
                data[t][bone] = {translation:[0,0,0],rotation:[0,0,0]};
            }
            for (a in animation.animators) {
                let anim = animation.animators[a];
                if (typeof anim._name == "string") {
                    console.log(anim);
                    if (bone == anim._name) {
                        for (let t = 0; t <= length; ++t) {
                            if (anim.position.length > 0) {
                                let frames = anim.position;
                                let beforeFrames = [];
                                let afterFrames = [];
                                for (frame in frames) {
                                    if (frames[frame].time * 20 <= t) {
                                        beforeFrames.push(frames[frame]);
                                    }
                                    if (frames[frame].time * 20 >= t) {
                                        afterFrames.push(frames[frame]);
                                    }
                                }
                                if (beforeFrames.length == 0) {
                                    beforeFrames.push(frames[0]);
                                }
                                if (afterFrames.length == 0) {
                                    afterFrames.push(frames[frames.length - 1]);
                                }
                                let before_plus = beforeFrames[Math.max(0, beforeFrames.length - 2)];
                                let before = beforeFrames[beforeFrames.length - 1];
                                let after = afterFrames[0];
                                let after_plus = afterFrames[Math.min(1, afterFrames.length - 1)];
                                let alpha = 0;
                                if (after.time - before.time != 0) {
                                    alpha = (t / 20 - before.time) / (after.time - before.time);
                                }
                                let x = afterFrames[0].getCatmullromLerp(before_plus, before, after, after_plus, "x", alpha);
                                let y = afterFrames[0].getCatmullromLerp(before_plus, before, after, after_plus, "y", alpha);
                                let z = afterFrames[0].getCatmullromLerp(before_plus, before, after, after_plus, "z", alpha);
                                data[t][bone].translation = [x, y, z];
                                
                            }
                            if (anim.rotation.length > 0) {
                                let frames = anim.rotation;
                                let beforeFrames = [];
                                let afterFrames = [];
                                for (frame in frames) {
                                    if (frames[frame].time * 20 <= t) {
                                        beforeFrames.push(frames[frame]);
                                    }
                                    if (frames[frame].time * 20 >= t) {
                                        afterFrames.push(frames[frame]);
                                    }
                                }
                                if (beforeFrames.length == 0) {
                                    beforeFrames.push(frames[0]);
                                }
                                if (afterFrames.length == 0) {
                                    afterFrames.push(frames[frames.length - 1]);
                                }
                                let before_plus = beforeFrames[Math.max(0, beforeFrames.length - 2)];
                                let before = beforeFrames[beforeFrames.length - 1];
                                let after = afterFrames[0];
                                let after_plus = afterFrames[Math.min(1, afterFrames.length - 1)];
                                let alpha = 0;
                                if (after.time - before.time != 0) {
                                    alpha = (t / 20 - before.time) / (after.time - before.time);
                                }
                                let x = afterFrames[0].getCatmullromLerp(before_plus, before, after, after_plus, "x", alpha);
                                let y = afterFrames[0].getCatmullromLerp(before_plus, before, after, after_plus, "y", alpha);
                                let z = afterFrames[0].getCatmullromLerp(before_plus, before, after, after_plus, "z", alpha);
                                data[t][bone].rotation = [x, y, z];
                            }
                        }
                    }
                }
            }
        }
        return data;
    }

    var posScale = 0.94 / 16;
    function getCommand(data, t) {
        let command = "\ndata modify storage emotional frames append value {"

        let frame = data[t];
        let addComma = false;
        for (b in frame) {
            if (addComma) {
                command += ", ";
            } else {
                addComma = true;
            }
            let bone = frame[b];
            command += b + ": {";
            command += "translation: [" + bone.translation[0] * posScale + "f," + bone.translation[1] * posScale + "f," + -bone.translation[2] * posScale + "f], ";
            rotation = new THREE.Quaternion().setFromEuler(new THREE.Euler(Math.degToRad(bone.rotation[0]), Math.degToRad(-bone.rotation[1]), Math.degToRad(-bone.rotation[2]), "ZYX"));
            command += "rotation: [" + rotation.x + "f," + rotation.y + "f," + rotation.z + "f," + rotation.w + "f]";
            command += "}";
        }
        command += "}"
        return command;
    }

    var button;

    Plugin.register('emotional_export', {
        title: 'Emotional Export',
        author: 'Oranamous',
        icon: 'icon-player',
        description: 'Merp',
        version: '1.0.0',
        variant: 'desktop',
        onload() {
            button = new Action('export_emotes', {
                name: 'Export Emotes',
                description: '',
                icon: 'icon-player',
                click: function() {
                    let exportDir = Blockbench.pickDirectory();
                    if (exportDir != null) {
                        for (let a = 0; a < Blockbench.Animator.animations.length; a++) {
                            let animation = Blockbench.Animator.animations[a];
                            if (animation.name.startsWith("emote.")) {
                                let name = animation.name.slice(6);
                                let length = Math.ceil(animation.length * 20);
                                let data = getData(animation);
                                let mcfunction = "scoreboard players set @s emotional.emoteTime " + length;
                                mcfunction += "\ndata modify storage emotional frames set value []";
                                for (let t = 0; t <= length; ++t) {
                                    mcfunction += getCommand(data, t);
                                }
                                console.log(name);
                                //console.log(mcfunction);
                                Blockbench.writeFile(exportDir + "\\" + name + ".mcfunction", {content: mcfunction});
                            }
                        }
                    }
                }
            });
            MenuBar.addAction(button, 'filter');
        },
        onunload() {
            button.delete();
        }
    });

})();