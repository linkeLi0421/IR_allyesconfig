; ModuleID = '/llk/IR_all_yes/drivers/media/usb/go7007/go7007-fw.c_pt.bc'
source_filename = "../drivers/media/usb/go7007/go7007-fw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.go7007 = type { ptr, [32 x i8], ptr, i32, i32, i32, [64 x i8], %struct.video_device, ptr, i32, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.mutex, %struct.mutex, i32, ptr, ptr, [16 x i8], i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, [4 x %struct.anon.97], [1624 x i8], [216 x i8], i32, %struct.mutex, %struct.vb2_queue, i32, i32, i16, i32, i32, %struct.list_head, %struct.wait_queue_head, ptr, ptr, ptr, i32, %struct.i2c_adapter, ptr, ptr, i32, %struct.wait_queue_head, i16, i16 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.83 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.83 = type { %struct.anon.84 }
%struct.anon.84 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.80], %struct.media_entity_enum, i32 }
%struct.anon.80 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.97 = type { i8, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.firmware = type { i32, ptr, ptr }
%struct.go7007_board_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x %struct.go_i2c], i32, [4 x %struct.anon.78], i32, i32, [3 x %struct.anon.79] }
%struct.go_i2c = type { ptr, i8, i32, i32 }
%struct.anon.78 = type { i32, i32, ptr }
%struct.anon.79 = type { i32, ptr }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"go7007/go7007tv.bin\00", [44 x i8] zeroinitializer }, align 32
@go7007_construct_fw_image._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1571, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unable to load firmware from file \22%s\22\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"go7007_construct_fw_image\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/usb/go7007/go7007-fw.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@go7007_construct_fw_image._entry_ptr = internal global ptr @go7007_construct_fw_image._entry, section ".printk_index", align 4
@go7007_construct_fw_image._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1586, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"firmware file \22%s\22 appears to be corrupted\0A\00", [52 x i8] zeroinitializer }, align 32
@go7007_construct_fw_image._entry_ptr.8 = internal global ptr @go7007_construct_fw_image._entry.6, section ".printk_index", align 4
@go7007_construct_fw_image._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1595, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"insufficient memory for firmware construction\0A\00", [49 x i8] zeroinitializer }, align 32
@go7007_construct_fw_image._entry_ptr.11 = internal global ptr @go7007_construct_fw_image._entry.9, section ".printk_index", align 4
@go7007_construct_fw_image._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1602, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@go7007_construct_fw_image._entry_ptr.13 = internal global ptr @go7007_construct_fw_image._entry.12, section ".printk_index", align 4
@__UNIQUE_ID_firmware298 = internal constant [36 x i8] c"go7007.firmware=go7007/go7007tv.bin\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@do_special._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 1539, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"firmware file contains unsupported feature %04x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"do_special\00", [21 x i8] zeroinitializer }, align 32
@do_special._entry_ptr = internal global ptr @do_special._entry, section ".printk_index", align 4
@default_intra_quant_table = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\08\10\13\16\1A\1B\1D\22\10\10\16\18\1B\1D\22%\13\16\1A\1B\1D\22\22&\16\16\1A\1B\1D\22%(\16\1A\1B\1D #(0\1A\1B\1D #(0:\1A\1B\1D\22&.8E\1B\1D#&.8ES", [32 x i8] zeroinitializer }, align 32
@zz = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 0, i32 1, i32 8, i32 16, i32 9, i32 2, i32 3, i32 10, i32 17, i32 24, i32 32, i32 25, i32 18, i32 11, i32 4, i32 5, i32 12, i32 19, i32 26, i32 33, i32 40, i32 48, i32 41, i32 34, i32 27, i32 20, i32 13, i32 6, i32 7, i32 14, i32 21, i32 28, i32 35, i32 42, i32 49, i32 56, i32 57, i32 50, i32 43, i32 36, i32 29, i32 22, i32 15, i32 23, i32 30, i32 37, i32 44, i32 51, i32 58, i32 59, i32 52, i32 45, i32 38, i32 31, i32 39, i32 46, i32 53, i32 60, i32 61, i32 54, i32 47, i32 55, i32 62, i32 63], [64 x i8] zeroinitializer }, align 32
@bits_dc_luminance = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@val_dc_luminance = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B", [20 x i8] zeroinitializer }, align 32
@bits_dc_chrominance = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\00\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@val_dc_chrominance = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B", [20 x i8] zeroinitializer }, align 32
@bits_ac_luminance = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\00\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}", [47 x i8] zeroinitializer }, align 32
@val_ac_luminance = internal constant { [162 x i8], [62 x i8] } { [162 x i8] c"\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA", [62 x i8] zeroinitializer }, align 32
@bits_ac_chrominance = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\00\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w", [47 x i8] zeroinitializer }, align 32
@val_ac_chrominance = internal constant { [162 x i8], [62 x i8] } { [162 x i8] c"\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA", [62 x i8] zeroinitializer }, align 32
@addrinctab = internal constant { [33 x [2 x i32]], [88 x i8] } { [33 x [2 x i32]] [[2 x i32] [i32 1, i32 1], [2 x i32] [i32 3, i32 3], [2 x i32] [i32 2, i32 3], [2 x i32] [i32 3, i32 4], [2 x i32] [i32 2, i32 4], [2 x i32] [i32 3, i32 5], [2 x i32] [i32 2, i32 5], [2 x i32] [i32 7, i32 7], [2 x i32] [i32 6, i32 7], [2 x i32] [i32 11, i32 8], [2 x i32] [i32 10, i32 8], [2 x i32] [i32 9, i32 8], [2 x i32] [i32 8, i32 8], [2 x i32] [i32 7, i32 8], [2 x i32] [i32 6, i32 8], [2 x i32] [i32 23, i32 10], [2 x i32] [i32 22, i32 10], [2 x i32] [i32 21, i32 10], [2 x i32] [i32 20, i32 10], [2 x i32] [i32 19, i32 10], [2 x i32] [i32 18, i32 10], [2 x i32] [i32 35, i32 11], [2 x i32] [i32 34, i32 11], [2 x i32] [i32 33, i32 11], [2 x i32] [i32 32, i32 11], [2 x i32] [i32 31, i32 11], [2 x i32] [i32 30, i32 11], [2 x i32] [i32 29, i32 11], [2 x i32] [i32 28, i32 11], [2 x i32] [i32 27, i32 11], [2 x i32] [i32 26, i32 11], [2 x i32] [i32 25, i32 11], [2 x i32] [i32 24, i32 11]], [88 x i8] zeroinitializer }, align 32
@LAMBDA_table = internal constant { [4 x [101 x i16]], [216 x i8] } { [4 x [101 x i16]] [[101 x i16] [i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 17, i16 18, i16 18, i16 18, i16 19, i16 19, i16 19, i16 20, i16 20, i16 20, i16 21, i16 21, i16 22, i16 22, i16 22, i16 23, i16 23, i16 24, i16 24, i16 25, i16 25, i16 25, i16 26, i16 26, i16 27, i16 27, i16 28, i16 28, i16 29, i16 29, i16 30, i16 31, i16 31, i16 32, i16 32, i16 33, i16 33, i16 34, i16 35, i16 35, i16 36, i16 37, i16 37, i16 38, i16 39, i16 39, i16 40, i16 41, i16 42, i16 42, i16 43, i16 44, i16 45, i16 46, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 67, i16 68, i16 69, i16 70, i16 72, i16 73, i16 74, i16 76, i16 77, i16 78, i16 80, i16 81, i16 83, i16 84, i16 86, i16 87, i16 89, i16 90, i16 92, i16 94, i16 96], [101 x i16] [i16 20, i16 20, i16 20, i16 21, i16 21, i16 21, i16 22, i16 22, i16 23, i16 23, i16 23, i16 24, i16 24, i16 25, i16 25, i16 26, i16 26, i16 27, i16 27, i16 28, i16 28, i16 29, i16 29, i16 30, i16 30, i16 31, i16 31, i16 32, i16 33, i16 33, i16 34, i16 34, i16 35, i16 36, i16 36, i16 37, i16 38, i16 38, i16 39, i16 40, i16 40, i16 41, i16 42, i16 43, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 64, i16 65, i16 66, i16 67, i16 68, i16 70, i16 71, i16 72, i16 73, i16 75, i16 76, i16 78, i16 79, i16 80, i16 82, i16 83, i16 85, i16 86, i16 88, i16 90, i16 91, i16 93, i16 95, i16 96, i16 98, i16 100, i16 102, i16 103, i16 105, i16 107, i16 109, i16 111, i16 113, i16 115, i16 117, i16 120], [101 x i16] [i16 24, i16 24, i16 24, i16 25, i16 25, i16 26, i16 26, i16 27, i16 27, i16 28, i16 28, i16 29, i16 29, i16 30, i16 30, i16 31, i16 31, i16 32, i16 33, i16 33, i16 34, i16 34, i16 35, i16 36, i16 36, i16 37, i16 38, i16 38, i16 39, i16 40, i16 41, i16 41, i16 42, i16 43, i16 44, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 69, i16 70, i16 71, i16 72, i16 74, i16 75, i16 76, i16 78, i16 79, i16 81, i16 82, i16 84, i16 85, i16 87, i16 88, i16 90, i16 92, i16 93, i16 95, i16 97, i16 98, i16 100, i16 102, i16 104, i16 106, i16 108, i16 110, i16 112, i16 114, i16 116, i16 118, i16 120, i16 122, i16 124, i16 127, i16 129, i16 131, i16 134, i16 136, i16 138, i16 141, i16 144], [101 x i16] [i16 32, i16 32, i16 33, i16 33, i16 34, i16 34, i16 35, i16 36, i16 36, i16 37, i16 38, i16 38, i16 39, i16 40, i16 41, i16 41, i16 42, i16 43, i16 44, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 69, i16 70, i16 71, i16 72, i16 74, i16 75, i16 76, i16 78, i16 79, i16 81, i16 82, i16 84, i16 85, i16 87, i16 88, i16 90, i16 92, i16 93, i16 95, i16 97, i16 98, i16 100, i16 102, i16 104, i16 106, i16 108, i16 110, i16 112, i16 114, i16 116, i16 118, i16 120, i16 122, i16 124, i16 127, i16 129, i16 131, i16 134, i16 136, i16 139, i16 141, i16 144, i16 146, i16 149, i16 152, i16 154, i16 157, i16 160, i16 163, i16 166, i16 169, i16 172, i16 175, i16 178, i16 181, i16 185, i16 188, i16 192]], [216 x i8] zeroinitializer }, align 32
@switch.table.mpeg1_frame_header = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 2, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.mpeg1_frame_header.16 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 4, i32 3, i32 2], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 826757197, i64 843534413, i64 877088845, i64 1196444237]
@__sancov_gen_cov_switch_values.17 = internal global [10 x i64] [i64 8, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 826757197, i64 843534413, i64 877088845, i64 1196444237]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 826757197, i64 843534413, i64 877088845]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 826757197, i64 843534413, i64 877088845]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 826757197, i64 843534413, i64 877088845]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 826757197, i64 843534413, i64 877088845, i64 1196444237]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [7 x i64] [i64 5, i64 32, i64 24000, i64 24024, i64 25025, i64 30000, i64 30030]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1568, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1569, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1584, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1594, i32 6 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1601, i32 6 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1538, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [26 x i8] c"default_intra_quant_table\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 182, i32 17 }
@___asan_gen_.75 = private unnamed_addr constant [3 x i8] c"zz\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 270, i32 18 }
@___asan_gen_.78 = private unnamed_addr constant [18 x i8] c"bits_dc_luminance\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 193, i32 17 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"val_dc_luminance\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 197, i32 17 }
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c"bits_dc_chrominance\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 201, i32 17 }
@___asan_gen_.87 = private unnamed_addr constant [19 x i8] c"val_dc_chrominance\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 205, i32 17 }
@___asan_gen_.90 = private unnamed_addr constant [18 x i8] c"bits_ac_luminance\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 209, i32 17 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"val_ac_luminance\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 213, i32 17 }
@___asan_gen_.96 = private unnamed_addr constant [20 x i8] c"bits_ac_chrominance\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 237, i32 17 }
@___asan_gen_.99 = private unnamed_addr constant [19 x i8] c"val_ac_chrominance\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 241, i32 17 }
@___asan_gen_.102 = private unnamed_addr constant [11 x i8] c"addrinctab\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 168, i32 18 }
@___asan_gen_.105 = private unnamed_addr constant [13 x i8] c"LAMBDA_table\00", align 1
@___asan_gen_.106 = private constant [40 x i8] c"../drivers/media/usb/go7007/go7007-fw.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 104, i32 18 }
@___asan_gen_.108 = private unnamed_addr constant [32 x i8] c"switch.table.mpeg1_frame_header\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [35 x i8] c"switch.table.mpeg1_frame_header.16\00", align 1
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_firmware298, ptr @do_special._entry, ptr @do_special._entry_ptr, ptr @go7007_construct_fw_image._entry, ptr @go7007_construct_fw_image._entry.12, ptr @go7007_construct_fw_image._entry.6, ptr @go7007_construct_fw_image._entry.9, ptr @go7007_construct_fw_image._entry_ptr, ptr @go7007_construct_fw_image._entry_ptr.11, ptr @go7007_construct_fw_image._entry_ptr.13, ptr @go7007_construct_fw_image._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.14, ptr @.str.15, ptr @default_intra_quant_table, ptr @zz, ptr @bits_dc_luminance, ptr @val_dc_luminance, ptr @bits_dc_chrominance, ptr @val_dc_chrominance, ptr @bits_ac_luminance, ptr @val_ac_luminance, ptr @bits_ac_chrominance, ptr @val_ac_chrominance, ptr @addrinctab, ptr @LAMBDA_table, ptr @switch.table.mpeg1_frame_header, ptr @switch.table.mpeg1_frame_header.16], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_construct_fw_image._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_construct_fw_image._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_construct_fw_image._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_construct_fw_image._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_special._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_intra_quant_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zz to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bits_dc_luminance to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @val_dc_luminance to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bits_dc_chrominance to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @val_dc_chrominance to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bits_ac_luminance to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @val_ac_luminance to i32), i32 162, i32 224, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bits_ac_chrominance to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @val_ac_chrominance to i32), i32 162, i32 224, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addrinctab to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LAMBDA_table to i32), i32 808, i32 1024, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mpeg1_frame_header to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mpeg1_frame_header.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @go7007_construct_fw_image(ptr noundef %go, ptr nocapture noundef writeonly %fw, ptr nocapture noundef writeonly %fwlen) local_unnamed_addr #0 align 64 {
entry:
  %fw_entry = alloca ptr, align 4
  %framelen = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry) #10
  %0 = ptrtoint ptr %fw_entry to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_entry, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %framelen) #10
  %1 = call ptr @memset(ptr %framelen, i32 0, i32 32)
  %format = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 38
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %format, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1196444237, label %entry.sw.epilog_crit_edge
    i32 826757197, label %sw.bb1
    i32 843534413, label %sw.bb2
    i32 877088845, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %mode_flag.0 = phi i32 [ 8, %sw.bb3 ], [ 4, %sw.bb2 ], [ 2, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ]
  %5 = ptrtoint ptr %go to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %go, align 8
  %call = call i32 @request_firmware(ptr noundef nonnull %fw_entry, ptr noundef nonnull @.str, ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %go to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %go, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str) #13
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %call1.i.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 131072, i32 noundef 3520, i32 noundef 5) #14
  %cmp = icmp eq ptr %call1.i.i.i.i, null
  br i1 %cmp, label %if.end.fw_failed_crit_edge, label %if.end7

if.end.fw_failed_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fw_failed

if.end7:                                          ; preds = %if.end
  %9 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw_entry, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp899 = icmp ugt i32 %12, 3
  br i1 %cmp899, label %while.body.preheader, label %if.end7.while.end_crit_edge

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.preheader:                             ; preds = %if.end7
  %div95 = lshr i32 %12, 1
  %data = getelementptr inbounds %struct.firmware, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  br label %while.body

while.body:                                       ; preds = %if.end49.while.body_crit_edge, %while.body.preheader
  %srclen.0103 = phi i32 [ %sub51, %if.end49.while.body_crit_edge ], [ %div95, %while.body.preheader ]
  %i.0102 = phi i32 [ %i.1, %if.end49.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %src.0100 = phi ptr [ %add.ptr, %if.end49.while.body_crit_edge ], [ %14, %while.body.preheader ]
  %15 = ptrtoint ptr %src.0100 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %src.0100, align 2
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %conv = zext i16 %17 to i32
  %arrayidx9 = getelementptr i16, ptr %src.0100, i32 1
  %18 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx9, align 2
  %20 = call i16 @llvm.bswap.i16(i16 %19)
  %conv10 = zext i16 %20 to i32
  %add = add nuw nsw i32 %conv10, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %srclen.0103, i32 %add)
  %cmp11 = icmp ult i32 %srclen.0103, %add
  br i1 %cmp11, label %do.end16, label %if.end18

do.end16:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %go to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %go, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str) #13
  br label %fw_failed

if.end18:                                         ; preds = %while.body
  %and = and i32 %mode_flag.0, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end18.if.end49_crit_edge, label %if.then20

if.end18.if.end49_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then20:                                        ; preds = %if.end18
  %and21 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.then20
  %arrayidx24 = getelementptr i16, ptr %src.0100, i32 2
  %23 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx24, align 2
  %25 = call i16 @llvm.bswap.i16(i16 %24)
  %arrayidx25 = getelementptr i16, ptr %call1.i.i.i.i, i32 %i.0102
  %sub = sub i32 65536, %i.0102
  %call26 = call fastcc i32 @do_special(ptr noundef %go, i16 noundef zeroext %25, ptr noundef %arrayidx25, i32 noundef %sub, ptr noundef nonnull %framelen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end32, label %if.end34

do.end32:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %go to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %go, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.10) #13
  br label %fw_failed

if.end34:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %add35 = add i32 %call26, %i.0102
  br label %if.end49

if.else:                                          ; preds = %if.then20
  %sub36 = sub i32 65536, %i.0102
  call void @__sanitizer_cov_trace_cmp4(i32 %sub36, i32 %conv10)
  %cmp37 = icmp slt i32 %sub36, %conv10
  br i1 %cmp37, label %do.end42, label %if.end44

do.end42:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %go to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %go, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.10) #13
  br label %fw_failed

if.end44:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx45 = getelementptr i16, ptr %call1.i.i.i.i, i32 %i.0102
  %arrayidx46 = getelementptr i16, ptr %src.0100, i32 2
  %mul = shl nuw nsw i32 %conv10, 1
  %30 = call ptr @memcpy(ptr %arrayidx45, ptr %arrayidx46, i32 %mul)
  %add47 = add i32 %i.0102, %conv10
  br label %if.end49

if.end49:                                         ; preds = %if.end44, %if.end34, %if.end18.if.end49_crit_edge
  %i.1 = phi i32 [ %add35, %if.end34 ], [ %add47, %if.end44 ], [ %i.0102, %if.end18.if.end49_crit_edge ]
  %sub51 = sub nsw i32 %srclen.0103, %add
  %add.ptr = getelementptr i16, ptr %src.0100, i32 %add
  %cmp8 = icmp sgt i32 %sub51, 1
  br i1 %cmp8, label %if.end49.while.body_crit_edge, label %if.end49.while.end_crit_edge

if.end49.while.end_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end49.while.body_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %if.end49.while.end_crit_edge, %if.end7.while.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end7.while.end_crit_edge ], [ %i.1, %if.end49.while.end_crit_edge ]
  %31 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fw_entry, align 4
  call void @release_firmware(ptr noundef %32) #10
  %33 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call1.i.i.i.i, ptr %fw, align 4
  %mul53 = shl i32 %i.0.lcssa, 1
  %34 = ptrtoint ptr %fwlen to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %mul53, ptr %fwlen, align 4
  br label %cleanup

fw_failed:                                        ; preds = %do.end42, %do.end32, %do.end16, %if.end.fw_failed_crit_edge
  call void @kfree(ptr noundef %call1.i.i.i.i) #10
  %35 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fw_entry, align 4
  call void @release_firmware(ptr noundef %36) #10
  br label %cleanup

cleanup:                                          ; preds = %fw_failed, %while.end, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %fw_failed ], [ 0, %while.end ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %framelen) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_special(ptr noundef %go, i16 noundef zeroext %type, ptr noundef writeonly %code, i32 noundef %space, ptr noundef %framelen) unnamed_addr #5 align 64 {
entry:
  %pack.i319 = alloca [32 x i16], align 2
  %thresholds.i = alloca [32 x i16], align 2
  %pack.i278 = alloca [64 x i16], align 2
  %pack.i233 = alloca [32 x i16], align 2
  %pack.i194 = alloca [32 x i16], align 2
  %pack.i118 = alloca [160 x i16], align 2
  %pack.i = alloca [192 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %type to i32
  %0 = zext i16 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.17)
  switch i16 %type, label %entry.do.end_crit_edge [
    i16 0, label %sw.bb
    i16 1, label %sw.bb6
    i16 2, label %sw.bb8
    i16 3, label %sw.bb10
    i16 4, label %sw.bb17
    i16 5, label %sw.bb19
    i16 6, label %sw.bb21
    i16 7, label %sw.bb23
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

sw.bb:                                            ; preds = %entry
  %format = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 38
  %1 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %format, align 8
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %2, label %sw.bb.do.end_crit_edge [
    i32 1196444237, label %sw.bb1
    i32 826757197, label %sw.bb.sw.bb2_crit_edge
    i32 843534413, label %sw.bb.sw.bb2_crit_edge369
    i32 877088845, label %sw.bb4
  ]

sw.bb.sw.bb2_crit_edge369:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

sw.bb.sw.bb2_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

sw.bb.do.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

sw.bb1:                                           ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 4096) #15
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %sw.bb1.return_crit_edge, label %sw.bb1.for.body.i_crit_edge

sw.bb1.for.body.i_crit_edge:                      ; preds = %sw.bb1
  br label %for.body.i

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb1.for.body.i_crit_edge
  %i.0111.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %sw.bb1.for.body.i_crit_edge ]
  %size.0110.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.bb1.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %call7.i.i.i, i32 %size.0110.i
  %call2.i = tail call fastcc i32 @mjpeg_frame_header(ptr noundef %go, ptr noundef %add.ptr.i, i32 noundef %i.0111.i) #10
  %add.i = add nuw nsw i32 %size.0110.i, 80
  %inc.i = add nuw nsw i32 %i.0111.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %add.ptr3.i = getelementptr i8, ptr %call7.i.i.i, i32 2480
  %call4.i = tail call fastcc i32 @mjpeg_frame_header(ptr noundef %go, ptr noundef %add.ptr3.i, i32 noundef 1) #10
  %add.ptr7.i = getelementptr i8, ptr %call7.i.i.i, i32 2560
  %sub.i = add i32 %call4.i, -80
  %5 = call ptr @memmove(ptr %add.ptr3.i, ptr %add.ptr7.i, i32 %sub.i)
  %add9.i = add i32 %call4.i, 2400
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add9.i)
  %cmp11112.i = icmp sgt i32 %add9.i, 0
  br i1 %cmp11112.i, label %for.end.i.for.body12.i_crit_edge, label %for.end.i.done.i_crit_edge

for.end.i.done.i_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.i

for.end.i.for.body12.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body12.i

for.body12.i:                                     ; preds = %if.end49.i.for.body12.i_crit_edge, %for.end.i.for.body12.i_crit_edge
  %off.0116.i = phi i32 [ %add54.i, %if.end49.i.for.body12.i_crit_edge ], [ 0, %for.end.i.for.body12.i_crit_edge ]
  %i.1115.i = phi i32 [ %add57.i, %if.end49.i.for.body12.i_crit_edge ], [ 0, %for.end.i.for.body12.i_crit_edge ]
  %addr.0114.i = phi i32 [ %addr.1.i, %if.end49.i.for.body12.i_crit_edge ], [ 25, %for.end.i.for.body12.i_crit_edge ]
  %mem.0113.i = phi i32 [ %mem.1.i, %if.end49.i.for.body12.i_crit_edge ], [ 15872, %for.end.i.for.body12.i_crit_edge ]
  %sub13.i = sub nsw i32 %space, %off.0116.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub13.i)
  %cmp14.i = icmp slt i32 %sub13.i, 32
  br i1 %cmp14.i, label %for.body12.i.done.i_crit_edge, label %if.end16.i

for.body12.i.done.i_crit_edge:                    ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.i

if.end16.i:                                       ; preds = %for.body12.i
  %conv.i = and i32 %mem.0113.i, 65535
  %6 = trunc i32 %mem.0113.i to i16
  %conv17.i = or i16 %6, -32768
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv17.i) #10
  %add18.i = or i32 %off.0116.i, 1
  %arrayidx.i = getelementptr i16, ptr %code, i32 %add18.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16356, i32 %conv.i)
  %cmp21.i = icmp ugt i32 %conv.i, 16356
  %sub25.i = sub nsw i32 16384, %conv.i
  %spec.select.i = select i1 %cmp21.i, i32 %sub25.i, i32 28
  %mul.i = shl nsw i32 %spec.select.i, 1
  %add27.i = add i32 %mul.i, %i.1115.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add27.i, i32 %add9.i)
  %cmp28.i = icmp sgt i32 %add27.i, %add9.i
  %sub31.i = sub i32 %add9.i, %i.1115.i
  %div.i = sdiv i32 %sub31.i, 2
  %chunk.1.i = select i1 %cmp28.i, i32 %div.i, i32 %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %chunk.1.i)
  %cmp33.i = icmp slt i32 %chunk.1.i, 28
  br i1 %cmp33.i, label %if.then35.i, label %if.else.i

if.then35.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = trunc i32 %chunk.1.i to i16
  %conv37.i = or i16 %9, 16384
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv37.i) #10
  %inc39.i = add i32 %addr.0114.i, 1
  %conv40.i = trunc i32 %addr.0114.i to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv40.i) #10
  br label %if.end49.i

if.else.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %add20.i = add nuw nsw i32 %conv.i, 28
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.else.i, %if.then35.i
  %.sink = phi i16 [ %10, %if.then35.i ], [ 7184, %if.else.i ]
  %.sink.i = phi i16 [ %11, %if.then35.i ], [ 0, %if.else.i ]
  %mem.1.i = phi i32 [ 15872, %if.then35.i ], [ %add20.i, %if.else.i ]
  %addr.1.i = phi i32 [ %inc39.i, %if.then35.i ], [ %addr.0114.i, %if.else.i ]
  %12 = getelementptr i16, ptr %code, i32 %off.0116.i
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %.sink, ptr %12, align 2
  %add44.i = or i32 %off.0116.i, 31
  %arrayidx45.i = getelementptr i16, ptr %code, i32 %add44.i
  %14 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %.sink.i, ptr %arrayidx45.i, align 2
  %add50.i = or i32 %off.0116.i, 2
  %arrayidx51.i = getelementptr i16, ptr %code, i32 %add50.i
  %add.ptr52.i = getelementptr i8, ptr %call7.i.i.i, i32 %i.1115.i
  %mul53.i = shl nsw i32 %chunk.1.i, 1
  %15 = call ptr @memcpy(ptr %arrayidx51.i, ptr %add.ptr52.i, i32 %mul53.i)
  %add54.i = add nuw i32 %off.0116.i, 32
  %add57.i = add i32 %mul53.i, %i.1115.i
  %cmp11.i = icmp sgt i32 %add9.i, %add57.i
  br i1 %cmp11.i, label %if.end49.i.for.body12.i_crit_edge, label %if.end49.i.done.i_crit_edge

if.end49.i.done.i_crit_edge:                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.i

if.end49.i.for.body12.i_crit_edge:                ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12.i

done.i:                                           ; preds = %if.end49.i.done.i_crit_edge, %for.body12.i.done.i_crit_edge, %for.end.i.done.i_crit_edge
  %off.1.i = phi i32 [ 0, %for.end.i.done.i_crit_edge ], [ %add54.i, %if.end49.i.done.i_crit_edge ], [ -1, %for.body12.i.done.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %return

sw.bb2:                                           ; preds = %sw.bb.sw.bb2_crit_edge, %sw.bb.sw.bb2_crit_edge369
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i63 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 5120) #15
  %cmp.i64 = icmp eq ptr %call7.i.i.i63, null
  br i1 %cmp.i64, label %sw.bb2.return_crit_edge, label %if.end.i

sw.bb2.return_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i:                                         ; preds = %sw.bb2
  %call1.i = tail call fastcc i32 @mpeg1_frame_header(ptr noundef %go, ptr noundef nonnull %call7.i.i.i63, i32 noundef 1, i32 noundef 0) #10
  %17 = ptrtoint ptr %framelen to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call1.i, ptr %framelen, align 4
  %interlace_coding.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 44
  %18 = ptrtoint ptr %interlace_coding.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %interlace_coding.i, align 8
  %19 = and i8 %bf.load.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then2.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %div.i65 = sdiv i32 %call1.i, 8
  %add.ptr.i66 = getelementptr i8, ptr %call7.i.i.i63, i32 %div.i65
  %call4.i67 = tail call fastcc i32 @mpeg1_frame_header(ptr noundef %go, ptr noundef %add.ptr.i66, i32 noundef 2, i32 noundef 0) #10
  %20 = ptrtoint ptr %framelen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %framelen, align 4
  %add.i68 = add i32 %21, %call4.i67
  store i32 %add.i68, ptr %framelen, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then2.i, %if.end.i.if.end6.i_crit_edge
  %22 = ptrtoint ptr %framelen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %framelen, align 4
  %conv.i69 = trunc i32 %23 to i8
  %24 = ptrtoint ptr %call7.i.i.i63 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv.i69, ptr %call7.i.i.i63, align 8
  %25 = lshr i32 %23, 8
  %conv10.i = trunc i32 %25 to i8
  %arrayidx11.i = getelementptr i8, ptr %call7.i.i.i63, i32 1
  %26 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv10.i, ptr %arrayidx11.i, align 1
  %add.ptr12.i = getelementptr i8, ptr %call7.i.i.i63, i32 368
  %call13.i = tail call fastcc i32 @mpeg1_frame_header(ptr noundef %go, ptr noundef %add.ptr12.i, i32 noundef 1, i32 noundef 1) #10
  %arrayidx14.i = getelementptr i32, ptr %framelen, i32 1
  %27 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call13.i, ptr %arrayidx14.i, align 4
  %28 = ptrtoint ptr %interlace_coding.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load16.i = load i8, ptr %interlace_coding.i, align 8
  %29 = and i8 %bf.load16.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool20.not.i = icmp eq i8 %29, 0
  br i1 %tobool20.not.i, label %if.end6.i.if.end29.i_crit_edge, label %if.then21.i

if.end6.i.if.end29.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then21.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %div24.i = sdiv i32 %call13.i, 8
  %add.ptr25.i = getelementptr i8, ptr %add.ptr12.i, i32 %div24.i
  %call26.i = tail call fastcc i32 @mpeg1_frame_header(ptr noundef %go, ptr noundef %add.ptr25.i, i32 noundef 2, i32 noundef 1) #10
  %30 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx14.i, align 4
  %add28.i = add i32 %31, %call26.i
  store i32 %add28.i, ptr %arrayidx14.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then21.i, %if.end6.i.if.end29.i_crit_edge
  %32 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx14.i, align 4
  %conv32.i = trunc i32 %33 to i8
  %34 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv32.i, ptr %add.ptr12.i, align 8
  %35 = lshr i32 %33, 8
  %conv36.i = trunc i32 %35 to i8
  %arrayidx38.i70 = getelementptr i8, ptr %call7.i.i.i63, i32 369
  %36 = ptrtoint ptr %arrayidx38.i70 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv36.i, ptr %arrayidx38.i70, align 1
  %add.ptr40.i = getelementptr i8, ptr %call7.i.i.i63, i32 2000
  %call41.i = tail call fastcc i32 @mpeg1_frame_header(ptr noundef %go, ptr noundef %add.ptr40.i, i32 noundef 1, i32 noundef 2) #10
  %arrayidx42.i = getelementptr i32, ptr %framelen, i32 2
  %37 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call41.i, ptr %arrayidx42.i, align 4
  %38 = ptrtoint ptr %interlace_coding.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load44.i = load i8, ptr %interlace_coding.i, align 8
  %39 = and i8 %bf.load44.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool48.not.i = icmp eq i8 %39, 0
  br i1 %tobool48.not.i, label %if.end29.i.if.end57.i_crit_edge, label %if.then49.i

if.end29.i.if.end57.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.i

if.then49.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %div52.i = sdiv i32 %call41.i, 8
  %add.ptr53.i = getelementptr i8, ptr %add.ptr40.i, i32 %div52.i
  %call54.i = tail call fastcc i32 @mpeg1_frame_header(ptr noundef %go, ptr noundef %add.ptr53.i, i32 noundef 2, i32 noundef 2) #10
  %40 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx42.i, align 4
  %add56.i = add i32 %41, %call54.i
  store i32 %add56.i, ptr %arrayidx42.i, align 4
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then49.i, %if.end29.i.if.end57.i_crit_edge
  %42 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx42.i, align 4
  %conv60.i = trunc i32 %43 to i8
  %44 = ptrtoint ptr %add.ptr40.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv60.i, ptr %add.ptr40.i, align 8
  %45 = lshr i32 %43, 8
  %conv64.i = trunc i32 %45 to i8
  %arrayidx66.i = getelementptr i8, ptr %call7.i.i.i63, i32 2001
  %46 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv64.i, ptr %arrayidx66.i, align 1
  %add.ptr68.i = getelementptr i8, ptr %call7.i.i.i63, i32 3432
  %call69.i = tail call fastcc i32 @mpeg1_frame_header(ptr noundef %go, ptr noundef %add.ptr68.i, i32 noundef 1, i32 noundef 3) #10
  %arrayidx70.i = getelementptr i32, ptr %framelen, i32 3
  %47 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call69.i, ptr %arrayidx70.i, align 4
  %48 = ptrtoint ptr %interlace_coding.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load72.i = load i8, ptr %interlace_coding.i, align 8
  %49 = and i8 %bf.load72.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool76.not.i = icmp eq i8 %49, 0
  br i1 %tobool76.not.i, label %if.end57.i.if.end85.i_crit_edge, label %if.then77.i

if.end57.i.if.end85.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85.i

if.then77.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  %div80.i = sdiv i32 %call69.i, 8
  %add.ptr81.i = getelementptr i8, ptr %add.ptr68.i, i32 %div80.i
  %call82.i = tail call fastcc i32 @mpeg1_frame_header(ptr noundef %go, ptr noundef %add.ptr81.i, i32 noundef 2, i32 noundef 3) #10
  %50 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx70.i, align 4
  %add84.i = add i32 %51, %call82.i
  store i32 %add84.i, ptr %arrayidx70.i, align 4
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then77.i, %if.end57.i.if.end85.i_crit_edge
  %52 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx70.i, align 4
  %conv88.i = trunc i32 %53 to i8
  %54 = ptrtoint ptr %add.ptr68.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv88.i, ptr %add.ptr68.i, align 8
  %55 = lshr i32 %53, 8
  %conv92.i = trunc i32 %55 to i8
  %arrayidx94.i = getelementptr i8, ptr %call7.i.i.i63, i32 3433
  %56 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv92.i, ptr %arrayidx94.i, align 1
  %add.ptr96.i = getelementptr i8, ptr %call7.i.i.i63, i32 5080
  %call97.i = tail call i32 @mpeg1_sequence_header(ptr noundef %go, ptr noundef %add.ptr96.i, i32 noundef 0) #10
  br label %for.body.i72

for.body.i72:                                     ; preds = %if.end145.i.for.body.i72_crit_edge, %if.end85.i
  %off.0258.i = phi i32 [ 0, %if.end85.i ], [ %add150.i, %if.end145.i.for.body.i72_crit_edge ]
  %i.0257.i = phi i32 [ 0, %if.end85.i ], [ %add152.i, %if.end145.i.for.body.i72_crit_edge ]
  %addr.0256.i = phi i32 [ 25, %if.end85.i ], [ %addr.1.i79, %if.end145.i.for.body.i72_crit_edge ]
  %mem.0255.i = phi i16 [ 15872, %if.end85.i ], [ %mem.1.i78, %if.end145.i.for.body.i72_crit_edge ]
  %sub.i71 = sub nsw i32 %space, %off.0258.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i71)
  %cmp101.i = icmp slt i32 %sub.i71, 32
  br i1 %cmp101.i, label %for.body.i72.done.i81_crit_edge, label %if.end104.i

for.body.i72.done.i81_crit_edge:                  ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.i81

if.end104.i:                                      ; preds = %for.body.i72
  %conv105.i = zext i16 %mem.0255.i to i32
  %or.i = or i16 %mem.0255.i, -32768
  %57 = tail call i16 @llvm.bswap.i16(i16 %or.i) #10
  %add107.i = or i32 %off.0258.i, 1
  %arrayidx108.i = getelementptr i16, ptr %code, i32 %add107.i
  %58 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %arrayidx108.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16356, i16 %mem.0255.i)
  %cmp111.i = icmp ugt i16 %mem.0255.i, 16356
  %sub115.i = sub nsw i32 16384, %conv105.i
  %spec.select.i73 = select i1 %cmp111.i, i32 %sub115.i, i32 28
  %mul.i74 = shl nsw i32 %spec.select.i73, 1
  %add117.i = add i32 %mul.i74, %i.0257.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5120, i32 %add117.i)
  %cmp118.i = icmp sgt i32 %add117.i, 5120
  %sub121.i = sub i32 5120, %i.0257.i
  %div122.i = sdiv i32 %sub121.i, 2
  %chunk.1.i75 = select i1 %cmp118.i, i32 %div122.i, i32 %spec.select.i73
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %chunk.1.i75)
  %cmp124.i = icmp slt i32 %chunk.1.i75, 28
  br i1 %cmp124.i, label %if.then126.i, label %if.else.i77

if.then126.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #12
  %59 = trunc i32 %chunk.1.i75 to i16
  %conv128.i = or i16 %59, 16384
  %60 = tail call i16 @llvm.bswap.i16(i16 %conv128.i) #10
  %arrayidx129.i = getelementptr i16, ptr %code, i32 %off.0258.i
  %61 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %arrayidx129.i, align 2
  %conv130.i = trunc i32 %addr.0256.i to i16
  %62 = tail call i16 @llvm.bswap.i16(i16 %conv130.i) #10
  %add131.i = or i32 %off.0258.i, 31
  %arrayidx132.i = getelementptr i16, ptr %code, i32 %add131.i
  %63 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %arrayidx132.i, align 2
  %add134.i = add nsw i32 %chunk.1.i75, %conv105.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add134.i)
  %cmp135.i = icmp eq i32 %add134.i, 16384
  %spec.select253.i = select i1 %cmp135.i, i16 15872, i16 %mem.0255.i
  %inc.i76 = zext i1 %cmp135.i to i32
  %spec.select254.i = add i32 %addr.0256.i, %inc.i76
  br label %if.end145.i

if.else.i77:                                      ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #12
  %add110.i = add i16 %mem.0255.i, 28
  %arrayidx139.i = getelementptr i16, ptr %code, i32 %off.0258.i
  %64 = ptrtoint ptr %arrayidx139.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 7184, ptr %arrayidx139.i, align 2
  %add140.i = or i32 %off.0258.i, 31
  %arrayidx141.i = getelementptr i16, ptr %code, i32 %add140.i
  %65 = ptrtoint ptr %arrayidx141.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %arrayidx141.i, align 2
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.else.i77, %if.then126.i
  %mem.1.i78 = phi i16 [ %add110.i, %if.else.i77 ], [ %spec.select253.i, %if.then126.i ]
  %addr.1.i79 = phi i32 [ %addr.0256.i, %if.else.i77 ], [ %spec.select254.i, %if.then126.i ]
  %add146.i = or i32 %off.0258.i, 2
  %arrayidx147.i = getelementptr i16, ptr %code, i32 %add146.i
  %add.ptr148.i = getelementptr i8, ptr %call7.i.i.i63, i32 %i.0257.i
  %mul149.i = shl nsw i32 %chunk.1.i75, 1
  %66 = call ptr @memcpy(ptr %arrayidx147.i, ptr %add.ptr148.i, i32 %mul149.i)
  %add150.i = add nuw i32 %off.0258.i, 32
  %add152.i = add i32 %mul149.i, %i.0257.i
  %cmp99.i = icmp slt i32 %add152.i, 5120
  br i1 %cmp99.i, label %if.end145.i.for.body.i72_crit_edge, label %if.end145.i.done.i81_crit_edge

if.end145.i.done.i81_crit_edge:                   ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.i81

if.end145.i.for.body.i72_crit_edge:               ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i72

done.i81:                                         ; preds = %if.end145.i.done.i81_crit_edge, %for.body.i72.done.i81_crit_edge
  %off.1.i80 = phi i32 [ %add150.i, %if.end145.i.done.i81_crit_edge ], [ -1, %for.body.i72.done.i81_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i63) #10
  br label %return

sw.bb4:                                           ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %67 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i83 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %67, i32 noundef 3520, i32 noundef 5120) #15
  %cmp.i84 = icmp eq ptr %call7.i.i.i83, null
  br i1 %cmp.i84, label %sw.bb4.return_crit_edge, label %if.end.i90

sw.bb4.return_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end.i90:                                       ; preds = %sw.bb4
  %call1.i85 = tail call fastcc i32 @mpeg4_frame_header(ptr noundef %go, ptr noundef nonnull %call7.i.i.i83, i32 noundef 0, i32 noundef 0) #10
  %68 = ptrtoint ptr %framelen to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call1.i85, ptr %framelen, align 4
  %add.ptr.i86 = getelementptr i8, ptr %call7.i.i.i83, i32 368
  %call2.i87 = tail call fastcc i32 @mpeg4_frame_header(ptr noundef %go, ptr noundef %add.ptr.i86, i32 noundef 0, i32 noundef 1) #10
  %arrayidx3.i = getelementptr i32, ptr %framelen, i32 1
  %69 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call2.i87, ptr %arrayidx3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %call7.i.i.i83, i32 2000
  %call5.i = tail call fastcc i32 @mpeg4_frame_header(ptr noundef %go, ptr noundef %add.ptr4.i, i32 noundef 0, i32 noundef 2) #10
  %arrayidx6.i = getelementptr i32, ptr %framelen, i32 2
  %70 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call5.i, ptr %arrayidx6.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %call7.i.i.i83, i32 3432
  %call9.i = tail call fastcc i32 @mpeg4_frame_header(ptr noundef %go, ptr noundef %add.ptr8.i, i32 noundef 0, i32 noundef 3) #10
  %arrayidx10.i = getelementptr i32, ptr %framelen, i32 3
  %71 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call9.i, ptr %arrayidx10.i, align 4
  %add.ptr12.i88 = getelementptr i8, ptr %call7.i.i.i83, i32 5064
  %call13.i89 = tail call fastcc i32 @mpeg4_frame_header(ptr noundef %go, ptr noundef %add.ptr12.i88, i32 noundef 0, i32 noundef 4) #10
  %add.ptr15.i = getelementptr i8, ptr %call7.i.i.i83, i32 5080
  %call16.i = tail call i32 @mpeg4_sequence_header(ptr noundef %go, ptr noundef %add.ptr15.i, i32 noundef 0) #10
  br label %for.body.i92

for.body.i92:                                     ; preds = %if.end60.i.for.body.i92_crit_edge, %if.end.i90
  %off.0276.i = phi i32 [ 0, %if.end.i90 ], [ %add65.i, %if.end60.i.for.body.i92_crit_edge ]
  %i.0275.i = phi i32 [ 0, %if.end.i90 ], [ %add67.i, %if.end60.i.for.body.i92_crit_edge ]
  %addr.0274.i = phi i32 [ 25, %if.end.i90 ], [ %addr.1.i103, %if.end60.i.for.body.i92_crit_edge ]
  %mem.0273.i = phi i16 [ 15872, %if.end.i90 ], [ %mem.1.i102, %if.end60.i.for.body.i92_crit_edge ]
  %sub.i91 = sub nsw i32 %space, %off.0276.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i91)
  %cmp19.i = icmp slt i32 %sub.i91, 32
  br i1 %cmp19.i, label %for.body.i92.done.i110_crit_edge, label %if.end21.i

for.body.i92.done.i110_crit_edge:                 ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.i110

if.end21.i:                                       ; preds = %for.body.i92
  %conv.i93 = zext i16 %mem.0273.i to i32
  %or.i94 = or i16 %mem.0273.i, -32768
  %72 = tail call i16 @llvm.bswap.i16(i16 %or.i94) #10
  %add23.i = or i32 %off.0276.i, 1
  %arrayidx24.i = getelementptr i16, ptr %code, i32 %add23.i
  %73 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %arrayidx24.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16356, i16 %mem.0273.i)
  %cmp27.i = icmp ugt i16 %mem.0273.i, 16356
  %sub31.i95 = sub nsw i32 16384, %conv.i93
  %spec.select.i96 = select i1 %cmp27.i, i32 %sub31.i95, i32 28
  %mul.i97 = shl nsw i32 %spec.select.i96, 1
  %add33.i = add i32 %mul.i97, %i.0275.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5120, i32 %add33.i)
  %cmp34.i = icmp sgt i32 %add33.i, 5120
  %sub37.i = sub i32 5120, %i.0275.i
  %div.i98 = sdiv i32 %sub37.i, 2
  %chunk.1.i99 = select i1 %cmp34.i, i32 %div.i98, i32 %spec.select.i96
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %chunk.1.i99)
  %cmp39.i = icmp slt i32 %chunk.1.i99, 28
  br i1 %cmp39.i, label %if.then41.i, label %if.else.i101

if.then41.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %74 = trunc i32 %chunk.1.i99 to i16
  %conv43.i = or i16 %74, 16384
  %75 = tail call i16 @llvm.bswap.i16(i16 %conv43.i) #10
  %arrayidx44.i = getelementptr i16, ptr %code, i32 %off.0276.i
  %76 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %arrayidx44.i, align 2
  %conv45.i = trunc i32 %addr.0274.i to i16
  %77 = tail call i16 @llvm.bswap.i16(i16 %conv45.i) #10
  %add46.i = or i32 %off.0276.i, 31
  %arrayidx47.i = getelementptr i16, ptr %code, i32 %add46.i
  %78 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %arrayidx47.i, align 2
  %add49.i = add nsw i32 %chunk.1.i99, %conv.i93
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add49.i)
  %cmp50.i = icmp eq i32 %add49.i, 16384
  %spec.select266.i = select i1 %cmp50.i, i16 15872, i16 %mem.0273.i
  %inc.i100 = zext i1 %cmp50.i to i32
  %spec.select267.i = add i32 %addr.0274.i, %inc.i100
  br label %if.end60.i

if.else.i101:                                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %add26.i = add i16 %mem.0273.i, 28
  %arrayidx54.i = getelementptr i16, ptr %code, i32 %off.0276.i
  %79 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 7184, ptr %arrayidx54.i, align 2
  %add55.i = or i32 %off.0276.i, 31
  %arrayidx56.i = getelementptr i16, ptr %code, i32 %add55.i
  %80 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %arrayidx56.i, align 2
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.else.i101, %if.then41.i
  %mem.1.i102 = phi i16 [ %add26.i, %if.else.i101 ], [ %spec.select266.i, %if.then41.i ]
  %addr.1.i103 = phi i32 [ %addr.0274.i, %if.else.i101 ], [ %spec.select267.i, %if.then41.i ]
  %add61.i = or i32 %off.0276.i, 2
  %arrayidx62.i = getelementptr i16, ptr %code, i32 %add61.i
  %add.ptr63.i = getelementptr i8, ptr %call7.i.i.i83, i32 %i.0275.i
  %mul64.i = shl nsw i32 %chunk.1.i99, 1
  %81 = call ptr @memcpy(ptr %arrayidx62.i, ptr %add.ptr63.i, i32 %mul64.i)
  %add65.i = add nuw i32 %off.0276.i, 32
  %add67.i = add i32 %mul64.i, %i.0275.i
  %cmp18.i = icmp slt i32 %add67.i, 5120
  br i1 %cmp18.i, label %if.end60.i.for.body.i92_crit_edge, label %for.end.i106

if.end60.i.for.body.i92_crit_edge:                ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i92

for.end.i106:                                     ; preds = %if.end60.i
  %ipb.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 44
  %82 = ptrtoint ptr %ipb.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load.i104 = load i8, ptr %ipb.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i104)
  %tobool.not.i105 = icmp sgt i8 %bf.load.i104, -1
  %cond.i = select i1 %tobool.not.i105, i32 2809, i32 5369
  %83 = call ptr @memset(ptr %call7.i.i.i83, i32 0, i32 5120)
  %call68.i = tail call fastcc i32 @mpeg4_frame_header(ptr noundef %go, ptr noundef nonnull %call7.i.i.i83, i32 noundef 1, i32 noundef 0) #10
  %arrayidx69.i = getelementptr i32, ptr %framelen, i32 4
  %84 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %call68.i, ptr %arrayidx69.i, align 4
  %call71.i = tail call fastcc i32 @mpeg4_frame_header(ptr noundef %go, ptr noundef %add.ptr.i86, i32 noundef 1, i32 noundef 1) #10
  %arrayidx72.i = getelementptr i32, ptr %framelen, i32 5
  %85 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %call71.i, ptr %arrayidx72.i, align 4
  %call75.i = tail call fastcc i32 @mpeg4_frame_header(ptr noundef %go, ptr noundef %add.ptr4.i, i32 noundef 1, i32 noundef 2) #10
  %arrayidx76.i = getelementptr i32, ptr %framelen, i32 6
  %86 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %call75.i, ptr %arrayidx76.i, align 4
  %call79.i = tail call fastcc i32 @mpeg4_frame_header(ptr noundef %go, ptr noundef %add.ptr8.i, i32 noundef 1, i32 noundef 3) #10
  %arrayidx80.i = getelementptr i32, ptr %framelen, i32 7
  %87 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %call79.i, ptr %arrayidx80.i, align 4
  %call83.i = tail call fastcc i32 @mpeg4_frame_header(ptr noundef %go, ptr noundef %add.ptr12.i88, i32 noundef 1, i32 noundef 4) #10
  br label %for.body88.i

for.body88.i:                                     ; preds = %if.end138.i.for.body88.i_crit_edge, %for.end.i106
  %off.1281.i = phi i32 [ %add65.i, %for.end.i106 ], [ %add143.i, %if.end138.i.for.body88.i_crit_edge ]
  %i.1280.i = phi i32 [ 0, %for.end.i106 ], [ %add146.i109, %if.end138.i.for.body88.i_crit_edge ]
  %addr.2279.i = phi i32 [ %cond.i, %for.end.i106 ], [ %addr.3.i, %if.end138.i.for.body88.i_crit_edge ]
  %mem.2278.i = phi i16 [ 15872, %for.end.i106 ], [ %mem.3.i, %if.end138.i.for.body88.i_crit_edge ]
  %sub89.i = sub i32 %space, %off.1281.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub89.i)
  %cmp90.i = icmp slt i32 %sub89.i, 32
  br i1 %cmp90.i, label %for.body88.i.done.i110_crit_edge, label %if.end93.i

for.body88.i.done.i110_crit_edge:                 ; preds = %for.body88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.i110

if.end93.i:                                       ; preds = %for.body88.i
  %conv94.i = zext i16 %mem.2278.i to i32
  %or95.i = or i16 %mem.2278.i, -32768
  %88 = tail call i16 @llvm.bswap.i16(i16 %or95.i) #10
  %add97.i = or i32 %off.1281.i, 1
  %arrayidx98.i = getelementptr i16, ptr %code, i32 %add97.i
  %89 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %arrayidx98.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16356, i16 %mem.2278.i)
  %cmp101.i107 = icmp ugt i16 %mem.2278.i, 16356
  %sub105.i = sub nsw i32 16384, %conv94.i
  %spec.select268.i = select i1 %cmp101.i107, i32 %sub105.i, i32 28
  %mul107.i = shl nsw i32 %spec.select268.i, 1
  %add108.i = add i32 %mul107.i, %i.1280.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5120, i32 %add108.i)
  %cmp109.i = icmp sgt i32 %add108.i, 5120
  %sub112.i = sub i32 5120, %i.1280.i
  %div113.i = sdiv i32 %sub112.i, 2
  %chunk.3.i = select i1 %cmp109.i, i32 %div113.i, i32 %spec.select268.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %chunk.3.i)
  %cmp115.i = icmp slt i32 %chunk.3.i, 28
  br i1 %cmp115.i, label %if.then117.i, label %if.else131.i

if.then117.i:                                     ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #12
  %90 = trunc i32 %chunk.3.i to i16
  %conv119.i = or i16 %90, 16384
  %91 = tail call i16 @llvm.bswap.i16(i16 %conv119.i) #10
  %arrayidx120.i = getelementptr i16, ptr %code, i32 %off.1281.i
  %92 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %91, ptr %arrayidx120.i, align 2
  %conv121.i = trunc i32 %addr.2279.i to i16
  %93 = tail call i16 @llvm.bswap.i16(i16 %conv121.i) #10
  %add122.i = or i32 %off.1281.i, 31
  %arrayidx123.i = getelementptr i16, ptr %code, i32 %add122.i
  %94 = ptrtoint ptr %arrayidx123.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %arrayidx123.i, align 2
  %add125.i = add nsw i32 %chunk.3.i, %conv94.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add125.i)
  %cmp126.i = icmp eq i32 %add125.i, 16384
  %spec.select269.i = select i1 %cmp126.i, i16 15872, i16 %mem.2278.i
  %inc129.i = zext i1 %cmp126.i to i32
  %spec.select270.i = add i32 %addr.2279.i, %inc129.i
  br label %if.end138.i

if.else131.i:                                     ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #12
  %add100.i = add i16 %mem.2278.i, 28
  %arrayidx132.i108 = getelementptr i16, ptr %code, i32 %off.1281.i
  %95 = ptrtoint ptr %arrayidx132.i108 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 7184, ptr %arrayidx132.i108, align 2
  %add133.i = or i32 %off.1281.i, 31
  %arrayidx134.i = getelementptr i16, ptr %code, i32 %add133.i
  %96 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 0, ptr %arrayidx134.i, align 2
  br label %if.end138.i

if.end138.i:                                      ; preds = %if.else131.i, %if.then117.i
  %mem.3.i = phi i16 [ %add100.i, %if.else131.i ], [ %spec.select269.i, %if.then117.i ]
  %addr.3.i = phi i32 [ %addr.2279.i, %if.else131.i ], [ %spec.select270.i, %if.then117.i ]
  %add139.i = or i32 %off.1281.i, 2
  %arrayidx140.i = getelementptr i16, ptr %code, i32 %add139.i
  %add.ptr141.i = getelementptr i8, ptr %call7.i.i.i83, i32 %i.1280.i
  %mul142.i = shl nsw i32 %chunk.3.i, 1
  %97 = call ptr @memcpy(ptr %arrayidx140.i, ptr %add.ptr141.i, i32 %mul142.i)
  %add143.i = add i32 %off.1281.i, 32
  %add146.i109 = add i32 %mul142.i, %i.1280.i
  %cmp86.i = icmp slt i32 %add146.i109, 5120
  br i1 %cmp86.i, label %if.end138.i.for.body88.i_crit_edge, label %if.end138.i.done.i110_crit_edge

if.end138.i.done.i110_crit_edge:                  ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done.i110

if.end138.i.for.body88.i_crit_edge:               ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body88.i

done.i110:                                        ; preds = %if.end138.i.done.i110_crit_edge, %for.body88.i.done.i110_crit_edge, %for.body.i92.done.i110_crit_edge
  %off.2.i = phi i32 [ %add143.i, %if.end138.i.done.i110_crit_edge ], [ -1, %for.body88.i.done.i110_crit_edge ], [ -1, %for.body.i92.done.i110_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i83) #10
  br label %return

sw.bb6:                                           ; preds = %entry
  %format.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 38
  %98 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %format.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1196444237, i32 %99)
  %cmp.i112 = icmp eq i32 %99, 1196444237
  br i1 %cmp.i112, label %.thread528.i, label %lor.end.i

.thread528.i:                                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  %bitrate529.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 39
  %100 = ptrtoint ptr %bitrate529.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %bitrate529.i, align 4
  %mul530.i = mul i32 %101, 6
  br label %cond.end13.i

lor.end.i:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  %dvd_mode.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 44
  %102 = ptrtoint ptr %dvd_mode.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %bf.load.i113 = load i8, ptr %dvd_mode.i, align 8
  %103 = and i8 %bf.load.i113, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i114 = icmp eq i8 %103, 0
  %..i = select i1 %tobool.not.i114, i32 0, i32 100
  %104 = xor i1 %tobool.not.i114, true
  %.in.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 39
  %105 = ptrtoint ptr %.in.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %.in.i, align 4
  %mul525.i = mul i32 %106, 6
  %div527.i = sdiv i32 %mul525.i, 5
  %spec.select.i115 = select i1 %tobool.not.i114, i32 %div527.i, i32 900000
  br label %cond.end13.i

cond.end13.i:                                     ; preds = %lor.end.i, %.thread528.i
  %mul526.i = phi i32 [ %mul525.i, %lor.end.i ], [ %mul530.i, %.thread528.i ]
  %107 = phi i32 [ %106, %lor.end.i ], [ %101, %.thread528.i ]
  %108 = phi i32 [ %..i, %lor.end.i ], [ 100, %.thread528.i ]
  %109 = phi i1 [ %104, %lor.end.i ], [ true, %.thread528.i ]
  %cond14.i = phi i32 [ %spec.select.i115, %lor.end.i ], [ %101, %.thread528.i ]
  %sensor_framerate.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 32
  %110 = ptrtoint ptr %sensor_framerate.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %sensor_framerate.i, align 8
  %fps_scale.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 40
  %112 = ptrtoint ptr %fps_scale.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %fps_scale.i, align 8
  %div15.i = sdiv i32 %111, %113
  %div17.i = sdiv i32 %107, 32
  %ipb.i116 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 44
  %114 = ptrtoint ptr %ipb.i116 to i32
  call void @__asan_load1_noabort(i32 %114)
  %bf.load18.i = load i8, ptr %ipb.i116, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load18.i)
  %tobool21.not.i = icmp sgt i8 %bf.load18.i, -1
  %cond22.i = select i1 %tobool21.not.i, i32 1, i32 3
  %mul23.i = mul i32 %div17.i, 1001
  %mul24.i = mul i32 %mul23.i, %cond22.i
  %div25.i = sdiv i32 %mul24.i, %div15.i
  %div26.i = sdiv i32 %mul526.i, 160
  %mul27.i = mul i32 %div26.i, 1001
  %div28.i = sdiv i32 %mul27.i, %div15.i
  %mul31.i = mul i32 %div17.i, 1000
  %div32.i = sdiv i32 %mul31.i, %div15.i
  %div33.i = sdiv i32 %div15.i, 1000
  %mul34.i = mul i32 %div32.i, %div33.i
  %mul35.i = mul i32 %cond14.i, 3
  %div36.i = sdiv i32 %mul35.i, 128
  %width.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 33
  %115 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %width.i, align 4
  %height.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 34
  %117 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %height.i, align 8
  %mul41.i = select i1 %tobool21.not.i, i32 8, i32 12
  %mul42.i = mul i32 %116, %mul41.i
  %mul49.i = mul i32 %mul42.i, %118
  %div50.i = sdiv i32 %mul49.i, 32
  %div112.i = udiv i32 %div50.i, %div25.i
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %pack.i) #10
  %119 = getelementptr inbounds i8, ptr %pack.i, i32 14
  %120 = call ptr @memset(ptr %119, i32 255, i32 370)
  %121 = ptrtoint ptr %pack.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 8206, ptr %pack.i, align 2
  %arrayinit.element116.i = getelementptr inbounds i16, ptr %pack.i, i32 1
  %122 = ptrtoint ptr %arrayinit.element116.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 0, ptr %arrayinit.element116.i, align 2
  %arrayinit.element117.i = getelementptr inbounds i16, ptr %pack.i, i32 2
  %123 = ptrtoint ptr %arrayinit.element117.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 -16608, ptr %arrayinit.element117.i, align 2
  %arrayinit.element118.i = getelementptr inbounds i16, ptr %pack.i, i32 3
  %cond130.i = select i1 %tobool21.not.i, i16 1, i16 3
  %124 = ptrtoint ptr %arrayinit.element118.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %cond130.i, ptr %arrayinit.element118.i, align 2
  %arrayinit.element132.i = getelementptr inbounds i16, ptr %pack.i, i32 4
  %125 = ptrtoint ptr %arrayinit.element132.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 -16607, ptr %arrayinit.element132.i, align 2
  %arrayinit.element133.i = getelementptr inbounds i16, ptr %pack.i, i32 5
  %126 = lshr i8 %bf.load18.i, 6
  %127 = and i8 %126, 2
  %conv140.i = zext i8 %127 to i16
  %128 = ptrtoint ptr %arrayinit.element133.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %conv140.i, ptr %arrayinit.element133.i, align 2
  %arrayinit.element141.i = getelementptr inbounds i16, ptr %pack.i, i32 6
  %129 = ptrtoint ptr %arrayinit.element141.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 -16606, ptr %arrayinit.element141.i, align 2
  br i1 %tobool21.not.i, label %cond.end153.thread.i, label %cond.true163.i

cond.end153.thread.i:                             ; preds = %cond.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %130 = ptrtoint ptr %119 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 32767, ptr %119, align 2
  %arrayinit.element157534.i = getelementptr inbounds i16, ptr %pack.i, i32 9
  br label %cond.end167.i

cond.true163.i:                                   ; preds = %cond.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %div149520.i = lshr exact i32 %108, 1
  %add.i117 = add nuw nsw i32 %div149520.i, 50
  %arrayidx150.i = getelementptr [101 x i16], ptr @LAMBDA_table, i32 0, i32 %add.i117
  %131 = ptrtoint ptr %arrayidx150.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %arrayidx150.i, align 2
  %133 = ptrtoint ptr %119 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %132, ptr %119, align 2
  %arrayinit.element157.i = getelementptr inbounds i16, ptr %pack.i, i32 9
  %arrayidx164.i = getelementptr [4 x [101 x i16]], ptr @LAMBDA_table, i32 0, i32 1, i32 %108
  %134 = ptrtoint ptr %arrayidx164.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %arrayidx164.i, align 2
  br label %cond.end167.i

cond.end167.i:                                    ; preds = %cond.true163.i, %cond.end153.thread.i
  %arrayinit.element157535.i = phi ptr [ %arrayinit.element157.i, %cond.true163.i ], [ %arrayinit.element157534.i, %cond.end153.thread.i ]
  %cond168.i = phi i16 [ %135, %cond.true163.i ], [ 32767, %cond.end153.thread.i ]
  %136 = getelementptr inbounds i16, ptr %pack.i, i32 8
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 -16605, ptr %136, align 2
  %138 = ptrtoint ptr %arrayinit.element157535.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %cond168.i, ptr %arrayinit.element157535.i, align 2
  %arrayinit.element170.i = getelementptr inbounds i16, ptr %pack.i, i32 10
  %139 = ptrtoint ptr %arrayinit.element170.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 -16604, ptr %arrayinit.element170.i, align 2
  %arrayinit.element171.i = getelementptr inbounds i16, ptr %pack.i, i32 11
  %140 = ptrtoint ptr %arrayinit.element171.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 32767, ptr %arrayinit.element171.i, align 2
  %arrayinit.element172.i = getelementptr inbounds i16, ptr %pack.i, i32 12
  %141 = ptrtoint ptr %arrayinit.element172.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 -16603, ptr %arrayinit.element172.i, align 2
  %arrayinit.element173.i = getelementptr inbounds i16, ptr %pack.i, i32 13
  br i1 %109, label %cond.end167.i.cond.end180.i_crit_edge, label %cond.false177.i

cond.end167.i.cond.end180.i_crit_edge:            ; preds = %cond.end167.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end180.i

cond.false177.i:                                  ; preds = %cond.end167.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx178.i = getelementptr [4 x [101 x i16]], ptr @LAMBDA_table, i32 0, i32 3, i32 %108
  %142 = ptrtoint ptr %arrayidx178.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %arrayidx178.i, align 2
  br label %cond.end180.i

cond.end180.i:                                    ; preds = %cond.false177.i, %cond.end167.i.cond.end180.i_crit_edge
  %cond181.i = phi i16 [ %143, %cond.false177.i ], [ 32767, %cond.end167.i.cond.end180.i_crit_edge ]
  %144 = ptrtoint ptr %arrayinit.element173.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %cond181.i, ptr %arrayinit.element173.i, align 2
  %arrayinit.element183.i = getelementptr inbounds i16, ptr %pack.i, i32 14
  %145 = ptrtoint ptr %arrayinit.element183.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 -16602, ptr %arrayinit.element183.i, align 2
  %arrayinit.element184.i = getelementptr inbounds i16, ptr %pack.i, i32 15
  %conv185.i = trunc i32 %div25.i to i16
  %146 = ptrtoint ptr %arrayinit.element184.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %conv185.i, ptr %arrayinit.element184.i, align 2
  %arrayinit.element186.i = getelementptr inbounds i16, ptr %pack.i, i32 16
  %147 = ptrtoint ptr %arrayinit.element186.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 -16601, ptr %arrayinit.element186.i, align 2
  %arrayinit.element187.i = getelementptr inbounds i16, ptr %pack.i, i32 17
  %shr.i = lshr i32 %div25.i, 16
  %conv188.i = trunc i32 %shr.i to i16
  %148 = ptrtoint ptr %arrayinit.element187.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %conv188.i, ptr %arrayinit.element187.i, align 2
  %arrayinit.element189.i = getelementptr inbounds i16, ptr %pack.i, i32 18
  %149 = ptrtoint ptr %arrayinit.element189.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 -16600, ptr %arrayinit.element189.i, align 2
  %arrayinit.element190.i = getelementptr inbounds i16, ptr %pack.i, i32 19
  %conv192.i = trunc i32 %div28.i to i16
  %150 = ptrtoint ptr %arrayinit.element190.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %conv192.i, ptr %arrayinit.element190.i, align 2
  %arrayinit.element193.i = getelementptr inbounds i16, ptr %pack.i, i32 20
  %151 = ptrtoint ptr %arrayinit.element193.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 -16599, ptr %arrayinit.element193.i, align 2
  %arrayinit.element194.i = getelementptr inbounds i16, ptr %pack.i, i32 21
  %shr195.i = lshr i32 %div28.i, 16
  %conv196.i = trunc i32 %shr195.i to i16
  %152 = ptrtoint ptr %arrayinit.element194.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %conv196.i, ptr %arrayinit.element194.i, align 2
  %arrayinit.element197.i = getelementptr inbounds i16, ptr %pack.i, i32 22
  %153 = ptrtoint ptr %arrayinit.element197.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 -16598, ptr %arrayinit.element197.i, align 2
  %arrayinit.element198.i = getelementptr inbounds i16, ptr %pack.i, i32 23
  %conv200.i = trunc i32 %div36.i to i16
  %154 = ptrtoint ptr %arrayinit.element198.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %conv200.i, ptr %arrayinit.element198.i, align 2
  %arrayinit.element201.i = getelementptr inbounds i16, ptr %pack.i, i32 24
  %155 = ptrtoint ptr %arrayinit.element201.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 -16597, ptr %arrayinit.element201.i, align 2
  %arrayinit.element202.i = getelementptr inbounds i16, ptr %pack.i, i32 25
  %shr203.i = lshr i32 %div36.i, 16
  %conv204.i = trunc i32 %shr203.i to i16
  %156 = ptrtoint ptr %arrayinit.element202.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %conv204.i, ptr %arrayinit.element202.i, align 2
  %arrayinit.element205.i = getelementptr inbounds i16, ptr %pack.i, i32 26
  %157 = ptrtoint ptr %arrayinit.element205.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 -16596, ptr %arrayinit.element205.i, align 2
  %arrayinit.element206.i = getelementptr inbounds i16, ptr %pack.i, i32 27
  %158 = ptrtoint ptr %arrayinit.element206.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 0, ptr %arrayinit.element206.i, align 2
  %arrayinit.element207.i = getelementptr inbounds i16, ptr %pack.i, i32 28
  %159 = ptrtoint ptr %arrayinit.element207.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 -16595, ptr %arrayinit.element207.i, align 2
  %arrayinit.element208.i = getelementptr inbounds i16, ptr %pack.i, i32 29
  %160 = ptrtoint ptr %arrayinit.element208.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 0, ptr %arrayinit.element208.i, align 2
  %arrayinit.element209.i = getelementptr inbounds i16, ptr %pack.i, i32 30
  %161 = ptrtoint ptr %arrayinit.element209.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 0, ptr %arrayinit.element209.i, align 2
  %arrayinit.element210.i = getelementptr inbounds i16, ptr %pack.i, i32 31
  %162 = ptrtoint ptr %arrayinit.element210.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 0, ptr %arrayinit.element210.i, align 2
  %arrayinit.element211.i = getelementptr inbounds i16, ptr %pack.i, i32 32
  %163 = ptrtoint ptr %arrayinit.element211.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 8206, ptr %arrayinit.element211.i, align 2
  %arrayinit.element212.i = getelementptr inbounds i16, ptr %pack.i, i32 33
  %164 = ptrtoint ptr %arrayinit.element212.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 0, ptr %arrayinit.element212.i, align 2
  %arrayinit.element213.i = getelementptr inbounds i16, ptr %pack.i, i32 34
  %165 = ptrtoint ptr %arrayinit.element213.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 -16594, ptr %arrayinit.element213.i, align 2
  %arrayinit.element214.i = getelementptr inbounds i16, ptr %pack.i, i32 35
  %166 = ptrtoint ptr %arrayinit.element214.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %conv200.i, ptr %arrayinit.element214.i, align 2
  %arrayinit.element217.i = getelementptr inbounds i16, ptr %pack.i, i32 36
  %167 = ptrtoint ptr %arrayinit.element217.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 -16593, ptr %arrayinit.element217.i, align 2
  %arrayinit.element218.i = getelementptr inbounds i16, ptr %pack.i, i32 37
  %168 = ptrtoint ptr %arrayinit.element218.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %conv204.i, ptr %arrayinit.element218.i, align 2
  %arrayinit.element221.i = getelementptr inbounds i16, ptr %pack.i, i32 38
  %169 = ptrtoint ptr %arrayinit.element221.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 -16592, ptr %arrayinit.element221.i, align 2
  %arrayinit.element222.i = getelementptr inbounds i16, ptr %pack.i, i32 39
  %conv225.i = trunc i32 %div50.i to i16
  %170 = ptrtoint ptr %arrayinit.element222.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %conv225.i, ptr %arrayinit.element222.i, align 2
  %arrayinit.element226.i = getelementptr inbounds i16, ptr %pack.i, i32 40
  %171 = ptrtoint ptr %arrayinit.element226.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 -16591, ptr %arrayinit.element226.i, align 2
  %arrayinit.element227.i = getelementptr inbounds i16, ptr %pack.i, i32 41
  %shr229.i = lshr i32 %div50.i, 16
  %conv230.i = trunc i32 %shr229.i to i16
  %172 = ptrtoint ptr %arrayinit.element227.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %conv230.i, ptr %arrayinit.element227.i, align 2
  %arrayinit.element231.i = getelementptr inbounds i16, ptr %pack.i, i32 42
  %173 = ptrtoint ptr %arrayinit.element231.i to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 -16590, ptr %arrayinit.element231.i, align 2
  %arrayinit.element232.i = getelementptr inbounds i16, ptr %pack.i, i32 43
  %174 = ptrtoint ptr %arrayinit.element232.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %conv225.i, ptr %arrayinit.element232.i, align 2
  %arrayinit.element236.i = getelementptr inbounds i16, ptr %pack.i, i32 44
  %175 = ptrtoint ptr %arrayinit.element236.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 -16589, ptr %arrayinit.element236.i, align 2
  %arrayinit.element237.i = getelementptr inbounds i16, ptr %pack.i, i32 45
  %176 = ptrtoint ptr %arrayinit.element237.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %conv230.i, ptr %arrayinit.element237.i, align 2
  %arrayinit.element241.i = getelementptr inbounds i16, ptr %pack.i, i32 46
  %177 = ptrtoint ptr %arrayinit.element241.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 -16588, ptr %arrayinit.element241.i, align 2
  %arrayinit.element242.i = getelementptr inbounds i16, ptr %pack.i, i32 47
  %178 = ptrtoint ptr %arrayinit.element242.i to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %conv225.i, ptr %arrayinit.element242.i, align 2
  %arrayinit.element246.i = getelementptr inbounds i16, ptr %pack.i, i32 48
  %179 = ptrtoint ptr %arrayinit.element246.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 -16587, ptr %arrayinit.element246.i, align 2
  %arrayinit.element247.i = getelementptr inbounds i16, ptr %pack.i, i32 49
  %180 = ptrtoint ptr %arrayinit.element247.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %conv230.i, ptr %arrayinit.element247.i, align 2
  %arrayinit.element251.i = getelementptr inbounds i16, ptr %pack.i, i32 50
  %181 = ptrtoint ptr %arrayinit.element251.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 -16586, ptr %arrayinit.element251.i, align 2
  %arrayinit.element252.i = getelementptr inbounds i16, ptr %pack.i, i32 51
  %182 = ptrtoint ptr %arrayinit.element252.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %conv225.i, ptr %arrayinit.element252.i, align 2
  %arrayinit.element256.i = getelementptr inbounds i16, ptr %pack.i, i32 52
  %183 = ptrtoint ptr %arrayinit.element256.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 -16585, ptr %arrayinit.element256.i, align 2
  %arrayinit.element257.i = getelementptr inbounds i16, ptr %pack.i, i32 53
  %184 = ptrtoint ptr %arrayinit.element257.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %conv230.i, ptr %arrayinit.element257.i, align 2
  %arrayinit.element261.i = getelementptr inbounds i16, ptr %pack.i, i32 54
  %185 = ptrtoint ptr %arrayinit.element261.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 -16584, ptr %arrayinit.element261.i, align 2
  %arrayinit.element262.i = getelementptr inbounds i16, ptr %pack.i, i32 55
  %186 = ptrtoint ptr %arrayinit.element262.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 0, ptr %arrayinit.element262.i, align 2
  %arrayinit.element263.i = getelementptr inbounds i16, ptr %pack.i, i32 56
  %187 = ptrtoint ptr %arrayinit.element263.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 -16583, ptr %arrayinit.element263.i, align 2
  %arrayinit.element264.i = getelementptr inbounds i16, ptr %pack.i, i32 57
  %188 = ptrtoint ptr %arrayinit.element264.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 0, ptr %arrayinit.element264.i, align 2
  %arrayinit.element265.i = getelementptr inbounds i16, ptr %pack.i, i32 58
  %189 = ptrtoint ptr %arrayinit.element265.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 -16582, ptr %arrayinit.element265.i, align 2
  %arrayinit.element266.i = getelementptr inbounds i16, ptr %pack.i, i32 59
  %conv268.i = trunc i32 %mul34.i to i16
  %190 = ptrtoint ptr %arrayinit.element266.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %conv268.i, ptr %arrayinit.element266.i, align 2
  %arrayinit.element269.i = getelementptr inbounds i16, ptr %pack.i, i32 60
  %191 = ptrtoint ptr %arrayinit.element269.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 -16581, ptr %arrayinit.element269.i, align 2
  %arrayinit.element270.i = getelementptr inbounds i16, ptr %pack.i, i32 61
  %shr271.i = lshr i32 %mul34.i, 16
  %conv272.i = trunc i32 %shr271.i to i16
  %192 = ptrtoint ptr %arrayinit.element270.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 %conv272.i, ptr %arrayinit.element270.i, align 2
  %arrayinit.element273.i = getelementptr inbounds i16, ptr %pack.i, i32 62
  %193 = ptrtoint ptr %arrayinit.element273.i to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 0, ptr %arrayinit.element273.i, align 2
  %arrayinit.element274.i = getelementptr inbounds i16, ptr %pack.i, i32 63
  %194 = ptrtoint ptr %arrayinit.element274.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 0, ptr %arrayinit.element274.i, align 2
  %arrayinit.element275.i = getelementptr inbounds i16, ptr %pack.i, i32 64
  %195 = ptrtoint ptr %arrayinit.element275.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 8206, ptr %arrayinit.element275.i, align 2
  %arrayinit.element276.i = getelementptr inbounds i16, ptr %pack.i, i32 65
  %196 = ptrtoint ptr %arrayinit.element276.i to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 0, ptr %arrayinit.element276.i, align 2
  %arrayinit.element277.i = getelementptr inbounds i16, ptr %pack.i, i32 66
  %197 = ptrtoint ptr %arrayinit.element277.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 -16580, ptr %arrayinit.element277.i, align 2
  %arrayinit.element278.i = getelementptr inbounds i16, ptr %pack.i, i32 67
  %198 = ptrtoint ptr %arrayinit.element278.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %conv268.i, ptr %arrayinit.element278.i, align 2
  %arrayinit.element281.i = getelementptr inbounds i16, ptr %pack.i, i32 68
  %199 = ptrtoint ptr %arrayinit.element281.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 -16579, ptr %arrayinit.element281.i, align 2
  %arrayinit.element282.i = getelementptr inbounds i16, ptr %pack.i, i32 69
  %200 = ptrtoint ptr %arrayinit.element282.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %conv272.i, ptr %arrayinit.element282.i, align 2
  %arrayinit.element285.i = getelementptr inbounds i16, ptr %pack.i, i32 70
  %201 = ptrtoint ptr %arrayinit.element285.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 -16578, ptr %arrayinit.element285.i, align 2
  %arrayinit.element286.i = getelementptr inbounds i16, ptr %pack.i, i32 71
  %202 = ptrtoint ptr %arrayinit.element286.i to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 0, ptr %arrayinit.element286.i, align 2
  %arrayinit.element287.i = getelementptr inbounds i16, ptr %pack.i, i32 72
  %203 = ptrtoint ptr %arrayinit.element287.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 -16577, ptr %arrayinit.element287.i, align 2
  %arrayinit.element288.i = getelementptr inbounds i16, ptr %pack.i, i32 73
  %204 = ptrtoint ptr %arrayinit.element288.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 0, ptr %arrayinit.element288.i, align 2
  %arrayinit.element289.i = getelementptr inbounds i16, ptr %pack.i, i32 74
  %205 = ptrtoint ptr %arrayinit.element289.i to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 -16568, ptr %arrayinit.element289.i, align 2
  %arrayinit.element290.i = getelementptr inbounds i16, ptr %pack.i, i32 75
  %206 = ptrtoint ptr %arrayinit.element290.i to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 0, ptr %arrayinit.element290.i, align 2
  %arrayinit.element291.i = getelementptr inbounds i16, ptr %pack.i, i32 76
  %207 = ptrtoint ptr %arrayinit.element291.i to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 -16567, ptr %arrayinit.element291.i, align 2
  %arrayinit.element292.i = getelementptr inbounds i16, ptr %pack.i, i32 77
  %208 = ptrtoint ptr %arrayinit.element292.i to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 0, ptr %arrayinit.element292.i, align 2
  %arrayinit.element293.i = getelementptr inbounds i16, ptr %pack.i, i32 78
  %209 = ptrtoint ptr %arrayinit.element293.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 -16566, ptr %arrayinit.element293.i, align 2
  %210 = tail call i32 @llvm.umin.i32(i32 %div112.i, i32 124) #10
  %211 = tail call i32 @llvm.umax.i32(i32 %210, i32 4) #10
  %212 = trunc i32 %211 to i16
  %arrayinit.element294.i = getelementptr inbounds i16, ptr %pack.i, i32 79
  %213 = ptrtoint ptr %arrayinit.element294.i to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 %212, ptr %arrayinit.element294.i, align 2
  %arrayinit.element308.i = getelementptr inbounds i16, ptr %pack.i, i32 80
  %214 = ptrtoint ptr %arrayinit.element308.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 -16565, ptr %arrayinit.element308.i, align 2
  %arrayinit.element309.i = getelementptr inbounds i16, ptr %pack.i, i32 81
  %215 = ptrtoint ptr %arrayinit.element309.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 4, ptr %arrayinit.element309.i, align 2
  %arrayinit.element310.i = getelementptr inbounds i16, ptr %pack.i, i32 82
  %216 = ptrtoint ptr %arrayinit.element310.i to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 -16564, ptr %arrayinit.element310.i, align 2
  %arrayinit.element311.i = getelementptr inbounds i16, ptr %pack.i, i32 83
  %217 = ptrtoint ptr %arrayinit.element311.i to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 0, ptr %arrayinit.element311.i, align 2
  %arrayinit.element312.i = getelementptr inbounds i16, ptr %pack.i, i32 84
  %218 = ptrtoint ptr %arrayinit.element312.i to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 -16563, ptr %arrayinit.element312.i, align 2
  %arrayinit.element313.i = getelementptr inbounds i16, ptr %pack.i, i32 85
  %219 = ptrtoint ptr %arrayinit.element313.i to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 0, ptr %arrayinit.element313.i, align 2
  %arrayinit.element314.i = getelementptr inbounds i16, ptr %pack.i, i32 86
  %220 = ptrtoint ptr %arrayinit.element314.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 -16562, ptr %arrayinit.element314.i, align 2
  %arrayinit.element315.i = getelementptr inbounds i16, ptr %pack.i, i32 87
  %221 = ptrtoint ptr %arrayinit.element315.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 0, ptr %arrayinit.element315.i, align 2
  %arrayinit.element316.i = getelementptr inbounds i16, ptr %pack.i, i32 88
  %222 = ptrtoint ptr %arrayinit.element316.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 -16561, ptr %arrayinit.element316.i, align 2
  %arrayinit.element317.i = getelementptr inbounds i16, ptr %pack.i, i32 89
  %223 = ptrtoint ptr %arrayinit.element317.i to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 0, ptr %arrayinit.element317.i, align 2
  %arrayinit.element318.i = getelementptr inbounds i16, ptr %pack.i, i32 90
  %224 = ptrtoint ptr %arrayinit.element318.i to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 -16560, ptr %arrayinit.element318.i, align 2
  %arrayinit.element319.i = getelementptr inbounds i16, ptr %pack.i, i32 91
  %225 = ptrtoint ptr %arrayinit.element319.i to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 0, ptr %arrayinit.element319.i, align 2
  %arrayinit.element320.i = getelementptr inbounds i16, ptr %pack.i, i32 92
  %226 = ptrtoint ptr %arrayinit.element320.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 -16559, ptr %arrayinit.element320.i, align 2
  %arrayinit.element321.i = getelementptr inbounds i16, ptr %pack.i, i32 93
  %227 = ptrtoint ptr %arrayinit.element321.i to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 0, ptr %arrayinit.element321.i, align 2
  %arrayinit.element322.i = getelementptr inbounds i16, ptr %pack.i, i32 94
  %228 = ptrtoint ptr %arrayinit.element322.i to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 0, ptr %arrayinit.element322.i, align 2
  %arrayinit.element323.i = getelementptr inbounds i16, ptr %pack.i, i32 95
  %229 = ptrtoint ptr %arrayinit.element323.i to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 0, ptr %arrayinit.element323.i, align 2
  %arrayinit.element324.i = getelementptr inbounds i16, ptr %pack.i, i32 96
  %230 = ptrtoint ptr %arrayinit.element324.i to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 8206, ptr %arrayinit.element324.i, align 2
  %arrayinit.element325.i = getelementptr inbounds i16, ptr %pack.i, i32 97
  %231 = ptrtoint ptr %arrayinit.element325.i to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 0, ptr %arrayinit.element325.i, align 2
  %arrayinit.element326.i = getelementptr inbounds i16, ptr %pack.i, i32 98
  %232 = ptrtoint ptr %arrayinit.element326.i to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 -16576, ptr %arrayinit.element326.i, align 2
  %arrayinit.element327.i = getelementptr inbounds i16, ptr %pack.i, i32 99
  %233 = ptrtoint ptr %arrayinit.element327.i to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 %conv185.i, ptr %arrayinit.element327.i, align 2
  %arrayinit.element330.i = getelementptr inbounds i16, ptr %pack.i, i32 100
  %234 = ptrtoint ptr %arrayinit.element330.i to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 -16575, ptr %arrayinit.element330.i, align 2
  %arrayinit.element331.i = getelementptr inbounds i16, ptr %pack.i, i32 101
  %235 = ptrtoint ptr %arrayinit.element331.i to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 %conv188.i, ptr %arrayinit.element331.i, align 2
  %arrayinit.element334.i = getelementptr inbounds i16, ptr %pack.i, i32 102
  %236 = ptrtoint ptr %arrayinit.element334.i to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 -16574, ptr %arrayinit.element334.i, align 2
  %arrayinit.element335.i = getelementptr inbounds i16, ptr %pack.i, i32 103
  %237 = ptrtoint ptr %arrayinit.element335.i to i32
  call void @__asan_store2_noabort(i32 %237)
  store i16 0, ptr %arrayinit.element335.i, align 2
  %arrayinit.element336.i = getelementptr inbounds i16, ptr %pack.i, i32 104
  %238 = ptrtoint ptr %arrayinit.element336.i to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 -16573, ptr %arrayinit.element336.i, align 2
  %arrayinit.element337.i = getelementptr inbounds i16, ptr %pack.i, i32 105
  %239 = ptrtoint ptr %arrayinit.element337.i to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 0, ptr %arrayinit.element337.i, align 2
  %arrayinit.element338.i = getelementptr inbounds i16, ptr %pack.i, i32 106
  %240 = ptrtoint ptr %arrayinit.element338.i to i32
  call void @__asan_store2_noabort(i32 %240)
  store i16 -16572, ptr %arrayinit.element338.i, align 2
  %arrayinit.element339.i = getelementptr inbounds i16, ptr %pack.i, i32 107
  %241 = ptrtoint ptr %arrayinit.element339.i to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 0, ptr %arrayinit.element339.i, align 2
  %arrayinit.element340.i = getelementptr inbounds i16, ptr %pack.i, i32 108
  %242 = ptrtoint ptr %arrayinit.element340.i to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 -16571, ptr %arrayinit.element340.i, align 2
  %arrayinit.element341.i = getelementptr inbounds i16, ptr %pack.i, i32 109
  %243 = ptrtoint ptr %arrayinit.element341.i to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 0, ptr %arrayinit.element341.i, align 2
  %arrayinit.element342.i = getelementptr inbounds i16, ptr %pack.i, i32 110
  %244 = ptrtoint ptr %arrayinit.element342.i to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 -16570, ptr %arrayinit.element342.i, align 2
  %arrayinit.element343.i = getelementptr inbounds i16, ptr %pack.i, i32 111
  %245 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %width.i, align 4
  %247 = lshr i32 %246, 4
  %248 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %height.i, align 8
  %250 = lshr i32 %249, 4
  %mul348.i = mul i32 %250, %247
  %conv349.i = trunc i32 %mul348.i to i16
  %251 = ptrtoint ptr %arrayinit.element343.i to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 %conv349.i, ptr %arrayinit.element343.i, align 2
  %arrayinit.element350.i = getelementptr inbounds i16, ptr %pack.i, i32 112
  %252 = ptrtoint ptr %arrayinit.element350.i to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 -16569, ptr %arrayinit.element350.i, align 2
  %arrayinit.element351.i = getelementptr inbounds i16, ptr %pack.i, i32 113
  %253 = ptrtoint ptr %arrayinit.element351.i to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 0, ptr %arrayinit.element351.i, align 2
  %arrayinit.element352.i = getelementptr inbounds i16, ptr %pack.i, i32 114
  %254 = ptrtoint ptr %arrayinit.element352.i to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 -16540, ptr %arrayinit.element352.i, align 2
  %arrayinit.element353.i = getelementptr inbounds i16, ptr %pack.i, i32 115
  %255 = ptrtoint ptr %arrayinit.element353.i to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 0, ptr %arrayinit.element353.i, align 2
  %arrayinit.element354.i = getelementptr inbounds i16, ptr %pack.i, i32 116
  %256 = ptrtoint ptr %arrayinit.element354.i to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 -16539, ptr %arrayinit.element354.i, align 2
  %arrayinit.element355.i = getelementptr inbounds i16, ptr %pack.i, i32 117
  %257 = ptrtoint ptr %arrayinit.element355.i to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 0, ptr %arrayinit.element355.i, align 2
  %arrayinit.element356.i = getelementptr inbounds i16, ptr %pack.i, i32 118
  %258 = ptrtoint ptr %arrayinit.element356.i to i32
  call void @__asan_store2_noabort(i32 %258)
  store i16 -16616, ptr %arrayinit.element356.i, align 2
  %arrayinit.element357.i = getelementptr inbounds i16, ptr %pack.i, i32 119
  %arrayidx358.i = getelementptr i32, ptr %framelen, i32 4
  %259 = ptrtoint ptr %arrayidx358.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %arrayidx358.i, align 4
  %conv359.i = trunc i32 %260 to i16
  %261 = ptrtoint ptr %arrayinit.element357.i to i32
  call void @__asan_store2_noabort(i32 %261)
  store i16 %conv359.i, ptr %arrayinit.element357.i, align 2
  %arrayinit.element360.i = getelementptr inbounds i16, ptr %pack.i, i32 120
  %262 = ptrtoint ptr %arrayinit.element360.i to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 -16615, ptr %arrayinit.element360.i, align 2
  %arrayinit.element361.i = getelementptr inbounds i16, ptr %pack.i, i32 121
  %arrayidx362.i = getelementptr i32, ptr %framelen, i32 5
  %263 = ptrtoint ptr %arrayidx362.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %arrayidx362.i, align 4
  %conv363.i = trunc i32 %264 to i16
  %265 = ptrtoint ptr %arrayinit.element361.i to i32
  call void @__asan_store2_noabort(i32 %265)
  store i16 %conv363.i, ptr %arrayinit.element361.i, align 2
  %arrayinit.element364.i = getelementptr inbounds i16, ptr %pack.i, i32 122
  %266 = ptrtoint ptr %arrayinit.element364.i to i32
  call void @__asan_store2_noabort(i32 %266)
  store i16 -16614, ptr %arrayinit.element364.i, align 2
  %arrayinit.element365.i = getelementptr inbounds i16, ptr %pack.i, i32 123
  %arrayidx366.i = getelementptr i32, ptr %framelen, i32 6
  %267 = ptrtoint ptr %arrayidx366.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %arrayidx366.i, align 4
  %conv367.i = trunc i32 %268 to i16
  %269 = ptrtoint ptr %arrayinit.element365.i to i32
  call void @__asan_store2_noabort(i32 %269)
  store i16 %conv367.i, ptr %arrayinit.element365.i, align 2
  %arrayinit.element368.i = getelementptr inbounds i16, ptr %pack.i, i32 124
  %270 = ptrtoint ptr %arrayinit.element368.i to i32
  call void @__asan_store2_noabort(i32 %270)
  store i16 -16613, ptr %arrayinit.element368.i, align 2
  %arrayinit.element369.i = getelementptr inbounds i16, ptr %pack.i, i32 125
  %arrayidx370.i = getelementptr i32, ptr %framelen, i32 7
  %271 = ptrtoint ptr %arrayidx370.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %arrayidx370.i, align 4
  %conv371.i = trunc i32 %272 to i16
  %273 = ptrtoint ptr %arrayinit.element369.i to i32
  call void @__asan_store2_noabort(i32 %273)
  store i16 %conv371.i, ptr %arrayinit.element369.i, align 2
  %arrayinit.element372.i = getelementptr inbounds i16, ptr %pack.i, i32 126
  %274 = ptrtoint ptr %arrayinit.element372.i to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 0, ptr %arrayinit.element372.i, align 2
  %arrayinit.element373.i = getelementptr inbounds i16, ptr %pack.i, i32 127
  %275 = ptrtoint ptr %arrayinit.element373.i to i32
  call void @__asan_store2_noabort(i32 %275)
  store i16 0, ptr %arrayinit.element373.i, align 2
  %arrayinit.element374.i = getelementptr inbounds i16, ptr %pack.i, i32 128
  %276 = ptrtoint ptr %arrayinit.element374.i to i32
  call void @__asan_store2_noabort(i32 %276)
  store i16 8200, ptr %arrayinit.element374.i, align 2
  %arrayinit.element375.i = getelementptr inbounds i16, ptr %pack.i, i32 129
  %277 = ptrtoint ptr %arrayinit.element375.i to i32
  call void @__asan_store2_noabort(i32 %277)
  store i16 0, ptr %arrayinit.element375.i, align 2
  %arrayinit.element376.i = getelementptr inbounds i16, ptr %pack.i, i32 130
  %278 = ptrtoint ptr %arrayinit.element376.i to i32
  call void @__asan_store2_noabort(i32 %278)
  store i16 -16554, ptr %arrayinit.element376.i, align 2
  %arrayinit.element377.i = getelementptr inbounds i16, ptr %pack.i, i32 131
  %279 = ptrtoint ptr %arrayinit.element377.i to i32
  call void @__asan_store2_noabort(i32 %279)
  store i16 4, ptr %arrayinit.element377.i, align 2
  %arrayinit.element378.i = getelementptr inbounds i16, ptr %pack.i, i32 132
  %280 = ptrtoint ptr %arrayinit.element378.i to i32
  call void @__asan_store2_noabort(i32 %280)
  store i16 -16553, ptr %arrayinit.element378.i, align 2
  %arrayinit.element379.i = getelementptr inbounds i16, ptr %pack.i, i32 133
  %281 = ptrtoint ptr %arrayinit.element379.i to i32
  call void @__asan_store2_noabort(i32 %281)
  store i16 0, ptr %arrayinit.element379.i, align 2
  %arrayinit.element380.i = getelementptr inbounds i16, ptr %pack.i, i32 134
  %282 = ptrtoint ptr %arrayinit.element380.i to i32
  call void @__asan_store2_noabort(i32 %282)
  store i16 -16552, ptr %arrayinit.element380.i, align 2
  %arrayinit.element381.i = getelementptr inbounds i16, ptr %pack.i, i32 135
  %283 = ptrtoint ptr %arrayinit.element381.i to i32
  call void @__asan_store2_noabort(i32 %283)
  store i16 5, ptr %arrayinit.element381.i, align 2
  %arrayinit.element382.i = getelementptr inbounds i16, ptr %pack.i, i32 136
  %284 = ptrtoint ptr %arrayinit.element382.i to i32
  call void @__asan_store2_noabort(i32 %284)
  store i16 -16551, ptr %arrayinit.element382.i, align 2
  %arrayinit.element383.i = getelementptr inbounds i16, ptr %pack.i, i32 137
  %285 = ptrtoint ptr %arrayinit.element383.i to i32
  call void @__asan_store2_noabort(i32 %285)
  store i16 0, ptr %arrayinit.element383.i, align 2
  %arrayinit.element384.i = getelementptr inbounds i16, ptr %pack.i, i32 138
  %286 = ptrtoint ptr %arrayinit.element384.i to i32
  call void @__asan_store2_noabort(i32 %286)
  store i16 -16550, ptr %arrayinit.element384.i, align 2
  %arrayinit.element385.i = getelementptr inbounds i16, ptr %pack.i, i32 139
  %287 = ptrtoint ptr %arrayinit.element385.i to i32
  call void @__asan_store2_noabort(i32 %287)
  store i16 6, ptr %arrayinit.element385.i, align 2
  %arrayinit.element386.i = getelementptr inbounds i16, ptr %pack.i, i32 140
  %288 = ptrtoint ptr %arrayinit.element386.i to i32
  call void @__asan_store2_noabort(i32 %288)
  store i16 -16549, ptr %arrayinit.element386.i, align 2
  %arrayinit.element387.i = getelementptr inbounds i16, ptr %pack.i, i32 141
  %289 = ptrtoint ptr %arrayinit.element387.i to i32
  call void @__asan_store2_noabort(i32 %289)
  store i16 0, ptr %arrayinit.element387.i, align 2
  %arrayinit.element388.i = getelementptr inbounds i16, ptr %pack.i, i32 142
  %290 = ptrtoint ptr %arrayinit.element388.i to i32
  call void @__asan_store2_noabort(i32 %290)
  store i16 -16548, ptr %arrayinit.element388.i, align 2
  %arrayinit.element389.i = getelementptr inbounds i16, ptr %pack.i, i32 143
  %291 = ptrtoint ptr %arrayinit.element389.i to i32
  call void @__asan_store2_noabort(i32 %291)
  store i16 8, ptr %arrayinit.element389.i, align 2
  %arrayinit.element390.i = getelementptr inbounds i16, ptr %pack.i, i32 144
  %292 = ptrtoint ptr %arrayinit.element390.i to i32
  call void @__asan_store2_noabort(i32 %292)
  store i16 -16547, ptr %arrayinit.element390.i, align 2
  %arrayinit.element391.i = getelementptr inbounds i16, ptr %pack.i, i32 145
  %arrayinit.element406.i = getelementptr inbounds i16, ptr %pack.i, i32 160
  %293 = call ptr @memset(ptr %arrayinit.element391.i, i32 0, i32 30)
  %294 = ptrtoint ptr %arrayinit.element406.i to i32
  call void @__asan_store2_noabort(i32 %294)
  store i16 8206, ptr %arrayinit.element406.i, align 2
  %arrayinit.element407.i = getelementptr inbounds i16, ptr %pack.i, i32 161
  %295 = ptrtoint ptr %arrayinit.element407.i to i32
  call void @__asan_store2_noabort(i32 %295)
  store i16 0, ptr %arrayinit.element407.i, align 2
  %arrayinit.element408.i = getelementptr inbounds i16, ptr %pack.i, i32 162
  %296 = ptrtoint ptr %arrayinit.element408.i to i32
  call void @__asan_store2_noabort(i32 %296)
  store i16 -16624, ptr %arrayinit.element408.i, align 2
  %arrayinit.element409.i = getelementptr inbounds i16, ptr %pack.i, i32 163
  %297 = ptrtoint ptr %arrayinit.element409.i to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 0, ptr %arrayinit.element409.i, align 2
  %arrayinit.element410.i = getelementptr inbounds i16, ptr %pack.i, i32 164
  %298 = ptrtoint ptr %arrayinit.element410.i to i32
  call void @__asan_store2_noabort(i32 %298)
  store i16 -16623, ptr %arrayinit.element410.i, align 2
  %arrayinit.element411.i = getelementptr inbounds i16, ptr %pack.i, i32 165
  %299 = ptrtoint ptr %arrayinit.element411.i to i32
  call void @__asan_store2_noabort(i32 %299)
  store i16 0, ptr %arrayinit.element411.i, align 2
  %arrayinit.element412.i = getelementptr inbounds i16, ptr %pack.i, i32 166
  %300 = ptrtoint ptr %arrayinit.element412.i to i32
  call void @__asan_store2_noabort(i32 %300)
  store i16 -16622, ptr %arrayinit.element412.i, align 2
  %arrayinit.element413.i = getelementptr inbounds i16, ptr %pack.i, i32 167
  %301 = ptrtoint ptr %arrayinit.element413.i to i32
  call void @__asan_store2_noabort(i32 %301)
  store i16 0, ptr %arrayinit.element413.i, align 2
  %arrayinit.element414.i = getelementptr inbounds i16, ptr %pack.i, i32 168
  %302 = ptrtoint ptr %arrayinit.element414.i to i32
  call void @__asan_store2_noabort(i32 %302)
  store i16 -16621, ptr %arrayinit.element414.i, align 2
  %arrayinit.element415.i = getelementptr inbounds i16, ptr %pack.i, i32 169
  %303 = ptrtoint ptr %arrayinit.element415.i to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 0, ptr %arrayinit.element415.i, align 2
  %arrayinit.element416.i = getelementptr inbounds i16, ptr %pack.i, i32 170
  %304 = ptrtoint ptr %arrayinit.element416.i to i32
  call void @__asan_store2_noabort(i32 %304)
  store i16 -16620, ptr %arrayinit.element416.i, align 2
  %arrayinit.element417.i = getelementptr inbounds i16, ptr %pack.i, i32 171
  %305 = ptrtoint ptr %arrayinit.element417.i to i32
  call void @__asan_store2_noabort(i32 %305)
  store i16 0, ptr %arrayinit.element417.i, align 2
  %arrayinit.element418.i = getelementptr inbounds i16, ptr %pack.i, i32 172
  %306 = ptrtoint ptr %arrayinit.element418.i to i32
  call void @__asan_store2_noabort(i32 %306)
  store i16 -16619, ptr %arrayinit.element418.i, align 2
  %arrayinit.element419.i = getelementptr inbounds i16, ptr %pack.i, i32 173
  %307 = ptrtoint ptr %arrayinit.element419.i to i32
  call void @__asan_store2_noabort(i32 %307)
  store i16 0, ptr %arrayinit.element419.i, align 2
  %arrayinit.element420.i = getelementptr inbounds i16, ptr %pack.i, i32 174
  %308 = ptrtoint ptr %arrayinit.element420.i to i32
  call void @__asan_store2_noabort(i32 %308)
  store i16 -16618, ptr %arrayinit.element420.i, align 2
  %arrayinit.element421.i = getelementptr inbounds i16, ptr %pack.i, i32 175
  %309 = ptrtoint ptr %arrayinit.element421.i to i32
  call void @__asan_store2_noabort(i32 %309)
  store i16 0, ptr %arrayinit.element421.i, align 2
  %arrayinit.element422.i = getelementptr inbounds i16, ptr %pack.i, i32 176
  %310 = ptrtoint ptr %arrayinit.element422.i to i32
  call void @__asan_store2_noabort(i32 %310)
  store i16 -16617, ptr %arrayinit.element422.i, align 2
  %arrayinit.element423.i = getelementptr inbounds i16, ptr %pack.i, i32 177
  %311 = ptrtoint ptr %arrayinit.element423.i to i32
  call void @__asan_store2_noabort(i32 %311)
  store i16 0, ptr %arrayinit.element423.i, align 2
  %arrayinit.element424.i = getelementptr inbounds i16, ptr %pack.i, i32 178
  %312 = ptrtoint ptr %arrayinit.element424.i to i32
  call void @__asan_store2_noabort(i32 %312)
  store i16 -16514, ptr %arrayinit.element424.i, align 2
  %arrayinit.element425.i = getelementptr inbounds i16, ptr %pack.i, i32 179
  %313 = ptrtoint ptr %arrayinit.element425.i to i32
  call void @__asan_store2_noabort(i32 %313)
  store i16 0, ptr %arrayinit.element425.i, align 2
  %arrayinit.element426.i = getelementptr inbounds i16, ptr %pack.i, i32 180
  %314 = ptrtoint ptr %arrayinit.element426.i to i32
  call void @__asan_store2_noabort(i32 %314)
  store i16 -16513, ptr %arrayinit.element426.i, align 2
  %arrayinit.element427.i = getelementptr inbounds i16, ptr %pack.i, i32 181
  %315 = ptrtoint ptr %arrayinit.element427.i to i32
  call void @__asan_store2_noabort(i32 %315)
  store i16 1, ptr %arrayinit.element427.i, align 2
  %arrayinit.element428.i = getelementptr inbounds i16, ptr %pack.i, i32 182
  %316 = ptrtoint ptr %arrayinit.element428.i to i32
  call void @__asan_store2_noabort(i32 %316)
  store i16 -16558, ptr %arrayinit.element428.i, align 2
  %arrayinit.element429.i = getelementptr inbounds i16, ptr %pack.i, i32 183
  %317 = ptrtoint ptr %framelen to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %framelen, align 4
  %conv431.i = trunc i32 %318 to i16
  %319 = ptrtoint ptr %arrayinit.element429.i to i32
  call void @__asan_store2_noabort(i32 %319)
  store i16 %conv431.i, ptr %arrayinit.element429.i, align 2
  %arrayinit.element432.i = getelementptr inbounds i16, ptr %pack.i, i32 184
  %320 = ptrtoint ptr %arrayinit.element432.i to i32
  call void @__asan_store2_noabort(i32 %320)
  store i16 -16557, ptr %arrayinit.element432.i, align 2
  %arrayinit.element433.i = getelementptr inbounds i16, ptr %pack.i, i32 185
  %arrayidx434.i = getelementptr i32, ptr %framelen, i32 1
  %321 = ptrtoint ptr %arrayidx434.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %arrayidx434.i, align 4
  %conv435.i = trunc i32 %322 to i16
  %323 = ptrtoint ptr %arrayinit.element433.i to i32
  call void @__asan_store2_noabort(i32 %323)
  store i16 %conv435.i, ptr %arrayinit.element433.i, align 2
  %arrayinit.element436.i = getelementptr inbounds i16, ptr %pack.i, i32 186
  %324 = ptrtoint ptr %arrayinit.element436.i to i32
  call void @__asan_store2_noabort(i32 %324)
  store i16 -16556, ptr %arrayinit.element436.i, align 2
  %arrayinit.element437.i = getelementptr inbounds i16, ptr %pack.i, i32 187
  %arrayidx438.i = getelementptr i32, ptr %framelen, i32 2
  %325 = ptrtoint ptr %arrayidx438.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %arrayidx438.i, align 4
  %conv439.i = trunc i32 %326 to i16
  %327 = ptrtoint ptr %arrayinit.element437.i to i32
  call void @__asan_store2_noabort(i32 %327)
  store i16 %conv439.i, ptr %arrayinit.element437.i, align 2
  %arrayinit.element440.i = getelementptr inbounds i16, ptr %pack.i, i32 188
  %328 = ptrtoint ptr %arrayinit.element440.i to i32
  call void @__asan_store2_noabort(i32 %328)
  store i16 -16555, ptr %arrayinit.element440.i, align 2
  %arrayinit.element441.i = getelementptr inbounds i16, ptr %pack.i, i32 189
  %arrayidx442.i = getelementptr i32, ptr %framelen, i32 3
  %329 = ptrtoint ptr %arrayidx442.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %arrayidx442.i, align 4
  %conv443.i = trunc i32 %330 to i16
  %331 = ptrtoint ptr %arrayinit.element441.i to i32
  call void @__asan_store2_noabort(i32 %331)
  store i16 %conv443.i, ptr %arrayinit.element441.i, align 2
  %arrayinit.element444.i = getelementptr inbounds i16, ptr %pack.i, i32 190
  %332 = ptrtoint ptr %arrayinit.element444.i to i32
  call void @__asan_store2_noabort(i32 %332)
  store i16 0, ptr %arrayinit.element444.i, align 2
  %arrayinit.element445.i = getelementptr inbounds i16, ptr %pack.i, i32 191
  %333 = ptrtoint ptr %arrayinit.element445.i to i32
  call void @__asan_store2_noabort(i32 %333)
  store i16 0, ptr %arrayinit.element445.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %space)
  %cmp.i.i = icmp slt i32 %space, 192
  br i1 %cmp.i.i, label %cond.end180.i.brctrl_to_package.exit_crit_edge, label %cond.end180.i.for.body.i.i_crit_edge

cond.end180.i.for.body.i.i_crit_edge:             ; preds = %cond.end180.i
  br label %for.body.i.i

cond.end180.i.brctrl_to_package.exit_crit_edge:   ; preds = %cond.end180.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brctrl_to_package.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %cond.end180.i.for.body.i.i_crit_edge
  %i.09.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %cond.end180.i.for.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i16, ptr %pack.i, i32 %i.09.i.i
  %334 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %334)
  %335 = load i16, ptr %add.ptr.i.i, align 2
  %336 = tail call i16 @llvm.bswap.i16(i16 %335) #10
  %arrayidx.i.i = getelementptr i16, ptr %code, i32 %i.09.i.i
  %337 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %337)
  store i16 %336, ptr %arrayidx.i.i, align 2
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 192
  br i1 %exitcond.not.i.i, label %for.body.i.i.brctrl_to_package.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.brctrl_to_package.exit_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brctrl_to_package.exit

brctrl_to_package.exit:                           ; preds = %for.body.i.i.brctrl_to_package.exit_crit_edge, %cond.end180.i.brctrl_to_package.exit_crit_edge
  %retval.0.i.i = phi i32 [ -1, %cond.end180.i.brctrl_to_package.exit_crit_edge ], [ 192, %for.body.i.i.brctrl_to_package.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %pack.i) #10
  br label %return

sw.bb8:                                           ; preds = %entry
  %sensor_framerate.i119 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 32
  %338 = ptrtoint ptr %sensor_framerate.i119 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %sensor_framerate.i119, align 8
  %fps_scale.i120 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 40
  %340 = ptrtoint ptr %fps_scale.i120 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %fps_scale.i120, align 8
  %interlace_coding.i121 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 44
  %342 = ptrtoint ptr %interlace_coding.i121 to i32
  call void @__asan_load1_noabort(i32 %342)
  %bf.load.i122 = load i8, ptr %interlace_coding.i121, align 8
  %343 = and i8 %bf.load.i122, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %343)
  %tobool.not.i123 = icmp eq i8 %343, 0
  %height3.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 34
  %344 = ptrtoint ptr %height3.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %height3.i, align 8
  %..i124 = select i1 %tobool.not.i123, i32 16, i32 32
  %.414.i = select i1 %tobool.not.i123, i16 8, i16 9
  %.415.i = select i1 %tobool.not.i123, i16 432, i16 368
  %div4.i = sdiv i32 %345, %..i124
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %pack.i118) #10
  %346 = getelementptr inbounds i8, ptr %pack.i118, i32 78
  %347 = call ptr @memset(ptr %346, i32 255, i32 242)
  %348 = ptrtoint ptr %pack.i118 to i32
  call void @__asan_store2_noabort(i32 %348)
  store i16 8206, ptr %pack.i118, align 2
  %arrayinit.element.i = getelementptr inbounds i16, ptr %pack.i118, i32 1
  %349 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %349)
  store i16 0, ptr %arrayinit.element.i, align 2
  %arrayinit.element5.i = getelementptr inbounds i16, ptr %pack.i118, i32 2
  %350 = ptrtoint ptr %arrayinit.element5.i to i32
  call void @__asan_store2_noabort(i32 %350)
  store i16 -16382, ptr %arrayinit.element5.i, align 2
  %arrayinit.element6.i = getelementptr inbounds i16, ptr %pack.i118, i32 3
  %351 = ptrtoint ptr %arrayinit.element6.i to i32
  call void @__asan_store2_noabort(i32 %351)
  store i16 5300, ptr %arrayinit.element6.i, align 2
  %arrayinit.element7.i = getelementptr inbounds i16, ptr %pack.i118, i32 4
  %352 = ptrtoint ptr %arrayinit.element7.i to i32
  call void @__asan_store2_noabort(i32 %352)
  store i16 -16381, ptr %arrayinit.element7.i, align 2
  %arrayinit.element8.i = getelementptr inbounds i16, ptr %pack.i118, i32 5
  %353 = ptrtoint ptr %arrayinit.element8.i to i32
  call void @__asan_store2_noabort(i32 %353)
  store i16 10420, ptr %arrayinit.element8.i, align 2
  %arrayinit.element9.i = getelementptr inbounds i16, ptr %pack.i118, i32 6
  %354 = ptrtoint ptr %arrayinit.element9.i to i32
  call void @__asan_store2_noabort(i32 %354)
  store i16 -16380, ptr %arrayinit.element9.i, align 2
  %arrayinit.element10.i = getelementptr inbounds i16, ptr %pack.i118, i32 7
  %355 = ptrtoint ptr %arrayinit.element10.i to i32
  call void @__asan_store2_noabort(i32 %355)
  store i16 15450, ptr %arrayinit.element10.i, align 2
  %arrayinit.element11.i = getelementptr inbounds i16, ptr %pack.i118, i32 8
  %356 = ptrtoint ptr %arrayinit.element11.i to i32
  call void @__asan_store2_noabort(i32 %356)
  store i16 -9211, ptr %arrayinit.element11.i, align 2
  %arrayinit.element12.i = getelementptr inbounds i16, ptr %pack.i118, i32 9
  %357 = ptrtoint ptr %arrayinit.element12.i to i32
  call void @__asan_store2_noabort(i32 %357)
  store i16 10871, ptr %arrayinit.element12.i, align 2
  %arrayinit.element13.i = getelementptr inbounds i16, ptr %pack.i118, i32 10
  %358 = ptrtoint ptr %arrayinit.element13.i to i32
  call void @__asan_store2_noabort(i32 %358)
  store i16 -14653, ptr %arrayinit.element13.i, align 2
  %arrayinit.element14.i = getelementptr inbounds i16, ptr %pack.i118, i32 11
  %format.i125 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 38
  %359 = ptrtoint ptr %format.i125 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %format.i125, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 877088845, i32 %360)
  %cmp.i126 = icmp ne i32 %360, 877088845
  call void @__sanitizer_cov_trace_const_cmp4(i32 859189832, i32 %360)
  %cmp18.i127 = icmp ne i32 %360, 859189832
  %361 = and i1 %cmp.i126, %cmp18.i127
  %cond21.i = zext i1 %361 to i16
  %362 = ptrtoint ptr %arrayinit.element14.i to i32
  call void @__asan_store2_noabort(i32 %362)
  store i16 %cond21.i, ptr %arrayinit.element14.i, align 2
  %arrayinit.element22.i = getelementptr inbounds i16, ptr %pack.i118, i32 12
  %363 = ptrtoint ptr %arrayinit.element22.i to i32
  call void @__asan_store2_noabort(i32 %363)
  store i16 -14720, ptr %arrayinit.element22.i, align 2
  %arrayinit.element23.i = getelementptr inbounds i16, ptr %pack.i118, i32 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 859189832, i32 %360)
  %cmp30.i = icmp eq i32 %360, 859189832
  %phi.cast399.i = select i1 %cmp30.i, i16 97, i16 211
  %cond34.i = select i1 %cmp.i126, i16 %phi.cast399.i, i16 241
  %364 = ptrtoint ptr %arrayinit.element23.i to i32
  call void @__asan_store2_noabort(i32 %364)
  store i16 %cond34.i, ptr %arrayinit.element23.i, align 2
  %arrayinit.element36.i = getelementptr inbounds i16, ptr %pack.i118, i32 14
  %365 = ptrtoint ptr %arrayinit.element36.i to i32
  call void @__asan_store2_noabort(i32 %365)
  store i16 -14464, ptr %arrayinit.element36.i, align 2
  %arrayinit.element37.i = getelementptr inbounds i16, ptr %pack.i118, i32 15
  %366 = ptrtoint ptr %arrayinit.element37.i to i32
  call void @__asan_store2_noabort(i32 %366)
  store i16 320, ptr %arrayinit.element37.i, align 2
  %arrayinit.element38.i = getelementptr inbounds i16, ptr %pack.i118, i32 16
  %367 = ptrtoint ptr %arrayinit.element38.i to i32
  call void @__asan_store2_noabort(i32 %367)
  store i16 -8183, ptr %arrayinit.element38.i, align 2
  %arrayinit.element39.i = getelementptr inbounds i16, ptr %pack.i118, i32 17
  %368 = ptrtoint ptr %arrayinit.element39.i to i32
  call void @__asan_store2_noabort(i32 %368)
  store i16 1, ptr %arrayinit.element39.i, align 2
  %arrayinit.element40.i = getelementptr inbounds i16, ptr %pack.i118, i32 18
  %369 = ptrtoint ptr %arrayinit.element40.i to i32
  call void @__asan_store2_noabort(i32 %369)
  store i16 -14833, ptr %arrayinit.element40.i, align 2
  %arrayinit.element41.i = getelementptr inbounds i16, ptr %pack.i118, i32 19
  %370 = ptrtoint ptr %arrayinit.element41.i to i32
  call void @__asan_store2_noabort(i32 %370)
  store i16 8, ptr %arrayinit.element41.i, align 2
  %arrayinit.element42.i = getelementptr inbounds i16, ptr %pack.i118, i32 20
  %371 = ptrtoint ptr %arrayinit.element42.i to i32
  call void @__asan_store2_noabort(i32 %371)
  store i16 -11009, ptr %arrayinit.element42.i, align 2
  %arrayinit.element43.i = getelementptr inbounds i16, ptr %pack.i118, i32 21
  %372 = ptrtoint ptr %arrayinit.element43.i to i32
  call void @__asan_store2_noabort(i32 %372)
  store i16 2, ptr %arrayinit.element43.i, align 2
  %arrayinit.element44.i = getelementptr inbounds i16, ptr %pack.i118, i32 22
  %373 = ptrtoint ptr %arrayinit.element44.i to i32
  call void @__asan_store2_noabort(i32 %373)
  store i16 -7165, ptr %arrayinit.element44.i, align 2
  %arrayinit.element45.i = getelementptr inbounds i16, ptr %pack.i118, i32 23
  %374 = ptrtoint ptr %arrayinit.element45.i to i32
  call void @__asan_store2_noabort(i32 %374)
  store i16 2340, ptr %arrayinit.element45.i, align 2
  %arrayinit.element46.i = getelementptr inbounds i16, ptr %pack.i118, i32 24
  %375 = ptrtoint ptr %arrayinit.element46.i to i32
  call void @__asan_store2_noabort(i32 %375)
  store i16 -7162, ptr %arrayinit.element46.i, align 2
  %arrayinit.element47.i = getelementptr inbounds i16, ptr %pack.i118, i32 25
  %376 = ptrtoint ptr %arrayinit.element47.i to i32
  call void @__asan_store2_noabort(i32 %376)
  store i16 75, ptr %arrayinit.element47.i, align 2
  %arrayinit.element48.i = getelementptr inbounds i16, ptr %pack.i118, i32 26
  %377 = ptrtoint ptr %arrayinit.element48.i to i32
  call void @__asan_store2_noabort(i32 %377)
  store i16 -11247, ptr %arrayinit.element48.i, align 2
  %arrayinit.element49.i = getelementptr inbounds i16, ptr %pack.i118, i32 27
  %378 = ptrtoint ptr %arrayinit.element49.i to i32
  call void @__asan_store2_noabort(i32 %378)
  store i16 1, ptr %arrayinit.element49.i, align 2
  %arrayinit.element50.i = getelementptr inbounds i16, ptr %pack.i118, i32 28
  %379 = ptrtoint ptr %arrayinit.element50.i to i32
  call void @__asan_store2_noabort(i32 %379)
  store i16 -11248, ptr %arrayinit.element50.i, align 2
  %arrayinit.element51.i = getelementptr inbounds i16, ptr %pack.i118, i32 29
  %380 = ptrtoint ptr %arrayinit.element51.i to i32
  call void @__asan_store2_noabort(i32 %380)
  store i16 -24106, ptr %arrayinit.element51.i, align 2
  %arrayinit.element52.i = getelementptr inbounds i16, ptr %pack.i118, i32 30
  %381 = ptrtoint ptr %arrayinit.element52.i to i32
  call void @__asan_store2_noabort(i32 %381)
  store i16 1, ptr %arrayinit.element52.i, align 2
  %arrayinit.element53.i = getelementptr inbounds i16, ptr %pack.i118, i32 31
  %382 = ptrtoint ptr %arrayinit.element53.i to i32
  call void @__asan_store2_noabort(i32 %382)
  store i16 10241, ptr %arrayinit.element53.i, align 2
  %arrayinit.element54.i = getelementptr inbounds i16, ptr %pack.i118, i32 32
  %383 = ptrtoint ptr %arrayinit.element54.i to i32
  call void @__asan_store2_noabort(i32 %383)
  store i16 8205, ptr %arrayinit.element54.i, align 2
  %arrayinit.element55.i = getelementptr inbounds i16, ptr %pack.i118, i32 33
  %384 = ptrtoint ptr %arrayinit.element55.i to i32
  call void @__asan_store2_noabort(i32 %384)
  store i16 0, ptr %arrayinit.element55.i, align 2
  %arrayinit.element56.i = getelementptr inbounds i16, ptr %pack.i118, i32 34
  %385 = ptrtoint ptr %arrayinit.element56.i to i32
  call void @__asan_store2_noabort(i32 %385)
  store i16 -7166, ptr %arrayinit.element56.i, align 2
  %arrayinit.element57.i = getelementptr inbounds i16, ptr %pack.i118, i32 35
  %386 = ptrtoint ptr %arrayinit.element57.i to i32
  call void @__asan_store2_noabort(i32 %386)
  store i16 395, ptr %arrayinit.element57.i, align 2
  %arrayinit.element58.i = getelementptr inbounds i16, ptr %pack.i118, i32 36
  %387 = ptrtoint ptr %arrayinit.element58.i to i32
  call void @__asan_store2_noabort(i32 %387)
  store i16 -7167, ptr %arrayinit.element58.i, align 2
  %arrayinit.element59.i = getelementptr inbounds i16, ptr %pack.i118, i32 37
  %388 = ptrtoint ptr %arrayinit.element59.i to i32
  call void @__asan_store2_noabort(i32 %388)
  store i16 -29951, ptr %arrayinit.element59.i, align 2
  %arrayinit.element60.i = getelementptr inbounds i16, ptr %pack.i118, i32 38
  %389 = ptrtoint ptr %arrayinit.element60.i to i32
  call void @__asan_store2_noabort(i32 %389)
  store i16 -11150, ptr %arrayinit.element60.i, align 2
  %board_info.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 2
  %390 = ptrtoint ptr %board_info.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %board_info.i, align 4
  %sensor_flags.i = getelementptr inbounds %struct.go7007_board_info, ptr %391, i32 0, i32 2
  %392 = ptrtoint ptr %sensor_flags.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %sensor_flags.i, align 4
  %and.i = and i32 %393, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool62.not.i = icmp eq i32 %and.i, 0
  %spec.select.i128 = select i1 %tobool62.not.i, i16 368, i16 %.415.i
  %394 = ptrtoint ptr %346 to i32
  call void @__asan_store2_noabort(i32 %394)
  store i16 %spec.select.i128, ptr %346, align 2
  %arrayinit.element71.i = getelementptr inbounds i16, ptr %pack.i118, i32 40
  %395 = ptrtoint ptr %arrayinit.element71.i to i32
  call void @__asan_store2_noabort(i32 %395)
  store i16 -11147, ptr %arrayinit.element71.i, align 2
  %arrayinit.element72.i = getelementptr inbounds i16, ptr %pack.i118, i32 41
  %396 = ptrtoint ptr %sensor_flags.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %sensor_flags.i, align 4
  %and75.i = and i32 %397, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool76.not.i129 = icmp eq i32 %and75.i, 0
  %398 = select i1 %tobool76.not.i129, i16 9, i16 %.414.i
  %399 = ptrtoint ptr %arrayinit.element72.i to i32
  call void @__asan_store2_noabort(i32 %399)
  store i16 %398, ptr %arrayinit.element72.i, align 2
  %arrayinit.element88.i = getelementptr inbounds i16, ptr %pack.i118, i32 42
  %400 = ptrtoint ptr %arrayinit.element88.i to i32
  call void @__asan_store2_noabort(i32 %400)
  store i16 -15356, ptr %arrayinit.element88.i, align 2
  %arrayinit.element89.i = getelementptr inbounds i16, ptr %pack.i118, i32 43
  br i1 %tobool.not.i123, label %cond.false97.i, label %sw.bb8.cond.end123.i_crit_edge

sw.bb8.cond.end123.i_crit_edge:                   ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end123.i

cond.false97.i:                                   ; preds = %sw.bb8
  %401 = zext i32 %360 to i64
  call void @__sanitizer_cov_trace_switch(i64 %401, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %360, label %cond.false112.i [
    i32 877088845, label %cond.end123.thread.i
    i32 826757197, label %cond.end123.thread408.i
    i32 843534413, label %cond.end123.thread411.i
  ]

cond.end123.thread.i:                             ; preds = %cond.false97.i
  call void @__sanitizer_cov_trace_pc() #12
  %402 = ptrtoint ptr %arrayinit.element89.i to i32
  call void @__asan_store2_noabort(i32 %402)
  store i16 17, ptr %arrayinit.element89.i, align 2
  %arrayinit.element126407.i = getelementptr inbounds i16, ptr %pack.i118, i32 44
  %403 = ptrtoint ptr %arrayinit.element126407.i to i32
  call void @__asan_store2_noabort(i32 %403)
  store i16 -16630, ptr %arrayinit.element126407.i, align 2
  br label %cond.end151.i

cond.false112.i:                                  ; preds = %cond.false97.i
  call void @__sanitizer_cov_trace_pc() #12
  %phi.cast402.i = select i1 %cmp30.i, i16 8, i16 32
  br label %cond.end123.i

cond.end123.thread408.i:                          ; preds = %cond.false97.i
  call void @__sanitizer_cov_trace_pc() #12
  %404 = ptrtoint ptr %arrayinit.element89.i to i32
  call void @__asan_store2_noabort(i32 %404)
  store i16 2, ptr %arrayinit.element89.i, align 2
  %arrayinit.element126410.i = getelementptr inbounds i16, ptr %pack.i118, i32 44
  %405 = ptrtoint ptr %arrayinit.element126410.i to i32
  call void @__asan_store2_noabort(i32 %405)
  store i16 -16630, ptr %arrayinit.element126410.i, align 2
  br label %cond.end151.fold.split.i

cond.end123.thread411.i:                          ; preds = %cond.false97.i
  call void @__sanitizer_cov_trace_pc() #12
  %406 = ptrtoint ptr %arrayinit.element89.i to i32
  call void @__asan_store2_noabort(i32 %406)
  store i16 4, ptr %arrayinit.element89.i, align 2
  %arrayinit.element126413.i = getelementptr inbounds i16, ptr %pack.i118, i32 44
  %407 = ptrtoint ptr %arrayinit.element126413.i to i32
  call void @__asan_store2_noabort(i32 %407)
  store i16 -16630, ptr %arrayinit.element126413.i, align 2
  br label %cond.end151.fold.split405.i

cond.end123.i:                                    ; preds = %cond.false112.i, %sw.bb8.cond.end123.i_crit_edge
  %cond124.i = phi i16 [ 68, %sw.bb8.cond.end123.i_crit_edge ], [ %phi.cast402.i, %cond.false112.i ]
  %408 = ptrtoint ptr %arrayinit.element89.i to i32
  call void @__asan_store2_noabort(i32 %408)
  store i16 %cond124.i, ptr %arrayinit.element89.i, align 2
  %arrayinit.element126.i = getelementptr inbounds i16, ptr %pack.i118, i32 44
  %409 = ptrtoint ptr %arrayinit.element126.i to i32
  call void @__asan_store2_noabort(i32 %409)
  store i16 -16630, ptr %arrayinit.element126.i, align 2
  %410 = zext i32 %360 to i64
  call void @__sanitizer_cov_trace_switch(i64 %410, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %360, label %cond.false142.i [
    i32 877088845, label %cond.end123.i.cond.end151.i_crit_edge
    i32 826757197, label %cond.end123.i.cond.end151.fold.split.i_crit_edge
    i32 843534413, label %cond.end123.i.cond.end151.fold.split405.i_crit_edge
  ]

cond.end123.i.cond.end151.fold.split405.i_crit_edge: ; preds = %cond.end123.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end151.fold.split405.i

cond.end123.i.cond.end151.fold.split.i_crit_edge: ; preds = %cond.end123.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end151.fold.split.i

cond.end123.i.cond.end151.i_crit_edge:            ; preds = %cond.end123.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end151.i

cond.false142.i:                                  ; preds = %cond.end123.i
  call void @__sanitizer_cov_trace_pc() #12
  %cond146.i = select i1 %cmp30.i, i16 4, i16 16
  br label %cond.end151.i

cond.end151.fold.split.i:                         ; preds = %cond.end123.i.cond.end151.fold.split.i_crit_edge, %cond.end123.thread408.i
  br label %cond.end151.i

cond.end151.fold.split405.i:                      ; preds = %cond.end123.i.cond.end151.fold.split405.i_crit_edge, %cond.end123.thread411.i
  br label %cond.end151.i

cond.end151.i:                                    ; preds = %cond.end151.fold.split405.i, %cond.end151.fold.split.i, %cond.false142.i, %cond.end123.i.cond.end151.i_crit_edge, %cond.end123.thread.i
  %cond152.i = phi i16 [ 8, %cond.end123.i.cond.end151.i_crit_edge ], [ %cond146.i, %cond.false142.i ], [ 1, %cond.end151.fold.split.i ], [ 2, %cond.end151.fold.split405.i ], [ 8, %cond.end123.thread.i ]
  %arrayinit.element127.i = getelementptr inbounds i16, ptr %pack.i118, i32 45
  %div.i130 = sdiv i32 %339, %341
  %div1.i = sdiv i32 %div.i130, 1000
  %411 = shl i8 %bf.load.i122, 1
  %412 = and i8 %411, 64
  %shl.i = zext i8 %412 to i16
  %or.i131 = or i16 %cond152.i, %shl.i
  %413 = lshr i8 %bf.load.i122, 2
  %.lobit.i = and i8 %413, 1
  %414 = zext i8 %.lobit.i to i16
  %shl165.i = shl nuw nsw i16 %414, 9
  %or166.i = or i16 %or.i131, %shl165.i
  %415 = lshr i8 %bf.load.i122, 3
  %.lobit403.i = and i8 %415, 1
  %416 = zext i8 %.lobit403.i to i16
  %shl173.i = shl nuw nsw i16 %416, 10
  %or174.i = or i16 %or166.i, %shl173.i
  %417 = ptrtoint ptr %arrayinit.element127.i to i32
  call void @__asan_store2_noabort(i32 %417)
  store i16 %or174.i, ptr %arrayinit.element127.i, align 2
  %arrayinit.element176.i = getelementptr inbounds i16, ptr %pack.i118, i32 46
  %418 = ptrtoint ptr %arrayinit.element176.i to i32
  call void @__asan_store2_noabort(i32 %418)
  store i16 -16629, ptr %arrayinit.element176.i, align 2
  %arrayinit.element177.i = getelementptr inbounds i16, ptr %pack.i118, i32 47
  %419 = ptrtoint ptr %arrayinit.element177.i to i32
  call void @__asan_store2_noabort(i32 %419)
  store i16 0, ptr %arrayinit.element177.i, align 2
  %arrayinit.element178.i = getelementptr inbounds i16, ptr %pack.i118, i32 48
  %420 = ptrtoint ptr %arrayinit.element178.i to i32
  call void @__asan_store2_noabort(i32 %420)
  store i16 -8870, ptr %arrayinit.element178.i, align 2
  %arrayinit.element179.i = getelementptr inbounds i16, ptr %pack.i118, i32 49
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i122)
  %tobool183.not.i = icmp sgt i8 %bf.load.i122, -1
  %conv185.i132 = select i1 %tobool183.not.i, i16 10, i16 20
  %421 = ptrtoint ptr %arrayinit.element179.i to i32
  call void @__asan_store2_noabort(i32 %421)
  store i16 %conv185.i132, ptr %arrayinit.element179.i, align 2
  %arrayinit.element186.i133 = getelementptr inbounds i16, ptr %pack.i118, i32 50
  %422 = ptrtoint ptr %arrayinit.element186.i133 to i32
  call void @__asan_store2_noabort(i32 %422)
  store i16 -16628, ptr %arrayinit.element186.i133, align 2
  %arrayinit.element187.i134 = getelementptr inbounds i16, ptr %pack.i118, i32 51
  %423 = ptrtoint ptr %arrayinit.element187.i134 to i32
  call void @__asan_store2_noabort(i32 %423)
  store i16 0, ptr %arrayinit.element187.i134, align 2
  %arrayinit.element188.i = getelementptr inbounds i16, ptr %pack.i118, i32 52
  %424 = ptrtoint ptr %arrayinit.element188.i to i32
  call void @__asan_store2_noabort(i32 %424)
  store i16 -16627, ptr %arrayinit.element188.i, align 2
  %arrayinit.element189.i135 = getelementptr inbounds i16, ptr %pack.i118, i32 53
  %425 = ptrtoint ptr %arrayinit.element189.i135 to i32
  call void @__asan_store2_noabort(i32 %425)
  store i16 0, ptr %arrayinit.element189.i135, align 2
  %arrayinit.element190.i136 = getelementptr inbounds i16, ptr %pack.i118, i32 54
  %426 = ptrtoint ptr %arrayinit.element190.i136 to i32
  call void @__asan_store2_noabort(i32 %426)
  store i16 -14717, ptr %arrayinit.element190.i136, align 2
  %arrayinit.element191.i = getelementptr inbounds i16, ptr %pack.i118, i32 55
  %427 = ptrtoint ptr %arrayinit.element191.i to i32
  call void @__asan_store2_noabort(i32 %427)
  store i16 0, ptr %arrayinit.element191.i, align 2
  %arrayinit.element193.i137 = getelementptr inbounds i16, ptr %pack.i118, i32 56
  %428 = ptrtoint ptr %arrayinit.element193.i137 to i32
  call void @__asan_store2_noabort(i32 %428)
  store i16 -15350, ptr %arrayinit.element193.i137, align 2
  %arrayinit.element194.i138 = getelementptr inbounds i16, ptr %pack.i118, i32 57
  %width.i139 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 33
  %429 = ptrtoint ptr %width.i139 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %width.i139, align 4
  %shl195.i = shl i32 %430, 4
  %or196.i = or i32 %shl195.i, %div4.i
  %conv197.i = trunc i32 %or196.i to i16
  %431 = ptrtoint ptr %arrayinit.element194.i138 to i32
  call void @__asan_store2_noabort(i32 %431)
  store i16 %conv197.i, ptr %arrayinit.element194.i138, align 2
  %arrayinit.element198.i140 = getelementptr inbounds i16, ptr %pack.i118, i32 58
  %432 = ptrtoint ptr %arrayinit.element198.i140 to i32
  call void @__asan_store2_noabort(i32 %432)
  store i16 -8166, ptr %arrayinit.element198.i140, align 2
  %arrayinit.element199.i = getelementptr inbounds i16, ptr %pack.i118, i32 59
  %hpi_buffer_cap.i = getelementptr inbounds %struct.go7007_board_info, ptr %391, i32 0, i32 1
  %433 = ptrtoint ptr %hpi_buffer_cap.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %hpi_buffer_cap.i, align 4
  %conv201.i = trunc i32 %434 to i16
  %435 = ptrtoint ptr %arrayinit.element199.i to i32
  call void @__asan_store2_noabort(i32 %435)
  store i16 %conv201.i, ptr %arrayinit.element199.i, align 2
  %arrayinit.element202.i141 = getelementptr inbounds i16, ptr %pack.i118, i32 60
  %arrayinit.element206.i142 = getelementptr inbounds i16, ptr %pack.i118, i32 64
  %436 = ptrtoint ptr %arrayinit.element202.i141 to i32
  call void @__asan_storeN_noabort(i32 %436, i32 8)
  store i64 0, ptr %arrayinit.element202.i141, align 2
  %437 = ptrtoint ptr %arrayinit.element206.i142 to i32
  call void @__asan_store2_noabort(i32 %437)
  store i16 8200, ptr %arrayinit.element206.i142, align 2
  %arrayinit.element207.i143 = getelementptr inbounds i16, ptr %pack.i118, i32 65
  %438 = ptrtoint ptr %arrayinit.element207.i143 to i32
  call void @__asan_store2_noabort(i32 %438)
  store i16 0, ptr %arrayinit.element207.i143, align 2
  %arrayinit.element208.i144 = getelementptr inbounds i16, ptr %pack.i118, i32 66
  %439 = ptrtoint ptr %arrayinit.element208.i144 to i32
  call void @__asan_store2_noabort(i32 %439)
  store i16 -7166, ptr %arrayinit.element208.i144, align 2
  %arrayinit.element209.i145 = getelementptr inbounds i16, ptr %pack.i118, i32 67
  %440 = ptrtoint ptr %arrayinit.element209.i145 to i32
  call void @__asan_store2_noabort(i32 %440)
  store i16 136, ptr %arrayinit.element209.i145, align 2
  %arrayinit.element210.i146 = getelementptr inbounds i16, ptr %pack.i118, i32 68
  %441 = ptrtoint ptr %arrayinit.element210.i146 to i32
  call void @__asan_store2_noabort(i32 %441)
  store i16 -7167, ptr %arrayinit.element210.i146, align 2
  %arrayinit.element211.i147 = getelementptr inbounds i16, ptr %pack.i118, i32 69
  %442 = ptrtoint ptr %arrayinit.element211.i147 to i32
  call void @__asan_store2_noabort(i32 %442)
  store i16 -28927, ptr %arrayinit.element211.i147, align 2
  %arrayinit.element212.i148 = getelementptr inbounds i16, ptr %pack.i118, i32 70
  %443 = ptrtoint ptr %arrayinit.element212.i148 to i32
  call void @__asan_store2_noabort(i32 %443)
  store i16 -16534, ptr %arrayinit.element212.i148, align 2
  %arrayinit.element213.i149 = getelementptr inbounds i16, ptr %pack.i118, i32 71
  %444 = ptrtoint ptr %arrayinit.element213.i149 to i32
  call void @__asan_store2_noabort(i32 %444)
  store i16 0, ptr %arrayinit.element213.i149, align 2
  %arrayinit.element214.i150 = getelementptr inbounds i16, ptr %pack.i118, i32 72
  %445 = ptrtoint ptr %arrayinit.element214.i150 to i32
  call void @__asan_store2_noabort(i32 %445)
  store i16 -16533, ptr %arrayinit.element214.i150, align 2
  %arrayinit.element215.i = getelementptr inbounds i16, ptr %pack.i118, i32 73
  %446 = ptrtoint ptr %arrayinit.element215.i to i32
  call void @__asan_store2_noabort(i32 %446)
  store i16 0, ptr %arrayinit.element215.i, align 2
  %arrayinit.element216.i = getelementptr inbounds i16, ptr %pack.i118, i32 74
  %447 = ptrtoint ptr %arrayinit.element216.i to i32
  call void @__asan_store2_noabort(i32 %447)
  store i16 -16532, ptr %arrayinit.element216.i, align 2
  %arrayinit.element217.i151 = getelementptr inbounds i16, ptr %pack.i118, i32 75
  %448 = ptrtoint ptr %arrayinit.element217.i151 to i32
  call void @__asan_store2_noabort(i32 %448)
  store i16 0, ptr %arrayinit.element217.i151, align 2
  %arrayinit.element218.i152 = getelementptr inbounds i16, ptr %pack.i118, i32 76
  %449 = ptrtoint ptr %arrayinit.element218.i152 to i32
  call void @__asan_store2_noabort(i32 %449)
  store i16 -16531, ptr %arrayinit.element218.i152, align 2
  %arrayinit.element219.i = getelementptr inbounds i16, ptr %pack.i118, i32 77
  %450 = ptrtoint ptr %arrayinit.element219.i to i32
  call void @__asan_store2_noabort(i32 %450)
  store i16 0, ptr %arrayinit.element219.i, align 2
  %arrayinit.element220.i = getelementptr inbounds i16, ptr %pack.i118, i32 78
  %451 = ptrtoint ptr %arrayinit.element220.i to i32
  call void @__asan_store2_noabort(i32 %451)
  store i16 -16530, ptr %arrayinit.element220.i, align 2
  %arrayinit.element221.i153 = getelementptr inbounds i16, ptr %pack.i118, i32 79
  %452 = ptrtoint ptr %arrayinit.element221.i153 to i32
  call void @__asan_store2_noabort(i32 %452)
  store i16 0, ptr %arrayinit.element221.i153, align 2
  %arrayinit.element222.i154 = getelementptr inbounds i16, ptr %pack.i118, i32 80
  %453 = ptrtoint ptr %arrayinit.element222.i154 to i32
  call void @__asan_store2_noabort(i32 %453)
  store i16 -16529, ptr %arrayinit.element222.i154, align 2
  %arrayinit.element223.i = getelementptr inbounds i16, ptr %pack.i118, i32 81
  %arrayinit.element238.i = getelementptr inbounds i16, ptr %pack.i118, i32 96
  %454 = call ptr @memset(ptr %arrayinit.element223.i, i32 0, i32 30)
  %455 = ptrtoint ptr %arrayinit.element238.i to i32
  call void @__asan_store2_noabort(i32 %455)
  store i16 8206, ptr %arrayinit.element238.i, align 2
  %arrayinit.element239.i = getelementptr inbounds i16, ptr %pack.i118, i32 97
  %456 = ptrtoint ptr %arrayinit.element239.i to i32
  call void @__asan_store2_noabort(i32 %456)
  store i16 0, ptr %arrayinit.element239.i, align 2
  %arrayinit.element240.i = getelementptr inbounds i16, ptr %pack.i118, i32 98
  %457 = ptrtoint ptr %arrayinit.element240.i to i32
  call void @__asan_store2_noabort(i32 %457)
  store i16 -16538, ptr %arrayinit.element240.i, align 2
  %arrayinit.element241.i155 = getelementptr inbounds i16, ptr %pack.i118, i32 99
  %conv242.i = trunc i32 %div1.i to i16
  %458 = ptrtoint ptr %arrayinit.element241.i155 to i32
  call void @__asan_store2_noabort(i32 %458)
  store i16 %conv242.i, ptr %arrayinit.element241.i155, align 2
  %arrayinit.element243.i = getelementptr inbounds i16, ptr %pack.i118, i32 100
  %459 = ptrtoint ptr %arrayinit.element243.i to i32
  call void @__asan_store2_noabort(i32 %459)
  store i16 -16537, ptr %arrayinit.element243.i, align 2
  %arrayinit.element244.i = getelementptr inbounds i16, ptr %pack.i118, i32 101
  %460 = ptrtoint ptr %arrayinit.element244.i to i32
  call void @__asan_store2_noabort(i32 %460)
  store i16 0, ptr %arrayinit.element244.i, align 2
  %arrayinit.element245.i = getelementptr inbounds i16, ptr %pack.i118, i32 102
  %461 = ptrtoint ptr %arrayinit.element245.i to i32
  call void @__asan_store2_noabort(i32 %461)
  store i16 -16536, ptr %arrayinit.element245.i, align 2
  %arrayinit.element246.i156 = getelementptr inbounds i16, ptr %pack.i118, i32 103
  %462 = ptrtoint ptr %arrayinit.element246.i156 to i32
  call void @__asan_store2_noabort(i32 %462)
  store i16 2, ptr %arrayinit.element246.i156, align 2
  %arrayinit.element248.i = getelementptr inbounds i16, ptr %pack.i118, i32 104
  %463 = ptrtoint ptr %arrayinit.element248.i to i32
  call void @__asan_store2_noabort(i32 %463)
  store i16 -16535, ptr %arrayinit.element248.i, align 2
  %arrayinit.element249.i = getelementptr inbounds i16, ptr %pack.i118, i32 105
  %464 = ptrtoint ptr %arrayinit.element249.i to i32
  call void @__asan_store2_noabort(i32 %464)
  store i16 31, ptr %arrayinit.element249.i, align 2
  %arrayinit.element251.i157 = getelementptr inbounds i16, ptr %pack.i118, i32 106
  %465 = ptrtoint ptr %arrayinit.element251.i157 to i32
  call void @__asan_store2_noabort(i32 %465)
  store i16 -16416, ptr %arrayinit.element251.i157, align 2
  %arrayinit.element252.i158 = getelementptr inbounds i16, ptr %pack.i118, i32 107
  %466 = ptrtoint ptr %arrayinit.element252.i158 to i32
  call void @__asan_store2_noabort(i32 %466)
  store i16 0, ptr %arrayinit.element252.i158, align 2
  %arrayinit.element253.i = getelementptr inbounds i16, ptr %pack.i118, i32 108
  %467 = ptrtoint ptr %arrayinit.element253.i to i32
  call void @__asan_store2_noabort(i32 %467)
  store i16 -16415, ptr %arrayinit.element253.i, align 2
  %arrayinit.element254.i = getelementptr inbounds i16, ptr %pack.i118, i32 109
  %468 = ptrtoint ptr %arrayinit.element254.i to i32
  call void @__asan_store2_noabort(i32 %468)
  store i16 0, ptr %arrayinit.element254.i, align 2
  %arrayinit.element255.i = getelementptr inbounds i16, ptr %pack.i118, i32 110
  %469 = ptrtoint ptr %arrayinit.element255.i to i32
  call void @__asan_store2_noabort(i32 %469)
  store i16 -16414, ptr %arrayinit.element255.i, align 2
  %arrayinit.element256.i159 = getelementptr inbounds i16, ptr %pack.i118, i32 111
  %470 = ptrtoint ptr %arrayinit.element256.i159 to i32
  call void @__asan_store2_noabort(i32 %470)
  store i16 0, ptr %arrayinit.element256.i159, align 2
  %arrayinit.element257.i160 = getelementptr inbounds i16, ptr %pack.i118, i32 112
  %471 = ptrtoint ptr %arrayinit.element257.i160 to i32
  call void @__asan_store2_noabort(i32 %471)
  store i16 -16413, ptr %arrayinit.element257.i160, align 2
  %arrayinit.element258.i = getelementptr inbounds i16, ptr %pack.i118, i32 113
  %472 = ptrtoint ptr %interlace_coding.i121 to i32
  call void @__asan_load1_noabort(i32 %472)
  %bf.load260.i = load i8, ptr %interlace_coding.i121, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load260.i)
  %tobool263.not.i = icmp sgt i8 %bf.load260.i, -1
  %conv265.i = select i1 %tobool263.not.i, i16 1, i16 3
  %473 = ptrtoint ptr %arrayinit.element258.i to i32
  call void @__asan_store2_noabort(i32 %473)
  store i16 %conv265.i, ptr %arrayinit.element258.i, align 2
  %arrayinit.element266.i161 = getelementptr inbounds i16, ptr %pack.i118, i32 114
  %474 = ptrtoint ptr %arrayinit.element266.i161 to i32
  call void @__asan_store2_noabort(i32 %474)
  store i16 -16335, ptr %arrayinit.element266.i161, align 2
  %arrayinit.element267.i = getelementptr inbounds i16, ptr %pack.i118, i32 115
  %475 = ptrtoint ptr %sensor_flags.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %sensor_flags.i, align 4
  %477 = trunc i32 %476 to i16
  %478 = lshr i16 %477, 8
  %479 = and i16 %478, 1
  %480 = ptrtoint ptr %arrayinit.element267.i to i32
  call void @__asan_store2_noabort(i32 %480)
  store i16 %479, ptr %arrayinit.element267.i, align 2
  %arrayinit.element274.i162 = getelementptr inbounds i16, ptr %pack.i118, i32 116
  %481 = ptrtoint ptr %arrayinit.element274.i162 to i32
  call void @__asan_store2_noabort(i32 %481)
  store i16 -16356, ptr %arrayinit.element274.i162, align 2
  %arrayinit.element275.i163 = getelementptr inbounds i16, ptr %pack.i118, i32 117
  %482 = ptrtoint ptr %arrayinit.element275.i163 to i32
  call void @__asan_store2_noabort(i32 %482)
  store i16 31, ptr %arrayinit.element275.i163, align 2
  %arrayinit.element276.i164 = getelementptr inbounds i16, ptr %pack.i118, i32 118
  %483 = ptrtoint ptr %arrayinit.element276.i164 to i32
  call void @__asan_store2_noabort(i32 %483)
  store i16 -8820, ptr %arrayinit.element276.i164, align 2
  %arrayinit.element277.i165 = getelementptr inbounds i16, ptr %pack.i118, i32 119
  %484 = ptrtoint ptr %arrayinit.element277.i165 to i32
  call void @__asan_store2_noabort(i32 %484)
  store i16 21, ptr %arrayinit.element277.i165, align 2
  %arrayinit.element278.i166 = getelementptr inbounds i16, ptr %pack.i118, i32 120
  %485 = ptrtoint ptr %arrayinit.element278.i166 to i32
  call void @__asan_store2_noabort(i32 %485)
  store i16 -8812, ptr %arrayinit.element278.i166, align 2
  %arrayinit.element279.i = getelementptr inbounds i16, ptr %pack.i118, i32 121
  %486 = ptrtoint ptr %arrayinit.element279.i to i32
  call void @__asan_store2_noabort(i32 %486)
  store i16 21, ptr %arrayinit.element279.i, align 2
  %arrayinit.element280.i = getelementptr inbounds i16, ptr %pack.i118, i32 122
  %487 = ptrtoint ptr %arrayinit.element280.i to i32
  call void @__asan_store2_noabort(i32 %487)
  store i16 -8824, ptr %arrayinit.element280.i, align 2
  %arrayinit.element281.i167 = getelementptr inbounds i16, ptr %pack.i118, i32 123
  %conv288.i = select i1 %tobool263.not.i, i16 2561, i16 5121
  %488 = ptrtoint ptr %arrayinit.element281.i167 to i32
  call void @__asan_store2_noabort(i32 %488)
  store i16 %conv288.i, ptr %arrayinit.element281.i167, align 2
  %arrayinit.element289.i168 = getelementptr inbounds i16, ptr %pack.i118, i32 124
  %489 = ptrtoint ptr %arrayinit.element289.i168 to i32
  call void @__asan_store2_noabort(i32 %489)
  store i16 -8816, ptr %arrayinit.element289.i168, align 2
  %arrayinit.element290.i169 = getelementptr inbounds i16, ptr %pack.i118, i32 125
  %490 = ptrtoint ptr %arrayinit.element290.i169 to i32
  call void @__asan_store2_noabort(i32 %490)
  store i16 %conv288.i, ptr %arrayinit.element290.i169, align 2
  %arrayinit.element298.i = getelementptr inbounds i16, ptr %pack.i118, i32 126
  %491 = ptrtoint ptr %arrayinit.element298.i to i32
  call void @__asan_store2_noabort(i32 %491)
  store i16 0, ptr %arrayinit.element298.i, align 2
  %arrayinit.element299.i = getelementptr inbounds i16, ptr %pack.i118, i32 127
  %492 = ptrtoint ptr %arrayinit.element299.i to i32
  call void @__asan_store2_noabort(i32 %492)
  store i16 0, ptr %arrayinit.element299.i, align 2
  %arrayinit.element300.i = getelementptr inbounds i16, ptr %pack.i118, i32 128
  %493 = ptrtoint ptr %arrayinit.element300.i to i32
  call void @__asan_store2_noabort(i32 %493)
  store i16 8206, ptr %arrayinit.element300.i, align 2
  %arrayinit.element301.i = getelementptr inbounds i16, ptr %pack.i118, i32 129
  %494 = ptrtoint ptr %arrayinit.element301.i to i32
  call void @__asan_store2_noabort(i32 %494)
  store i16 0, ptr %arrayinit.element301.i, align 2
  %arrayinit.element302.i = getelementptr inbounds i16, ptr %pack.i118, i32 130
  %495 = ptrtoint ptr %arrayinit.element302.i to i32
  call void @__asan_store2_noabort(i32 %495)
  store i16 -16412, ptr %arrayinit.element302.i, align 2
  %arrayinit.element303.i = getelementptr inbounds i16, ptr %pack.i118, i32 131
  %496 = ptrtoint ptr %arrayinit.element303.i to i32
  call void @__asan_store2_noabort(i32 %496)
  store i16 0, ptr %arrayinit.element303.i, align 2
  %arrayinit.element304.i = getelementptr inbounds i16, ptr %pack.i118, i32 132
  %497 = ptrtoint ptr %arrayinit.element304.i to i32
  call void @__asan_store2_noabort(i32 %497)
  store i16 -16411, ptr %arrayinit.element304.i, align 2
  %arrayinit.element305.i = getelementptr inbounds i16, ptr %pack.i118, i32 133
  %498 = ptrtoint ptr %arrayinit.element305.i to i32
  call void @__asan_store2_noabort(i32 %498)
  store i16 0, ptr %arrayinit.element305.i, align 2
  %arrayinit.element306.i = getelementptr inbounds i16, ptr %pack.i118, i32 134
  %499 = ptrtoint ptr %arrayinit.element306.i to i32
  call void @__asan_store2_noabort(i32 %499)
  store i16 -16410, ptr %arrayinit.element306.i, align 2
  %arrayinit.element307.i = getelementptr inbounds i16, ptr %pack.i118, i32 135
  %500 = ptrtoint ptr %arrayinit.element307.i to i32
  call void @__asan_store2_noabort(i32 %500)
  store i16 0, ptr %arrayinit.element307.i, align 2
  %arrayinit.element308.i170 = getelementptr inbounds i16, ptr %pack.i118, i32 136
  %501 = ptrtoint ptr %arrayinit.element308.i170 to i32
  call void @__asan_store2_noabort(i32 %501)
  store i16 -16409, ptr %arrayinit.element308.i170, align 2
  %arrayinit.element309.i171 = getelementptr inbounds i16, ptr %pack.i118, i32 137
  %conv311.i = shl i16 %conv242.i, 8
  %502 = ptrtoint ptr %arrayinit.element309.i171 to i32
  call void @__asan_store2_noabort(i32 %502)
  store i16 %conv311.i, ptr %arrayinit.element309.i171, align 2
  %arrayinit.element312.i172 = getelementptr inbounds i16, ptr %pack.i118, i32 138
  %503 = ptrtoint ptr %arrayinit.element312.i172 to i32
  call void @__asan_store2_noabort(i32 %503)
  store i16 -16408, ptr %arrayinit.element312.i172, align 2
  %arrayinit.element313.i173 = getelementptr inbounds i16, ptr %pack.i118, i32 139
  %504 = ptrtoint ptr %arrayinit.element313.i173 to i32
  call void @__asan_store2_noabort(i32 %504)
  store i16 14848, ptr %arrayinit.element313.i173, align 2
  %arrayinit.element314.i174 = getelementptr inbounds i16, ptr %pack.i118, i32 140
  %505 = ptrtoint ptr %arrayinit.element314.i174 to i32
  call void @__asan_store2_noabort(i32 %505)
  store i16 -16407, ptr %arrayinit.element314.i174, align 2
  %arrayinit.element315.i175 = getelementptr inbounds i16, ptr %pack.i118, i32 141
  %506 = ptrtoint ptr %arrayinit.element315.i175 to i32
  call void @__asan_store2_noabort(i32 %506)
  store i16 0, ptr %arrayinit.element315.i175, align 2
  %arrayinit.element316.i176 = getelementptr inbounds i16, ptr %pack.i118, i32 142
  %507 = ptrtoint ptr %arrayinit.element316.i176 to i32
  call void @__asan_store2_noabort(i32 %507)
  store i16 -16406, ptr %arrayinit.element316.i176, align 2
  %arrayinit.element317.i177 = getelementptr inbounds i16, ptr %pack.i118, i32 143
  %508 = ptrtoint ptr %arrayinit.element317.i177 to i32
  call void @__asan_store2_noabort(i32 %508)
  store i16 0, ptr %arrayinit.element317.i177, align 2
  %arrayinit.element318.i178 = getelementptr inbounds i16, ptr %pack.i118, i32 144
  %509 = ptrtoint ptr %arrayinit.element318.i178 to i32
  call void @__asan_store2_noabort(i32 %509)
  store i16 -16405, ptr %arrayinit.element318.i178, align 2
  %arrayinit.element319.i179 = getelementptr inbounds i16, ptr %pack.i118, i32 145
  %510 = ptrtoint ptr %arrayinit.element319.i179 to i32
  call void @__asan_store2_noabort(i32 %510)
  store i16 0, ptr %arrayinit.element319.i179, align 2
  %arrayinit.element320.i180 = getelementptr inbounds i16, ptr %pack.i118, i32 146
  %511 = ptrtoint ptr %arrayinit.element320.i180 to i32
  call void @__asan_store2_noabort(i32 %511)
  store i16 -16404, ptr %arrayinit.element320.i180, align 2
  %arrayinit.element321.i181 = getelementptr inbounds i16, ptr %pack.i118, i32 147
  %512 = and i8 %bf.load260.i, 2
  %513 = zext i8 %512 to i32
  %514 = shl nuw nsw i32 %513, 14
  %bf.clear330.i = and i8 %bf.load260.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear330.i)
  %tobool332.not.i = icmp eq i8 %bf.clear330.i, 0
  %cond333.i = select i1 %tobool332.not.i, i32 0, i32 10
  %or334.i = or i32 %514, %cond333.i
  %515 = ptrtoint ptr %board_info.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %board_info.i, align 4
  %sensor_flags336.i = getelementptr inbounds %struct.go7007_board_info, ptr %516, i32 0, i32 2
  %517 = ptrtoint ptr %sensor_flags336.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %sensor_flags336.i, align 4
  %and337.i = lshr i32 %518, 8
  %and337.lobit.i = and i32 %and337.i, 1
  %or340.i = or i32 %and337.lobit.i, %or334.i
  %conv341.i = trunc i32 %or340.i to i16
  %519 = ptrtoint ptr %arrayinit.element321.i181 to i32
  call void @__asan_store2_noabort(i32 %519)
  store i16 %conv341.i, ptr %arrayinit.element321.i181, align 2
  %arrayinit.element342.i182 = getelementptr inbounds i16, ptr %pack.i118, i32 148
  %520 = ptrtoint ptr %arrayinit.element342.i182 to i32
  call void @__asan_store2_noabort(i32 %520)
  store i16 -16403, ptr %arrayinit.element342.i182, align 2
  %arrayinit.element343.i183 = getelementptr inbounds i16, ptr %pack.i118, i32 149
  %521 = ptrtoint ptr %arrayinit.element343.i183 to i32
  call void @__asan_store2_noabort(i32 %521)
  store i16 0, ptr %arrayinit.element343.i183, align 2
  %arrayinit.element344.i = getelementptr inbounds i16, ptr %pack.i118, i32 150
  %522 = ptrtoint ptr %arrayinit.element344.i to i32
  call void @__asan_store2_noabort(i32 %522)
  store i16 -16402, ptr %arrayinit.element344.i, align 2
  %arrayinit.element345.i = getelementptr inbounds i16, ptr %pack.i118, i32 151
  %523 = ptrtoint ptr %arrayinit.element345.i to i32
  call void @__asan_store2_noabort(i32 %523)
  store i16 0, ptr %arrayinit.element345.i, align 2
  %arrayinit.element346.i = getelementptr inbounds i16, ptr %pack.i118, i32 152
  %524 = ptrtoint ptr %arrayinit.element346.i to i32
  call void @__asan_store2_noabort(i32 %524)
  store i16 -16401, ptr %arrayinit.element346.i, align 2
  %arrayinit.element347.i = getelementptr inbounds i16, ptr %pack.i118, i32 153
  %525 = ptrtoint ptr %arrayinit.element347.i to i32
  call void @__asan_store2_noabort(i32 %525)
  store i16 0, ptr %arrayinit.element347.i, align 2
  %arrayinit.element348.i = getelementptr inbounds i16, ptr %pack.i118, i32 154
  %526 = ptrtoint ptr %arrayinit.element348.i to i32
  call void @__asan_store2_noabort(i32 %526)
  store i16 -16400, ptr %arrayinit.element348.i, align 2
  %arrayinit.element349.i = getelementptr inbounds i16, ptr %pack.i118, i32 155
  %527 = load i32, ptr %sensor_flags336.i, align 4
  %and352.i = and i32 %527, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and352.i)
  %tobool353.not.i = icmp eq i32 %and352.i, 0
  %conv355.i = select i1 %tobool353.not.i, i16 -20384, i16 -4000
  %528 = ptrtoint ptr %arrayinit.element349.i to i32
  call void @__asan_store2_noabort(i32 %528)
  store i16 %conv355.i, ptr %arrayinit.element349.i, align 2
  %arrayinit.element356.i184 = getelementptr inbounds i16, ptr %pack.i118, i32 156
  %529 = ptrtoint ptr %arrayinit.element356.i184 to i32
  call void @__asan_store2_noabort(i32 %529)
  store i16 -16399, ptr %arrayinit.element356.i184, align 2
  %arrayinit.element357.i185 = getelementptr inbounds i16, ptr %pack.i118, i32 157
  %530 = ptrtoint ptr %arrayinit.element357.i185 to i32
  call void @__asan_store2_noabort(i32 %530)
  store i16 0, ptr %arrayinit.element357.i185, align 2
  %arrayinit.element358.i = getelementptr inbounds i16, ptr %pack.i118, i32 158
  %531 = ptrtoint ptr %arrayinit.element358.i to i32
  call void @__asan_store2_noabort(i32 %531)
  store i16 0, ptr %arrayinit.element358.i, align 2
  %arrayinit.element359.i = getelementptr inbounds i16, ptr %pack.i118, i32 159
  %532 = ptrtoint ptr %arrayinit.element359.i to i32
  call void @__asan_store2_noabort(i32 %532)
  store i16 0, ptr %arrayinit.element359.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %space)
  %cmp.i.i186 = icmp slt i32 %space, 160
  br i1 %cmp.i.i186, label %cond.end151.i.config_package.exit_crit_edge, label %cond.end151.i.for.body.i.i192_crit_edge

cond.end151.i.for.body.i.i192_crit_edge:          ; preds = %cond.end151.i
  br label %for.body.i.i192

cond.end151.i.config_package.exit_crit_edge:      ; preds = %cond.end151.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %config_package.exit

for.body.i.i192:                                  ; preds = %for.body.i.i192.for.body.i.i192_crit_edge, %cond.end151.i.for.body.i.i192_crit_edge
  %i.09.i.i187 = phi i32 [ %inc.i.i190, %for.body.i.i192.for.body.i.i192_crit_edge ], [ 0, %cond.end151.i.for.body.i.i192_crit_edge ]
  %add.ptr.i.i188 = getelementptr i16, ptr %pack.i118, i32 %i.09.i.i187
  %533 = ptrtoint ptr %add.ptr.i.i188 to i32
  call void @__asan_load2_noabort(i32 %533)
  %534 = load i16, ptr %add.ptr.i.i188, align 2
  %535 = tail call i16 @llvm.bswap.i16(i16 %534) #10
  %arrayidx.i.i189 = getelementptr i16, ptr %code, i32 %i.09.i.i187
  %536 = ptrtoint ptr %arrayidx.i.i189 to i32
  call void @__asan_store2_noabort(i32 %536)
  store i16 %535, ptr %arrayidx.i.i189, align 2
  %inc.i.i190 = add nuw nsw i32 %i.09.i.i187, 1
  %exitcond.not.i.i191 = icmp eq i32 %inc.i.i190, 160
  br i1 %exitcond.not.i.i191, label %for.body.i.i192.config_package.exit_crit_edge, label %for.body.i.i192.for.body.i.i192_crit_edge

for.body.i.i192.for.body.i.i192_crit_edge:        ; preds = %for.body.i.i192
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i192

for.body.i.i192.config_package.exit_crit_edge:    ; preds = %for.body.i.i192
  call void @__sanitizer_cov_trace_pc() #12
  br label %config_package.exit

config_package.exit:                              ; preds = %for.body.i.i192.config_package.exit_crit_edge, %cond.end151.i.config_package.exit_crit_edge
  %retval.0.i.i193 = phi i32 [ -1, %cond.end151.i.config_package.exit_crit_edge ], [ 160, %for.body.i.i192.config_package.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %pack.i118) #10
  br label %return

sw.bb10:                                          ; preds = %entry
  %format11 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 38
  %537 = ptrtoint ptr %format11 to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load i32, ptr %format11, align 8
  %539 = zext i32 %538 to i64
  call void @__sanitizer_cov_trace_switch(i64 %539, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %538, label %sw.bb10.return_crit_edge [
    i32 826757197, label %sw.bb10.sw.bb12_crit_edge
    i32 843534413, label %sw.bb10.sw.bb12_crit_edge370
    i32 877088845, label %sw.bb14
  ]

sw.bb10.sw.bb12_crit_edge370:                     ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

sw.bb10.sw.bb12_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

sw.bb10.return_crit_edge:                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb12:                                          ; preds = %sw.bb10.sw.bb12_crit_edge, %sw.bb10.sw.bb12_crit_edge370
  %call13 = tail call fastcc i32 @seqhead_to_package(ptr noundef %go, ptr noundef %code, i32 noundef %space, ptr noundef nonnull @mpeg1_sequence_header)
  br label %return

sw.bb14:                                          ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call fastcc i32 @seqhead_to_package(ptr noundef %go, ptr noundef %code, i32 noundef %space, ptr noundef nonnull @mpeg4_sequence_header)
  br label %return

sw.bb17:                                          ; preds = %entry
  %board_info.i195 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 2
  %540 = ptrtoint ptr %board_info.i195 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %board_info.i195, align 4
  %audio_rate.i = getelementptr inbounds %struct.go7007_board_info, ptr %541, i32 0, i32 9
  %542 = ptrtoint ptr %audio_rate.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %audio_rate.i, align 4
  %mul.i196 = mul i32 %543, 1001
  %fps_scale.i197 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 40
  %544 = ptrtoint ptr %fps_scale.i197 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %fps_scale.i197, align 8
  %mul1.i = mul i32 %mul.i196, %545
  %sensor_framerate.i198 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 32
  %546 = ptrtoint ptr %sensor_framerate.i198 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %sensor_framerate.i198, align 8
  %mul1.i.frozen = freeze i32 %mul1.i
  %.frozen = freeze i32 %547
  %div.i199 = sdiv i32 %mul1.i.frozen, %.frozen
  %mul2.i = mul i32 %div.i199, 215
  %div3.i = sdiv i32 %mul2.i, 100
  %548 = mul i32 %div.i199, %.frozen
  %rem.i.decomposed = sub i32 %mul1.i.frozen, %548
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %cmp.not4.i.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %cmp.not4.i.i, label %sw.bb17.relative_prime.exit.i_crit_edge, label %sw.bb17.while.body.i.i_crit_edge

sw.bb17.while.body.i.i_crit_edge:                 ; preds = %sw.bb17
  br label %while.body.i.i

sw.bb17.relative_prime.exit.i_crit_edge:          ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #12
  br label %relative_prime.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %sw.bb17.while.body.i.i_crit_edge
  %little.addr.06.i.i = phi i32 [ %rem.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %rem.i.decomposed, %sw.bb17.while.body.i.i_crit_edge ]
  %big.addr.05.i.i = phi i32 [ %little.addr.06.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %547, %sw.bb17.while.body.i.i_crit_edge ]
  %rem.i.i = srem i32 %big.addr.05.i.i, %little.addr.06.i.i
  %cmp.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %cmp.not.i.i, label %while.body.i.i.relative_prime.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body.i.i.relative_prime.exit.i_crit_edge:   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %relative_prime.exit.i

relative_prime.exit.i:                            ; preds = %while.body.i.i.relative_prime.exit.i_crit_edge, %sw.bb17.relative_prime.exit.i_crit_edge
  %big.addr.0.lcssa.i.i = phi i32 [ %547, %sw.bb17.relative_prime.exit.i_crit_edge ], [ %little.addr.06.i.i, %while.body.i.i.relative_prime.exit.i_crit_edge ]
  %div8.i = sdiv i32 %rem.i.decomposed, %big.addr.0.lcssa.i.i
  %sub.i200 = sub i32 %547, %rem.i.decomposed
  %div12.i = sdiv i32 %sub.i200, %big.addr.0.lcssa.i.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pack.i194) #10
  %549 = ptrtoint ptr %pack.i194 to i32
  call void @__asan_store2_noabort(i32 %549)
  store i16 8206, ptr %pack.i194, align 2
  %arrayinit.element.i201 = getelementptr inbounds i16, ptr %pack.i194, i32 1
  %550 = ptrtoint ptr %arrayinit.element.i201 to i32
  call void @__asan_store2_noabort(i32 %550)
  store i16 0, ptr %arrayinit.element.i201, align 2
  %arrayinit.element13.i202 = getelementptr inbounds i16, ptr %pack.i194, i32 2
  %551 = ptrtoint ptr %arrayinit.element13.i202 to i32
  call void @__asan_store2_noabort(i32 %551)
  store i16 -16488, ptr %arrayinit.element13.i202, align 2
  %arrayinit.element14.i203 = getelementptr inbounds i16, ptr %pack.i194, i32 3
  %sub15.i = sub nsw i32 0, %div3.i
  %conv.i204 = trunc i32 %sub15.i to i16
  %552 = ptrtoint ptr %arrayinit.element14.i203 to i32
  call void @__asan_store2_noabort(i32 %552)
  store i16 %conv.i204, ptr %arrayinit.element14.i203, align 2
  %arrayinit.element16.i = getelementptr inbounds i16, ptr %pack.i194, i32 4
  %553 = ptrtoint ptr %arrayinit.element16.i to i32
  call void @__asan_store2_noabort(i32 %553)
  store i16 -16487, ptr %arrayinit.element16.i, align 2
  %arrayinit.element17.i = getelementptr inbounds i16, ptr %pack.i194, i32 5
  %shr.i205 = ashr i32 %sub15.i, 16
  %conv19.i = trunc i32 %shr.i205 to i16
  %554 = ptrtoint ptr %arrayinit.element17.i to i32
  call void @__asan_store2_noabort(i32 %554)
  store i16 %conv19.i, ptr %arrayinit.element17.i, align 2
  %arrayinit.element20.i = getelementptr inbounds i16, ptr %pack.i194, i32 6
  %555 = ptrtoint ptr %arrayinit.element20.i to i32
  call void @__asan_store2_noabort(i32 %555)
  store i16 -16494, ptr %arrayinit.element20.i, align 2
  %arrayinit.element21.i = getelementptr inbounds i16, ptr %pack.i194, i32 7
  %556 = ptrtoint ptr %arrayinit.element21.i to i32
  call void @__asan_store2_noabort(i32 %556)
  store i16 0, ptr %arrayinit.element21.i, align 2
  %arrayinit.element22.i206 = getelementptr inbounds i16, ptr %pack.i194, i32 8
  %557 = ptrtoint ptr %arrayinit.element22.i206 to i32
  call void @__asan_store2_noabort(i32 %557)
  store i16 -16493, ptr %arrayinit.element22.i206, align 2
  %arrayinit.element23.i207 = getelementptr inbounds i16, ptr %pack.i194, i32 9
  %558 = ptrtoint ptr %arrayinit.element23.i207 to i32
  call void @__asan_store2_noabort(i32 %558)
  store i16 0, ptr %arrayinit.element23.i207, align 2
  %arrayinit.element24.i = getelementptr inbounds i16, ptr %pack.i194, i32 10
  %559 = ptrtoint ptr %arrayinit.element24.i to i32
  call void @__asan_store2_noabort(i32 %559)
  store i16 -16396, ptr %arrayinit.element24.i, align 2
  %arrayinit.element25.i = getelementptr inbounds i16, ptr %pack.i194, i32 11
  call void @__sanitizer_cov_trace_cmp4(i32 %div8.i, i32 %div12.i)
  %cmp.i208 = icmp sgt i32 %div8.i, %div12.i
  %560 = tail call i32 @llvm.smax.i32(i32 %div8.i, i32 %div12.i) #10
  %conv27.i = trunc i32 %560 to i16
  %561 = ptrtoint ptr %arrayinit.element25.i to i32
  call void @__asan_store2_noabort(i32 %561)
  store i16 %conv27.i, ptr %arrayinit.element25.i, align 2
  %arrayinit.element28.i = getelementptr inbounds i16, ptr %pack.i194, i32 12
  %562 = ptrtoint ptr %arrayinit.element28.i to i32
  call void @__asan_store2_noabort(i32 %562)
  store i16 -16395, ptr %arrayinit.element28.i, align 2
  %arrayinit.element29.i = getelementptr inbounds i16, ptr %pack.i194, i32 13
  call void @__sanitizer_cov_trace_cmp4(i32 %div8.i, i32 %div12.i)
  %cmp30.i209 = icmp slt i32 %div8.i, %div12.i
  %563 = tail call i32 @llvm.smin.i32(i32 %div8.i, i32 %div12.i) #10
  %conv36.i210 = trunc i32 %563 to i16
  %564 = ptrtoint ptr %arrayinit.element29.i to i32
  call void @__asan_store2_noabort(i32 %564)
  store i16 %conv36.i210, ptr %arrayinit.element29.i, align 2
  %arrayinit.element37.i211 = getelementptr inbounds i16, ptr %pack.i194, i32 14
  %565 = ptrtoint ptr %arrayinit.element37.i211 to i32
  call void @__asan_store2_noabort(i32 %565)
  store i16 -16394, ptr %arrayinit.element37.i211, align 2
  %arrayinit.element38.i212 = getelementptr inbounds i16, ptr %pack.i194, i32 15
  %add.i213 = add i32 %div.i199, 1
  %cond44.i = select i1 %cmp30.i209, i32 %div.i199, i32 %add.i213
  %conv45.i214 = trunc i32 %cond44.i to i16
  %566 = ptrtoint ptr %arrayinit.element38.i212 to i32
  call void @__asan_store2_noabort(i32 %566)
  store i16 %conv45.i214, ptr %arrayinit.element38.i212, align 2
  %arrayinit.element46.i215 = getelementptr inbounds i16, ptr %pack.i194, i32 16
  %567 = ptrtoint ptr %arrayinit.element46.i215 to i32
  call void @__asan_store2_noabort(i32 %567)
  store i16 -16393, ptr %arrayinit.element46.i215, align 2
  %cond54.i = select i1 %cmp.i208, i32 %div.i199, i32 %add.i213
  %arrayinit.element47.i216 = getelementptr inbounds i16, ptr %pack.i194, i32 17
  %conv55.i = trunc i32 %cond54.i to i16
  %568 = ptrtoint ptr %arrayinit.element47.i216 to i32
  call void @__asan_store2_noabort(i32 %568)
  store i16 %conv55.i, ptr %arrayinit.element47.i216, align 2
  %arrayinit.element56.i217 = getelementptr inbounds i16, ptr %pack.i194, i32 18
  %569 = ptrtoint ptr %arrayinit.element56.i217 to i32
  call void @__asan_store2_noabort(i32 %569)
  store i16 -16392, ptr %arrayinit.element56.i217, align 2
  %arrayinit.element57.i218 = getelementptr inbounds i16, ptr %pack.i194, i32 19
  %570 = ptrtoint ptr %arrayinit.element57.i218 to i32
  call void @__asan_store2_noabort(i32 %570)
  store i16 0, ptr %arrayinit.element57.i218, align 2
  %arrayinit.element58.i219 = getelementptr inbounds i16, ptr %pack.i194, i32 20
  %571 = ptrtoint ptr %arrayinit.element58.i219 to i32
  call void @__asan_store2_noabort(i32 %571)
  store i16 -16391, ptr %arrayinit.element58.i219, align 2
  %arrayinit.element59.i220 = getelementptr inbounds i16, ptr %pack.i194, i32 21
  %572 = ptrtoint ptr %arrayinit.element59.i220 to i32
  call void @__asan_store2_noabort(i32 %572)
  store i16 0, ptr %arrayinit.element59.i220, align 2
  %arrayinit.element60.i221 = getelementptr inbounds i16, ptr %pack.i194, i32 22
  %573 = ptrtoint ptr %arrayinit.element60.i221 to i32
  call void @__asan_store2_noabort(i32 %573)
  store i16 -16390, ptr %arrayinit.element60.i221, align 2
  %arrayinit.element61.i222 = getelementptr inbounds i16, ptr %pack.i194, i32 23
  %conv63.i = trunc i32 %div3.i to i16
  %574 = ptrtoint ptr %arrayinit.element61.i222 to i32
  call void @__asan_store2_noabort(i32 %574)
  store i16 %conv63.i, ptr %arrayinit.element61.i222, align 2
  %arrayinit.element64.i = getelementptr inbounds i16, ptr %pack.i194, i32 24
  %575 = ptrtoint ptr %arrayinit.element64.i to i32
  call void @__asan_store2_noabort(i32 %575)
  store i16 -16389, ptr %arrayinit.element64.i, align 2
  %arrayinit.element65.i = getelementptr inbounds i16, ptr %pack.i194, i32 25
  %shr66.i = ashr i32 %div3.i, 16
  %conv67.i = trunc i32 %shr66.i to i16
  %576 = ptrtoint ptr %arrayinit.element65.i to i32
  call void @__asan_store2_noabort(i32 %576)
  store i16 %conv67.i, ptr %arrayinit.element65.i, align 2
  %arrayinit.element68.i = getelementptr inbounds i16, ptr %pack.i194, i32 26
  %577 = ptrtoint ptr %arrayinit.element68.i to i32
  call void @__asan_store2_noabort(i32 %577)
  store i16 -16492, ptr %arrayinit.element68.i, align 2
  %arrayinit.element69.i = getelementptr inbounds i16, ptr %pack.i194, i32 27
  %578 = ptrtoint ptr %arrayinit.element69.i to i32
  call void @__asan_store2_noabort(i32 %578)
  store i16 0, ptr %arrayinit.element69.i, align 2
  %arrayinit.element70.i = getelementptr inbounds i16, ptr %pack.i194, i32 28
  %579 = ptrtoint ptr %arrayinit.element70.i to i32
  call void @__asan_store2_noabort(i32 %579)
  store i16 -16491, ptr %arrayinit.element70.i, align 2
  %arrayinit.element71.i223 = getelementptr inbounds i16, ptr %pack.i194, i32 29
  %580 = ptrtoint ptr %arrayinit.element71.i223 to i32
  call void @__asan_store2_noabort(i32 %580)
  store i16 0, ptr %arrayinit.element71.i223, align 2
  %arrayinit.element72.i224 = getelementptr inbounds i16, ptr %pack.i194, i32 30
  %581 = ptrtoint ptr %arrayinit.element72.i224 to i32
  call void @__asan_store2_noabort(i32 %581)
  store i16 0, ptr %arrayinit.element72.i224, align 2
  %arrayinit.element73.i = getelementptr inbounds i16, ptr %pack.i194, i32 31
  %582 = ptrtoint ptr %arrayinit.element73.i to i32
  call void @__asan_store2_noabort(i32 %582)
  store i16 0, ptr %arrayinit.element73.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %space)
  %cmp.i.i225 = icmp slt i32 %space, 32
  br i1 %cmp.i.i225, label %relative_prime.exit.i.avsync_to_package.exit_crit_edge, label %relative_prime.exit.i.for.body.i.i231_crit_edge

relative_prime.exit.i.for.body.i.i231_crit_edge:  ; preds = %relative_prime.exit.i
  br label %for.body.i.i231

relative_prime.exit.i.avsync_to_package.exit_crit_edge: ; preds = %relative_prime.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %avsync_to_package.exit

for.body.i.i231:                                  ; preds = %for.body.i.i231.for.body.i.i231_crit_edge, %relative_prime.exit.i.for.body.i.i231_crit_edge
  %i.09.i.i226 = phi i32 [ %inc.i.i229, %for.body.i.i231.for.body.i.i231_crit_edge ], [ 0, %relative_prime.exit.i.for.body.i.i231_crit_edge ]
  %add.ptr.i.i227 = getelementptr i16, ptr %pack.i194, i32 %i.09.i.i226
  %583 = ptrtoint ptr %add.ptr.i.i227 to i32
  call void @__asan_load2_noabort(i32 %583)
  %584 = load i16, ptr %add.ptr.i.i227, align 2
  %585 = tail call i16 @llvm.bswap.i16(i16 %584) #10
  %arrayidx.i.i228 = getelementptr i16, ptr %code, i32 %i.09.i.i226
  %586 = ptrtoint ptr %arrayidx.i.i228 to i32
  call void @__asan_store2_noabort(i32 %586)
  store i16 %585, ptr %arrayidx.i.i228, align 2
  %inc.i.i229 = add nuw nsw i32 %i.09.i.i226, 1
  %exitcond.not.i.i230 = icmp eq i32 %inc.i.i229, 32
  br i1 %exitcond.not.i.i230, label %for.body.i.i231.avsync_to_package.exit_crit_edge, label %for.body.i.i231.for.body.i.i231_crit_edge

for.body.i.i231.for.body.i.i231_crit_edge:        ; preds = %for.body.i.i231
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i231

for.body.i.i231.avsync_to_package.exit_crit_edge: ; preds = %for.body.i.i231
  call void @__sanitizer_cov_trace_pc() #12
  br label %avsync_to_package.exit

avsync_to_package.exit:                           ; preds = %for.body.i.i231.avsync_to_package.exit_crit_edge, %relative_prime.exit.i.avsync_to_package.exit_crit_edge
  %retval.0.i.i232 = phi i32 [ -1, %relative_prime.exit.i.avsync_to_package.exit_crit_edge ], [ 32, %for.body.i.i231.avsync_to_package.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pack.i194) #10
  br label %return

sw.bb19:                                          ; preds = %entry
  %interlace_coding.i234 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 44
  %587 = ptrtoint ptr %interlace_coding.i234 to i32
  call void @__asan_load1_noabort(i32 %587)
  %bf.load.i235 = load i8, ptr %interlace_coding.i234, align 8
  %588 = and i8 %bf.load.i235, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %588)
  %tobool.not.i236 = icmp eq i8 %588, 0
  %height1.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 34
  %589 = ptrtoint ptr %height1.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load i32, ptr %height1.i, align 8
  %..i237 = select i1 %tobool.not.i236, i32 16, i32 32
  %.285.i = select i1 %tobool.not.i236, i32 16896, i32 0
  %div2.i = sdiv i32 %590, %..i237
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pack.i233) #10
  %591 = getelementptr inbounds i8, ptr %pack.i233, i32 16
  %592 = call ptr @memset(ptr %591, i32 255, i32 48)
  %593 = ptrtoint ptr %pack.i233 to i32
  call void @__asan_store2_noabort(i32 %593)
  store i16 -32768, ptr %pack.i233, align 2
  %arrayinit.element.i238 = getelementptr inbounds i16, ptr %pack.i233, i32 1
  %arrayinit.element8.i239 = getelementptr inbounds i16, ptr %pack.i233, i32 7
  %594 = call ptr @memset(ptr %arrayinit.element.i238, i32 0, i32 12)
  %595 = ptrtoint ptr %arrayinit.element8.i239 to i32
  call void @__asan_store2_noabort(i32 %595)
  store i16 2, ptr %arrayinit.element8.i239, align 2
  %board_info.i241 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 2
  %596 = ptrtoint ptr %board_info.i241 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %board_info.i241, align 4
  %sensor_flags.i242 = getelementptr inbounds %struct.go7007_board_info, ptr %597, i32 0, i32 2
  %598 = ptrtoint ptr %sensor_flags.i242 to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load i32, ptr %sensor_flags.i242, align 4
  %and.i243 = and i32 %599, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i243)
  %tobool10.not.i = icmp eq i32 %and.i243, 0
  %spec.select.i244 = select i1 %tobool10.not.i, i32 0, i32 %.285.i
  %encoder_subsample.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 37
  %600 = ptrtoint ptr %encoder_subsample.i to i32
  call void @__asan_load1_noabort(i32 %600)
  %bf.load18.i245 = load i8, ptr %encoder_subsample.i, align 4
  %601 = lshr i8 %bf.load18.i245, 5
  %.lobit.i246 = and i8 %601, 1
  %602 = zext i8 %.lobit.i246 to i32
  %shl.i247 = shl nuw nsw i32 %602, 8
  %or.i248 = or i32 %shl.i247, %spec.select.i244
  %and26.i = and i32 %599, 127
  %or27.i = or i32 %or.i248, %and26.i
  %conv.i249 = trunc i32 %or27.i to i16
  %603 = ptrtoint ptr %591 to i32
  call void @__asan_store2_noabort(i32 %603)
  store i16 %conv.i249, ptr %591, align 2
  %arrayinit.element28.i250 = getelementptr inbounds i16, ptr %pack.i233, i32 9
  %604 = and i8 %bf.load18.i245, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %604)
  %tobool33.not.i = icmp eq i8 %604, 0
  %605 = zext i8 %604 to i32
  %606 = shl nuw nsw i32 %605, 8
  %shl43.i = shl i32 %div2.i, 9
  %shl45.i = shl i32 %div2.i, 8
  %cond47.i = select i1 %tobool33.not.i, i32 %shl45.i, i32 %shl43.i
  %or48.i = or i32 %606, %cond47.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load18.i245)
  %tobool52.not.i = icmp sgt i8 %bf.load18.i245, -1
  %607 = lshr i8 %bf.load18.i245, 1
  %608 = and i8 %607, 64
  %609 = zext i8 %608 to i32
  %or54.i = or i32 %or48.i, %609
  %.sink284.i = select i1 %tobool52.not.i, i32 4, i32 3
  %width62.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 33
  %610 = ptrtoint ptr %width62.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load i32, ptr %width62.i, align 4
  %shr63.i = ashr i32 %611, %.sink284.i
  %or66.i = or i32 %or54.i, %shr63.i
  %conv67.i251 = trunc i32 %or66.i to i16
  %612 = ptrtoint ptr %arrayinit.element28.i250 to i32
  call void @__asan_store2_noabort(i32 %612)
  store i16 %conv67.i251, ptr %arrayinit.element28.i250, align 2
  %arrayinit.element68.i252 = getelementptr inbounds i16, ptr %pack.i233, i32 10
  %encoder_v_offset.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 36
  %613 = ptrtoint ptr %encoder_v_offset.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load i32, ptr %encoder_v_offset.i, align 8
  %shl69.i = shl i32 %614, 6
  %encoder_h_offset.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 35
  %615 = ptrtoint ptr %encoder_h_offset.i to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load i32, ptr %encoder_h_offset.i, align 4
  %617 = lshr i32 %616, 2
  %or71.i = or i32 %617, %shl69.i
  %618 = trunc i32 %or71.i to i16
  %conv74.i = or i16 %618, -32640
  %619 = ptrtoint ptr %arrayinit.element68.i252 to i32
  call void @__asan_store2_noabort(i32 %619)
  store i16 %conv74.i, ptr %arrayinit.element68.i252, align 2
  %arrayinit.element75.i = getelementptr inbounds i16, ptr %pack.i233, i32 11
  %620 = ptrtoint ptr %arrayinit.element75.i to i32
  call void @__asan_store2_noabort(i32 %620)
  store i16 64, ptr %arrayinit.element75.i, align 2
  %arrayinit.element76.i = getelementptr inbounds i16, ptr %pack.i233, i32 12
  %621 = ptrtoint ptr %arrayinit.element76.i to i32
  call void @__asan_store2_noabort(i32 %621)
  store i16 0, ptr %arrayinit.element76.i, align 2
  %arrayinit.element77.i = getelementptr inbounds i16, ptr %pack.i233, i32 13
  %622 = ptrtoint ptr %arrayinit.element77.i to i32
  call void @__asan_store2_noabort(i32 %622)
  store i16 0, ptr %arrayinit.element77.i, align 2
  %arrayinit.element78.i = getelementptr inbounds i16, ptr %pack.i233, i32 14
  %fps_scale.i253 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 40
  %623 = ptrtoint ptr %fps_scale.i253 to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load i32, ptr %fps_scale.i253, align 8
  %sub.i254 = shl i32 %624, 8
  %shl79.i = add i32 %sub.i254, 65280
  %625 = ptrtoint ptr %sensor_flags.i242 to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load i32, ptr %sensor_flags.i242, align 4
  %and82.i = and i32 %626, 128
  %or85.i = or i32 %shl79.i, %and82.i
  %627 = trunc i32 %or85.i to i16
  %conv87.i = or i16 %627, 65
  %628 = ptrtoint ptr %arrayinit.element78.i to i32
  call void @__asan_store2_noabort(i32 %628)
  store i16 %conv87.i, ptr %arrayinit.element78.i, align 2
  %arrayinit.element88.i255 = getelementptr inbounds i16, ptr %pack.i233, i32 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i235)
  %tobool92.not.i = icmp sgt i8 %bf.load.i235, -1
  %conv94.i256 = select i1 %tobool92.not.i, i16 875, i16 3404
  %629 = ptrtoint ptr %arrayinit.element88.i255 to i32
  call void @__asan_store2_noabort(i32 %629)
  store i16 %conv94.i256, ptr %arrayinit.element88.i255, align 2
  %arrayinit.element95.i = getelementptr inbounds i16, ptr %pack.i233, i32 16
  %630 = lshr i32 %611, 4
  %or99.i = or i32 %630, %shl45.i
  %conv100.i = trunc i32 %or99.i to i16
  %631 = ptrtoint ptr %arrayinit.element95.i to i32
  call void @__asan_store2_noabort(i32 %631)
  store i16 %conv100.i, ptr %arrayinit.element95.i, align 2
  %arrayinit.element101.i = getelementptr inbounds i16, ptr %pack.i233, i32 17
  %format.i257 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 38
  %632 = ptrtoint ptr %format.i257 to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load i32, ptr %format.i257, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 877088845, i32 %633)
  %cmp.i258 = icmp eq i32 %633, 877088845
  %conv104.i = select i1 %cmp.i258, i16 1028, i16 0
  %634 = ptrtoint ptr %arrayinit.element101.i to i32
  call void @__asan_store2_noabort(i32 %634)
  store i16 %conv104.i, ptr %arrayinit.element101.i, align 2
  %arrayinit.element105.i = getelementptr inbounds i16, ptr %pack.i233, i32 18
  %635 = lshr i8 %bf.load.i235, 1
  %.lobit280.i = and i8 %635, 1
  %636 = zext i8 %.lobit280.i to i16
  %shl113.i = shl nuw nsw i16 %636, 13
  %637 = lshr i8 %bf.load.i235, 6
  %.lobit281.i = and i8 %637, 1
  %638 = zext i8 %.lobit281.i to i16
  %shl121.i = shl nuw nsw i16 %638, 12
  %or114.i = or i16 %shl113.i, %shl121.i
  %shl127.i = select i1 %cmp.i258, i16 2048, i16 0
  %or122.i = or i16 %shl127.i, %or114.i
  %cond134.i = select i1 %tobool92.not.i, i16 0, i16 384
  %or128.i = or i16 %or122.i, %cond134.i
  %bf.clear138.i = shl i8 %bf.load.i235, 2
  %639 = and i8 %bf.clear138.i, 4
  %shl142.i = zext i8 %639 to i16
  %or136.i = or i16 %or128.i, %shl142.i
  %640 = and i8 %635, 2
  %shl150.i = zext i8 %640 to i16
  %or143.i = or i16 %or136.i, %shl150.i
  %or152.i = or i16 %or143.i, -32767
  %641 = ptrtoint ptr %arrayinit.element105.i to i32
  call void @__asan_store2_noabort(i32 %641)
  store i16 %or152.i, ptr %arrayinit.element105.i, align 2
  %arrayinit.element154.i = getelementptr inbounds i16, ptr %pack.i233, i32 19
  %642 = zext i32 %633 to i64
  call void @__sanitizer_cov_trace_switch(i64 %642, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %633, label %cond.false174.i [
    i32 826757197, label %sw.bb19.cond.end185.i_crit_edge
    i32 843534413, label %sw.bb19.cond.end185.i_crit_edge371
    i32 1196444237, label %sw.bb19.cond.end185.i_crit_edge372
    i32 877088845, label %cond.end185.fold.split.i
  ]

sw.bb19.cond.end185.i_crit_edge372:               ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end185.i

sw.bb19.cond.end185.i_crit_edge371:               ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end185.i

sw.bb19.cond.end185.i_crit_edge:                  ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end185.i

cond.false174.i:                                  ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 859189832, i32 %633)
  %cmp176.i = icmp eq i32 %633, 859189832
  %phi.cast.i = select i1 %cmp176.i, i16 -30432, i16 0
  br label %cond.end185.i

cond.end185.fold.split.i:                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end185.i

cond.end185.i:                                    ; preds = %cond.end185.fold.split.i, %cond.false174.i, %sw.bb19.cond.end185.i_crit_edge, %sw.bb19.cond.end185.i_crit_edge371, %sw.bb19.cond.end185.i_crit_edge372
  %cond186.i = phi i16 [ -30304, %sw.bb19.cond.end185.i_crit_edge ], [ %phi.cast.i, %cond.false174.i ], [ -30304, %sw.bb19.cond.end185.i_crit_edge371 ], [ -30304, %sw.bb19.cond.end185.i_crit_edge372 ], [ -30432, %cond.end185.fold.split.i ]
  %643 = ptrtoint ptr %arrayinit.element154.i to i32
  call void @__asan_store2_noabort(i32 %643)
  store i16 %cond186.i, ptr %arrayinit.element154.i, align 2
  %arrayinit.element188.i259 = getelementptr inbounds i16, ptr %pack.i233, i32 20
  %conv195.i = select i1 %tobool92.not.i, i16 7947, i16 7957
  %644 = ptrtoint ptr %arrayinit.element188.i259 to i32
  call void @__asan_store2_noabort(i32 %644)
  store i16 %conv195.i, ptr %arrayinit.element188.i259, align 2
  %arrayinit.element196.i = getelementptr inbounds i16, ptr %pack.i233, i32 21
  %conv203.i = select i1 %tobool92.not.i, i16 11, i16 21
  %645 = ptrtoint ptr %arrayinit.element196.i to i32
  call void @__asan_store2_noabort(i32 %645)
  store i16 %conv203.i, ptr %arrayinit.element196.i, align 2
  %arrayinit.element204.i = getelementptr inbounds i16, ptr %pack.i233, i32 22
  %conv211.i = select i1 %tobool92.not.i, i16 22528, i16 -22528
  %646 = ptrtoint ptr %arrayinit.element204.i to i32
  call void @__asan_store2_noabort(i32 %646)
  store i16 %conv211.i, ptr %arrayinit.element204.i, align 2
  %arrayinit.element212.i260 = getelementptr inbounds i16, ptr %pack.i233, i32 23
  %647 = ptrtoint ptr %arrayinit.element212.i260 to i32
  call void @__asan_store2_noabort(i32 %647)
  store i16 -1, ptr %arrayinit.element212.i260, align 2
  %arrayinit.element213.i261 = getelementptr inbounds i16, ptr %pack.i233, i32 24
  %648 = ptrtoint ptr %arrayinit.element213.i261 to i32
  call void @__asan_store2_noabort(i32 %648)
  store i16 32, ptr %arrayinit.element213.i261, align 2
  %arrayinit.element214.i262 = getelementptr inbounds i16, ptr %pack.i233, i32 25
  %649 = ptrtoint ptr %arrayinit.element214.i262 to i32
  call void @__asan_store2_noabort(i32 %649)
  store i16 875, ptr %arrayinit.element214.i262, align 2
  %arrayinit.element215.i263 = getelementptr inbounds i16, ptr %pack.i233, i32 26
  %650 = ptrtoint ptr %arrayinit.element215.i263 to i32
  call void @__asan_store2_noabort(i32 %650)
  store i16 1718, ptr %arrayinit.element215.i263, align 2
  %arrayinit.element216.i264 = getelementptr inbounds i16, ptr %pack.i233, i32 27
  %651 = ptrtoint ptr %arrayinit.element216.i264 to i32
  call void @__asan_store2_noabort(i32 %651)
  store i16 2561, ptr %arrayinit.element216.i264, align 2
  %arrayinit.element217.i265 = getelementptr inbounds i16, ptr %pack.i233, i32 28
  %652 = ptrtoint ptr %arrayinit.element217.i265 to i32
  call void @__asan_store2_noabort(i32 %652)
  store i16 3404, ptr %arrayinit.element217.i265, align 2
  %arrayinit.element218.i266 = getelementptr inbounds i16, ptr %pack.i233, i32 29
  %653 = ptrtoint ptr %arrayinit.element218.i266 to i32
  call void @__asan_store2_noabort(i32 %653)
  store i16 4247, ptr %arrayinit.element218.i266, align 2
  %gop_size228.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 43
  %654 = ptrtoint ptr %gop_size228.i to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load i32, ptr %gop_size228.i, align 4
  %div226.i = sdiv i32 %655, 3
  %cond230.i = select i1 %tobool92.not.i, i32 %655, i32 %div226.i
  %arrayinit.element219.i267 = getelementptr inbounds i16, ptr %pack.i233, i32 30
  %conv231.i = trunc i32 %cond230.i to i16
  %656 = ptrtoint ptr %arrayinit.element219.i267 to i32
  call void @__asan_store2_noabort(i32 %656)
  store i16 %conv231.i, ptr %arrayinit.element219.i267, align 2
  %arrayinit.element232.i268 = getelementptr inbounds i16, ptr %pack.i233, i32 31
  %shr234.i = ashr i32 %590, 4
  %shr236.i = ashr i32 %611, 4
  %mul.i269 = mul i32 %shr234.i, 110
  %mul237.i = mul i32 %mul.i269, %shr236.i
  %div238.i = sdiv i32 %mul237.i, 100
  %conv239.i = trunc i32 %div238.i to i16
  %657 = ptrtoint ptr %arrayinit.element232.i268 to i32
  call void @__asan_store2_noabort(i32 %657)
  store i16 %conv239.i, ptr %arrayinit.element232.i268, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %space)
  %cmp.i.i270 = icmp slt i32 %space, 32
  br i1 %cmp.i.i270, label %cond.end185.i.final_package.exit_crit_edge, label %cond.end185.i.for.body.i.i276_crit_edge

cond.end185.i.for.body.i.i276_crit_edge:          ; preds = %cond.end185.i
  br label %for.body.i.i276

cond.end185.i.final_package.exit_crit_edge:       ; preds = %cond.end185.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %final_package.exit

for.body.i.i276:                                  ; preds = %for.body.i.i276.for.body.i.i276_crit_edge, %cond.end185.i.for.body.i.i276_crit_edge
  %i.09.i.i271 = phi i32 [ %inc.i.i274, %for.body.i.i276.for.body.i.i276_crit_edge ], [ 0, %cond.end185.i.for.body.i.i276_crit_edge ]
  %add.ptr.i.i272 = getelementptr i16, ptr %pack.i233, i32 %i.09.i.i271
  %658 = ptrtoint ptr %add.ptr.i.i272 to i32
  call void @__asan_load2_noabort(i32 %658)
  %659 = load i16, ptr %add.ptr.i.i272, align 2
  %660 = tail call i16 @llvm.bswap.i16(i16 %659) #10
  %arrayidx.i.i273 = getelementptr i16, ptr %code, i32 %i.09.i.i271
  %661 = ptrtoint ptr %arrayidx.i.i273 to i32
  call void @__asan_store2_noabort(i32 %661)
  store i16 %660, ptr %arrayidx.i.i273, align 2
  %inc.i.i274 = add nuw nsw i32 %i.09.i.i271, 1
  %exitcond.not.i.i275 = icmp eq i32 %inc.i.i274, 32
  br i1 %exitcond.not.i.i275, label %for.body.i.i276.final_package.exit_crit_edge, label %for.body.i.i276.for.body.i.i276_crit_edge

for.body.i.i276.for.body.i.i276_crit_edge:        ; preds = %for.body.i.i276
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i276

for.body.i.i276.final_package.exit_crit_edge:     ; preds = %for.body.i.i276
  call void @__sanitizer_cov_trace_pc() #12
  br label %final_package.exit

final_package.exit:                               ; preds = %for.body.i.i276.final_package.exit_crit_edge, %cond.end185.i.final_package.exit_crit_edge
  %retval.0.i.i277 = phi i32 [ -1, %cond.end185.i.final_package.exit_crit_edge ], [ 32, %for.body.i.i276.final_package.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pack.i233) #10
  br label %return

sw.bb21:                                          ; preds = %entry
  %board_info.i279 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 2
  %662 = ptrtoint ptr %board_info.i279 to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %board_info.i279, align 4
  %audio_flags.i = getelementptr inbounds %struct.go7007_board_info, ptr %663, i32 0, i32 8
  %664 = ptrtoint ptr %audio_flags.i to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load i32, ptr %audio_flags.i, align 4
  %666 = lshr i32 %665, 5
  %shl.i280 = and i32 %666, 2048
  %667 = lshr i32 %665, 9
  %shl6.i = and i32 %667, 256
  %or.i281 = or i32 %shl.i280, %shl6.i
  %audio_bclk_div.i = getelementptr inbounds %struct.go7007_board_info, ptr %663, i32 0, i32 10
  %668 = ptrtoint ptr %audio_bclk_div.i to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load i32, ptr %audio_bclk_div.i, align 4
  %div.i282 = sdiv i32 %669, 4
  %sub.i283 = shl i32 %div.i282, 4
  %shl8.i = add i32 %sub.i283, -16
  %audio_main_div.i = getelementptr inbounds %struct.go7007_board_info, ptr %663, i32 0, i32 11
  %670 = ptrtoint ptr %audio_main_div.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load i32, ptr %audio_main_div.i, align 4
  %sub11.i = add i32 %671, -1
  %or9.i = or i32 %or.i281, %sub11.i
  %or12.i = or i32 %or9.i, %shl8.i
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %pack.i278) #10
  %672 = getelementptr inbounds i8, ptr %pack.i278, i32 50
  %673 = call ptr @memset(ptr %672, i32 255, i32 78)
  %674 = ptrtoint ptr %pack.i278 to i32
  call void @__asan_store2_noabort(i32 %674)
  store i16 8205, ptr %pack.i278, align 2
  %arrayinit.element.i284 = getelementptr inbounds i16, ptr %pack.i278, i32 1
  %675 = ptrtoint ptr %arrayinit.element.i284 to i32
  call void @__asan_store2_noabort(i32 %675)
  store i16 0, ptr %arrayinit.element.i284, align 2
  %arrayinit.element13.i285 = getelementptr inbounds i16, ptr %pack.i278, i32 2
  %676 = ptrtoint ptr %arrayinit.element13.i285 to i32
  call void @__asan_store2_noabort(i32 %676)
  store i16 -28670, ptr %arrayinit.element13.i285, align 2
  %arrayinit.element14.i286 = getelementptr inbounds i16, ptr %pack.i278, i32 3
  %677 = ptrtoint ptr %arrayinit.element14.i286 to i32
  call void @__asan_store2_noabort(i32 %677)
  store i16 0, ptr %arrayinit.element14.i286, align 2
  %arrayinit.element15.i = getelementptr inbounds i16, ptr %pack.i278, i32 4
  %678 = ptrtoint ptr %arrayinit.element15.i to i32
  call void @__asan_store2_noabort(i32 %678)
  store i16 -28670, ptr %arrayinit.element15.i, align 2
  %arrayinit.element16.i287 = getelementptr inbounds i16, ptr %pack.i278, i32 5
  %679 = ptrtoint ptr %arrayinit.element16.i287 to i32
  call void @__asan_store2_noabort(i32 %679)
  store i16 0, ptr %arrayinit.element16.i287, align 2
  %arrayinit.element17.i288 = getelementptr inbounds i16, ptr %pack.i278, i32 6
  %680 = ptrtoint ptr %arrayinit.element17.i288 to i32
  call void @__asan_store2_noabort(i32 %680)
  store i16 -28623, ptr %arrayinit.element17.i288, align 2
  %arrayinit.element18.i = getelementptr inbounds i16, ptr %pack.i278, i32 7
  %681 = ptrtoint ptr %arrayinit.element18.i to i32
  call void @__asan_store2_noabort(i32 %681)
  store i16 0, ptr %arrayinit.element18.i, align 2
  %arrayinit.element19.i = getelementptr inbounds i16, ptr %pack.i278, i32 8
  %682 = ptrtoint ptr %arrayinit.element19.i to i32
  call void @__asan_store2_noabort(i32 %682)
  store i16 -28622, ptr %arrayinit.element19.i, align 2
  %arrayinit.element20.i289 = getelementptr inbounds i16, ptr %pack.i278, i32 9
  %683 = ptrtoint ptr %arrayinit.element20.i289 to i32
  call void @__asan_store2_noabort(i32 %683)
  store i16 0, ptr %arrayinit.element20.i289, align 2
  %arrayinit.element21.i290 = getelementptr inbounds i16, ptr %pack.i278, i32 10
  %684 = ptrtoint ptr %arrayinit.element21.i290 to i32
  call void @__asan_store2_noabort(i32 %684)
  store i16 -28621, ptr %arrayinit.element21.i290, align 2
  %arrayinit.element22.i291 = getelementptr inbounds i16, ptr %pack.i278, i32 11
  %685 = ptrtoint ptr %arrayinit.element22.i291 to i32
  call void @__asan_store2_noabort(i32 %685)
  store i16 0, ptr %arrayinit.element22.i291, align 2
  %arrayinit.element23.i292 = getelementptr inbounds i16, ptr %pack.i278, i32 12
  %686 = ptrtoint ptr %arrayinit.element23.i292 to i32
  call void @__asan_store2_noabort(i32 %686)
  store i16 -28620, ptr %arrayinit.element23.i292, align 2
  %arrayinit.element24.i293 = getelementptr inbounds i16, ptr %pack.i278, i32 13
  %687 = ptrtoint ptr %arrayinit.element24.i293 to i32
  call void @__asan_store2_noabort(i32 %687)
  store i16 0, ptr %arrayinit.element24.i293, align 2
  %arrayinit.element25.i294 = getelementptr inbounds i16, ptr %pack.i278, i32 14
  %688 = ptrtoint ptr %arrayinit.element25.i294 to i32
  call void @__asan_store2_noabort(i32 %688)
  store i16 -28619, ptr %arrayinit.element25.i294, align 2
  %arrayinit.element26.i = getelementptr inbounds i16, ptr %pack.i278, i32 15
  %689 = ptrtoint ptr %arrayinit.element26.i to i32
  call void @__asan_store2_noabort(i32 %689)
  store i16 0, ptr %arrayinit.element26.i, align 2
  %arrayinit.element27.i = getelementptr inbounds i16, ptr %pack.i278, i32 16
  %690 = ptrtoint ptr %arrayinit.element27.i to i32
  call void @__asan_store2_noabort(i32 %690)
  store i16 -28618, ptr %arrayinit.element27.i, align 2
  %arrayinit.element28.i295 = getelementptr inbounds i16, ptr %pack.i278, i32 17
  %691 = ptrtoint ptr %arrayinit.element28.i295 to i32
  call void @__asan_store2_noabort(i32 %691)
  store i16 0, ptr %arrayinit.element28.i295, align 2
  %arrayinit.element29.i296 = getelementptr inbounds i16, ptr %pack.i278, i32 18
  %692 = ptrtoint ptr %arrayinit.element29.i296 to i32
  call void @__asan_store2_noabort(i32 %692)
  store i16 -28617, ptr %arrayinit.element29.i296, align 2
  %arrayinit.element30.i = getelementptr inbounds i16, ptr %pack.i278, i32 19
  %693 = ptrtoint ptr %arrayinit.element30.i to i32
  call void @__asan_store2_noabort(i32 %693)
  store i16 0, ptr %arrayinit.element30.i, align 2
  %arrayinit.element31.i = getelementptr inbounds i16, ptr %pack.i278, i32 20
  %694 = ptrtoint ptr %arrayinit.element31.i to i32
  call void @__asan_store2_noabort(i32 %694)
  store i16 -28608, ptr %arrayinit.element31.i, align 2
  %arrayinit.element32.i = getelementptr inbounds i16, ptr %pack.i278, i32 21
  %695 = ptrtoint ptr %arrayinit.element32.i to i32
  call void @__asan_store2_noabort(i32 %695)
  store i16 0, ptr %arrayinit.element32.i, align 2
  %arrayinit.element33.i = getelementptr inbounds i16, ptr %pack.i278, i32 22
  %696 = ptrtoint ptr %arrayinit.element33.i to i32
  call void @__asan_store2_noabort(i32 %696)
  store i16 -28672, ptr %arrayinit.element33.i, align 2
  %arrayinit.element34.i = getelementptr inbounds i16, ptr %pack.i278, i32 23
  %conv.i297 = trunc i32 %or12.i to i16
  %697 = ptrtoint ptr %arrayinit.element34.i to i32
  call void @__asan_store2_noabort(i32 %697)
  store i16 %conv.i297, ptr %arrayinit.element34.i, align 2
  %arrayinit.element35.i = getelementptr inbounds i16, ptr %pack.i278, i32 24
  %698 = ptrtoint ptr %arrayinit.element35.i to i32
  call void @__asan_store2_noabort(i32 %698)
  store i16 -28671, ptr %arrayinit.element35.i, align 2
  %699 = ptrtoint ptr %audio_flags.i to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load i32, ptr %audio_flags.i, align 4
  %701 = trunc i32 %700 to i16
  %conv41.i = or i16 %701, 512
  %702 = ptrtoint ptr %672 to i32
  call void @__asan_store2_noabort(i32 %702)
  store i16 %conv41.i, ptr %672, align 2
  %arrayinit.element42.i299 = getelementptr inbounds i16, ptr %pack.i278, i32 26
  %703 = ptrtoint ptr %arrayinit.element42.i299 to i32
  call void @__asan_store2_noabort(i32 %703)
  store i16 -28672, ptr %arrayinit.element42.i299, align 2
  %arrayinit.element43.i300 = getelementptr inbounds i16, ptr %pack.i278, i32 27
  %704 = load i32, ptr %audio_flags.i, align 4
  %705 = lshr i32 %704, 6
  %shl49.i = and i32 %705, 1024
  %or50.i = or i32 %shl49.i, %or12.i
  %conv51.i = trunc i32 %or50.i to i16
  %706 = ptrtoint ptr %arrayinit.element43.i300 to i32
  call void @__asan_store2_noabort(i32 %706)
  store i16 %conv51.i, ptr %arrayinit.element43.i300, align 2
  %arrayinit.element52.i301 = getelementptr inbounds i16, ptr %pack.i278, i32 28
  %arrayinit.element56.i302 = getelementptr inbounds i16, ptr %pack.i278, i32 32
  %707 = ptrtoint ptr %arrayinit.element52.i301 to i32
  call void @__asan_storeN_noabort(i32 %707, i32 8)
  store i64 0, ptr %arrayinit.element52.i301, align 2
  %708 = ptrtoint ptr %arrayinit.element56.i302 to i32
  call void @__asan_store2_noabort(i32 %708)
  store i16 8197, ptr %arrayinit.element56.i302, align 2
  %arrayinit.element57.i303 = getelementptr inbounds i16, ptr %pack.i278, i32 33
  %709 = ptrtoint ptr %arrayinit.element57.i303 to i32
  call void @__asan_store2_noabort(i32 %709)
  store i16 0, ptr %arrayinit.element57.i303, align 2
  %arrayinit.element58.i304 = getelementptr inbounds i16, ptr %pack.i278, i32 34
  %710 = ptrtoint ptr %arrayinit.element58.i304 to i32
  call void @__asan_store2_noabort(i32 %710)
  store i16 -28607, ptr %arrayinit.element58.i304, align 2
  %arrayinit.element59.i305 = getelementptr inbounds i16, ptr %pack.i278, i32 35
  %711 = ptrtoint ptr %arrayinit.element59.i305 to i32
  call void @__asan_store2_noabort(i32 %711)
  store i16 0, ptr %arrayinit.element59.i305, align 2
  %arrayinit.element60.i306 = getelementptr inbounds i16, ptr %pack.i278, i32 36
  %712 = ptrtoint ptr %arrayinit.element60.i306 to i32
  call void @__asan_store2_noabort(i32 %712)
  store i16 -28606, ptr %arrayinit.element60.i306, align 2
  %arrayinit.element61.i307 = getelementptr inbounds i16, ptr %pack.i278, i32 37
  %713 = ptrtoint ptr %arrayinit.element61.i307 to i32
  call void @__asan_store2_noabort(i32 %713)
  store i16 256, ptr %arrayinit.element61.i307, align 2
  %arrayinit.element62.i = getelementptr inbounds i16, ptr %pack.i278, i32 38
  %714 = ptrtoint ptr %arrayinit.element62.i to i32
  call void @__asan_store2_noabort(i32 %714)
  store i16 -28605, ptr %arrayinit.element62.i, align 2
  %arrayinit.element63.i = getelementptr inbounds i16, ptr %pack.i278, i32 39
  %715 = ptrtoint ptr %arrayinit.element63.i to i32
  call void @__asan_store2_noabort(i32 %715)
  store i16 0, ptr %arrayinit.element63.i, align 2
  %arrayinit.element64.i308 = getelementptr inbounds i16, ptr %pack.i278, i32 40
  %716 = ptrtoint ptr %arrayinit.element64.i308 to i32
  call void @__asan_store2_noabort(i32 %716)
  store i16 -28604, ptr %arrayinit.element64.i308, align 2
  %arrayinit.element65.i309 = getelementptr inbounds i16, ptr %pack.i278, i32 41
  %717 = ptrtoint ptr %arrayinit.element65.i309 to i32
  call void @__asan_store2_noabort(i32 %717)
  store i16 16, ptr %arrayinit.element65.i309, align 2
  %arrayinit.element66.i = getelementptr inbounds i16, ptr %pack.i278, i32 42
  %718 = ptrtoint ptr %arrayinit.element66.i to i32
  call void @__asan_store2_noabort(i32 %718)
  store i16 -28603, ptr %arrayinit.element66.i, align 2
  %arrayinit.element67.i = getelementptr inbounds i16, ptr %pack.i278, i32 43
  %719 = ptrtoint ptr %arrayinit.element67.i to i32
  call void @__asan_store2_noabort(i32 %719)
  store i16 16, ptr %arrayinit.element67.i, align 2
  %arrayinit.element68.i310 = getelementptr inbounds i16, ptr %pack.i278, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %space)
  %cmp.i.i311 = icmp slt i32 %space, 64
  %720 = call ptr @memset(ptr %arrayinit.element68.i310, i32 0, i32 40)
  br i1 %cmp.i.i311, label %sw.bb21.audio_to_package.exit_crit_edge, label %sw.bb21.for.body.i.i317_crit_edge

sw.bb21.for.body.i.i317_crit_edge:                ; preds = %sw.bb21
  br label %for.body.i.i317

sw.bb21.audio_to_package.exit_crit_edge:          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  br label %audio_to_package.exit

for.body.i.i317:                                  ; preds = %for.body.i.i317.for.body.i.i317_crit_edge, %sw.bb21.for.body.i.i317_crit_edge
  %i.09.i.i312 = phi i32 [ %inc.i.i315, %for.body.i.i317.for.body.i.i317_crit_edge ], [ 0, %sw.bb21.for.body.i.i317_crit_edge ]
  %add.ptr.i.i313 = getelementptr i16, ptr %pack.i278, i32 %i.09.i.i312
  %721 = ptrtoint ptr %add.ptr.i.i313 to i32
  call void @__asan_load2_noabort(i32 %721)
  %722 = load i16, ptr %add.ptr.i.i313, align 2
  %723 = tail call i16 @llvm.bswap.i16(i16 %722) #10
  %arrayidx.i.i314 = getelementptr i16, ptr %code, i32 %i.09.i.i312
  %724 = ptrtoint ptr %arrayidx.i.i314 to i32
  call void @__asan_store2_noabort(i32 %724)
  store i16 %723, ptr %arrayidx.i.i314, align 2
  %inc.i.i315 = add nuw nsw i32 %i.09.i.i312, 1
  %exitcond.not.i.i316 = icmp eq i32 %inc.i.i315, 64
  br i1 %exitcond.not.i.i316, label %for.body.i.i317.audio_to_package.exit_crit_edge, label %for.body.i.i317.for.body.i.i317_crit_edge

for.body.i.i317.for.body.i.i317_crit_edge:        ; preds = %for.body.i.i317
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i317

for.body.i.i317.audio_to_package.exit_crit_edge:  ; preds = %for.body.i.i317
  call void @__sanitizer_cov_trace_pc() #12
  br label %audio_to_package.exit

audio_to_package.exit:                            ; preds = %for.body.i.i317.audio_to_package.exit_crit_edge, %sw.bb21.audio_to_package.exit_crit_edge
  %retval.0.i.i318 = phi i32 [ -1, %sw.bb21.audio_to_package.exit_crit_edge ], [ 64, %for.body.i.i317.audio_to_package.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %pack.i278) #10
  br label %return

sw.bb23:                                          ; preds = %entry
  %modet.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 45
  %725 = ptrtoint ptr %modet.i to i32
  call void @__asan_load1_noabort(i32 %725)
  %bf.load.i320 = load i8, ptr %modet.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i320)
  %tobool.not.i321 = icmp sgt i8 %bf.load.i320, -1
  %arrayidx2.i = getelementptr %struct.go7007, ptr %go, i32 0, i32 45, i32 1
  %726 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %726)
  %bf.load3.i = load i8, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load3.i)
  %tobool6.not.i = icmp sgt i8 %bf.load3.i, -1
  %arrayidx9.i = getelementptr %struct.go7007, ptr %go, i32 0, i32 45, i32 2
  %727 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %727)
  %bf.load10.i = load i8, ptr %arrayidx9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load10.i)
  %tobool13.not.i = icmp sgt i8 %bf.load10.i, -1
  %arrayidx16.i = getelementptr %struct.go7007, ptr %go, i32 0, i32 45, i32 3
  %728 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %728)
  %bf.load17.i = load i8, ptr %arrayidx16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load17.i)
  %tobool20.not.i322 = icmp sgt i8 %bf.load17.i, -1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pack.i319) #10
  %729 = call ptr @memset(ptr %pack.i319, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %thresholds.i) #10
  %730 = getelementptr inbounds i8, ptr %thresholds.i, i32 34
  %731 = call ptr @memset(ptr %730, i32 255, i32 30)
  %732 = ptrtoint ptr %thresholds.i to i32
  call void @__asan_store2_noabort(i32 %732)
  store i16 8206, ptr %thresholds.i, align 2
  %arrayinit.element.i323 = getelementptr inbounds i16, ptr %thresholds.i, i32 1
  %733 = ptrtoint ptr %arrayinit.element.i323 to i32
  call void @__asan_store2_noabort(i32 %733)
  store i16 0, ptr %arrayinit.element.i323, align 2
  %arrayinit.element22.i324 = getelementptr inbounds i16, ptr %thresholds.i, i32 2
  %734 = ptrtoint ptr %arrayinit.element22.i324 to i32
  call void @__asan_store2_noabort(i32 %734)
  store i16 -16510, ptr %arrayinit.element22.i324, align 2
  %arrayinit.element23.i325 = getelementptr inbounds i16, ptr %thresholds.i, i32 3
  br i1 %tobool.not.i321, label %sw.bb23.cond.end.i_crit_edge, label %cond.true.i

sw.bb23.cond.end.i_crit_edge:                     ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.true.i:                                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  %pixel_threshold.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 45, i32 0, i32 1
  %735 = ptrtoint ptr %pixel_threshold.i to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load i32, ptr %pixel_threshold.i, align 4
  %phi.cast = trunc i32 %736 to i16
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %sw.bb23.cond.end.i_crit_edge
  %cond.i326 = phi i16 [ %phi.cast, %cond.true.i ], [ 32767, %sw.bb23.cond.end.i_crit_edge ]
  %737 = ptrtoint ptr %arrayinit.element23.i325 to i32
  call void @__asan_store2_noabort(i32 %737)
  store i16 %cond.i326, ptr %arrayinit.element23.i325, align 2
  %arrayinit.element27.i328 = getelementptr inbounds i16, ptr %thresholds.i, i32 4
  %738 = ptrtoint ptr %arrayinit.element27.i328 to i32
  call void @__asan_store2_noabort(i32 %738)
  store i16 -16509, ptr %arrayinit.element27.i328, align 2
  %arrayinit.element28.i329 = getelementptr inbounds i16, ptr %thresholds.i, i32 5
  br i1 %tobool6.not.i, label %cond.end.i.cond.end36.i_crit_edge, label %cond.true31.i

cond.end.i.cond.end36.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end36.i

cond.true31.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %pixel_threshold34.i = getelementptr %struct.go7007, ptr %go, i32 0, i32 45, i32 1, i32 1
  %739 = ptrtoint ptr %pixel_threshold34.i to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load i32, ptr %pixel_threshold34.i, align 4
  %phi.cast359.i = trunc i32 %740 to i16
  br label %cond.end36.i

cond.end36.i:                                     ; preds = %cond.true31.i, %cond.end.i.cond.end36.i_crit_edge
  %cond37.i = phi i16 [ %phi.cast359.i, %cond.true31.i ], [ 32767, %cond.end.i.cond.end36.i_crit_edge ]
  %741 = ptrtoint ptr %arrayinit.element28.i329 to i32
  call void @__asan_store2_noabort(i32 %741)
  store i16 %cond37.i, ptr %arrayinit.element28.i329, align 2
  %arrayinit.element39.i330 = getelementptr inbounds i16, ptr %thresholds.i, i32 6
  %742 = ptrtoint ptr %arrayinit.element39.i330 to i32
  call void @__asan_store2_noabort(i32 %742)
  store i16 -16508, ptr %arrayinit.element39.i330, align 2
  %arrayinit.element40.i331 = getelementptr inbounds i16, ptr %thresholds.i, i32 7
  br i1 %tobool13.not.i, label %cond.end36.i.cond.end48.i_crit_edge, label %cond.true43.i

cond.end36.i.cond.end48.i_crit_edge:              ; preds = %cond.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end48.i

cond.true43.i:                                    ; preds = %cond.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  %pixel_threshold46.i = getelementptr %struct.go7007, ptr %go, i32 0, i32 45, i32 2, i32 1
  %743 = ptrtoint ptr %pixel_threshold46.i to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load i32, ptr %pixel_threshold46.i, align 4
  %phi.cast360.i = trunc i32 %744 to i16
  br label %cond.end48.i

cond.end48.i:                                     ; preds = %cond.true43.i, %cond.end36.i.cond.end48.i_crit_edge
  %cond49.i = phi i16 [ %phi.cast360.i, %cond.true43.i ], [ 32767, %cond.end36.i.cond.end48.i_crit_edge ]
  %745 = ptrtoint ptr %arrayinit.element40.i331 to i32
  call void @__asan_store2_noabort(i32 %745)
  store i16 %cond49.i, ptr %arrayinit.element40.i331, align 2
  %arrayinit.element51.i332 = getelementptr inbounds i16, ptr %thresholds.i, i32 8
  %746 = ptrtoint ptr %arrayinit.element51.i332 to i32
  call void @__asan_store2_noabort(i32 %746)
  store i16 -16507, ptr %arrayinit.element51.i332, align 2
  %arrayinit.element52.i333 = getelementptr inbounds i16, ptr %thresholds.i, i32 9
  br i1 %tobool20.not.i322, label %cond.end48.i.cond.end60.i_crit_edge, label %cond.true55.i

cond.end48.i.cond.end60.i_crit_edge:              ; preds = %cond.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end60.i

cond.true55.i:                                    ; preds = %cond.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  %pixel_threshold58.i = getelementptr %struct.go7007, ptr %go, i32 0, i32 45, i32 3, i32 1
  %747 = ptrtoint ptr %pixel_threshold58.i to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load i32, ptr %pixel_threshold58.i, align 4
  %phi.cast361.i = trunc i32 %748 to i16
  br label %cond.end60.i

cond.end60.i:                                     ; preds = %cond.true55.i, %cond.end48.i.cond.end60.i_crit_edge
  %cond61.i = phi i16 [ %phi.cast361.i, %cond.true55.i ], [ 32767, %cond.end48.i.cond.end60.i_crit_edge ]
  %749 = ptrtoint ptr %arrayinit.element52.i333 to i32
  call void @__asan_store2_noabort(i32 %749)
  store i16 %cond61.i, ptr %arrayinit.element52.i333, align 2
  %arrayinit.element63.i334 = getelementptr inbounds i16, ptr %thresholds.i, i32 10
  %750 = ptrtoint ptr %arrayinit.element63.i334 to i32
  call void @__asan_store2_noabort(i32 %750)
  store i16 -16506, ptr %arrayinit.element63.i334, align 2
  %arrayinit.element64.i335 = getelementptr inbounds i16, ptr %thresholds.i, i32 11
  br i1 %tobool.not.i321, label %cond.end60.i.cond.end71.i_crit_edge, label %cond.true67.i

cond.end60.i.cond.end71.i_crit_edge:              ; preds = %cond.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end71.i

cond.true67.i:                                    ; preds = %cond.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  %motion_threshold.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 45, i32 0, i32 2
  %751 = ptrtoint ptr %motion_threshold.i to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load i32, ptr %motion_threshold.i, align 4
  %phi.cast356.i = trunc i32 %752 to i16
  br label %cond.end71.i

cond.end71.i:                                     ; preds = %cond.true67.i, %cond.end60.i.cond.end71.i_crit_edge
  %cond72.i = phi i16 [ %phi.cast356.i, %cond.true67.i ], [ 32767, %cond.end60.i.cond.end71.i_crit_edge ]
  %753 = ptrtoint ptr %arrayinit.element64.i335 to i32
  call void @__asan_store2_noabort(i32 %753)
  store i16 %cond72.i, ptr %arrayinit.element64.i335, align 2
  %arrayinit.element74.i = getelementptr inbounds i16, ptr %thresholds.i, i32 12
  %754 = ptrtoint ptr %arrayinit.element74.i to i32
  call void @__asan_store2_noabort(i32 %754)
  store i16 -16505, ptr %arrayinit.element74.i, align 2
  %arrayinit.element75.i336 = getelementptr inbounds i16, ptr %thresholds.i, i32 13
  br i1 %tobool6.not.i, label %cond.end71.i.cond.end83.i_crit_edge, label %cond.true78.i

cond.end71.i.cond.end83.i_crit_edge:              ; preds = %cond.end71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end83.i

cond.true78.i:                                    ; preds = %cond.end71.i
  call void @__sanitizer_cov_trace_pc() #12
  %motion_threshold81.i = getelementptr %struct.go7007, ptr %go, i32 0, i32 45, i32 1, i32 2
  %755 = ptrtoint ptr %motion_threshold81.i to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load i32, ptr %motion_threshold81.i, align 4
  %phi.cast344.i = trunc i32 %756 to i16
  br label %cond.end83.i

cond.end83.i:                                     ; preds = %cond.true78.i, %cond.end71.i.cond.end83.i_crit_edge
  %cond84.i = phi i16 [ %phi.cast344.i, %cond.true78.i ], [ 32767, %cond.end71.i.cond.end83.i_crit_edge ]
  %757 = ptrtoint ptr %arrayinit.element75.i336 to i32
  call void @__asan_store2_noabort(i32 %757)
  store i16 %cond84.i, ptr %arrayinit.element75.i336, align 2
  %arrayinit.element86.i = getelementptr inbounds i16, ptr %thresholds.i, i32 14
  %758 = ptrtoint ptr %arrayinit.element86.i to i32
  call void @__asan_store2_noabort(i32 %758)
  store i16 -16504, ptr %arrayinit.element86.i, align 2
  %arrayinit.element87.i = getelementptr inbounds i16, ptr %thresholds.i, i32 15
  br i1 %tobool13.not.i, label %cond.end83.i.cond.end95.i_crit_edge, label %cond.true90.i

cond.end83.i.cond.end95.i_crit_edge:              ; preds = %cond.end83.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end95.i

cond.true90.i:                                    ; preds = %cond.end83.i
  call void @__sanitizer_cov_trace_pc() #12
  %motion_threshold93.i = getelementptr %struct.go7007, ptr %go, i32 0, i32 45, i32 2, i32 2
  %759 = ptrtoint ptr %motion_threshold93.i to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load i32, ptr %motion_threshold93.i, align 4
  %phi.cast345.i = trunc i32 %760 to i16
  br label %cond.end95.i

cond.end95.i:                                     ; preds = %cond.true90.i, %cond.end83.i.cond.end95.i_crit_edge
  %cond96.i = phi i16 [ %phi.cast345.i, %cond.true90.i ], [ 32767, %cond.end83.i.cond.end95.i_crit_edge ]
  %761 = ptrtoint ptr %arrayinit.element87.i to i32
  call void @__asan_store2_noabort(i32 %761)
  store i16 %cond96.i, ptr %arrayinit.element87.i, align 2
  %arrayinit.element98.i = getelementptr inbounds i16, ptr %thresholds.i, i32 16
  %762 = ptrtoint ptr %arrayinit.element98.i to i32
  call void @__asan_store2_noabort(i32 %762)
  store i16 -16503, ptr %arrayinit.element98.i, align 2
  br i1 %tobool20.not.i322, label %cond.end95.i.cond.end107.i_crit_edge, label %cond.true102.i

cond.end95.i.cond.end107.i_crit_edge:             ; preds = %cond.end95.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end107.i

cond.true102.i:                                   ; preds = %cond.end95.i
  call void @__sanitizer_cov_trace_pc() #12
  %motion_threshold105.i = getelementptr %struct.go7007, ptr %go, i32 0, i32 45, i32 3, i32 2
  %763 = ptrtoint ptr %motion_threshold105.i to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load i32, ptr %motion_threshold105.i, align 4
  %phi.cast.i337 = trunc i32 %764 to i16
  br label %cond.end107.i

cond.end107.i:                                    ; preds = %cond.true102.i, %cond.end95.i.cond.end107.i_crit_edge
  %cond108.i = phi i16 [ %phi.cast.i337, %cond.true102.i ], [ 32767, %cond.end95.i.cond.end107.i_crit_edge ]
  %765 = ptrtoint ptr %730 to i32
  call void @__asan_store2_noabort(i32 %765)
  store i16 %cond108.i, ptr %730, align 2
  %arrayinit.element110.i = getelementptr inbounds i16, ptr %thresholds.i, i32 18
  %766 = ptrtoint ptr %arrayinit.element110.i to i32
  call void @__asan_store2_noabort(i32 %766)
  store i16 -16502, ptr %arrayinit.element110.i, align 2
  %arrayinit.element111.i = getelementptr inbounds i16, ptr %thresholds.i, i32 19
  br i1 %tobool.not.i321, label %cond.end107.i.cond.end118.i_crit_edge, label %cond.true114.i

cond.end107.i.cond.end118.i_crit_edge:            ; preds = %cond.end107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end118.i

cond.true114.i:                                   ; preds = %cond.end107.i
  call void @__sanitizer_cov_trace_pc() #12
  %mb_threshold.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 45, i32 0, i32 3
  %767 = ptrtoint ptr %mb_threshold.i to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load i32, ptr %mb_threshold.i, align 4
  %phi.cast313.i = trunc i32 %768 to i16
  br label %cond.end118.i

cond.end118.i:                                    ; preds = %cond.true114.i, %cond.end107.i.cond.end118.i_crit_edge
  %cond119.i = phi i16 [ %phi.cast313.i, %cond.true114.i ], [ 32767, %cond.end107.i.cond.end118.i_crit_edge ]
  %769 = ptrtoint ptr %arrayinit.element111.i to i32
  call void @__asan_store2_noabort(i32 %769)
  store i16 %cond119.i, ptr %arrayinit.element111.i, align 2
  %arrayinit.element121.i = getelementptr inbounds i16, ptr %thresholds.i, i32 20
  %770 = ptrtoint ptr %arrayinit.element121.i to i32
  call void @__asan_store2_noabort(i32 %770)
  store i16 -16501, ptr %arrayinit.element121.i, align 2
  %arrayinit.element122.i = getelementptr inbounds i16, ptr %thresholds.i, i32 21
  br i1 %tobool6.not.i, label %cond.end118.i.cond.end130.i_crit_edge, label %cond.true125.i

cond.end118.i.cond.end130.i_crit_edge:            ; preds = %cond.end118.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end130.i

cond.true125.i:                                   ; preds = %cond.end118.i
  call void @__sanitizer_cov_trace_pc() #12
  %mb_threshold128.i = getelementptr %struct.go7007, ptr %go, i32 0, i32 45, i32 1, i32 3
  %771 = ptrtoint ptr %mb_threshold128.i to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load i32, ptr %mb_threshold128.i, align 4
  %phi.cast314.i = trunc i32 %772 to i16
  br label %cond.end130.i

cond.end130.i:                                    ; preds = %cond.true125.i, %cond.end118.i.cond.end130.i_crit_edge
  %cond131.i = phi i16 [ %phi.cast314.i, %cond.true125.i ], [ 32767, %cond.end118.i.cond.end130.i_crit_edge ]
  %773 = ptrtoint ptr %arrayinit.element122.i to i32
  call void @__asan_store2_noabort(i32 %773)
  store i16 %cond131.i, ptr %arrayinit.element122.i, align 2
  %arrayinit.element133.i338 = getelementptr inbounds i16, ptr %thresholds.i, i32 22
  %774 = ptrtoint ptr %arrayinit.element133.i338 to i32
  call void @__asan_store2_noabort(i32 %774)
  store i16 -16500, ptr %arrayinit.element133.i338, align 2
  %arrayinit.element134.i = getelementptr inbounds i16, ptr %thresholds.i, i32 23
  br i1 %tobool13.not.i, label %cond.end130.i.cond.end142.i_crit_edge, label %cond.true137.i

cond.end130.i.cond.end142.i_crit_edge:            ; preds = %cond.end130.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end142.i

cond.true137.i:                                   ; preds = %cond.end130.i
  call void @__sanitizer_cov_trace_pc() #12
  %mb_threshold140.i = getelementptr %struct.go7007, ptr %go, i32 0, i32 45, i32 2, i32 3
  %775 = ptrtoint ptr %mb_threshold140.i to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load i32, ptr %mb_threshold140.i, align 4
  %phi.cast315.i = trunc i32 %776 to i16
  br label %cond.end142.i

cond.end142.i:                                    ; preds = %cond.true137.i, %cond.end130.i.cond.end142.i_crit_edge
  %cond143.i = phi i16 [ %phi.cast315.i, %cond.true137.i ], [ 32767, %cond.end130.i.cond.end142.i_crit_edge ]
  %777 = ptrtoint ptr %arrayinit.element134.i to i32
  call void @__asan_store2_noabort(i32 %777)
  store i16 %cond143.i, ptr %arrayinit.element134.i, align 2
  %arrayinit.element145.i = getelementptr inbounds i16, ptr %thresholds.i, i32 24
  %778 = ptrtoint ptr %arrayinit.element145.i to i32
  call void @__asan_store2_noabort(i32 %778)
  store i16 -16499, ptr %arrayinit.element145.i, align 2
  %arrayinit.element146.i = getelementptr inbounds i16, ptr %thresholds.i, i32 25
  br i1 %tobool20.not.i322, label %cond.end142.i.cond.end154.i_crit_edge, label %cond.true149.i

cond.end142.i.cond.end154.i_crit_edge:            ; preds = %cond.end142.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end154.i

cond.true149.i:                                   ; preds = %cond.end142.i
  call void @__sanitizer_cov_trace_pc() #12
  %mb_threshold152.i = getelementptr %struct.go7007, ptr %go, i32 0, i32 45, i32 3, i32 3
  %779 = ptrtoint ptr %mb_threshold152.i to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load i32, ptr %mb_threshold152.i, align 4
  %phi.cast316.i = trunc i32 %780 to i16
  br label %cond.end154.i

cond.end154.i:                                    ; preds = %cond.true149.i, %cond.end142.i.cond.end154.i_crit_edge
  %cond155.i = phi i16 [ %phi.cast316.i, %cond.true149.i ], [ 32767, %cond.end142.i.cond.end154.i_crit_edge ]
  %781 = ptrtoint ptr %arrayinit.element146.i to i32
  call void @__asan_store2_noabort(i32 %781)
  store i16 %cond155.i, ptr %arrayinit.element146.i, align 2
  %arrayinit.element157.i339 = getelementptr inbounds i16, ptr %thresholds.i, i32 26
  %782 = ptrtoint ptr %arrayinit.element157.i339 to i32
  call void @__asan_store2_noabort(i32 %782)
  store i16 -16498, ptr %arrayinit.element157.i339, align 2
  %arrayinit.element158.i = getelementptr inbounds i16, ptr %thresholds.i, i32 27
  %783 = ptrtoint ptr %arrayinit.element158.i to i32
  call void @__asan_store2_noabort(i32 %783)
  store i16 0, ptr %arrayinit.element158.i, align 2
  %arrayinit.element159.i = getelementptr inbounds i16, ptr %thresholds.i, i32 28
  %784 = ptrtoint ptr %arrayinit.element159.i to i32
  call void @__asan_store2_noabort(i32 %784)
  store i16 -16497, ptr %arrayinit.element159.i, align 2
  %arrayinit.element160.i = getelementptr inbounds i16, ptr %thresholds.i, i32 29
  %785 = ptrtoint ptr %arrayinit.element160.i to i32
  call void @__asan_store2_noabort(i32 %785)
  store i16 0, ptr %arrayinit.element160.i, align 2
  %arrayinit.element161.i = getelementptr inbounds i16, ptr %thresholds.i, i32 30
  %786 = ptrtoint ptr %arrayinit.element161.i to i32
  call void @__asan_store2_noabort(i32 %786)
  store i16 0, ptr %arrayinit.element161.i, align 2
  %arrayinit.element162.i = getelementptr inbounds i16, ptr %thresholds.i, i32 31
  %787 = ptrtoint ptr %arrayinit.element162.i to i32
  call void @__asan_store2_noabort(i32 %787)
  store i16 0, ptr %arrayinit.element162.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %space)
  %cmp.i.i340 = icmp slt i32 %space, 32
  br i1 %cmp.i.i340, label %cond.end154.i.modet_to_package.exit_crit_edge, label %cond.end154.i.for.body.i.i346_crit_edge

cond.end154.i.for.body.i.i346_crit_edge:          ; preds = %cond.end154.i
  br label %for.body.i.i346

cond.end154.i.modet_to_package.exit_crit_edge:    ; preds = %cond.end154.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %modet_to_package.exit

for.body.i.i346:                                  ; preds = %for.body.i.i346.for.body.i.i346_crit_edge, %cond.end154.i.for.body.i.i346_crit_edge
  %i.09.i.i341 = phi i32 [ %inc.i.i344, %for.body.i.i346.for.body.i.i346_crit_edge ], [ 0, %cond.end154.i.for.body.i.i346_crit_edge ]
  %add.ptr.i.i342 = getelementptr i16, ptr %thresholds.i, i32 %i.09.i.i341
  %788 = ptrtoint ptr %add.ptr.i.i342 to i32
  call void @__asan_load2_noabort(i32 %788)
  %789 = load i16, ptr %add.ptr.i.i342, align 2
  %790 = tail call i16 @llvm.bswap.i16(i16 %789) #10
  %arrayidx.i.i343 = getelementptr i16, ptr %code, i32 %i.09.i.i341
  %791 = ptrtoint ptr %arrayidx.i.i343 to i32
  call void @__asan_store2_noabort(i32 %791)
  store i16 %790, ptr %arrayidx.i.i343, align 2
  %inc.i.i344 = add nuw nsw i32 %i.09.i.i341, 1
  %exitcond.not.i.i345 = icmp eq i32 %inc.i.i344, 32
  br i1 %exitcond.not.i.i345, label %if.end.i347, label %for.body.i.i346.for.body.i.i346_crit_edge

for.body.i.i346.for.body.i.i346_crit_edge:        ; preds = %for.body.i.i346
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i346

if.end.i347:                                      ; preds = %for.body.i.i346
  %792 = call ptr @memset(ptr %pack.i319, i32 0, i32 64)
  br label %for.body.i351

for.body.i351:                                    ; preds = %for.inc.i.for.body.i351_crit_edge, %if.end.i347
  %cnt.0352.i = phi i32 [ 32, %if.end.i347 ], [ %cnt.2.i, %for.inc.i.for.body.i351_crit_edge ]
  %addr.0351.i = phi i32 [ 47808, %if.end.i347 ], [ %addr.1.i355, %for.inc.i.for.body.i351_crit_edge ]
  %i.0350.i = phi i32 [ 0, %if.end.i347 ], [ %i.2.i, %for.inc.i.for.body.i351_crit_edge ]
  %mb.0348.i = phi i32 [ 0, %if.end.i347 ], [ %inc207.i, %for.inc.i.for.body.i351_crit_edge ]
  %mul.i348 = shl i32 %i.0350.i, 1
  %add167.i = add i32 %mul.i348, 3
  %arrayidx168.i = getelementptr [32 x i16], ptr %pack.i319, i32 0, i32 %add167.i
  %793 = ptrtoint ptr %arrayidx168.i to i32
  call void @__asan_load2_noabort(i32 %793)
  %794 = load i16, ptr %arrayidx168.i, align 2
  %shl.i349 = shl i16 %794, 2
  %arrayidx171.i = getelementptr %struct.go7007, ptr %go, i32 0, i32 46, i32 %mb.0348.i
  %795 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_load1_noabort(i32 %795)
  %796 = load i8, ptr %arrayidx171.i, align 1
  %conv172.i = zext i8 %796 to i16
  %or.i350 = or i16 %shl.i349, %conv172.i
  store i16 %or.i350, ptr %arrayidx168.i, align 2
  %797 = and i32 %mb.0348.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %797)
  %cmp178.not.i = icmp eq i32 %797, 7
  br i1 %cmp178.not.i, label %if.end181.i, label %for.body.i351.for.inc.i_crit_edge

for.body.i351.for.inc.i_crit_edge:                ; preds = %for.body.i351
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end181.i:                                      ; preds = %for.body.i351
  %inc.i352 = add i32 %addr.0351.i, 1
  %conv182.i = trunc i32 %addr.0351.i to i16
  %add184.i = add i32 %mul.i348, 2
  %arrayidx185.i = getelementptr [32 x i16], ptr %pack.i319, i32 0, i32 %add184.i
  %798 = ptrtoint ptr %arrayidx185.i to i32
  call void @__asan_store2_noabort(i32 %798)
  store i16 %conv182.i, ptr %arrayidx185.i, align 2
  %inc186.i = add i32 %i.0350.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc186.i)
  %cmp187.i = icmp eq i32 %inc186.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1623, i32 %mb.0348.i)
  %cmp189.i = icmp eq i32 %mb.0348.i, 1623
  %or.cond.i = select i1 %cmp187.i, i1 true, i1 %cmp189.i
  br i1 %or.cond.i, label %if.then191.i, label %if.end181.i.if.end203.i_crit_edge

if.end181.i.if.end203.i_crit_edge:                ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end203.i

if.then191.i:                                     ; preds = %if.end181.i
  %799 = trunc i32 %inc186.i to i16
  %conv193.i = or i16 %799, 8192
  %800 = ptrtoint ptr %pack.i319 to i32
  call void @__asan_store2_noabort(i32 %800)
  store i16 %conv193.i, ptr %pack.i319, align 2
  %add.ptr.i353 = getelementptr i16, ptr %code, i32 %cnt.0352.i
  %sub.i354 = sub i32 %space, %cnt.0352.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i354)
  %cmp.i318.i = icmp slt i32 %sub.i354, 32
  br i1 %cmp.i318.i, label %if.then191.i.modet_to_package.exit_crit_edge, label %if.then191.i.for.body.i325.i_crit_edge

if.then191.i.for.body.i325.i_crit_edge:           ; preds = %if.then191.i
  br label %for.body.i325.i

if.then191.i.modet_to_package.exit_crit_edge:     ; preds = %if.then191.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %modet_to_package.exit

for.body.i325.i:                                  ; preds = %for.body.i325.i.for.body.i325.i_crit_edge, %if.then191.i.for.body.i325.i_crit_edge
  %i.09.i320.i = phi i32 [ %inc.i323.i, %for.body.i325.i.for.body.i325.i_crit_edge ], [ 0, %if.then191.i.for.body.i325.i_crit_edge ]
  %add.ptr.i321.i = getelementptr i16, ptr %pack.i319, i32 %i.09.i320.i
  %801 = ptrtoint ptr %add.ptr.i321.i to i32
  call void @__asan_load2_noabort(i32 %801)
  %802 = load i16, ptr %add.ptr.i321.i, align 2
  %803 = tail call i16 @llvm.bswap.i16(i16 %802) #10
  %arrayidx.i322.i = getelementptr i16, ptr %add.ptr.i353, i32 %i.09.i320.i
  %804 = ptrtoint ptr %arrayidx.i322.i to i32
  call void @__asan_store2_noabort(i32 %804)
  store i16 %803, ptr %arrayidx.i322.i, align 2
  %inc.i323.i = add nuw nsw i32 %i.09.i320.i, 1
  %exitcond.not.i324.i = icmp eq i32 %inc.i323.i, 32
  br i1 %exitcond.not.i324.i, label %if.end200.i, label %for.body.i325.i.for.body.i325.i_crit_edge

for.body.i325.i.for.body.i325.i_crit_edge:        ; preds = %for.body.i325.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i325.i

if.end200.i:                                      ; preds = %for.body.i325.i
  call void @__sanitizer_cov_trace_pc() #12
  %add201.i = add i32 %cnt.0352.i, 32
  %805 = call ptr @memset(ptr %pack.i319, i32 0, i32 64)
  br label %if.end203.i

if.end203.i:                                      ; preds = %if.end200.i, %if.end181.i.if.end203.i_crit_edge
  %i.1.i = phi i32 [ 0, %if.end200.i ], [ %inc186.i, %if.end181.i.if.end203.i_crit_edge ]
  %cnt.1.i = phi i32 [ %add201.i, %if.end200.i ], [ %cnt.0352.i, %if.end181.i.if.end203.i_crit_edge ]
  %mul204.i = shl i32 %i.1.i, 1
  %add205.i = add i32 %mul204.i, 3
  %arrayidx206.i = getelementptr [32 x i16], ptr %pack.i319, i32 0, i32 %add205.i
  %806 = ptrtoint ptr %arrayidx206.i to i32
  call void @__asan_store2_noabort(i32 %806)
  store i16 0, ptr %arrayidx206.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end203.i, %for.body.i351.for.inc.i_crit_edge
  %i.2.i = phi i32 [ %i.0350.i, %for.body.i351.for.inc.i_crit_edge ], [ %i.1.i, %if.end203.i ]
  %addr.1.i355 = phi i32 [ %addr.0351.i, %for.body.i351.for.inc.i_crit_edge ], [ %inc.i352, %if.end203.i ]
  %cnt.2.i = phi i32 [ %cnt.0352.i, %for.body.i351.for.inc.i_crit_edge ], [ %cnt.1.i, %if.end203.i ]
  %inc207.i = add nuw nsw i32 %mb.0348.i, 1
  %exitcond.not.i356 = icmp eq i32 %inc207.i, 1624
  br i1 %exitcond.not.i356, label %for.end.i357, label %for.inc.i.for.body.i351_crit_edge

for.inc.i.for.body.i351_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i351

for.end.i357:                                     ; preds = %for.inc.i
  %807 = getelementptr inbounds i8, ptr %pack.i319, i32 2
  %808 = call ptr @memset(ptr %807, i32 0, i32 62)
  br label %for.body212.i

for.body212.i:                                    ; preds = %for.inc241.i.for.body212.i_crit_edge, %for.end.i357
  %cnt.3355.i = phi i32 [ %cnt.2.i, %for.end.i357 ], [ %cnt.4.i, %for.inc241.i.for.body212.i_crit_edge ]
  %addr.2354.i = phi i32 [ 48016, %for.end.i357 ], [ %inc242.i, %for.inc241.i.for.body212.i_crit_edge ]
  %i.3353.i = phi i32 [ 0, %for.end.i357 ], [ %i.4.i, %for.inc241.i.for.body212.i_crit_edge ]
  %conv213.i = trunc i32 %addr.2354.i to i16
  %mul214.i = shl i32 %i.3353.i, 1
  %add215.i = add i32 %mul214.i, 2
  %arrayidx216.i = getelementptr [32 x i16], ptr %pack.i319, i32 0, i32 %add215.i
  %809 = ptrtoint ptr %arrayidx216.i to i32
  call void @__asan_store2_noabort(i32 %809)
  store i16 %conv213.i, ptr %arrayidx216.i, align 2
  %add218.i = add i32 %mul214.i, 3
  %arrayidx219.i = getelementptr [32 x i16], ptr %pack.i319, i32 0, i32 %add218.i
  %810 = ptrtoint ptr %arrayidx219.i to i32
  call void @__asan_store2_noabort(i32 %810)
  store i16 0, ptr %arrayidx219.i, align 2
  %inc220.i = add i32 %i.3353.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc220.i)
  %cmp221.i = icmp eq i32 %inc220.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 48121, i32 %addr.2354.i)
  %cmp224.i = icmp eq i32 %addr.2354.i, 48121
  %or.cond317.i = select i1 %cmp221.i, i1 true, i1 %cmp224.i
  br i1 %or.cond317.i, label %if.then226.i, label %for.body212.i.for.inc241.i_crit_edge

for.body212.i.for.inc241.i_crit_edge:             ; preds = %for.body212.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc241.i

if.then226.i:                                     ; preds = %for.body212.i
  %811 = trunc i32 %inc220.i to i16
  %conv228.i = or i16 %811, 8192
  %812 = ptrtoint ptr %pack.i319 to i32
  call void @__asan_store2_noabort(i32 %812)
  store i16 %conv228.i, ptr %pack.i319, align 2
  %add.ptr230.i = getelementptr i16, ptr %code, i32 %cnt.3355.i
  %sub232.i = sub i32 %space, %cnt.3355.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub232.i)
  %cmp.i328.i = icmp slt i32 %sub232.i, 32
  br i1 %cmp.i328.i, label %if.then226.i.modet_to_package.exit_crit_edge, label %if.then226.i.for.body.i335.i_crit_edge

if.then226.i.for.body.i335.i_crit_edge:           ; preds = %if.then226.i
  br label %for.body.i335.i

if.then226.i.modet_to_package.exit_crit_edge:     ; preds = %if.then226.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %modet_to_package.exit

for.body.i335.i:                                  ; preds = %for.body.i335.i.for.body.i335.i_crit_edge, %if.then226.i.for.body.i335.i_crit_edge
  %i.09.i330.i = phi i32 [ %inc.i333.i, %for.body.i335.i.for.body.i335.i_crit_edge ], [ 0, %if.then226.i.for.body.i335.i_crit_edge ]
  %add.ptr.i331.i = getelementptr i16, ptr %pack.i319, i32 %i.09.i330.i
  %813 = ptrtoint ptr %add.ptr.i331.i to i32
  call void @__asan_load2_noabort(i32 %813)
  %814 = load i16, ptr %add.ptr.i331.i, align 2
  %815 = tail call i16 @llvm.bswap.i16(i16 %814) #10
  %arrayidx.i332.i = getelementptr i16, ptr %add.ptr230.i, i32 %i.09.i330.i
  %816 = ptrtoint ptr %arrayidx.i332.i to i32
  call void @__asan_store2_noabort(i32 %816)
  store i16 %815, ptr %arrayidx.i332.i, align 2
  %inc.i333.i = add nuw nsw i32 %i.09.i330.i, 1
  %exitcond.not.i334.i = icmp eq i32 %inc.i333.i, 32
  br i1 %exitcond.not.i334.i, label %if.end237.i, label %for.body.i335.i.for.body.i335.i_crit_edge

for.body.i335.i.for.body.i335.i_crit_edge:        ; preds = %for.body.i335.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i335.i

if.end237.i:                                      ; preds = %for.body.i335.i
  call void @__sanitizer_cov_trace_pc() #12
  %add238.i = add i32 %cnt.3355.i, 32
  %817 = call ptr @memset(ptr %pack.i319, i32 0, i32 64)
  br label %for.inc241.i

for.inc241.i:                                     ; preds = %if.end237.i, %for.body212.i.for.inc241.i_crit_edge
  %i.4.i = phi i32 [ 0, %if.end237.i ], [ %inc220.i, %for.body212.i.for.inc241.i_crit_edge ]
  %cnt.4.i = phi i32 [ %add238.i, %if.end237.i ], [ %cnt.3355.i, %for.body212.i.for.inc241.i_crit_edge ]
  %inc242.i = add nuw nsw i32 %addr.2354.i, 1
  %exitcond358.not.i = icmp eq i32 %inc242.i, 48122
  br i1 %exitcond358.not.i, label %for.inc241.i.modet_to_package.exit_crit_edge, label %for.inc241.i.for.body212.i_crit_edge

for.inc241.i.for.body212.i_crit_edge:             ; preds = %for.inc241.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body212.i

for.inc241.i.modet_to_package.exit_crit_edge:     ; preds = %for.inc241.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %modet_to_package.exit

modet_to_package.exit:                            ; preds = %for.inc241.i.modet_to_package.exit_crit_edge, %if.then226.i.modet_to_package.exit_crit_edge, %if.then191.i.modet_to_package.exit_crit_edge, %cond.end154.i.modet_to_package.exit_crit_edge
  %retval.0.i358 = phi i32 [ -1, %cond.end154.i.modet_to_package.exit_crit_edge ], [ %cnt.4.i, %for.inc241.i.modet_to_package.exit_crit_edge ], [ -1, %if.then226.i.modet_to_package.exit_crit_edge ], [ -1, %if.then191.i.modet_to_package.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %thresholds.i) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pack.i319) #10
  br label %return

do.end:                                           ; preds = %sw.bb.do.end_crit_edge, %entry.do.end_crit_edge
  %818 = ptrtoint ptr %go to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load ptr, ptr %go, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %819, ptr noundef nonnull @.str.14, i32 noundef %conv) #13
  br label %return

return:                                           ; preds = %do.end, %modet_to_package.exit, %audio_to_package.exit, %final_package.exit, %avsync_to_package.exit, %sw.bb14, %sw.bb12, %sw.bb10.return_crit_edge, %config_package.exit, %brctrl_to_package.exit, %done.i110, %sw.bb4.return_crit_edge, %done.i81, %sw.bb2.return_crit_edge, %done.i, %sw.bb1.return_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ %retval.0.i358, %modet_to_package.exit ], [ %retval.0.i.i318, %audio_to_package.exit ], [ %retval.0.i.i277, %final_package.exit ], [ %retval.0.i.i232, %avsync_to_package.exit ], [ %call15, %sw.bb14 ], [ %call13, %sw.bb12 ], [ %retval.0.i.i193, %config_package.exit ], [ %retval.0.i.i, %brctrl_to_package.exit ], [ 0, %sw.bb10.return_crit_edge ], [ %off.1.i, %done.i ], [ -12, %sw.bb1.return_crit_edge ], [ %off.1.i80, %done.i81 ], [ -12, %sw.bb2.return_crit_edge ], [ %off.2.i, %done.i110 ], [ -12, %sw.bb4.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @seqhead_to_package(ptr noundef %go, ptr nocapture noundef writeonly %code, i32 noundef %space, ptr nocapture noundef readonly %sequence_header_func) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [40 x i8], align 1
  %pack = alloca [100 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor_framerate.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 32
  %0 = ptrtoint ptr %sensor_framerate.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sensor_framerate.i, align 8
  %fps_scale.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 40
  %2 = ptrtoint ptr %fps_scale.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fps_scale.i, align 8
  %div.i = sdiv i32 %1, %3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %entry
  %i.0.i = phi i32 [ 31, %entry ], [ %dec.i, %for.cond.i.for.cond.i_crit_edge ]
  %div.highbits.i = lshr i32 %div.i, %i.0.i
  %.not.not.i = icmp eq i32 %div.highbits.i, 0
  %dec.i = add i32 %i.0.i, -1
  br i1 %.not.not.i, label %for.cond.i.for.cond.i_crit_edge, label %vti_bitlen.exit

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

vti_bitlen.exit:                                  ; preds = %for.cond.i
  %add.i = add i32 %i.0.i, 1
  %interlace_coding = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 44
  %4 = ptrtoint ptr %interlace_coding to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %interlace_coding, align 8
  %5 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %cond = select i1 %tobool.not, i32 1, i32 2
  %mul = mul i32 %cond, %div.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buf) #10
  %6 = call ptr @memset(ptr %buf, i32 0, i32 40)
  %call1 = call i32 %sequence_header_func(ptr noundef %go, ptr noundef nonnull %buf, i32 noundef 1) #10, !callees !66
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %pack) #10
  %7 = ptrtoint ptr %pack to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 8198, ptr %pack, align 2
  %arrayinit.element = getelementptr inbounds i16, ptr %pack, i32 1
  %8 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %arrayinit.element, align 2
  %arrayinit.element2 = getelementptr inbounds i16, ptr %pack, i32 2
  %9 = ptrtoint ptr %arrayinit.element2 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -16632, ptr %arrayinit.element2, align 2
  %arrayinit.element3 = getelementptr inbounds i16, ptr %pack, i32 3
  %conv = trunc i32 %mul to i16
  %10 = ptrtoint ptr %arrayinit.element3 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %arrayinit.element3, align 2
  %arrayinit.element4 = getelementptr inbounds i16, ptr %pack, i32 4
  %11 = ptrtoint ptr %arrayinit.element4 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -16631, ptr %arrayinit.element4, align 2
  %arrayinit.element5 = getelementptr inbounds i16, ptr %pack, i32 5
  %12 = ptrtoint ptr %arrayinit.element5 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %arrayinit.element5, align 2
  %arrayinit.element6 = getelementptr inbounds i16, ptr %pack, i32 6
  %13 = ptrtoint ptr %arrayinit.element6 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -16398, ptr %arrayinit.element6, align 2
  %arrayinit.element7 = getelementptr inbounds i16, ptr %pack, i32 7
  %conv8 = trunc i32 %add.i to i16
  %14 = ptrtoint ptr %arrayinit.element7 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv8, ptr %arrayinit.element7, align 2
  %arrayinit.element9 = getelementptr inbounds i16, ptr %pack, i32 8
  %15 = ptrtoint ptr %arrayinit.element9 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -16397, ptr %arrayinit.element9, align 2
  %arrayinit.element10 = getelementptr inbounds i16, ptr %pack, i32 9
  %notmask = shl nsw i32 -1, %add.i
  %16 = trunc i32 %notmask to i16
  %conv11 = xor i16 %16, -1
  %17 = ptrtoint ptr %arrayinit.element10 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv11, ptr %arrayinit.element10, align 2
  %arrayinit.element12 = getelementptr inbounds i16, ptr %pack, i32 10
  %18 = ptrtoint ptr %arrayinit.element12 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -16410, ptr %arrayinit.element12, align 2
  %arrayinit.element13 = getelementptr inbounds i16, ptr %pack, i32 11
  %19 = ptrtoint ptr %arrayinit.element13 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %arrayinit.element13, align 2
  %arrayinit.element14 = getelementptr inbounds i16, ptr %pack, i32 12
  %20 = ptrtoint ptr %arrayinit.element14 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -16409, ptr %arrayinit.element14, align 2
  %arrayinit.element15 = getelementptr inbounds i16, ptr %pack, i32 13
  %div16 = sdiv i32 %mul, 1000
  %div16.tr = trunc i32 %div16 to i16
  %conv18 = shl i16 %div16.tr, 8
  %21 = ptrtoint ptr %arrayinit.element15 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv18, ptr %arrayinit.element15, align 2
  %arrayinit.element19 = getelementptr inbounds i16, ptr %pack, i32 14
  %arrayinit.element37 = getelementptr inbounds i16, ptr %pack, i32 32
  %22 = call ptr @memset(ptr %arrayinit.element19, i32 0, i32 36)
  %23 = ptrtoint ptr %arrayinit.element37 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 8199, ptr %arrayinit.element37, align 2
  %arrayinit.element38 = getelementptr inbounds i16, ptr %pack, i32 33
  %24 = ptrtoint ptr %arrayinit.element38 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %arrayinit.element38, align 2
  %arrayinit.element39 = getelementptr inbounds i16, ptr %pack, i32 34
  %25 = ptrtoint ptr %arrayinit.element39 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -14336, ptr %arrayinit.element39, align 2
  %arrayinit.element40 = getelementptr inbounds i16, ptr %pack, i32 35
  %arrayidx = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 2
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  %conv41 = zext i8 %27 to i16
  %shl42 = shl nuw i16 %conv41, 8
  %arrayidx43 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 3
  %28 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %29 to i16
  %or = or i16 %shl42, %conv44
  %30 = ptrtoint ptr %arrayinit.element40 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %or, ptr %arrayinit.element40, align 2
  %arrayinit.element46 = getelementptr inbounds i16, ptr %pack, i32 36
  %31 = ptrtoint ptr %arrayinit.element46 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -14335, ptr %arrayinit.element46, align 2
  %arrayinit.element47 = getelementptr inbounds i16, ptr %pack, i32 37
  %arrayidx48 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 4
  %32 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %33 to i16
  %shl50 = shl nuw i16 %conv49, 8
  %arrayidx51 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 5
  %34 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %35 to i16
  %or53 = or i16 %shl50, %conv52
  %36 = ptrtoint ptr %arrayinit.element47 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %or53, ptr %arrayinit.element47, align 2
  %arrayinit.element55 = getelementptr inbounds i16, ptr %pack, i32 38
  %37 = ptrtoint ptr %arrayinit.element55 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -14334, ptr %arrayinit.element55, align 2
  %arrayinit.element56 = getelementptr inbounds i16, ptr %pack, i32 39
  %arrayidx57 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 6
  %38 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %39 to i16
  %shl59 = shl nuw i16 %conv58, 8
  %arrayidx60 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 7
  %40 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %41 to i16
  %or62 = or i16 %shl59, %conv61
  %42 = ptrtoint ptr %arrayinit.element56 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %or62, ptr %arrayinit.element56, align 2
  %arrayinit.element64 = getelementptr inbounds i16, ptr %pack, i32 40
  %43 = ptrtoint ptr %arrayinit.element64 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 -14333, ptr %arrayinit.element64, align 2
  %arrayinit.element65 = getelementptr inbounds i16, ptr %pack, i32 41
  %arrayidx66 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 8
  %44 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %45 to i16
  %shl68 = shl nuw i16 %conv67, 8
  %arrayidx69 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 9
  %46 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %47 to i16
  %or71 = or i16 %shl68, %conv70
  %48 = ptrtoint ptr %arrayinit.element65 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %or71, ptr %arrayinit.element65, align 2
  %arrayinit.element73 = getelementptr inbounds i16, ptr %pack, i32 42
  %49 = ptrtoint ptr %arrayinit.element73 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 -15354, ptr %arrayinit.element73, align 2
  %arrayinit.element74 = getelementptr inbounds i16, ptr %pack, i32 43
  %50 = ptrtoint ptr %arrayinit.element74 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 64, ptr %arrayinit.element74, align 2
  %arrayinit.element75 = getelementptr inbounds i16, ptr %pack, i32 44
  %51 = ptrtoint ptr %arrayinit.element75 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 -15353, ptr %arrayinit.element75, align 2
  %arrayinit.element76 = getelementptr inbounds i16, ptr %pack, i32 45
  %52 = trunc i32 %call1 to i16
  %conv78 = add i16 %52, -64
  %53 = ptrtoint ptr %arrayinit.element76 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv78, ptr %arrayinit.element76, align 2
  %arrayinit.element79 = getelementptr inbounds i16, ptr %pack, i32 46
  %54 = ptrtoint ptr %arrayinit.element79 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 -14821, ptr %arrayinit.element79, align 2
  %arrayinit.element80 = getelementptr inbounds i16, ptr %pack, i32 47
  %55 = ptrtoint ptr %arrayinit.element80 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 1, ptr %arrayinit.element80, align 2
  %arrayinit.element81 = getelementptr inbounds i16, ptr %pack, i32 48
  %arrayinit.element97 = getelementptr inbounds i16, ptr %pack, i32 64
  %56 = call ptr @memset(ptr %arrayinit.element81, i32 0, i32 32)
  %57 = ptrtoint ptr %arrayinit.element97 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 8206, ptr %arrayinit.element97, align 2
  %arrayinit.element98 = getelementptr inbounds i16, ptr %pack, i32 65
  %58 = ptrtoint ptr %arrayinit.element98 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %arrayinit.element98, align 2
  %arrayinit.element99 = getelementptr inbounds i16, ptr %pack, i32 66
  %59 = ptrtoint ptr %arrayinit.element99 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 -14328, ptr %arrayinit.element99, align 2
  %arrayinit.element100 = getelementptr inbounds i16, ptr %pack, i32 67
  %arrayidx101 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 10
  %60 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx101, align 1
  %conv102 = zext i8 %61 to i16
  %shl103 = shl nuw i16 %conv102, 8
  %arrayidx104 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 11
  %62 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx104, align 1
  %conv105 = zext i8 %63 to i16
  %or106 = or i16 %shl103, %conv105
  %64 = ptrtoint ptr %arrayinit.element100 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %or106, ptr %arrayinit.element100, align 2
  %arrayinit.element108 = getelementptr inbounds i16, ptr %pack, i32 68
  %65 = ptrtoint ptr %arrayinit.element108 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 -14327, ptr %arrayinit.element108, align 2
  %arrayinit.element109 = getelementptr inbounds i16, ptr %pack, i32 69
  %arrayidx110 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 12
  %66 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %67 to i16
  %shl112 = shl nuw i16 %conv111, 8
  %arrayidx113 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 13
  %68 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx113, align 1
  %conv114 = zext i8 %69 to i16
  %or115 = or i16 %shl112, %conv114
  %70 = ptrtoint ptr %arrayinit.element109 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %or115, ptr %arrayinit.element109, align 2
  %arrayinit.element117 = getelementptr inbounds i16, ptr %pack, i32 70
  %71 = ptrtoint ptr %arrayinit.element117 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 -14326, ptr %arrayinit.element117, align 2
  %arrayinit.element118 = getelementptr inbounds i16, ptr %pack, i32 71
  %arrayidx119 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 14
  %72 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx119, align 1
  %conv120 = zext i8 %73 to i16
  %shl121 = shl nuw i16 %conv120, 8
  %arrayidx122 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 15
  %74 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx122, align 1
  %conv123 = zext i8 %75 to i16
  %or124 = or i16 %shl121, %conv123
  %76 = ptrtoint ptr %arrayinit.element118 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %or124, ptr %arrayinit.element118, align 2
  %arrayinit.element126 = getelementptr inbounds i16, ptr %pack, i32 72
  %77 = ptrtoint ptr %arrayinit.element126 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 -14325, ptr %arrayinit.element126, align 2
  %arrayinit.element127 = getelementptr inbounds i16, ptr %pack, i32 73
  %arrayidx128 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 16
  %78 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx128, align 1
  %conv129 = zext i8 %79 to i16
  %shl130 = shl nuw i16 %conv129, 8
  %arrayidx131 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 17
  %80 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx131, align 1
  %conv132 = zext i8 %81 to i16
  %or133 = or i16 %shl130, %conv132
  %82 = ptrtoint ptr %arrayinit.element127 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %or133, ptr %arrayinit.element127, align 2
  %arrayinit.element135 = getelementptr inbounds i16, ptr %pack, i32 74
  %83 = ptrtoint ptr %arrayinit.element135 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 -14324, ptr %arrayinit.element135, align 2
  %arrayinit.element136 = getelementptr inbounds i16, ptr %pack, i32 75
  %arrayidx137 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 18
  %84 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx137, align 1
  %conv138 = zext i8 %85 to i16
  %shl139 = shl nuw i16 %conv138, 8
  %arrayidx140 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 19
  %86 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx140, align 1
  %conv141 = zext i8 %87 to i16
  %or142 = or i16 %shl139, %conv141
  %88 = ptrtoint ptr %arrayinit.element136 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %or142, ptr %arrayinit.element136, align 2
  %arrayinit.element144 = getelementptr inbounds i16, ptr %pack, i32 76
  %89 = ptrtoint ptr %arrayinit.element144 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 -14323, ptr %arrayinit.element144, align 2
  %arrayinit.element145 = getelementptr inbounds i16, ptr %pack, i32 77
  %arrayidx146 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 20
  %90 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx146, align 1
  %conv147 = zext i8 %91 to i16
  %shl148 = shl nuw i16 %conv147, 8
  %arrayidx149 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 21
  %92 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx149, align 1
  %conv150 = zext i8 %93 to i16
  %or151 = or i16 %shl148, %conv150
  %94 = ptrtoint ptr %arrayinit.element145 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %or151, ptr %arrayinit.element145, align 2
  %arrayinit.element153 = getelementptr inbounds i16, ptr %pack, i32 78
  %95 = ptrtoint ptr %arrayinit.element153 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 -14322, ptr %arrayinit.element153, align 2
  %arrayinit.element154 = getelementptr inbounds i16, ptr %pack, i32 79
  %arrayidx155 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 22
  %96 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx155, align 1
  %conv156 = zext i8 %97 to i16
  %shl157 = shl nuw i16 %conv156, 8
  %arrayidx158 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 23
  %98 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx158, align 1
  %conv159 = zext i8 %99 to i16
  %or160 = or i16 %shl157, %conv159
  %100 = ptrtoint ptr %arrayinit.element154 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %or160, ptr %arrayinit.element154, align 2
  %arrayinit.element162 = getelementptr inbounds i16, ptr %pack, i32 80
  %101 = ptrtoint ptr %arrayinit.element162 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 -14321, ptr %arrayinit.element162, align 2
  %arrayinit.element163 = getelementptr inbounds i16, ptr %pack, i32 81
  %arrayidx164 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 24
  %102 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx164, align 1
  %conv165 = zext i8 %103 to i16
  %shl166 = shl nuw i16 %conv165, 8
  %arrayidx167 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 25
  %104 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx167, align 1
  %conv168 = zext i8 %105 to i16
  %or169 = or i16 %shl166, %conv168
  %106 = ptrtoint ptr %arrayinit.element163 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %or169, ptr %arrayinit.element163, align 2
  %arrayinit.element171 = getelementptr inbounds i16, ptr %pack, i32 82
  %107 = ptrtoint ptr %arrayinit.element171 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 -14320, ptr %arrayinit.element171, align 2
  %arrayinit.element172 = getelementptr inbounds i16, ptr %pack, i32 83
  %arrayidx173 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 26
  %108 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx173, align 1
  %conv174 = zext i8 %109 to i16
  %shl175 = shl nuw i16 %conv174, 8
  %arrayidx176 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 27
  %110 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx176, align 1
  %conv177 = zext i8 %111 to i16
  %or178 = or i16 %shl175, %conv177
  %112 = ptrtoint ptr %arrayinit.element172 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %or178, ptr %arrayinit.element172, align 2
  %arrayinit.element180 = getelementptr inbounds i16, ptr %pack, i32 84
  %113 = ptrtoint ptr %arrayinit.element180 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 -14319, ptr %arrayinit.element180, align 2
  %arrayinit.element181 = getelementptr inbounds i16, ptr %pack, i32 85
  %arrayidx182 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 28
  %114 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx182, align 1
  %conv183 = zext i8 %115 to i16
  %shl184 = shl nuw i16 %conv183, 8
  %arrayidx185 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 29
  %116 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx185, align 1
  %conv186 = zext i8 %117 to i16
  %or187 = or i16 %shl184, %conv186
  %118 = ptrtoint ptr %arrayinit.element181 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %or187, ptr %arrayinit.element181, align 2
  %arrayinit.element189 = getelementptr inbounds i16, ptr %pack, i32 86
  %119 = ptrtoint ptr %arrayinit.element189 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 -14318, ptr %arrayinit.element189, align 2
  %arrayinit.element190 = getelementptr inbounds i16, ptr %pack, i32 87
  %arrayidx191 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 30
  %120 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx191, align 1
  %conv192 = zext i8 %121 to i16
  %shl193 = shl nuw i16 %conv192, 8
  %arrayidx194 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 31
  %122 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx194, align 1
  %conv195 = zext i8 %123 to i16
  %or196 = or i16 %shl193, %conv195
  %124 = ptrtoint ptr %arrayinit.element190 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %or196, ptr %arrayinit.element190, align 2
  %arrayinit.element198 = getelementptr inbounds i16, ptr %pack, i32 88
  %125 = ptrtoint ptr %arrayinit.element198 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 -14317, ptr %arrayinit.element198, align 2
  %arrayinit.element199 = getelementptr inbounds i16, ptr %pack, i32 89
  %arrayidx200 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 32
  %126 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx200, align 1
  %conv201 = zext i8 %127 to i16
  %shl202 = shl nuw i16 %conv201, 8
  %arrayidx203 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 33
  %128 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx203, align 1
  %conv204 = zext i8 %129 to i16
  %or205 = or i16 %shl202, %conv204
  %130 = ptrtoint ptr %arrayinit.element199 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %or205, ptr %arrayinit.element199, align 2
  %arrayinit.element207 = getelementptr inbounds i16, ptr %pack, i32 90
  %131 = ptrtoint ptr %arrayinit.element207 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 -14316, ptr %arrayinit.element207, align 2
  %arrayinit.element208 = getelementptr inbounds i16, ptr %pack, i32 91
  %arrayidx209 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 34
  %132 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx209, align 1
  %conv210 = zext i8 %133 to i16
  %shl211 = shl nuw i16 %conv210, 8
  %arrayidx212 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 35
  %134 = ptrtoint ptr %arrayidx212 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx212, align 1
  %conv213 = zext i8 %135 to i16
  %or214 = or i16 %shl211, %conv213
  %136 = ptrtoint ptr %arrayinit.element208 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %or214, ptr %arrayinit.element208, align 2
  %arrayinit.element216 = getelementptr inbounds i16, ptr %pack, i32 92
  %137 = ptrtoint ptr %arrayinit.element216 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 -14315, ptr %arrayinit.element216, align 2
  %arrayinit.element217 = getelementptr inbounds i16, ptr %pack, i32 93
  %arrayidx218 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 36
  %138 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx218, align 1
  %conv219 = zext i8 %139 to i16
  %shl220 = shl nuw i16 %conv219, 8
  %arrayidx221 = getelementptr inbounds [40 x i8], ptr %buf, i32 0, i32 37
  %140 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx221, align 1
  %conv222 = zext i8 %141 to i16
  %or223 = or i16 %shl220, %conv222
  %142 = ptrtoint ptr %arrayinit.element217 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %or223, ptr %arrayinit.element217, align 2
  %arrayinit.element225 = getelementptr inbounds i16, ptr %pack, i32 94
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %space)
  %cmp.i = icmp slt i32 %space, 96
  %143 = call ptr @memset(ptr %arrayinit.element225, i32 0, i32 12)
  br i1 %cmp.i, label %vti_bitlen.exit.copy_packages.exit_crit_edge, label %vti_bitlen.exit.for.body.i_crit_edge

vti_bitlen.exit.for.body.i_crit_edge:             ; preds = %vti_bitlen.exit
  br label %for.body.i

vti_bitlen.exit.copy_packages.exit_crit_edge:     ; preds = %vti_bitlen.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_packages.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %vti_bitlen.exit.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %vti_bitlen.exit.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i16, ptr %pack, i32 %i.09.i
  %144 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %add.ptr.i, align 2
  %146 = call i16 @llvm.bswap.i16(i16 %145) #10
  %arrayidx.i = getelementptr i16, ptr %code, i32 %i.09.i
  %147 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %146, ptr %arrayidx.i, align 2
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 96
  br i1 %exitcond.not.i, label %for.body.i.copy_packages.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.copy_packages.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_packages.exit

copy_packages.exit:                               ; preds = %for.body.i.copy_packages.exit_crit_edge, %vti_bitlen.exit.copy_packages.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %vti_bitlen.exit.copy_packages.exit_crit_edge ], [ 96, %for.body.i.copy_packages.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %pack) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buf) #10
  ret i32 %retval.0.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpeg1_sequence_header(ptr nocapture noundef readonly %go, ptr nocapture noundef writeonly %buf, i32 noundef %ext) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 6
  %format = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 38
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %format, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 826757197, i32 %1)
  %cmp = icmp eq i32 %1, 826757197
  %aspect_ratio1 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 42
  %2 = ptrtoint ptr %aspect_ratio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %aspect_ratio1, align 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %3, label %if.then.if.end_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %standard = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 30
  %5 = ptrtoint ptr %standard to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %standard, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2 = icmp eq i32 %6, 0
  %cond = select i1 %cmp2, i8 48, i8 32
  br label %if.end

sw.bb3:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %standard4 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 30
  %7 = ptrtoint ptr %standard4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %standard4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5 = icmp eq i32 %8, 0
  %cond6 = select i1 %cmp5, i8 80, i8 64
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch.selectcmp = icmp eq i32 %3, 2
  %switch.select = select i1 %switch.selectcmp, i8 48, i8 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %switch.selectcmp1053 = icmp eq i32 %3, 1
  %switch.select1054 = select i1 %switch.selectcmp1053, i8 32, i8 %switch.select
  br label %if.end

if.end:                                           ; preds = %if.else, %sw.bb3, %sw.bb, %if.then.if.end_crit_edge
  %aspect_ratio.0 = phi i8 [ %cond6, %sw.bb3 ], [ %cond, %sw.bb ], [ 16, %if.then.if.end_crit_edge ], [ %switch.select1054, %if.else ]
  %sensor_framerate = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 32
  %9 = ptrtoint ptr %sensor_framerate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sensor_framerate, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %10, label %sw.default32 [
    i32 24000, label %if.end.while.body143.preheader_crit_edge
    i32 24024, label %sw.bb13
    i32 25025, label %sw.bb14
    i32 30000, label %sw.bb16
    i32 30030, label %sw.bb24
  ]

if.end.while.body143.preheader_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body143.preheader

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body143.preheader

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %interlace_coding = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 44
  %12 = ptrtoint ptr %interlace_coding to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %interlace_coding, align 8
  %13 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %cond15 = select i1 %tobool.not, i8 3, i8 6
  br label %while.body143.preheader

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %interlace_coding17 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 44
  %14 = ptrtoint ptr %interlace_coding17 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load18 = load i8, ptr %interlace_coding17, align 8
  %15 = and i8 %bf.load18, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool22.not = icmp eq i8 %15, 0
  %cond23 = select i1 %tobool22.not, i8 4, i8 7
  br label %while.body143.preheader

sw.bb24:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %interlace_coding25 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 44
  %16 = ptrtoint ptr %interlace_coding25 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load26 = load i8, ptr %interlace_coding25, align 8
  %17 = and i8 %bf.load26, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool30.not = icmp eq i8 %17, 0
  %cond31 = select i1 %tobool30.not, i8 5, i8 8
  br label %while.body143.preheader

sw.default32:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body143.preheader

while.body143.preheader:                          ; preds = %sw.default32, %sw.bb24, %sw.bb16, %sw.bb14, %sw.bb13, %if.end.while.body143.preheader_crit_edge
  %picture_rate.0 = phi i8 [ 5, %sw.default32 ], [ %cond31, %sw.bb24 ], [ %cond23, %sw.bb16 ], [ %cond15, %sw.bb14 ], [ 2, %sw.bb13 ], [ 1, %if.end.while.body143.preheader_crit_edge ]
  %width = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 33
  %18 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width, align 4
  %20 = lshr i32 %19, 4
  %conv = trunc i32 %20 to i8
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %add.ptr, align 1
  %height = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 34
  %22 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height, align 8
  %shl51 = shl i32 %23, 16
  %shl43 = shl i32 %19, 28
  %or53 = or i32 %shl51, %shl43
  %incdec.ptr = getelementptr i8, ptr %buf, i32 7
  %shr60 = lshr i32 %or53, 24
  %conv61 = trunc i32 %shr60 to i8
  %24 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv61, ptr %incdec.ptr, align 1
  %incdec.ptr64 = getelementptr i8, ptr %buf, i32 8
  %conv61.1 = trunc i32 %23 to i8
  %25 = ptrtoint ptr %incdec.ptr64 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv61.1, ptr %incdec.ptr64, align 1
  %incdec.ptr64.1 = getelementptr i8, ptr %buf, i32 9
  %or107 = or i8 %picture_rate.0, %aspect_ratio.0
  %26 = ptrtoint ptr %incdec.ptr64.1 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %or107, ptr %incdec.ptr64.1, align 1
  %27 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %format, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 843534413, i32 %28)
  %cmp132 = icmp eq i32 %28, 843534413
  %cond134 = select i1 %cmp132, i32 327680000, i32 -16384
  %incdec.ptr118 = getelementptr i8, ptr %buf, i32 10
  %shr145 = lshr i32 %cond134, 24
  %conv146 = trunc i32 %shr145 to i8
  %29 = ptrtoint ptr %incdec.ptr118 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv146, ptr %incdec.ptr118, align 1
  %incdec.ptr149 = getelementptr i8, ptr %buf, i32 11
  %30 = lshr i32 %cond134, 16
  %conv146.1 = trunc i32 %30 to i8
  %31 = ptrtoint ptr %incdec.ptr149 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv146.1, ptr %incdec.ptr149, align 1
  %incdec.ptr149.1 = getelementptr i8, ptr %buf, i32 12
  %shl151.1 = shl i32 %cond134, 16
  %32 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %format, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 843534413, i32 %33)
  %cmp190 = icmp eq i32 %33, 843534413
  %cond192 = select i1 %cmp190, i32 58720256, i32 10485760
  %or165 = or i32 %shl151.1, 536870912
  %or196 = or i32 %cond192, %or165
  %shr203 = lshr i32 %or196, 24
  %conv204 = trunc i32 %shr203 to i8
  %34 = ptrtoint ptr %incdec.ptr149.1 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv204, ptr %incdec.ptr149.1, align 1
  %incdec.ptr207 = getelementptr i8, ptr %buf, i32 13
  %shl209 = shl i32 %cond192, 8
  %shr230 = lshr exact i32 %shl209, 24
  %conv231 = trunc i32 %shr230 to i8
  %35 = ptrtoint ptr %incdec.ptr207 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv231, ptr %incdec.ptr207, align 1
  %incdec.ptr234 = getelementptr i8, ptr %buf, i32 14
  %36 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %format, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 843534413, i32 %37)
  %cmp281 = icmp eq i32 %37, 843534413
  br i1 %cmp281, label %while.body295, label %while.body143.preheader.if.end754_crit_edge

while.body143.preheader.if.end754_crit_edge:      ; preds = %while.body143.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end754

while.body295:                                    ; preds = %while.body143.preheader
  %sub286 = add nsw i32 32, -24
  %shl288 = shl nuw nsw i32 1, %sub286
  %or290 = or i32 %shl288, 0
  %shr297 = lshr i32 %or290, 24
  %conv298 = trunc i32 %shr297 to i8
  %38 = ptrtoint ptr %incdec.ptr234 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv298, ptr %incdec.ptr234, align 1
  %incdec.ptr301 = getelementptr i8, ptr %incdec.ptr234, i32 1
  %shl303 = shl i32 %or290, 8
  %add307 = add nuw nsw i32 64, 8
  %add305 = add nsw i32 32, -16
  %shr297.1 = lshr i32 %shl303, 24
  %conv298.1 = trunc i32 %shr297.1 to i8
  %39 = ptrtoint ptr %incdec.ptr301 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv298.1, ptr %incdec.ptr301, align 1
  %incdec.ptr301.1 = getelementptr i8, ptr %incdec.ptr234, i32 2
  %shl303.1 = shl i32 %or290, 16
  %add307.1 = add nuw nsw i32 64, 16
  %add305.1 = add nsw i32 32, -8
  %shr297.2 = lshr i32 %shl303.1, 24
  %conv298.2 = trunc i32 %shr297.2 to i8
  %40 = ptrtoint ptr %incdec.ptr301.1 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv298.2, ptr %incdec.ptr301.1, align 1
  %incdec.ptr301.2 = getelementptr i8, ptr %incdec.ptr234, i32 3
  %shl303.2 = shl i32 %shl288, 24
  %add307.2 = add nuw nsw i32 64, 24
  %shl315 = shl nuw i32 181, %add305.1
  %or317 = or i32 %shl315, %shl303.2
  %shr324 = lshr i32 %or317, 24
  %conv325 = trunc i32 %shr324 to i8
  %41 = ptrtoint ptr %incdec.ptr301.2 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv325, ptr %incdec.ptr301.2, align 1
  %incdec.ptr328 = getelementptr i8, ptr %incdec.ptr301.2, i32 1
  %shl330 = shl i32 %or317, 8
  %add334 = add nuw nsw i32 %add307.2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %add305.1)
  %cmp320 = icmp slt i32 %add305.1, 17
  br i1 %cmp320, label %while.body322.1, label %while.body295.while.body349_crit_edge

while.body295.while.body349_crit_edge:            ; preds = %while.body295
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body349

while.body322.1:                                  ; preds = %while.body295
  %add332 = add nsw i32 %add305.1, 8
  %shr324.1 = lshr i32 %shl330, 24
  %conv325.1 = trunc i32 %shr324.1 to i8
  %42 = ptrtoint ptr %incdec.ptr328 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv325.1, ptr %incdec.ptr328, align 1
  %incdec.ptr328.1 = getelementptr i8, ptr %incdec.ptr301.2, i32 2
  %shl330.1 = shl i32 %or317, 16
  %add334.1 = add nuw nsw i32 %add307.2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %add305.1)
  %cmp320.1 = icmp slt i32 %add305.1, 9
  br i1 %cmp320.1, label %while.body322.2, label %while.body322.1.while.body349_crit_edge

while.body322.1.while.body349_crit_edge:          ; preds = %while.body322.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body349

while.body322.2:                                  ; preds = %while.body322.1
  %add332.1 = add nsw i32 %add305.1, 16
  %shr324.2 = lshr i32 %shl330.1, 24
  %conv325.2 = trunc i32 %shr324.2 to i8
  %43 = ptrtoint ptr %incdec.ptr328.1 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv325.2, ptr %incdec.ptr328.1, align 1
  %incdec.ptr328.2 = getelementptr i8, ptr %incdec.ptr301.2, i32 3
  %shl330.2 = shl i32 %shl315, 24
  %add334.2 = add nuw nsw i32 %add307.2, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add305.1)
  %cmp320.2 = icmp slt i32 %add305.1, 1
  br i1 %cmp320.2, label %while.body322.3, label %while.body322.2.while.body349_crit_edge

while.body322.2.while.body349_crit_edge:          ; preds = %while.body322.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body349

while.body322.3:                                  ; preds = %while.body322.2
  call void @__sanitizer_cov_trace_pc() #12
  %add332.2 = add nsw i32 %add305.1, 24
  %conv325.3 = trunc i32 %shl315 to i8
  %44 = ptrtoint ptr %incdec.ptr328.2 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv325.3, ptr %incdec.ptr328.2, align 1
  %incdec.ptr328.3 = getelementptr i8, ptr %incdec.ptr301.2, i32 4
  %add334.3 = add nuw nsw i32 %add307.2, 32
  br label %while.body349

while.body349:                                    ; preds = %while.body322.3, %while.body322.2.while.body349_crit_edge, %while.body322.1.while.body349_crit_edge, %while.body295.while.body349_crit_edge
  %c.sroa.206.111141.lcssa = phi i32 [ %add305.1, %while.body295.while.body349_crit_edge ], [ %add332, %while.body322.1.while.body349_crit_edge ], [ %add332.1, %while.body322.2.while.body349_crit_edge ], [ %add332.2, %while.body322.3 ]
  %incdec.ptr328.lcssa = phi ptr [ %incdec.ptr328, %while.body295.while.body349_crit_edge ], [ %incdec.ptr328.1, %while.body322.1.while.body349_crit_edge ], [ %incdec.ptr328.2, %while.body322.2.while.body349_crit_edge ], [ %incdec.ptr328.3, %while.body322.3 ]
  %shl330.lcssa = phi i32 [ %shl330, %while.body295.while.body349_crit_edge ], [ %shl330.1, %while.body322.1.while.body349_crit_edge ], [ %shl330.2, %while.body322.2.while.body349_crit_edge ], [ 0, %while.body322.3 ]
  %add334.lcssa = phi i32 [ %add334, %while.body295.while.body349_crit_edge ], [ %add334.1, %while.body322.1.while.body349_crit_edge ], [ %add334.2, %while.body322.2.while.body349_crit_edge ], [ %add334.3, %while.body322.3 ]
  %sub340 = add nsw i32 %c.sroa.206.111141.lcssa, -4
  %shl342 = shl nuw nsw i32 328, %sub340
  %or344 = or i32 %shl342, %shl330.lcssa
  %shr351 = lshr i32 %or344, 24
  %conv352 = trunc i32 %shr351 to i8
  %45 = ptrtoint ptr %incdec.ptr328.lcssa to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv352, ptr %incdec.ptr328.lcssa, align 1
  %incdec.ptr355 = getelementptr i8, ptr %incdec.ptr328.lcssa, i32 1
  %shl357 = shl i32 %or344, 8
  %add361 = add nuw nsw i32 %add334.lcssa, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %c.sroa.206.111141.lcssa)
  %cmp347 = icmp slt i32 %c.sroa.206.111141.lcssa, 21
  br i1 %cmp347, label %while.body349.1, label %while.body349.do.end364_crit_edge

while.body349.do.end364_crit_edge:                ; preds = %while.body349
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end364

while.body349.1:                                  ; preds = %while.body349
  %add359 = add nsw i32 %c.sroa.206.111141.lcssa, 4
  %shr351.1 = lshr i32 %shl357, 24
  %conv352.1 = trunc i32 %shr351.1 to i8
  %46 = ptrtoint ptr %incdec.ptr355 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv352.1, ptr %incdec.ptr355, align 1
  %incdec.ptr355.1 = getelementptr i8, ptr %incdec.ptr328.lcssa, i32 2
  %shl357.1 = shl i32 %or344, 16
  %add361.1 = add nuw nsw i32 %add334.lcssa, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %c.sroa.206.111141.lcssa)
  %cmp347.1 = icmp slt i32 %c.sroa.206.111141.lcssa, 13
  br i1 %cmp347.1, label %while.body349.2, label %while.body349.1.do.end364_crit_edge

while.body349.1.do.end364_crit_edge:              ; preds = %while.body349.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end364

while.body349.2:                                  ; preds = %while.body349.1
  %add359.1 = add nsw i32 %c.sroa.206.111141.lcssa, 12
  %shr351.2 = lshr i32 %shl357.1, 24
  %conv352.2 = trunc i32 %shr351.2 to i8
  %47 = ptrtoint ptr %incdec.ptr355.1 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv352.2, ptr %incdec.ptr355.1, align 1
  %incdec.ptr355.2 = getelementptr i8, ptr %incdec.ptr328.lcssa, i32 3
  %shl357.2 = shl i32 %shl342, 24
  %add361.2 = add nuw nsw i32 %add334.lcssa, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %c.sroa.206.111141.lcssa)
  %cmp347.2 = icmp slt i32 %c.sroa.206.111141.lcssa, 5
  br i1 %cmp347.2, label %while.body349.3, label %while.body349.2.do.end364_crit_edge

while.body349.2.do.end364_crit_edge:              ; preds = %while.body349.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end364

while.body349.3:                                  ; preds = %while.body349.2
  call void @__sanitizer_cov_trace_pc() #12
  %add359.2 = add nsw i32 %c.sroa.206.111141.lcssa, 20
  %conv352.3 = trunc i32 %shl342 to i8
  %48 = ptrtoint ptr %incdec.ptr355.2 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv352.3, ptr %incdec.ptr355.2, align 1
  %incdec.ptr355.3 = getelementptr i8, ptr %incdec.ptr328.lcssa, i32 4
  %add361.3 = add nuw nsw i32 %add334.lcssa, 32
  br label %do.end364

do.end364:                                        ; preds = %while.body349.3, %while.body349.2.do.end364_crit_edge, %while.body349.1.do.end364_crit_edge, %while.body349.do.end364_crit_edge
  %c.sroa.206.121150.lcssa = phi i32 [ %sub340, %while.body349.do.end364_crit_edge ], [ %add359, %while.body349.1.do.end364_crit_edge ], [ %add359.1, %while.body349.2.do.end364_crit_edge ], [ %add359.2, %while.body349.3 ]
  %incdec.ptr355.lcssa = phi ptr [ %incdec.ptr355, %while.body349.do.end364_crit_edge ], [ %incdec.ptr355.1, %while.body349.1.do.end364_crit_edge ], [ %incdec.ptr355.2, %while.body349.2.do.end364_crit_edge ], [ %incdec.ptr355.3, %while.body349.3 ]
  %shl357.lcssa = phi i32 [ %shl357, %while.body349.do.end364_crit_edge ], [ %shl357.1, %while.body349.1.do.end364_crit_edge ], [ %shl357.2, %while.body349.2.do.end364_crit_edge ], [ 0, %while.body349.3 ]
  %add361.lcssa = phi i32 [ %add361, %while.body349.do.end364_crit_edge ], [ %add361.1, %while.body349.1.do.end364_crit_edge ], [ %add361.2, %while.body349.2.do.end364_crit_edge ], [ %add361.3, %while.body349.3 ]
  %interlace_coding365 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 44
  %49 = ptrtoint ptr %interlace_coding365 to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load366 = load i8, ptr %interlace_coding365, align 8
  %50 = and i8 %bf.load366, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool370.not = icmp eq i8 %50, 0
  %sub402 = add nsw i32 %c.sroa.206.121150.lcssa, -12
  br i1 %tobool370.not, label %while.body411, label %while.body383

while.body383:                                    ; preds = %do.end364
  %shl376 = shl nuw nsw i32 131073, %sub402
  %or378 = or i32 %shl376, %shl357.lcssa
  %shr385 = lshr i32 %or378, 24
  %conv386 = trunc i32 %shr385 to i8
  %51 = ptrtoint ptr %incdec.ptr355.lcssa to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv386, ptr %incdec.ptr355.lcssa, align 1
  %incdec.ptr389 = getelementptr i8, ptr %incdec.ptr355.lcssa, i32 1
  %shl391 = shl i32 %or378, 8
  %add393 = add nsw i32 %c.sroa.206.121150.lcssa, -4
  %add395 = add nuw nsw i32 %add361.lcssa, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %c.sroa.206.121150.lcssa)
  %cmp381 = icmp slt i32 %c.sroa.206.121150.lcssa, 29
  br i1 %cmp381, label %while.body383.1, label %while.body383.while.body439_crit_edge

while.body383.while.body439_crit_edge:            ; preds = %while.body383
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body439

while.body383.1:                                  ; preds = %while.body383
  %shr385.1 = lshr i32 %shl391, 24
  %conv386.1 = trunc i32 %shr385.1 to i8
  %52 = ptrtoint ptr %incdec.ptr389 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv386.1, ptr %incdec.ptr389, align 1
  %incdec.ptr389.1 = getelementptr i8, ptr %incdec.ptr355.lcssa, i32 2
  %shl391.1 = shl i32 %or378, 16
  %add393.1 = add nsw i32 %c.sroa.206.121150.lcssa, 4
  %add395.1 = add nuw nsw i32 %add361.lcssa, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %c.sroa.206.121150.lcssa)
  %cmp381.1 = icmp slt i32 %c.sroa.206.121150.lcssa, 21
  br i1 %cmp381.1, label %while.body383.2, label %while.body383.1.while.body439_crit_edge

while.body383.1.while.body439_crit_edge:          ; preds = %while.body383.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body439

while.body383.2:                                  ; preds = %while.body383.1
  %shr385.2 = lshr i32 %shl391.1, 24
  %conv386.2 = trunc i32 %shr385.2 to i8
  %53 = ptrtoint ptr %incdec.ptr389.1 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv386.2, ptr %incdec.ptr389.1, align 1
  %incdec.ptr389.2 = getelementptr i8, ptr %incdec.ptr355.lcssa, i32 3
  %shl391.2 = shl i32 %shl376, 24
  %add393.2 = add nsw i32 %c.sroa.206.121150.lcssa, 12
  %add395.2 = add nuw nsw i32 %add361.lcssa, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %c.sroa.206.121150.lcssa)
  %cmp381.2 = icmp slt i32 %c.sroa.206.121150.lcssa, 13
  br i1 %cmp381.2, label %while.body383.3, label %while.body383.2.while.body439_crit_edge

while.body383.2.while.body439_crit_edge:          ; preds = %while.body383.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body439

while.body383.3:                                  ; preds = %while.body383.2
  %conv386.3 = trunc i32 %shl376 to i8
  %54 = ptrtoint ptr %incdec.ptr389.2 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv386.3, ptr %incdec.ptr389.2, align 1
  %incdec.ptr389.3 = getelementptr i8, ptr %incdec.ptr355.lcssa, i32 4
  %add393.3 = add nsw i32 %c.sroa.206.121150.lcssa, 20
  %add395.3 = add nuw nsw i32 %add361.lcssa, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %c.sroa.206.121150.lcssa)
  %cmp381.3 = icmp slt i32 %c.sroa.206.121150.lcssa, 5
  br i1 %cmp381.3, label %while.body383.4, label %while.body383.3.while.body439_crit_edge

while.body383.3.while.body439_crit_edge:          ; preds = %while.body383.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body439

while.body383.4:                                  ; preds = %while.body383.3
  %55 = ptrtoint ptr %incdec.ptr389.3 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %incdec.ptr389.3, align 1
  %incdec.ptr389.4 = getelementptr i8, ptr %incdec.ptr355.lcssa, i32 5
  %add393.4 = add nsw i32 %c.sroa.206.121150.lcssa, 28
  %add395.4 = add nuw nsw i32 %add361.lcssa, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %c.sroa.206.121150.lcssa)
  %cmp381.4 = icmp slt i32 %c.sroa.206.121150.lcssa, -3
  br i1 %cmp381.4, label %while.body383.5, label %while.body383.4.while.body439_crit_edge

while.body383.4.while.body439_crit_edge:          ; preds = %while.body383.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body439

while.body383.5:                                  ; preds = %while.body383.4
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %incdec.ptr389.4 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %incdec.ptr389.4, align 1
  %incdec.ptr389.5 = getelementptr i8, ptr %incdec.ptr355.lcssa, i32 6
  %add393.5 = add nsw i32 %c.sroa.206.121150.lcssa, 36
  %add395.5 = add nuw nsw i32 %add361.lcssa, 48
  br label %while.body439

while.body411:                                    ; preds = %do.end364
  %shl404 = shl nuw i32 655361, %sub402
  %or406 = or i32 %shl404, %shl357.lcssa
  %shr413 = lshr i32 %or406, 24
  %conv414 = trunc i32 %shr413 to i8
  %57 = ptrtoint ptr %incdec.ptr355.lcssa to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv414, ptr %incdec.ptr355.lcssa, align 1
  %incdec.ptr417 = getelementptr i8, ptr %incdec.ptr355.lcssa, i32 1
  %shl419 = shl i32 %or406, 8
  %add421 = add nsw i32 %c.sroa.206.121150.lcssa, -4
  %add423 = add nuw nsw i32 %add361.lcssa, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %c.sroa.206.121150.lcssa)
  %cmp409 = icmp slt i32 %c.sroa.206.121150.lcssa, 29
  br i1 %cmp409, label %while.body411.1, label %while.body411.while.body439_crit_edge

while.body411.while.body439_crit_edge:            ; preds = %while.body411
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body439

while.body411.1:                                  ; preds = %while.body411
  %shr413.1 = lshr i32 %shl419, 24
  %conv414.1 = trunc i32 %shr413.1 to i8
  %58 = ptrtoint ptr %incdec.ptr417 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv414.1, ptr %incdec.ptr417, align 1
  %incdec.ptr417.1 = getelementptr i8, ptr %incdec.ptr355.lcssa, i32 2
  %shl419.1 = shl i32 %or406, 16
  %add421.1 = add nsw i32 %c.sroa.206.121150.lcssa, 4
  %add423.1 = add nuw nsw i32 %add361.lcssa, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %c.sroa.206.121150.lcssa)
  %cmp409.1 = icmp slt i32 %c.sroa.206.121150.lcssa, 21
  br i1 %cmp409.1, label %while.body411.2, label %while.body411.1.while.body439_crit_edge

while.body411.1.while.body439_crit_edge:          ; preds = %while.body411.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body439

while.body411.2:                                  ; preds = %while.body411.1
  %shr413.2 = lshr i32 %shl419.1, 24
  %conv414.2 = trunc i32 %shr413.2 to i8
  %59 = ptrtoint ptr %incdec.ptr417.1 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv414.2, ptr %incdec.ptr417.1, align 1
  %incdec.ptr417.2 = getelementptr i8, ptr %incdec.ptr355.lcssa, i32 3
  %shl419.2 = shl i32 %shl404, 24
  %add421.2 = add nsw i32 %c.sroa.206.121150.lcssa, 12
  %add423.2 = add nuw nsw i32 %add361.lcssa, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %c.sroa.206.121150.lcssa)
  %cmp409.2 = icmp slt i32 %c.sroa.206.121150.lcssa, 13
  br i1 %cmp409.2, label %while.body411.3, label %while.body411.2.while.body439_crit_edge

while.body411.2.while.body439_crit_edge:          ; preds = %while.body411.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body439

while.body411.3:                                  ; preds = %while.body411.2
  %conv414.3 = trunc i32 %shl404 to i8
  %60 = ptrtoint ptr %incdec.ptr417.2 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv414.3, ptr %incdec.ptr417.2, align 1
  %incdec.ptr417.3 = getelementptr i8, ptr %incdec.ptr355.lcssa, i32 4
  %add421.3 = add nsw i32 %c.sroa.206.121150.lcssa, 20
  %add423.3 = add nuw nsw i32 %add361.lcssa, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %c.sroa.206.121150.lcssa)
  %cmp409.3 = icmp slt i32 %c.sroa.206.121150.lcssa, 5
  br i1 %cmp409.3, label %while.body411.4, label %while.body411.3.while.body439_crit_edge

while.body411.3.while.body439_crit_edge:          ; preds = %while.body411.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body439

while.body411.4:                                  ; preds = %while.body411.3
  %61 = ptrtoint ptr %incdec.ptr417.3 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %incdec.ptr417.3, align 1
  %incdec.ptr417.4 = getelementptr i8, ptr %incdec.ptr355.lcssa, i32 5
  %add421.4 = add nsw i32 %c.sroa.206.121150.lcssa, 28
  %add423.4 = add nuw nsw i32 %add361.lcssa, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %c.sroa.206.121150.lcssa)
  %cmp409.4 = icmp slt i32 %c.sroa.206.121150.lcssa, -3
  br i1 %cmp409.4, label %while.body411.5, label %while.body411.4.while.body439_crit_edge

while.body411.4.while.body439_crit_edge:          ; preds = %while.body411.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body439

while.body411.5:                                  ; preds = %while.body411.4
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %incdec.ptr417.4 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %incdec.ptr417.4, align 1
  %incdec.ptr417.5 = getelementptr i8, ptr %incdec.ptr355.lcssa, i32 6
  %add421.5 = add nsw i32 %c.sroa.206.121150.lcssa, 36
  %add423.5 = add nuw nsw i32 %add361.lcssa, 48
  br label %while.body439

while.body439:                                    ; preds = %while.body411.5, %while.body411.4.while.body439_crit_edge, %while.body411.3.while.body439_crit_edge, %while.body411.2.while.body439_crit_edge, %while.body411.1.while.body439_crit_edge, %while.body411.while.body439_crit_edge, %while.body383.5, %while.body383.4.while.body439_crit_edge, %while.body383.3.while.body439_crit_edge, %while.body383.2.while.body439_crit_edge, %while.body383.1.while.body439_crit_edge, %while.body383.while.body439_crit_edge
  %c.sroa.362.15 = phi i32 [ %add423, %while.body411.while.body439_crit_edge ], [ %add423.1, %while.body411.1.while.body439_crit_edge ], [ %add423.2, %while.body411.2.while.body439_crit_edge ], [ %add423.3, %while.body411.3.while.body439_crit_edge ], [ %add423.4, %while.body411.4.while.body439_crit_edge ], [ %add423.5, %while.body411.5 ], [ %add395, %while.body383.while.body439_crit_edge ], [ %add395.1, %while.body383.1.while.body439_crit_edge ], [ %add395.2, %while.body383.2.while.body439_crit_edge ], [ %add395.3, %while.body383.3.while.body439_crit_edge ], [ %add395.4, %while.body383.4.while.body439_crit_edge ], [ %add395.5, %while.body383.5 ]
  %c.sroa.206.15 = phi i32 [ %add421, %while.body411.while.body439_crit_edge ], [ %add421.1, %while.body411.1.while.body439_crit_edge ], [ %add421.2, %while.body411.2.while.body439_crit_edge ], [ %add421.3, %while.body411.3.while.body439_crit_edge ], [ %add421.4, %while.body411.4.while.body439_crit_edge ], [ %add421.5, %while.body411.5 ], [ %add393, %while.body383.while.body439_crit_edge ], [ %add393.1, %while.body383.1.while.body439_crit_edge ], [ %add393.2, %while.body383.2.while.body439_crit_edge ], [ %add393.3, %while.body383.3.while.body439_crit_edge ], [ %add393.4, %while.body383.4.while.body439_crit_edge ], [ %add393.5, %while.body383.5 ]
  %c.sroa.79.15 = phi i32 [ %shl419, %while.body411.while.body439_crit_edge ], [ %shl419.1, %while.body411.1.while.body439_crit_edge ], [ %shl419.2, %while.body411.2.while.body439_crit_edge ], [ 0, %while.body411.3.while.body439_crit_edge ], [ 0, %while.body411.4.while.body439_crit_edge ], [ 0, %while.body411.5 ], [ %shl391, %while.body383.while.body439_crit_edge ], [ %shl391.1, %while.body383.1.while.body439_crit_edge ], [ %shl391.2, %while.body383.2.while.body439_crit_edge ], [ 0, %while.body383.3.while.body439_crit_edge ], [ 0, %while.body383.4.while.body439_crit_edge ], [ 0, %while.body383.5 ]
  %c.sroa.0.15 = phi ptr [ %incdec.ptr417, %while.body411.while.body439_crit_edge ], [ %incdec.ptr417.1, %while.body411.1.while.body439_crit_edge ], [ %incdec.ptr417.2, %while.body411.2.while.body439_crit_edge ], [ %incdec.ptr417.3, %while.body411.3.while.body439_crit_edge ], [ %incdec.ptr417.4, %while.body411.4.while.body439_crit_edge ], [ %incdec.ptr417.5, %while.body411.5 ], [ %incdec.ptr389, %while.body383.while.body439_crit_edge ], [ %incdec.ptr389.1, %while.body383.1.while.body439_crit_edge ], [ %incdec.ptr389.2, %while.body383.2.while.body439_crit_edge ], [ %incdec.ptr389.3, %while.body383.3.while.body439_crit_edge ], [ %incdec.ptr389.4, %while.body383.4.while.body439_crit_edge ], [ %incdec.ptr389.5, %while.body383.5 ]
  %sub430 = add nsw i32 %c.sroa.206.15, -16
  %shr441 = lshr i32 %c.sroa.79.15, 24
  %conv442 = trunc i32 %shr441 to i8
  %63 = ptrtoint ptr %c.sroa.0.15 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv442, ptr %c.sroa.0.15, align 1
  %incdec.ptr445 = getelementptr i8, ptr %c.sroa.0.15, i32 1
  %shl447 = shl i32 %c.sroa.79.15, 8
  %add449 = add nsw i32 %c.sroa.206.15, -8
  %add451 = add nuw nsw i32 %c.sroa.362.15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %c.sroa.206.15)
  %cmp437 = icmp slt i32 %c.sroa.206.15, 33
  br i1 %cmp437, label %while.body439.1, label %while.body439.do.end454_crit_edge

while.body439.do.end454_crit_edge:                ; preds = %while.body439
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end454

while.body439.1:                                  ; preds = %while.body439
  %shr441.1 = lshr i32 %shl447, 24
  %conv442.1 = trunc i32 %shr441.1 to i8
  %64 = ptrtoint ptr %incdec.ptr445 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv442.1, ptr %incdec.ptr445, align 1
  %incdec.ptr445.1 = getelementptr i8, ptr %c.sroa.0.15, i32 2
  %shl447.1 = shl i32 %c.sroa.79.15, 16
  %add451.1 = add nuw nsw i32 %c.sroa.362.15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %c.sroa.206.15)
  %cmp437.1 = icmp slt i32 %c.sroa.206.15, 25
  br i1 %cmp437.1, label %while.body439.2, label %while.body439.1.do.end454_crit_edge

while.body439.1.do.end454_crit_edge:              ; preds = %while.body439.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end454

while.body439.2:                                  ; preds = %while.body439.1
  %shr441.2 = lshr i32 %shl447.1, 24
  %conv442.2 = trunc i32 %shr441.2 to i8
  %65 = ptrtoint ptr %incdec.ptr445.1 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv442.2, ptr %incdec.ptr445.1, align 1
  %incdec.ptr445.2 = getelementptr i8, ptr %c.sroa.0.15, i32 3
  %shl447.2 = shl i32 %c.sroa.79.15, 24
  %add449.2 = add nsw i32 %c.sroa.206.15, 8
  %add451.2 = add nuw nsw i32 %c.sroa.362.15, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %c.sroa.206.15)
  %cmp437.2 = icmp slt i32 %c.sroa.206.15, 17
  br i1 %cmp437.2, label %while.body439.3, label %while.body439.2.do.end454_crit_edge

while.body439.2.do.end454_crit_edge:              ; preds = %while.body439.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end454

while.body439.3:                                  ; preds = %while.body439.2
  %conv442.3 = trunc i32 %c.sroa.79.15 to i8
  %66 = ptrtoint ptr %incdec.ptr445.2 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv442.3, ptr %incdec.ptr445.2, align 1
  %incdec.ptr445.3 = getelementptr i8, ptr %c.sroa.0.15, i32 4
  %add449.3 = add nsw i32 %c.sroa.206.15, 16
  %add451.3 = add nuw nsw i32 %c.sroa.362.15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %c.sroa.206.15)
  %cmp437.3 = icmp slt i32 %c.sroa.206.15, 9
  br i1 %cmp437.3, label %while.body439.4, label %while.body439.3.do.end454_crit_edge

while.body439.3.do.end454_crit_edge:              ; preds = %while.body439.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end454

while.body439.4:                                  ; preds = %while.body439.3
  %67 = ptrtoint ptr %incdec.ptr445.3 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %incdec.ptr445.3, align 1
  %incdec.ptr445.4 = getelementptr i8, ptr %c.sroa.0.15, i32 5
  %add449.4 = add nsw i32 %c.sroa.206.15, 24
  %add451.4 = add nuw nsw i32 %c.sroa.362.15, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %c.sroa.206.15)
  %cmp437.4 = icmp slt i32 %c.sroa.206.15, 1
  br i1 %cmp437.4, label %while.body439.5, label %while.body439.4.do.end454_crit_edge

while.body439.4.do.end454_crit_edge:              ; preds = %while.body439.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end454

while.body439.5:                                  ; preds = %while.body439.4
  %68 = ptrtoint ptr %incdec.ptr445.4 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %incdec.ptr445.4, align 1
  %incdec.ptr445.5 = getelementptr i8, ptr %c.sroa.0.15, i32 6
  %add449.5 = add nsw i32 %c.sroa.206.15, 32
  %add451.5 = add nuw nsw i32 %c.sroa.362.15, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %c.sroa.206.15)
  %cmp437.5 = icmp slt i32 %c.sroa.206.15, -7
  br i1 %cmp437.5, label %while.body439.6, label %while.body439.5.do.end454_crit_edge

while.body439.5.do.end454_crit_edge:              ; preds = %while.body439.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end454

while.body439.6:                                  ; preds = %while.body439.5
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %incdec.ptr445.5 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %incdec.ptr445.5, align 1
  %incdec.ptr445.6 = getelementptr i8, ptr %c.sroa.0.15, i32 7
  %add449.6 = add nsw i32 %c.sroa.206.15, 40
  %add451.6 = add nuw nsw i32 %c.sroa.362.15, 56
  br label %do.end454

do.end454:                                        ; preds = %while.body439.6, %while.body439.5.do.end454_crit_edge, %while.body439.4.do.end454_crit_edge, %while.body439.3.do.end454_crit_edge, %while.body439.2.do.end454_crit_edge, %while.body439.1.do.end454_crit_edge, %while.body439.do.end454_crit_edge
  %c.sroa.206.161177.lcssa = phi i32 [ %sub430, %while.body439.do.end454_crit_edge ], [ %add449, %while.body439.1.do.end454_crit_edge ], [ %c.sroa.206.15, %while.body439.2.do.end454_crit_edge ], [ %add449.2, %while.body439.3.do.end454_crit_edge ], [ %add449.3, %while.body439.4.do.end454_crit_edge ], [ %add449.4, %while.body439.5.do.end454_crit_edge ], [ %add449.5, %while.body439.6 ]
  %c.sroa.362.161176.lcssa = phi i32 [ %c.sroa.362.15, %while.body439.do.end454_crit_edge ], [ %add451, %while.body439.1.do.end454_crit_edge ], [ %add451.1, %while.body439.2.do.end454_crit_edge ], [ %add451.2, %while.body439.3.do.end454_crit_edge ], [ %add451.3, %while.body439.4.do.end454_crit_edge ], [ %add451.4, %while.body439.5.do.end454_crit_edge ], [ %add451.5, %while.body439.6 ]
  %incdec.ptr445.lcssa = phi ptr [ %incdec.ptr445, %while.body439.do.end454_crit_edge ], [ %incdec.ptr445.1, %while.body439.1.do.end454_crit_edge ], [ %incdec.ptr445.2, %while.body439.2.do.end454_crit_edge ], [ %incdec.ptr445.3, %while.body439.3.do.end454_crit_edge ], [ %incdec.ptr445.4, %while.body439.4.do.end454_crit_edge ], [ %incdec.ptr445.5, %while.body439.5.do.end454_crit_edge ], [ %incdec.ptr445.6, %while.body439.6 ]
  %shl447.lcssa = phi i32 [ %shl447, %while.body439.do.end454_crit_edge ], [ %shl447.1, %while.body439.1.do.end454_crit_edge ], [ %shl447.2, %while.body439.2.do.end454_crit_edge ], [ 0, %while.body439.3.do.end454_crit_edge ], [ 0, %while.body439.4.do.end454_crit_edge ], [ 0, %while.body439.5.do.end454_crit_edge ], [ 0, %while.body439.6 ]
  %add449.lcssa = phi i32 [ %add449, %while.body439.do.end454_crit_edge ], [ %c.sroa.206.15, %while.body439.1.do.end454_crit_edge ], [ %add449.2, %while.body439.2.do.end454_crit_edge ], [ %add449.3, %while.body439.3.do.end454_crit_edge ], [ %add449.4, %while.body439.4.do.end454_crit_edge ], [ %add449.5, %while.body439.5.do.end454_crit_edge ], [ %add449.6, %while.body439.6 ]
  %add451.lcssa = phi i32 [ %add451, %while.body439.do.end454_crit_edge ], [ %add451.1, %while.body439.1.do.end454_crit_edge ], [ %add451.2, %while.body439.2.do.end454_crit_edge ], [ %add451.3, %while.body439.3.do.end454_crit_edge ], [ %add451.4, %while.body439.4.do.end454_crit_edge ], [ %add451.5, %while.body439.5.do.end454_crit_edge ], [ %add451.6, %while.body439.6 ]
  %sub457 = add i32 %c.sroa.362.161176.lcssa, 40
  %add458 = sub i32 %sub457, %add449.lcssa
  %rem459 = srem i32 %add458, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem459)
  %cmp461.not = icmp eq i32 %rem459, 0
  br i1 %cmp461.not, label %do.end454.if.end491_crit_edge, label %do.body464

do.end454.if.end491_crit_edge:                    ; preds = %do.end454
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end491

do.body464:                                       ; preds = %do.end454
  %sub466 = add nsw i32 %c.sroa.206.161177.lcssa, %rem459
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub466)
  %cmp4731184 = icmp ult i32 %sub466, 25
  br i1 %cmp4731184, label %while.body475, label %do.body464.if.end491_crit_edge

do.body464.if.end491_crit_edge:                   ; preds = %do.body464
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end491

while.body475:                                    ; preds = %do.body464
  %shr477 = lshr i32 %shl447.lcssa, 24
  %conv478 = trunc i32 %shr477 to i8
  %70 = ptrtoint ptr %incdec.ptr445.lcssa to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv478, ptr %incdec.ptr445.lcssa, align 1
  %incdec.ptr481 = getelementptr i8, ptr %incdec.ptr445.lcssa, i32 1
  %shl483 = shl i32 %shl447.lcssa, 8
  %add485 = add nsw i32 %sub466, 8
  %add487 = add nuw nsw i32 %add451.lcssa, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub466)
  %cmp473 = icmp slt i32 %sub466, 17
  br i1 %cmp473, label %while.body475.1, label %while.body475.if.end491_crit_edge

while.body475.if.end491_crit_edge:                ; preds = %while.body475
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end491

while.body475.1:                                  ; preds = %while.body475
  %shr477.1 = lshr i32 %shl483, 24
  %conv478.1 = trunc i32 %shr477.1 to i8
  %71 = ptrtoint ptr %incdec.ptr481 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv478.1, ptr %incdec.ptr481, align 1
  %incdec.ptr481.1 = getelementptr i8, ptr %incdec.ptr445.lcssa, i32 2
  %shl483.1 = shl i32 %shl447.lcssa, 16
  %add485.1 = add nsw i32 %sub466, 16
  %add487.1 = add nuw nsw i32 %add451.lcssa, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %sub466)
  %cmp473.1 = icmp slt i32 %sub466, 9
  br i1 %cmp473.1, label %while.body475.2, label %while.body475.1.if.end491_crit_edge

while.body475.1.if.end491_crit_edge:              ; preds = %while.body475.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end491

while.body475.2:                                  ; preds = %while.body475.1
  %shr477.2 = lshr exact i32 %shl483.1, 24
  %conv478.2 = trunc i32 %shr477.2 to i8
  %72 = ptrtoint ptr %incdec.ptr481.1 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv478.2, ptr %incdec.ptr481.1, align 1
  %incdec.ptr481.2 = getelementptr i8, ptr %incdec.ptr445.lcssa, i32 3
  %add485.2 = add nsw i32 %sub466, 24
  %add487.2 = add nuw nsw i32 %add451.lcssa, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub466)
  %cmp473.2 = icmp slt i32 %sub466, 1
  br i1 %cmp473.2, label %while.body475.3, label %while.body475.2.if.end491_crit_edge

while.body475.2.if.end491_crit_edge:              ; preds = %while.body475.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end491

while.body475.3:                                  ; preds = %while.body475.2
  %73 = ptrtoint ptr %incdec.ptr481.2 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %incdec.ptr481.2, align 1
  %incdec.ptr481.3 = getelementptr i8, ptr %incdec.ptr445.lcssa, i32 4
  %add485.3 = add nsw i32 %sub466, 32
  %add487.3 = add nuw nsw i32 %add451.lcssa, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %sub466)
  %cmp473.3 = icmp slt i32 %sub466, -7
  br i1 %cmp473.3, label %while.body475.4, label %while.body475.3.if.end491_crit_edge

while.body475.3.if.end491_crit_edge:              ; preds = %while.body475.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end491

while.body475.4:                                  ; preds = %while.body475.3
  %74 = ptrtoint ptr %incdec.ptr481.3 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %incdec.ptr481.3, align 1
  %incdec.ptr481.4 = getelementptr i8, ptr %incdec.ptr445.lcssa, i32 5
  %add485.4 = add nsw i32 %sub466, 40
  %add487.4 = add nuw nsw i32 %add451.lcssa, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15, i32 %sub466)
  %cmp473.4 = icmp slt i32 %sub466, -15
  br i1 %cmp473.4, label %while.body475.5, label %while.body475.4.if.end491_crit_edge

while.body475.4.if.end491_crit_edge:              ; preds = %while.body475.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end491

while.body475.5:                                  ; preds = %while.body475.4
  %75 = ptrtoint ptr %incdec.ptr481.4 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %incdec.ptr481.4, align 1
  %incdec.ptr481.5 = getelementptr i8, ptr %incdec.ptr445.lcssa, i32 6
  %add485.5 = add nsw i32 %sub466, 48
  %add487.5 = add nuw nsw i32 %add451.lcssa, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 -23, i32 %sub466)
  %cmp473.5 = icmp slt i32 %sub466, -23
  br i1 %cmp473.5, label %while.body475.6, label %while.body475.5.if.end491_crit_edge

while.body475.5.if.end491_crit_edge:              ; preds = %while.body475.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end491

while.body475.6:                                  ; preds = %while.body475.5
  %76 = ptrtoint ptr %incdec.ptr481.5 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %incdec.ptr481.5, align 1
  %incdec.ptr481.6 = getelementptr i8, ptr %incdec.ptr445.lcssa, i32 7
  %add485.6 = add nsw i32 %sub466, 56
  %add487.6 = add nuw nsw i32 %add451.lcssa, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %sub466)
  %cmp473.6 = icmp slt i32 %sub466, -31
  br i1 %cmp473.6, label %while.body475.7, label %while.body475.6.if.end491_crit_edge

while.body475.6.if.end491_crit_edge:              ; preds = %while.body475.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end491

while.body475.7:                                  ; preds = %while.body475.6
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %incdec.ptr481.6 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %incdec.ptr481.6, align 1
  %incdec.ptr481.7 = getelementptr i8, ptr %incdec.ptr445.lcssa, i32 8
  %add485.7 = add nsw i32 %sub466, 64
  %add487.7 = add nuw nsw i32 %add451.lcssa, 64
  br label %if.end491

if.end491:                                        ; preds = %while.body475.7, %while.body475.6.if.end491_crit_edge, %while.body475.5.if.end491_crit_edge, %while.body475.4.if.end491_crit_edge, %while.body475.3.if.end491_crit_edge, %while.body475.2.if.end491_crit_edge, %while.body475.1.if.end491_crit_edge, %while.body475.if.end491_crit_edge, %do.body464.if.end491_crit_edge, %do.end454.if.end491_crit_edge
  %c.sroa.362.18 = phi i32 [ %add451.lcssa, %do.end454.if.end491_crit_edge ], [ %add451.lcssa, %do.body464.if.end491_crit_edge ], [ %add487, %while.body475.if.end491_crit_edge ], [ %add487.1, %while.body475.1.if.end491_crit_edge ], [ %add487.2, %while.body475.2.if.end491_crit_edge ], [ %add487.3, %while.body475.3.if.end491_crit_edge ], [ %add487.4, %while.body475.4.if.end491_crit_edge ], [ %add487.5, %while.body475.5.if.end491_crit_edge ], [ %add487.6, %while.body475.6.if.end491_crit_edge ], [ %add487.7, %while.body475.7 ]
  %c.sroa.206.18 = phi i32 [ %add449.lcssa, %do.end454.if.end491_crit_edge ], [ %sub466, %do.body464.if.end491_crit_edge ], [ %add485, %while.body475.if.end491_crit_edge ], [ %add485.1, %while.body475.1.if.end491_crit_edge ], [ %add485.2, %while.body475.2.if.end491_crit_edge ], [ %add485.3, %while.body475.3.if.end491_crit_edge ], [ %add485.4, %while.body475.4.if.end491_crit_edge ], [ %add485.5, %while.body475.5.if.end491_crit_edge ], [ %add485.6, %while.body475.6.if.end491_crit_edge ], [ %add485.7, %while.body475.7 ]
  %c.sroa.79.18 = phi i32 [ %shl447.lcssa, %do.end454.if.end491_crit_edge ], [ %shl447.lcssa, %do.body464.if.end491_crit_edge ], [ %shl483, %while.body475.if.end491_crit_edge ], [ %shl483.1, %while.body475.1.if.end491_crit_edge ], [ 0, %while.body475.2.if.end491_crit_edge ], [ 0, %while.body475.3.if.end491_crit_edge ], [ 0, %while.body475.4.if.end491_crit_edge ], [ 0, %while.body475.5.if.end491_crit_edge ], [ 0, %while.body475.6.if.end491_crit_edge ], [ 0, %while.body475.7 ]
  %c.sroa.0.18 = phi ptr [ %incdec.ptr445.lcssa, %do.end454.if.end491_crit_edge ], [ %incdec.ptr445.lcssa, %do.body464.if.end491_crit_edge ], [ %incdec.ptr481, %while.body475.if.end491_crit_edge ], [ %incdec.ptr481.1, %while.body475.1.if.end491_crit_edge ], [ %incdec.ptr481.2, %while.body475.2.if.end491_crit_edge ], [ %incdec.ptr481.3, %while.body475.3.if.end491_crit_edge ], [ %incdec.ptr481.4, %while.body475.4.if.end491_crit_edge ], [ %incdec.ptr481.5, %while.body475.5.if.end491_crit_edge ], [ %incdec.ptr481.6, %while.body475.6.if.end491_crit_edge ], [ %incdec.ptr481.7, %while.body475.7 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ext)
  %tobool492.not = icmp eq i32 %ext, 0
  br i1 %tobool492.not, label %if.end491.if.end754_crit_edge, label %while.body505.preheader

if.end491.if.end754_crit_edge:                    ; preds = %if.end491
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end754

while.body505.preheader:                          ; preds = %if.end491
  %sub496 = add nsw i32 %c.sroa.206.18, -24
  %shl498 = shl nuw nsw i32 1, %sub496
  %or500 = or i32 %shl498, %c.sroa.79.18
  br label %while.body505

while.body505:                                    ; preds = %while.body505.while.body505_crit_edge, %while.body505.preheader
  %c.sroa.0.191197 = phi ptr [ %incdec.ptr511, %while.body505.while.body505_crit_edge ], [ %c.sroa.0.18, %while.body505.preheader ]
  %c.sroa.79.191196 = phi i32 [ %shl513, %while.body505.while.body505_crit_edge ], [ %or500, %while.body505.preheader ]
  %c.sroa.206.191195 = phi i32 [ %add515, %while.body505.while.body505_crit_edge ], [ %sub496, %while.body505.preheader ]
  %c.sroa.362.191194 = phi i32 [ %add517, %while.body505.while.body505_crit_edge ], [ %c.sroa.362.18, %while.body505.preheader ]
  %shr507 = lshr i32 %c.sroa.79.191196, 24
  %conv508 = trunc i32 %shr507 to i8
  %78 = ptrtoint ptr %c.sroa.0.191197 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv508, ptr %c.sroa.0.191197, align 1
  %incdec.ptr511 = getelementptr i8, ptr %c.sroa.0.191197, i32 1
  %shl513 = shl i32 %c.sroa.79.191196, 8
  %add515 = add nsw i32 %c.sroa.206.191195, 8
  %add517 = add nuw nsw i32 %c.sroa.362.191194, 8
  %cmp503 = icmp slt i32 %c.sroa.206.191195, 17
  br i1 %cmp503, label %while.body505.while.body505_crit_edge, label %while.body532.preheader

while.body505.while.body505_crit_edge:            ; preds = %while.body505
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body505

while.body532.preheader:                          ; preds = %while.body505
  %sub523 = add nsw i32 %c.sroa.206.191195, -4
  %shl525 = shl nuw i32 2898, %sub523
  %or527 = or i32 %shl525, %shl513
  br label %while.body532

while.body532:                                    ; preds = %while.body532.while.body532_crit_edge, %while.body532.preheader
  %c.sroa.0.201206 = phi ptr [ %incdec.ptr538, %while.body532.while.body532_crit_edge ], [ %incdec.ptr511, %while.body532.preheader ]
  %c.sroa.79.201205 = phi i32 [ %shl540, %while.body532.while.body532_crit_edge ], [ %or527, %while.body532.preheader ]
  %c.sroa.206.201204 = phi i32 [ %add542, %while.body532.while.body532_crit_edge ], [ %sub523, %while.body532.preheader ]
  %c.sroa.362.201203 = phi i32 [ %add544, %while.body532.while.body532_crit_edge ], [ %add517, %while.body532.preheader ]
  %shr534 = lshr i32 %c.sroa.79.201205, 24
  %conv535 = trunc i32 %shr534 to i8
  %79 = ptrtoint ptr %c.sroa.0.201206 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv535, ptr %c.sroa.0.201206, align 1
  %incdec.ptr538 = getelementptr i8, ptr %c.sroa.0.201206, i32 1
  %shl540 = shl i32 %c.sroa.79.201205, 8
  %add542 = add nsw i32 %c.sroa.206.201204, 8
  %add544 = add nuw nsw i32 %c.sroa.362.201203, 8
  %cmp530 = icmp slt i32 %c.sroa.206.201204, 17
  br i1 %cmp530, label %while.body532.while.body532_crit_edge, label %do.body548

while.body532.while.body532_crit_edge:            ; preds = %while.body532
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body532

do.body548:                                       ; preds = %while.body532
  %sub550 = add nsw i32 %c.sroa.206.201204, 5
  %standard551 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 30
  %80 = ptrtoint ptr %standard551 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %standard551, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp552 = icmp eq i32 %81, 0
  %cond554 = select i1 %cmp552, i32 2, i32 1
  %shl556 = shl nuw nsw i32 %cond554, %sub550
  %or558 = or i32 %shl556, %shl540
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %add542)
  %cmp5611211 = icmp ult i32 %add542, 28
  br i1 %cmp5611211, label %do.body548.while.body563_crit_edge, label %do.body548.while.body590.preheader_crit_edge

do.body548.while.body590.preheader_crit_edge:     ; preds = %do.body548
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body590.preheader

do.body548.while.body563_crit_edge:               ; preds = %do.body548
  br label %while.body563

while.body563:                                    ; preds = %while.body563.while.body563_crit_edge, %do.body548.while.body563_crit_edge
  %c.sroa.0.211215 = phi ptr [ %incdec.ptr569, %while.body563.while.body563_crit_edge ], [ %incdec.ptr538, %do.body548.while.body563_crit_edge ]
  %c.sroa.79.211214 = phi i32 [ %shl571, %while.body563.while.body563_crit_edge ], [ %or558, %do.body548.while.body563_crit_edge ]
  %c.sroa.206.211213 = phi i32 [ %add573, %while.body563.while.body563_crit_edge ], [ %sub550, %do.body548.while.body563_crit_edge ]
  %c.sroa.362.211212 = phi i32 [ %add575, %while.body563.while.body563_crit_edge ], [ %add544, %do.body548.while.body563_crit_edge ]
  %shr565 = lshr i32 %c.sroa.79.211214, 24
  %conv566 = trunc i32 %shr565 to i8
  %82 = ptrtoint ptr %c.sroa.0.211215 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv566, ptr %c.sroa.0.211215, align 1
  %incdec.ptr569 = getelementptr i8, ptr %c.sroa.0.211215, i32 1
  %shl571 = shl i32 %c.sroa.79.211214, 8
  %add573 = add nsw i32 %c.sroa.206.211213, 8
  %add575 = add nuw nsw i32 %c.sroa.362.211212, 8
  %cmp561 = icmp slt i32 %c.sroa.206.211213, 17
  br i1 %cmp561, label %while.body563.while.body563_crit_edge, label %while.body563.while.body590.preheader_crit_edge

while.body563.while.body590.preheader_crit_edge:  ; preds = %while.body563
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body590.preheader

while.body563.while.body563_crit_edge:            ; preds = %while.body563
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body563

while.body590.preheader:                          ; preds = %while.body563.while.body590.preheader_crit_edge, %do.body548.while.body590.preheader_crit_edge
  %c.sroa.362.21.lcssa = phi i32 [ %add544, %do.body548.while.body590.preheader_crit_edge ], [ %add575, %while.body563.while.body590.preheader_crit_edge ]
  %c.sroa.206.21.lcssa = phi i32 [ %sub550, %do.body548.while.body590.preheader_crit_edge ], [ %add573, %while.body563.while.body590.preheader_crit_edge ]
  %c.sroa.79.21.lcssa = phi i32 [ %or558, %do.body548.while.body590.preheader_crit_edge ], [ %shl571, %while.body563.while.body590.preheader_crit_edge ]
  %c.sroa.0.21.lcssa = phi ptr [ %incdec.ptr538, %do.body548.while.body590.preheader_crit_edge ], [ %incdec.ptr569, %while.body563.while.body590.preheader_crit_edge ]
  %sub581 = add nsw i32 %c.sroa.206.21.lcssa, -9
  %shl583 = shl nuw i32 261, %sub581
  %or585 = or i32 %shl583, %c.sroa.79.21.lcssa
  br label %while.body590

while.body590:                                    ; preds = %while.body590.while.body590_crit_edge, %while.body590.preheader
  %c.sroa.0.221224 = phi ptr [ %incdec.ptr596, %while.body590.while.body590_crit_edge ], [ %c.sroa.0.21.lcssa, %while.body590.preheader ]
  %c.sroa.79.221223 = phi i32 [ %shl598, %while.body590.while.body590_crit_edge ], [ %or585, %while.body590.preheader ]
  %c.sroa.206.221222 = phi i32 [ %add600, %while.body590.while.body590_crit_edge ], [ %sub581, %while.body590.preheader ]
  %c.sroa.362.221221 = phi i32 [ %add602, %while.body590.while.body590_crit_edge ], [ %c.sroa.362.21.lcssa, %while.body590.preheader ]
  %shr592 = lshr i32 %c.sroa.79.221223, 24
  %conv593 = trunc i32 %shr592 to i8
  %83 = ptrtoint ptr %c.sroa.0.221224 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv593, ptr %c.sroa.0.221224, align 1
  %incdec.ptr596 = getelementptr i8, ptr %c.sroa.0.221224, i32 1
  %shl598 = shl i32 %c.sroa.79.221223, 8
  %add600 = add nsw i32 %c.sroa.206.221222, 8
  %add602 = add nuw nsw i32 %c.sroa.362.221221, 8
  %cmp588 = icmp slt i32 %c.sroa.206.221222, 17
  br i1 %cmp588, label %while.body590.while.body590_crit_edge, label %while.body617.preheader

while.body590.while.body590_crit_edge:            ; preds = %while.body590
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body590

while.body617.preheader:                          ; preds = %while.body590
  %sub608 = add nsw i32 %c.sroa.206.221222, -8
  %shl610 = shl nuw nsw i32 1285, %sub608
  %or612 = or i32 %shl610, %shl598
  br label %while.body617

while.body617:                                    ; preds = %while.body617.while.body617_crit_edge, %while.body617.preheader
  %c.sroa.0.231233 = phi ptr [ %incdec.ptr623, %while.body617.while.body617_crit_edge ], [ %incdec.ptr596, %while.body617.preheader ]
  %c.sroa.79.231232 = phi i32 [ %shl625, %while.body617.while.body617_crit_edge ], [ %or612, %while.body617.preheader ]
  %c.sroa.206.231231 = phi i32 [ %add627, %while.body617.while.body617_crit_edge ], [ %sub608, %while.body617.preheader ]
  %c.sroa.362.231230 = phi i32 [ %add629, %while.body617.while.body617_crit_edge ], [ %add602, %while.body617.preheader ]
  %shr619 = lshr i32 %c.sroa.79.231232, 24
  %conv620 = trunc i32 %shr619 to i8
  %84 = ptrtoint ptr %c.sroa.0.231233 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv620, ptr %c.sroa.0.231233, align 1
  %incdec.ptr623 = getelementptr i8, ptr %c.sroa.0.231233, i32 1
  %shl625 = shl i32 %c.sroa.79.231232, 8
  %add627 = add nsw i32 %c.sroa.206.231231, 8
  %add629 = add nuw nsw i32 %c.sroa.362.231230, 8
  %cmp615 = icmp slt i32 %c.sroa.206.231231, 17
  br i1 %cmp615, label %while.body617.while.body617_crit_edge, label %while.body645.preheader

while.body617.while.body617_crit_edge:            ; preds = %while.body617
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body617

while.body645.preheader:                          ; preds = %while.body617
  %sub635 = add nsw i32 %c.sroa.206.231231, -6
  %85 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %width, align 4
  %shl638 = shl i32 %86, %sub635
  %or640 = or i32 %shl638, %shl625
  br label %while.body645

while.body645:                                    ; preds = %while.body645.while.body645_crit_edge, %while.body645.preheader
  %c.sroa.0.241242 = phi ptr [ %incdec.ptr651, %while.body645.while.body645_crit_edge ], [ %incdec.ptr623, %while.body645.preheader ]
  %c.sroa.79.241241 = phi i32 [ %shl653, %while.body645.while.body645_crit_edge ], [ %or640, %while.body645.preheader ]
  %c.sroa.206.241240 = phi i32 [ %add655, %while.body645.while.body645_crit_edge ], [ %sub635, %while.body645.preheader ]
  %c.sroa.362.241239 = phi i32 [ %add657, %while.body645.while.body645_crit_edge ], [ %add629, %while.body645.preheader ]
  %shr647 = lshr i32 %c.sroa.79.241241, 24
  %conv648 = trunc i32 %shr647 to i8
  %87 = ptrtoint ptr %c.sroa.0.241242 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv648, ptr %c.sroa.0.241242, align 1
  %incdec.ptr651 = getelementptr i8, ptr %c.sroa.0.241242, i32 1
  %shl653 = shl i32 %c.sroa.79.241241, 8
  %add655 = add nsw i32 %c.sroa.206.241240, 8
  %add657 = add nuw nsw i32 %c.sroa.362.241239, 8
  %cmp643 = icmp slt i32 %c.sroa.206.241240, 17
  br i1 %cmp643, label %while.body645.while.body645_crit_edge, label %do.body661

while.body645.while.body645_crit_edge:            ; preds = %while.body645
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body645

do.body661:                                       ; preds = %while.body645
  %sub663 = add nsw i32 %c.sroa.206.241240, 7
  %shl665 = shl nuw i32 1, %sub663
  %or667 = or i32 %shl665, %shl653
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub663)
  %cmp6701247 = icmp ult i32 %sub663, 25
  br i1 %cmp6701247, label %while.body672, label %do.body661.while.body700.preheader_crit_edge

do.body661.while.body700.preheader_crit_edge:     ; preds = %do.body661
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body700.preheader

while.body672:                                    ; preds = %do.body661
  call void @__sanitizer_cov_trace_pc() #12
  %shr674 = lshr i32 %or667, 24
  %conv675 = trunc i32 %shr674 to i8
  %88 = ptrtoint ptr %incdec.ptr651 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv675, ptr %incdec.ptr651, align 1
  %incdec.ptr678 = getelementptr i8, ptr %c.sroa.0.241242, i32 2
  %shl680 = shl i32 %or667, 8
  %add684 = add i32 %c.sroa.362.241239, 16
  br label %while.body700.preheader

while.body700.preheader:                          ; preds = %while.body672, %do.body661.while.body700.preheader_crit_edge
  %c.sroa.362.25.lcssa = phi i32 [ %add684, %while.body672 ], [ %add657, %do.body661.while.body700.preheader_crit_edge ]
  %c.sroa.206.25.lcssa = phi i32 [ 32, %while.body672 ], [ %sub663, %do.body661.while.body700.preheader_crit_edge ]
  %c.sroa.79.25.lcssa = phi i32 [ %shl680, %while.body672 ], [ %or667, %do.body661.while.body700.preheader_crit_edge ]
  %c.sroa.0.25.lcssa = phi ptr [ %incdec.ptr678, %while.body672 ], [ %incdec.ptr651, %do.body661.while.body700.preheader_crit_edge ]
  %sub690 = add nsw i32 %c.sroa.206.25.lcssa, -14
  %89 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %height, align 8
  %shl693 = shl i32 %90, %sub690
  %or695 = or i32 %shl693, %c.sroa.79.25.lcssa
  br label %while.body700

while.body700:                                    ; preds = %while.body700.while.body700_crit_edge, %while.body700.preheader
  %c.sroa.0.261259 = phi ptr [ %incdec.ptr706, %while.body700.while.body700_crit_edge ], [ %c.sroa.0.25.lcssa, %while.body700.preheader ]
  %c.sroa.79.261258 = phi i32 [ %shl708, %while.body700.while.body700_crit_edge ], [ %or695, %while.body700.preheader ]
  %c.sroa.206.261257 = phi i32 [ %add710, %while.body700.while.body700_crit_edge ], [ %sub690, %while.body700.preheader ]
  %c.sroa.362.261256 = phi i32 [ %add712, %while.body700.while.body700_crit_edge ], [ %c.sroa.362.25.lcssa, %while.body700.preheader ]
  %shr702 = lshr i32 %c.sroa.79.261258, 24
  %conv703 = trunc i32 %shr702 to i8
  %91 = ptrtoint ptr %c.sroa.0.261259 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv703, ptr %c.sroa.0.261259, align 1
  %incdec.ptr706 = getelementptr i8, ptr %c.sroa.0.261259, i32 1
  %shl708 = shl i32 %c.sroa.79.261258, 8
  %add710 = add nsw i32 %c.sroa.206.261257, 8
  %add712 = add nuw nsw i32 %c.sroa.362.261256, 8
  %cmp698 = icmp slt i32 %c.sroa.206.261257, 17
  br i1 %cmp698, label %while.body700.while.body700_crit_edge, label %do.end715

while.body700.while.body700_crit_edge:            ; preds = %while.body700
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body700

do.end715:                                        ; preds = %while.body700
  %sub718 = add i32 %c.sroa.362.261256, 40
  %add719 = sub i32 %sub718, %add710
  %rem720 = srem i32 %add719, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem720)
  %cmp722.not = icmp eq i32 %rem720, 0
  br i1 %cmp722.not, label %do.end715.if.end754_crit_edge, label %do.body725

do.end715.if.end754_crit_edge:                    ; preds = %do.end715
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end754

do.body725:                                       ; preds = %do.end715
  %sub727 = add nsw i32 %c.sroa.206.261257, %rem720
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub727)
  %cmp7341264 = icmp ult i32 %sub727, 25
  br i1 %cmp7341264, label %do.body725.while.body736_crit_edge, label %do.body725.if.end754_crit_edge

do.body725.if.end754_crit_edge:                   ; preds = %do.body725
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end754

do.body725.while.body736_crit_edge:               ; preds = %do.body725
  br label %while.body736

while.body736:                                    ; preds = %while.body736.while.body736_crit_edge, %do.body725.while.body736_crit_edge
  %c.sroa.0.271268 = phi ptr [ %incdec.ptr742, %while.body736.while.body736_crit_edge ], [ %incdec.ptr706, %do.body725.while.body736_crit_edge ]
  %c.sroa.79.271267 = phi i32 [ %shl744, %while.body736.while.body736_crit_edge ], [ %shl708, %do.body725.while.body736_crit_edge ]
  %c.sroa.206.271266 = phi i32 [ %add746, %while.body736.while.body736_crit_edge ], [ %sub727, %do.body725.while.body736_crit_edge ]
  %c.sroa.362.271265 = phi i32 [ %add748, %while.body736.while.body736_crit_edge ], [ %add712, %do.body725.while.body736_crit_edge ]
  %shr738 = lshr i32 %c.sroa.79.271267, 24
  %conv739 = trunc i32 %shr738 to i8
  %92 = ptrtoint ptr %c.sroa.0.271268 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv739, ptr %c.sroa.0.271268, align 1
  %incdec.ptr742 = getelementptr i8, ptr %c.sroa.0.271268, i32 1
  %shl744 = shl i32 %c.sroa.79.271267, 8
  %add746 = add nsw i32 %c.sroa.206.271266, 8
  %add748 = add nuw nsw i32 %c.sroa.362.271265, 8
  %cmp734 = icmp slt i32 %c.sroa.206.271266, 17
  br i1 %cmp734, label %while.body736.while.body736_crit_edge, label %while.body736.if.end754_crit_edge

while.body736.if.end754_crit_edge:                ; preds = %while.body736
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end754

while.body736.while.body736_crit_edge:            ; preds = %while.body736
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body736

if.end754:                                        ; preds = %while.body736.if.end754_crit_edge, %do.body725.if.end754_crit_edge, %do.end715.if.end754_crit_edge, %if.end491.if.end754_crit_edge, %while.body143.preheader.if.end754_crit_edge
  %c.sroa.362.28 = phi i32 [ %add712, %do.end715.if.end754_crit_edge ], [ %c.sroa.362.18, %if.end491.if.end754_crit_edge ], [ 64, %while.body143.preheader.if.end754_crit_edge ], [ %add712, %do.body725.if.end754_crit_edge ], [ %add748, %while.body736.if.end754_crit_edge ]
  %c.sroa.206.28 = phi i32 [ %add710, %do.end715.if.end754_crit_edge ], [ %c.sroa.206.18, %if.end491.if.end754_crit_edge ], [ 32, %while.body143.preheader.if.end754_crit_edge ], [ %sub727, %do.body725.if.end754_crit_edge ], [ %add746, %while.body736.if.end754_crit_edge ]
  %add758 = add i32 %c.sroa.362.28, 64
  %add759 = sub i32 %add758, %c.sroa.206.28
  %conv760 = trunc i32 %add759 to i8
  %93 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv760, ptr %buf, align 1
  %94 = lshr i32 %add759, 8
  %conv762 = trunc i32 %94 to i8
  %arrayidx763 = getelementptr i8, ptr %buf, i32 1
  %95 = ptrtoint ptr %arrayidx763 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv762, ptr %arrayidx763, align 1
  %arrayidx764 = getelementptr i8, ptr %buf, i32 2
  %96 = ptrtoint ptr %arrayidx764 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %arrayidx764, align 1
  %arrayidx765 = getelementptr i8, ptr %buf, i32 3
  %97 = ptrtoint ptr %arrayidx765 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %arrayidx765, align 1
  %arrayidx766 = getelementptr i8, ptr %buf, i32 4
  %98 = ptrtoint ptr %arrayidx766 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %arrayidx766, align 1
  %arrayidx767 = getelementptr i8, ptr %buf, i32 5
  %99 = ptrtoint ptr %arrayidx767 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 -77, ptr %arrayidx767, align 1
  ret i32 %add759
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpeg4_sequence_header(ptr nocapture noundef readonly %go, ptr noundef writeonly %buf, i32 noundef %ext) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pali = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 41
  %0 = ptrtoint ptr %pali to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pali, align 4
  %conv = trunc i32 %1 to i8
  %sensor_framerate = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 32
  %2 = ptrtoint ptr %sensor_framerate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sensor_framerate, align 8
  %fps_scale = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 40
  %4 = ptrtoint ptr %fps_scale to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fps_scale, align 8
  %div = sdiv i32 %3, %5
  %add.ptr = getelementptr i8, ptr %buf, i32 2
  %add.ptr17 = getelementptr i8, ptr %buf, i32 20
  %aspect_ratio18 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 42
  %6 = ptrtoint ptr %aspect_ratio18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %aspect_ratio18, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %7, label %entry.while.body106.preheader_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb20
  ]

entry.while.body106.preheader_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body106.preheader

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %standard = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 30
  %9 = ptrtoint ptr %standard to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %standard, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  %cond = select i1 %cmp, i8 24, i8 16
  br label %while.body106.preheader

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %standard21 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 30
  %11 = ptrtoint ptr %standard21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %standard21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp22 = icmp eq i32 %12, 0
  %cond24 = select i1 %cmp22, i8 40, i8 32
  br label %while.body106.preheader

while.body106.preheader:                          ; preds = %sw.bb20, %sw.bb, %entry.while.body106.preheader_crit_edge
  %aspect_ratio.0 = phi i8 [ %cond24, %sw.bb20 ], [ %cond, %sw.bb ], [ 8, %entry.while.body106.preheader_crit_edge ]
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %add.ptr, align 1
  %head.sroa.5.0.add.ptr25.sroa_idx = getelementptr i8, ptr %buf, i32 3
  %14 = ptrtoint ptr %head.sroa.5.0.add.ptr25.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %head.sroa.5.0.add.ptr25.sroa_idx, align 1
  %head.sroa.7.0.add.ptr25.sroa_idx = getelementptr i8, ptr %buf, i32 4
  %15 = ptrtoint ptr %head.sroa.7.0.add.ptr25.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %head.sroa.7.0.add.ptr25.sroa_idx, align 1
  %head.sroa.9.0.add.ptr25.sroa_idx = getelementptr i8, ptr %buf, i32 5
  %16 = ptrtoint ptr %head.sroa.9.0.add.ptr25.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -80, ptr %head.sroa.9.0.add.ptr25.sroa_idx, align 1
  %head.sroa.11.0.add.ptr25.sroa_idx = getelementptr i8, ptr %buf, i32 6
  %17 = ptrtoint ptr %head.sroa.11.0.add.ptr25.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %head.sroa.11.0.add.ptr25.sroa_idx, align 1
  %head.sroa.13.0.add.ptr25.sroa_idx = getelementptr i8, ptr %buf, i32 7
  %18 = ptrtoint ptr %head.sroa.13.0.add.ptr25.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %head.sroa.13.0.add.ptr25.sroa_idx, align 1
  %head.sroa.15.0.add.ptr25.sroa_idx = getelementptr i8, ptr %buf, i32 8
  %19 = ptrtoint ptr %head.sroa.15.0.add.ptr25.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %head.sroa.15.0.add.ptr25.sroa_idx, align 1
  %head.sroa.17.0.add.ptr25.sroa_idx = getelementptr i8, ptr %buf, i32 9
  %20 = ptrtoint ptr %head.sroa.17.0.add.ptr25.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %head.sroa.17.0.add.ptr25.sroa_idx, align 1
  %head.sroa.19.0.add.ptr25.sroa_idx = getelementptr i8, ptr %buf, i32 10
  %21 = ptrtoint ptr %head.sroa.19.0.add.ptr25.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -75, ptr %head.sroa.19.0.add.ptr25.sroa_idx, align 1
  %head.sroa.21.0.add.ptr25.sroa_idx = getelementptr i8, ptr %buf, i32 11
  %22 = ptrtoint ptr %head.sroa.21.0.add.ptr25.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 9, ptr %head.sroa.21.0.add.ptr25.sroa_idx, align 1
  %head.sroa.23.0.add.ptr25.sroa_idx = getelementptr i8, ptr %buf, i32 12
  %23 = ptrtoint ptr %head.sroa.23.0.add.ptr25.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %head.sroa.23.0.add.ptr25.sroa_idx, align 1
  %head.sroa.25.0.add.ptr25.sroa_idx = getelementptr i8, ptr %buf, i32 13
  %24 = ptrtoint ptr %head.sroa.25.0.add.ptr25.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %head.sroa.25.0.add.ptr25.sroa_idx, align 1
  %head.sroa.27.0.add.ptr25.sroa_idx = getelementptr i8, ptr %buf, i32 14
  %25 = ptrtoint ptr %head.sroa.27.0.add.ptr25.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %head.sroa.27.0.add.ptr25.sroa_idx, align 1
  %head.sroa.29.0.add.ptr25.sroa_idx = getelementptr i8, ptr %buf, i32 15
  %26 = ptrtoint ptr %head.sroa.29.0.add.ptr25.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %head.sroa.29.0.add.ptr25.sroa_idx, align 1
  %head.sroa.31.0.add.ptr25.sroa_idx = getelementptr i8, ptr %buf, i32 16
  %27 = ptrtoint ptr %head.sroa.31.0.add.ptr25.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %head.sroa.31.0.add.ptr25.sroa_idx, align 1
  %head.sroa.33.0.add.ptr25.sroa_idx = getelementptr i8, ptr %buf, i32 17
  %28 = ptrtoint ptr %head.sroa.33.0.add.ptr25.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %head.sroa.33.0.add.ptr25.sroa_idx, align 1
  %head.sroa.35.0.add.ptr25.sroa_idx = getelementptr i8, ptr %buf, i32 18
  %29 = ptrtoint ptr %head.sroa.35.0.add.ptr25.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %head.sroa.35.0.add.ptr25.sroa_idx, align 1
  %head.sroa.37.0.add.ptr25.sroa_idx = getelementptr i8, ptr %buf, i32 19
  %30 = ptrtoint ptr %head.sroa.37.0.add.ptr25.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 32, ptr %head.sroa.37.0.add.ptr25.sroa_idx, align 1
  %31 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %add.ptr17, align 1
  %incdec.ptr = getelementptr i8, ptr %buf, i32 21
  %32 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -56, ptr %incdec.ptr, align 1
  %incdec.ptr.1 = getelementptr i8, ptr %buf, i32 22
  %or74 = or i8 %aspect_ratio.0, -128
  %33 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %or74, ptr %incdec.ptr.1, align 1
  %incdec.ptr85 = getelementptr i8, ptr %buf, i32 23
  %34 = lshr i32 %div, 9
  %35 = trunc i32 %34 to i8
  %conv109 = or i8 %35, -128
  %36 = ptrtoint ptr %incdec.ptr85 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv109, ptr %incdec.ptr85, align 1
  %incdec.ptr112 = getelementptr i8, ptr %buf, i32 24
  %37 = lshr i32 %div, 1
  %conv109.1 = trunc i32 %37 to i8
  %38 = ptrtoint ptr %incdec.ptr112 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv109.1, ptr %incdec.ptr112, align 1
  %incdec.ptr112.1 = getelementptr i8, ptr %buf, i32 25
  %shl114.1 = shl i32 %div, 31
  %or128 = or i32 %shl114.1, 1610612736
  %39 = ptrtoint ptr %sensor_framerate to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sensor_framerate, align 8
  %41 = ptrtoint ptr %fps_scale to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fps_scale, align 8
  %div.i = sdiv i32 %40, %42
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %while.body106.preheader
  %i.0.i = phi i32 [ 31, %while.body106.preheader ], [ %dec.i, %for.cond.i.for.cond.i_crit_edge ]
  %div.highbits.i = lshr i32 %div.i, %i.0.i
  %.not.not.i = icmp eq i32 %div.highbits.i, 0
  %dec.i = add i32 %i.0.i, -1
  br i1 %.not.not.i, label %for.cond.i.for.cond.i_crit_edge, label %vti_bitlen.exit

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

vti_bitlen.exit:                                  ; preds = %for.cond.i
  %sub151 = sub i32 28, %i.0.i
  %shl153 = shl i32 1001, %sub151
  %or155 = or i32 %shl153, %or128
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub151)
  %cmp158567 = icmp slt i32 %sub151, 25
  br i1 %cmp158567, label %vti_bitlen.exit.while.body160_crit_edge, label %vti_bitlen.exit.do.body176_crit_edge

vti_bitlen.exit.do.body176_crit_edge:             ; preds = %vti_bitlen.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body176

vti_bitlen.exit.while.body160_crit_edge:          ; preds = %vti_bitlen.exit
  br label %while.body160

while.body160:                                    ; preds = %while.body160.while.body160_crit_edge, %vti_bitlen.exit.while.body160_crit_edge
  %c.sroa.0.5571 = phi ptr [ %incdec.ptr166, %while.body160.while.body160_crit_edge ], [ %incdec.ptr112.1, %vti_bitlen.exit.while.body160_crit_edge ]
  %c.sroa.43.5570 = phi i32 [ %shl168, %while.body160.while.body160_crit_edge ], [ %or155, %vti_bitlen.exit.while.body160_crit_edge ]
  %c.sroa.110.5569 = phi i32 [ %add170, %while.body160.while.body160_crit_edge ], [ %sub151, %vti_bitlen.exit.while.body160_crit_edge ]
  %c.sroa.192.5568 = phi i32 [ %add172, %while.body160.while.body160_crit_edge ], [ 40, %vti_bitlen.exit.while.body160_crit_edge ]
  %shr162 = lshr i32 %c.sroa.43.5570, 24
  %conv163 = trunc i32 %shr162 to i8
  %43 = ptrtoint ptr %c.sroa.0.5571 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv163, ptr %c.sroa.0.5571, align 1
  %incdec.ptr166 = getelementptr i8, ptr %c.sroa.0.5571, i32 1
  %shl168 = shl i32 %c.sroa.43.5570, 8
  %add170 = add nsw i32 %c.sroa.110.5569, 8
  %add172 = add nuw i32 %c.sroa.192.5568, 8
  %cmp158 = icmp slt i32 %c.sroa.110.5569, 17
  br i1 %cmp158, label %while.body160.while.body160_crit_edge, label %while.body160.do.body176_crit_edge

while.body160.do.body176_crit_edge:               ; preds = %while.body160
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body176

while.body160.while.body160_crit_edge:            ; preds = %while.body160
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body160

do.body176:                                       ; preds = %while.body160.do.body176_crit_edge, %vti_bitlen.exit.do.body176_crit_edge
  %c.sroa.192.5.lcssa = phi i32 [ 40, %vti_bitlen.exit.do.body176_crit_edge ], [ %add172, %while.body160.do.body176_crit_edge ]
  %c.sroa.110.5.lcssa = phi i32 [ %sub151, %vti_bitlen.exit.do.body176_crit_edge ], [ %add170, %while.body160.do.body176_crit_edge ]
  %c.sroa.43.5.lcssa = phi i32 [ %or155, %vti_bitlen.exit.do.body176_crit_edge ], [ %shl168, %while.body160.do.body176_crit_edge ]
  %c.sroa.0.5.lcssa = phi ptr [ %incdec.ptr112.1, %vti_bitlen.exit.do.body176_crit_edge ], [ %incdec.ptr166, %while.body160.do.body176_crit_edge ]
  %sub178 = add nsw i32 %c.sroa.110.5.lcssa, -1
  %shl180 = shl nuw i32 1, %sub178
  %or182 = or i32 %shl180, %c.sroa.43.5.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub178)
  %cmp185576 = icmp ult i32 %sub178, 25
  br i1 %cmp185576, label %do.body203.thread, label %do.body203

do.body203.thread:                                ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #12
  %shr189 = lshr i32 %or182, 24
  %conv190 = trunc i32 %shr189 to i8
  %44 = ptrtoint ptr %c.sroa.0.5.lcssa to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv190, ptr %c.sroa.0.5.lcssa, align 1
  %incdec.ptr193 = getelementptr i8, ptr %c.sroa.0.5.lcssa, i32 1
  %shl195 = shl i32 %or182, 8
  %add199 = add i32 %c.sroa.192.5.lcssa, 8
  %width639 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 33
  %45 = ptrtoint ptr %width639 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %width639, align 4
  %shl207640 = shl i32 %46, 19
  %or209641 = or i32 %shl207640, %shl195
  br label %while.body214.preheader

do.body203:                                       ; preds = %do.body176
  %sub205 = add nsw i32 %c.sroa.110.5.lcssa, -14
  %width = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 33
  %47 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %width, align 4
  %shl207 = shl i32 %48, %sub205
  %or209 = or i32 %shl207, %or182
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %sub178)
  %cmp212584 = icmp ult i32 %sub178, 38
  br i1 %cmp212584, label %do.body203.while.body214.preheader_crit_edge, label %do.body203.do.body230_crit_edge

do.body203.do.body230_crit_edge:                  ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body230

do.body203.while.body214.preheader_crit_edge:     ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body214.preheader

while.body214.preheader:                          ; preds = %do.body203.while.body214.preheader_crit_edge, %do.body203.thread
  %c.sroa.0.7588.ph = phi ptr [ %c.sroa.0.5.lcssa, %do.body203.while.body214.preheader_crit_edge ], [ %incdec.ptr193, %do.body203.thread ]
  %c.sroa.43.7587.ph = phi i32 [ %or209, %do.body203.while.body214.preheader_crit_edge ], [ %or209641, %do.body203.thread ]
  %c.sroa.110.7586.ph = phi i32 [ %sub205, %do.body203.while.body214.preheader_crit_edge ], [ 19, %do.body203.thread ]
  %c.sroa.192.7585.ph = phi i32 [ %c.sroa.192.5.lcssa, %do.body203.while.body214.preheader_crit_edge ], [ %add199, %do.body203.thread ]
  br label %while.body214

while.body214:                                    ; preds = %while.body214.while.body214_crit_edge, %while.body214.preheader
  %c.sroa.0.7588 = phi ptr [ %incdec.ptr220, %while.body214.while.body214_crit_edge ], [ %c.sroa.0.7588.ph, %while.body214.preheader ]
  %c.sroa.43.7587 = phi i32 [ %shl222, %while.body214.while.body214_crit_edge ], [ %c.sroa.43.7587.ph, %while.body214.preheader ]
  %c.sroa.110.7586 = phi i32 [ %add224, %while.body214.while.body214_crit_edge ], [ %c.sroa.110.7586.ph, %while.body214.preheader ]
  %c.sroa.192.7585 = phi i32 [ %add226, %while.body214.while.body214_crit_edge ], [ %c.sroa.192.7585.ph, %while.body214.preheader ]
  %shr216 = lshr i32 %c.sroa.43.7587, 24
  %conv217 = trunc i32 %shr216 to i8
  %49 = ptrtoint ptr %c.sroa.0.7588 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv217, ptr %c.sroa.0.7588, align 1
  %incdec.ptr220 = getelementptr i8, ptr %c.sroa.0.7588, i32 1
  %shl222 = shl i32 %c.sroa.43.7587, 8
  %add224 = add nsw i32 %c.sroa.110.7586, 8
  %add226 = add i32 %c.sroa.192.7585, 8
  %cmp212 = icmp slt i32 %c.sroa.110.7586, 17
  br i1 %cmp212, label %while.body214.while.body214_crit_edge, label %while.body214.do.body230_crit_edge

while.body214.do.body230_crit_edge:               ; preds = %while.body214
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body230

while.body214.while.body214_crit_edge:            ; preds = %while.body214
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body214

do.body230:                                       ; preds = %while.body214.do.body230_crit_edge, %do.body203.do.body230_crit_edge
  %c.sroa.192.7.lcssa = phi i32 [ %c.sroa.192.5.lcssa, %do.body203.do.body230_crit_edge ], [ %add226, %while.body214.do.body230_crit_edge ]
  %c.sroa.110.7.lcssa = phi i32 [ %sub205, %do.body203.do.body230_crit_edge ], [ %add224, %while.body214.do.body230_crit_edge ]
  %c.sroa.43.7.lcssa = phi i32 [ %or209, %do.body203.do.body230_crit_edge ], [ %shl222, %while.body214.do.body230_crit_edge ]
  %c.sroa.0.7.lcssa = phi ptr [ %c.sroa.0.5.lcssa, %do.body203.do.body230_crit_edge ], [ %incdec.ptr220, %while.body214.do.body230_crit_edge ]
  %sub232 = add nsw i32 %c.sroa.110.7.lcssa, -1
  %shl234 = shl nuw i32 1, %sub232
  %or236 = or i32 %shl234, %c.sroa.43.7.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub232)
  %cmp239593 = icmp ult i32 %sub232, 25
  br i1 %cmp239593, label %do.body257.thread, label %do.body257

do.body257.thread:                                ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #12
  %shr243 = lshr i32 %or236, 24
  %conv244 = trunc i32 %shr243 to i8
  %50 = ptrtoint ptr %c.sroa.0.7.lcssa to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv244, ptr %c.sroa.0.7.lcssa, align 1
  %incdec.ptr247 = getelementptr i8, ptr %c.sroa.0.7.lcssa, i32 1
  %shl249 = shl i32 %or236, 8
  %add253 = add i32 %c.sroa.192.7.lcssa, 8
  %height652 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 34
  %51 = ptrtoint ptr %height652 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %height652, align 8
  %shl261653 = shl i32 %52, 19
  %or263654 = or i32 %shl261653, %shl249
  br label %while.body268.preheader

do.body257:                                       ; preds = %do.body230
  %sub259 = add nsw i32 %c.sroa.110.7.lcssa, -14
  %height = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 34
  %53 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %height, align 8
  %shl261 = shl i32 %54, %sub259
  %or263 = or i32 %shl261, %or236
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %sub232)
  %cmp266601 = icmp ult i32 %sub232, 38
  br i1 %cmp266601, label %do.body257.while.body268.preheader_crit_edge, label %do.body284

do.body257.while.body268.preheader_crit_edge:     ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body268.preheader

while.body268.preheader:                          ; preds = %do.body257.while.body268.preheader_crit_edge, %do.body257.thread
  %c.sroa.0.9605.ph = phi ptr [ %c.sroa.0.7.lcssa, %do.body257.while.body268.preheader_crit_edge ], [ %incdec.ptr247, %do.body257.thread ]
  %c.sroa.43.9604.ph = phi i32 [ %or263, %do.body257.while.body268.preheader_crit_edge ], [ %or263654, %do.body257.thread ]
  %c.sroa.110.9603.ph = phi i32 [ %sub259, %do.body257.while.body268.preheader_crit_edge ], [ 19, %do.body257.thread ]
  %c.sroa.192.9602.ph = phi i32 [ %c.sroa.192.7.lcssa, %do.body257.while.body268.preheader_crit_edge ], [ %add253, %do.body257.thread ]
  br label %while.body268

while.body268:                                    ; preds = %while.body268.while.body268_crit_edge, %while.body268.preheader
  %c.sroa.0.9605 = phi ptr [ %incdec.ptr274, %while.body268.while.body268_crit_edge ], [ %c.sroa.0.9605.ph, %while.body268.preheader ]
  %c.sroa.43.9604 = phi i32 [ %shl276, %while.body268.while.body268_crit_edge ], [ %c.sroa.43.9604.ph, %while.body268.preheader ]
  %c.sroa.110.9603 = phi i32 [ %add278, %while.body268.while.body268_crit_edge ], [ %c.sroa.110.9603.ph, %while.body268.preheader ]
  %c.sroa.192.9602 = phi i32 [ %add280, %while.body268.while.body268_crit_edge ], [ %c.sroa.192.9602.ph, %while.body268.preheader ]
  %shr270 = lshr i32 %c.sroa.43.9604, 24
  %conv271 = trunc i32 %shr270 to i8
  %55 = ptrtoint ptr %c.sroa.0.9605 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv271, ptr %c.sroa.0.9605, align 1
  %incdec.ptr274 = getelementptr i8, ptr %c.sroa.0.9605, i32 1
  %shl276 = shl i32 %c.sroa.43.9604, 8
  %add278 = add nsw i32 %c.sroa.110.9603, 8
  %add280 = add i32 %c.sroa.192.9602, 8
  %cmp266 = icmp slt i32 %c.sroa.110.9603, 17
  br i1 %cmp266, label %while.body268.while.body268_crit_edge, label %do.body284.thread

while.body268.while.body268_crit_edge:            ; preds = %while.body268
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body268

do.body284.thread:                                ; preds = %while.body268
  call void @__sanitizer_cov_trace_pc() #12
  %sub286664 = add nsw i32 %c.sroa.110.9603, -6
  %shl288665 = shl nuw i32 10288, %sub286664
  %or290666 = or i32 %shl288665, %shl276
  br label %while.body295.preheader

do.body284:                                       ; preds = %do.body257
  %sub286 = add nsw i32 %c.sroa.110.7.lcssa, -28
  %shl288 = shl i32 10288, %sub286
  %or290 = or i32 %shl288, %or263
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %sub259)
  %cmp293610 = icmp ult i32 %sub259, 39
  br i1 %cmp293610, label %do.body284.while.body295.preheader_crit_edge, label %do.body284.do.end310_crit_edge

do.body284.do.end310_crit_edge:                   ; preds = %do.body284
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end310

do.body284.while.body295.preheader_crit_edge:     ; preds = %do.body284
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body295.preheader

while.body295.preheader:                          ; preds = %do.body284.while.body295.preheader_crit_edge, %do.body284.thread
  %c.sroa.0.10614.ph = phi ptr [ %c.sroa.0.7.lcssa, %do.body284.while.body295.preheader_crit_edge ], [ %incdec.ptr274, %do.body284.thread ]
  %c.sroa.43.10613.ph = phi i32 [ %or290, %do.body284.while.body295.preheader_crit_edge ], [ %or290666, %do.body284.thread ]
  %c.sroa.110.10612.ph = phi i32 [ %sub286, %do.body284.while.body295.preheader_crit_edge ], [ %sub286664, %do.body284.thread ]
  %c.sroa.192.10611.ph = phi i32 [ %c.sroa.192.7.lcssa, %do.body284.while.body295.preheader_crit_edge ], [ %add280, %do.body284.thread ]
  br label %while.body295

while.body295:                                    ; preds = %while.body295.while.body295_crit_edge, %while.body295.preheader
  %c.sroa.0.10614 = phi ptr [ %incdec.ptr301, %while.body295.while.body295_crit_edge ], [ %c.sroa.0.10614.ph, %while.body295.preheader ]
  %c.sroa.43.10613 = phi i32 [ %shl303, %while.body295.while.body295_crit_edge ], [ %c.sroa.43.10613.ph, %while.body295.preheader ]
  %c.sroa.110.10612 = phi i32 [ %add305, %while.body295.while.body295_crit_edge ], [ %c.sroa.110.10612.ph, %while.body295.preheader ]
  %c.sroa.192.10611 = phi i32 [ %add307, %while.body295.while.body295_crit_edge ], [ %c.sroa.192.10611.ph, %while.body295.preheader ]
  %shr297 = lshr i32 %c.sroa.43.10613, 24
  %conv298 = trunc i32 %shr297 to i8
  %56 = ptrtoint ptr %c.sroa.0.10614 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv298, ptr %c.sroa.0.10614, align 1
  %incdec.ptr301 = getelementptr i8, ptr %c.sroa.0.10614, i32 1
  %shl303 = shl i32 %c.sroa.43.10613, 8
  %add305 = add nsw i32 %c.sroa.110.10612, 8
  %add307 = add i32 %c.sroa.192.10611, 8
  %cmp293 = icmp slt i32 %c.sroa.110.10612, 17
  br i1 %cmp293, label %while.body295.while.body295_crit_edge, label %while.body295.do.end310_crit_edge

while.body295.do.end310_crit_edge:                ; preds = %while.body295
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end310

while.body295.while.body295_crit_edge:            ; preds = %while.body295
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body295

do.end310:                                        ; preds = %while.body295.do.end310_crit_edge, %do.body284.do.end310_crit_edge
  %c.sroa.192.10.lcssa = phi i32 [ %c.sroa.192.7.lcssa, %do.body284.do.end310_crit_edge ], [ %add307, %while.body295.do.end310_crit_edge ]
  %c.sroa.110.10.lcssa = phi i32 [ %sub286, %do.body284.do.end310_crit_edge ], [ %add305, %while.body295.do.end310_crit_edge ]
  %c.sroa.43.10.lcssa = phi i32 [ %or290, %do.body284.do.end310_crit_edge ], [ %shl303, %while.body295.do.end310_crit_edge ]
  %c.sroa.0.10.lcssa = phi ptr [ %c.sroa.0.7.lcssa, %do.body284.do.end310_crit_edge ], [ %incdec.ptr301, %while.body295.do.end310_crit_edge ]
  %sub313 = add i32 %c.sroa.192.10.lcssa, 32
  %add314 = sub i32 %sub313, %c.sroa.110.10.lcssa
  %rem = srem i32 %add314, 8
  %sub318 = add nsw i32 %c.sroa.110.10.lcssa, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub318)
  %cmp325619 = icmp ult i32 %sub318, 25
  br i1 %cmp325619, label %while.body327, label %do.end310.do.body343_crit_edge

do.end310.do.body343_crit_edge:                   ; preds = %do.end310
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body343

while.body327:                                    ; preds = %do.end310
  call void @__sanitizer_cov_trace_pc() #12
  %shr329 = lshr i32 %c.sroa.43.10.lcssa, 24
  %conv330 = trunc i32 %shr329 to i8
  %57 = ptrtoint ptr %c.sroa.0.10.lcssa to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv330, ptr %c.sroa.0.10.lcssa, align 1
  %incdec.ptr333 = getelementptr i8, ptr %c.sroa.0.10.lcssa, i32 1
  %shl335 = shl i32 %c.sroa.43.10.lcssa, 8
  %add339 = add i32 %c.sroa.192.10.lcssa, 8
  br label %do.body343

do.body343:                                       ; preds = %while.body327, %do.end310.do.body343_crit_edge
  %c.sroa.192.11.lcssa = phi i32 [ %add339, %while.body327 ], [ %c.sroa.192.10.lcssa, %do.end310.do.body343_crit_edge ]
  %c.sroa.110.11.lcssa = phi i32 [ 32, %while.body327 ], [ %sub318, %do.end310.do.body343_crit_edge ]
  %c.sroa.43.11.lcssa = phi i32 [ %shl335, %while.body327 ], [ %c.sroa.43.10.lcssa, %do.end310.do.body343_crit_edge ]
  %c.sroa.0.11.lcssa = phi ptr [ %incdec.ptr333, %while.body327 ], [ %c.sroa.0.10.lcssa, %do.end310.do.body343_crit_edge ]
  %sub344 = sub nsw i32 7, %rem
  %sub346 = sub nuw nsw i32 %c.sroa.110.11.lcssa, %sub344
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub346)
  %cmp356627 = icmp ult i32 %sub346, 25
  br i1 %cmp356627, label %while.body358.preheader, label %do.body343.do.end373_crit_edge

do.body343.do.end373_crit_edge:                   ; preds = %do.body343
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end373

while.body358.preheader:                          ; preds = %do.body343
  %notmask = shl nsw i32 -1, %sub344
  %sub349 = xor i32 %notmask, -1
  %shl351 = shl i32 %sub349, %sub346
  %or353 = or i32 %shl351, %c.sroa.43.11.lcssa
  br label %while.body358

while.body358:                                    ; preds = %while.body358.while.body358_crit_edge, %while.body358.preheader
  %c.sroa.0.12631 = phi ptr [ %incdec.ptr364, %while.body358.while.body358_crit_edge ], [ %c.sroa.0.11.lcssa, %while.body358.preheader ]
  %c.sroa.43.12630 = phi i32 [ %shl366, %while.body358.while.body358_crit_edge ], [ %or353, %while.body358.preheader ]
  %c.sroa.110.12629 = phi i32 [ %add368, %while.body358.while.body358_crit_edge ], [ %sub346, %while.body358.preheader ]
  %c.sroa.192.12628 = phi i32 [ %add370, %while.body358.while.body358_crit_edge ], [ %c.sroa.192.11.lcssa, %while.body358.preheader ]
  %shr360 = lshr i32 %c.sroa.43.12630, 24
  %conv361 = trunc i32 %shr360 to i8
  %58 = ptrtoint ptr %c.sroa.0.12631 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv361, ptr %c.sroa.0.12631, align 1
  %incdec.ptr364 = getelementptr i8, ptr %c.sroa.0.12631, i32 1
  %shl366 = shl i32 %c.sroa.43.12630, 8
  %add368 = add nsw i32 %c.sroa.110.12629, 8
  %add370 = add i32 %c.sroa.192.12628, 8
  %cmp356 = icmp slt i32 %c.sroa.110.12629, 17
  br i1 %cmp356, label %while.body358.while.body358_crit_edge, label %while.body358.do.end373_crit_edge

while.body358.do.end373_crit_edge:                ; preds = %while.body358
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end373

while.body358.while.body358_crit_edge:            ; preds = %while.body358
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body358

do.end373:                                        ; preds = %while.body358.do.end373_crit_edge, %do.body343.do.end373_crit_edge
  %c.sroa.192.12.lcssa = phi i32 [ %c.sroa.192.11.lcssa, %do.body343.do.end373_crit_edge ], [ %add370, %while.body358.do.end373_crit_edge ]
  %c.sroa.110.12.lcssa = phi i32 [ %sub346, %do.body343.do.end373_crit_edge ], [ %add368, %while.body358.do.end373_crit_edge ]
  %add377 = add i32 %c.sroa.192.12.lcssa, 176
  %add378 = sub i32 %add377, %c.sroa.110.12.lcssa
  %conv379 = trunc i32 %add378 to i8
  %59 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv379, ptr %buf, align 1
  %60 = lshr i32 %add378, 8
  %conv381 = trunc i32 %60 to i8
  %arrayidx382 = getelementptr i8, ptr %buf, i32 1
  %61 = ptrtoint ptr %arrayidx382 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv381, ptr %arrayidx382, align 1
  ret i32 %add378
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mjpeg_frame_header(ptr nocapture noundef readonly %go, ptr noundef writeonly %buf, i32 noundef %q) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1
  %arrayidx2 = getelementptr i8, ptr %buf, i32 1
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -40, ptr %arrayidx2, align 1
  %arrayidx4 = getelementptr i8, ptr %buf, i32 2
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr i8, ptr %buf, i32 3
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -37, ptr %arrayidx6, align 1
  %arrayidx8 = getelementptr i8, ptr %buf, i32 4
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx8, align 1
  %arrayidx10 = getelementptr i8, ptr %buf, i32 5
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 67, ptr %arrayidx10, align 1
  %arrayidx12 = getelementptr i8, ptr %buf, i32 6
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx12, align 1
  %arrayidx14 = getelementptr i8, ptr %buf, i32 7
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 8, ptr %arrayidx14, align 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %p.0255 = phi i32 [ 8, %entry ], [ %inc18, %for.body.for.body_crit_edge ]
  %i.0254 = phi i32 [ 1, %entry ], [ %inc20, %for.body.for.body_crit_edge ]
  %arrayidx15 = getelementptr [64 x i32], ptr @zz, i32 0, i32 %i.0254
  %8 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx15, align 4
  %arrayidx16 = getelementptr [64 x i8], ptr @default_intra_quant_table, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx16, align 1
  %conv = zext i8 %11 to i32
  %mul = mul i32 %conv, %q
  %12 = lshr i32 %mul, 3
  %conv17 = trunc i32 %12 to i8
  %inc18 = add nuw nsw i32 %p.0255, 1
  %arrayidx19 = getelementptr i8, ptr %buf, i32 %p.0255
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv17, ptr %arrayidx19, align 1
  %inc20 = add nuw nsw i32 %i.0254, 1
  %exitcond.not = icmp eq i32 %inc18, 71
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx22 = getelementptr i8, ptr %buf, i32 71
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %arrayidx22, align 1
  %arrayidx24 = getelementptr i8, ptr %buf, i32 72
  %15 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -64, ptr %arrayidx24, align 1
  %arrayidx26 = getelementptr i8, ptr %buf, i32 73
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx26, align 1
  %arrayidx28 = getelementptr i8, ptr %buf, i32 74
  %17 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 17, ptr %arrayidx28, align 1
  %arrayidx30 = getelementptr i8, ptr %buf, i32 75
  %18 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 8, ptr %arrayidx30, align 1
  %height = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 34
  %19 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height, align 8
  %21 = lshr i32 %20, 8
  %conv32 = trunc i32 %21 to i8
  %arrayidx34 = getelementptr i8, ptr %buf, i32 76
  %22 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv32, ptr %arrayidx34, align 1
  %23 = load i32, ptr %height, align 8
  %conv36 = trunc i32 %23 to i8
  %arrayidx38 = getelementptr i8, ptr %buf, i32 77
  %24 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv36, ptr %arrayidx38, align 1
  %width = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 33
  %25 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %width, align 4
  %27 = lshr i32 %26, 8
  %conv40 = trunc i32 %27 to i8
  %arrayidx42 = getelementptr i8, ptr %buf, i32 78
  %28 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv40, ptr %arrayidx42, align 1
  %29 = load i32, ptr %width, align 4
  %conv45 = trunc i32 %29 to i8
  %arrayidx47 = getelementptr i8, ptr %buf, i32 79
  %30 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv45, ptr %arrayidx47, align 1
  %arrayidx49 = getelementptr i8, ptr %buf, i32 80
  %31 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 3, ptr %arrayidx49, align 1
  %arrayidx51 = getelementptr i8, ptr %buf, i32 81
  %32 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %arrayidx51, align 1
  %arrayidx53 = getelementptr i8, ptr %buf, i32 82
  %33 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 34, ptr %arrayidx53, align 1
  %arrayidx55 = getelementptr i8, ptr %buf, i32 83
  %34 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx55, align 1
  %arrayidx57 = getelementptr i8, ptr %buf, i32 84
  %35 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %arrayidx57, align 1
  %arrayidx59 = getelementptr i8, ptr %buf, i32 85
  %36 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 17, ptr %arrayidx59, align 1
  %arrayidx61 = getelementptr i8, ptr %buf, i32 86
  %37 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx61, align 1
  %arrayidx63 = getelementptr i8, ptr %buf, i32 87
  %38 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 3, ptr %arrayidx63, align 1
  %arrayidx65 = getelementptr i8, ptr %buf, i32 88
  %39 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 17, ptr %arrayidx65, align 1
  %arrayidx67 = getelementptr i8, ptr %buf, i32 89
  %40 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %arrayidx67, align 1
  %arrayidx69 = getelementptr i8, ptr %buf, i32 90
  %41 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %arrayidx69, align 1
  %arrayidx71 = getelementptr i8, ptr %buf, i32 91
  %42 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -60, ptr %arrayidx71, align 1
  %arrayidx73 = getelementptr i8, ptr %buf, i32 92
  %43 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %arrayidx73, align 1
  %arrayidx75 = getelementptr i8, ptr %buf, i32 93
  %44 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -94, ptr %arrayidx75, align 1
  %arrayidx77 = getelementptr i8, ptr %buf, i32 94
  %45 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %arrayidx77, align 1
  %add.ptr = getelementptr i8, ptr %buf, i32 95
  %46 = call ptr @memcpy(ptr %add.ptr, ptr getelementptr inbounds ([17 x i8], ptr @bits_dc_luminance, i32 0, i32 1), i32 16)
  %add.ptr78 = getelementptr i8, ptr %buf, i32 111
  %47 = call ptr @memcpy(ptr %add.ptr78, ptr @val_dc_luminance, i32 12)
  %arrayidx81 = getelementptr i8, ptr %buf, i32 123
  %48 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %arrayidx81, align 1
  %add.ptr82 = getelementptr i8, ptr %buf, i32 124
  %49 = call ptr @memcpy(ptr %add.ptr82, ptr getelementptr inbounds ([17 x i8], ptr @bits_dc_chrominance, i32 0, i32 1), i32 16)
  %add.ptr84 = getelementptr i8, ptr %buf, i32 140
  %50 = call ptr @memcpy(ptr %add.ptr84, ptr @val_dc_chrominance, i32 12)
  %arrayidx87 = getelementptr i8, ptr %buf, i32 152
  %51 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 16, ptr %arrayidx87, align 1
  %add.ptr88 = getelementptr i8, ptr %buf, i32 153
  %52 = call ptr @memcpy(ptr %add.ptr88, ptr getelementptr inbounds ([17 x i8], ptr @bits_ac_luminance, i32 0, i32 1), i32 16)
  %add.ptr90 = getelementptr i8, ptr %buf, i32 169
  %53 = call ptr @memcpy(ptr %add.ptr90, ptr @val_ac_luminance, i32 162)
  %arrayidx93 = getelementptr i8, ptr %buf, i32 331
  %54 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 17, ptr %arrayidx93, align 1
  %add.ptr94 = getelementptr i8, ptr %buf, i32 332
  %55 = call ptr @memcpy(ptr %add.ptr94, ptr getelementptr inbounds ([17 x i8], ptr @bits_ac_chrominance, i32 0, i32 1), i32 16)
  %add.ptr96 = getelementptr i8, ptr %buf, i32 348
  %56 = call ptr @memcpy(ptr %add.ptr96, ptr @val_ac_chrominance, i32 162)
  %arrayidx99 = getelementptr i8, ptr %buf, i32 510
  %57 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -1, ptr %arrayidx99, align 1
  %arrayidx101 = getelementptr i8, ptr %buf, i32 511
  %58 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -38, ptr %arrayidx101, align 1
  %arrayidx103 = getelementptr i8, ptr %buf, i32 512
  %59 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %arrayidx103, align 1
  %arrayidx105 = getelementptr i8, ptr %buf, i32 513
  %60 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 12, ptr %arrayidx105, align 1
  %arrayidx107 = getelementptr i8, ptr %buf, i32 514
  %61 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 3, ptr %arrayidx107, align 1
  %arrayidx109 = getelementptr i8, ptr %buf, i32 515
  %62 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %arrayidx109, align 1
  %arrayidx111 = getelementptr i8, ptr %buf, i32 516
  %63 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %arrayidx111, align 1
  %arrayidx113 = getelementptr i8, ptr %buf, i32 517
  %64 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 2, ptr %arrayidx113, align 1
  %arrayidx115 = getelementptr i8, ptr %buf, i32 518
  %65 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 17, ptr %arrayidx115, align 1
  %arrayidx117 = getelementptr i8, ptr %buf, i32 519
  %66 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 3, ptr %arrayidx117, align 1
  %arrayidx119 = getelementptr i8, ptr %buf, i32 520
  %67 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 17, ptr %arrayidx119, align 1
  %arrayidx121 = getelementptr i8, ptr %buf, i32 521
  %68 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %arrayidx121, align 1
  %arrayidx123 = getelementptr i8, ptr %buf, i32 522
  %69 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 63, ptr %arrayidx123, align 1
  %arrayidx125 = getelementptr i8, ptr %buf, i32 523
  %70 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %arrayidx125, align 1
  ret i32 524
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mpeg1_frame_header(ptr nocapture noundef readonly %go, ptr nocapture noundef writeonly %buf, i32 noundef %pict_struct, i32 noundef %frame) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %interlace_coding = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 44
  %0 = ptrtoint ptr %interlace_coding to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %interlace_coding, align 8
  %1 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %height1 = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 34
  %2 = ptrtoint ptr %height1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height1, align 8
  %. = select i1 %tobool.not, i32 16, i32 32
  %div2 = sdiv i32 %3, %.
  %add.ptr = getelementptr i8, ptr %buf, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %frame)
  %4 = icmp ult i32 %frame, 4
  br i1 %4, label %switch.lookup, label %entry.do.end76_crit_edge

entry.do.end76_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end76

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.mpeg1_frame_header, i32 0, i32 %frame
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep407 = getelementptr inbounds [4 x i32], ptr @switch.table.mpeg1_frame_header.16, i32 0, i32 %frame
  %6 = ptrtoint ptr %switch.gep407 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load408 = load i32, ptr %switch.gep407, align 4
  br label %do.end76

do.end76:                                         ; preds = %switch.lookup, %entry.do.end76_crit_edge
  %mb_code.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.do.end76_crit_edge ]
  %mb_len.0 = phi i32 [ %switch.load408, %switch.lookup ], [ 0, %entry.do.end76_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frame)
  %cmp = icmp eq i32 %frame, 0
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %add.ptr, align 1
  %incdec.ptr = getelementptr i8, ptr %buf, i32 7
  %conv34 = select i1 %cmp, i8 23, i8 31
  %8 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv34, ptr %incdec.ptr, align 1
  %incdec.ptr37 = getelementptr i8, ptr %buf, i32 8
  %9 = ptrtoint ptr %incdec.ptr37 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %incdec.ptr37, align 1
  %incdec.ptr37.1 = getelementptr i8, ptr %buf, i32 9
  %format = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 38
  %10 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %format, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 843534413, i32 %11)
  %cmp50 = icmp eq i32 %11, 843534413
  %or56 = select i1 %cmp50, i32 -75497472, i32 -100663296
  %shr63 = lshr i32 %or56, 24
  %conv64 = trunc i32 %shr63 to i8
  %12 = ptrtoint ptr %incdec.ptr37.1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv64, ptr %incdec.ptr37.1, align 1
  %incdec.ptr67 = getelementptr i8, ptr %buf, i32 10
  %shl69 = shl i32 %or56, 8
  br i1 %cmp, label %do.end76.if.end199_crit_edge, label %do.body79

do.end76.if.end199_crit_edge:                     ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end199

do.body79:                                        ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %format, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 843534413, i32 %14)
  %cmp83 = icmp eq i32 %14, 843534413
  %cond85 = select i1 %cmp83, i32 939524096, i32 536870912
  %or89 = or i32 %cond85, %shl69
  br label %if.end199

if.end199:                                        ; preds = %do.body79, %do.end76.if.end199_crit_edge
  %c.sroa.112.5 = phi i32 [ %or89, %do.body79 ], [ %shl69, %do.end76.if.end199_crit_edge ]
  %shr150 = lshr i32 %c.sroa.112.5, 24
  %conv151 = trunc i32 %shr150 to i8
  %15 = ptrtoint ptr %incdec.ptr67 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv151, ptr %incdec.ptr67, align 1
  %incdec.ptr154 = getelementptr i8, ptr %buf, i32 11
  %shl156 = shl i32 %c.sroa.112.5, 8
  %16 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %format, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 843534413, i32 %17)
  %cmp201 = icmp eq i32 %17, 843534413
  br i1 %cmp201, label %while.body215, label %if.end199.if.end504_crit_edge

if.end199.if.end504_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end504

while.body215:                                    ; preds = %if.end199
  %shr217 = lshr i32 %shl156, 24
  %conv218 = trunc i32 %shr217 to i8
  %18 = ptrtoint ptr %incdec.ptr154 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv218, ptr %incdec.ptr154, align 1
  %incdec.ptr221 = getelementptr i8, ptr %buf, i32 12
  %19 = lshr i32 %c.sroa.112.5, 8
  %conv218.1 = trunc i32 %19 to i8
  %20 = ptrtoint ptr %incdec.ptr221 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv218.1, ptr %incdec.ptr221, align 1
  %incdec.ptr221.1 = getelementptr i8, ptr %buf, i32 13
  %21 = trunc i32 %c.sroa.112.5 to i8
  %conv218.2 = or i8 %21, 1
  %22 = ptrtoint ptr %incdec.ptr221.1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv218.2, ptr %incdec.ptr221.1, align 1
  %incdec.ptr221.2 = getelementptr i8, ptr %buf, i32 14
  %23 = ptrtoint ptr %incdec.ptr221.2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -75, ptr %incdec.ptr221.2, align 1
  %incdec.ptr248 = getelementptr i8, ptr %buf, i32 15
  %24 = ptrtoint ptr %incdec.ptr248 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -124, ptr %incdec.ptr248, align 1
  %or294 = select i1 %cmp, i32 1341128704, i32 1145044992
  %incdec.ptr275 = getelementptr i8, ptr %buf, i32 16
  %shr301 = lshr i32 %or294, 24
  %conv302 = trunc i32 %shr301 to i8
  %25 = ptrtoint ptr %incdec.ptr275 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv302, ptr %incdec.ptr275, align 1
  %incdec.ptr305 = getelementptr i8, ptr %buf, i32 17
  %shl307 = shl i32 %or294, 8
  %26 = ptrtoint ptr %interlace_coding to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load316 = load i8, ptr %interlace_coding, align 8
  %27 = and i8 %bf.load316, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool320.not = icmp eq i8 %27, 0
  br i1 %tobool320.not, label %do.body412, label %do.body322

do.body322:                                       ; preds = %while.body215
  %shl326 = shl i32 %pict_struct, 24
  %or328 = or i32 %shl326, %shl307
  %shr335 = lshr exact i32 %or328, 24
  %conv336 = trunc i32 %shr335 to i8
  %28 = ptrtoint ptr %incdec.ptr305 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv336, ptr %incdec.ptr305, align 1
  %incdec.ptr339 = getelementptr i8, ptr %buf, i32 18
  %29 = ptrtoint ptr %interlace_coding to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load349 = load i8, ptr %interlace_coding, align 8
  %30 = and i8 %bf.load349, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool353.not = icmp eq i8 %30, 0
  br i1 %tobool353.not, label %while.body394, label %while.body366

while.body366:                                    ; preds = %do.body322
  call void @__sanitizer_cov_trace_pc() #12
  %shr368 = lshr i32 0, 24
  %conv369 = trunc i32 %shr368 to i8
  %31 = ptrtoint ptr %incdec.ptr339 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv369, ptr %incdec.ptr339, align 1
  %incdec.ptr372 = getelementptr i8, ptr %incdec.ptr339, i32 1
  br label %if.end466

while.body394:                                    ; preds = %do.body322
  call void @__sanitizer_cov_trace_pc() #12
  %shl387 = shl nuw nsw i32 512, 21
  %or389 = or i32 %shl387, 0
  %shr396 = lshr i32 %or389, 24
  %conv397 = trunc i32 %shr396 to i8
  %32 = ptrtoint ptr %incdec.ptr339 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv397, ptr %incdec.ptr339, align 1
  %incdec.ptr400 = getelementptr i8, ptr %incdec.ptr339, i32 1
  br label %if.end466

do.body412:                                       ; preds = %while.body215
  call void @__sanitizer_cov_trace_pc() #12
  %or418 = or i32 %shl307, 50331648
  %shr425 = lshr exact i32 %or418, 24
  %conv426 = trunc i32 %shr425 to i8
  %33 = ptrtoint ptr %incdec.ptr305 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv426, ptr %incdec.ptr305, align 1
  %incdec.ptr429 = getelementptr i8, ptr %buf, i32 18
  %shl443 = shl nuw nsw i32 524, 21
  %or445 = or i32 %shl443, 0
  %shr452 = lshr i32 %or445, 24
  %conv453 = trunc i32 %shr452 to i8
  %34 = ptrtoint ptr %incdec.ptr429 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv453, ptr %incdec.ptr429, align 1
  %incdec.ptr456 = getelementptr i8, ptr %incdec.ptr429, i32 1
  br label %if.end466

if.end466:                                        ; preds = %do.body412, %while.body394, %while.body366
  %c.sroa.516.18 = phi i32 [ 104, %do.body412 ], [ 104, %while.body394 ], [ 104, %while.body366 ]
  %c.sroa.294.18.in = phi i32 [ 21, %do.body412 ], [ 21, %while.body394 ], [ 21, %while.body366 ]
  %c.sroa.112.18.in = phi i32 [ %or445, %do.body412 ], [ %or389, %while.body394 ], [ 0, %while.body366 ]
  %c.sroa.0.18 = phi ptr [ %incdec.ptr456, %do.body412 ], [ %incdec.ptr400, %while.body394 ], [ %incdec.ptr372, %while.body366 ]
  %c.sroa.294.18 = add nuw nsw i32 %c.sroa.294.18.in, 8
  %c.sroa.112.18 = shl i32 %c.sroa.112.18.in, 8
  %sub469 = add nsw i32 %c.sroa.516.18, 32
  %add470 = sub nsw i32 %sub469, %c.sroa.294.18
  %rem471 = srem i32 %add470, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem471)
  %cmp473.not = icmp eq i32 %rem471, 0
  br i1 %cmp473.not, label %if.end466.if.end504_crit_edge, label %do.body476

if.end466.if.end504_crit_edge:                    ; preds = %if.end466
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end504

do.body476:                                       ; preds = %if.end466
  %sub478 = add nsw i32 %c.sroa.294.18.in, %rem471
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub478)
  %cmp485143 = icmp ult i32 %sub478, 25
  br i1 %cmp485143, label %while.body487, label %do.body476.if.end504_crit_edge

do.body476.if.end504_crit_edge:                   ; preds = %do.body476
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end504

while.body487:                                    ; preds = %do.body476
  %shr489 = lshr i32 %c.sroa.112.18, 24
  %conv490 = trunc i32 %shr489 to i8
  %35 = ptrtoint ptr %c.sroa.0.18 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv490, ptr %c.sroa.0.18, align 1
  %incdec.ptr493 = getelementptr i8, ptr %c.sroa.0.18, i32 1
  %shl495 = shl i32 %c.sroa.112.18.in, 16
  %add497 = add nsw i32 %c.sroa.294.18, %rem471
  %add499 = add nuw nsw i32 %c.sroa.516.18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub478)
  %cmp485 = icmp slt i32 %sub478, 17
  br i1 %cmp485, label %while.body487.1, label %while.body487.if.end504_crit_edge

while.body487.if.end504_crit_edge:                ; preds = %while.body487
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end504

while.body487.1:                                  ; preds = %while.body487
  call void @__sanitizer_cov_trace_pc() #12
  %shr489.1 = lshr i32 %shl495, 24
  %conv490.1 = trunc i32 %shr489.1 to i8
  %36 = ptrtoint ptr %incdec.ptr493 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv490.1, ptr %incdec.ptr493, align 1
  %incdec.ptr493.1 = getelementptr i8, ptr %c.sroa.0.18, i32 2
  %shl495.1 = shl i32 %c.sroa.112.18.in, 24
  %add497.1 = add nsw i32 %add497, 8
  %add499.1 = add nuw nsw i32 %c.sroa.516.18, 16
  br label %if.end504

if.end504:                                        ; preds = %while.body487.1, %while.body487.if.end504_crit_edge, %do.body476.if.end504_crit_edge, %if.end466.if.end504_crit_edge, %if.end199.if.end504_crit_edge
  %c.sroa.516.20 = phi i32 [ %c.sroa.516.18, %if.end466.if.end504_crit_edge ], [ 40, %if.end199.if.end504_crit_edge ], [ %c.sroa.516.18, %do.body476.if.end504_crit_edge ], [ %add499, %while.body487.if.end504_crit_edge ], [ %add499.1, %while.body487.1 ]
  %c.sroa.294.20 = phi i32 [ %c.sroa.294.18, %if.end466.if.end504_crit_edge ], [ 32, %if.end199.if.end504_crit_edge ], [ %sub478, %do.body476.if.end504_crit_edge ], [ %add497, %while.body487.if.end504_crit_edge ], [ %add497.1, %while.body487.1 ]
  %c.sroa.112.20 = phi i32 [ %c.sroa.112.18, %if.end466.if.end504_crit_edge ], [ %shl156, %if.end199.if.end504_crit_edge ], [ %c.sroa.112.18, %do.body476.if.end504_crit_edge ], [ %shl495, %while.body487.if.end504_crit_edge ], [ %shl495.1, %while.body487.1 ]
  %c.sroa.0.20 = phi ptr [ %c.sroa.0.18, %if.end466.if.end504_crit_edge ], [ %incdec.ptr154, %if.end199.if.end504_crit_edge ], [ %c.sroa.0.18, %do.body476.if.end504_crit_edge ], [ %incdec.ptr493, %while.body487.if.end504_crit_edge ], [ %incdec.ptr493.1, %while.body487.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div2)
  %cmp505329 = icmp sgt i32 %div2, 0
  br i1 %cmp505329, label %do.body507.lr.ph, label %if.end504.for.end1094_crit_edge

if.end504.for.end1094_crit_edge:                  ; preds = %if.end504
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end1094

do.body507.lr.ph:                                 ; preds = %if.end504
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pict_struct)
  %cmp680 = icmp ne i32 %pict_struct, 1
  %cond682 = zext i1 %cmp680 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %frame)
  %cmp708 = icmp eq i32 %frame, 3
  %width = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 33
  br label %do.body507

do.body507:                                       ; preds = %for.inc1093.do.body507_crit_edge, %do.body507.lr.ph
  %c.sroa.0.21334 = phi ptr [ %c.sroa.0.20, %do.body507.lr.ph ], [ %c.sroa.0.46, %for.inc1093.do.body507_crit_edge ]
  %c.sroa.112.21333 = phi i32 [ %c.sroa.112.20, %do.body507.lr.ph ], [ %c.sroa.112.46, %for.inc1093.do.body507_crit_edge ]
  %c.sroa.294.21332 = phi i32 [ %c.sroa.294.20, %do.body507.lr.ph ], [ %c.sroa.294.46, %for.inc1093.do.body507_crit_edge ]
  %c.sroa.516.21331 = phi i32 [ %c.sroa.516.20, %do.body507.lr.ph ], [ %c.sroa.516.46, %for.inc1093.do.body507_crit_edge ]
  %i.0330 = phi i32 [ 0, %do.body507.lr.ph ], [ %add537352, %for.inc1093.do.body507_crit_edge ]
  %sub509 = add nsw i32 %c.sroa.294.21332, -24
  %shl511 = shl nuw i32 1, %sub509
  %or513 = or i32 %shl511, %c.sroa.112.21333
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %c.sroa.294.21332)
  %cmp516152 = icmp slt i32 %c.sroa.294.21332, 49
  br i1 %cmp516152, label %do.body507.while.body518_crit_edge, label %do.body534

do.body507.while.body518_crit_edge:               ; preds = %do.body507
  br label %while.body518

while.body518:                                    ; preds = %while.body518.while.body518_crit_edge, %do.body507.while.body518_crit_edge
  %c.sroa.0.22156 = phi ptr [ %incdec.ptr524, %while.body518.while.body518_crit_edge ], [ %c.sroa.0.21334, %do.body507.while.body518_crit_edge ]
  %c.sroa.112.22155 = phi i32 [ %shl526, %while.body518.while.body518_crit_edge ], [ %or513, %do.body507.while.body518_crit_edge ]
  %c.sroa.294.22154 = phi i32 [ %add528, %while.body518.while.body518_crit_edge ], [ %sub509, %do.body507.while.body518_crit_edge ]
  %c.sroa.516.22153 = phi i32 [ %add530, %while.body518.while.body518_crit_edge ], [ %c.sroa.516.21331, %do.body507.while.body518_crit_edge ]
  %shr520 = lshr i32 %c.sroa.112.22155, 24
  %conv521 = trunc i32 %shr520 to i8
  %37 = ptrtoint ptr %c.sroa.0.22156 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv521, ptr %c.sroa.0.22156, align 1
  %incdec.ptr524 = getelementptr i8, ptr %c.sroa.0.22156, i32 1
  %shl526 = shl i32 %c.sroa.112.22155, 8
  %add528 = add nsw i32 %c.sroa.294.22154, 8
  %add530 = add i32 %c.sroa.516.22153, 8
  %cmp516 = icmp slt i32 %c.sroa.294.22154, 17
  br i1 %cmp516, label %while.body518.while.body518_crit_edge, label %do.body534.thread

while.body518.while.body518_crit_edge:            ; preds = %while.body518
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body518

do.body534.thread:                                ; preds = %while.body518
  call void @__sanitizer_cov_trace_pc() #12
  %add537345 = add nuw nsw i32 %i.0330, 1
  %shl539346 = shl i32 %add537345, %c.sroa.294.22154
  %or541347 = or i32 %shl539346, %shl526
  br label %while.body546.preheader

do.body534:                                       ; preds = %do.body507
  %sub536 = add nsw i32 %c.sroa.294.21332, -32
  %add537 = add nuw nsw i32 %i.0330, 1
  %shl539 = shl i32 %add537, %sub536
  %or541 = or i32 %shl539, %or513
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %sub509)
  %cmp544161 = icmp ult i32 %sub509, 33
  br i1 %cmp544161, label %do.body534.while.body546.preheader_crit_edge, label %do.body534.do.body562_crit_edge

do.body534.do.body562_crit_edge:                  ; preds = %do.body534
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body562

do.body534.while.body546.preheader_crit_edge:     ; preds = %do.body534
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body546.preheader

while.body546.preheader:                          ; preds = %do.body534.while.body546.preheader_crit_edge, %do.body534.thread
  %or541354 = phi i32 [ %or541347, %do.body534.thread ], [ %or541, %do.body534.while.body546.preheader_crit_edge ]
  %add537353 = phi i32 [ %add537345, %do.body534.thread ], [ %add537, %do.body534.while.body546.preheader_crit_edge ]
  %sub536351 = phi i32 [ %c.sroa.294.22154, %do.body534.thread ], [ %sub536, %do.body534.while.body546.preheader_crit_edge ]
  %c.sroa.0.22.lcssa350 = phi ptr [ %incdec.ptr524, %do.body534.thread ], [ %c.sroa.0.21334, %do.body534.while.body546.preheader_crit_edge ]
  %c.sroa.516.22.lcssa349 = phi i32 [ %add530, %do.body534.thread ], [ %c.sroa.516.21331, %do.body534.while.body546.preheader_crit_edge ]
  br label %while.body546

while.body546:                                    ; preds = %while.body546.while.body546_crit_edge, %while.body546.preheader
  %c.sroa.0.23165 = phi ptr [ %incdec.ptr552, %while.body546.while.body546_crit_edge ], [ %c.sroa.0.22.lcssa350, %while.body546.preheader ]
  %c.sroa.112.23164 = phi i32 [ %shl554, %while.body546.while.body546_crit_edge ], [ %or541354, %while.body546.preheader ]
  %c.sroa.294.23163 = phi i32 [ %add556, %while.body546.while.body546_crit_edge ], [ %sub536351, %while.body546.preheader ]
  %c.sroa.516.23162 = phi i32 [ %add558, %while.body546.while.body546_crit_edge ], [ %c.sroa.516.22.lcssa349, %while.body546.preheader ]
  %shr548 = lshr i32 %c.sroa.112.23164, 24
  %conv549 = trunc i32 %shr548 to i8
  %38 = ptrtoint ptr %c.sroa.0.23165 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv549, ptr %c.sroa.0.23165, align 1
  %incdec.ptr552 = getelementptr i8, ptr %c.sroa.0.23165, i32 1
  %shl554 = shl i32 %c.sroa.112.23164, 8
  %add556 = add nsw i32 %c.sroa.294.23163, 8
  %add558 = add i32 %c.sroa.516.23162, 8
  %cmp544 = icmp slt i32 %c.sroa.294.23163, 17
  br i1 %cmp544, label %while.body546.while.body546_crit_edge, label %while.body546.do.body562_crit_edge

while.body546.do.body562_crit_edge:               ; preds = %while.body546
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body562

while.body546.while.body546_crit_edge:            ; preds = %while.body546
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body546

do.body562:                                       ; preds = %while.body546.do.body562_crit_edge, %do.body534.do.body562_crit_edge
  %add537352 = phi i32 [ %add537, %do.body534.do.body562_crit_edge ], [ %add537353, %while.body546.do.body562_crit_edge ]
  %c.sroa.516.23.lcssa = phi i32 [ %c.sroa.516.21331, %do.body534.do.body562_crit_edge ], [ %add558, %while.body546.do.body562_crit_edge ]
  %c.sroa.294.23.lcssa = phi i32 [ %sub536, %do.body534.do.body562_crit_edge ], [ %add556, %while.body546.do.body562_crit_edge ]
  %c.sroa.112.23.lcssa = phi i32 [ %or541, %do.body534.do.body562_crit_edge ], [ %shl554, %while.body546.do.body562_crit_edge ]
  %c.sroa.0.23.lcssa = phi ptr [ %c.sroa.0.21334, %do.body534.do.body562_crit_edge ], [ %incdec.ptr552, %while.body546.do.body562_crit_edge ]
  %sub564 = add nsw i32 %c.sroa.294.23.lcssa, -6
  %shl566 = shl i32 2, %sub564
  %or568 = or i32 %shl566, %c.sroa.112.23.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %c.sroa.294.23.lcssa)
  %cmp571170 = icmp ult i32 %c.sroa.294.23.lcssa, 31
  br i1 %cmp571170, label %do.body562.while.body573_crit_edge, label %do.body562.do.body589_crit_edge

do.body562.do.body589_crit_edge:                  ; preds = %do.body562
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body589

do.body562.while.body573_crit_edge:               ; preds = %do.body562
  br label %while.body573

while.body573:                                    ; preds = %while.body573.while.body573_crit_edge, %do.body562.while.body573_crit_edge
  %c.sroa.0.24174 = phi ptr [ %incdec.ptr579, %while.body573.while.body573_crit_edge ], [ %c.sroa.0.23.lcssa, %do.body562.while.body573_crit_edge ]
  %c.sroa.112.24173 = phi i32 [ %shl581, %while.body573.while.body573_crit_edge ], [ %or568, %do.body562.while.body573_crit_edge ]
  %c.sroa.294.24172 = phi i32 [ %add583, %while.body573.while.body573_crit_edge ], [ %sub564, %do.body562.while.body573_crit_edge ]
  %c.sroa.516.24171 = phi i32 [ %add585, %while.body573.while.body573_crit_edge ], [ %c.sroa.516.23.lcssa, %do.body562.while.body573_crit_edge ]
  %shr575 = lshr i32 %c.sroa.112.24173, 24
  %conv576 = trunc i32 %shr575 to i8
  %39 = ptrtoint ptr %c.sroa.0.24174 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv576, ptr %c.sroa.0.24174, align 1
  %incdec.ptr579 = getelementptr i8, ptr %c.sroa.0.24174, i32 1
  %shl581 = shl i32 %c.sroa.112.24173, 8
  %add583 = add nsw i32 %c.sroa.294.24172, 8
  %add585 = add i32 %c.sroa.516.24171, 8
  %cmp571 = icmp slt i32 %c.sroa.294.24172, 17
  br i1 %cmp571, label %while.body573.while.body573_crit_edge, label %while.body573.do.body589_crit_edge

while.body573.do.body589_crit_edge:               ; preds = %while.body573
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body589

while.body573.while.body573_crit_edge:            ; preds = %while.body573
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body573

do.body589:                                       ; preds = %while.body573.do.body589_crit_edge, %do.body562.do.body589_crit_edge
  %c.sroa.516.24.lcssa = phi i32 [ %c.sroa.516.23.lcssa, %do.body562.do.body589_crit_edge ], [ %add585, %while.body573.do.body589_crit_edge ]
  %c.sroa.294.24.lcssa = phi i32 [ %sub564, %do.body562.do.body589_crit_edge ], [ %add583, %while.body573.do.body589_crit_edge ]
  %c.sroa.112.24.lcssa = phi i32 [ %or568, %do.body562.do.body589_crit_edge ], [ %shl581, %while.body573.do.body589_crit_edge ]
  %c.sroa.0.24.lcssa = phi ptr [ %c.sroa.0.23.lcssa, %do.body562.do.body589_crit_edge ], [ %incdec.ptr579, %while.body573.do.body589_crit_edge ]
  %sub591 = add nsw i32 %c.sroa.294.24.lcssa, -1
  %shl593 = shl nuw i32 1, %sub591
  %or595 = or i32 %shl593, %c.sroa.112.24.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub591)
  %cmp598179 = icmp ult i32 %sub591, 25
  br i1 %cmp598179, label %while.body600, label %do.body589.do.body616_crit_edge

do.body589.do.body616_crit_edge:                  ; preds = %do.body589
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body616

while.body600:                                    ; preds = %do.body589
  call void @__sanitizer_cov_trace_pc() #12
  %shr602 = lshr i32 %or595, 24
  %conv603 = trunc i32 %shr602 to i8
  %40 = ptrtoint ptr %c.sroa.0.24.lcssa to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv603, ptr %c.sroa.0.24.lcssa, align 1
  %incdec.ptr606 = getelementptr i8, ptr %c.sroa.0.24.lcssa, i32 1
  %shl608 = shl i32 %or595, 8
  %add612 = add i32 %c.sroa.516.24.lcssa, 8
  br label %do.body616

do.body616:                                       ; preds = %while.body600, %do.body589.do.body616_crit_edge
  %c.sroa.516.25.lcssa = phi i32 [ %add612, %while.body600 ], [ %c.sroa.516.24.lcssa, %do.body589.do.body616_crit_edge ]
  %c.sroa.294.25.lcssa = phi i32 [ 32, %while.body600 ], [ %sub591, %do.body589.do.body616_crit_edge ]
  %c.sroa.112.25.lcssa = phi i32 [ %shl608, %while.body600 ], [ %or595, %do.body589.do.body616_crit_edge ]
  %c.sroa.0.25.lcssa = phi ptr [ %incdec.ptr606, %while.body600 ], [ %c.sroa.0.24.lcssa, %do.body589.do.body616_crit_edge ]
  %sub618 = sub i32 %c.sroa.294.25.lcssa, %mb_len.0
  %shl620 = shl i32 %mb_code.0, %sub618
  %or622 = or i32 %shl620, %c.sroa.112.25.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub618)
  %cmp625187 = icmp slt i32 %sub618, 25
  br i1 %cmp625187, label %do.body616.while.body627_crit_edge, label %do.body616.do.end642_crit_edge

do.body616.do.end642_crit_edge:                   ; preds = %do.body616
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end642

do.body616.while.body627_crit_edge:               ; preds = %do.body616
  br label %while.body627

while.body627:                                    ; preds = %while.body627.while.body627_crit_edge, %do.body616.while.body627_crit_edge
  %c.sroa.0.26191 = phi ptr [ %incdec.ptr633, %while.body627.while.body627_crit_edge ], [ %c.sroa.0.25.lcssa, %do.body616.while.body627_crit_edge ]
  %c.sroa.112.26190 = phi i32 [ %shl635, %while.body627.while.body627_crit_edge ], [ %or622, %do.body616.while.body627_crit_edge ]
  %c.sroa.294.26189 = phi i32 [ %add637, %while.body627.while.body627_crit_edge ], [ %sub618, %do.body616.while.body627_crit_edge ]
  %c.sroa.516.26188 = phi i32 [ %add639, %while.body627.while.body627_crit_edge ], [ %c.sroa.516.25.lcssa, %do.body616.while.body627_crit_edge ]
  %shr629 = lshr i32 %c.sroa.112.26190, 24
  %conv630 = trunc i32 %shr629 to i8
  %41 = ptrtoint ptr %c.sroa.0.26191 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv630, ptr %c.sroa.0.26191, align 1
  %incdec.ptr633 = getelementptr i8, ptr %c.sroa.0.26191, i32 1
  %shl635 = shl i32 %c.sroa.112.26190, 8
  %add637 = add nsw i32 %c.sroa.294.26189, 8
  %add639 = add i32 %c.sroa.516.26188, 8
  %cmp625 = icmp slt i32 %c.sroa.294.26189, 17
  br i1 %cmp625, label %while.body627.while.body627_crit_edge, label %while.body627.do.end642_crit_edge

while.body627.do.end642_crit_edge:                ; preds = %while.body627
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end642

while.body627.while.body627_crit_edge:            ; preds = %while.body627
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body627

do.end642:                                        ; preds = %while.body627.do.end642_crit_edge, %do.body616.do.end642_crit_edge
  %c.sroa.516.26.lcssa = phi i32 [ %c.sroa.516.25.lcssa, %do.body616.do.end642_crit_edge ], [ %add639, %while.body627.do.end642_crit_edge ]
  %c.sroa.294.26.lcssa = phi i32 [ %sub618, %do.body616.do.end642_crit_edge ], [ %add637, %while.body627.do.end642_crit_edge ]
  %c.sroa.112.26.lcssa = phi i32 [ %or622, %do.body616.do.end642_crit_edge ], [ %shl635, %while.body627.do.end642_crit_edge ]
  %c.sroa.0.26.lcssa = phi ptr [ %c.sroa.0.25.lcssa, %do.body616.do.end642_crit_edge ], [ %incdec.ptr633, %while.body627.do.end642_crit_edge ]
  %42 = ptrtoint ptr %interlace_coding to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load644 = load i8, ptr %interlace_coding, align 8
  %43 = and i8 %bf.load644, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool648.not = icmp eq i8 %43, 0
  br i1 %tobool648.not, label %do.end642.if.end707_crit_edge, label %do.body650

do.end642.if.end707_crit_edge:                    ; preds = %do.end642
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end707

do.body650:                                       ; preds = %do.end642
  %sub652 = add nsw i32 %c.sroa.294.26.lcssa, -2
  %shl654 = shl nuw i32 1, %sub652
  %or656 = or i32 %shl654, %c.sroa.112.26.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %c.sroa.294.26.lcssa)
  %cmp659196 = icmp ult i32 %c.sroa.294.26.lcssa, 27
  br i1 %cmp659196, label %do.body650.while.body661_crit_edge, label %do.body650.do.body677_crit_edge

do.body650.do.body677_crit_edge:                  ; preds = %do.body650
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body677

do.body650.while.body661_crit_edge:               ; preds = %do.body650
  br label %while.body661

while.body661:                                    ; preds = %while.body661.while.body661_crit_edge, %do.body650.while.body661_crit_edge
  %c.sroa.0.27200 = phi ptr [ %incdec.ptr667, %while.body661.while.body661_crit_edge ], [ %c.sroa.0.26.lcssa, %do.body650.while.body661_crit_edge ]
  %c.sroa.112.27199 = phi i32 [ %shl669, %while.body661.while.body661_crit_edge ], [ %or656, %do.body650.while.body661_crit_edge ]
  %c.sroa.294.27198 = phi i32 [ %add671, %while.body661.while.body661_crit_edge ], [ %sub652, %do.body650.while.body661_crit_edge ]
  %c.sroa.516.27197 = phi i32 [ %add673, %while.body661.while.body661_crit_edge ], [ %c.sroa.516.26.lcssa, %do.body650.while.body661_crit_edge ]
  %shr663 = lshr i32 %c.sroa.112.27199, 24
  %conv664 = trunc i32 %shr663 to i8
  %44 = ptrtoint ptr %c.sroa.0.27200 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv664, ptr %c.sroa.0.27200, align 1
  %incdec.ptr667 = getelementptr i8, ptr %c.sroa.0.27200, i32 1
  %shl669 = shl i32 %c.sroa.112.27199, 8
  %add671 = add nsw i32 %c.sroa.294.27198, 8
  %add673 = add i32 %c.sroa.516.27197, 8
  %cmp659 = icmp slt i32 %c.sroa.294.27198, 17
  br i1 %cmp659, label %while.body661.while.body661_crit_edge, label %while.body661.do.body677_crit_edge

while.body661.do.body677_crit_edge:               ; preds = %while.body661
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body677

while.body661.while.body661_crit_edge:            ; preds = %while.body661
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body661

do.body677:                                       ; preds = %while.body661.do.body677_crit_edge, %do.body650.do.body677_crit_edge
  %c.sroa.516.27.lcssa = phi i32 [ %c.sroa.516.26.lcssa, %do.body650.do.body677_crit_edge ], [ %add673, %while.body661.do.body677_crit_edge ]
  %c.sroa.294.27.lcssa = phi i32 [ %sub652, %do.body650.do.body677_crit_edge ], [ %add671, %while.body661.do.body677_crit_edge ]
  %c.sroa.112.27.lcssa = phi i32 [ %or656, %do.body650.do.body677_crit_edge ], [ %shl669, %while.body661.do.body677_crit_edge ]
  %c.sroa.0.27.lcssa = phi ptr [ %c.sroa.0.26.lcssa, %do.body650.do.body677_crit_edge ], [ %incdec.ptr667, %while.body661.do.body677_crit_edge ]
  %sub679 = add nsw i32 %c.sroa.294.27.lcssa, -1
  %shl684 = shl nuw i32 %cond682, %sub679
  %or686 = or i32 %shl684, %c.sroa.112.27.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub679)
  %cmp689205 = icmp ult i32 %sub679, 25
  br i1 %cmp689205, label %if.end707.thread, label %do.body677.if.end707_crit_edge

do.body677.if.end707_crit_edge:                   ; preds = %do.body677
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end707

if.end707:                                        ; preds = %do.body677.if.end707_crit_edge, %do.end642.if.end707_crit_edge
  %c.sroa.516.29 = phi i32 [ %c.sroa.516.26.lcssa, %do.end642.if.end707_crit_edge ], [ %c.sroa.516.27.lcssa, %do.body677.if.end707_crit_edge ]
  %c.sroa.294.29 = phi i32 [ %c.sroa.294.26.lcssa, %do.end642.if.end707_crit_edge ], [ %sub679, %do.body677.if.end707_crit_edge ]
  %c.sroa.112.29 = phi i32 [ %c.sroa.112.26.lcssa, %do.end642.if.end707_crit_edge ], [ %or686, %do.body677.if.end707_crit_edge ]
  %c.sroa.0.29 = phi ptr [ %c.sroa.0.26.lcssa, %do.end642.if.end707_crit_edge ], [ %c.sroa.0.27.lcssa, %do.body677.if.end707_crit_edge ]
  br i1 %cmp708, label %do.body711, label %if.end707.do.body777_crit_edge

if.end707.do.body777_crit_edge:                   ; preds = %if.end707
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body777

if.end707.thread:                                 ; preds = %do.body677
  %shr693 = lshr i32 %or686, 24
  %conv694 = trunc i32 %shr693 to i8
  %45 = ptrtoint ptr %c.sroa.0.27.lcssa to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv694, ptr %c.sroa.0.27.lcssa, align 1
  %incdec.ptr697 = getelementptr i8, ptr %c.sroa.0.27.lcssa, i32 1
  %shl699 = shl i32 %or686, 8
  %add703 = add i32 %c.sroa.516.27.lcssa, 8
  br i1 %cmp708, label %do.body711.thread, label %if.end707.thread.do.body777.thread_crit_edge

if.end707.thread.do.body777.thread_crit_edge:     ; preds = %if.end707.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body777.thread

do.body711.thread:                                ; preds = %if.end707.thread
  call void @__sanitizer_cov_trace_pc() #12
  %or717369 = or i32 %shl699, -1073741824
  br label %do.end737

do.body711:                                       ; preds = %if.end707
  %sub713 = add nsw i32 %c.sroa.294.29, -2
  %shl715 = shl i32 3, %sub713
  %or717 = or i32 %shl715, %c.sroa.112.29
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %c.sroa.294.29)
  %cmp720213 = icmp ult i32 %c.sroa.294.29, 27
  br i1 %cmp720213, label %do.body711.while.body722_crit_edge, label %do.body711.do.end737_crit_edge

do.body711.do.end737_crit_edge:                   ; preds = %do.body711
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end737

do.body711.while.body722_crit_edge:               ; preds = %do.body711
  br label %while.body722

while.body722:                                    ; preds = %while.body722.while.body722_crit_edge, %do.body711.while.body722_crit_edge
  %c.sroa.0.30217 = phi ptr [ %incdec.ptr728, %while.body722.while.body722_crit_edge ], [ %c.sroa.0.29, %do.body711.while.body722_crit_edge ]
  %c.sroa.112.30216 = phi i32 [ %shl730, %while.body722.while.body722_crit_edge ], [ %or717, %do.body711.while.body722_crit_edge ]
  %c.sroa.294.30215 = phi i32 [ %add732, %while.body722.while.body722_crit_edge ], [ %sub713, %do.body711.while.body722_crit_edge ]
  %c.sroa.516.30214 = phi i32 [ %add734, %while.body722.while.body722_crit_edge ], [ %c.sroa.516.29, %do.body711.while.body722_crit_edge ]
  %shr724 = lshr i32 %c.sroa.112.30216, 24
  %conv725 = trunc i32 %shr724 to i8
  %46 = ptrtoint ptr %c.sroa.0.30217 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv725, ptr %c.sroa.0.30217, align 1
  %incdec.ptr728 = getelementptr i8, ptr %c.sroa.0.30217, i32 1
  %shl730 = shl i32 %c.sroa.112.30216, 8
  %add732 = add nsw i32 %c.sroa.294.30215, 8
  %add734 = add i32 %c.sroa.516.30214, 8
  %cmp720 = icmp slt i32 %c.sroa.294.30215, 17
  br i1 %cmp720, label %while.body722.while.body722_crit_edge, label %while.body722.do.end737_crit_edge

while.body722.do.end737_crit_edge:                ; preds = %while.body722
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end737

while.body722.while.body722_crit_edge:            ; preds = %while.body722
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body722

do.end737:                                        ; preds = %while.body722.do.end737_crit_edge, %do.body711.do.end737_crit_edge, %do.body711.thread
  %c.sroa.516.30.lcssa = phi i32 [ %c.sroa.516.29, %do.body711.do.end737_crit_edge ], [ %add703, %do.body711.thread ], [ %add734, %while.body722.do.end737_crit_edge ]
  %c.sroa.294.30.lcssa = phi i32 [ %sub713, %do.body711.do.end737_crit_edge ], [ 30, %do.body711.thread ], [ %add732, %while.body722.do.end737_crit_edge ]
  %c.sroa.112.30.lcssa = phi i32 [ %or717, %do.body711.do.end737_crit_edge ], [ %or717369, %do.body711.thread ], [ %shl730, %while.body722.do.end737_crit_edge ]
  %c.sroa.0.30.lcssa = phi ptr [ %c.sroa.0.29, %do.body711.do.end737_crit_edge ], [ %incdec.ptr697, %do.body711.thread ], [ %incdec.ptr728, %while.body722.do.end737_crit_edge ]
  %47 = ptrtoint ptr %interlace_coding to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load739 = load i8, ptr %interlace_coding, align 8
  %48 = and i8 %bf.load739, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool743.not = icmp eq i8 %48, 0
  br i1 %tobool743.not, label %do.end737.do.body777_crit_edge, label %do.body745

do.end737.do.body777_crit_edge:                   ; preds = %do.end737
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body777

do.body745:                                       ; preds = %do.end737
  %sub747 = add nsw i32 %c.sroa.294.30.lcssa, -1
  %shl752 = shl nuw i32 %cond682, %sub747
  %or754 = or i32 %shl752, %c.sroa.112.30.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub747)
  %cmp757222 = icmp ult i32 %sub747, 25
  br i1 %cmp757222, label %while.body759, label %do.body745.do.body777_crit_edge

do.body745.do.body777_crit_edge:                  ; preds = %do.body745
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body777

while.body759:                                    ; preds = %do.body745
  call void @__sanitizer_cov_trace_pc() #12
  %shr761 = lshr i32 %or754, 24
  %conv762 = trunc i32 %shr761 to i8
  %49 = ptrtoint ptr %c.sroa.0.30.lcssa to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv762, ptr %c.sroa.0.30.lcssa, align 1
  %incdec.ptr765 = getelementptr i8, ptr %c.sroa.0.30.lcssa, i32 1
  %shl767 = shl i32 %or754, 8
  %add771 = add i32 %c.sroa.516.30.lcssa, 8
  br label %do.body777.thread

do.body777.thread:                                ; preds = %while.body759, %if.end707.thread.do.body777.thread_crit_edge
  %c.sroa.516.32.ph = phi i32 [ %add703, %if.end707.thread.do.body777.thread_crit_edge ], [ %add771, %while.body759 ]
  %c.sroa.112.32.ph = phi i32 [ %shl699, %if.end707.thread.do.body777.thread_crit_edge ], [ %shl767, %while.body759 ]
  %c.sroa.0.32.ph = phi ptr [ %incdec.ptr697, %if.end707.thread.do.body777.thread_crit_edge ], [ %incdec.ptr765, %while.body759 ]
  %or783377 = or i32 %c.sroa.112.32.ph, -1073741824
  br label %do.end803

do.body777:                                       ; preds = %do.body745.do.body777_crit_edge, %do.end737.do.body777_crit_edge, %if.end707.do.body777_crit_edge
  %c.sroa.516.32 = phi i32 [ %c.sroa.516.30.lcssa, %do.end737.do.body777_crit_edge ], [ %c.sroa.516.29, %if.end707.do.body777_crit_edge ], [ %c.sroa.516.30.lcssa, %do.body745.do.body777_crit_edge ]
  %c.sroa.294.32 = phi i32 [ %c.sroa.294.30.lcssa, %do.end737.do.body777_crit_edge ], [ %c.sroa.294.29, %if.end707.do.body777_crit_edge ], [ %sub747, %do.body745.do.body777_crit_edge ]
  %c.sroa.112.32 = phi i32 [ %c.sroa.112.30.lcssa, %do.end737.do.body777_crit_edge ], [ %c.sroa.112.29, %if.end707.do.body777_crit_edge ], [ %or754, %do.body745.do.body777_crit_edge ]
  %c.sroa.0.32 = phi ptr [ %c.sroa.0.30.lcssa, %do.end737.do.body777_crit_edge ], [ %c.sroa.0.29, %if.end707.do.body777_crit_edge ], [ %c.sroa.0.30.lcssa, %do.body745.do.body777_crit_edge ]
  %sub779 = add nsw i32 %c.sroa.294.32, -2
  %shl781 = shl i32 3, %sub779
  %or783 = or i32 %shl781, %c.sroa.112.32
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %c.sroa.294.32)
  %cmp786230 = icmp ult i32 %c.sroa.294.32, 27
  br i1 %cmp786230, label %do.body777.while.body788_crit_edge, label %do.body777.do.end803_crit_edge

do.body777.do.end803_crit_edge:                   ; preds = %do.body777
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end803

do.body777.while.body788_crit_edge:               ; preds = %do.body777
  br label %while.body788

while.body788:                                    ; preds = %while.body788.while.body788_crit_edge, %do.body777.while.body788_crit_edge
  %c.sroa.0.33234 = phi ptr [ %incdec.ptr794, %while.body788.while.body788_crit_edge ], [ %c.sroa.0.32, %do.body777.while.body788_crit_edge ]
  %c.sroa.112.33233 = phi i32 [ %shl796, %while.body788.while.body788_crit_edge ], [ %or783, %do.body777.while.body788_crit_edge ]
  %c.sroa.294.33232 = phi i32 [ %add798, %while.body788.while.body788_crit_edge ], [ %sub779, %do.body777.while.body788_crit_edge ]
  %c.sroa.516.33231 = phi i32 [ %add800, %while.body788.while.body788_crit_edge ], [ %c.sroa.516.32, %do.body777.while.body788_crit_edge ]
  %shr790 = lshr i32 %c.sroa.112.33233, 24
  %conv791 = trunc i32 %shr790 to i8
  %50 = ptrtoint ptr %c.sroa.0.33234 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv791, ptr %c.sroa.0.33234, align 1
  %incdec.ptr794 = getelementptr i8, ptr %c.sroa.0.33234, i32 1
  %shl796 = shl i32 %c.sroa.112.33233, 8
  %add798 = add nsw i32 %c.sroa.294.33232, 8
  %add800 = add i32 %c.sroa.516.33231, 8
  %cmp786 = icmp slt i32 %c.sroa.294.33232, 17
  br i1 %cmp786, label %while.body788.while.body788_crit_edge, label %while.body788.do.end803_crit_edge

while.body788.do.end803_crit_edge:                ; preds = %while.body788
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end803

while.body788.while.body788_crit_edge:            ; preds = %while.body788
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body788

do.end803:                                        ; preds = %while.body788.do.end803_crit_edge, %do.body777.do.end803_crit_edge, %do.body777.thread
  %c.sroa.516.33.lcssa = phi i32 [ %c.sroa.516.32, %do.body777.do.end803_crit_edge ], [ %c.sroa.516.32.ph, %do.body777.thread ], [ %add800, %while.body788.do.end803_crit_edge ]
  %c.sroa.294.33.lcssa = phi i32 [ %sub779, %do.body777.do.end803_crit_edge ], [ 30, %do.body777.thread ], [ %add798, %while.body788.do.end803_crit_edge ]
  %c.sroa.112.33.lcssa = phi i32 [ %or783, %do.body777.do.end803_crit_edge ], [ %or783377, %do.body777.thread ], [ %shl796, %while.body788.do.end803_crit_edge ]
  %c.sroa.0.33.lcssa = phi ptr [ %c.sroa.0.32, %do.body777.do.end803_crit_edge ], [ %c.sroa.0.32.ph, %do.body777.thread ], [ %incdec.ptr794, %while.body788.do.end803_crit_edge ]
  %51 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %width, align 4
  %shr804 = ashr i32 %52, 4
  %sub805 = add nsw i32 %shr804, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 559, i32 %52)
  %cmp807248 = icmp sgt i32 %52, 559
  br i1 %cmp807248, label %do.end803.do.body810_crit_edge, label %do.end803.do.body838_crit_edge

do.end803.do.body838_crit_edge:                   ; preds = %do.end803
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body838

do.end803.do.body810_crit_edge:                   ; preds = %do.end803
  br label %do.body810

do.body810:                                       ; preds = %for.inc.do.body810_crit_edge, %do.end803.do.body810_crit_edge
  %c.sroa.0.34253 = phi ptr [ %c.sroa.0.35.lcssa, %for.inc.do.body810_crit_edge ], [ %c.sroa.0.33.lcssa, %do.end803.do.body810_crit_edge ]
  %c.sroa.112.34252 = phi i32 [ %c.sroa.112.35.lcssa, %for.inc.do.body810_crit_edge ], [ %c.sroa.112.33.lcssa, %do.end803.do.body810_crit_edge ]
  %c.sroa.294.34251 = phi i32 [ %c.sroa.294.35.lcssa, %for.inc.do.body810_crit_edge ], [ %c.sroa.294.33.lcssa, %do.end803.do.body810_crit_edge ]
  %c.sroa.516.34250 = phi i32 [ %c.sroa.516.35.lcssa, %for.inc.do.body810_crit_edge ], [ %c.sroa.516.33.lcssa, %do.end803.do.body810_crit_edge ]
  %j.0249 = phi i32 [ %sub837, %for.inc.do.body810_crit_edge ], [ %sub805, %do.end803.do.body810_crit_edge ]
  %sub812 = add i32 %c.sroa.294.34251, -11
  %shl814 = shl i32 8, %sub812
  %or816 = or i32 %shl814, %c.sroa.112.34252
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub812)
  %cmp819239 = icmp slt i32 %sub812, 25
  br i1 %cmp819239, label %do.body810.while.body821_crit_edge, label %do.body810.for.inc_crit_edge

do.body810.for.inc_crit_edge:                     ; preds = %do.body810
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body810.while.body821_crit_edge:               ; preds = %do.body810
  br label %while.body821

while.body821:                                    ; preds = %while.body821.while.body821_crit_edge, %do.body810.while.body821_crit_edge
  %c.sroa.0.35243 = phi ptr [ %incdec.ptr827, %while.body821.while.body821_crit_edge ], [ %c.sroa.0.34253, %do.body810.while.body821_crit_edge ]
  %c.sroa.112.35242 = phi i32 [ %shl829, %while.body821.while.body821_crit_edge ], [ %or816, %do.body810.while.body821_crit_edge ]
  %c.sroa.294.35241 = phi i32 [ %add831, %while.body821.while.body821_crit_edge ], [ %sub812, %do.body810.while.body821_crit_edge ]
  %c.sroa.516.35240 = phi i32 [ %add833, %while.body821.while.body821_crit_edge ], [ %c.sroa.516.34250, %do.body810.while.body821_crit_edge ]
  %shr823 = lshr i32 %c.sroa.112.35242, 24
  %conv824 = trunc i32 %shr823 to i8
  %53 = ptrtoint ptr %c.sroa.0.35243 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv824, ptr %c.sroa.0.35243, align 1
  %incdec.ptr827 = getelementptr i8, ptr %c.sroa.0.35243, i32 1
  %shl829 = shl i32 %c.sroa.112.35242, 8
  %add831 = add nsw i32 %c.sroa.294.35241, 8
  %add833 = add i32 %c.sroa.516.35240, 8
  %cmp819 = icmp slt i32 %c.sroa.294.35241, 17
  br i1 %cmp819, label %while.body821.while.body821_crit_edge, label %while.body821.for.inc_crit_edge

while.body821.for.inc_crit_edge:                  ; preds = %while.body821
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.body821.while.body821_crit_edge:            ; preds = %while.body821
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body821

for.inc:                                          ; preds = %while.body821.for.inc_crit_edge, %do.body810.for.inc_crit_edge
  %c.sroa.516.35.lcssa = phi i32 [ %c.sroa.516.34250, %do.body810.for.inc_crit_edge ], [ %add833, %while.body821.for.inc_crit_edge ]
  %c.sroa.294.35.lcssa = phi i32 [ %sub812, %do.body810.for.inc_crit_edge ], [ %add831, %while.body821.for.inc_crit_edge ]
  %c.sroa.112.35.lcssa = phi i32 [ %or816, %do.body810.for.inc_crit_edge ], [ %shl829, %while.body821.for.inc_crit_edge ]
  %c.sroa.0.35.lcssa = phi ptr [ %c.sroa.0.34253, %do.body810.for.inc_crit_edge ], [ %incdec.ptr827, %while.body821.for.inc_crit_edge ]
  %sub837 = add nsw i32 %j.0249, -33
  %cmp807 = icmp sgt i32 %j.0249, 65
  br i1 %cmp807, label %for.inc.do.body810_crit_edge, label %for.inc.do.body838_crit_edge

for.inc.do.body838_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body838

for.inc.do.body810_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body810

do.body838:                                       ; preds = %for.inc.do.body838_crit_edge, %do.end803.do.body838_crit_edge
  %j.0.lcssa = phi i32 [ %sub805, %do.end803.do.body838_crit_edge ], [ %sub837, %for.inc.do.body838_crit_edge ]
  %c.sroa.516.34.lcssa = phi i32 [ %c.sroa.516.33.lcssa, %do.end803.do.body838_crit_edge ], [ %c.sroa.516.35.lcssa, %for.inc.do.body838_crit_edge ]
  %c.sroa.294.34.lcssa = phi i32 [ %c.sroa.294.33.lcssa, %do.end803.do.body838_crit_edge ], [ %c.sroa.294.35.lcssa, %for.inc.do.body838_crit_edge ]
  %c.sroa.112.34.lcssa = phi i32 [ %c.sroa.112.33.lcssa, %do.end803.do.body838_crit_edge ], [ %c.sroa.112.35.lcssa, %for.inc.do.body838_crit_edge ]
  %c.sroa.0.34.lcssa = phi ptr [ %c.sroa.0.33.lcssa, %do.end803.do.body838_crit_edge ], [ %c.sroa.0.35.lcssa, %for.inc.do.body838_crit_edge ]
  %arrayidx = getelementptr [33 x [2 x i32]], ptr @addrinctab, i32 0, i32 %j.0.lcssa
  %arrayidx839 = getelementptr [33 x [2 x i32]], ptr @addrinctab, i32 0, i32 %j.0.lcssa, i32 1
  %54 = ptrtoint ptr %arrayidx839 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx839, align 4
  %sub841 = sub i32 %c.sroa.294.34.lcssa, %55
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx, align 4
  %shl845 = shl i32 %57, %sub841
  %or847 = or i32 %shl845, %c.sroa.112.34.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub841)
  %cmp850259 = icmp slt i32 %sub841, 25
  br i1 %cmp850259, label %do.body838.while.body852_crit_edge, label %do.body838.do.body868_crit_edge

do.body838.do.body868_crit_edge:                  ; preds = %do.body838
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body868

do.body838.while.body852_crit_edge:               ; preds = %do.body838
  br label %while.body852

while.body852:                                    ; preds = %while.body852.while.body852_crit_edge, %do.body838.while.body852_crit_edge
  %c.sroa.0.36263 = phi ptr [ %incdec.ptr858, %while.body852.while.body852_crit_edge ], [ %c.sroa.0.34.lcssa, %do.body838.while.body852_crit_edge ]
  %c.sroa.112.36262 = phi i32 [ %shl860, %while.body852.while.body852_crit_edge ], [ %or847, %do.body838.while.body852_crit_edge ]
  %c.sroa.294.36261 = phi i32 [ %add862, %while.body852.while.body852_crit_edge ], [ %sub841, %do.body838.while.body852_crit_edge ]
  %c.sroa.516.36260 = phi i32 [ %add864, %while.body852.while.body852_crit_edge ], [ %c.sroa.516.34.lcssa, %do.body838.while.body852_crit_edge ]
  %shr854 = lshr i32 %c.sroa.112.36262, 24
  %conv855 = trunc i32 %shr854 to i8
  %58 = ptrtoint ptr %c.sroa.0.36263 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv855, ptr %c.sroa.0.36263, align 1
  %incdec.ptr858 = getelementptr i8, ptr %c.sroa.0.36263, i32 1
  %shl860 = shl i32 %c.sroa.112.36262, 8
  %add862 = add nsw i32 %c.sroa.294.36261, 8
  %add864 = add i32 %c.sroa.516.36260, 8
  %cmp850 = icmp slt i32 %c.sroa.294.36261, 17
  br i1 %cmp850, label %while.body852.while.body852_crit_edge, label %while.body852.do.body868_crit_edge

while.body852.do.body868_crit_edge:               ; preds = %while.body852
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body868

while.body852.while.body852_crit_edge:            ; preds = %while.body852
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body852

do.body868:                                       ; preds = %while.body852.do.body868_crit_edge, %do.body838.do.body868_crit_edge
  %c.sroa.516.36.lcssa = phi i32 [ %c.sroa.516.34.lcssa, %do.body838.do.body868_crit_edge ], [ %add864, %while.body852.do.body868_crit_edge ]
  %c.sroa.294.36.lcssa = phi i32 [ %sub841, %do.body838.do.body868_crit_edge ], [ %add862, %while.body852.do.body868_crit_edge ]
  %c.sroa.112.36.lcssa = phi i32 [ %or847, %do.body838.do.body868_crit_edge ], [ %shl860, %while.body852.do.body868_crit_edge ]
  %c.sroa.0.36.lcssa = phi ptr [ %c.sroa.0.34.lcssa, %do.body838.do.body868_crit_edge ], [ %incdec.ptr858, %while.body852.do.body868_crit_edge ]
  %sub870 = sub i32 %c.sroa.294.36.lcssa, %mb_len.0
  %shl872 = shl i32 %mb_code.0, %sub870
  %or874 = or i32 %shl872, %c.sroa.112.36.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub870)
  %cmp877268 = icmp slt i32 %sub870, 25
  br i1 %cmp877268, label %do.body868.while.body879_crit_edge, label %do.body868.do.end894_crit_edge

do.body868.do.end894_crit_edge:                   ; preds = %do.body868
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end894

do.body868.while.body879_crit_edge:               ; preds = %do.body868
  br label %while.body879

while.body879:                                    ; preds = %while.body879.while.body879_crit_edge, %do.body868.while.body879_crit_edge
  %c.sroa.0.37272 = phi ptr [ %incdec.ptr885, %while.body879.while.body879_crit_edge ], [ %c.sroa.0.36.lcssa, %do.body868.while.body879_crit_edge ]
  %c.sroa.112.37271 = phi i32 [ %shl887, %while.body879.while.body879_crit_edge ], [ %or874, %do.body868.while.body879_crit_edge ]
  %c.sroa.294.37270 = phi i32 [ %add889, %while.body879.while.body879_crit_edge ], [ %sub870, %do.body868.while.body879_crit_edge ]
  %c.sroa.516.37269 = phi i32 [ %add891, %while.body879.while.body879_crit_edge ], [ %c.sroa.516.36.lcssa, %do.body868.while.body879_crit_edge ]
  %shr881 = lshr i32 %c.sroa.112.37271, 24
  %conv882 = trunc i32 %shr881 to i8
  %59 = ptrtoint ptr %c.sroa.0.37272 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv882, ptr %c.sroa.0.37272, align 1
  %incdec.ptr885 = getelementptr i8, ptr %c.sroa.0.37272, i32 1
  %shl887 = shl i32 %c.sroa.112.37271, 8
  %add889 = add nsw i32 %c.sroa.294.37270, 8
  %add891 = add i32 %c.sroa.516.37269, 8
  %cmp877 = icmp slt i32 %c.sroa.294.37270, 17
  br i1 %cmp877, label %while.body879.while.body879_crit_edge, label %while.body879.do.end894_crit_edge

while.body879.do.end894_crit_edge:                ; preds = %while.body879
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end894

while.body879.while.body879_crit_edge:            ; preds = %while.body879
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body879

do.end894:                                        ; preds = %while.body879.do.end894_crit_edge, %do.body868.do.end894_crit_edge
  %c.sroa.516.37.lcssa = phi i32 [ %c.sroa.516.36.lcssa, %do.body868.do.end894_crit_edge ], [ %add891, %while.body879.do.end894_crit_edge ]
  %c.sroa.294.37.lcssa = phi i32 [ %sub870, %do.body868.do.end894_crit_edge ], [ %add889, %while.body879.do.end894_crit_edge ]
  %c.sroa.112.37.lcssa = phi i32 [ %or874, %do.body868.do.end894_crit_edge ], [ %shl887, %while.body879.do.end894_crit_edge ]
  %c.sroa.0.37.lcssa = phi ptr [ %c.sroa.0.36.lcssa, %do.body868.do.end894_crit_edge ], [ %incdec.ptr885, %while.body879.do.end894_crit_edge ]
  %60 = ptrtoint ptr %interlace_coding to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load896 = load i8, ptr %interlace_coding, align 8
  %61 = and i8 %bf.load896, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool900.not = icmp eq i8 %61, 0
  br i1 %tobool900.not, label %do.end894.if.end959_crit_edge, label %do.body902

do.end894.if.end959_crit_edge:                    ; preds = %do.end894
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end959

do.body902:                                       ; preds = %do.end894
  %sub904 = add nsw i32 %c.sroa.294.37.lcssa, -2
  %shl906 = shl nuw i32 1, %sub904
  %or908 = or i32 %shl906, %c.sroa.112.37.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %c.sroa.294.37.lcssa)
  %cmp911277 = icmp ult i32 %c.sroa.294.37.lcssa, 27
  br i1 %cmp911277, label %do.body902.while.body913_crit_edge, label %do.body902.do.body929_crit_edge

do.body902.do.body929_crit_edge:                  ; preds = %do.body902
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body929

do.body902.while.body913_crit_edge:               ; preds = %do.body902
  br label %while.body913

while.body913:                                    ; preds = %while.body913.while.body913_crit_edge, %do.body902.while.body913_crit_edge
  %c.sroa.0.38281 = phi ptr [ %incdec.ptr919, %while.body913.while.body913_crit_edge ], [ %c.sroa.0.37.lcssa, %do.body902.while.body913_crit_edge ]
  %c.sroa.112.38280 = phi i32 [ %shl921, %while.body913.while.body913_crit_edge ], [ %or908, %do.body902.while.body913_crit_edge ]
  %c.sroa.294.38279 = phi i32 [ %add923, %while.body913.while.body913_crit_edge ], [ %sub904, %do.body902.while.body913_crit_edge ]
  %c.sroa.516.38278 = phi i32 [ %add925, %while.body913.while.body913_crit_edge ], [ %c.sroa.516.37.lcssa, %do.body902.while.body913_crit_edge ]
  %shr915 = lshr i32 %c.sroa.112.38280, 24
  %conv916 = trunc i32 %shr915 to i8
  %62 = ptrtoint ptr %c.sroa.0.38281 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv916, ptr %c.sroa.0.38281, align 1
  %incdec.ptr919 = getelementptr i8, ptr %c.sroa.0.38281, i32 1
  %shl921 = shl i32 %c.sroa.112.38280, 8
  %add923 = add nsw i32 %c.sroa.294.38279, 8
  %add925 = add i32 %c.sroa.516.38278, 8
  %cmp911 = icmp slt i32 %c.sroa.294.38279, 17
  br i1 %cmp911, label %while.body913.while.body913_crit_edge, label %while.body913.do.body929_crit_edge

while.body913.do.body929_crit_edge:               ; preds = %while.body913
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body929

while.body913.while.body913_crit_edge:            ; preds = %while.body913
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body913

do.body929:                                       ; preds = %while.body913.do.body929_crit_edge, %do.body902.do.body929_crit_edge
  %c.sroa.516.38.lcssa = phi i32 [ %c.sroa.516.37.lcssa, %do.body902.do.body929_crit_edge ], [ %add925, %while.body913.do.body929_crit_edge ]
  %c.sroa.294.38.lcssa = phi i32 [ %sub904, %do.body902.do.body929_crit_edge ], [ %add923, %while.body913.do.body929_crit_edge ]
  %c.sroa.112.38.lcssa = phi i32 [ %or908, %do.body902.do.body929_crit_edge ], [ %shl921, %while.body913.do.body929_crit_edge ]
  %c.sroa.0.38.lcssa = phi ptr [ %c.sroa.0.37.lcssa, %do.body902.do.body929_crit_edge ], [ %incdec.ptr919, %while.body913.do.body929_crit_edge ]
  %sub931 = add nsw i32 %c.sroa.294.38.lcssa, -1
  %shl936 = shl nuw i32 %cond682, %sub931
  %or938 = or i32 %shl936, %c.sroa.112.38.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub931)
  %cmp941286 = icmp ult i32 %sub931, 25
  br i1 %cmp941286, label %if.end959.thread, label %do.body929.if.end959_crit_edge

do.body929.if.end959_crit_edge:                   ; preds = %do.body929
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end959

if.end959:                                        ; preds = %do.body929.if.end959_crit_edge, %do.end894.if.end959_crit_edge
  %c.sroa.516.40 = phi i32 [ %c.sroa.516.37.lcssa, %do.end894.if.end959_crit_edge ], [ %c.sroa.516.38.lcssa, %do.body929.if.end959_crit_edge ]
  %c.sroa.294.40 = phi i32 [ %c.sroa.294.37.lcssa, %do.end894.if.end959_crit_edge ], [ %sub931, %do.body929.if.end959_crit_edge ]
  %c.sroa.112.40 = phi i32 [ %c.sroa.112.37.lcssa, %do.end894.if.end959_crit_edge ], [ %or938, %do.body929.if.end959_crit_edge ]
  %c.sroa.0.40 = phi ptr [ %c.sroa.0.37.lcssa, %do.end894.if.end959_crit_edge ], [ %c.sroa.0.38.lcssa, %do.body929.if.end959_crit_edge ]
  br i1 %cmp708, label %do.body963, label %if.end959.do.body1029_crit_edge

if.end959.do.body1029_crit_edge:                  ; preds = %if.end959
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1029

if.end959.thread:                                 ; preds = %do.body929
  %shr945 = lshr i32 %or938, 24
  %conv946 = trunc i32 %shr945 to i8
  %63 = ptrtoint ptr %c.sroa.0.38.lcssa to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv946, ptr %c.sroa.0.38.lcssa, align 1
  %incdec.ptr949 = getelementptr i8, ptr %c.sroa.0.38.lcssa, i32 1
  %shl951 = shl i32 %or938, 8
  %add955 = add i32 %c.sroa.516.38.lcssa, 8
  br i1 %cmp708, label %do.body963.thread, label %if.end959.thread.do.body1029.thread_crit_edge

if.end959.thread.do.body1029.thread_crit_edge:    ; preds = %if.end959.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1029.thread

do.body963.thread:                                ; preds = %if.end959.thread
  call void @__sanitizer_cov_trace_pc() #12
  %or969393 = or i32 %shl951, -1073741824
  br label %do.end989

do.body963:                                       ; preds = %if.end959
  %sub965 = add nsw i32 %c.sroa.294.40, -2
  %shl967 = shl i32 3, %sub965
  %or969 = or i32 %shl967, %c.sroa.112.40
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %c.sroa.294.40)
  %cmp972294 = icmp ult i32 %c.sroa.294.40, 27
  br i1 %cmp972294, label %do.body963.while.body974_crit_edge, label %do.body963.do.end989_crit_edge

do.body963.do.end989_crit_edge:                   ; preds = %do.body963
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end989

do.body963.while.body974_crit_edge:               ; preds = %do.body963
  br label %while.body974

while.body974:                                    ; preds = %while.body974.while.body974_crit_edge, %do.body963.while.body974_crit_edge
  %c.sroa.0.41298 = phi ptr [ %incdec.ptr980, %while.body974.while.body974_crit_edge ], [ %c.sroa.0.40, %do.body963.while.body974_crit_edge ]
  %c.sroa.112.41297 = phi i32 [ %shl982, %while.body974.while.body974_crit_edge ], [ %or969, %do.body963.while.body974_crit_edge ]
  %c.sroa.294.41296 = phi i32 [ %add984, %while.body974.while.body974_crit_edge ], [ %sub965, %do.body963.while.body974_crit_edge ]
  %c.sroa.516.41295 = phi i32 [ %add986, %while.body974.while.body974_crit_edge ], [ %c.sroa.516.40, %do.body963.while.body974_crit_edge ]
  %shr976 = lshr i32 %c.sroa.112.41297, 24
  %conv977 = trunc i32 %shr976 to i8
  %64 = ptrtoint ptr %c.sroa.0.41298 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv977, ptr %c.sroa.0.41298, align 1
  %incdec.ptr980 = getelementptr i8, ptr %c.sroa.0.41298, i32 1
  %shl982 = shl i32 %c.sroa.112.41297, 8
  %add984 = add nsw i32 %c.sroa.294.41296, 8
  %add986 = add i32 %c.sroa.516.41295, 8
  %cmp972 = icmp slt i32 %c.sroa.294.41296, 17
  br i1 %cmp972, label %while.body974.while.body974_crit_edge, label %while.body974.do.end989_crit_edge

while.body974.do.end989_crit_edge:                ; preds = %while.body974
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end989

while.body974.while.body974_crit_edge:            ; preds = %while.body974
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body974

do.end989:                                        ; preds = %while.body974.do.end989_crit_edge, %do.body963.do.end989_crit_edge, %do.body963.thread
  %c.sroa.516.41.lcssa = phi i32 [ %c.sroa.516.40, %do.body963.do.end989_crit_edge ], [ %add955, %do.body963.thread ], [ %add986, %while.body974.do.end989_crit_edge ]
  %c.sroa.294.41.lcssa = phi i32 [ %sub965, %do.body963.do.end989_crit_edge ], [ 30, %do.body963.thread ], [ %add984, %while.body974.do.end989_crit_edge ]
  %c.sroa.112.41.lcssa = phi i32 [ %or969, %do.body963.do.end989_crit_edge ], [ %or969393, %do.body963.thread ], [ %shl982, %while.body974.do.end989_crit_edge ]
  %c.sroa.0.41.lcssa = phi ptr [ %c.sroa.0.40, %do.body963.do.end989_crit_edge ], [ %incdec.ptr949, %do.body963.thread ], [ %incdec.ptr980, %while.body974.do.end989_crit_edge ]
  %65 = ptrtoint ptr %interlace_coding to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load991 = load i8, ptr %interlace_coding, align 8
  %66 = and i8 %bf.load991, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool995.not = icmp eq i8 %66, 0
  br i1 %tobool995.not, label %do.end989.do.body1029_crit_edge, label %do.body997

do.end989.do.body1029_crit_edge:                  ; preds = %do.end989
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1029

do.body997:                                       ; preds = %do.end989
  %sub999 = add nsw i32 %c.sroa.294.41.lcssa, -1
  %shl1004 = shl nuw i32 %cond682, %sub999
  %or1006 = or i32 %shl1004, %c.sroa.112.41.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub999)
  %cmp1009303 = icmp ult i32 %sub999, 25
  br i1 %cmp1009303, label %while.body1011, label %do.body997.do.body1029_crit_edge

do.body997.do.body1029_crit_edge:                 ; preds = %do.body997
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1029

while.body1011:                                   ; preds = %do.body997
  call void @__sanitizer_cov_trace_pc() #12
  %shr1013 = lshr i32 %or1006, 24
  %conv1014 = trunc i32 %shr1013 to i8
  %67 = ptrtoint ptr %c.sroa.0.41.lcssa to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv1014, ptr %c.sroa.0.41.lcssa, align 1
  %incdec.ptr1017 = getelementptr i8, ptr %c.sroa.0.41.lcssa, i32 1
  %shl1019 = shl i32 %or1006, 8
  %add1023 = add i32 %c.sroa.516.41.lcssa, 8
  br label %do.body1029.thread

do.body1029.thread:                               ; preds = %while.body1011, %if.end959.thread.do.body1029.thread_crit_edge
  %c.sroa.516.43.ph = phi i32 [ %add955, %if.end959.thread.do.body1029.thread_crit_edge ], [ %add1023, %while.body1011 ]
  %c.sroa.112.43.ph = phi i32 [ %shl951, %if.end959.thread.do.body1029.thread_crit_edge ], [ %shl1019, %while.body1011 ]
  %c.sroa.0.43.ph = phi ptr [ %incdec.ptr949, %if.end959.thread.do.body1029.thread_crit_edge ], [ %incdec.ptr1017, %while.body1011 ]
  %or1035401 = or i32 %c.sroa.112.43.ph, -1073741824
  br label %do.end1055

do.body1029:                                      ; preds = %do.body997.do.body1029_crit_edge, %do.end989.do.body1029_crit_edge, %if.end959.do.body1029_crit_edge
  %c.sroa.516.43 = phi i32 [ %c.sroa.516.41.lcssa, %do.end989.do.body1029_crit_edge ], [ %c.sroa.516.40, %if.end959.do.body1029_crit_edge ], [ %c.sroa.516.41.lcssa, %do.body997.do.body1029_crit_edge ]
  %c.sroa.294.43 = phi i32 [ %c.sroa.294.41.lcssa, %do.end989.do.body1029_crit_edge ], [ %c.sroa.294.40, %if.end959.do.body1029_crit_edge ], [ %sub999, %do.body997.do.body1029_crit_edge ]
  %c.sroa.112.43 = phi i32 [ %c.sroa.112.41.lcssa, %do.end989.do.body1029_crit_edge ], [ %c.sroa.112.40, %if.end959.do.body1029_crit_edge ], [ %or1006, %do.body997.do.body1029_crit_edge ]
  %c.sroa.0.43 = phi ptr [ %c.sroa.0.41.lcssa, %do.end989.do.body1029_crit_edge ], [ %c.sroa.0.40, %if.end959.do.body1029_crit_edge ], [ %c.sroa.0.41.lcssa, %do.body997.do.body1029_crit_edge ]
  %sub1031 = add nsw i32 %c.sroa.294.43, -2
  %shl1033 = shl i32 3, %sub1031
  %or1035 = or i32 %shl1033, %c.sroa.112.43
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %c.sroa.294.43)
  %cmp1038311 = icmp ult i32 %c.sroa.294.43, 27
  br i1 %cmp1038311, label %do.body1029.while.body1040_crit_edge, label %do.body1029.do.end1055_crit_edge

do.body1029.do.end1055_crit_edge:                 ; preds = %do.body1029
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end1055

do.body1029.while.body1040_crit_edge:             ; preds = %do.body1029
  br label %while.body1040

while.body1040:                                   ; preds = %while.body1040.while.body1040_crit_edge, %do.body1029.while.body1040_crit_edge
  %c.sroa.0.44315 = phi ptr [ %incdec.ptr1046, %while.body1040.while.body1040_crit_edge ], [ %c.sroa.0.43, %do.body1029.while.body1040_crit_edge ]
  %c.sroa.112.44314 = phi i32 [ %shl1048, %while.body1040.while.body1040_crit_edge ], [ %or1035, %do.body1029.while.body1040_crit_edge ]
  %c.sroa.294.44313 = phi i32 [ %add1050, %while.body1040.while.body1040_crit_edge ], [ %sub1031, %do.body1029.while.body1040_crit_edge ]
  %c.sroa.516.44312 = phi i32 [ %add1052, %while.body1040.while.body1040_crit_edge ], [ %c.sroa.516.43, %do.body1029.while.body1040_crit_edge ]
  %shr1042 = lshr i32 %c.sroa.112.44314, 24
  %conv1043 = trunc i32 %shr1042 to i8
  %68 = ptrtoint ptr %c.sroa.0.44315 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv1043, ptr %c.sroa.0.44315, align 1
  %incdec.ptr1046 = getelementptr i8, ptr %c.sroa.0.44315, i32 1
  %shl1048 = shl i32 %c.sroa.112.44314, 8
  %add1050 = add nsw i32 %c.sroa.294.44313, 8
  %add1052 = add i32 %c.sroa.516.44312, 8
  %cmp1038 = icmp slt i32 %c.sroa.294.44313, 17
  br i1 %cmp1038, label %while.body1040.while.body1040_crit_edge, label %while.body1040.do.end1055_crit_edge

while.body1040.do.end1055_crit_edge:              ; preds = %while.body1040
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end1055

while.body1040.while.body1040_crit_edge:          ; preds = %while.body1040
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body1040

do.end1055:                                       ; preds = %while.body1040.do.end1055_crit_edge, %do.body1029.do.end1055_crit_edge, %do.body1029.thread
  %c.sroa.516.44.lcssa = phi i32 [ %c.sroa.516.43, %do.body1029.do.end1055_crit_edge ], [ %c.sroa.516.43.ph, %do.body1029.thread ], [ %add1052, %while.body1040.do.end1055_crit_edge ]
  %c.sroa.294.44.lcssa = phi i32 [ %sub1031, %do.body1029.do.end1055_crit_edge ], [ 30, %do.body1029.thread ], [ %add1050, %while.body1040.do.end1055_crit_edge ]
  %c.sroa.112.44.lcssa = phi i32 [ %or1035, %do.body1029.do.end1055_crit_edge ], [ %or1035401, %do.body1029.thread ], [ %shl1048, %while.body1040.do.end1055_crit_edge ]
  %c.sroa.0.44.lcssa = phi ptr [ %c.sroa.0.43, %do.body1029.do.end1055_crit_edge ], [ %c.sroa.0.43.ph, %do.body1029.thread ], [ %incdec.ptr1046, %while.body1040.do.end1055_crit_edge ]
  %sub1058 = add i32 %c.sroa.516.44.lcssa, 32
  %add1059 = sub i32 %sub1058, %c.sroa.294.44.lcssa
  %rem1060 = srem i32 %add1059, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1060)
  %cmp1062.not = icmp eq i32 %rem1060, 0
  br i1 %cmp1062.not, label %do.end1055.for.inc1093_crit_edge, label %do.body1065

do.end1055.for.inc1093_crit_edge:                 ; preds = %do.end1055
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc1093

do.body1065:                                      ; preds = %do.end1055
  %sub1061.neg = add nsw i32 %c.sroa.294.44.lcssa, -8
  %sub1067 = add nsw i32 %sub1061.neg, %rem1060
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub1067)
  %cmp1074320 = icmp ult i32 %sub1067, 25
  br i1 %cmp1074320, label %do.body1065.while.body1076_crit_edge, label %do.body1065.for.inc1093_crit_edge

do.body1065.for.inc1093_crit_edge:                ; preds = %do.body1065
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc1093

do.body1065.while.body1076_crit_edge:             ; preds = %do.body1065
  br label %while.body1076

while.body1076:                                   ; preds = %while.body1076.while.body1076_crit_edge, %do.body1065.while.body1076_crit_edge
  %c.sroa.0.45324 = phi ptr [ %incdec.ptr1082, %while.body1076.while.body1076_crit_edge ], [ %c.sroa.0.44.lcssa, %do.body1065.while.body1076_crit_edge ]
  %c.sroa.112.45323 = phi i32 [ %shl1084, %while.body1076.while.body1076_crit_edge ], [ %c.sroa.112.44.lcssa, %do.body1065.while.body1076_crit_edge ]
  %c.sroa.294.45322 = phi i32 [ %add1086, %while.body1076.while.body1076_crit_edge ], [ %sub1067, %do.body1065.while.body1076_crit_edge ]
  %c.sroa.516.45321 = phi i32 [ %add1088, %while.body1076.while.body1076_crit_edge ], [ %c.sroa.516.44.lcssa, %do.body1065.while.body1076_crit_edge ]
  %shr1078 = lshr i32 %c.sroa.112.45323, 24
  %conv1079 = trunc i32 %shr1078 to i8
  %69 = ptrtoint ptr %c.sroa.0.45324 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv1079, ptr %c.sroa.0.45324, align 1
  %incdec.ptr1082 = getelementptr i8, ptr %c.sroa.0.45324, i32 1
  %shl1084 = shl i32 %c.sroa.112.45323, 8
  %add1086 = add nsw i32 %c.sroa.294.45322, 8
  %add1088 = add i32 %c.sroa.516.45321, 8
  %cmp1074 = icmp slt i32 %c.sroa.294.45322, 17
  br i1 %cmp1074, label %while.body1076.while.body1076_crit_edge, label %while.body1076.for.inc1093_crit_edge

while.body1076.for.inc1093_crit_edge:             ; preds = %while.body1076
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc1093

while.body1076.while.body1076_crit_edge:          ; preds = %while.body1076
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body1076

for.inc1093:                                      ; preds = %while.body1076.for.inc1093_crit_edge, %do.body1065.for.inc1093_crit_edge, %do.end1055.for.inc1093_crit_edge
  %c.sroa.516.46 = phi i32 [ %c.sroa.516.44.lcssa, %do.end1055.for.inc1093_crit_edge ], [ %c.sroa.516.44.lcssa, %do.body1065.for.inc1093_crit_edge ], [ %add1088, %while.body1076.for.inc1093_crit_edge ]
  %c.sroa.294.46 = phi i32 [ %c.sroa.294.44.lcssa, %do.end1055.for.inc1093_crit_edge ], [ %sub1067, %do.body1065.for.inc1093_crit_edge ], [ %add1086, %while.body1076.for.inc1093_crit_edge ]
  %c.sroa.112.46 = phi i32 [ %c.sroa.112.44.lcssa, %do.end1055.for.inc1093_crit_edge ], [ %c.sroa.112.44.lcssa, %do.body1065.for.inc1093_crit_edge ], [ %shl1084, %while.body1076.for.inc1093_crit_edge ]
  %c.sroa.0.46 = phi ptr [ %c.sroa.0.44.lcssa, %do.end1055.for.inc1093_crit_edge ], [ %c.sroa.0.44.lcssa, %do.body1065.for.inc1093_crit_edge ], [ %incdec.ptr1082, %while.body1076.for.inc1093_crit_edge ]
  %exitcond.not = icmp eq i32 %add537352, %div2
  br i1 %exitcond.not, label %for.inc1093.for.end1094_crit_edge, label %for.inc1093.do.body507_crit_edge

for.inc1093.do.body507_crit_edge:                 ; preds = %for.inc1093
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body507

for.inc1093.for.end1094_crit_edge:                ; preds = %for.inc1093
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end1094

for.end1094:                                      ; preds = %for.inc1093.for.end1094_crit_edge, %if.end504.for.end1094_crit_edge
  %c.sroa.516.21.lcssa = phi i32 [ %c.sroa.516.20, %if.end504.for.end1094_crit_edge ], [ %c.sroa.516.46, %for.inc1093.for.end1094_crit_edge ]
  %c.sroa.294.21.lcssa = phi i32 [ %c.sroa.294.20, %if.end504.for.end1094_crit_edge ], [ %c.sroa.294.46, %for.inc1093.for.end1094_crit_edge ]
  %add1098 = add i32 %c.sroa.516.21.lcssa, 64
  %add1099 = sub i32 %add1098, %c.sroa.294.21.lcssa
  %arrayidx1100 = getelementptr i8, ptr %buf, i32 2
  %70 = ptrtoint ptr %arrayidx1100 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %arrayidx1100, align 1
  %arrayidx1101 = getelementptr i8, ptr %buf, i32 3
  %71 = ptrtoint ptr %arrayidx1101 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %arrayidx1101, align 1
  %arrayidx1102 = getelementptr i8, ptr %buf, i32 4
  %72 = ptrtoint ptr %arrayidx1102 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %arrayidx1102, align 1
  %arrayidx1103 = getelementptr i8, ptr %buf, i32 5
  %73 = ptrtoint ptr %arrayidx1103 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %arrayidx1103, align 1
  ret i32 %add1099
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mpeg4_frame_header(ptr nocapture noundef readonly %go, ptr nocapture noundef writeonly %buf, i32 noundef %modulo, i32 noundef %frame) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 33
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 34
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 8
  %shr1 = ashr i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frame)
  %cmp = icmp eq i32 %frame, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %modulo)
  %tobool.not = icmp eq i32 %modulo, 0
  %c.sroa.118.2 = select i1 %tobool.not, i32 28, i32 27
  %shl47 = shl nuw nsw i32 1, %c.sroa.118.2
  %sensor_framerate.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 32
  %4 = ptrtoint ptr %sensor_framerate.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sensor_framerate.i, align 8
  %fps_scale.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 40
  %6 = ptrtoint ptr %fps_scale.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fps_scale.i, align 8
  %div.i = sdiv i32 %5, %7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %entry
  %i.0.i = phi i32 [ 31, %entry ], [ %dec.i, %for.cond.i.for.cond.i_crit_edge ]
  %div.highbits.i = lshr i32 %div.i, %i.0.i
  %.not.not.i = icmp eq i32 %div.highbits.i, 0
  %dec.i = add i32 %i.0.i, -1
  br i1 %.not.not.i, label %for.cond.i.for.cond.i_crit_edge, label %vti_bitlen.exit

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

vti_bitlen.exit:                                  ; preds = %for.cond.i
  %add.ptr = getelementptr i8, ptr %buf, i32 6
  %shr = ashr i32 %1, 4
  %mul = mul i32 %shr1, %shr
  %cond = select i1 %cmp, i32 1073741824, i32 -2147483648
  %or22 = or i32 %cond, 536870912
  %c.sroa.46.2 = select i1 %tobool.not, i32 %cond, i32 %or22
  %or49 = or i32 %c.sroa.46.2, %shl47
  %add.i.neg = xor i32 %i.0.i, -1
  %sub72 = add i32 %c.sroa.118.2, %add.i.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub72)
  %cmp79567 = icmp slt i32 %sub72, 25
  br i1 %cmp79567, label %while.body81.preheader, label %vti_bitlen.exit.do.body97_crit_edge

vti_bitlen.exit.do.body97_crit_edge:              ; preds = %vti_bitlen.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body97

while.body81.preheader:                           ; preds = %vti_bitlen.exit
  %shr83.peel = lshr exact i32 %or49, 24
  %conv84.peel = trunc i32 %shr83.peel to i8
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv84.peel, ptr %add.ptr, align 1
  %incdec.ptr87.peel = getelementptr i8, ptr %buf, i32 7
  %add91.peel = add nsw i32 %sub72, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub72)
  %cmp79.peel = icmp slt i32 %sub72, 17
  br i1 %cmp79.peel, label %while.body81.preheader.while.body81_crit_edge, label %while.body81.preheader.do.body97_crit_edge

while.body81.preheader.do.body97_crit_edge:       ; preds = %while.body81.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body97

while.body81.preheader.while.body81_crit_edge:    ; preds = %while.body81.preheader
  br label %while.body81

while.body81:                                     ; preds = %while.body81.while.body81_crit_edge, %while.body81.preheader.while.body81_crit_edge
  %c.sroa.0.4571 = phi ptr [ %incdec.ptr87, %while.body81.while.body81_crit_edge ], [ %incdec.ptr87.peel, %while.body81.preheader.while.body81_crit_edge ]
  %c.sroa.118.4569 = phi i32 [ %add91, %while.body81.while.body81_crit_edge ], [ %add91.peel, %while.body81.preheader.while.body81_crit_edge ]
  %c.sroa.206.4568 = phi i32 [ %add93, %while.body81.while.body81_crit_edge ], [ 8, %while.body81.preheader.while.body81_crit_edge ]
  %9 = ptrtoint ptr %c.sroa.0.4571 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %c.sroa.0.4571, align 1
  %incdec.ptr87 = getelementptr i8, ptr %c.sroa.0.4571, i32 1
  %add91 = add nsw i32 %c.sroa.118.4569, 8
  %add93 = add nuw i32 %c.sroa.206.4568, 8
  %cmp79 = icmp slt i32 %c.sroa.118.4569, 17
  br i1 %cmp79, label %while.body81.while.body81_crit_edge, label %while.body81.do.body97_crit_edge, !llvm.loop !67

while.body81.do.body97_crit_edge:                 ; preds = %while.body81
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body97

while.body81.while.body81_crit_edge:              ; preds = %while.body81
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body81

do.body97:                                        ; preds = %while.body81.do.body97_crit_edge, %while.body81.preheader.do.body97_crit_edge, %vti_bitlen.exit.do.body97_crit_edge
  %c.sroa.206.4.lcssa = phi i32 [ 0, %vti_bitlen.exit.do.body97_crit_edge ], [ 8, %while.body81.preheader.do.body97_crit_edge ], [ %add93, %while.body81.do.body97_crit_edge ]
  %c.sroa.118.4.lcssa = phi i32 [ %sub72, %vti_bitlen.exit.do.body97_crit_edge ], [ %add91.peel, %while.body81.preheader.do.body97_crit_edge ], [ %add91, %while.body81.do.body97_crit_edge ]
  %c.sroa.46.4.lcssa = phi i32 [ %or49, %vti_bitlen.exit.do.body97_crit_edge ], [ 0, %while.body81.preheader.do.body97_crit_edge ], [ 0, %while.body81.do.body97_crit_edge ]
  %c.sroa.0.4.lcssa = phi ptr [ %add.ptr, %vti_bitlen.exit.do.body97_crit_edge ], [ %incdec.ptr87.peel, %while.body81.preheader.do.body97_crit_edge ], [ %incdec.ptr87, %while.body81.do.body97_crit_edge ]
  %sub99 = add nsw i32 %c.sroa.118.4.lcssa, -2
  %shl101 = shl i32 3, %sub99
  %or103 = or i32 %shl101, %c.sroa.46.4.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %c.sroa.118.4.lcssa)
  %cmp106575 = icmp ult i32 %c.sroa.118.4.lcssa, 27
  br i1 %cmp106575, label %do.body97.while.body108_crit_edge, label %do.body97.do.end123_crit_edge

do.body97.do.end123_crit_edge:                    ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end123

do.body97.while.body108_crit_edge:                ; preds = %do.body97
  br label %while.body108

while.body108:                                    ; preds = %while.body108.while.body108_crit_edge, %do.body97.while.body108_crit_edge
  %c.sroa.0.5579 = phi ptr [ %incdec.ptr114, %while.body108.while.body108_crit_edge ], [ %c.sroa.0.4.lcssa, %do.body97.while.body108_crit_edge ]
  %c.sroa.46.5578 = phi i32 [ %shl116, %while.body108.while.body108_crit_edge ], [ %or103, %do.body97.while.body108_crit_edge ]
  %c.sroa.118.5577 = phi i32 [ %add118, %while.body108.while.body108_crit_edge ], [ %sub99, %do.body97.while.body108_crit_edge ]
  %c.sroa.206.5576 = phi i32 [ %add120, %while.body108.while.body108_crit_edge ], [ %c.sroa.206.4.lcssa, %do.body97.while.body108_crit_edge ]
  %shr110 = lshr i32 %c.sroa.46.5578, 24
  %conv111 = trunc i32 %shr110 to i8
  %10 = ptrtoint ptr %c.sroa.0.5579 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv111, ptr %c.sroa.0.5579, align 1
  %incdec.ptr114 = getelementptr i8, ptr %c.sroa.0.5579, i32 1
  %shl116 = shl i32 %c.sroa.46.5578, 8
  %add118 = add nsw i32 %c.sroa.118.5577, 8
  %add120 = add i32 %c.sroa.206.5576, 8
  %cmp106 = icmp slt i32 %c.sroa.118.5577, 17
  br i1 %cmp106, label %while.body108.while.body108_crit_edge, label %while.body108.do.end123_crit_edge

while.body108.do.end123_crit_edge:                ; preds = %while.body108
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end123

while.body108.while.body108_crit_edge:            ; preds = %while.body108
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body108

do.end123:                                        ; preds = %while.body108.do.end123_crit_edge, %do.body97.do.end123_crit_edge
  %c.sroa.206.5.lcssa = phi i32 [ %c.sroa.206.4.lcssa, %do.body97.do.end123_crit_edge ], [ %add120, %while.body108.do.end123_crit_edge ]
  %c.sroa.118.5.lcssa = phi i32 [ %sub99, %do.body97.do.end123_crit_edge ], [ %add118, %while.body108.do.end123_crit_edge ]
  %c.sroa.46.5.lcssa = phi i32 [ %or103, %do.body97.do.end123_crit_edge ], [ %shl116, %while.body108.do.end123_crit_edge ]
  %c.sroa.0.5.lcssa = phi ptr [ %c.sroa.0.4.lcssa, %do.body97.do.end123_crit_edge ], [ %incdec.ptr114, %while.body108.do.end123_crit_edge ]
  br i1 %cmp, label %do.body127, label %do.end123.do.body155_crit_edge

do.end123.do.body155_crit_edge:                   ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body155

do.body127:                                       ; preds = %do.end123
  %sub129 = add nsw i32 %c.sroa.118.5.lcssa, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub129)
  %cmp136584 = icmp ult i32 %sub129, 25
  br i1 %cmp136584, label %do.body155.thread, label %do.body127.do.body155_crit_edge

do.body127.do.body155_crit_edge:                  ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body155

do.body155.thread:                                ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #12
  %shr140 = lshr i32 %c.sroa.46.5.lcssa, 24
  %conv141 = trunc i32 %shr140 to i8
  %11 = ptrtoint ptr %c.sroa.0.5.lcssa to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv141, ptr %c.sroa.0.5.lcssa, align 1
  %incdec.ptr144 = getelementptr i8, ptr %c.sroa.0.5.lcssa, i32 1
  %shl146 = shl i32 %c.sroa.46.5.lcssa, 8
  %add150 = add i32 %c.sroa.206.5.lcssa, 8
  %or161679 = or i32 %shl146, 25165824
  br label %while.body166.preheader

do.body155:                                       ; preds = %do.body127.do.body155_crit_edge, %do.end123.do.body155_crit_edge
  %c.sroa.118.7 = phi i32 [ %c.sroa.118.5.lcssa, %do.end123.do.body155_crit_edge ], [ %sub129, %do.body127.do.body155_crit_edge ]
  %sub157 = add nsw i32 %c.sroa.118.7, -11
  %shl159 = shl i32 12, %sub157
  %or161 = or i32 %shl159, %c.sroa.46.5.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %c.sroa.118.7)
  %cmp164592 = icmp ult i32 %c.sroa.118.7, 36
  br i1 %cmp164592, label %do.body155.while.body166.preheader_crit_edge, label %do.body155.do.end181_crit_edge

do.body155.do.end181_crit_edge:                   ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end181

do.body155.while.body166.preheader_crit_edge:     ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body166.preheader

while.body166.preheader:                          ; preds = %do.body155.while.body166.preheader_crit_edge, %do.body155.thread
  %c.sroa.0.8596.ph = phi ptr [ %c.sroa.0.5.lcssa, %do.body155.while.body166.preheader_crit_edge ], [ %incdec.ptr144, %do.body155.thread ]
  %c.sroa.46.8595.ph = phi i32 [ %or161, %do.body155.while.body166.preheader_crit_edge ], [ %or161679, %do.body155.thread ]
  %c.sroa.118.8594.ph = phi i32 [ %sub157, %do.body155.while.body166.preheader_crit_edge ], [ 21, %do.body155.thread ]
  %c.sroa.206.8593.ph = phi i32 [ %c.sroa.206.5.lcssa, %do.body155.while.body166.preheader_crit_edge ], [ %add150, %do.body155.thread ]
  br label %while.body166

while.body166:                                    ; preds = %while.body166.while.body166_crit_edge, %while.body166.preheader
  %c.sroa.0.8596 = phi ptr [ %incdec.ptr172, %while.body166.while.body166_crit_edge ], [ %c.sroa.0.8596.ph, %while.body166.preheader ]
  %c.sroa.46.8595 = phi i32 [ %shl174, %while.body166.while.body166_crit_edge ], [ %c.sroa.46.8595.ph, %while.body166.preheader ]
  %c.sroa.118.8594 = phi i32 [ %add176, %while.body166.while.body166_crit_edge ], [ %c.sroa.118.8594.ph, %while.body166.preheader ]
  %c.sroa.206.8593 = phi i32 [ %add178, %while.body166.while.body166_crit_edge ], [ %c.sroa.206.8593.ph, %while.body166.preheader ]
  %shr168 = lshr i32 %c.sroa.46.8595, 24
  %conv169 = trunc i32 %shr168 to i8
  %12 = ptrtoint ptr %c.sroa.0.8596 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv169, ptr %c.sroa.0.8596, align 1
  %incdec.ptr172 = getelementptr i8, ptr %c.sroa.0.8596, i32 1
  %shl174 = shl i32 %c.sroa.46.8595, 8
  %add176 = add nsw i32 %c.sroa.118.8594, 8
  %add178 = add i32 %c.sroa.206.8593, 8
  %cmp164 = icmp slt i32 %c.sroa.118.8594, 17
  br i1 %cmp164, label %while.body166.while.body166_crit_edge, label %while.body166.do.end181_crit_edge

while.body166.do.end181_crit_edge:                ; preds = %while.body166
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end181

while.body166.while.body166_crit_edge:            ; preds = %while.body166
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body166

do.end181:                                        ; preds = %while.body166.do.end181_crit_edge, %do.body155.do.end181_crit_edge
  %c.sroa.206.8.lcssa = phi i32 [ %c.sroa.206.5.lcssa, %do.body155.do.end181_crit_edge ], [ %add178, %while.body166.do.end181_crit_edge ]
  %c.sroa.118.8.lcssa = phi i32 [ %sub157, %do.body155.do.end181_crit_edge ], [ %add176, %while.body166.do.end181_crit_edge ]
  %c.sroa.46.8.lcssa = phi i32 [ %or161, %do.body155.do.end181_crit_edge ], [ %shl174, %while.body166.do.end181_crit_edge ]
  %c.sroa.0.8.lcssa = phi ptr [ %c.sroa.0.5.lcssa, %do.body155.do.end181_crit_edge ], [ %incdec.ptr172, %while.body166.do.end181_crit_edge ]
  br i1 %cmp, label %do.end181.if.end212_crit_edge, label %do.body185

do.end181.if.end212_crit_edge:                    ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end212

do.body185:                                       ; preds = %do.end181
  %sub187 = add nsw i32 %c.sroa.118.8.lcssa, -3
  %shl189 = shl i32 4, %sub187
  %or191 = or i32 %shl189, %c.sroa.46.8.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %c.sroa.118.8.lcssa)
  %cmp194601 = icmp ult i32 %c.sroa.118.8.lcssa, 28
  br i1 %cmp194601, label %do.body185.while.body196_crit_edge, label %do.body185.if.end212_crit_edge

do.body185.if.end212_crit_edge:                   ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end212

do.body185.while.body196_crit_edge:               ; preds = %do.body185
  br label %while.body196

while.body196:                                    ; preds = %while.body196.while.body196_crit_edge, %do.body185.while.body196_crit_edge
  %c.sroa.0.9605 = phi ptr [ %incdec.ptr202, %while.body196.while.body196_crit_edge ], [ %c.sroa.0.8.lcssa, %do.body185.while.body196_crit_edge ]
  %c.sroa.46.9604 = phi i32 [ %shl204, %while.body196.while.body196_crit_edge ], [ %or191, %do.body185.while.body196_crit_edge ]
  %c.sroa.118.9603 = phi i32 [ %add206, %while.body196.while.body196_crit_edge ], [ %sub187, %do.body185.while.body196_crit_edge ]
  %c.sroa.206.9602 = phi i32 [ %add208, %while.body196.while.body196_crit_edge ], [ %c.sroa.206.8.lcssa, %do.body185.while.body196_crit_edge ]
  %shr198 = lshr i32 %c.sroa.46.9604, 24
  %conv199 = trunc i32 %shr198 to i8
  %13 = ptrtoint ptr %c.sroa.0.9605 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv199, ptr %c.sroa.0.9605, align 1
  %incdec.ptr202 = getelementptr i8, ptr %c.sroa.0.9605, i32 1
  %shl204 = shl i32 %c.sroa.46.9604, 8
  %add206 = add nsw i32 %c.sroa.118.9603, 8
  %add208 = add i32 %c.sroa.206.9602, 8
  %cmp194 = icmp slt i32 %c.sroa.118.9603, 17
  br i1 %cmp194, label %while.body196.while.body196_crit_edge, label %while.body196.if.end212_crit_edge

while.body196.if.end212_crit_edge:                ; preds = %while.body196
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end212

while.body196.while.body196_crit_edge:            ; preds = %while.body196
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body196

if.end212:                                        ; preds = %while.body196.if.end212_crit_edge, %do.body185.if.end212_crit_edge, %do.end181.if.end212_crit_edge
  %c.sroa.206.10 = phi i32 [ %c.sroa.206.8.lcssa, %do.end181.if.end212_crit_edge ], [ %c.sroa.206.8.lcssa, %do.body185.if.end212_crit_edge ], [ %add208, %while.body196.if.end212_crit_edge ]
  %c.sroa.118.10 = phi i32 [ %c.sroa.118.8.lcssa, %do.end181.if.end212_crit_edge ], [ %sub187, %do.body185.if.end212_crit_edge ], [ %add206, %while.body196.if.end212_crit_edge ]
  %c.sroa.46.10 = phi i32 [ %c.sroa.46.8.lcssa, %do.end181.if.end212_crit_edge ], [ %or191, %do.body185.if.end212_crit_edge ], [ %shl204, %while.body196.if.end212_crit_edge ]
  %c.sroa.0.10 = phi ptr [ %c.sroa.0.8.lcssa, %do.end181.if.end212_crit_edge ], [ %c.sroa.0.8.lcssa, %do.body185.if.end212_crit_edge ], [ %incdec.ptr202, %while.body196.if.end212_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %frame)
  %cmp213.not = icmp ne i32 %frame, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp216645 = icmp sgt i32 %mul, 0
  %or.cond = select i1 %cmp213.not, i1 %cmp216645, i1 false
  br i1 %or.cond, label %if.end212.for.body_crit_edge, label %if.end212.if.end329_crit_edge

if.end212.if.end329_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end329

if.end212.for.body_crit_edge:                     ; preds = %if.end212
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end212.for.body_crit_edge
  %c.sroa.0.11650 = phi ptr [ %c.sroa.0.16, %for.inc.for.body_crit_edge ], [ %c.sroa.0.10, %if.end212.for.body_crit_edge ]
  %c.sroa.46.11649 = phi i32 [ %c.sroa.46.16, %for.inc.for.body_crit_edge ], [ %c.sroa.46.10, %if.end212.for.body_crit_edge ]
  %c.sroa.118.11648 = phi i32 [ %c.sroa.118.16, %for.inc.for.body_crit_edge ], [ %c.sroa.118.10, %if.end212.for.body_crit_edge ]
  %c.sroa.206.11647 = phi i32 [ %c.sroa.206.16, %for.inc.for.body_crit_edge ], [ %c.sroa.206.10, %if.end212.for.body_crit_edge ]
  %i.0646 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end212.for.body_crit_edge ]
  %14 = zext i32 %frame to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %frame, label %for.body.for.inc_crit_edge [
    i32 0, label %do.body218
    i32 1, label %do.body246
    i32 2, label %do.body274
    i32 3, label %do.body302
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body218:                                       ; preds = %for.body
  %sub220 = add i32 %c.sroa.118.11648, -1
  %shl222 = shl nuw i32 1, %sub220
  %or224 = or i32 %shl222, %c.sroa.46.11649
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub220)
  %cmp227637 = icmp slt i32 %sub220, 25
  br i1 %cmp227637, label %while.body229, label %do.body218.for.inc_crit_edge

do.body218.for.inc_crit_edge:                     ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.body229:                                    ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #12
  %shr231 = lshr i32 %or224, 24
  %conv232 = trunc i32 %shr231 to i8
  %15 = ptrtoint ptr %c.sroa.0.11650 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv232, ptr %c.sroa.0.11650, align 1
  %incdec.ptr235 = getelementptr i8, ptr %c.sroa.0.11650, i32 1
  %shl237 = shl i32 %or224, 8
  %add241 = add i32 %c.sroa.206.11647, 8
  br label %for.inc

do.body246:                                       ; preds = %for.body
  %sub248 = add i32 %c.sroa.118.11648, -8
  %shl250 = shl i32 71, %sub248
  %or252 = or i32 %shl250, %c.sroa.46.11649
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub248)
  %cmp255628 = icmp slt i32 %sub248, 25
  br i1 %cmp255628, label %do.body246.while.body257_crit_edge, label %do.body246.for.inc_crit_edge

do.body246.for.inc_crit_edge:                     ; preds = %do.body246
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body246.while.body257_crit_edge:               ; preds = %do.body246
  br label %while.body257

while.body257:                                    ; preds = %while.body257.while.body257_crit_edge, %do.body246.while.body257_crit_edge
  %c.sroa.0.13632 = phi ptr [ %incdec.ptr263, %while.body257.while.body257_crit_edge ], [ %c.sroa.0.11650, %do.body246.while.body257_crit_edge ]
  %c.sroa.46.13631 = phi i32 [ %shl265, %while.body257.while.body257_crit_edge ], [ %or252, %do.body246.while.body257_crit_edge ]
  %c.sroa.118.13630 = phi i32 [ %add267, %while.body257.while.body257_crit_edge ], [ %sub248, %do.body246.while.body257_crit_edge ]
  %c.sroa.206.13629 = phi i32 [ %add269, %while.body257.while.body257_crit_edge ], [ %c.sroa.206.11647, %do.body246.while.body257_crit_edge ]
  %shr259 = lshr i32 %c.sroa.46.13631, 24
  %conv260 = trunc i32 %shr259 to i8
  %16 = ptrtoint ptr %c.sroa.0.13632 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv260, ptr %c.sroa.0.13632, align 1
  %incdec.ptr263 = getelementptr i8, ptr %c.sroa.0.13632, i32 1
  %shl265 = shl i32 %c.sroa.46.13631, 8
  %add267 = add nsw i32 %c.sroa.118.13630, 8
  %add269 = add i32 %c.sroa.206.13629, 8
  %cmp255 = icmp slt i32 %c.sroa.118.13630, 17
  br i1 %cmp255, label %while.body257.while.body257_crit_edge, label %while.body257.for.inc_crit_edge

while.body257.for.inc_crit_edge:                  ; preds = %while.body257
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.body257.while.body257_crit_edge:            ; preds = %while.body257
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body257

do.body274:                                       ; preds = %for.body
  %sub276 = add i32 %c.sroa.118.11648, -7
  %shl278 = shl i32 39, %sub276
  %or280 = or i32 %shl278, %c.sroa.46.11649
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub276)
  %cmp283619 = icmp slt i32 %sub276, 25
  br i1 %cmp283619, label %do.body274.while.body285_crit_edge, label %do.body274.for.inc_crit_edge

do.body274.for.inc_crit_edge:                     ; preds = %do.body274
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body274.while.body285_crit_edge:               ; preds = %do.body274
  br label %while.body285

while.body285:                                    ; preds = %while.body285.while.body285_crit_edge, %do.body274.while.body285_crit_edge
  %c.sroa.0.14623 = phi ptr [ %incdec.ptr291, %while.body285.while.body285_crit_edge ], [ %c.sroa.0.11650, %do.body274.while.body285_crit_edge ]
  %c.sroa.46.14622 = phi i32 [ %shl293, %while.body285.while.body285_crit_edge ], [ %or280, %do.body274.while.body285_crit_edge ]
  %c.sroa.118.14621 = phi i32 [ %add295, %while.body285.while.body285_crit_edge ], [ %sub276, %do.body274.while.body285_crit_edge ]
  %c.sroa.206.14620 = phi i32 [ %add297, %while.body285.while.body285_crit_edge ], [ %c.sroa.206.11647, %do.body274.while.body285_crit_edge ]
  %shr287 = lshr i32 %c.sroa.46.14622, 24
  %conv288 = trunc i32 %shr287 to i8
  %17 = ptrtoint ptr %c.sroa.0.14623 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv288, ptr %c.sroa.0.14623, align 1
  %incdec.ptr291 = getelementptr i8, ptr %c.sroa.0.14623, i32 1
  %shl293 = shl i32 %c.sroa.46.14622, 8
  %add295 = add nsw i32 %c.sroa.118.14621, 8
  %add297 = add i32 %c.sroa.206.14620, 8
  %cmp283 = icmp slt i32 %c.sroa.118.14621, 17
  br i1 %cmp283, label %while.body285.while.body285_crit_edge, label %while.body285.for.inc_crit_edge

while.body285.for.inc_crit_edge:                  ; preds = %while.body285
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.body285.while.body285_crit_edge:            ; preds = %while.body285
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body285

do.body302:                                       ; preds = %for.body
  %sub304 = add i32 %c.sroa.118.11648, -8
  %shl306 = shl i32 95, %sub304
  %or308 = or i32 %shl306, %c.sroa.46.11649
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub304)
  %cmp311610 = icmp slt i32 %sub304, 25
  br i1 %cmp311610, label %do.body302.while.body313_crit_edge, label %do.body302.for.inc_crit_edge

do.body302.for.inc_crit_edge:                     ; preds = %do.body302
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.body302.while.body313_crit_edge:               ; preds = %do.body302
  br label %while.body313

while.body313:                                    ; preds = %while.body313.while.body313_crit_edge, %do.body302.while.body313_crit_edge
  %c.sroa.0.15614 = phi ptr [ %incdec.ptr319, %while.body313.while.body313_crit_edge ], [ %c.sroa.0.11650, %do.body302.while.body313_crit_edge ]
  %c.sroa.46.15613 = phi i32 [ %shl321, %while.body313.while.body313_crit_edge ], [ %or308, %do.body302.while.body313_crit_edge ]
  %c.sroa.118.15612 = phi i32 [ %add323, %while.body313.while.body313_crit_edge ], [ %sub304, %do.body302.while.body313_crit_edge ]
  %c.sroa.206.15611 = phi i32 [ %add325, %while.body313.while.body313_crit_edge ], [ %c.sroa.206.11647, %do.body302.while.body313_crit_edge ]
  %shr315 = lshr i32 %c.sroa.46.15613, 24
  %conv316 = trunc i32 %shr315 to i8
  %18 = ptrtoint ptr %c.sroa.0.15614 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv316, ptr %c.sroa.0.15614, align 1
  %incdec.ptr319 = getelementptr i8, ptr %c.sroa.0.15614, i32 1
  %shl321 = shl i32 %c.sroa.46.15613, 8
  %add323 = add nsw i32 %c.sroa.118.15612, 8
  %add325 = add i32 %c.sroa.206.15611, 8
  %cmp311 = icmp slt i32 %c.sroa.118.15612, 17
  br i1 %cmp311, label %while.body313.while.body313_crit_edge, label %while.body313.for.inc_crit_edge

while.body313.for.inc_crit_edge:                  ; preds = %while.body313
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.body313.while.body313_crit_edge:            ; preds = %while.body313
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body313

for.inc:                                          ; preds = %while.body313.for.inc_crit_edge, %do.body302.for.inc_crit_edge, %while.body285.for.inc_crit_edge, %do.body274.for.inc_crit_edge, %while.body257.for.inc_crit_edge, %do.body246.for.inc_crit_edge, %while.body229, %do.body218.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %c.sroa.206.16 = phi i32 [ %c.sroa.206.11647, %for.body.for.inc_crit_edge ], [ %add241, %while.body229 ], [ %c.sroa.206.11647, %do.body218.for.inc_crit_edge ], [ %c.sroa.206.11647, %do.body246.for.inc_crit_edge ], [ %c.sroa.206.11647, %do.body274.for.inc_crit_edge ], [ %c.sroa.206.11647, %do.body302.for.inc_crit_edge ], [ %add269, %while.body257.for.inc_crit_edge ], [ %add297, %while.body285.for.inc_crit_edge ], [ %add325, %while.body313.for.inc_crit_edge ]
  %c.sroa.118.16 = phi i32 [ %c.sroa.118.11648, %for.body.for.inc_crit_edge ], [ 32, %while.body229 ], [ %sub220, %do.body218.for.inc_crit_edge ], [ %sub248, %do.body246.for.inc_crit_edge ], [ %sub276, %do.body274.for.inc_crit_edge ], [ %sub304, %do.body302.for.inc_crit_edge ], [ %add267, %while.body257.for.inc_crit_edge ], [ %add295, %while.body285.for.inc_crit_edge ], [ %add323, %while.body313.for.inc_crit_edge ]
  %c.sroa.46.16 = phi i32 [ %c.sroa.46.11649, %for.body.for.inc_crit_edge ], [ %shl237, %while.body229 ], [ %or224, %do.body218.for.inc_crit_edge ], [ %or252, %do.body246.for.inc_crit_edge ], [ %or280, %do.body274.for.inc_crit_edge ], [ %or308, %do.body302.for.inc_crit_edge ], [ %shl265, %while.body257.for.inc_crit_edge ], [ %shl293, %while.body285.for.inc_crit_edge ], [ %shl321, %while.body313.for.inc_crit_edge ]
  %c.sroa.0.16 = phi ptr [ %c.sroa.0.11650, %for.body.for.inc_crit_edge ], [ %incdec.ptr235, %while.body229 ], [ %c.sroa.0.11650, %do.body218.for.inc_crit_edge ], [ %c.sroa.0.11650, %do.body246.for.inc_crit_edge ], [ %c.sroa.0.11650, %do.body274.for.inc_crit_edge ], [ %c.sroa.0.11650, %do.body302.for.inc_crit_edge ], [ %incdec.ptr263, %while.body257.for.inc_crit_edge ], [ %incdec.ptr291, %while.body285.for.inc_crit_edge ], [ %incdec.ptr319, %while.body313.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0646, 1
  %exitcond.not = icmp eq i32 %inc, %mul
  br i1 %exitcond.not, label %for.inc.if.end329_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.end329_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end329

if.end329:                                        ; preds = %for.inc.if.end329_crit_edge, %if.end212.if.end329_crit_edge
  %c.sroa.206.17 = phi i32 [ %c.sroa.206.10, %if.end212.if.end329_crit_edge ], [ %c.sroa.206.16, %for.inc.if.end329_crit_edge ]
  %c.sroa.118.17 = phi i32 [ %c.sroa.118.10, %if.end212.if.end329_crit_edge ], [ %c.sroa.118.16, %for.inc.if.end329_crit_edge ]
  %c.sroa.46.17 = phi i32 [ %c.sroa.46.10, %if.end212.if.end329_crit_edge ], [ %c.sroa.46.16, %for.inc.if.end329_crit_edge ]
  %c.sroa.0.17 = phi ptr [ %c.sroa.0.10, %if.end212.if.end329_crit_edge ], [ %c.sroa.0.16, %for.inc.if.end329_crit_edge ]
  %sub332 = add i32 %c.sroa.206.17, 32
  %add333 = sub i32 %sub332, %c.sroa.118.17
  %rem = srem i32 %add333, 8
  %sub337 = add i32 %c.sroa.118.17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub337)
  %cmp344655 = icmp slt i32 %sub337, 25
  br i1 %cmp344655, label %while.body346, label %if.end329.do.body362_crit_edge

if.end329.do.body362_crit_edge:                   ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body362

while.body346:                                    ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #12
  %shr348 = lshr i32 %c.sroa.46.17, 24
  %conv349 = trunc i32 %shr348 to i8
  %19 = ptrtoint ptr %c.sroa.0.17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv349, ptr %c.sroa.0.17, align 1
  %incdec.ptr352 = getelementptr i8, ptr %c.sroa.0.17, i32 1
  %shl354 = shl i32 %c.sroa.46.17, 8
  %add358 = add i32 %c.sroa.206.17, 8
  br label %do.body362

do.body362:                                       ; preds = %while.body346, %if.end329.do.body362_crit_edge
  %c.sroa.206.18.lcssa = phi i32 [ %add358, %while.body346 ], [ %c.sroa.206.17, %if.end329.do.body362_crit_edge ]
  %c.sroa.118.18.lcssa = phi i32 [ 32, %while.body346 ], [ %sub337, %if.end329.do.body362_crit_edge ]
  %c.sroa.46.18.lcssa = phi i32 [ %shl354, %while.body346 ], [ %c.sroa.46.17, %if.end329.do.body362_crit_edge ]
  %c.sroa.0.18.lcssa = phi ptr [ %incdec.ptr352, %while.body346 ], [ %c.sroa.0.17, %if.end329.do.body362_crit_edge ]
  %sub363 = sub nsw i32 7, %rem
  %sub365 = sub nuw nsw i32 %c.sroa.118.18.lcssa, %sub363
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub365)
  %cmp375663 = icmp ult i32 %sub365, 25
  br i1 %cmp375663, label %while.body377.preheader, label %do.body362.do.end392_crit_edge

do.body362.do.end392_crit_edge:                   ; preds = %do.body362
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end392

while.body377.preheader:                          ; preds = %do.body362
  %notmask = shl nsw i32 -1, %sub363
  %sub368 = xor i32 %notmask, -1
  %shl370 = shl i32 %sub368, %sub365
  %or372 = or i32 %shl370, %c.sroa.46.18.lcssa
  br label %while.body377

while.body377:                                    ; preds = %while.body377.while.body377_crit_edge, %while.body377.preheader
  %c.sroa.0.19667 = phi ptr [ %incdec.ptr383, %while.body377.while.body377_crit_edge ], [ %c.sroa.0.18.lcssa, %while.body377.preheader ]
  %c.sroa.46.19666 = phi i32 [ %shl385, %while.body377.while.body377_crit_edge ], [ %or372, %while.body377.preheader ]
  %c.sroa.118.19665 = phi i32 [ %add387, %while.body377.while.body377_crit_edge ], [ %sub365, %while.body377.preheader ]
  %c.sroa.206.19664 = phi i32 [ %add389, %while.body377.while.body377_crit_edge ], [ %c.sroa.206.18.lcssa, %while.body377.preheader ]
  %shr379 = lshr i32 %c.sroa.46.19666, 24
  %conv380 = trunc i32 %shr379 to i8
  %20 = ptrtoint ptr %c.sroa.0.19667 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv380, ptr %c.sroa.0.19667, align 1
  %incdec.ptr383 = getelementptr i8, ptr %c.sroa.0.19667, i32 1
  %shl385 = shl i32 %c.sroa.46.19666, 8
  %add387 = add nsw i32 %c.sroa.118.19665, 8
  %add389 = add i32 %c.sroa.206.19664, 8
  %cmp375 = icmp slt i32 %c.sroa.118.19665, 17
  br i1 %cmp375, label %while.body377.while.body377_crit_edge, label %while.body377.do.end392_crit_edge

while.body377.do.end392_crit_edge:                ; preds = %while.body377
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end392

while.body377.while.body377_crit_edge:            ; preds = %while.body377
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body377

do.end392:                                        ; preds = %while.body377.do.end392_crit_edge, %do.body362.do.end392_crit_edge
  %c.sroa.206.19.lcssa = phi i32 [ %c.sroa.206.18.lcssa, %do.body362.do.end392_crit_edge ], [ %add389, %while.body377.do.end392_crit_edge ]
  %c.sroa.118.19.lcssa = phi i32 [ %sub365, %do.body362.do.end392_crit_edge ], [ %add387, %while.body377.do.end392_crit_edge ]
  %add396 = add i32 %c.sroa.206.19.lcssa, 64
  %add397 = sub i32 %add396, %c.sroa.118.19.lcssa
  %conv398 = trunc i32 %add397 to i8
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv398, ptr %buf, align 1
  %22 = lshr i32 %add397, 8
  %conv400 = trunc i32 %22 to i8
  %arrayidx401 = getelementptr i8, ptr %buf, i32 1
  %23 = ptrtoint ptr %arrayidx401 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv400, ptr %arrayidx401, align 1
  %arrayidx402 = getelementptr i8, ptr %buf, i32 2
  %24 = ptrtoint ptr %arrayidx402 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx402, align 1
  %arrayidx403 = getelementptr i8, ptr %buf, i32 3
  %25 = ptrtoint ptr %arrayidx403 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx403, align 1
  %arrayidx404 = getelementptr i8, ptr %buf, i32 4
  %26 = ptrtoint ptr %arrayidx404 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %arrayidx404, align 1
  %arrayidx405 = getelementptr i8, ptr %buf, i32 5
  %27 = ptrtoint ptr %arrayidx405 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -74, ptr %arrayidx405, align 1
  ret i32 %add397
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !23, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/go7007/go7007-fw.c", i32 1568, i32 34}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/go7007/go7007-fw.c", i32 1569, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @go7007_construct_fw_image._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @go7007_construct_fw_image._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/go7007/go7007-fw.c", i32 1584, i32 4}
!12 = !{ptr @go7007_construct_fw_image._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @go7007_construct_fw_image._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/go7007/go7007-fw.c", i32 1594, i32 6}
!16 = !{ptr @go7007_construct_fw_image._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @go7007_construct_fw_image._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @go7007_construct_fw_image._entry.12, !19, !"_entry", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/go7007/go7007-fw.c", i32 1601, i32 6}
!20 = !{ptr @go7007_construct_fw_image._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_firmware298, !22, !"__UNIQUE_ID_firmware298", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/go7007/go7007-fw.c", i32 1623, i32 1}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/go7007/go7007-fw.c", i32 1538, i32 2}
!25 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @do_special._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @do_special._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @default_intra_quant_table, !29, !"default_intra_quant_table", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/go7007/go7007-fw.c", i32 182, i32 17}
!30 = !{ptr @zz, !31, !"zz", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/go7007/go7007-fw.c", i32 270, i32 18}
!32 = !{ptr @bits_dc_luminance, !33, !"bits_dc_luminance", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/go7007/go7007-fw.c", i32 193, i32 17}
!34 = !{ptr @val_dc_luminance, !35, !"val_dc_luminance", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/go7007/go7007-fw.c", i32 197, i32 17}
!36 = !{ptr @bits_dc_chrominance, !37, !"bits_dc_chrominance", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/go7007/go7007-fw.c", i32 201, i32 17}
!38 = !{ptr @val_dc_chrominance, !39, !"val_dc_chrominance", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/go7007/go7007-fw.c", i32 205, i32 17}
!40 = !{ptr @bits_ac_luminance, !41, !"bits_ac_luminance", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/go7007/go7007-fw.c", i32 209, i32 17}
!42 = !{ptr @val_ac_luminance, !43, !"val_ac_luminance", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/go7007/go7007-fw.c", i32 213, i32 17}
!44 = !{ptr @bits_ac_chrominance, !45, !"bits_ac_chrominance", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/go7007/go7007-fw.c", i32 237, i32 17}
!46 = !{ptr @val_ac_chrominance, !47, !"val_ac_chrominance", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/go7007/go7007-fw.c", i32 241, i32 17}
!48 = !{ptr @addrinctab, !49, !"addrinctab", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/go7007/go7007-fw.c", i32 168, i32 18}
!50 = distinct !{null, !51, !"converge_speed_ipb", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/go7007/go7007-fw.c", i32 90, i32 18}
!52 = distinct !{null, !53, !"converge_speed_ip", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/go7007/go7007-fw.c", i32 76, i32 18}
!54 = !{ptr @LAMBDA_table, !55, !"LAMBDA_table", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/go7007/go7007-fw.c", i32 104, i32 18}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
!66 = !{ptr @mpeg1_sequence_header, ptr @mpeg4_sequence_header}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.peeled.count", i32 1}
