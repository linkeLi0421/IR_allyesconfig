; ModuleID = '/llk/IR_all_yes/drivers/media/usb/stkwebcam/stk-sensor.c_pt.bc'
source_filename = "../drivers/media/usb/stkwebcam/stk-sensor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regval = type { i32, i32 }
%struct.stk_camera = type { %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.video_device, ptr, ptr, i32, ptr, %struct.mutex, i32, i8, %struct.atomic_t, %struct.stk_video, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, i32, ptr, %struct.list_head, %struct.list_head, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.stk_video = type { i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }

@stk_sensor_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013stkwebcam: Sensor resetting failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stk_sensor_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/usb/stkwebcam/stk-sensor.c\00", [55 x i8] zeroinitializer }, align 32
@stk_sensor_init._entry_ptr = internal global ptr @stk_sensor_init._entry, section ".printk_index", align 4
@stk_sensor_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013stkwebcam: Strange error reading sensor ID\0A\00", [50 x i8] zeroinitializer }, align 32
@stk_sensor_init._entry_ptr.5 = internal global ptr @stk_sensor_init._entry.3, section ".printk_index", align 4
@stk_sensor_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013stkwebcam: Huh? you don't have a sensor from ovt\0A\00", [44 x i8] zeroinitializer }, align 32
@stk_sensor_init._entry_ptr.8 = internal global ptr @stk_sensor_init._entry.6, section ".printk_index", align 4
@stk_sensor_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013stkwebcam: Could not read sensor model\0A\00", [54 x i8] zeroinitializer }, align 32
@stk_sensor_init._entry_ptr.11 = internal global ptr @stk_sensor_init._entry.9, section ".printk_index", align 4
@ov_initvals = internal global { [47 x %struct.regval], [72 x i8] } { [47 x %struct.regval] [%struct.regval { i32 17, i32 128 }, %struct.regval { i32 59, i32 1 }, %struct.regval { i32 106, i32 125 }, %struct.regval { i32 16, i32 64 }, %struct.regval zeroinitializer, %struct.regval { i32 1, i32 128 }, %struct.regval { i32 2, i32 128 }, %struct.regval { i32 19, i32 101 }, %struct.regval { i32 57, i32 80 }, %struct.regval { i32 56, i32 147 }, %struct.regval { i32 55, i32 0 }, %struct.regval { i32 53, i32 129 }, %struct.regval { i32 14, i32 32 }, %struct.regval { i32 4, i32 0 }, %struct.regval { i32 12, i32 0 }, %struct.regval { i32 13, i32 0 }, %struct.regval { i32 27, i32 0 }, %struct.regval { i32 22, i32 7 }, %struct.regval { i32 51, i32 226 }, %struct.regval { i32 52, i32 191 }, %struct.regval { i32 65, i32 0 }, %struct.regval { i32 150, i32 4 }, %struct.regval { i32 105, i32 64 }, %struct.regval { i32 142, i32 0 }, %struct.regval { i32 60, i32 115 }, %struct.regval { i32 143, i32 223 }, %struct.regval { i32 139, i32 6 }, %struct.regval { i32 140, i32 32 }, %struct.regval { i32 148, i32 136 }, %struct.regval { i32 149, i32 136 }, %struct.regval { i32 41, i32 63 }, %struct.regval { i32 15, i32 66 }, %struct.regval { i32 165, i32 128 }, %struct.regval { i32 169, i32 184 }, %struct.regval { i32 170, i32 146 }, %struct.regval { i32 171, i32 10 }, %struct.regval { i32 144, i32 0 }, %struct.regval { i32 145, i32 0 }, %struct.regval { i32 159, i32 0 }, %struct.regval { i32 160, i32 0 }, %struct.regval { i32 36, i32 104 }, %struct.regval { i32 37, i32 92 }, %struct.regval { i32 38, i32 195 }, %struct.regval { i32 20, i32 46 }, %struct.regval { i32 42, i32 0 }, %struct.regval { i32 43, i32 0 }, %struct.regval { i32 255, i32 255 }], [72 x i8] zeroinitializer }, align 32
@stk_sensor_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016stkwebcam: OmniVision sensor detected, id %02X%02X at address %x\0A\00", [60 x i8] zeroinitializer }, align 32
@stk_sensor_init._entry_ptr.14 = internal global ptr @stk_sensor_init._entry.12, section ".printk_index", align 4
@stk_sensor_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013stkwebcam: Unsupported mode %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stk_sensor_configure\00", [43 x i8] zeroinitializer }, align 32
@stk_sensor_configure._entry_ptr = internal global ptr @stk_sensor_configure._entry, section ".printk_index", align 4
@ov_fmt_uyvy = internal constant { [10 x %struct.regval], [48 x i8] } { [10 x %struct.regval] [%struct.regval { i32 58, i32 12 }, %struct.regval { i32 79, i32 128 }, %struct.regval { i32 80, i32 128 }, %struct.regval { i32 81, i32 0 }, %struct.regval { i32 82, i32 34 }, %struct.regval { i32 83, i32 94 }, %struct.regval { i32 84, i32 128 }, %struct.regval { i32 61, i32 80 }, %struct.regval { i32 64, i32 192 }, %struct.regval { i32 255, i32 255 }], [48 x i8] zeroinitializer }, align 32
@ov_fmt_yuyv = internal constant { [10 x %struct.regval], [48 x i8] } { [10 x %struct.regval] [%struct.regval { i32 58, i32 0 }, %struct.regval { i32 79, i32 128 }, %struct.regval { i32 80, i32 128 }, %struct.regval { i32 81, i32 0 }, %struct.regval { i32 82, i32 34 }, %struct.regval { i32 83, i32 94 }, %struct.regval { i32 84, i32 128 }, %struct.regval { i32 61, i32 80 }, %struct.regval { i32 64, i32 192 }, %struct.regval { i32 255, i32 255 }], [48 x i8] zeroinitializer }, align 32
@ov_fmt_rgbp = internal constant { [13 x %struct.regval], [56 x i8] } { [13 x %struct.regval] [%struct.regval { i32 140, i32 0 }, %struct.regval { i32 58, i32 8 }, %struct.regval { i32 4, i32 0 }, %struct.regval { i32 20, i32 56 }, %struct.regval { i32 79, i32 179 }, %struct.regval { i32 80, i32 179 }, %struct.regval { i32 81, i32 0 }, %struct.regval { i32 82, i32 61 }, %struct.regval { i32 83, i32 167 }, %struct.regval { i32 84, i32 228 }, %struct.regval { i32 61, i32 128 }, %struct.regval { i32 64, i32 208 }, %struct.regval { i32 255, i32 255 }], [56 x i8] zeroinitializer }, align 32
@ov_fmt_rgbr = internal constant { [13 x %struct.regval], [56 x i8] } { [13 x %struct.regval] [%struct.regval { i32 140, i32 0 }, %struct.regval { i32 58, i32 0 }, %struct.regval { i32 4, i32 0 }, %struct.regval { i32 20, i32 56 }, %struct.regval { i32 79, i32 179 }, %struct.regval { i32 80, i32 179 }, %struct.regval { i32 81, i32 0 }, %struct.regval { i32 82, i32 61 }, %struct.regval { i32 83, i32 167 }, %struct.regval { i32 84, i32 228 }, %struct.regval { i32 61, i32 128 }, %struct.regval { i32 64, i32 208 }, %struct.regval { i32 255, i32 255 }], [56 x i8] zeroinitializer }, align 32
@ov_fmt_bayer = internal constant { [3 x %struct.regval], [40 x i8] } { [3 x %struct.regval] [%struct.regval { i32 58, i32 64 }, %struct.regval { i32 64, i32 192 }, %struct.regval { i32 255, i32 255 }], [40 x i8] zeroinitializer }, align 32
@stk_sensor_configure._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013stkwebcam: Unsupported colorspace\0A\00", [59 x i8] zeroinitializer }, align 32
@stk_sensor_configure._entry_ptr.19 = internal global ptr @stk_sensor_configure._entry.17, section ".printk_index", align 4
@stk_sensor_configure._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.2, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013stkwebcam: stk_sensor_set_hw failed (VGA)\0A\00", [51 x i8] zeroinitializer }, align 32
@stk_sensor_configure._entry_ptr.22 = internal global ptr @stk_sensor_configure._entry.20, section ".printk_index", align 4
@stk_sensor_inb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013stkwebcam: stk_sensor_inb failed, status=0x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stk_sensor_inb\00", [17 x i8] zeroinitializer }, align 32
@stk_sensor_inb._entry_ptr = internal global ptr @stk_sensor_inb._entry, section ".printk_index", align 4
@stk_sensor_outb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013stkwebcam: stk_sensor_outb failed, status=0x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stk_sensor_outb\00", [16 x i8] zeroinitializer }, align 32
@stk_sensor_outb._entry_ptr = internal global ptr @stk_sensor_outb._entry, section ".printk_index", align 4
@switch.table.stk_sensor_configure = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 11, i32 0, i32 412, i32 267, i32 604], [44 x i8] zeroinitializer }, align 32
@switch.table.stk_sensor_configure.27 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 64, i32 0, i32 32, i32 16, i32 8], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 4]
@__sancov_gen_cov_switch_values.29 = internal global [7 x i64] [i64 5, i64 32, i64 825770306, i64 1346520914, i64 1380075346, i64 1448695129, i64 1498831189]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 363, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 370, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 374, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 379, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [12 x i8] c"ov_initvals\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 300, i32 22 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 384, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 518, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [12 x i8] c"ov_fmt_uyvy\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 390, i32 22 }
@___asan_gen_.81 = private unnamed_addr constant [12 x i8] c"ov_fmt_yuyv\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 403, i32 22 }
@___asan_gen_.84 = private unnamed_addr constant [12 x i8] c"ov_fmt_rgbp\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 434, i32 22 }
@___asan_gen_.87 = private unnamed_addr constant [12 x i8] c"ov_fmt_rgbr\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 417, i32 22 }
@___asan_gen_.90 = private unnamed_addr constant [13 x i8] c"ov_fmt_bayer\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 451, i32 22 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 543, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 563, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 259, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [44 x i8] c"../drivers/media/usb/stkwebcam/stk-sensor.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 236, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant [34 x i8] c"switch.table.stk_sensor_configure\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [37 x i8] c"switch.table.stk_sensor_configure.27\00", align 1
@llvm.compiler.used = appending global [43 x ptr] [ptr @stk_sensor_configure._entry, ptr @stk_sensor_configure._entry.17, ptr @stk_sensor_configure._entry.20, ptr @stk_sensor_configure._entry_ptr, ptr @stk_sensor_configure._entry_ptr.19, ptr @stk_sensor_configure._entry_ptr.22, ptr @stk_sensor_inb._entry, ptr @stk_sensor_inb._entry_ptr, ptr @stk_sensor_init._entry, ptr @stk_sensor_init._entry.12, ptr @stk_sensor_init._entry.3, ptr @stk_sensor_init._entry.6, ptr @stk_sensor_init._entry.9, ptr @stk_sensor_init._entry_ptr, ptr @stk_sensor_init._entry_ptr.11, ptr @stk_sensor_init._entry_ptr.14, ptr @stk_sensor_init._entry_ptr.5, ptr @stk_sensor_init._entry_ptr.8, ptr @stk_sensor_outb._entry, ptr @stk_sensor_outb._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @ov_initvals, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @ov_fmt_uyvy, ptr @ov_fmt_yuyv, ptr @ov_fmt_rgbp, ptr @ov_fmt_rgbr, ptr @ov_fmt_bayer, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @switch.table.stk_sensor_configure, ptr @switch.table.stk_sensor_configure.27], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_sensor_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_sensor_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_sensor_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_sensor_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov_initvals to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_sensor_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_sensor_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov_fmt_uyvy to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov_fmt_yuyv to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov_fmt_rgbp to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov_fmt_rgbr to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov_fmt_bayer to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_sensor_configure._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_sensor_configure._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_sensor_inb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk_sensor_outb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stk_sensor_configure to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stk_sensor_configure.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stk_sensor_sleep(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #4
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !66
  %call = call fastcc i32 @stk_sensor_inb(ptr noundef %dev, i8 noundef zeroext 9, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tmp, align 1
  %3 = or i8 %2, 16
  %call2 = tail call fastcc i32 @stk_sensor_outb(ptr noundef %dev, i8 noundef zeroext 9, i8 noundef zeroext %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3 = icmp ne i32 %call2, 0
  %phi.cast = zext i1 %tobool3 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %4 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #4
  ret i32 %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stk_sensor_inb(ptr noundef %dev, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %val) unnamed_addr #0 align 64 {
entry:
  %tmpval = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmpval) #4
  %0 = ptrtoint ptr %tmpval to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %tmpval, align 1
  %call = tail call i32 @stk_camera_write_reg(ptr noundef %dev, i16 noundef zeroext 520, i8 noundef zeroext %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @stk_camera_write_reg(ptr noundef %dev, i16 noundef zeroext 512, i8 noundef zeroext 112) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.do.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.do.body_crit_edge:                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end8.do.body_crit_edge, %if.end.do.body_crit_edge
  %i.0 = phi i32 [ %inc, %if.end8.do.body_crit_edge ], [ 0, %if.end.do.body_crit_edge ]
  %call5 = call i32 @stk_camera_read_reg(ptr noundef %dev, i16 noundef zeroext 513, ptr noundef nonnull %tmpval) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %do.body
  %1 = ptrtoint ptr %tmpval to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tmpval, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  %inc = add nuw nsw i32 %i.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %i.0)
  %cmp10 = icmp ult i32 %i.0, 49
  %or.cond = select i1 %cmp, i1 %cmp10, i1 false
  br i1 %or.cond, label %if.end8.do.body_crit_edge, label %do.end

if.end8.do.body_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end:                                           ; preds = %if.end8
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i8 %2, label %do.end20 [
    i8 1, label %if.end24
    i8 0, label %do.end.cleanup_crit_edge
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end20:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv12 = zext i8 %2 to i32
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %conv12) #7
  br label %cleanup

if.end24:                                         ; preds = %do.end
  %call25 = call i32 @stk_camera_read_reg(ptr noundef %dev, i16 noundef zeroext 521, ptr noundef nonnull %tmpval) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %tmpval to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tmpval, align 1
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %val, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end24.cleanup_crit_edge, %do.end20, %do.end.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %do.end.cleanup_crit_edge ], [ 1, %do.end20 ], [ 1, %if.end24.cleanup_crit_edge ], [ 1, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmpval) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stk_sensor_outb(ptr noundef %dev, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  %tmpval = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmpval) #4
  %0 = ptrtoint ptr %tmpval to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %tmpval, align 1
  %call = tail call i32 @stk_camera_write_reg(ptr noundef %dev, i16 noundef zeroext 516, i8 noundef zeroext %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @stk_camera_write_reg(ptr noundef %dev, i16 noundef zeroext 517, i8 noundef zeroext %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @stk_camera_write_reg(ptr noundef %dev, i16 noundef zeroext 512, i8 noundef zeroext 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.do.body_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4.do.body_crit_edge:                        ; preds = %if.end4
  br label %do.body

do.body:                                          ; preds = %if.end12.do.body_crit_edge, %if.end4.do.body_crit_edge
  %i.0 = phi i32 [ %inc, %if.end12.do.body_crit_edge ], [ 0, %if.end4.do.body_crit_edge ]
  %call9 = call i32 @stk_camera_read_reg(ptr noundef %dev, i16 noundef zeroext 513, ptr noundef nonnull %tmpval) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %do.body
  %1 = ptrtoint ptr %tmpval to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tmpval, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  %inc = add nuw nsw i32 %i.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %i.0)
  %cmp14 = icmp ult i32 %i.0, 49
  %or.cond = select i1 %cmp, i1 %cmp14, i1 false
  br i1 %or.cond, label %if.end12.do.body_crit_edge, label %do.end

if.end12.do.body_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end:                                           ; preds = %if.end12
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %2, label %do.end24 [
    i8 4, label %if.else
    i8 0, label %do.end.cleanup_crit_edge
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end24:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv16 = zext i8 %2 to i32
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %conv16) #7
  br label %cleanup

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end24, %do.end.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end4.cleanup_crit_edge ], [ 1, %do.end.cleanup_crit_edge ], [ 1, %do.end24 ], [ 1, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmpval) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stk_sensor_wakeup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #4
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !66
  %call = call fastcc i32 @stk_sensor_inb(ptr noundef %dev, i8 noundef zeroext 9, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tmp, align 1
  %3 = and i8 %2, -17
  %call2 = tail call fastcc i32 @stk_sensor_outb(ptr noundef %dev, i8 noundef zeroext 9, i8 noundef zeroext %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3 = icmp ne i32 %call2, 0
  %phi.cast = zext i1 %tobool3 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %4 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stk_sensor_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %idl = alloca i8, align 1
  %idh = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %idl) #4
  %0 = ptrtoint ptr %idl to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %idl, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %idh) #4
  %1 = ptrtoint ptr %idh to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %idh, align 1
  %call = tail call i32 @stk_camera_write_reg(ptr noundef %dev, i16 noundef zeroext 514, i8 noundef zeroext 30) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @stk_camera_write_reg(ptr noundef %dev, i16 noundef zeroext 515, i8 noundef zeroext 96) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call fastcc i32 @stk_sensor_outb(ptr noundef %dev, i8 noundef zeroext 18, i8 noundef zeroext -128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end, label %lor.lhs.false3.do.end_crit_edge

lor.lhs.false3.do.end_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false3.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  tail call void @msleep(i32 noundef 10) #4
  %call7 = call fastcc i32 @stk_sensor_inb(ptr noundef %dev, i8 noundef zeroext 28, ptr noundef nonnull %idh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %if.end.do.end15_crit_edge

if.end.do.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end15

lor.lhs.false9:                                   ; preds = %if.end
  %call10 = call fastcc i32 @stk_sensor_inb(ptr noundef %dev, i8 noundef zeroext 29, ptr noundef nonnull %idl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end18, label %lor.lhs.false9.do.end15_crit_edge

lor.lhs.false9.do.end15_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end15

do.end15:                                         ; preds = %lor.lhs.false9.do.end15_crit_edge, %if.end.do.end15_crit_edge
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #7
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false9
  %2 = ptrtoint ptr %idh to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %idh, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %3)
  %cmp.not = icmp eq i8 %3, 127
  br i1 %cmp.not, label %lor.lhs.false20, label %if.end18.do.end27_crit_edge

if.end18.do.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end27

lor.lhs.false20:                                  ; preds = %if.end18
  %4 = ptrtoint ptr %idl to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %idl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %5)
  %cmp22.not = icmp eq i8 %5, -94
  br i1 %cmp22.not, label %if.end30, label %lor.lhs.false20.do.end27_crit_edge

lor.lhs.false20.do.end27_crit_edge:               ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end27

do.end27:                                         ; preds = %lor.lhs.false20.do.end27_crit_edge, %if.end18.do.end27_crit_edge
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #7
  br label %cleanup

if.end30:                                         ; preds = %lor.lhs.false20
  %call31 = call fastcc i32 @stk_sensor_inb(ptr noundef %dev, i8 noundef zeroext 10, ptr noundef nonnull %idh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %lor.lhs.false33, label %if.end30.do.end39_crit_edge

if.end30.do.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end39

lor.lhs.false33:                                  ; preds = %if.end30
  %call34 = call fastcc i32 @stk_sensor_inb(ptr noundef %dev, i8 noundef zeroext 11, ptr noundef nonnull %idl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end42, label %lor.lhs.false33.do.end39_crit_edge

lor.lhs.false33.do.end39_crit_edge:               ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end39

do.end39:                                         ; preds = %lor.lhs.false33.do.end39_crit_edge, %if.end30.do.end39_crit_edge
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #7
  br label %cleanup

if.end42:                                         ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @stk_sensor_write_regvals(ptr noundef %dev, ptr noundef nonnull @ov_initvals)
  tail call void @msleep(i32 noundef 10) #4
  %6 = ptrtoint ptr %idh to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %idh, align 1
  %conv48 = zext i8 %7 to i32
  %8 = ptrtoint ptr %idl to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %idl, align 1
  %conv49 = zext i8 %9 to i32
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv48, i32 noundef %conv49, i32 noundef 96) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %do.end39, %do.end27, %do.end15, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end15 ], [ -19, %do.end27 ], [ -19, %do.end39 ], [ 0, %if.end42 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %idh) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %idl) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stk_camera_write_reg(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stk_sensor_write_regvals(ptr noundef %dev, ptr noundef readonly %rv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %rv, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.while.cond_crit_edge

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry.while.cond_crit_edge
  %rv.addr.0 = phi ptr [ %incdec.ptr, %while.body.while.cond_crit_edge ], [ %rv, %entry.while.cond_crit_edge ]
  %0 = ptrtoint ptr %rv.addr.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rv.addr.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %1)
  %cmp1.not = icmp eq i32 %1, 255
  br i1 %cmp1.not, label %lor.rhs, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  %val = getelementptr inbounds %struct.regval, ptr %rv.addr.0, i32 0, i32 1
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %3)
  %cmp2.not = icmp eq i32 %3, 255
  br i1 %cmp2.not, label %lor.rhs.cleanup_crit_edge, label %lor.rhs.while.body_crit_edge

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %while.cond.while.body_crit_edge
  %conv = trunc i32 %1 to i8
  %val4 = getelementptr inbounds %struct.regval, ptr %rv.addr.0, i32 0, i32 1
  %4 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val4, align 4
  %conv5 = trunc i32 %5 to i8
  %call = tail call fastcc i32 @stk_sensor_outb(ptr noundef %dev, i8 noundef zeroext %conv, i8 noundef zeroext %conv5)
  %cmp6.not = icmp eq i32 %call, 0
  %incdec.ptr = getelementptr %struct.regval, ptr %rv.addr.0, i32 1
  br i1 %cmp6.not, label %while.body.while.cond_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stk_sensor_configure(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %v.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vsettings = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %vsettings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vsettings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %2 = icmp ult i32 %1, 5
  br i1 %2, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %1) #7
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.stk_sensor_configure, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep83 = getelementptr inbounds [5 x i32], ptr @switch.table.stk_sensor_configure.27, i32 0, i32 %1
  %4 = ptrtoint ptr %switch.gep83 to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load84 = load i32, ptr %switch.gep83, align 4
  %palette = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 11, i32 1
  %5 = ptrtoint ptr %palette to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %palette, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %6, label %do.end20 [
    i32 1498831189, label %switch.lookup.sw.epilog23_crit_edge
    i32 1448695129, label %sw.bb9
    i32 1346520914, label %sw.bb11
    i32 1380075346, label %sw.bb13
    i32 825770306, label %sw.bb15
  ]

switch.lookup.sw.epilog23_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog23

sw.bb9:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog23

sw.bb11:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  %or12 = or i32 %switch.load84, 4
  br label %sw.epilog23

sw.bb13:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  %or14 = or i32 %switch.load84, 4
  br label %sw.epilog23

sw.bb15:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  %or16 = or i32 %switch.load84, 5
  br label %sw.epilog23

do.end20:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #7
  br label %cleanup

sw.epilog23:                                      ; preds = %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %switch.lookup.sw.epilog23_crit_edge
  %rv.0 = phi ptr [ @ov_fmt_bayer, %sw.bb15 ], [ @ov_fmt_rgbr, %sw.bb13 ], [ @ov_fmt_rgbp, %sw.bb11 ], [ @ov_fmt_yuyv, %sw.bb9 ], [ @ov_fmt_uyvy, %switch.lookup.sw.epilog23_crit_edge ]
  %com7.1 = phi i32 [ %or16, %sw.bb15 ], [ %or14, %sw.bb13 ], [ %or12, %sw.bb11 ], [ %switch.load84, %sw.bb9 ], [ %switch.load84, %switch.lookup.sw.epilog23_crit_edge ]
  %conv = trunc i32 %com7.1 to i8
  %call24 = tail call fastcc i32 @stk_sensor_outb(ptr noundef %dev, i8 noundef zeroext 18, i8 noundef zeroext %conv)
  tail call void @msleep(i32 noundef 50) #4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %sw.epilog23
  %rv.addr.0.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.cond.i_crit_edge ], [ %rv.0, %sw.epilog23 ]
  %8 = ptrtoint ptr %rv.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rv.addr.0.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %9)
  %cmp1.not.i = icmp eq i32 %9, 255
  br i1 %cmp1.not.i, label %lor.rhs.i, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

lor.rhs.i:                                        ; preds = %while.cond.i
  %val.i = getelementptr inbounds %struct.regval, ptr %rv.addr.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %11)
  %cmp2.not.i = icmp eq i32 %11, 255
  br i1 %cmp2.not.i, label %lor.rhs.i.stk_sensor_write_regvals.exit_crit_edge, label %lor.rhs.i.while.body.i_crit_edge

lor.rhs.i.while.body.i_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

lor.rhs.i.stk_sensor_write_regvals.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stk_sensor_write_regvals.exit

while.body.i:                                     ; preds = %lor.rhs.i.while.body.i_crit_edge, %while.cond.i.while.body.i_crit_edge
  %conv.i = trunc i32 %9 to i8
  %val4.i = getelementptr inbounds %struct.regval, ptr %rv.addr.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %val4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val4.i, align 4
  %conv5.i = trunc i32 %13 to i8
  %call.i = tail call fastcc i32 @stk_sensor_outb(ptr noundef %dev, i8 noundef zeroext %conv.i, i8 noundef zeroext %conv5.i) #4
  %cmp6.not.i = icmp eq i32 %call.i, 0
  %incdec.ptr.i = getelementptr %struct.regval, ptr %rv.addr.0.i, i32 1
  br i1 %cmp6.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.stk_sensor_write_regvals.exit_crit_edge

while.body.i.stk_sensor_write_regvals.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stk_sensor_write_regvals.exit

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

stk_sensor_write_regvals.exit:                    ; preds = %while.body.i.stk_sensor_write_regvals.exit_crit_edge, %lor.rhs.i.stk_sensor_write_regvals.exit_crit_edge
  %vflip = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 11, i32 3
  %14 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vflip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  %cond = select i1 %tobool.not, i8 0, i8 16
  %hflip = getelementptr inbounds %struct.stk_camera, ptr %dev, i32 0, i32 11, i32 2
  %16 = ptrtoint ptr %hflip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hflip, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool28.not = icmp eq i32 %17, 0
  %cond29 = select i1 %tobool28.not, i8 0, i8 32
  %or30 = or i8 %cond29, %cond
  %call32 = tail call fastcc i32 @stk_sensor_outb(ptr noundef %dev, i8 noundef zeroext 30, i8 noundef zeroext %or30)
  %18 = ptrtoint ptr %palette to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %palette, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 825770306, i32 %19)
  %cmp = icmp eq i32 %19, 825770306
  br i1 %cmp, label %land.lhs.true, label %stk_sensor_write_regvals.exit.if.end_crit_edge

stk_sensor_write_regvals.exit.if.end_crit_edge:   ; preds = %stk_sensor_write_regvals.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %stk_sensor_write_regvals.exit
  %20 = ptrtoint ptr %vflip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vflip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool38.not = icmp eq i32 %21, 0
  br i1 %tobool38.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call39 = tail call fastcc i32 @stk_sensor_outb(ptr noundef %dev, i8 noundef zeroext 58, i8 noundef zeroext 8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %stk_sensor_write_regvals.exit.if.end_crit_edge
  %shr = lshr i32 %switch.load, 8
  %conv40 = trunc i32 %shr to i8
  %call41 = tail call fastcc i32 @stk_sensor_outb(ptr noundef %dev, i8 noundef zeroext 46, i8 noundef zeroext %conv40)
  %conv42 = trunc i32 %switch.load to i8
  %call43 = tail call fastcc i32 @stk_sensor_outb(ptr noundef %dev, i8 noundef zeroext 45, i8 noundef zeroext %conv42)
  tail call void @msleep(i32 noundef 50) #4
  %22 = ptrtoint ptr %vsettings to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vsettings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cond61 = icmp eq i32 %23, 0
  br i1 %cond61, label %sw.bb46, label %if.end.sw.epilog57_crit_edge

if.end.sw.epilog57_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog57

sw.bb46:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v.i) #4
  %24 = ptrtoint ptr %v.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %v.i, align 1, !annotation !66
  %call.i82 = tail call fastcc i32 @stk_sensor_outb(ptr noundef %dev, i8 noundef zeroext 23, i8 noundef zeroext 37) #4
  %call4.i = tail call fastcc i32 @stk_sensor_outb(ptr noundef %dev, i8 noundef zeroext 24, i8 noundef zeroext -59) #4
  %add.i = add i32 %call4.i, %call.i82
  %call5.i = call fastcc i32 @stk_sensor_inb(ptr noundef %dev, i8 noundef zeroext 50, ptr noundef nonnull %v.i) #4
  %add6.i = add i32 %add.i, %call5.i
  %25 = ptrtoint ptr %v.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %v.i, align 1
  %27 = and i8 %26, -64
  %28 = or i8 %27, 54
  store i8 %28, ptr %v.i, align 1
  tail call void @msleep(i32 noundef 10) #4
  %call13.i = tail call fastcc i32 @stk_sensor_outb(ptr noundef %dev, i8 noundef zeroext 50, i8 noundef zeroext %28) #4
  %add14.i = add i32 %add6.i, %call13.i
  %call18.i = tail call fastcc i32 @stk_sensor_outb(ptr noundef %dev, i8 noundef zeroext 25, i8 noundef zeroext 0) #4
  %add19.i = add i32 %add14.i, %call18.i
  %call23.i = tail call fastcc i32 @stk_sensor_outb(ptr noundef %dev, i8 noundef zeroext 26, i8 noundef zeroext 60) #4
  %add24.i = add i32 %add19.i, %call23.i
  %call25.i = call fastcc i32 @stk_sensor_inb(ptr noundef %dev, i8 noundef zeroext 3, ptr noundef nonnull %v.i) #4
  %add26.i = add i32 %add24.i, %call25.i
  %29 = ptrtoint ptr %v.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %v.i, align 1
  %31 = and i8 %30, -64
  %32 = or i8 %31, 54
  tail call void @msleep(i32 noundef 10) #4
  %call35.i = tail call fastcc i32 @stk_sensor_outb(ptr noundef %dev, i8 noundef zeroext 3, i8 noundef zeroext %32) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v.i) #4
  %add36.i = sub i32 0, %call35.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add26.i, i32 %add36.i)
  %tobool48.not = icmp eq i32 %add26.i, %add36.i
  br i1 %tobool48.not, label %sw.bb46.sw.epilog57_crit_edge, label %do.end52

sw.bb46.sw.epilog57_crit_edge:                    ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog57

do.end52:                                         ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #6
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #7
  br label %sw.epilog57

sw.epilog57:                                      ; preds = %do.end52, %sw.bb46.sw.epilog57_crit_edge, %if.end.sw.epilog57_crit_edge
  tail call void @msleep(i32 noundef 10) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog57, %do.end20, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ -14, %do.end20 ], [ 0, %sw.epilog57 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stk_sensor_set_brightness(ptr noundef %dev, i32 noundef %br) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %br)
  %0 = icmp ugt i32 %br, 255
  br i1 %0, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %br)
  %cmp2 = icmp ult i32 %br, 6
  %1 = trunc i32 %br to i8
  %phi.cast = add i8 %1, -6
  %cond = select i1 %cmp2, i8 0, i8 %phi.cast
  %call = tail call fastcc i32 @stk_sensor_outb(ptr noundef %dev, i8 noundef zeroext 37, i8 noundef zeroext %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 249, i32 %br)
  %cmp4 = icmp ugt i32 %br, 249
  %phi.cast20 = add i8 %1, 6
  %cond9 = select i1 %cmp4, i8 -1, i8 %phi.cast20
  %call11 = tail call fastcc i32 @stk_sensor_outb(ptr noundef %dev, i8 noundef zeroext 36, i8 noundef zeroext %cond9)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stk_camera_read_reg(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !49, !51, !53, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/stkwebcam/stk-sensor.c", i32 363, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @stk_sensor_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @stk_sensor_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/stkwebcam/stk-sensor.c", i32 370, i32 3}
!8 = !{ptr @stk_sensor_init._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @stk_sensor_init._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/stkwebcam/stk-sensor.c", i32 374, i32 3}
!12 = !{ptr @stk_sensor_init._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @stk_sensor_init._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/stkwebcam/stk-sensor.c", i32 379, i32 3}
!16 = !{ptr @stk_sensor_init._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @stk_sensor_init._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/stkwebcam/stk-sensor.c", i32 384, i32 2}
!20 = !{ptr @stk_sensor_init._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @stk_sensor_init._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/stkwebcam/stk-sensor.c", i32 518, i32 3}
!24 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @stk_sensor_configure._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @stk_sensor_configure._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/stkwebcam/stk-sensor.c", i32 543, i32 3}
!29 = !{ptr @stk_sensor_configure._entry.17, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @stk_sensor_configure._entry_ptr.19, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/stkwebcam/stk-sensor.c", i32 563, i32 4}
!33 = !{ptr @stk_sensor_configure._entry.20, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @stk_sensor_configure._entry_ptr.22, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/stkwebcam/stk-sensor.c", i32 259, i32 4}
!37 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @stk_sensor_inb._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @stk_sensor_inb._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/stkwebcam/stk-sensor.c", i32 236, i32 4}
!42 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @stk_sensor_outb._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @stk_sensor_outb._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @ov_initvals, !46, !"ov_initvals", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/stkwebcam/stk-sensor.c", i32 300, i32 22}
!47 = !{ptr @ov_fmt_uyvy, !48, !"ov_fmt_uyvy", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/stkwebcam/stk-sensor.c", i32 390, i32 22}
!49 = !{ptr @ov_fmt_yuyv, !50, !"ov_fmt_yuyv", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/stkwebcam/stk-sensor.c", i32 403, i32 22}
!51 = !{ptr @ov_fmt_rgbp, !52, !"ov_fmt_rgbp", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/stkwebcam/stk-sensor.c", i32 434, i32 22}
!53 = !{ptr @ov_fmt_rgbr, !54, !"ov_fmt_rgbr", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/stkwebcam/stk-sensor.c", i32 417, i32 22}
!55 = !{ptr @ov_fmt_bayer, !56, !"ov_fmt_bayer", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/stkwebcam/stk-sensor.c", i32 451, i32 22}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"auto-init"}
