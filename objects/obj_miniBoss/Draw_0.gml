/// @description Insert description here
// You can write your code in this editor
if (shader_is_set) {
    shader_set(shd_redGlow);
    draw_self();
    shader_reset();
} else {
    draw_self();
}