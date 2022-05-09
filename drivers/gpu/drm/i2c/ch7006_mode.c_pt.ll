; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/i2c/ch7006_mode.c_pt.bc'
source_filename = "../drivers/gpu/drm/i2c/ch7006_mode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ch7006_tv_norm_info = type { i64, i32, i32, i32, i64, i64, i32, i32 }
%struct.ch7006_mode = type { %struct.drm_display_mode, i32, i32, i64, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_encoder_slave = type { %struct.drm_encoder, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ch7006_priv = type { %struct.ch7006_encoder_params, ptr, %struct.ch7006_state, %struct.ch7006_state, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ch7006_encoder_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ch7006_state = type { [38 x i8] }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PAL\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PAL-M\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PAL-N\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PAL-Nc\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PAL-60\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NTSC-M\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NTSC-J\00", [25 x i8] zeroinitializer }, align 32
@ch7006_tv_norm_names = dso_local constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], [36 x i8] zeroinitializer }, align 32
@ch7006_tv_norms = dso_local constant { [7 x %struct.ch7006_tv_norm_info], [80 x i8] } { [7 x %struct.ch7006_tv_norm_info] [%struct.ch7006_tv_norm_info { i64 214748364800, i32 576, i32 625, i32 810, i64 19042247534182400, i64 1288490188, i32 0, i32 0 }, %struct.ch7006_tv_norm_info { i64 257440597162, i32 480, i32 525, i32 660, i64 15357134167938696, i64 1455993913, i32 16, i32 16 }, %struct.ch7006_tv_norm_info { i64 214748364800, i32 576, i32 625, i32 810, i64 19042247534182400, i64 1455993913, i32 0, i32 0 }, %struct.ch7006_tv_norm_info { i64 214748364800, i32 576, i32 625, i32 810, i64 15384814446182400, i64 1288490188, i32 0, i32 0 }, %struct.ch7006_tv_norm_info { i64 257440597162, i32 480, i32 525, i32 660, i64 19042247534182400, i64 1288490188, i32 16, i32 16 }, %struct.ch7006_tv_norm_info { i64 257440597162, i32 480, i32 525, i32 660, i64 15374028709560320, i64 1455993913, i32 8, i32 0 }, %struct.ch7006_tv_norm_info { i64 257440597162, i32 480, i32 525, i32 660, i64 15374028709560320, i64 1228360646, i32 24, i32 0 }], [80 x i8] zeroinitializer }, align 32
@ch7006_modes = dso_local constant { [26 x %struct.ch7006_mode], [928 x i8] } { [26 x %struct.ch7006_mode] [%struct.ch7006_mode { %struct.drm_display_mode { i32 21000, i16 512, i16 528, i16 592, i16 840, i16 0, i16 384, i16 394, i16 410, i16 500, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"512x384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, i32 512, i32 384, i64 780814564307, i32 0, i32 6, i32 13 }, %struct.ch7006_mode { %struct.drm_display_mode { i32 26250, i16 512, i16 528, i16 592, i16 840, i16 0, i16 384, i16 394, i16 410, i16 625, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"512x384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, i32 512, i32 384, i64 624651651447, i32 1, i32 1, i32 13 }, %struct.ch7006_mode { %struct.drm_display_mode { i32 20140, i16 512, i16 528, i16 592, i16 800, i16 0, i16 384, i16 394, i16 410, i16 420, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"512x384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, i32 512, i32 384, i64 915932200522, i32 0, i32 4, i32 114 }, %struct.ch7006_mode { %struct.drm_display_mode { i32 24671, i16 512, i16 528, i16 592, i16 784, i16 0, i16 384, i16 394, i16 410, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"512x384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, i32 512, i32 384, i64 747699755358, i32 1, i32 3, i32 114 }, %struct.ch7006_mode { %struct.drm_display_mode { i32 28125, i16 720, i16 736, i16 800, i16 1125, i16 0, i16 400, i16 410, i16 426, i16 500, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x400\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, i32 720, i32 400, i64 583008207887, i32 32, i32 6, i32 13 }, %struct.ch7006_mode { %struct.drm_display_mode { i32 34875, i16 720, i16 736, i16 800, i16 1116, i16 0, i16 400, i16 410, i16 426, i16 625, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x400\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, i32 720, i32 400, i64 470167909086, i32 33, i32 1, i32 13 }, %struct.ch7006_mode { %struct.drm_display_mode { i32 23790, i16 720, i16 736, i16 800, i16 945, i16 0, i16 400, i16 410, i16 426, i16 420, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x400\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, i32 720, i32 400, i64 689237634263, i32 32, i32 4, i32 114 }, %struct.ch7006_mode { %struct.drm_display_mode { i32 29455, i16 720, i16 736, i16 800, i16 936, i16 0, i16 400, i16 410, i16 426, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x400\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, i32 720, i32 400, i64 556691936288, i32 33, i32 3, i32 114 }, %struct.ch7006_mode { %struct.drm_display_mode { i32 25000, i16 640, i16 656, i16 720, i16 1000, i16 0, i16 400, i16 410, i16 426, i16 500, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"640x400\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, i32 640, i32 400, i64 655884233632, i32 64, i32 6, i32 13 }, %struct.ch7006_mode { %struct.drm_display_mode { i32 31500, i16 640, i16 656, i16 720, i16 1008, i16 0, i16 400, i16 410, i16 426, i16 625, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"640x400\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, i32 640, i32 400, i64 520543042548, i32 65, i32 1, i32 13 }, %struct.ch7006_mode { %struct.drm_display_mode { i32 21147, i16 640, i16 656, i16 720, i16 840, i16 0, i16 400, i16 410, i16 426, i16 420, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"640x400\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, i32 640, i32 400, i64 775392338846, i32 64, i32 4, i32 114 }, %struct.ch7006_mode { %struct.drm_display_mode { i32 26434, i16 640, i16 656, i16 720, i16 840, i16 0, i16 400, i16 410, i16 426, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"640x400\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, i32 640, i32 400, i64 620313871075, i32 65, i32 2, i32 114 }, %struct.ch7006_mode { %struct.drm_display_mode { i32 30210, i16 640, i16 656, i16 720, i16 840, i16 0, i16 400, i16 410, i16 426, i16 600, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"640x400\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, i32 640, i32 400, i64 542774637791, i32 66, i32 1, i32 114 }, %struct.ch7006_mode { %struct.drm_display_mode { i32 21000, i16 640, i16 656, i16 720, i16 840, i16 0, i16 480, i16 490, i16 506, i16 500, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"640x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, i32 640, i32 480, i64 780814564307, i32 96, i32 4, i32 13 }, %struct.ch7006_mode { %struct.drm_display_mode { i32 26250, i16 640, i16 656, i16 720, i16 840, i16 0, i16 480, i16 490, i16 506, i16 625, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"640x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, i32 640, i32 480, i64 624651651447, i32 97, i32 2, i32 13 }, %struct.ch7006_mode { %struct.drm_display_mode { i32 31500, i16 640, i16 656, i16 720, i16 840, i16 0, i16 480, i16 490, i16 506, i16 750, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"640x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, i32 640, i32 480, i64 520543042548, i32 99, i32 1, i32 13 }, %struct.ch7006_mode { %struct.drm_display_mode { i32 24671, i16 640, i16 656, i16 720, i16 784, i16 0, i16 480, i16 490, i16 506, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"640x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, i32 640, i32 480, i64 747699755358, i32 97, i32 4, i32 114 }, %struct.ch7006_mode { %struct.drm_display_mode { i32 28196, i16 640, i16 656, i16 720, i16 784, i16 0, i16 480, i16 490, i16 506, i16 600, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"640x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, i32 640, i32 480, i64 654237286087, i32 98, i32 2, i32 114 }, %struct.ch7006_mode { %struct.drm_display_mode { i32 30210, i16 640, i16 656, i16 720, i16 800, i16 0, i16 480, i16 490, i16 506, i16 630, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"640x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, i32 640, i32 480, i64 610621466615, i32 99, i32 1, i32 114 }, %struct.ch7006_mode { %struct.drm_display_mode { i32 29500, i16 720, i16 816, i16 880, i16 944, i16 0, i16 576, i16 586, i16 602, i16 625, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x576\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, i32 800, i32 600, i64 625313358032, i32 129, i32 7, i32 13 }, %struct.ch7006_mode { %struct.drm_display_mode { i32 36000, i16 800, i16 816, i16 880, i16 960, i16 0, i16 600, i16 610, i16 626, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"800x600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, i32 800, i32 600, i64 512409557220, i32 131, i32 6, i32 13 }, %struct.ch7006_mode { %struct.drm_display_mode { i32 39000, i16 800, i16 816, i16 880, i16 936, i16 0, i16 600, i16 610, i16 626, i16 836, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"800x600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, i32 800, i32 600, i64 472993437507, i32 132, i32 1, i32 13 }, %struct.ch7006_mode { %struct.drm_display_mode { i32 39273, i16 800, i16 816, i16 880, i16 1040, i16 0, i16 600, i16 610, i16 626, i16 630, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"800x600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, i32 800, i32 600, i64 626278427575, i32 131, i32 4, i32 114 }, %struct.ch7006_mode { %struct.drm_display_mode { i32 43636, i16 800, i16 816, i16 880, i16 1040, i16 0, i16 600, i16 610, i16 626, i16 700, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"800x600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, i32 800, i32 600, i64 563650584938, i32 132, i32 2, i32 114 }, %struct.ch7006_mode { %struct.drm_display_mode { i32 47832, i16 800, i16 816, i16 880, i16 1064, i16 0, i16 600, i16 610, i16 626, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"800x600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, i32 800, i32 600, i64 514207551403, i32 133, i32 1, i32 114 }, %struct.ch7006_mode zeroinitializer], [928 x i8] zeroinitializer }, align 32
@ch7006_debug = external dso_local local_unnamed_addr global i32, align 4
@ch7006_setup_levels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 227, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: black level: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ch7006_setup_levels\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/i2c/ch7006_mode.c\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ch7006_setup_levels._entry_ptr = internal global ptr @ch7006_setup_levels._entry, section ".printk_index", align 4
@ch7006_setup_subcarrier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.9, i32 251, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: subcarrier inc: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ch7006_setup_subcarrier\00", [40 x i8] zeroinitializer }, align 32
@ch7006_setup_subcarrier._entry_ptr = internal global ptr @ch7006_setup_subcarrier._entry, section ".printk_index", align 4
@ch7006_setup_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.9, i32 289, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: n=%d m=%d f=%d c=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ch7006_setup_pll\00", [47 x i8] zeroinitializer }, align 32
@ch7006_setup_pll._entry_ptr = internal global ptr @ch7006_setup_pll._entry, section ".printk_index", align 4
@ch7006_setup_properties._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.9, i32 363, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: hpos: %d, vpos: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ch7006_setup_properties\00", [40 x i8] zeroinitializer }, align 32
@ch7006_setup_properties._entry_ptr = internal global ptr @ch7006_setup_properties._entry, section ".printk_index", align 4
@ch7006_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.9, i32 376, ptr @.str.20, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error %d writing to subaddress 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ch7006_write\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ch7006_write._entry_ptr = internal global ptr @ch7006_write._entry, section ".printk_index", align 4
@ch7006_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.9, i32 396, ptr @.str.20, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error %d reading from subaddress 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ch7006_read\00", [20 x i8] zeroinitializer }, align 32
@ch7006_read._entry_ptr = internal global ptr @ch7006_read._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 9]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 30, i32 18 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 31, i32 20 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 32, i32 20 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 33, i32 21 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 34, i32 21 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 35, i32 21 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 36, i32 21 }
@___asan_gen_.44 = private unnamed_addr constant [21 x i8] c"ch7006_tv_norm_names\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 29, i32 20 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"ch7006_tv_norms\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 49, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant [13 x i8] c"ch7006_modes\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 144, i32 26 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 227, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 251, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 288, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 363, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 375, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [37 x i8] c"../drivers/gpu/drm/i2c/ch7006_mode.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 395, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @ch7006_read._entry, ptr @ch7006_read._entry_ptr, ptr @ch7006_setup_levels._entry, ptr @ch7006_setup_levels._entry_ptr, ptr @ch7006_setup_pll._entry, ptr @ch7006_setup_pll._entry_ptr, ptr @ch7006_setup_properties._entry, ptr @ch7006_setup_properties._entry_ptr, ptr @ch7006_setup_subcarrier._entry, ptr @ch7006_setup_subcarrier._entry_ptr, ptr @ch7006_write._entry, ptr @ch7006_write._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ch7006_tv_norm_names, ptr @ch7006_tv_norms, ptr @ch7006_modes, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_tv_norm_names to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_tv_norms to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_modes to i32), i32 3744, i32 4672, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_setup_levels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_setup_subcarrier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_setup_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_setup_properties._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ch7006_lookup_mode(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readonly %drm_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_priv = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 2
  %0 = ptrtoint ptr %slave_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave_priv, align 4
  %norm = getelementptr inbounds %struct.ch7006_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %norm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %norm, align 4
  %shl = shl nuw i32 1, %3
  %hdisplay4 = getelementptr inbounds %struct.drm_display_mode, ptr %drm_mode, i32 0, i32 1
  %vdisplay9 = getelementptr inbounds %struct.drm_display_mode, ptr %drm_mode, i32 0, i32 6
  %vtotal16 = getelementptr inbounds %struct.drm_display_mode, ptr %drm_mode, i32 0, i32 9
  %htotal23 = getelementptr inbounds %struct.drm_display_mode, ptr %drm_mode, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %4 = phi i32 [ 21000, %entry ], [ %27, %for.inc.for.body_crit_edge ]
  %mode.048 = phi ptr [ @ch7006_modes, %entry ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %valid_norms = getelementptr inbounds %struct.ch7006_mode, ptr %mode.048, i32 0, i32 6
  %5 = ptrtoint ptr %valid_norms to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %valid_norms, align 8
  %7 = and i32 %shl, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.not = icmp eq i32 %7, 0
  br i1 %tobool2.not.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode.048, i32 0, i32 1
  %8 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hdisplay, align 4
  %10 = ptrtoint ptr %hdisplay4 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hdisplay4, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp.not = icmp eq i16 %9, %11
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode.048, i32 0, i32 6
  %12 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vdisplay, align 2
  %14 = ptrtoint ptr %vdisplay9 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vdisplay9, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp11.not = icmp eq i16 %13, %15
  br i1 %cmp11.not, label %lor.lhs.false13, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode.048, i32 0, i32 9
  %16 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vtotal, align 4
  %18 = ptrtoint ptr %vtotal16 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vtotal16, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %19)
  %cmp18.not = icmp eq i16 %17, %19
  br i1 %cmp18.not, label %lor.lhs.false20, label %lor.lhs.false13.for.inc_crit_edge

lor.lhs.false13.for.inc_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false20:                                  ; preds = %lor.lhs.false13
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode.048, i32 0, i32 4
  %20 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %htotal, align 2
  %22 = ptrtoint ptr %htotal23 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %htotal23, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %23)
  %cmp25.not = icmp eq i16 %21, %23
  br i1 %cmp25.not, label %lor.lhs.false27, label %lor.lhs.false20.for.inc_crit_edge

lor.lhs.false20.for.inc_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false27:                                  ; preds = %lor.lhs.false20
  %24 = ptrtoint ptr %drm_mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %drm_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %25)
  %cmp31.not = icmp eq i32 %4, %25
  br i1 %cmp31.not, label %lor.lhs.false27.cleanup_crit_edge, label %lor.lhs.false27.for.inc_crit_edge

lor.lhs.false27.for.inc_crit_edge:                ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false27.cleanup_crit_edge:                ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false27.for.inc_crit_edge, %lor.lhs.false20.for.inc_crit_edge, %lor.lhs.false13.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.ch7006_mode, ptr %mode.048, i32 1
  %26 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %incdec.ptr, align 8
  %tobool.not = icmp eq i32 %27, 0
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %lor.lhs.false27.cleanup_crit_edge
  %retval.0 = phi ptr [ %mode.048, %lor.lhs.false27.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ch7006_setup_levels(ptr nocapture noundef readonly %encoder) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_priv.i = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 3
  %0 = ptrtoint ptr %bus_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_priv.i, align 4
  %slave_priv = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 2
  %2 = ptrtoint ptr %slave_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave_priv, align 4
  %norm2 = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %norm2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %norm2, align 4
  %black_level3 = getelementptr [7 x %struct.ch7006_tv_norm_info], ptr @ch7006_tv_norms, i32 0, i32 %5, i32 5
  %6 = and i32 %5, 268435455
  %7 = lshr i32 89, %6
  %8 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  %arrayidx6 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 4
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx6, align 1
  %11 = and i8 %10, -65
  %12 = trunc i32 %8 to i8
  %13 = shl nuw nsw i8 %12, 6
  %.sink = or i8 %11, %13
  %gain.0 = select i1 %cmp.not, i32 71, i32 76
  store i8 %.sink, ptr %arrayidx6, align 1
  %14 = ptrtoint ptr %black_level3 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %black_level3, align 8
  %mul = mul i64 %15, 26625
  %add.i = add i64 %mul, 2147483648
  %16 = lshr i64 %add.i, 32
  %conv.i = trunc i64 %16 to i32
  %div = sdiv i32 %conv.i, %gain.0
  %brightness = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 10
  %17 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %18)
  %cmp.i = icmp slt i32 %18, 50
  %sub.i = add nsw i32 %div, -90
  %sub1.i = sub nsw i32 208, %div
  %cond.i = select i1 %cmp.i, i32 %sub.i, i32 %sub1.i
  %sub2.i = add i32 %18, -50
  %mul.i = mul i32 %cond.i, %sub2.i
  %div.i = sdiv i32 %mul.i, 50
  %add.i28 = add nsw i32 %div.i, %div
  %conv13 = trunc i32 %add.i28 to i8
  %arrayidx14 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 9
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv13, ptr %arrayidx14, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ch7006_debug to i32))
  %20 = load i32, ptr @ch7006_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %entry.do.end19_crit_edge, label %do.end

entry.do.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %add.i28) #10
  br label %do.end19

do.end19:                                         ; preds = %do.end, %entry.do.end19_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ch7006_setup_subcarrier(ptr nocapture noundef readonly %encoder) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_priv.i = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 3
  %0 = ptrtoint ptr %bus_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_priv.i, align 4
  %slave_priv = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 2
  %2 = ptrtoint ptr %slave_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave_priv, align 4
  %norm2 = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %norm2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %norm2, align 4
  %mode3 = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %mode3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode3, align 4
  %subc_coeff = getelementptr inbounds %struct.ch7006_mode, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %subc_coeff to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %subc_coeff, align 8
  %shr = ashr i64 %9, 8
  %subc_freq = getelementptr [7 x %struct.ch7006_tv_norm_info], ptr @ch7006_tv_norms, i32 0, i32 %5, i32 4
  %10 = ptrtoint ptr %subc_freq to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %subc_freq, align 8
  %shr4 = ashr i64 %11, 24
  %mul = mul i64 %shr4, %shr
  %add.i = add i64 %mul, 2147483648
  %12 = lshr i64 %add.i, 32
  %conv.i = trunc i64 %12 to i32
  %arrayidx6 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 24
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx6, align 1
  %15 = and i8 %14, -16
  %shr7 = lshr i32 %conv.i, 28
  %16 = trunc i32 %shr7 to i8
  %conv9 = or i8 %15, %16
  store i8 %conv9, ptr %arrayidx6, align 1
  %arrayidx13 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 25
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx13, align 1
  %19 = and i8 %18, -16
  %shr16118 = lshr i64 %add.i, 56
  %20 = trunc i64 %shr16118 to i8
  %21 = and i8 %20, 15
  %conv20 = or i8 %21, %19
  store i8 %conv20, ptr %arrayidx13, align 1
  %arrayidx24 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 26
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx24, align 1
  %24 = and i8 %23, -16
  %shr27119 = lshr i64 %add.i, 52
  %25 = trunc i64 %shr27119 to i8
  %26 = and i8 %25, 15
  %conv31 = or i8 %26, %24
  store i8 %conv31, ptr %arrayidx24, align 1
  %arrayidx35 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 27
  %27 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx35, align 1
  %29 = and i8 %28, -16
  %shr38120 = lshr i64 %add.i, 48
  %30 = trunc i64 %shr38120 to i8
  %31 = and i8 %30, 15
  %conv42 = or i8 %29, %31
  store i8 %conv42, ptr %arrayidx35, align 1
  %arrayidx46 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 28
  %32 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx46, align 1
  %34 = and i8 %33, -16
  %shr49121 = lshr i64 %add.i, 44
  %35 = trunc i64 %shr49121 to i8
  %36 = and i8 %35, 15
  %conv53 = or i8 %34, %36
  store i8 %conv53, ptr %arrayidx46, align 1
  %arrayidx57 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 29
  %37 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx57, align 1
  %39 = and i8 %38, -16
  %shr60122 = lshr i64 %add.i, 40
  %40 = trunc i64 %shr60122 to i8
  %41 = and i8 %40, 15
  %conv64 = or i8 %39, %41
  store i8 %conv64, ptr %arrayidx57, align 1
  %arrayidx68 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 30
  %42 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx68, align 1
  %44 = and i8 %43, -16
  %45 = trunc i64 %12 to i8
  %46 = lshr i8 %45, 4
  %conv75 = or i8 %44, %46
  store i8 %conv75, ptr %arrayidx68, align 1
  %arrayidx79 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 31
  %47 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx79, align 1
  %49 = and i8 %48, -16
  %50 = and i8 %45, 15
  %conv86 = or i8 %49, %50
  store i8 %conv86, ptr %arrayidx79, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ch7006_debug to i32))
  %51 = load i32, ptr @ch7006_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not = icmp eq i32 %51, 0
  br i1 %tobool.not, label %entry.do.end91_crit_edge, label %do.end

entry.do.end91_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end91

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv.i) #10
  br label %do.end91

do.end91:                                         ; preds = %do.end, %entry.do.end91_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ch7006_setup_pll(ptr nocapture noundef readonly %encoder) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_priv.i = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 3
  %0 = ptrtoint ptr %bus_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_priv.i, align 4
  %slave_priv = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 2
  %2 = ptrtoint ptr %slave_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave_priv, align 4
  %mode2 = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mode2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode2, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc23.for.cond3.preheader_crit_edge, %entry
  %best_freq.091 = phi i32 [ 0, %entry ], [ %best_freq.2, %for.inc23.for.cond3.preheader_crit_edge ]
  %best_m.090 = phi i32 [ 0, %entry ], [ %best_m.2, %for.inc23.for.cond3.preheader_crit_edge ]
  %best_n.089 = phi i32 [ 0, %entry ], [ %best_n.2, %for.inc23.for.cond3.preheader_crit_edge ]
  %n.088 = phi i32 [ 0, %entry ], [ %inc24, %for.inc23.for.cond3.preheader_crit_edge ]
  %8 = mul nuw nsw i32 %n.088, 14318
  %mul = add nuw nsw i32 %8, 28636
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.cond3.preheader
  %best_freq.187 = phi i32 [ %best_freq.091, %for.cond3.preheader ], [ %best_freq.2, %for.body5.for.body5_crit_edge ]
  %best_m.186 = phi i32 [ %best_m.090, %for.cond3.preheader ], [ %best_m.2, %for.body5.for.body5_crit_edge ]
  %m.085 = phi i32 [ 0, %for.cond3.preheader ], [ %inc, %for.body5.for.body5_crit_edge ]
  %best_n.184 = phi i32 [ %best_n.089, %for.cond3.preheader ], [ %best_n.2, %for.body5.for.body5_crit_edge ]
  %add6 = add nuw nsw i32 %m.085, 2
  %div.udiv = udiv i32 %mul, %add6
  %sub = sub i32 %div.udiv, %7
  %9 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %sub14 = sub i32 %best_freq.187, %7
  %10 = tail call i32 @llvm.abs.i32(i32 %sub14, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %10)
  %cmp22 = icmp slt i32 %9, %10
  %best_n.2 = select i1 %cmp22, i32 %n.088, i32 %best_n.184
  %best_m.2 = select i1 %cmp22, i32 %m.085, i32 %best_m.186
  %best_freq.2 = select i1 %cmp22, i32 %div.udiv, i32 %best_freq.187
  %inc = add nuw nsw i32 %m.085, 1
  %exitcond.not = icmp eq i32 %inc, 315
  br i1 %exitcond.not, label %for.inc23, label %for.body5.for.body5_crit_edge

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body5

for.inc23:                                        ; preds = %for.body5
  %inc24 = add nuw nsw i32 %n.088, 1
  %exitcond92.not = icmp eq i32 %inc24, 650
  br i1 %exitcond92.not, label %for.end25, label %for.inc23.for.cond3.preheader_crit_edge

for.inc23.for.cond3.preheader_crit_edge:          ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond3.preheader

for.end25:                                        ; preds = %for.inc23
  %11 = lshr i32 %best_n.2, 7
  %and = and i32 %11, 6
  %shr2683 = lshr i32 %best_m.2, 8
  %and28 = and i32 %shr2683, 1
  %or = or i32 %and28, %and
  %conv = trunc i32 %or to i8
  %arrayidx = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 19
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %arrayidx, align 1
  %conv32 = trunc i32 %best_m.2 to i8
  %arrayidx33 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 20
  %13 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv32, ptr %arrayidx33, align 1
  %conv37 = trunc i32 %best_n.2 to i8
  %arrayidx38 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 21
  %14 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv37, ptr %arrayidx38, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 108, i32 %best_n.2)
  %cmp39 = icmp slt i32 %best_n.2, 108
  %arrayidx42 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 32
  %15 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx42, align 1
  %17 = and i8 %16, -17
  %masksel = select i1 %cmp39, i8 16, i8 0
  %.sink = or i8 %17, %masksel
  store i8 %.sink, ptr %arrayidx42, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ch7006_debug to i32))
  %18 = load i32, ptr @ch7006_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %for.end25.do.end57_crit_edge, label %do.end

for.end25.do.end57_crit_edge:                     ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end57

do.end:                                           ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv54 = zext i1 %cmp39 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %best_n.2, i32 noundef %best_m.2, i32 noundef %best_freq.2, i32 noundef %conv54) #10
  br label %do.end57

do.end57:                                         ; preds = %do.end, %for.end25.do.end57_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ch7006_setup_power_state(ptr nocapture noundef readonly %encoder) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_priv = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 2
  %0 = ptrtoint ptr %slave_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave_priv, align 4
  %arrayidx = getelementptr %struct.ch7006_priv, ptr %1, i32 0, i32 2, i32 0, i32 14
  %select_subconnector = getelementptr inbounds %struct.ch7006_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %select_subconnector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %select_subconnector, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %subconnector2 = getelementptr inbounds %struct.ch7006_priv, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %subconnector2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %subconnector2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.false ], [ %3, %entry.cond.end_crit_edge ]
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %arrayidx, align 1
  %last_dpms = getelementptr inbounds %struct.ch7006_priv, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %last_dpms to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %last_dpms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %9 = zext i32 %cond to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cond, label %if.then.if.end22_crit_edge [
    i32 9, label %sw.bb8
    i32 5, label %if.then.if.end22.sink.split_crit_edge
  ]

if.then.if.end22.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.sink.split

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

sw.bb8:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.sink.split

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %chip_version = getelementptr inbounds %struct.ch7006_priv, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %chip_version to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chip_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %11)
  %cmp12 = icmp sgt i32 %11, 31
  %. = select i1 %cmp12, i8 12, i8 9
  br label %if.end22.sink.split

if.end22.sink.split:                              ; preds = %if.else, %sw.bb8, %if.then.if.end22.sink.split_crit_edge
  %.sink = phi i8 [ 27, %sw.bb8 ], [ 10, %if.then.if.end22.sink.split_crit_edge ], [ %., %if.else ]
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink, ptr %arrayidx, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %if.then.if.end22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ch7006_setup_properties(ptr nocapture noundef readonly %encoder) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_priv.i = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 3
  %0 = ptrtoint ptr %bus_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_priv.i, align 4
  %slave_priv = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 2
  %2 = ptrtoint ptr %slave_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave_priv, align 4
  %norm2 = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %norm2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %norm2, align 4
  %mode = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode, align 4
  %flicker6 = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %flicker6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flicker6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %9)
  %cmp.i = icmp slt i32 %9, 50
  %cond.i = select i1 %cmp.i, i32 2, i32 1
  %sub2.i = add i32 %9, -50
  %mul.i = mul i32 %cond.i, %sub2.i
  %div.i = sdiv i32 %mul.i, 50
  %add.i = add nsw i32 %div.i, 2
  %shl = shl nsw i32 %add.i, 4
  %and = and i32 %shl, 48
  %shl9 = shl nsw i32 %add.i, 2
  %and10 = and i32 %shl9, 12
  %or = or i32 %and, %and10
  %10 = trunc i32 %or to i8
  %conv = or i8 %10, 1
  %arrayidx12 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %arrayidx12, align 1
  %contrast13 = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %contrast13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %contrast13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %13)
  %cmp.i710 = icmp slt i32 %13, 50
  %cond.i711 = select i1 %cmp.i710, i32 5, i32 2
  %sub2.i712 = add i32 %13, -50
  %mul.i713 = mul i32 %cond.i711, %sub2.i712
  %div.i714 = sdiv i32 %mul.i713, 50
  %14 = trunc i32 %div.i714 to i8
  %15 = add i8 %14, 5
  %conv18 = and i8 %15, 7
  %arrayidx19 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 17
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv18, ptr %arrayidx19, align 1
  %vtotal = getelementptr [7 x %struct.ch7006_tv_norm_info], ptr @ch7006_tv_norms, i32 0, i32 %5, i32 2
  %17 = ptrtoint ptr %vtotal to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vtotal, align 4
  %vtotal21 = getelementptr inbounds %struct.drm_display_mode, ptr %7, i32 0, i32 9
  %19 = ptrtoint ptr %vtotal21 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vtotal21, align 4
  %conv22 = zext i16 %20 to i32
  %conv20705 = zext i32 %18 to i64
  %mul = shl nuw i64 %conv20705, 32
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv22, i64 %mul) #11, !srcloc !63
  %asmresult1.i = extractvalue { i64, i64 } %21, 1
  %enc_hdisp = getelementptr inbounds %struct.ch7006_mode, ptr %7, i32 0, i32 1
  %22 = ptrtoint ptr %enc_hdisp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %enc_hdisp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp414 = icmp eq i32 %23, 0
  br i1 %cmp414, label %entry.if.end432_crit_edge, label %if.else428, !prof !64

entry.if.end432_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end432

if.else428:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %enc_vdisp = getelementptr inbounds %struct.ch7006_mode, ptr %7, i32 0, i32 2
  %24 = ptrtoint ptr %enc_vdisp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %enc_vdisp, align 4
  %conv211706 = zext i32 %23 to i64
  %mul212 = shl nuw i64 %conv211706, 32
  %26 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %25, i64 %mul212) #11, !srcloc !63
  %asmresult1.i741 = extractvalue { i64, i64 } %26, 1
  br label %if.end432

if.end432:                                        ; preds = %if.else428, %entry.if.end432_crit_edge
  %aspect.0 = phi i64 [ %asmresult1.i741, %if.else428 ], [ 0, %entry.if.end432_crit_edge ]
  %hvirtual = getelementptr [7 x %struct.ch7006_tv_norm_info], ptr @ch7006_tv_norms, i32 0, i32 %5, i32 3
  %27 = ptrtoint ptr %hvirtual to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hvirtual, align 8
  %conv434 = sext i32 %28 to i64
  %mul435 = mul i64 %aspect.0, %conv434
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %7, i32 0, i32 1
  %29 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %hdisplay, align 4
  %conv436 = zext i16 %30 to i64
  %mul437 = mul i64 %asmresult1.i, %conv436
  %sub438 = sub i64 %mul435, %mul437
  %hmargin = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 7
  %31 = ptrtoint ptr %hmargin to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hmargin, align 4
  %conv439 = sext i32 %32 to i64
  %conv442 = zext i16 %20 to i64
  %mul440 = mul nsw i64 %conv439, %conv442
  %mul443 = mul i64 %mul440, %sub438
  %add.i742 = add i64 %mul443, 2147483648
  %33 = lshr i64 %add.i742, 32
  %conv.i = trunc i64 %33 to i32
  %div446 = sdiv i32 %conv.i, %18
  %div448 = sdiv i32 %div446, 400
  %arrayidx450 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 8
  %34 = ptrtoint ptr %arrayidx450 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx450, align 1
  %36 = and i8 %35, -3
  %37 = lshr i32 %div448, 7
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, 2
  %conv457 = or i8 %39, %36
  store i8 %conv457, ptr %arrayidx450, align 1
  %arrayidx461 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 10
  %conv468 = trunc i32 %div448 to i8
  %40 = ptrtoint ptr %arrayidx461 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv468, ptr %arrayidx461, align 1
  %vdisplay = getelementptr [7 x %struct.ch7006_tv_norm_info], ptr @ch7006_tv_norms, i32 0, i32 %5, i32 1
  %41 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vdisplay, align 8
  %vdisplay471 = getelementptr inbounds %struct.drm_display_mode, ptr %7, i32 0, i32 6
  %43 = ptrtoint ptr %vdisplay471 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vdisplay471, align 2
  %conv472 = zext i16 %44 to i64
  %mul473 = mul i64 %asmresult1.i, %conv472
  %add.i743 = add i64 %mul473, 2147483648
  %45 = lshr i64 %add.i743, 32
  %conv.i744 = trunc i64 %45 to i32
  %voffset = getelementptr [7 x %struct.ch7006_tv_norm_info], ptr @ch7006_tv_norms, i32 0, i32 %5, i32 7
  %46 = ptrtoint ptr %voffset to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %voffset, align 4
  %sub475 = add i32 %47, %42
  %add476 = sub i32 %sub475, %conv.i744
  %48 = tail call i32 @llvm.smax.i32(i32 %add476, i32 0)
  %vmargin = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 8
  %49 = ptrtoint ptr %vmargin to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %vmargin, align 4
  %mul484 = mul i32 %48, %50
  %div486 = sdiv i32 %mul484, 200
  %51 = and i8 %conv457, -2
  %shr491707 = lshr i32 %div486, 8
  %52 = trunc i32 %shr491707 to i8
  %53 = and i8 %52, 1
  %conv495 = or i8 %53, %51
  %54 = ptrtoint ptr %arrayidx450 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv495, ptr %arrayidx450, align 1
  %arrayidx499 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 11
  %conv506 = trunc i32 %div486 to i8
  %55 = ptrtoint ptr %arrayidx499 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv506, ptr %arrayidx499, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ch7006_debug to i32))
  %56 = load i32, ptr @ch7006_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool509.not = icmp eq i32 %56, 0
  br i1 %tobool509.not, label %if.end432.do.end514_crit_edge, label %do.end

if.end432.do.end514_crit_edge:                    ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end514

do.end:                                           ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %div448, i32 noundef %div486) #10
  br label %do.end514

do.end514:                                        ; preds = %do.end, %if.end432.do.end514_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ch7006_write(ptr noundef %client, i8 noundef zeroext %addr, i8 noundef zeroext %val) local_unnamed_addr #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #7
  %0 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %addr, ptr %buf, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %val, ptr %0, align 1
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv = zext i8 %addr to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call.i, i32 noundef %conv) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @ch7006_read(ptr noundef %client, i8 noundef zeroext %addr) local_unnamed_addr #2 align 64 {
entry:
  %addr.addr = alloca i8, align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %addr, ptr %addr.addr, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val, align 1, !annotation !65
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end:                                           ; preds = %entry
  %call.i10 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %cmp2 = icmp slt i32 %call.i10, 0
  br i1 %cmp2, label %if.end.do.end_crit_edge, label %if.end4

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %val, align 1
  br label %cleanup

do.end:                                           ; preds = %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %entry.do.end_crit_edge ], [ %call.i10, %if.end.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %4 = ptrtoint ptr %addr.addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr.addr, align 1
  %conv = zext i8 %5 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %ret.0, i32 noundef %conv) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end4
  %retval.0 = phi i8 [ 0, %do.end ], [ %3, %if.end4 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ch7006_state_load(ptr noundef %client, ptr noundef readonly %state) local_unnamed_addr #2 align 64 {
entry:
  %buf.i265 = alloca [2 x i8], align 1
  %buf.i259 = alloca [2 x i8], align 1
  %buf.i253 = alloca [2 x i8], align 1
  %buf.i247 = alloca [2 x i8], align 1
  %buf.i241 = alloca [2 x i8], align 1
  %buf.i235 = alloca [2 x i8], align 1
  %buf.i229 = alloca [2 x i8], align 1
  %buf.i223 = alloca [2 x i8], align 1
  %buf.i217 = alloca [2 x i8], align 1
  %buf.i211 = alloca [2 x i8], align 1
  %buf.i205 = alloca [2 x i8], align 1
  %buf.i199 = alloca [2 x i8], align 1
  %buf.i193 = alloca [2 x i8], align 1
  %buf.i187 = alloca [2 x i8], align 1
  %buf.i181 = alloca [2 x i8], align 1
  %buf.i175 = alloca [2 x i8], align 1
  %buf.i169 = alloca [2 x i8], align 1
  %buf.i163 = alloca [2 x i8], align 1
  %buf.i157 = alloca [2 x i8], align 1
  %buf.i151 = alloca [2 x i8], align 1
  %buf.i145 = alloca [2 x i8], align 1
  %buf.i139 = alloca [2 x i8], align 1
  %buf.i133 = alloca [2 x i8], align 1
  %buf.i127 = alloca [2 x i8], align 1
  %buf.i121 = alloca [2 x i8], align 1
  %buf.i115 = alloca [2 x i8], align 1
  %buf.i109 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [38 x i8], ptr %state, i32 0, i32 14
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 14, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %1, ptr %2, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.ch7006_write.exit_crit_edge

entry.ch7006_write.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.18, i32 noundef %call.i.i, i32 noundef 14) #10
  br label %ch7006_write.exit

ch7006_write.exit:                                ; preds = %do.end.i, %entry.ch7006_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %state, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i109) #7
  %7 = getelementptr inbounds [2 x i8], ptr %buf.i109, i32 0, i32 1
  %8 = ptrtoint ptr %buf.i109 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %buf.i109, align 1
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %6, ptr %7, align 1
  %call.i.i110 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i109, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i110)
  %cmp.i111 = icmp slt i32 %call.i.i110, 0
  br i1 %cmp.i111, label %do.end.i113, label %ch7006_write.exit.ch7006_write.exit114_crit_edge

ch7006_write.exit.ch7006_write.exit114_crit_edge: ; preds = %ch7006_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit114

do.end.i113:                                      ; preds = %ch7006_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i112 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i112, ptr noundef nonnull @.str.18, i32 noundef %call.i.i110, i32 noundef 0) #10
  br label %ch7006_write.exit114

ch7006_write.exit114:                             ; preds = %do.end.i113, %ch7006_write.exit.ch7006_write.exit114_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i109) #7
  %arrayidx4 = getelementptr [38 x i8], ptr %state, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx4, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i115) #7
  %12 = getelementptr inbounds [2 x i8], ptr %buf.i115, i32 0, i32 1
  %13 = ptrtoint ptr %buf.i115 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %buf.i115, align 1
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %11, ptr %12, align 1
  %call.i.i116 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i115, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i116)
  %cmp.i117 = icmp slt i32 %call.i.i116, 0
  br i1 %cmp.i117, label %do.end.i119, label %ch7006_write.exit114.ch7006_write.exit120_crit_edge

ch7006_write.exit114.ch7006_write.exit120_crit_edge: ; preds = %ch7006_write.exit114
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit120

do.end.i119:                                      ; preds = %ch7006_write.exit114
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i118 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i118, ptr noundef nonnull @.str.18, i32 noundef %call.i.i116, i32 noundef 1) #10
  br label %ch7006_write.exit120

ch7006_write.exit120:                             ; preds = %do.end.i119, %ch7006_write.exit114.ch7006_write.exit120_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i115) #7
  %arrayidx6 = getelementptr [38 x i8], ptr %state, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx6, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i121) #7
  %17 = getelementptr inbounds [2 x i8], ptr %buf.i121, i32 0, i32 1
  %18 = ptrtoint ptr %buf.i121 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %buf.i121, align 1
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %16, ptr %17, align 1
  %call.i.i122 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i121, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i122)
  %cmp.i123 = icmp slt i32 %call.i.i122, 0
  br i1 %cmp.i123, label %do.end.i125, label %ch7006_write.exit120.ch7006_write.exit126_crit_edge

ch7006_write.exit120.ch7006_write.exit126_crit_edge: ; preds = %ch7006_write.exit120
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit126

do.end.i125:                                      ; preds = %ch7006_write.exit120
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i124 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i124, ptr noundef nonnull @.str.18, i32 noundef %call.i.i122, i32 noundef 3) #10
  br label %ch7006_write.exit126

ch7006_write.exit126:                             ; preds = %do.end.i125, %ch7006_write.exit120.ch7006_write.exit126_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i121) #7
  %arrayidx8 = getelementptr [38 x i8], ptr %state, i32 0, i32 4
  %20 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i127) #7
  %22 = getelementptr inbounds [2 x i8], ptr %buf.i127, i32 0, i32 1
  %23 = ptrtoint ptr %buf.i127 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 4, ptr %buf.i127, align 1
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %21, ptr %22, align 1
  %call.i.i128 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i127, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i128)
  %cmp.i129 = icmp slt i32 %call.i.i128, 0
  br i1 %cmp.i129, label %do.end.i131, label %ch7006_write.exit126.ch7006_write.exit132_crit_edge

ch7006_write.exit126.ch7006_write.exit132_crit_edge: ; preds = %ch7006_write.exit126
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit132

do.end.i131:                                      ; preds = %ch7006_write.exit126
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i130 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i130, ptr noundef nonnull @.str.18, i32 noundef %call.i.i128, i32 noundef 4) #10
  br label %ch7006_write.exit132

ch7006_write.exit132:                             ; preds = %do.end.i131, %ch7006_write.exit126.ch7006_write.exit132_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i127) #7
  %arrayidx10 = getelementptr [38 x i8], ptr %state, i32 0, i32 6
  %25 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx10, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i133) #7
  %27 = getelementptr inbounds [2 x i8], ptr %buf.i133, i32 0, i32 1
  %28 = ptrtoint ptr %buf.i133 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 6, ptr %buf.i133, align 1
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %26, ptr %27, align 1
  %call.i.i134 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i133, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i134)
  %cmp.i135 = icmp slt i32 %call.i.i134, 0
  br i1 %cmp.i135, label %do.end.i137, label %ch7006_write.exit132.ch7006_write.exit138_crit_edge

ch7006_write.exit132.ch7006_write.exit138_crit_edge: ; preds = %ch7006_write.exit132
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit138

do.end.i137:                                      ; preds = %ch7006_write.exit132
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i136 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i136, ptr noundef nonnull @.str.18, i32 noundef %call.i.i134, i32 noundef 6) #10
  br label %ch7006_write.exit138

ch7006_write.exit138:                             ; preds = %do.end.i137, %ch7006_write.exit132.ch7006_write.exit138_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i133) #7
  %arrayidx12 = getelementptr [38 x i8], ptr %state, i32 0, i32 7
  %30 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx12, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i139) #7
  %32 = getelementptr inbounds [2 x i8], ptr %buf.i139, i32 0, i32 1
  %33 = ptrtoint ptr %buf.i139 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 7, ptr %buf.i139, align 1
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %31, ptr %32, align 1
  %call.i.i140 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i139, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i140)
  %cmp.i141 = icmp slt i32 %call.i.i140, 0
  br i1 %cmp.i141, label %do.end.i143, label %ch7006_write.exit138.ch7006_write.exit144_crit_edge

ch7006_write.exit138.ch7006_write.exit144_crit_edge: ; preds = %ch7006_write.exit138
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit144

do.end.i143:                                      ; preds = %ch7006_write.exit138
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i142 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i142, ptr noundef nonnull @.str.18, i32 noundef %call.i.i140, i32 noundef 7) #10
  br label %ch7006_write.exit144

ch7006_write.exit144:                             ; preds = %do.end.i143, %ch7006_write.exit138.ch7006_write.exit144_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i139) #7
  %arrayidx14 = getelementptr [38 x i8], ptr %state, i32 0, i32 8
  %35 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx14, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i145) #7
  %37 = getelementptr inbounds [2 x i8], ptr %buf.i145, i32 0, i32 1
  %38 = ptrtoint ptr %buf.i145 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 8, ptr %buf.i145, align 1
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %36, ptr %37, align 1
  %call.i.i146 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i145, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i146)
  %cmp.i147 = icmp slt i32 %call.i.i146, 0
  br i1 %cmp.i147, label %do.end.i149, label %ch7006_write.exit144.ch7006_write.exit150_crit_edge

ch7006_write.exit144.ch7006_write.exit150_crit_edge: ; preds = %ch7006_write.exit144
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit150

do.end.i149:                                      ; preds = %ch7006_write.exit144
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i148 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i148, ptr noundef nonnull @.str.18, i32 noundef %call.i.i146, i32 noundef 8) #10
  br label %ch7006_write.exit150

ch7006_write.exit150:                             ; preds = %do.end.i149, %ch7006_write.exit144.ch7006_write.exit150_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i145) #7
  %arrayidx16 = getelementptr [38 x i8], ptr %state, i32 0, i32 9
  %40 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx16, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i151) #7
  %42 = getelementptr inbounds [2 x i8], ptr %buf.i151, i32 0, i32 1
  %43 = ptrtoint ptr %buf.i151 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 9, ptr %buf.i151, align 1
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %41, ptr %42, align 1
  %call.i.i152 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i151, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i152)
  %cmp.i153 = icmp slt i32 %call.i.i152, 0
  br i1 %cmp.i153, label %do.end.i155, label %ch7006_write.exit150.ch7006_write.exit156_crit_edge

ch7006_write.exit150.ch7006_write.exit156_crit_edge: ; preds = %ch7006_write.exit150
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit156

do.end.i155:                                      ; preds = %ch7006_write.exit150
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i154 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i154, ptr noundef nonnull @.str.18, i32 noundef %call.i.i152, i32 noundef 9) #10
  br label %ch7006_write.exit156

ch7006_write.exit156:                             ; preds = %do.end.i155, %ch7006_write.exit150.ch7006_write.exit156_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i151) #7
  %arrayidx18 = getelementptr [38 x i8], ptr %state, i32 0, i32 10
  %45 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx18, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i157) #7
  %47 = getelementptr inbounds [2 x i8], ptr %buf.i157, i32 0, i32 1
  %48 = ptrtoint ptr %buf.i157 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 10, ptr %buf.i157, align 1
  %49 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %46, ptr %47, align 1
  %call.i.i158 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i157, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i158)
  %cmp.i159 = icmp slt i32 %call.i.i158, 0
  br i1 %cmp.i159, label %do.end.i161, label %ch7006_write.exit156.ch7006_write.exit162_crit_edge

ch7006_write.exit156.ch7006_write.exit162_crit_edge: ; preds = %ch7006_write.exit156
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit162

do.end.i161:                                      ; preds = %ch7006_write.exit156
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i160 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i160, ptr noundef nonnull @.str.18, i32 noundef %call.i.i158, i32 noundef 10) #10
  br label %ch7006_write.exit162

ch7006_write.exit162:                             ; preds = %do.end.i161, %ch7006_write.exit156.ch7006_write.exit162_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i157) #7
  %arrayidx20 = getelementptr [38 x i8], ptr %state, i32 0, i32 11
  %50 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx20, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i163) #7
  %52 = getelementptr inbounds [2 x i8], ptr %buf.i163, i32 0, i32 1
  %53 = ptrtoint ptr %buf.i163 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 11, ptr %buf.i163, align 1
  %54 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %51, ptr %52, align 1
  %call.i.i164 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i163, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i164)
  %cmp.i165 = icmp slt i32 %call.i.i164, 0
  br i1 %cmp.i165, label %do.end.i167, label %ch7006_write.exit162.ch7006_write.exit168_crit_edge

ch7006_write.exit162.ch7006_write.exit168_crit_edge: ; preds = %ch7006_write.exit162
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit168

do.end.i167:                                      ; preds = %ch7006_write.exit162
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i166 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i166, ptr noundef nonnull @.str.18, i32 noundef %call.i.i164, i32 noundef 11) #10
  br label %ch7006_write.exit168

ch7006_write.exit168:                             ; preds = %do.end.i167, %ch7006_write.exit162.ch7006_write.exit168_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i163) #7
  %arrayidx22 = getelementptr [38 x i8], ptr %state, i32 0, i32 13
  %55 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx22, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i169) #7
  %57 = getelementptr inbounds [2 x i8], ptr %buf.i169, i32 0, i32 1
  %58 = ptrtoint ptr %buf.i169 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 13, ptr %buf.i169, align 1
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %56, ptr %57, align 1
  %call.i.i170 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i169, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i170)
  %cmp.i171 = icmp slt i32 %call.i.i170, 0
  br i1 %cmp.i171, label %do.end.i173, label %ch7006_write.exit168.ch7006_write.exit174_crit_edge

ch7006_write.exit168.ch7006_write.exit174_crit_edge: ; preds = %ch7006_write.exit168
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit174

do.end.i173:                                      ; preds = %ch7006_write.exit168
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i172 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i172, ptr noundef nonnull @.str.18, i32 noundef %call.i.i170, i32 noundef 13) #10
  br label %ch7006_write.exit174

ch7006_write.exit174:                             ; preds = %do.end.i173, %ch7006_write.exit168.ch7006_write.exit174_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i169) #7
  %arrayidx24 = getelementptr [38 x i8], ptr %state, i32 0, i32 16
  %60 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx24, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i175) #7
  %62 = getelementptr inbounds [2 x i8], ptr %buf.i175, i32 0, i32 1
  %63 = ptrtoint ptr %buf.i175 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 16, ptr %buf.i175, align 1
  %64 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %61, ptr %62, align 1
  %call.i.i176 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i175, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i176)
  %cmp.i177 = icmp slt i32 %call.i.i176, 0
  br i1 %cmp.i177, label %do.end.i179, label %ch7006_write.exit174.ch7006_write.exit180_crit_edge

ch7006_write.exit174.ch7006_write.exit180_crit_edge: ; preds = %ch7006_write.exit174
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit180

do.end.i179:                                      ; preds = %ch7006_write.exit174
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i178 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i178, ptr noundef nonnull @.str.18, i32 noundef %call.i.i176, i32 noundef 16) #10
  br label %ch7006_write.exit180

ch7006_write.exit180:                             ; preds = %do.end.i179, %ch7006_write.exit174.ch7006_write.exit180_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i175) #7
  %arrayidx26 = getelementptr [38 x i8], ptr %state, i32 0, i32 17
  %65 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx26, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i181) #7
  %67 = getelementptr inbounds [2 x i8], ptr %buf.i181, i32 0, i32 1
  %68 = ptrtoint ptr %buf.i181 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 17, ptr %buf.i181, align 1
  %69 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %66, ptr %67, align 1
  %call.i.i182 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i181, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i182)
  %cmp.i183 = icmp slt i32 %call.i.i182, 0
  br i1 %cmp.i183, label %do.end.i185, label %ch7006_write.exit180.ch7006_write.exit186_crit_edge

ch7006_write.exit180.ch7006_write.exit186_crit_edge: ; preds = %ch7006_write.exit180
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit186

do.end.i185:                                      ; preds = %ch7006_write.exit180
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i184 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i184, ptr noundef nonnull @.str.18, i32 noundef %call.i.i182, i32 noundef 17) #10
  br label %ch7006_write.exit186

ch7006_write.exit186:                             ; preds = %do.end.i185, %ch7006_write.exit180.ch7006_write.exit186_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i181) #7
  %arrayidx28 = getelementptr [38 x i8], ptr %state, i32 0, i32 19
  %70 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx28, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i187) #7
  %72 = getelementptr inbounds [2 x i8], ptr %buf.i187, i32 0, i32 1
  %73 = ptrtoint ptr %buf.i187 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 19, ptr %buf.i187, align 1
  %74 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %71, ptr %72, align 1
  %call.i.i188 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i187, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i188)
  %cmp.i189 = icmp slt i32 %call.i.i188, 0
  br i1 %cmp.i189, label %do.end.i191, label %ch7006_write.exit186.ch7006_write.exit192_crit_edge

ch7006_write.exit186.ch7006_write.exit192_crit_edge: ; preds = %ch7006_write.exit186
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit192

do.end.i191:                                      ; preds = %ch7006_write.exit186
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i190 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i190, ptr noundef nonnull @.str.18, i32 noundef %call.i.i188, i32 noundef 19) #10
  br label %ch7006_write.exit192

ch7006_write.exit192:                             ; preds = %do.end.i191, %ch7006_write.exit186.ch7006_write.exit192_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i187) #7
  %arrayidx30 = getelementptr [38 x i8], ptr %state, i32 0, i32 20
  %75 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx30, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i193) #7
  %77 = getelementptr inbounds [2 x i8], ptr %buf.i193, i32 0, i32 1
  %78 = ptrtoint ptr %buf.i193 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 20, ptr %buf.i193, align 1
  %79 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %76, ptr %77, align 1
  %call.i.i194 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i193, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i194)
  %cmp.i195 = icmp slt i32 %call.i.i194, 0
  br i1 %cmp.i195, label %do.end.i197, label %ch7006_write.exit192.ch7006_write.exit198_crit_edge

ch7006_write.exit192.ch7006_write.exit198_crit_edge: ; preds = %ch7006_write.exit192
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit198

do.end.i197:                                      ; preds = %ch7006_write.exit192
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i196 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i196, ptr noundef nonnull @.str.18, i32 noundef %call.i.i194, i32 noundef 20) #10
  br label %ch7006_write.exit198

ch7006_write.exit198:                             ; preds = %do.end.i197, %ch7006_write.exit192.ch7006_write.exit198_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i193) #7
  %arrayidx32 = getelementptr [38 x i8], ptr %state, i32 0, i32 21
  %80 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx32, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i199) #7
  %82 = getelementptr inbounds [2 x i8], ptr %buf.i199, i32 0, i32 1
  %83 = ptrtoint ptr %buf.i199 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 21, ptr %buf.i199, align 1
  %84 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %81, ptr %82, align 1
  %call.i.i200 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i199, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i200)
  %cmp.i201 = icmp slt i32 %call.i.i200, 0
  br i1 %cmp.i201, label %do.end.i203, label %ch7006_write.exit198.ch7006_write.exit204_crit_edge

ch7006_write.exit198.ch7006_write.exit204_crit_edge: ; preds = %ch7006_write.exit198
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit204

do.end.i203:                                      ; preds = %ch7006_write.exit198
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i202 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i202, ptr noundef nonnull @.str.18, i32 noundef %call.i.i200, i32 noundef 21) #10
  br label %ch7006_write.exit204

ch7006_write.exit204:                             ; preds = %do.end.i203, %ch7006_write.exit198.ch7006_write.exit204_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i199) #7
  %arrayidx34 = getelementptr [38 x i8], ptr %state, i32 0, i32 23
  %85 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx34, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i205) #7
  %87 = getelementptr inbounds [2 x i8], ptr %buf.i205, i32 0, i32 1
  %88 = ptrtoint ptr %buf.i205 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 23, ptr %buf.i205, align 1
  %89 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %86, ptr %87, align 1
  %call.i.i206 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i205, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i206)
  %cmp.i207 = icmp slt i32 %call.i.i206, 0
  br i1 %cmp.i207, label %do.end.i209, label %ch7006_write.exit204.ch7006_write.exit210_crit_edge

ch7006_write.exit204.ch7006_write.exit210_crit_edge: ; preds = %ch7006_write.exit204
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit210

do.end.i209:                                      ; preds = %ch7006_write.exit204
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i208 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i208, ptr noundef nonnull @.str.18, i32 noundef %call.i.i206, i32 noundef 23) #10
  br label %ch7006_write.exit210

ch7006_write.exit210:                             ; preds = %do.end.i209, %ch7006_write.exit204.ch7006_write.exit210_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i205) #7
  %arrayidx36 = getelementptr [38 x i8], ptr %state, i32 0, i32 24
  %90 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx36, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i211) #7
  %92 = getelementptr inbounds [2 x i8], ptr %buf.i211, i32 0, i32 1
  %93 = ptrtoint ptr %buf.i211 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 24, ptr %buf.i211, align 1
  %94 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %91, ptr %92, align 1
  %call.i.i212 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i211, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i212)
  %cmp.i213 = icmp slt i32 %call.i.i212, 0
  br i1 %cmp.i213, label %do.end.i215, label %ch7006_write.exit210.ch7006_write.exit216_crit_edge

ch7006_write.exit210.ch7006_write.exit216_crit_edge: ; preds = %ch7006_write.exit210
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit216

do.end.i215:                                      ; preds = %ch7006_write.exit210
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i214 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i214, ptr noundef nonnull @.str.18, i32 noundef %call.i.i212, i32 noundef 24) #10
  br label %ch7006_write.exit216

ch7006_write.exit216:                             ; preds = %do.end.i215, %ch7006_write.exit210.ch7006_write.exit216_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i211) #7
  %arrayidx38 = getelementptr [38 x i8], ptr %state, i32 0, i32 25
  %95 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx38, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i217) #7
  %97 = getelementptr inbounds [2 x i8], ptr %buf.i217, i32 0, i32 1
  %98 = ptrtoint ptr %buf.i217 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 25, ptr %buf.i217, align 1
  %99 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %96, ptr %97, align 1
  %call.i.i218 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i217, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i218)
  %cmp.i219 = icmp slt i32 %call.i.i218, 0
  br i1 %cmp.i219, label %do.end.i221, label %ch7006_write.exit216.ch7006_write.exit222_crit_edge

ch7006_write.exit216.ch7006_write.exit222_crit_edge: ; preds = %ch7006_write.exit216
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit222

do.end.i221:                                      ; preds = %ch7006_write.exit216
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i220 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i220, ptr noundef nonnull @.str.18, i32 noundef %call.i.i218, i32 noundef 25) #10
  br label %ch7006_write.exit222

ch7006_write.exit222:                             ; preds = %do.end.i221, %ch7006_write.exit216.ch7006_write.exit222_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i217) #7
  %arrayidx40 = getelementptr [38 x i8], ptr %state, i32 0, i32 26
  %100 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx40, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i223) #7
  %102 = getelementptr inbounds [2 x i8], ptr %buf.i223, i32 0, i32 1
  %103 = ptrtoint ptr %buf.i223 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 26, ptr %buf.i223, align 1
  %104 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %101, ptr %102, align 1
  %call.i.i224 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i223, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i224)
  %cmp.i225 = icmp slt i32 %call.i.i224, 0
  br i1 %cmp.i225, label %do.end.i227, label %ch7006_write.exit222.ch7006_write.exit228_crit_edge

ch7006_write.exit222.ch7006_write.exit228_crit_edge: ; preds = %ch7006_write.exit222
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit228

do.end.i227:                                      ; preds = %ch7006_write.exit222
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i226 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i226, ptr noundef nonnull @.str.18, i32 noundef %call.i.i224, i32 noundef 26) #10
  br label %ch7006_write.exit228

ch7006_write.exit228:                             ; preds = %do.end.i227, %ch7006_write.exit222.ch7006_write.exit228_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i223) #7
  %arrayidx42 = getelementptr [38 x i8], ptr %state, i32 0, i32 27
  %105 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx42, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i229) #7
  %107 = getelementptr inbounds [2 x i8], ptr %buf.i229, i32 0, i32 1
  %108 = ptrtoint ptr %buf.i229 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 27, ptr %buf.i229, align 1
  %109 = ptrtoint ptr %107 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %106, ptr %107, align 1
  %call.i.i230 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i229, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i230)
  %cmp.i231 = icmp slt i32 %call.i.i230, 0
  br i1 %cmp.i231, label %do.end.i233, label %ch7006_write.exit228.ch7006_write.exit234_crit_edge

ch7006_write.exit228.ch7006_write.exit234_crit_edge: ; preds = %ch7006_write.exit228
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit234

do.end.i233:                                      ; preds = %ch7006_write.exit228
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i232 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i232, ptr noundef nonnull @.str.18, i32 noundef %call.i.i230, i32 noundef 27) #10
  br label %ch7006_write.exit234

ch7006_write.exit234:                             ; preds = %do.end.i233, %ch7006_write.exit228.ch7006_write.exit234_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i229) #7
  %arrayidx44 = getelementptr [38 x i8], ptr %state, i32 0, i32 28
  %110 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx44, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i235) #7
  %112 = getelementptr inbounds [2 x i8], ptr %buf.i235, i32 0, i32 1
  %113 = ptrtoint ptr %buf.i235 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 28, ptr %buf.i235, align 1
  %114 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %111, ptr %112, align 1
  %call.i.i236 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i235, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i236)
  %cmp.i237 = icmp slt i32 %call.i.i236, 0
  br i1 %cmp.i237, label %do.end.i239, label %ch7006_write.exit234.ch7006_write.exit240_crit_edge

ch7006_write.exit234.ch7006_write.exit240_crit_edge: ; preds = %ch7006_write.exit234
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit240

do.end.i239:                                      ; preds = %ch7006_write.exit234
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i238 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i238, ptr noundef nonnull @.str.18, i32 noundef %call.i.i236, i32 noundef 28) #10
  br label %ch7006_write.exit240

ch7006_write.exit240:                             ; preds = %do.end.i239, %ch7006_write.exit234.ch7006_write.exit240_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i235) #7
  %arrayidx46 = getelementptr [38 x i8], ptr %state, i32 0, i32 29
  %115 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx46, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i241) #7
  %117 = getelementptr inbounds [2 x i8], ptr %buf.i241, i32 0, i32 1
  %118 = ptrtoint ptr %buf.i241 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 29, ptr %buf.i241, align 1
  %119 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %116, ptr %117, align 1
  %call.i.i242 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i241, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i242)
  %cmp.i243 = icmp slt i32 %call.i.i242, 0
  br i1 %cmp.i243, label %do.end.i245, label %ch7006_write.exit240.ch7006_write.exit246_crit_edge

ch7006_write.exit240.ch7006_write.exit246_crit_edge: ; preds = %ch7006_write.exit240
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit246

do.end.i245:                                      ; preds = %ch7006_write.exit240
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i244 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i244, ptr noundef nonnull @.str.18, i32 noundef %call.i.i242, i32 noundef 29) #10
  br label %ch7006_write.exit246

ch7006_write.exit246:                             ; preds = %do.end.i245, %ch7006_write.exit240.ch7006_write.exit246_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i241) #7
  %arrayidx48 = getelementptr [38 x i8], ptr %state, i32 0, i32 30
  %120 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx48, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i247) #7
  %122 = getelementptr inbounds [2 x i8], ptr %buf.i247, i32 0, i32 1
  %123 = ptrtoint ptr %buf.i247 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 30, ptr %buf.i247, align 1
  %124 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %121, ptr %122, align 1
  %call.i.i248 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i247, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i248)
  %cmp.i249 = icmp slt i32 %call.i.i248, 0
  br i1 %cmp.i249, label %do.end.i251, label %ch7006_write.exit246.ch7006_write.exit252_crit_edge

ch7006_write.exit246.ch7006_write.exit252_crit_edge: ; preds = %ch7006_write.exit246
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit252

do.end.i251:                                      ; preds = %ch7006_write.exit246
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i250 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i250, ptr noundef nonnull @.str.18, i32 noundef %call.i.i248, i32 noundef 30) #10
  br label %ch7006_write.exit252

ch7006_write.exit252:                             ; preds = %do.end.i251, %ch7006_write.exit246.ch7006_write.exit252_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i247) #7
  %arrayidx50 = getelementptr [38 x i8], ptr %state, i32 0, i32 31
  %125 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx50, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i253) #7
  %127 = getelementptr inbounds [2 x i8], ptr %buf.i253, i32 0, i32 1
  %128 = ptrtoint ptr %buf.i253 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 31, ptr %buf.i253, align 1
  %129 = ptrtoint ptr %127 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %126, ptr %127, align 1
  %call.i.i254 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i253, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i254)
  %cmp.i255 = icmp slt i32 %call.i.i254, 0
  br i1 %cmp.i255, label %do.end.i257, label %ch7006_write.exit252.ch7006_write.exit258_crit_edge

ch7006_write.exit252.ch7006_write.exit258_crit_edge: ; preds = %ch7006_write.exit252
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit258

do.end.i257:                                      ; preds = %ch7006_write.exit252
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i256 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i256, ptr noundef nonnull @.str.18, i32 noundef %call.i.i254, i32 noundef 31) #10
  br label %ch7006_write.exit258

ch7006_write.exit258:                             ; preds = %do.end.i257, %ch7006_write.exit252.ch7006_write.exit258_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i253) #7
  %arrayidx52 = getelementptr [38 x i8], ptr %state, i32 0, i32 32
  %130 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx52, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i259) #7
  %132 = getelementptr inbounds [2 x i8], ptr %buf.i259, i32 0, i32 1
  %133 = ptrtoint ptr %buf.i259 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 32, ptr %buf.i259, align 1
  %134 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %131, ptr %132, align 1
  %call.i.i260 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i259, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i260)
  %cmp.i261 = icmp slt i32 %call.i.i260, 0
  br i1 %cmp.i261, label %do.end.i263, label %ch7006_write.exit258.ch7006_write.exit264_crit_edge

ch7006_write.exit258.ch7006_write.exit264_crit_edge: ; preds = %ch7006_write.exit258
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit264

do.end.i263:                                      ; preds = %ch7006_write.exit258
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i262 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i262, ptr noundef nonnull @.str.18, i32 noundef %call.i.i260, i32 noundef 32) #10
  br label %ch7006_write.exit264

ch7006_write.exit264:                             ; preds = %do.end.i263, %ch7006_write.exit258.ch7006_write.exit264_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i259) #7
  %arrayidx54 = getelementptr [38 x i8], ptr %state, i32 0, i32 33
  %135 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx54, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i265) #7
  %137 = getelementptr inbounds [2 x i8], ptr %buf.i265, i32 0, i32 1
  %138 = ptrtoint ptr %buf.i265 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 33, ptr %buf.i265, align 1
  %139 = ptrtoint ptr %137 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %136, ptr %137, align 1
  %call.i.i266 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i265, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i266)
  %cmp.i267 = icmp slt i32 %call.i.i266, 0
  br i1 %cmp.i267, label %do.end.i269, label %ch7006_write.exit264.ch7006_write.exit270_crit_edge

ch7006_write.exit264.ch7006_write.exit270_crit_edge: ; preds = %ch7006_write.exit264
  call void @__sanitizer_cov_trace_pc() #9
  br label %ch7006_write.exit270

do.end.i269:                                      ; preds = %ch7006_write.exit264
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i268 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i268, ptr noundef nonnull @.str.18, i32 noundef %call.i.i266, i32 noundef 33) #10
  br label %ch7006_write.exit270

ch7006_write.exit270:                             ; preds = %do.end.i269, %ch7006_write.exit264.ch7006_write.exit270_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i265) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ch7006_state_save(ptr noundef %client, ptr noundef %state) local_unnamed_addr #2 align 64 {
entry:
  %addr.addr.i518 = alloca i8, align 1
  %val.i519 = alloca i8, align 1
  %addr.addr.i504 = alloca i8, align 1
  %val.i505 = alloca i8, align 1
  %addr.addr.i490 = alloca i8, align 1
  %val.i491 = alloca i8, align 1
  %addr.addr.i476 = alloca i8, align 1
  %val.i477 = alloca i8, align 1
  %addr.addr.i462 = alloca i8, align 1
  %val.i463 = alloca i8, align 1
  %addr.addr.i448 = alloca i8, align 1
  %val.i449 = alloca i8, align 1
  %addr.addr.i434 = alloca i8, align 1
  %val.i435 = alloca i8, align 1
  %addr.addr.i420 = alloca i8, align 1
  %val.i421 = alloca i8, align 1
  %addr.addr.i406 = alloca i8, align 1
  %val.i407 = alloca i8, align 1
  %addr.addr.i392 = alloca i8, align 1
  %val.i393 = alloca i8, align 1
  %addr.addr.i378 = alloca i8, align 1
  %val.i379 = alloca i8, align 1
  %addr.addr.i364 = alloca i8, align 1
  %val.i365 = alloca i8, align 1
  %addr.addr.i350 = alloca i8, align 1
  %val.i351 = alloca i8, align 1
  %addr.addr.i336 = alloca i8, align 1
  %val.i337 = alloca i8, align 1
  %addr.addr.i322 = alloca i8, align 1
  %val.i323 = alloca i8, align 1
  %addr.addr.i308 = alloca i8, align 1
  %val.i309 = alloca i8, align 1
  %addr.addr.i294 = alloca i8, align 1
  %val.i295 = alloca i8, align 1
  %addr.addr.i280 = alloca i8, align 1
  %val.i281 = alloca i8, align 1
  %addr.addr.i266 = alloca i8, align 1
  %val.i267 = alloca i8, align 1
  %addr.addr.i252 = alloca i8, align 1
  %val.i253 = alloca i8, align 1
  %addr.addr.i238 = alloca i8, align 1
  %val.i239 = alloca i8, align 1
  %addr.addr.i224 = alloca i8, align 1
  %val.i225 = alloca i8, align 1
  %addr.addr.i210 = alloca i8, align 1
  %val.i211 = alloca i8, align 1
  %addr.addr.i196 = alloca i8, align 1
  %val.i197 = alloca i8, align 1
  %addr.addr.i182 = alloca i8, align 1
  %val.i183 = alloca i8, align 1
  %addr.addr.i168 = alloca i8, align 1
  %val.i169 = alloca i8, align 1
  %addr.addr.i154 = alloca i8, align 1
  %val.i155 = alloca i8, align 1
  %addr.addr.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i)
  %0 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 14, ptr %addr.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val.i, align 1, !annotation !65
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.do.end.i_crit_edge, label %if.end.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end.i:                                         ; preds = %entry
  %call.i10.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %cmp2.i = icmp slt i32 %call.i10.i, 0
  br i1 %cmp2.i, label %if.end.i.do.end.i_crit_edge, label %if.end4.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %val.i, align 1
  br label %ch7006_read.exit

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %ret.0.i = phi i32 [ %call.i.i, %entry.do.end.i_crit_edge ], [ %call.i10.i, %if.end.i.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %4 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr.addr.i, align 1
  %conv.i = zext i8 %5 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i, i32 noundef %conv.i) #10
  br label %ch7006_read.exit

ch7006_read.exit:                                 ; preds = %do.end.i, %if.end4.i
  %retval.0.i = phi i8 [ 0, %do.end.i ], [ %3, %if.end4.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i)
  %arrayidx = getelementptr [38 x i8], ptr %state, i32 0, i32 14
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %retval.0.i, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i154)
  %7 = ptrtoint ptr %addr.addr.i154 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %addr.addr.i154, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i155) #7
  %8 = ptrtoint ptr %val.i155 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %val.i155, align 1, !annotation !65
  %call.i.i156 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i154, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i156)
  %cmp.i157 = icmp slt i32 %call.i.i156, 0
  br i1 %cmp.i157, label %ch7006_read.exit.do.end.i165_crit_edge, label %if.end.i160

ch7006_read.exit.do.end.i165_crit_edge:           ; preds = %ch7006_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i165

if.end.i160:                                      ; preds = %ch7006_read.exit
  %call.i10.i158 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i155, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i158)
  %cmp2.i159 = icmp slt i32 %call.i10.i158, 0
  br i1 %cmp2.i159, label %if.end.i160.do.end.i165_crit_edge, label %if.end4.i161

if.end.i160.do.end.i165_crit_edge:                ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i165

if.end4.i161:                                     ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %val.i155 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val.i155, align 1
  br label %ch7006_read.exit167

do.end.i165:                                      ; preds = %if.end.i160.do.end.i165_crit_edge, %ch7006_read.exit.do.end.i165_crit_edge
  %ret.0.i162 = phi i32 [ %call.i.i156, %ch7006_read.exit.do.end.i165_crit_edge ], [ %call.i10.i158, %if.end.i160.do.end.i165_crit_edge ]
  %dev.i163 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %11 = ptrtoint ptr %addr.addr.i154 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %addr.addr.i154, align 1
  %conv.i164 = zext i8 %12 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i163, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i162, i32 noundef %conv.i164) #10
  br label %ch7006_read.exit167

ch7006_read.exit167:                              ; preds = %do.end.i165, %if.end4.i161
  %retval.0.i166 = phi i8 [ 0, %do.end.i165 ], [ %10, %if.end4.i161 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i155) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i154)
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %retval.0.i166, ptr %state, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i168)
  %14 = ptrtoint ptr %addr.addr.i168 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %addr.addr.i168, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i169) #7
  %15 = ptrtoint ptr %val.i169 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %val.i169, align 1, !annotation !65
  %call.i.i170 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i168, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i170)
  %cmp.i171 = icmp slt i32 %call.i.i170, 0
  br i1 %cmp.i171, label %ch7006_read.exit167.do.end.i179_crit_edge, label %if.end.i174

ch7006_read.exit167.do.end.i179_crit_edge:        ; preds = %ch7006_read.exit167
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i179

if.end.i174:                                      ; preds = %ch7006_read.exit167
  %call.i10.i172 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i169, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i172)
  %cmp2.i173 = icmp slt i32 %call.i10.i172, 0
  br i1 %cmp2.i173, label %if.end.i174.do.end.i179_crit_edge, label %if.end4.i175

if.end.i174.do.end.i179_crit_edge:                ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i179

if.end4.i175:                                     ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %val.i169 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %val.i169, align 1
  br label %ch7006_read.exit181

do.end.i179:                                      ; preds = %if.end.i174.do.end.i179_crit_edge, %ch7006_read.exit167.do.end.i179_crit_edge
  %ret.0.i176 = phi i32 [ %call.i.i170, %ch7006_read.exit167.do.end.i179_crit_edge ], [ %call.i10.i172, %if.end.i174.do.end.i179_crit_edge ]
  %dev.i177 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %18 = ptrtoint ptr %addr.addr.i168 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %addr.addr.i168, align 1
  %conv.i178 = zext i8 %19 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i177, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i176, i32 noundef %conv.i178) #10
  br label %ch7006_read.exit181

ch7006_read.exit181:                              ; preds = %do.end.i179, %if.end4.i175
  %retval.0.i180 = phi i8 [ 0, %do.end.i179 ], [ %17, %if.end4.i175 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i169) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i168)
  %arrayidx6 = getelementptr [38 x i8], ptr %state, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %retval.0.i180, ptr %arrayidx6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i182)
  %21 = ptrtoint ptr %addr.addr.i182 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 3, ptr %addr.addr.i182, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i183) #7
  %22 = ptrtoint ptr %val.i183 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %val.i183, align 1, !annotation !65
  %call.i.i184 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i182, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i184)
  %cmp.i185 = icmp slt i32 %call.i.i184, 0
  br i1 %cmp.i185, label %ch7006_read.exit181.do.end.i193_crit_edge, label %if.end.i188

ch7006_read.exit181.do.end.i193_crit_edge:        ; preds = %ch7006_read.exit181
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i193

if.end.i188:                                      ; preds = %ch7006_read.exit181
  %call.i10.i186 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i183, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i186)
  %cmp2.i187 = icmp slt i32 %call.i10.i186, 0
  br i1 %cmp2.i187, label %if.end.i188.do.end.i193_crit_edge, label %if.end4.i189

if.end.i188.do.end.i193_crit_edge:                ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i193

if.end4.i189:                                     ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %val.i183 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %val.i183, align 1
  br label %ch7006_read.exit195

do.end.i193:                                      ; preds = %if.end.i188.do.end.i193_crit_edge, %ch7006_read.exit181.do.end.i193_crit_edge
  %ret.0.i190 = phi i32 [ %call.i.i184, %ch7006_read.exit181.do.end.i193_crit_edge ], [ %call.i10.i186, %if.end.i188.do.end.i193_crit_edge ]
  %dev.i191 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %25 = ptrtoint ptr %addr.addr.i182 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %addr.addr.i182, align 1
  %conv.i192 = zext i8 %26 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i191, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i190, i32 noundef %conv.i192) #10
  br label %ch7006_read.exit195

ch7006_read.exit195:                              ; preds = %do.end.i193, %if.end4.i189
  %retval.0.i194 = phi i8 [ 0, %do.end.i193 ], [ %24, %if.end4.i189 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i183) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i182)
  %arrayidx9 = getelementptr [38 x i8], ptr %state, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %retval.0.i194, ptr %arrayidx9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i196)
  %28 = ptrtoint ptr %addr.addr.i196 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 4, ptr %addr.addr.i196, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i197) #7
  %29 = ptrtoint ptr %val.i197 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %val.i197, align 1, !annotation !65
  %call.i.i198 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i196, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i198)
  %cmp.i199 = icmp slt i32 %call.i.i198, 0
  br i1 %cmp.i199, label %ch7006_read.exit195.do.end.i207_crit_edge, label %if.end.i202

ch7006_read.exit195.do.end.i207_crit_edge:        ; preds = %ch7006_read.exit195
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i207

if.end.i202:                                      ; preds = %ch7006_read.exit195
  %call.i10.i200 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i197, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i200)
  %cmp2.i201 = icmp slt i32 %call.i10.i200, 0
  br i1 %cmp2.i201, label %if.end.i202.do.end.i207_crit_edge, label %if.end4.i203

if.end.i202.do.end.i207_crit_edge:                ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i207

if.end4.i203:                                     ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %val.i197 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %val.i197, align 1
  br label %ch7006_read.exit209

do.end.i207:                                      ; preds = %if.end.i202.do.end.i207_crit_edge, %ch7006_read.exit195.do.end.i207_crit_edge
  %ret.0.i204 = phi i32 [ %call.i.i198, %ch7006_read.exit195.do.end.i207_crit_edge ], [ %call.i10.i200, %if.end.i202.do.end.i207_crit_edge ]
  %dev.i205 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %32 = ptrtoint ptr %addr.addr.i196 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %addr.addr.i196, align 1
  %conv.i206 = zext i8 %33 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i205, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i204, i32 noundef %conv.i206) #10
  br label %ch7006_read.exit209

ch7006_read.exit209:                              ; preds = %do.end.i207, %if.end4.i203
  %retval.0.i208 = phi i8 [ 0, %do.end.i207 ], [ %31, %if.end4.i203 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i197) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i196)
  %arrayidx12 = getelementptr [38 x i8], ptr %state, i32 0, i32 4
  %34 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %retval.0.i208, ptr %arrayidx12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i210)
  %35 = ptrtoint ptr %addr.addr.i210 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 6, ptr %addr.addr.i210, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i211) #7
  %36 = ptrtoint ptr %val.i211 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %val.i211, align 1, !annotation !65
  %call.i.i212 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i210, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i212)
  %cmp.i213 = icmp slt i32 %call.i.i212, 0
  br i1 %cmp.i213, label %ch7006_read.exit209.do.end.i221_crit_edge, label %if.end.i216

ch7006_read.exit209.do.end.i221_crit_edge:        ; preds = %ch7006_read.exit209
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i221

if.end.i216:                                      ; preds = %ch7006_read.exit209
  %call.i10.i214 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i211, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i214)
  %cmp2.i215 = icmp slt i32 %call.i10.i214, 0
  br i1 %cmp2.i215, label %if.end.i216.do.end.i221_crit_edge, label %if.end4.i217

if.end.i216.do.end.i221_crit_edge:                ; preds = %if.end.i216
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i221

if.end4.i217:                                     ; preds = %if.end.i216
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %val.i211 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %val.i211, align 1
  br label %ch7006_read.exit223

do.end.i221:                                      ; preds = %if.end.i216.do.end.i221_crit_edge, %ch7006_read.exit209.do.end.i221_crit_edge
  %ret.0.i218 = phi i32 [ %call.i.i212, %ch7006_read.exit209.do.end.i221_crit_edge ], [ %call.i10.i214, %if.end.i216.do.end.i221_crit_edge ]
  %dev.i219 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %39 = ptrtoint ptr %addr.addr.i210 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %addr.addr.i210, align 1
  %conv.i220 = zext i8 %40 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i219, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i218, i32 noundef %conv.i220) #10
  br label %ch7006_read.exit223

ch7006_read.exit223:                              ; preds = %do.end.i221, %if.end4.i217
  %retval.0.i222 = phi i8 [ 0, %do.end.i221 ], [ %38, %if.end4.i217 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i211) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i210)
  %arrayidx15 = getelementptr [38 x i8], ptr %state, i32 0, i32 6
  %41 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %retval.0.i222, ptr %arrayidx15, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i224)
  %42 = ptrtoint ptr %addr.addr.i224 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 7, ptr %addr.addr.i224, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i225) #7
  %43 = ptrtoint ptr %val.i225 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -1, ptr %val.i225, align 1, !annotation !65
  %call.i.i226 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i224, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i226)
  %cmp.i227 = icmp slt i32 %call.i.i226, 0
  br i1 %cmp.i227, label %ch7006_read.exit223.do.end.i235_crit_edge, label %if.end.i230

ch7006_read.exit223.do.end.i235_crit_edge:        ; preds = %ch7006_read.exit223
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i235

if.end.i230:                                      ; preds = %ch7006_read.exit223
  %call.i10.i228 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i225, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i228)
  %cmp2.i229 = icmp slt i32 %call.i10.i228, 0
  br i1 %cmp2.i229, label %if.end.i230.do.end.i235_crit_edge, label %if.end4.i231

if.end.i230.do.end.i235_crit_edge:                ; preds = %if.end.i230
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i235

if.end4.i231:                                     ; preds = %if.end.i230
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %val.i225 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %val.i225, align 1
  br label %ch7006_read.exit237

do.end.i235:                                      ; preds = %if.end.i230.do.end.i235_crit_edge, %ch7006_read.exit223.do.end.i235_crit_edge
  %ret.0.i232 = phi i32 [ %call.i.i226, %ch7006_read.exit223.do.end.i235_crit_edge ], [ %call.i10.i228, %if.end.i230.do.end.i235_crit_edge ]
  %dev.i233 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %46 = ptrtoint ptr %addr.addr.i224 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %addr.addr.i224, align 1
  %conv.i234 = zext i8 %47 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i233, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i232, i32 noundef %conv.i234) #10
  br label %ch7006_read.exit237

ch7006_read.exit237:                              ; preds = %do.end.i235, %if.end4.i231
  %retval.0.i236 = phi i8 [ 0, %do.end.i235 ], [ %45, %if.end4.i231 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i225) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i224)
  %arrayidx18 = getelementptr [38 x i8], ptr %state, i32 0, i32 7
  %48 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %retval.0.i236, ptr %arrayidx18, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i238)
  %49 = ptrtoint ptr %addr.addr.i238 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 8, ptr %addr.addr.i238, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i239) #7
  %50 = ptrtoint ptr %val.i239 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -1, ptr %val.i239, align 1, !annotation !65
  %call.i.i240 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i238, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i240)
  %cmp.i241 = icmp slt i32 %call.i.i240, 0
  br i1 %cmp.i241, label %ch7006_read.exit237.do.end.i249_crit_edge, label %if.end.i244

ch7006_read.exit237.do.end.i249_crit_edge:        ; preds = %ch7006_read.exit237
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i249

if.end.i244:                                      ; preds = %ch7006_read.exit237
  %call.i10.i242 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i239, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i242)
  %cmp2.i243 = icmp slt i32 %call.i10.i242, 0
  br i1 %cmp2.i243, label %if.end.i244.do.end.i249_crit_edge, label %if.end4.i245

if.end.i244.do.end.i249_crit_edge:                ; preds = %if.end.i244
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i249

if.end4.i245:                                     ; preds = %if.end.i244
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %val.i239 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %val.i239, align 1
  br label %ch7006_read.exit251

do.end.i249:                                      ; preds = %if.end.i244.do.end.i249_crit_edge, %ch7006_read.exit237.do.end.i249_crit_edge
  %ret.0.i246 = phi i32 [ %call.i.i240, %ch7006_read.exit237.do.end.i249_crit_edge ], [ %call.i10.i242, %if.end.i244.do.end.i249_crit_edge ]
  %dev.i247 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %53 = ptrtoint ptr %addr.addr.i238 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %addr.addr.i238, align 1
  %conv.i248 = zext i8 %54 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i247, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i246, i32 noundef %conv.i248) #10
  br label %ch7006_read.exit251

ch7006_read.exit251:                              ; preds = %do.end.i249, %if.end4.i245
  %retval.0.i250 = phi i8 [ 0, %do.end.i249 ], [ %52, %if.end4.i245 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i239) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i238)
  %arrayidx21 = getelementptr [38 x i8], ptr %state, i32 0, i32 8
  %55 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %retval.0.i250, ptr %arrayidx21, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i252)
  %56 = ptrtoint ptr %addr.addr.i252 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 9, ptr %addr.addr.i252, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i253) #7
  %57 = ptrtoint ptr %val.i253 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -1, ptr %val.i253, align 1, !annotation !65
  %call.i.i254 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i252, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i254)
  %cmp.i255 = icmp slt i32 %call.i.i254, 0
  br i1 %cmp.i255, label %ch7006_read.exit251.do.end.i263_crit_edge, label %if.end.i258

ch7006_read.exit251.do.end.i263_crit_edge:        ; preds = %ch7006_read.exit251
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i263

if.end.i258:                                      ; preds = %ch7006_read.exit251
  %call.i10.i256 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i253, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i256)
  %cmp2.i257 = icmp slt i32 %call.i10.i256, 0
  br i1 %cmp2.i257, label %if.end.i258.do.end.i263_crit_edge, label %if.end4.i259

if.end.i258.do.end.i263_crit_edge:                ; preds = %if.end.i258
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i263

if.end4.i259:                                     ; preds = %if.end.i258
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %val.i253 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %val.i253, align 1
  br label %ch7006_read.exit265

do.end.i263:                                      ; preds = %if.end.i258.do.end.i263_crit_edge, %ch7006_read.exit251.do.end.i263_crit_edge
  %ret.0.i260 = phi i32 [ %call.i.i254, %ch7006_read.exit251.do.end.i263_crit_edge ], [ %call.i10.i256, %if.end.i258.do.end.i263_crit_edge ]
  %dev.i261 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %60 = ptrtoint ptr %addr.addr.i252 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %addr.addr.i252, align 1
  %conv.i262 = zext i8 %61 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i261, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i260, i32 noundef %conv.i262) #10
  br label %ch7006_read.exit265

ch7006_read.exit265:                              ; preds = %do.end.i263, %if.end4.i259
  %retval.0.i264 = phi i8 [ 0, %do.end.i263 ], [ %59, %if.end4.i259 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i253) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i252)
  %arrayidx24 = getelementptr [38 x i8], ptr %state, i32 0, i32 9
  %62 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %retval.0.i264, ptr %arrayidx24, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i266)
  %63 = ptrtoint ptr %addr.addr.i266 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 10, ptr %addr.addr.i266, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i267) #7
  %64 = ptrtoint ptr %val.i267 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -1, ptr %val.i267, align 1, !annotation !65
  %call.i.i268 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i266, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i268)
  %cmp.i269 = icmp slt i32 %call.i.i268, 0
  br i1 %cmp.i269, label %ch7006_read.exit265.do.end.i277_crit_edge, label %if.end.i272

ch7006_read.exit265.do.end.i277_crit_edge:        ; preds = %ch7006_read.exit265
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i277

if.end.i272:                                      ; preds = %ch7006_read.exit265
  %call.i10.i270 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i267, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i270)
  %cmp2.i271 = icmp slt i32 %call.i10.i270, 0
  br i1 %cmp2.i271, label %if.end.i272.do.end.i277_crit_edge, label %if.end4.i273

if.end.i272.do.end.i277_crit_edge:                ; preds = %if.end.i272
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i277

if.end4.i273:                                     ; preds = %if.end.i272
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %val.i267 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %val.i267, align 1
  br label %ch7006_read.exit279

do.end.i277:                                      ; preds = %if.end.i272.do.end.i277_crit_edge, %ch7006_read.exit265.do.end.i277_crit_edge
  %ret.0.i274 = phi i32 [ %call.i.i268, %ch7006_read.exit265.do.end.i277_crit_edge ], [ %call.i10.i270, %if.end.i272.do.end.i277_crit_edge ]
  %dev.i275 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %67 = ptrtoint ptr %addr.addr.i266 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %addr.addr.i266, align 1
  %conv.i276 = zext i8 %68 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i275, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i274, i32 noundef %conv.i276) #10
  br label %ch7006_read.exit279

ch7006_read.exit279:                              ; preds = %do.end.i277, %if.end4.i273
  %retval.0.i278 = phi i8 [ 0, %do.end.i277 ], [ %66, %if.end4.i273 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i267) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i266)
  %arrayidx27 = getelementptr [38 x i8], ptr %state, i32 0, i32 10
  %69 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %retval.0.i278, ptr %arrayidx27, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i280)
  %70 = ptrtoint ptr %addr.addr.i280 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 11, ptr %addr.addr.i280, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i281) #7
  %71 = ptrtoint ptr %val.i281 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -1, ptr %val.i281, align 1, !annotation !65
  %call.i.i282 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i280, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i282)
  %cmp.i283 = icmp slt i32 %call.i.i282, 0
  br i1 %cmp.i283, label %ch7006_read.exit279.do.end.i291_crit_edge, label %if.end.i286

ch7006_read.exit279.do.end.i291_crit_edge:        ; preds = %ch7006_read.exit279
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i291

if.end.i286:                                      ; preds = %ch7006_read.exit279
  %call.i10.i284 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i281, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i284)
  %cmp2.i285 = icmp slt i32 %call.i10.i284, 0
  br i1 %cmp2.i285, label %if.end.i286.do.end.i291_crit_edge, label %if.end4.i287

if.end.i286.do.end.i291_crit_edge:                ; preds = %if.end.i286
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i291

if.end4.i287:                                     ; preds = %if.end.i286
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %val.i281 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %val.i281, align 1
  br label %ch7006_read.exit293

do.end.i291:                                      ; preds = %if.end.i286.do.end.i291_crit_edge, %ch7006_read.exit279.do.end.i291_crit_edge
  %ret.0.i288 = phi i32 [ %call.i.i282, %ch7006_read.exit279.do.end.i291_crit_edge ], [ %call.i10.i284, %if.end.i286.do.end.i291_crit_edge ]
  %dev.i289 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %74 = ptrtoint ptr %addr.addr.i280 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %addr.addr.i280, align 1
  %conv.i290 = zext i8 %75 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i289, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i288, i32 noundef %conv.i290) #10
  br label %ch7006_read.exit293

ch7006_read.exit293:                              ; preds = %do.end.i291, %if.end4.i287
  %retval.0.i292 = phi i8 [ 0, %do.end.i291 ], [ %73, %if.end4.i287 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i281) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i280)
  %arrayidx30 = getelementptr [38 x i8], ptr %state, i32 0, i32 11
  %76 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %retval.0.i292, ptr %arrayidx30, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i294)
  %77 = ptrtoint ptr %addr.addr.i294 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 13, ptr %addr.addr.i294, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i295) #7
  %78 = ptrtoint ptr %val.i295 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -1, ptr %val.i295, align 1, !annotation !65
  %call.i.i296 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i294, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i296)
  %cmp.i297 = icmp slt i32 %call.i.i296, 0
  br i1 %cmp.i297, label %ch7006_read.exit293.do.end.i305_crit_edge, label %if.end.i300

ch7006_read.exit293.do.end.i305_crit_edge:        ; preds = %ch7006_read.exit293
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i305

if.end.i300:                                      ; preds = %ch7006_read.exit293
  %call.i10.i298 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i295, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i298)
  %cmp2.i299 = icmp slt i32 %call.i10.i298, 0
  br i1 %cmp2.i299, label %if.end.i300.do.end.i305_crit_edge, label %if.end4.i301

if.end.i300.do.end.i305_crit_edge:                ; preds = %if.end.i300
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i305

if.end4.i301:                                     ; preds = %if.end.i300
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %val.i295 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %val.i295, align 1
  br label %ch7006_read.exit307

do.end.i305:                                      ; preds = %if.end.i300.do.end.i305_crit_edge, %ch7006_read.exit293.do.end.i305_crit_edge
  %ret.0.i302 = phi i32 [ %call.i.i296, %ch7006_read.exit293.do.end.i305_crit_edge ], [ %call.i10.i298, %if.end.i300.do.end.i305_crit_edge ]
  %dev.i303 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %81 = ptrtoint ptr %addr.addr.i294 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %addr.addr.i294, align 1
  %conv.i304 = zext i8 %82 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i303, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i302, i32 noundef %conv.i304) #10
  br label %ch7006_read.exit307

ch7006_read.exit307:                              ; preds = %do.end.i305, %if.end4.i301
  %retval.0.i306 = phi i8 [ 0, %do.end.i305 ], [ %80, %if.end4.i301 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i295) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i294)
  %arrayidx33 = getelementptr [38 x i8], ptr %state, i32 0, i32 13
  %83 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %retval.0.i306, ptr %arrayidx33, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i308)
  %84 = ptrtoint ptr %addr.addr.i308 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 16, ptr %addr.addr.i308, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i309) #7
  %85 = ptrtoint ptr %val.i309 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -1, ptr %val.i309, align 1, !annotation !65
  %call.i.i310 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i308, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i310)
  %cmp.i311 = icmp slt i32 %call.i.i310, 0
  br i1 %cmp.i311, label %ch7006_read.exit307.do.end.i319_crit_edge, label %if.end.i314

ch7006_read.exit307.do.end.i319_crit_edge:        ; preds = %ch7006_read.exit307
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i319

if.end.i314:                                      ; preds = %ch7006_read.exit307
  %call.i10.i312 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i309, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i312)
  %cmp2.i313 = icmp slt i32 %call.i10.i312, 0
  br i1 %cmp2.i313, label %if.end.i314.do.end.i319_crit_edge, label %if.end4.i315

if.end.i314.do.end.i319_crit_edge:                ; preds = %if.end.i314
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i319

if.end4.i315:                                     ; preds = %if.end.i314
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %val.i309 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %val.i309, align 1
  br label %ch7006_read.exit321

do.end.i319:                                      ; preds = %if.end.i314.do.end.i319_crit_edge, %ch7006_read.exit307.do.end.i319_crit_edge
  %ret.0.i316 = phi i32 [ %call.i.i310, %ch7006_read.exit307.do.end.i319_crit_edge ], [ %call.i10.i312, %if.end.i314.do.end.i319_crit_edge ]
  %dev.i317 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %88 = ptrtoint ptr %addr.addr.i308 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %addr.addr.i308, align 1
  %conv.i318 = zext i8 %89 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i317, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i316, i32 noundef %conv.i318) #10
  br label %ch7006_read.exit321

ch7006_read.exit321:                              ; preds = %do.end.i319, %if.end4.i315
  %retval.0.i320 = phi i8 [ 0, %do.end.i319 ], [ %87, %if.end4.i315 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i309) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i308)
  %arrayidx36 = getelementptr [38 x i8], ptr %state, i32 0, i32 16
  %90 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %retval.0.i320, ptr %arrayidx36, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i322)
  %91 = ptrtoint ptr %addr.addr.i322 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 17, ptr %addr.addr.i322, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i323) #7
  %92 = ptrtoint ptr %val.i323 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -1, ptr %val.i323, align 1, !annotation !65
  %call.i.i324 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i322, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i324)
  %cmp.i325 = icmp slt i32 %call.i.i324, 0
  br i1 %cmp.i325, label %ch7006_read.exit321.do.end.i333_crit_edge, label %if.end.i328

ch7006_read.exit321.do.end.i333_crit_edge:        ; preds = %ch7006_read.exit321
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i333

if.end.i328:                                      ; preds = %ch7006_read.exit321
  %call.i10.i326 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i323, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i326)
  %cmp2.i327 = icmp slt i32 %call.i10.i326, 0
  br i1 %cmp2.i327, label %if.end.i328.do.end.i333_crit_edge, label %if.end4.i329

if.end.i328.do.end.i333_crit_edge:                ; preds = %if.end.i328
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i333

if.end4.i329:                                     ; preds = %if.end.i328
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %val.i323 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %val.i323, align 1
  br label %ch7006_read.exit335

do.end.i333:                                      ; preds = %if.end.i328.do.end.i333_crit_edge, %ch7006_read.exit321.do.end.i333_crit_edge
  %ret.0.i330 = phi i32 [ %call.i.i324, %ch7006_read.exit321.do.end.i333_crit_edge ], [ %call.i10.i326, %if.end.i328.do.end.i333_crit_edge ]
  %dev.i331 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %95 = ptrtoint ptr %addr.addr.i322 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %addr.addr.i322, align 1
  %conv.i332 = zext i8 %96 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i331, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i330, i32 noundef %conv.i332) #10
  br label %ch7006_read.exit335

ch7006_read.exit335:                              ; preds = %do.end.i333, %if.end4.i329
  %retval.0.i334 = phi i8 [ 0, %do.end.i333 ], [ %94, %if.end4.i329 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i323) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i322)
  %arrayidx39 = getelementptr [38 x i8], ptr %state, i32 0, i32 17
  %97 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %retval.0.i334, ptr %arrayidx39, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i336)
  %98 = ptrtoint ptr %addr.addr.i336 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 19, ptr %addr.addr.i336, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i337) #7
  %99 = ptrtoint ptr %val.i337 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 -1, ptr %val.i337, align 1, !annotation !65
  %call.i.i338 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i336, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i338)
  %cmp.i339 = icmp slt i32 %call.i.i338, 0
  br i1 %cmp.i339, label %ch7006_read.exit335.do.end.i347_crit_edge, label %if.end.i342

ch7006_read.exit335.do.end.i347_crit_edge:        ; preds = %ch7006_read.exit335
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i347

if.end.i342:                                      ; preds = %ch7006_read.exit335
  %call.i10.i340 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i337, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i340)
  %cmp2.i341 = icmp slt i32 %call.i10.i340, 0
  br i1 %cmp2.i341, label %if.end.i342.do.end.i347_crit_edge, label %if.end4.i343

if.end.i342.do.end.i347_crit_edge:                ; preds = %if.end.i342
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i347

if.end4.i343:                                     ; preds = %if.end.i342
  call void @__sanitizer_cov_trace_pc() #9
  %100 = ptrtoint ptr %val.i337 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %val.i337, align 1
  br label %ch7006_read.exit349

do.end.i347:                                      ; preds = %if.end.i342.do.end.i347_crit_edge, %ch7006_read.exit335.do.end.i347_crit_edge
  %ret.0.i344 = phi i32 [ %call.i.i338, %ch7006_read.exit335.do.end.i347_crit_edge ], [ %call.i10.i340, %if.end.i342.do.end.i347_crit_edge ]
  %dev.i345 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %102 = ptrtoint ptr %addr.addr.i336 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %addr.addr.i336, align 1
  %conv.i346 = zext i8 %103 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i345, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i344, i32 noundef %conv.i346) #10
  br label %ch7006_read.exit349

ch7006_read.exit349:                              ; preds = %do.end.i347, %if.end4.i343
  %retval.0.i348 = phi i8 [ 0, %do.end.i347 ], [ %101, %if.end4.i343 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i337) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i336)
  %arrayidx42 = getelementptr [38 x i8], ptr %state, i32 0, i32 19
  %104 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %retval.0.i348, ptr %arrayidx42, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i350)
  %105 = ptrtoint ptr %addr.addr.i350 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 20, ptr %addr.addr.i350, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i351) #7
  %106 = ptrtoint ptr %val.i351 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -1, ptr %val.i351, align 1, !annotation !65
  %call.i.i352 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i350, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i352)
  %cmp.i353 = icmp slt i32 %call.i.i352, 0
  br i1 %cmp.i353, label %ch7006_read.exit349.do.end.i361_crit_edge, label %if.end.i356

ch7006_read.exit349.do.end.i361_crit_edge:        ; preds = %ch7006_read.exit349
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i361

if.end.i356:                                      ; preds = %ch7006_read.exit349
  %call.i10.i354 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i351, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i354)
  %cmp2.i355 = icmp slt i32 %call.i10.i354, 0
  br i1 %cmp2.i355, label %if.end.i356.do.end.i361_crit_edge, label %if.end4.i357

if.end.i356.do.end.i361_crit_edge:                ; preds = %if.end.i356
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i361

if.end4.i357:                                     ; preds = %if.end.i356
  call void @__sanitizer_cov_trace_pc() #9
  %107 = ptrtoint ptr %val.i351 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %val.i351, align 1
  br label %ch7006_read.exit363

do.end.i361:                                      ; preds = %if.end.i356.do.end.i361_crit_edge, %ch7006_read.exit349.do.end.i361_crit_edge
  %ret.0.i358 = phi i32 [ %call.i.i352, %ch7006_read.exit349.do.end.i361_crit_edge ], [ %call.i10.i354, %if.end.i356.do.end.i361_crit_edge ]
  %dev.i359 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %109 = ptrtoint ptr %addr.addr.i350 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %addr.addr.i350, align 1
  %conv.i360 = zext i8 %110 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i359, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i358, i32 noundef %conv.i360) #10
  br label %ch7006_read.exit363

ch7006_read.exit363:                              ; preds = %do.end.i361, %if.end4.i357
  %retval.0.i362 = phi i8 [ 0, %do.end.i361 ], [ %108, %if.end4.i357 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i351) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i350)
  %arrayidx45 = getelementptr [38 x i8], ptr %state, i32 0, i32 20
  %111 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %retval.0.i362, ptr %arrayidx45, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i364)
  %112 = ptrtoint ptr %addr.addr.i364 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 21, ptr %addr.addr.i364, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i365) #7
  %113 = ptrtoint ptr %val.i365 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 -1, ptr %val.i365, align 1, !annotation !65
  %call.i.i366 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i364, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i366)
  %cmp.i367 = icmp slt i32 %call.i.i366, 0
  br i1 %cmp.i367, label %ch7006_read.exit363.do.end.i375_crit_edge, label %if.end.i370

ch7006_read.exit363.do.end.i375_crit_edge:        ; preds = %ch7006_read.exit363
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i375

if.end.i370:                                      ; preds = %ch7006_read.exit363
  %call.i10.i368 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i365, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i368)
  %cmp2.i369 = icmp slt i32 %call.i10.i368, 0
  br i1 %cmp2.i369, label %if.end.i370.do.end.i375_crit_edge, label %if.end4.i371

if.end.i370.do.end.i375_crit_edge:                ; preds = %if.end.i370
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i375

if.end4.i371:                                     ; preds = %if.end.i370
  call void @__sanitizer_cov_trace_pc() #9
  %114 = ptrtoint ptr %val.i365 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %val.i365, align 1
  br label %ch7006_read.exit377

do.end.i375:                                      ; preds = %if.end.i370.do.end.i375_crit_edge, %ch7006_read.exit363.do.end.i375_crit_edge
  %ret.0.i372 = phi i32 [ %call.i.i366, %ch7006_read.exit363.do.end.i375_crit_edge ], [ %call.i10.i368, %if.end.i370.do.end.i375_crit_edge ]
  %dev.i373 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %116 = ptrtoint ptr %addr.addr.i364 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %addr.addr.i364, align 1
  %conv.i374 = zext i8 %117 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i373, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i372, i32 noundef %conv.i374) #10
  br label %ch7006_read.exit377

ch7006_read.exit377:                              ; preds = %do.end.i375, %if.end4.i371
  %retval.0.i376 = phi i8 [ 0, %do.end.i375 ], [ %115, %if.end4.i371 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i365) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i364)
  %arrayidx48 = getelementptr [38 x i8], ptr %state, i32 0, i32 21
  %118 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %retval.0.i376, ptr %arrayidx48, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i378)
  %119 = ptrtoint ptr %addr.addr.i378 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 23, ptr %addr.addr.i378, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i379) #7
  %120 = ptrtoint ptr %val.i379 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 -1, ptr %val.i379, align 1, !annotation !65
  %call.i.i380 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i378, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i380)
  %cmp.i381 = icmp slt i32 %call.i.i380, 0
  br i1 %cmp.i381, label %ch7006_read.exit377.do.end.i389_crit_edge, label %if.end.i384

ch7006_read.exit377.do.end.i389_crit_edge:        ; preds = %ch7006_read.exit377
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i389

if.end.i384:                                      ; preds = %ch7006_read.exit377
  %call.i10.i382 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i379, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i382)
  %cmp2.i383 = icmp slt i32 %call.i10.i382, 0
  br i1 %cmp2.i383, label %if.end.i384.do.end.i389_crit_edge, label %if.end4.i385

if.end.i384.do.end.i389_crit_edge:                ; preds = %if.end.i384
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i389

if.end4.i385:                                     ; preds = %if.end.i384
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %val.i379 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %val.i379, align 1
  br label %ch7006_read.exit391

do.end.i389:                                      ; preds = %if.end.i384.do.end.i389_crit_edge, %ch7006_read.exit377.do.end.i389_crit_edge
  %ret.0.i386 = phi i32 [ %call.i.i380, %ch7006_read.exit377.do.end.i389_crit_edge ], [ %call.i10.i382, %if.end.i384.do.end.i389_crit_edge ]
  %dev.i387 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %123 = ptrtoint ptr %addr.addr.i378 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %addr.addr.i378, align 1
  %conv.i388 = zext i8 %124 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i387, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i386, i32 noundef %conv.i388) #10
  br label %ch7006_read.exit391

ch7006_read.exit391:                              ; preds = %do.end.i389, %if.end4.i385
  %retval.0.i390 = phi i8 [ 0, %do.end.i389 ], [ %122, %if.end4.i385 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i379) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i378)
  %arrayidx51 = getelementptr [38 x i8], ptr %state, i32 0, i32 23
  %125 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %retval.0.i390, ptr %arrayidx51, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i392)
  %126 = ptrtoint ptr %addr.addr.i392 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 24, ptr %addr.addr.i392, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i393) #7
  %127 = ptrtoint ptr %val.i393 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 -1, ptr %val.i393, align 1, !annotation !65
  %call.i.i394 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i392, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i394)
  %cmp.i395 = icmp slt i32 %call.i.i394, 0
  br i1 %cmp.i395, label %ch7006_read.exit391.do.end.i403_crit_edge, label %if.end.i398

ch7006_read.exit391.do.end.i403_crit_edge:        ; preds = %ch7006_read.exit391
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i403

if.end.i398:                                      ; preds = %ch7006_read.exit391
  %call.i10.i396 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i393, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i396)
  %cmp2.i397 = icmp slt i32 %call.i10.i396, 0
  br i1 %cmp2.i397, label %if.end.i398.do.end.i403_crit_edge, label %if.end4.i399

if.end.i398.do.end.i403_crit_edge:                ; preds = %if.end.i398
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i403

if.end4.i399:                                     ; preds = %if.end.i398
  call void @__sanitizer_cov_trace_pc() #9
  %128 = ptrtoint ptr %val.i393 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %val.i393, align 1
  br label %ch7006_read.exit405

do.end.i403:                                      ; preds = %if.end.i398.do.end.i403_crit_edge, %ch7006_read.exit391.do.end.i403_crit_edge
  %ret.0.i400 = phi i32 [ %call.i.i394, %ch7006_read.exit391.do.end.i403_crit_edge ], [ %call.i10.i396, %if.end.i398.do.end.i403_crit_edge ]
  %dev.i401 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %130 = ptrtoint ptr %addr.addr.i392 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %addr.addr.i392, align 1
  %conv.i402 = zext i8 %131 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i401, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i400, i32 noundef %conv.i402) #10
  br label %ch7006_read.exit405

ch7006_read.exit405:                              ; preds = %do.end.i403, %if.end4.i399
  %retval.0.i404 = phi i8 [ 0, %do.end.i403 ], [ %129, %if.end4.i399 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i393) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i392)
  %arrayidx54 = getelementptr [38 x i8], ptr %state, i32 0, i32 24
  %132 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %retval.0.i404, ptr %arrayidx54, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i406)
  %133 = ptrtoint ptr %addr.addr.i406 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 25, ptr %addr.addr.i406, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i407) #7
  %134 = ptrtoint ptr %val.i407 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 -1, ptr %val.i407, align 1, !annotation !65
  %call.i.i408 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i406, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i408)
  %cmp.i409 = icmp slt i32 %call.i.i408, 0
  br i1 %cmp.i409, label %ch7006_read.exit405.do.end.i417_crit_edge, label %if.end.i412

ch7006_read.exit405.do.end.i417_crit_edge:        ; preds = %ch7006_read.exit405
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i417

if.end.i412:                                      ; preds = %ch7006_read.exit405
  %call.i10.i410 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i407, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i410)
  %cmp2.i411 = icmp slt i32 %call.i10.i410, 0
  br i1 %cmp2.i411, label %if.end.i412.do.end.i417_crit_edge, label %if.end4.i413

if.end.i412.do.end.i417_crit_edge:                ; preds = %if.end.i412
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i417

if.end4.i413:                                     ; preds = %if.end.i412
  call void @__sanitizer_cov_trace_pc() #9
  %135 = ptrtoint ptr %val.i407 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %val.i407, align 1
  br label %ch7006_read.exit419

do.end.i417:                                      ; preds = %if.end.i412.do.end.i417_crit_edge, %ch7006_read.exit405.do.end.i417_crit_edge
  %ret.0.i414 = phi i32 [ %call.i.i408, %ch7006_read.exit405.do.end.i417_crit_edge ], [ %call.i10.i410, %if.end.i412.do.end.i417_crit_edge ]
  %dev.i415 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %137 = ptrtoint ptr %addr.addr.i406 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %addr.addr.i406, align 1
  %conv.i416 = zext i8 %138 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i415, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i414, i32 noundef %conv.i416) #10
  br label %ch7006_read.exit419

ch7006_read.exit419:                              ; preds = %do.end.i417, %if.end4.i413
  %retval.0.i418 = phi i8 [ 0, %do.end.i417 ], [ %136, %if.end4.i413 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i407) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i406)
  %arrayidx57 = getelementptr [38 x i8], ptr %state, i32 0, i32 25
  %139 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %retval.0.i418, ptr %arrayidx57, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i420)
  %140 = ptrtoint ptr %addr.addr.i420 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 26, ptr %addr.addr.i420, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i421) #7
  %141 = ptrtoint ptr %val.i421 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 -1, ptr %val.i421, align 1, !annotation !65
  %call.i.i422 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i420, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i422)
  %cmp.i423 = icmp slt i32 %call.i.i422, 0
  br i1 %cmp.i423, label %ch7006_read.exit419.do.end.i431_crit_edge, label %if.end.i426

ch7006_read.exit419.do.end.i431_crit_edge:        ; preds = %ch7006_read.exit419
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i431

if.end.i426:                                      ; preds = %ch7006_read.exit419
  %call.i10.i424 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i421, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i424)
  %cmp2.i425 = icmp slt i32 %call.i10.i424, 0
  br i1 %cmp2.i425, label %if.end.i426.do.end.i431_crit_edge, label %if.end4.i427

if.end.i426.do.end.i431_crit_edge:                ; preds = %if.end.i426
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i431

if.end4.i427:                                     ; preds = %if.end.i426
  call void @__sanitizer_cov_trace_pc() #9
  %142 = ptrtoint ptr %val.i421 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %val.i421, align 1
  br label %ch7006_read.exit433

do.end.i431:                                      ; preds = %if.end.i426.do.end.i431_crit_edge, %ch7006_read.exit419.do.end.i431_crit_edge
  %ret.0.i428 = phi i32 [ %call.i.i422, %ch7006_read.exit419.do.end.i431_crit_edge ], [ %call.i10.i424, %if.end.i426.do.end.i431_crit_edge ]
  %dev.i429 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %144 = ptrtoint ptr %addr.addr.i420 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %addr.addr.i420, align 1
  %conv.i430 = zext i8 %145 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i429, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i428, i32 noundef %conv.i430) #10
  br label %ch7006_read.exit433

ch7006_read.exit433:                              ; preds = %do.end.i431, %if.end4.i427
  %retval.0.i432 = phi i8 [ 0, %do.end.i431 ], [ %143, %if.end4.i427 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i421) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i420)
  %arrayidx60 = getelementptr [38 x i8], ptr %state, i32 0, i32 26
  %146 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %retval.0.i432, ptr %arrayidx60, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i434)
  %147 = ptrtoint ptr %addr.addr.i434 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 27, ptr %addr.addr.i434, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i435) #7
  %148 = ptrtoint ptr %val.i435 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 -1, ptr %val.i435, align 1, !annotation !65
  %call.i.i436 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i434, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i436)
  %cmp.i437 = icmp slt i32 %call.i.i436, 0
  br i1 %cmp.i437, label %ch7006_read.exit433.do.end.i445_crit_edge, label %if.end.i440

ch7006_read.exit433.do.end.i445_crit_edge:        ; preds = %ch7006_read.exit433
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i445

if.end.i440:                                      ; preds = %ch7006_read.exit433
  %call.i10.i438 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i435, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i438)
  %cmp2.i439 = icmp slt i32 %call.i10.i438, 0
  br i1 %cmp2.i439, label %if.end.i440.do.end.i445_crit_edge, label %if.end4.i441

if.end.i440.do.end.i445_crit_edge:                ; preds = %if.end.i440
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i445

if.end4.i441:                                     ; preds = %if.end.i440
  call void @__sanitizer_cov_trace_pc() #9
  %149 = ptrtoint ptr %val.i435 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %val.i435, align 1
  br label %ch7006_read.exit447

do.end.i445:                                      ; preds = %if.end.i440.do.end.i445_crit_edge, %ch7006_read.exit433.do.end.i445_crit_edge
  %ret.0.i442 = phi i32 [ %call.i.i436, %ch7006_read.exit433.do.end.i445_crit_edge ], [ %call.i10.i438, %if.end.i440.do.end.i445_crit_edge ]
  %dev.i443 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %151 = ptrtoint ptr %addr.addr.i434 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %addr.addr.i434, align 1
  %conv.i444 = zext i8 %152 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i443, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i442, i32 noundef %conv.i444) #10
  br label %ch7006_read.exit447

ch7006_read.exit447:                              ; preds = %do.end.i445, %if.end4.i441
  %retval.0.i446 = phi i8 [ 0, %do.end.i445 ], [ %150, %if.end4.i441 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i435) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i434)
  %arrayidx63 = getelementptr [38 x i8], ptr %state, i32 0, i32 27
  %153 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %retval.0.i446, ptr %arrayidx63, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i448)
  %154 = ptrtoint ptr %addr.addr.i448 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 28, ptr %addr.addr.i448, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i449) #7
  %155 = ptrtoint ptr %val.i449 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 -1, ptr %val.i449, align 1, !annotation !65
  %call.i.i450 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i448, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i450)
  %cmp.i451 = icmp slt i32 %call.i.i450, 0
  br i1 %cmp.i451, label %ch7006_read.exit447.do.end.i459_crit_edge, label %if.end.i454

ch7006_read.exit447.do.end.i459_crit_edge:        ; preds = %ch7006_read.exit447
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i459

if.end.i454:                                      ; preds = %ch7006_read.exit447
  %call.i10.i452 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i449, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i452)
  %cmp2.i453 = icmp slt i32 %call.i10.i452, 0
  br i1 %cmp2.i453, label %if.end.i454.do.end.i459_crit_edge, label %if.end4.i455

if.end.i454.do.end.i459_crit_edge:                ; preds = %if.end.i454
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i459

if.end4.i455:                                     ; preds = %if.end.i454
  call void @__sanitizer_cov_trace_pc() #9
  %156 = ptrtoint ptr %val.i449 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %val.i449, align 1
  br label %ch7006_read.exit461

do.end.i459:                                      ; preds = %if.end.i454.do.end.i459_crit_edge, %ch7006_read.exit447.do.end.i459_crit_edge
  %ret.0.i456 = phi i32 [ %call.i.i450, %ch7006_read.exit447.do.end.i459_crit_edge ], [ %call.i10.i452, %if.end.i454.do.end.i459_crit_edge ]
  %dev.i457 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %158 = ptrtoint ptr %addr.addr.i448 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %addr.addr.i448, align 1
  %conv.i458 = zext i8 %159 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i457, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i456, i32 noundef %conv.i458) #10
  br label %ch7006_read.exit461

ch7006_read.exit461:                              ; preds = %do.end.i459, %if.end4.i455
  %retval.0.i460 = phi i8 [ 0, %do.end.i459 ], [ %157, %if.end4.i455 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i449) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i448)
  %arrayidx66 = getelementptr [38 x i8], ptr %state, i32 0, i32 28
  %160 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %retval.0.i460, ptr %arrayidx66, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i462)
  %161 = ptrtoint ptr %addr.addr.i462 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 29, ptr %addr.addr.i462, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i463) #7
  %162 = ptrtoint ptr %val.i463 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 -1, ptr %val.i463, align 1, !annotation !65
  %call.i.i464 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i462, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i464)
  %cmp.i465 = icmp slt i32 %call.i.i464, 0
  br i1 %cmp.i465, label %ch7006_read.exit461.do.end.i473_crit_edge, label %if.end.i468

ch7006_read.exit461.do.end.i473_crit_edge:        ; preds = %ch7006_read.exit461
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i473

if.end.i468:                                      ; preds = %ch7006_read.exit461
  %call.i10.i466 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i463, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i466)
  %cmp2.i467 = icmp slt i32 %call.i10.i466, 0
  br i1 %cmp2.i467, label %if.end.i468.do.end.i473_crit_edge, label %if.end4.i469

if.end.i468.do.end.i473_crit_edge:                ; preds = %if.end.i468
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i473

if.end4.i469:                                     ; preds = %if.end.i468
  call void @__sanitizer_cov_trace_pc() #9
  %163 = ptrtoint ptr %val.i463 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %val.i463, align 1
  br label %ch7006_read.exit475

do.end.i473:                                      ; preds = %if.end.i468.do.end.i473_crit_edge, %ch7006_read.exit461.do.end.i473_crit_edge
  %ret.0.i470 = phi i32 [ %call.i.i464, %ch7006_read.exit461.do.end.i473_crit_edge ], [ %call.i10.i466, %if.end.i468.do.end.i473_crit_edge ]
  %dev.i471 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %165 = ptrtoint ptr %addr.addr.i462 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %addr.addr.i462, align 1
  %conv.i472 = zext i8 %166 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i471, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i470, i32 noundef %conv.i472) #10
  br label %ch7006_read.exit475

ch7006_read.exit475:                              ; preds = %do.end.i473, %if.end4.i469
  %retval.0.i474 = phi i8 [ 0, %do.end.i473 ], [ %164, %if.end4.i469 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i463) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i462)
  %arrayidx69 = getelementptr [38 x i8], ptr %state, i32 0, i32 29
  %167 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %retval.0.i474, ptr %arrayidx69, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i476)
  %168 = ptrtoint ptr %addr.addr.i476 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 30, ptr %addr.addr.i476, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i477) #7
  %169 = ptrtoint ptr %val.i477 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 -1, ptr %val.i477, align 1, !annotation !65
  %call.i.i478 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i476, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i478)
  %cmp.i479 = icmp slt i32 %call.i.i478, 0
  br i1 %cmp.i479, label %ch7006_read.exit475.do.end.i487_crit_edge, label %if.end.i482

ch7006_read.exit475.do.end.i487_crit_edge:        ; preds = %ch7006_read.exit475
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i487

if.end.i482:                                      ; preds = %ch7006_read.exit475
  %call.i10.i480 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i477, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i480)
  %cmp2.i481 = icmp slt i32 %call.i10.i480, 0
  br i1 %cmp2.i481, label %if.end.i482.do.end.i487_crit_edge, label %if.end4.i483

if.end.i482.do.end.i487_crit_edge:                ; preds = %if.end.i482
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i487

if.end4.i483:                                     ; preds = %if.end.i482
  call void @__sanitizer_cov_trace_pc() #9
  %170 = ptrtoint ptr %val.i477 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %val.i477, align 1
  br label %ch7006_read.exit489

do.end.i487:                                      ; preds = %if.end.i482.do.end.i487_crit_edge, %ch7006_read.exit475.do.end.i487_crit_edge
  %ret.0.i484 = phi i32 [ %call.i.i478, %ch7006_read.exit475.do.end.i487_crit_edge ], [ %call.i10.i480, %if.end.i482.do.end.i487_crit_edge ]
  %dev.i485 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %172 = ptrtoint ptr %addr.addr.i476 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %addr.addr.i476, align 1
  %conv.i486 = zext i8 %173 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i485, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i484, i32 noundef %conv.i486) #10
  br label %ch7006_read.exit489

ch7006_read.exit489:                              ; preds = %do.end.i487, %if.end4.i483
  %retval.0.i488 = phi i8 [ 0, %do.end.i487 ], [ %171, %if.end4.i483 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i477) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i476)
  %arrayidx72 = getelementptr [38 x i8], ptr %state, i32 0, i32 30
  %174 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %retval.0.i488, ptr %arrayidx72, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i490)
  %175 = ptrtoint ptr %addr.addr.i490 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 31, ptr %addr.addr.i490, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i491) #7
  %176 = ptrtoint ptr %val.i491 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 -1, ptr %val.i491, align 1, !annotation !65
  %call.i.i492 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i490, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i492)
  %cmp.i493 = icmp slt i32 %call.i.i492, 0
  br i1 %cmp.i493, label %ch7006_read.exit489.do.end.i501_crit_edge, label %if.end.i496

ch7006_read.exit489.do.end.i501_crit_edge:        ; preds = %ch7006_read.exit489
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i501

if.end.i496:                                      ; preds = %ch7006_read.exit489
  %call.i10.i494 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i491, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i494)
  %cmp2.i495 = icmp slt i32 %call.i10.i494, 0
  br i1 %cmp2.i495, label %if.end.i496.do.end.i501_crit_edge, label %if.end4.i497

if.end.i496.do.end.i501_crit_edge:                ; preds = %if.end.i496
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i501

if.end4.i497:                                     ; preds = %if.end.i496
  call void @__sanitizer_cov_trace_pc() #9
  %177 = ptrtoint ptr %val.i491 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %val.i491, align 1
  br label %ch7006_read.exit503

do.end.i501:                                      ; preds = %if.end.i496.do.end.i501_crit_edge, %ch7006_read.exit489.do.end.i501_crit_edge
  %ret.0.i498 = phi i32 [ %call.i.i492, %ch7006_read.exit489.do.end.i501_crit_edge ], [ %call.i10.i494, %if.end.i496.do.end.i501_crit_edge ]
  %dev.i499 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %179 = ptrtoint ptr %addr.addr.i490 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %addr.addr.i490, align 1
  %conv.i500 = zext i8 %180 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i499, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i498, i32 noundef %conv.i500) #10
  br label %ch7006_read.exit503

ch7006_read.exit503:                              ; preds = %do.end.i501, %if.end4.i497
  %retval.0.i502 = phi i8 [ 0, %do.end.i501 ], [ %178, %if.end4.i497 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i491) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i490)
  %arrayidx75 = getelementptr [38 x i8], ptr %state, i32 0, i32 31
  %181 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %retval.0.i502, ptr %arrayidx75, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i504)
  %182 = ptrtoint ptr %addr.addr.i504 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 32, ptr %addr.addr.i504, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i505) #7
  %183 = ptrtoint ptr %val.i505 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 -1, ptr %val.i505, align 1, !annotation !65
  %call.i.i506 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i504, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i506)
  %cmp.i507 = icmp slt i32 %call.i.i506, 0
  br i1 %cmp.i507, label %ch7006_read.exit503.do.end.i515_crit_edge, label %if.end.i510

ch7006_read.exit503.do.end.i515_crit_edge:        ; preds = %ch7006_read.exit503
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i515

if.end.i510:                                      ; preds = %ch7006_read.exit503
  %call.i10.i508 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i505, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i508)
  %cmp2.i509 = icmp slt i32 %call.i10.i508, 0
  br i1 %cmp2.i509, label %if.end.i510.do.end.i515_crit_edge, label %if.end4.i511

if.end.i510.do.end.i515_crit_edge:                ; preds = %if.end.i510
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i515

if.end4.i511:                                     ; preds = %if.end.i510
  call void @__sanitizer_cov_trace_pc() #9
  %184 = ptrtoint ptr %val.i505 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %val.i505, align 1
  br label %ch7006_read.exit517

do.end.i515:                                      ; preds = %if.end.i510.do.end.i515_crit_edge, %ch7006_read.exit503.do.end.i515_crit_edge
  %ret.0.i512 = phi i32 [ %call.i.i506, %ch7006_read.exit503.do.end.i515_crit_edge ], [ %call.i10.i508, %if.end.i510.do.end.i515_crit_edge ]
  %dev.i513 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %186 = ptrtoint ptr %addr.addr.i504 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %addr.addr.i504, align 1
  %conv.i514 = zext i8 %187 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i513, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i512, i32 noundef %conv.i514) #10
  br label %ch7006_read.exit517

ch7006_read.exit517:                              ; preds = %do.end.i515, %if.end4.i511
  %retval.0.i516 = phi i8 [ 0, %do.end.i515 ], [ %185, %if.end4.i511 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i505) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i504)
  %arrayidx78 = getelementptr [38 x i8], ptr %state, i32 0, i32 32
  %188 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %retval.0.i516, ptr %arrayidx78, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i518)
  %189 = ptrtoint ptr %addr.addr.i518 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 33, ptr %addr.addr.i518, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i519) #7
  %190 = ptrtoint ptr %val.i519 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 -1, ptr %val.i519, align 1, !annotation !65
  %call.i.i520 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i518, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i520)
  %cmp.i521 = icmp slt i32 %call.i.i520, 0
  br i1 %cmp.i521, label %ch7006_read.exit517.do.end.i529_crit_edge, label %if.end.i524

ch7006_read.exit517.do.end.i529_crit_edge:        ; preds = %ch7006_read.exit517
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i529

if.end.i524:                                      ; preds = %ch7006_read.exit517
  %call.i10.i522 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i519, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i522)
  %cmp2.i523 = icmp slt i32 %call.i10.i522, 0
  br i1 %cmp2.i523, label %if.end.i524.do.end.i529_crit_edge, label %if.end4.i525

if.end.i524.do.end.i529_crit_edge:                ; preds = %if.end.i524
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i529

if.end4.i525:                                     ; preds = %if.end.i524
  call void @__sanitizer_cov_trace_pc() #9
  %191 = ptrtoint ptr %val.i519 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %val.i519, align 1
  br label %ch7006_read.exit531

do.end.i529:                                      ; preds = %if.end.i524.do.end.i529_crit_edge, %ch7006_read.exit517.do.end.i529_crit_edge
  %ret.0.i526 = phi i32 [ %call.i.i520, %ch7006_read.exit517.do.end.i529_crit_edge ], [ %call.i10.i522, %if.end.i524.do.end.i529_crit_edge ]
  %dev.i527 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %193 = ptrtoint ptr %addr.addr.i518 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %addr.addr.i518, align 1
  %conv.i528 = zext i8 %194 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i527, ptr noundef nonnull @.str.21, i32 noundef %ret.0.i526, i32 noundef %conv.i528) #10
  br label %ch7006_read.exit531

ch7006_read.exit531:                              ; preds = %do.end.i529, %if.end4.i525
  %retval.0.i530 = phi i8 [ 0, %do.end.i529 ], [ %192, %if.end4.i525 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i519) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i518)
  %arrayidx81 = getelementptr [38 x i8], ptr %state, i32 0, i32 33
  %195 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %retval.0.i530, ptr %arrayidx81, align 1
  %196 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %arrayidx6, align 1
  %and = and i8 %197, -16
  %and87 = lshr i8 %197, 2
  %198 = and i8 %and87, 3
  %or = or i8 %198, %and
  %and91 = shl i8 %197, 2
  %shl = and i8 %and91, 12
  %or92 = or i8 %or, %shl
  store i8 %or92, ptr %arrayidx6, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !49, !51, !52, !53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/i2c/ch7006_mode.c", i32 30, i32 18}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/i2c/ch7006_mode.c", i32 31, i32 20}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/i2c/ch7006_mode.c", i32 32, i32 20}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/i2c/ch7006_mode.c", i32 33, i32 21}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/i2c/ch7006_mode.c", i32 34, i32 21}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/i2c/ch7006_mode.c", i32 35, i32 21}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/i2c/ch7006_mode.c", i32 36, i32 21}
!14 = !{ptr @ch7006_tv_norm_names, !15, !"ch7006_tv_norm_names", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/i2c/ch7006_mode.c", i32 29, i32 20}
!16 = !{ptr @ch7006_tv_norms, !17, !"ch7006_tv_norms", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/i2c/ch7006_mode.c", i32 49, i32 34}
!18 = !{ptr @ch7006_modes, !19, !"ch7006_modes", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/i2c/ch7006_mode.c", i32 144, i32 26}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/i2c/ch7006_mode.c", i32 227, i32 2}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ch7006_setup_levels._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @ch7006_setup_levels._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/i2c/ch7006_mode.c", i32 251, i32 2}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ch7006_setup_subcarrier._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @ch7006_setup_subcarrier._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/i2c/ch7006_mode.c", i32 288, i32 2}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ch7006_setup_pll._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @ch7006_setup_pll._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/i2c/ch7006_mode.c", i32 363, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ch7006_setup_properties._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @ch7006_setup_properties._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/i2c/ch7006_mode.c", i32 375, i32 3}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ch7006_write._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @ch7006_write._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/i2c/ch7006_mode.c", i32 395, i32 2}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ch7006_read._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ch7006_read._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 2148353943, i64 2148354223, i64 2148354557, i64 2148354891}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{!"auto-init"}
