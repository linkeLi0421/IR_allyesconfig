; ModuleID = '/llk/IR_all_yes/drivers/media/usb/pwc/pwc-ctrl.c_pt.bc'
source_filename = "../drivers/media/usb/pwc/pwc-ctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.Nala_table_entry = type { i8, i32, [3 x i8] }
%struct.Kiara_table_entry = type { i8, i16, i16, [12 x i8] }
%struct.Timon_table_entry = type { i8, i16, i16, [13 x i8] }
%struct.pwc_device = type { %struct.video_device, %struct.v4l2_device, %struct.vb2_queue, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [13 x i8], ptr, [3 x ptr], ptr, i32, i32, i32, i32, i32, %union.anon.114, i32, i32, i32, ptr, [64 x i8], %struct.v4l2_ctrl_handler, i16, ptr, ptr, ptr, ptr, %struct.anon.116, %struct.anon.117, %struct.anon.118, ptr, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.120, [3 x ptr] }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.114 = type { %struct.pwc_dec23_private }
%struct.pwc_dec23_private = type { %struct.mutex, i8, i8, i32, i32, i32, i32, i32, ptr, [16 x i32], [16 x [1024 x i8]], [16 x [1024 x i8]], [16 x [256 x i8]], [16 x [256 x i8]], [256 x [12 x i32]], [8 x [256 x i8]], [256 x i32], [256 x i32] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.116 = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.anon.117 = type { ptr, ptr, i32, i32, i32 }
%struct.anon.118 = type { ptr, ptr, i32, i32, i32 }
%struct.anon.119 = type { ptr, ptr }
%struct.anon.120 = type { ptr, ptr, ptr, ptr }

@pwc_trace = external dso_local local_unnamed_addr global i32, align 4
@pwc_set_video_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017pwc: set_video_mode(%dx%d @ %d, pixfmt %08x).\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pwc_set_video_mode\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/media/usb/pwc/pwc-ctrl.c\00", [63 x i8] zeroinitializer }, align 32
@pwc_set_video_mode._entry_ptr = internal global ptr @pwc_set_video_mode._entry, section ".printk_index", align 4
@pwc_set_video_mode._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017pwc: decode_size = %d.\0A\00", [38 x i8] zeroinitializer }, align 32
@pwc_set_video_mode._entry_ptr.5 = internal global ptr @pwc_set_video_mode._entry.3, section ".printk_index", align 4
@pwc_set_video_mode._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013pwc: Failed to set video mode %s@%d fps; return code = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@pwc_set_video_mode._entry_ptr.8 = internal global ptr @pwc_set_video_mode._entry.6, section ".printk_index", align 4
@size2name = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [40 x i8] zeroinitializer }, align 32
@pwc_set_video_mode._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017pwc: Set resolution to %dx%d\0A\00", [32 x i8] zeroinitializer }, align 32
@pwc_set_video_mode._entry_ptr.11 = internal global ptr @pwc_set_video_mode._entry.9, section ".printk_index", align 4
@pwc_camera_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013pwc: Failed to power %s camera (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwc_camera_power\00", [47 x i8] zeroinitializer }, align 32
@pwc_camera_power._entry_ptr = internal global ptr @pwc_camera_power._entry, section ".printk_index", align 4
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@pwc_set_leds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013pwc: Failed to set LED on/off time (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pwc_set_leds\00", [19 x i8] zeroinitializer }, align 32
@pwc_set_leds._entry_ptr = internal global ptr @pwc_set_leds._entry, section ".printk_index", align 4
@__const.set_video_mode_Nala.frames2frames = private unnamed_addr constant [31 x i32] [i32 0, i32 0, i32 0, i32 0, i32 4, i32 5, i32 5, i32 7, i32 7, i32 10, i32 10, i32 10, i32 12, i32 12, i32 15, i32 15, i32 15, i32 15, i32 20, i32 20, i32 20, i32 20, i32 20, i32 24, i32 24, i32 24, i32 24, i32 24, i32 24, i32 24, i32 24], align 4
@__const.set_video_mode_Nala.frames2table = private unnamed_addr constant [31 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5, i32 5, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7], align 4
@Nala_table = internal global { [6 x [8 x %struct.Nala_table_entry]], [128 x i8] } { [6 x [8 x %struct.Nala_table_entry]] [[8 x %struct.Nala_table_entry] [%struct.Nala_table_entry { i8 0, i32 0, [3 x i8] c"\04\01\03" }, %struct.Nala_table_entry { i8 8, i32 0, [3 x i8] c"\05\01\03" }, %struct.Nala_table_entry { i8 7, i32 0, [3 x i8] c"\08\01\03" }, %struct.Nala_table_entry { i8 7, i32 0, [3 x i8] c"\0A\01\03" }, %struct.Nala_table_entry { i8 6, i32 0, [3 x i8] c"\0C\01\03" }, %struct.Nala_table_entry { i8 5, i32 0, [3 x i8] c"\0F\01\03" }, %struct.Nala_table_entry { i8 4, i32 0, [3 x i8] c"\14\01\03" }, %struct.Nala_table_entry { i8 3, i32 0, [3 x i8] c"\18\01\03" }], [8 x %struct.Nala_table_entry] zeroinitializer, [8 x %struct.Nala_table_entry] [%struct.Nala_table_entry { i8 0, i32 0, [3 x i8] c"\04\01\02" }, %struct.Nala_table_entry { i8 8, i32 0, [3 x i8] c"\05\01\02" }, %struct.Nala_table_entry { i8 7, i32 0, [3 x i8] c"\08\01\02" }, %struct.Nala_table_entry { i8 6, i32 0, [3 x i8] c"\0A\01\02" }, %struct.Nala_table_entry { i8 5, i32 0, [3 x i8] c"\0C\01\02" }, %struct.Nala_table_entry { i8 4, i32 0, [3 x i8] c"\0F\01\02" }, %struct.Nala_table_entry { i8 1, i32 0, [3 x i8] c"\14\01\02" }, %struct.Nala_table_entry { i8 1, i32 0, [3 x i8] c"\18\01\02" }], [8 x %struct.Nala_table_entry] zeroinitializer, [8 x %struct.Nala_table_entry] [%struct.Nala_table_entry { i8 4, i32 0, [3 x i8] c"\04\01\01" }, %struct.Nala_table_entry { i8 7, i32 1, [3 x i8] c"\05\03\01" }, %struct.Nala_table_entry { i8 6, i32 1, [3 x i8] c"\08\03\01" }, %struct.Nala_table_entry { i8 4, i32 1, [3 x i8] c"\0A\03\01" }, %struct.Nala_table_entry { i8 3, i32 1, [3 x i8] c"\0C\03\01" }, %struct.Nala_table_entry { i8 2, i32 1, [3 x i8] c"\0F\03\01" }, %struct.Nala_table_entry zeroinitializer, %struct.Nala_table_entry zeroinitializer], [8 x %struct.Nala_table_entry] zeroinitializer], [128 x i8] zeroinitializer }, align 32
@pwc_image_sizes = external dso_local local_unnamed_addr constant [6 x [2 x i32]], align 4
@send_video_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013pwc: send_video_command error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"send_video_command\00", [45 x i8] zeroinitializer }, align 32
@send_video_command._entry_ptr = internal global ptr @send_video_command._entry, section ".printk_index", align 4
@Kiara_table = external dso_local constant [6 x [6 x [4 x %struct.Kiara_table_entry]]], align 2
@set_video_mode_Kiara._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017pwc: frame_size=%d, vframes=%d, vsize=%d, vbandlength=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set_video_mode_Kiara\00", [43 x i8] zeroinitializer }, align 32
@set_video_mode_Kiara._entry_ptr = internal global ptr @set_video_mode_Kiara._entry, section ".printk_index", align 4
@Timon_table = external dso_local constant [6 x [6 x [4 x %struct.Timon_table_entry]]], align 2
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"subQCIF\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"QSIF\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"QCIF\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SIF\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CIF\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VGA\00", [28 x i8] zeroinitializer }, align 32
@Nala_fps_vector = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 5, i32 7, i32 10, i32 12, i32 15, i32 20, i32 24], [32 x i8] zeroinitializer }, align 32
@Kiara_fps_vector = external dso_local local_unnamed_addr constant [6 x i32], align 4
@Timon_fps_vector = external dso_local local_unnamed_addr constant [6 x i32], align 4
@recv_control_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013pwc: recv_control_msg error %d req %02x val %04x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"recv_control_msg\00", [47 x i8] zeroinitializer }, align 32
@recv_control_msg._entry_ptr = internal global ptr @recv_control_msg._entry, section ".printk_index", align 4
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 324, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 327, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 340, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [10 x i8] c"size2name\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 59, i32 20 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 344, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 491, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 518, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [11 x i8] c"Nala_table\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 88, i32 32 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 126, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 314, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 61, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 62, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 63, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 64, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 65, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 66, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [16 x i8] c"Nala_fps_vector\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 86, i32 21 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private constant [36 x i8] c"../drivers/media/usb/pwc/pwc-ctrl.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 106, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @pwc_camera_power._entry, ptr @pwc_camera_power._entry_ptr, ptr @pwc_set_leds._entry, ptr @pwc_set_leds._entry_ptr, ptr @pwc_set_video_mode._entry, ptr @pwc_set_video_mode._entry.3, ptr @pwc_set_video_mode._entry.6, ptr @pwc_set_video_mode._entry.9, ptr @pwc_set_video_mode._entry_ptr, ptr @pwc_set_video_mode._entry_ptr.11, ptr @pwc_set_video_mode._entry_ptr.5, ptr @pwc_set_video_mode._entry_ptr.8, ptr @recv_control_msg._entry, ptr @recv_control_msg._entry_ptr, ptr @send_video_command._entry, ptr @send_video_command._entry_ptr, ptr @set_video_mode_Kiara._entry, ptr @set_video_mode_Kiara._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @size2name, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @Nala_table, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @Nala_fps_vector, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_set_video_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_set_video_mode._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_set_video_mode._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @size2name to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_set_video_mode._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_camera_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwc_set_leds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Nala_table to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_video_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_video_mode_Kiara._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Nala_fps_vector to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_control_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @send_control_msg(ptr nocapture noundef readonly %pdev, i8 noundef zeroext %request, i16 noundef zeroext %value, ptr noundef %buf, i32 noundef %buflen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %udev = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 7
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i = shl i32 %3, 8
  %or = or i32 %shl.i, -2147483648
  %vcinterface = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 12
  %4 = ptrtoint ptr %vcinterface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vcinterface, align 8
  %conv = trunc i32 %5 to i16
  %conv2 = trunc i32 %buflen to i16
  %call3 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or, i8 noundef zeroext %request, i8 noundef zeroext 64, i16 noundef zeroext %value, i16 noundef zeroext %conv, ptr noundef %buf, i16 noundef zeroext %conv2, i32 noundef 5000) #5
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwc_set_video_mode(ptr noundef %pdev, i32 noundef %width, i32 noundef %height, i32 noundef %pixfmt, i32 noundef %frames, ptr nocapture noundef %compression, i32 noundef %send_to_cam) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pwc_trace to i32))
  %0 = load i32, ptr @pwc_trace, align 4
  %and = and i32 %0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %width, i32 noundef %height, i32 noundef %frames, i32 noundef %pixfmt) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call i32 @pwc_get_size(ptr noundef %pdev, i32 noundef %width, i32 noundef %height) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pwc_trace to i32))
  %1 = load i32, ptr @pwc_trace, align 4
  %and6 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.end3.do.end16_crit_edge, label %do.end11

do.end3.do.end16_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end16

do.end11:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call4) #8
  br label %do.end16

do.end16:                                         ; preds = %do.end11, %do.end3.do.end16_crit_edge
  %type = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 8
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 675, i32 %3)
  %cmp = icmp slt i32 %3, 675
  br i1 %cmp, label %if.then17, label %if.else

if.then17:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call4)
  %4 = icmp ugt i32 %call4, 4
  br i1 %4, label %if.then17.do.end31_crit_edge, label %if.end.i

if.then17.do.end31_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end31

if.end.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %frames)
  %cmp2.i = icmp slt i32 %frames, 4
  br i1 %cmp2.i, label %if.end.i.if.end12.i_crit_edge, label %if.else.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call4)
  %cmp4.i = icmp ugt i32 %call4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %frames)
  %cmp5.i = icmp ugt i32 %frames, 15
  %or.cond97.i = and i1 %cmp5.i, %cmp4.i
  %5 = tail call i32 @llvm.smin.i32(i32 %frames, i32 25) #5
  %spec.select.i = select i1 %or.cond97.i, i32 15, i32 %5
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %if.end.i.if.end12.i_crit_edge
  %frames.addr.0.i = phi i32 [ 4, %if.end.i.if.end12.i_crit_edge ], [ %spec.select.i, %if.else.i ]
  %arrayidx.i = getelementptr [31 x i32], ptr @__const.set_video_mode_Nala.frames2frames, i32 0, i32 %frames.addr.0.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %arrayidx13.i = getelementptr [31 x i32], ptr @__const.set_video_mode_Nala.frames2table, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx13.i, align 4
  %arrayidx15.i = getelementptr [6 x [8 x %struct.Nala_table_entry]], ptr @Nala_table, i32 0, i32 %call4, i32 %9
  %10 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp16.i = icmp eq i8 %11, 0
  br i1 %cmp16.i, label %if.end12.i.do.end31_crit_edge, label %if.end19.i

if.end12.i.do.end31_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end31

if.end19.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %send_to_cam)
  %tobool.not.i = icmp eq i32 %send_to_cam, 0
  br i1 %tobool.not.i, label %if.end19.i.if.end25.i_crit_edge, label %if.then20.i

if.end19.i.if.end25.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.i

if.then20.i:                                      ; preds = %if.end19.i
  %vendpoint.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 11
  %12 = ptrtoint ptr %vendpoint.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vendpoint.i, align 4
  %mode.i = getelementptr [6 x [8 x %struct.Nala_table_entry]], ptr @Nala_table, i32 0, i32 %call4, i32 %9, i32 2
  %ctrl_buf.i.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 25
  %14 = ptrtoint ptr %ctrl_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctrl_buf.i.i, align 4
  %16 = call ptr @memcpy(ptr %15, ptr %mode.i, i32 3)
  %udev.i.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 7
  %17 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udev.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i.i = shl i32 %20, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %conv.i.i = trunc i32 %13 to i16
  %21 = load ptr, ptr %ctrl_buf.i.i, align 4
  %call4.i.i = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or.i.i, i8 noundef zeroext 7, i8 noundef zeroext 64, i16 noundef zeroext 256, i16 noundef zeroext %conv.i.i, ptr noundef %21, i16 noundef zeroext 3, i32 noundef 5000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i.i)
  %cmp.i.i = icmp sgt i32 %call4.i.i, -1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then20.i.do.end31.sink.split_crit_edge

if.then20.i.do.end31.sink.split_crit_edge:        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end31.sink.split

if.then.i.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #7
  %cmd_buf.i.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 24
  %22 = call ptr @memcpy(ptr %cmd_buf.i.i, ptr %mode.i, i32 3)
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then.i.i, %if.end19.i.if.end25.i_crit_edge
  %compressed.i = getelementptr [6 x [8 x %struct.Nala_table_entry]], ptr @Nala_table, i32 0, i32 %call4, i32 %9, i32 1
  %23 = ptrtoint ptr %compressed.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %compressed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool26.not.i = icmp ne i32 %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %pixfmt)
  %cmp28.i = icmp eq i32 %pixfmt, 842093913
  %or.cond98.i = and i1 %cmp28.i, %tobool26.not.i
  br i1 %or.cond98.i, label %if.then30.i, label %if.end25.i.if.end33.i_crit_edge

if.end25.i.if.end33.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.i

if.then30.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %mode31.i = getelementptr [6 x [8 x %struct.Nala_table_entry]], ptr @Nala_table, i32 0, i32 %call4, i32 %9, i32 2
  tail call void @pwc_dec1_init(ptr noundef %pdev, ptr noundef %mode31.i) #5
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then30.i, %if.end25.i.if.end33.i_crit_edge
  %pixfmt34.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 15
  %25 = ptrtoint ptr %pixfmt34.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %pixfmt, ptr %pixfmt34.i, align 4
  %vframes.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 14
  %26 = ptrtoint ptr %vframes.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %7, ptr %vframes.i, align 8
  %27 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx15.i, align 4
  %conv36.i = zext i8 %28 to i32
  %valternate.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 13
  %29 = ptrtoint ptr %valternate.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv36.i, ptr %valternate.i, align 4
  %arrayidx37.i = getelementptr [6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 %call4
  %30 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx37.i, align 4
  %width.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 35
  %32 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %width.i, align 8
  %arrayidx40.i = getelementptr [6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 %call4, i32 1
  %33 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx40.i, align 4
  %height.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 36
  %35 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %height.i, align 4
  %mul.i = mul i32 %31, 3
  %mul43.i = mul i32 %mul.i, %34
  %div.i = sdiv i32 %mul43.i, 2
  %frame_size.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 30
  %36 = ptrtoint ptr %frame_size.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div.i, ptr %frame_size.i, align 8
  %37 = ptrtoint ptr %compressed.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %compressed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool45.not.i = icmp eq i32 %38, 0
  br i1 %tobool45.not.i, label %if.else57.i, label %if.then46.i

if.then46.i:                                      ; preds = %if.end33.i
  %release.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 9
  %39 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %release.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %40)
  %cmp47.i = icmp slt i32 %40, 5
  %vbandlength.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 20
  br i1 %cmp47.i, label %if.then49.i, label %if.else52.i

if.then49.i:                                      ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %vbandlength.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 528, ptr %vbandlength.i, align 8
  %div51.i = sdiv i32 %mul43.i, 8
  %42 = ptrtoint ptr %frame_size.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div51.i, ptr %frame_size.i, align 8
  br label %if.end59.i

if.else52.i:                                      ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %vbandlength.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 704, ptr %vbandlength.i, align 8
  %div55.i = sdiv i32 %mul43.i, 6
  %44 = ptrtoint ptr %frame_size.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %div55.i, ptr %frame_size.i, align 8
  br label %if.end59.i

if.else57.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  %vbandlength58.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 20
  %45 = ptrtoint ptr %vbandlength58.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %vbandlength58.i, align 8
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.else57.i, %if.else52.i, %if.then49.i
  %46 = ptrtoint ptr %compression to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3, ptr %compression, align 4
  br label %if.end34

if.else:                                          ; preds = %do.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 699, i32 %3)
  %cmp20 = icmp ugt i32 %3, 699
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call4)
  %cmp.i = icmp sgt i32 %call4, 5
  br i1 %cmp20, label %if.then21, label %if.else23

if.then21:                                        ; preds = %if.else
  br i1 %cmp.i, label %if.then21.do.end31_crit_edge, label %lor.lhs.false.i

if.then21.do.end31_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end31

lor.lhs.false.i:                                  ; preds = %if.then21
  %47 = ptrtoint ptr %compression to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %compression, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %49 = icmp ugt i32 %48, 3
  br i1 %49, label %lor.lhs.false.i.do.end31_crit_edge, label %if.end.i82

lor.lhs.false.i.do.end31_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end31

if.end.i82:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %frames)
  %cmp4.i81 = icmp slt i32 %frames, 5
  br i1 %cmp4.i81, label %if.end.i82.if.end14.i_crit_edge, label %if.else.i83

if.end.i82.if.end14.i_crit_edge:                  ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.else.i83:                                      ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call4)
  %cmp6.i = icmp eq i32 %call4, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %frames)
  %cmp7.i = icmp ugt i32 %frames, 15
  %or.cond123.i = and i1 %cmp7.i, %cmp6.i
  br i1 %or.cond123.i, label %if.else.i83.if.end14.i_crit_edge, label %if.else9.i

if.else.i83.if.end14.i_crit_edge:                 ; preds = %if.else.i83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.else9.i:                                       ; preds = %if.else.i83
  call void @__sanitizer_cov_trace_pc() #7
  %50 = tail call i32 @llvm.smin.i32(i32 %frames, i32 30) #5
  %phi.bo127.lhs.trunc.i = trunc i32 %50 to i8
  %phi.bo127128.i = udiv i8 %phi.bo127.lhs.trunc.i, 5
  %phi.bo127.zext.i = zext i8 %phi.bo127128.i to i32
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else9.i, %if.else.i83.if.end14.i_crit_edge, %if.end.i82.if.end14.i_crit_edge
  %frames.addr.0.i84 = phi i32 [ %phi.bo127.zext.i, %if.else9.i ], [ 1, %if.end.i82.if.end14.i_crit_edge ], [ 3, %if.else.i83.if.end14.i_crit_edge ]
  %sub.i = add nsw i32 %frames.addr.0.i84, -1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end20.i.do.body.i_crit_edge, %if.end14.i
  %51 = ptrtoint ptr %compression to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %compression, align 4
  %arrayidx16.i = getelementptr [6 x [6 x [4 x %struct.Kiara_table_entry]]], ptr @Kiara_table, i32 0, i32 %call4, i32 %sub.i, i32 %52
  %53 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx16.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp17.not.i = icmp eq i8 %54, 0
  br i1 %cmp17.not.i, label %if.end20.i, label %if.end28.i

if.end20.i:                                       ; preds = %do.body.i
  %inc.i = add i32 %52, 1
  %55 = ptrtoint ptr %compression to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %inc.i, ptr %compression, align 4
  %cmp21.i = icmp slt i32 %inc.i, 4
  br i1 %cmp21.i, label %if.end20.i.do.body.i_crit_edge, label %if.end20.i.do.end31_crit_edge

if.end20.i.do.end31_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end31

if.end20.i.do.body.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.end28.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %send_to_cam)
  %tobool.not.i85 = icmp eq i32 %send_to_cam, 0
  br i1 %tobool.not.i85, label %if.end28.i.if.end34.i_crit_edge, label %if.then29.i

if.end28.i.if.end34.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34.i

if.then29.i:                                      ; preds = %if.end28.i
  %mode.i86 = getelementptr [6 x [6 x [4 x %struct.Kiara_table_entry]]], ptr @Kiara_table, i32 0, i32 %call4, i32 %sub.i, i32 %52, i32 3
  %ctrl_buf.i.i87 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 25
  %56 = ptrtoint ptr %ctrl_buf.i.i87 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctrl_buf.i.i87, align 4
  %58 = call ptr @memcpy(ptr %57, ptr %mode.i86, i32 12)
  %udev.i.i88 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 7
  %59 = ptrtoint ptr %udev.i.i88 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %udev.i.i88, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 8
  %shl.i.i.i89 = shl i32 %62, 8
  %or.i.i90 = or i32 %shl.i.i.i89, -2147483648
  %63 = load ptr, ptr %ctrl_buf.i.i87, align 4
  %call4.i.i91 = tail call i32 @usb_control_msg(ptr noundef %60, i32 noundef %or.i.i90, i8 noundef zeroext 7, i8 noundef zeroext 64, i16 noundef zeroext 256, i16 noundef zeroext 4, ptr noundef %63, i16 noundef zeroext 12, i32 noundef 5000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i.i91)
  %cmp.i.i92 = icmp sgt i32 %call4.i.i91, -1
  br i1 %cmp.i.i92, label %if.then.i.i94, label %if.then29.i.do.end31.sink.split_crit_edge

if.then29.i.do.end31.sink.split_crit_edge:        ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end31.sink.split

if.then.i.i94:                                    ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #7
  %cmd_buf.i.i93 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 24
  %64 = call ptr @memcpy(ptr %cmd_buf.i.i93, ptr %mode.i86, i32 12)
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then.i.i94, %if.end28.i.if.end34.i_crit_edge
  %bandlength.i = getelementptr [6 x [6 x [4 x %struct.Kiara_table_entry]]], ptr @Kiara_table, i32 0, i32 %call4, i32 %sub.i, i32 %52, i32 2
  %65 = ptrtoint ptr %bandlength.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %bandlength.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %cmp36.not.i = icmp ne i16 %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %pixfmt)
  %cmp39.i = icmp eq i32 %pixfmt, 842093913
  %or.cond124.i = and i1 %cmp39.i, %cmp36.not.i
  br i1 %or.cond124.i, label %if.then41.i, label %if.end34.i.if.end44.i_crit_edge

if.end34.i.if.end44.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.i

if.then41.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  %mode42.i = getelementptr [6 x [6 x [4 x %struct.Kiara_table_entry]]], ptr @Kiara_table, i32 0, i32 %call4, i32 %sub.i, i32 %52, i32 3
  tail call void @pwc_dec23_init(ptr noundef %pdev, ptr noundef %mode42.i) #5
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then41.i, %if.end34.i.if.end44.i_crit_edge
  %pixfmt45.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 15
  %67 = ptrtoint ptr %pixfmt45.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %pixfmt, ptr %pixfmt45.i, align 4
  %mul.i96 = mul nuw nsw i32 %frames.addr.0.i84, 5
  %vframes.i97 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 14
  %68 = ptrtoint ptr %vframes.i97 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %mul.i96, ptr %vframes.i97, align 8
  %conv47.i = zext i8 %54 to i32
  %valternate.i98 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 13
  %69 = ptrtoint ptr %valternate.i98 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv47.i, ptr %valternate.i98, align 4
  %arrayidx48.i = getelementptr [6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 %call4
  %70 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx48.i, align 4
  %width.i99 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 35
  %72 = ptrtoint ptr %width.i99 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %width.i99, align 8
  %arrayidx51.i = getelementptr [6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 %call4, i32 1
  %73 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx51.i, align 4
  %height.i100 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 36
  %75 = ptrtoint ptr %height.i100 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %height.i100, align 4
  %conv53.i = zext i16 %66 to i32
  %vbandlength.i101 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 20
  %76 = ptrtoint ptr %vbandlength.i101 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv53.i, ptr %vbandlength.i101, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %cmp55.not.i = icmp eq i16 %66, 0
  br i1 %cmp55.not.i, label %if.else62.i, label %if.then57.i

if.then57.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul60.i = mul i32 %74, %conv53.i
  %div61.i = sdiv i32 %mul60.i, 4
  br label %do.body70.i

if.else62.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul65.i = mul i32 %71, 12
  %mul66.i = mul i32 %mul65.i, %74
  %div67.i = sdiv i32 %mul66.i, 8
  br label %do.body70.i

do.body70.i:                                      ; preds = %if.else62.i, %if.then57.i
  %div61.sink.i = phi i32 [ %div67.i, %if.else62.i ], [ %div61.i, %if.then57.i ]
  %77 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 30
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %div61.sink.i, ptr %77, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pwc_trace to i32))
  %79 = load i32, ptr @pwc_trace, align 4
  %and.i = and i32 %79, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool71.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool71.not.i, label %do.body70.i.if.end34_crit_edge, label %do.end75.i

do.body70.i.if.end34_crit_edge:                   ; preds = %do.body70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

do.end75.i:                                       ; preds = %do.body70.i
  call void @__sanitizer_cov_trace_pc() #7
  %call79.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %div61.sink.i, i32 noundef %mul.i96, i32 noundef %call4, i32 noundef %conv53.i) #8
  br label %if.end34

if.else23:                                        ; preds = %if.else
  br i1 %cmp.i, label %if.else23.do.end31_crit_edge, label %lor.lhs.false.i104

if.else23.do.end31_crit_edge:                     ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end31

lor.lhs.false.i104:                               ; preds = %if.else23
  %80 = ptrtoint ptr %compression to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %compression, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %81)
  %82 = icmp ugt i32 %81, 3
  br i1 %82, label %lor.lhs.false.i104.do.end31_crit_edge, label %if.end.i106

lor.lhs.false.i104.do.end31_crit_edge:            ; preds = %lor.lhs.false.i104
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end31

if.end.i106:                                      ; preds = %lor.lhs.false.i104
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %frames)
  %cmp4.i105 = icmp slt i32 %frames, 5
  br i1 %cmp4.i105, label %if.end.i106.if.end14.i113_crit_edge, label %if.else.i109

if.end.i106.if.end14.i113_crit_edge:              ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i113

if.else.i109:                                     ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call4)
  %cmp6.i107 = icmp eq i32 %call4, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %frames)
  %cmp7.i108 = icmp ugt i32 %frames, 15
  %or.cond109.i = and i1 %cmp7.i108, %cmp6.i107
  br i1 %or.cond109.i, label %if.else.i109.if.end14.i113_crit_edge, label %if.else9.i110

if.else.i109.if.end14.i113_crit_edge:             ; preds = %if.else.i109
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i113

if.else9.i110:                                    ; preds = %if.else.i109
  call void @__sanitizer_cov_trace_pc() #7
  %83 = tail call i32 @llvm.smin.i32(i32 %frames, i32 30) #5
  %phi.bo113.lhs.trunc.i = trunc i32 %83 to i8
  %phi.bo113114.i = udiv i8 %phi.bo113.lhs.trunc.i, 5
  %phi.bo113.zext.i = zext i8 %phi.bo113114.i to i32
  br label %if.end14.i113

if.end14.i113:                                    ; preds = %if.else9.i110, %if.else.i109.if.end14.i113_crit_edge, %if.end.i106.if.end14.i113_crit_edge
  %frames.addr.0.i111 = phi i32 [ %phi.bo113.zext.i, %if.else9.i110 ], [ 1, %if.end.i106.if.end14.i113_crit_edge ], [ 3, %if.else.i109.if.end14.i113_crit_edge ]
  %sub.i112 = add nsw i32 %frames.addr.0.i111, -1
  br label %do.body.i116

do.body.i116:                                     ; preds = %if.end20.i119.do.body.i116_crit_edge, %if.end14.i113
  %84 = ptrtoint ptr %compression to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %compression, align 4
  %arrayidx16.i114 = getelementptr [6 x [6 x [4 x %struct.Timon_table_entry]]], ptr @Timon_table, i32 0, i32 %call4, i32 %sub.i112, i32 %85
  %86 = ptrtoint ptr %arrayidx16.i114 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx16.i114, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %cmp17.not.i115 = icmp eq i8 %87, 0
  br i1 %cmp17.not.i115, label %if.end20.i119, label %if.end28.i121

if.end20.i119:                                    ; preds = %do.body.i116
  %inc.i117 = add i32 %85, 1
  %88 = ptrtoint ptr %compression to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %inc.i117, ptr %compression, align 4
  %cmp21.i118 = icmp slt i32 %inc.i117, 4
  br i1 %cmp21.i118, label %if.end20.i119.do.body.i116_crit_edge, label %if.end20.i119.do.end31_crit_edge

if.end20.i119.do.end31_crit_edge:                 ; preds = %if.end20.i119
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end31

if.end20.i119.do.body.i116_crit_edge:             ; preds = %if.end20.i119
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i116

if.end28.i121:                                    ; preds = %do.body.i116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %send_to_cam)
  %tobool.not.i120 = icmp eq i32 %send_to_cam, 0
  br i1 %tobool.not.i120, label %if.end28.i121.if.end34.i139_crit_edge, label %if.then29.i131

if.end28.i121.if.end34.i139_crit_edge:            ; preds = %if.end28.i121
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34.i139

if.then29.i131:                                   ; preds = %if.end28.i121
  %vendpoint.i122 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 11
  %89 = ptrtoint ptr %vendpoint.i122 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %vendpoint.i122, align 4
  %mode.i123 = getelementptr [6 x [6 x [4 x %struct.Timon_table_entry]]], ptr @Timon_table, i32 0, i32 %call4, i32 %sub.i112, i32 %85, i32 3
  %ctrl_buf.i.i124 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 25
  %91 = ptrtoint ptr %ctrl_buf.i.i124 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ctrl_buf.i.i124, align 4
  %93 = call ptr @memcpy(ptr %92, ptr %mode.i123, i32 13)
  %udev.i.i125 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 7
  %94 = ptrtoint ptr %udev.i.i125 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %udev.i.i125, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 8
  %shl.i.i.i126 = shl i32 %97, 8
  %or.i.i127 = or i32 %shl.i.i.i126, -2147483648
  %conv.i.i128 = trunc i32 %90 to i16
  %98 = load ptr, ptr %ctrl_buf.i.i124, align 4
  %call4.i.i129 = tail call i32 @usb_control_msg(ptr noundef %95, i32 noundef %or.i.i127, i8 noundef zeroext 7, i8 noundef zeroext 64, i16 noundef zeroext 256, i16 noundef zeroext %conv.i.i128, ptr noundef %98, i16 noundef zeroext 13, i32 noundef 5000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i.i129)
  %cmp.i.i130 = icmp sgt i32 %call4.i.i129, -1
  br i1 %cmp.i.i130, label %if.then.i.i133, label %if.then29.i131.do.end31.sink.split_crit_edge

if.then29.i131.do.end31.sink.split_crit_edge:     ; preds = %if.then29.i131
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end31.sink.split

if.then.i.i133:                                   ; preds = %if.then29.i131
  call void @__sanitizer_cov_trace_pc() #7
  %cmd_buf.i.i132 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 24
  %99 = call ptr @memcpy(ptr %cmd_buf.i.i132, ptr %mode.i123, i32 13)
  br label %if.end34.i139

if.end34.i139:                                    ; preds = %if.then.i.i133, %if.end28.i121.if.end34.i139_crit_edge
  %bandlength.i136 = getelementptr [6 x [6 x [4 x %struct.Timon_table_entry]]], ptr @Timon_table, i32 0, i32 %call4, i32 %sub.i112, i32 %85, i32 2
  %100 = ptrtoint ptr %bandlength.i136 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %bandlength.i136, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %101)
  %cmp36.not.i137 = icmp ne i16 %101, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %pixfmt)
  %cmp39.i138 = icmp eq i32 %pixfmt, 842093913
  %or.cond110.i = and i1 %cmp39.i138, %cmp36.not.i137
  br i1 %or.cond110.i, label %if.then41.i141, label %if.end34.i139.if.end44.i153_crit_edge

if.end34.i139.if.end44.i153_crit_edge:            ; preds = %if.end34.i139
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.i153

if.then41.i141:                                   ; preds = %if.end34.i139
  call void @__sanitizer_cov_trace_pc() #7
  %mode42.i140 = getelementptr [6 x [6 x [4 x %struct.Timon_table_entry]]], ptr @Timon_table, i32 0, i32 %call4, i32 %sub.i112, i32 %85, i32 3
  tail call void @pwc_dec23_init(ptr noundef %pdev, ptr noundef %mode42.i140) #5
  br label %if.end44.i153

if.end44.i153:                                    ; preds = %if.then41.i141, %if.end34.i139.if.end44.i153_crit_edge
  %pixfmt45.i142 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 15
  %102 = ptrtoint ptr %pixfmt45.i142 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %pixfmt, ptr %pixfmt45.i142, align 4
  %mul.i143 = mul nuw nsw i32 %frames.addr.0.i111, 5
  %vframes.i144 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 14
  %103 = ptrtoint ptr %vframes.i144 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %mul.i143, ptr %vframes.i144, align 8
  %conv47.i145 = zext i8 %87 to i32
  %valternate.i146 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 13
  %104 = ptrtoint ptr %valternate.i146 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %conv47.i145, ptr %valternate.i146, align 4
  %arrayidx48.i147 = getelementptr [6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 %call4
  %105 = ptrtoint ptr %arrayidx48.i147 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx48.i147, align 4
  %width.i148 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 35
  %107 = ptrtoint ptr %width.i148 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %width.i148, align 8
  %arrayidx51.i149 = getelementptr [6 x [2 x i32]], ptr @pwc_image_sizes, i32 0, i32 %call4, i32 1
  %108 = ptrtoint ptr %arrayidx51.i149 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx51.i149, align 4
  %height.i150 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 36
  %110 = ptrtoint ptr %height.i150 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %height.i150, align 4
  %conv53.i151 = zext i16 %101 to i32
  %vbandlength.i152 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 20
  %111 = ptrtoint ptr %vbandlength.i152 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %conv53.i151, ptr %vbandlength.i152, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %101)
  %cmp56.not.i = icmp eq i16 %101, 0
  br i1 %cmp56.not.i, label %if.else64.i, label %if.then58.i

if.then58.i:                                      ; preds = %if.end44.i153
  call void @__sanitizer_cov_trace_pc() #7
  %mul62.i = mul i32 %109, %conv53.i151
  %div63.i = sdiv i32 %mul62.i, 4
  %frame_size.i154 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 30
  %112 = ptrtoint ptr %frame_size.i154 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %div63.i, ptr %frame_size.i154, align 8
  br label %if.end34

if.else64.i:                                      ; preds = %if.end44.i153
  call void @__sanitizer_cov_trace_pc() #7
  %mul67.i = mul i32 %106, 12
  %mul68.i = mul i32 %mul67.i, %109
  %div69.i = sdiv i32 %mul68.i, 8
  %frame_size70.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 30
  %113 = ptrtoint ptr %frame_size70.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %div69.i, ptr %frame_size70.i, align 8
  br label %if.end34

do.end31.sink.split:                              ; preds = %if.then29.i131.do.end31.sink.split_crit_edge, %if.then29.i.do.end31.sink.split_crit_edge, %if.then20.i.do.end31.sink.split_crit_edge
  %call4.i.i.sink = phi i32 [ %call4.i.i, %if.then20.i.do.end31.sink.split_crit_edge ], [ %call4.i.i91, %if.then29.i.do.end31.sink.split_crit_edge ], [ %call4.i.i129, %if.then29.i131.do.end31.sink.split_crit_edge ]
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %call4.i.i.sink) #8
  br label %do.end31

do.end31:                                         ; preds = %do.end31.sink.split, %if.end20.i119.do.end31_crit_edge, %lor.lhs.false.i104.do.end31_crit_edge, %if.else23.do.end31_crit_edge, %if.end20.i.do.end31_crit_edge, %lor.lhs.false.i.do.end31_crit_edge, %if.then21.do.end31_crit_edge, %if.end12.i.do.end31_crit_edge, %if.then17.do.end31_crit_edge
  %ret.0.ph = phi i32 [ -22, %if.else23.do.end31_crit_edge ], [ -22, %lor.lhs.false.i104.do.end31_crit_edge ], [ -22, %if.then21.do.end31_crit_edge ], [ -22, %lor.lhs.false.i.do.end31_crit_edge ], [ -22, %if.end12.i.do.end31_crit_edge ], [ -22, %if.then17.do.end31_crit_edge ], [ %call4.i.i.sink, %do.end31.sink.split ], [ -2, %if.end20.i.do.end31_crit_edge ], [ -2, %if.end20.i119.do.end31_crit_edge ]
  %arrayidx = getelementptr [6 x ptr], ptr @size2name, i32 0, i32 %call4
  %114 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx, align 4
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %115, i32 noundef %frames, i32 noundef %ret.0.ph) #8
  br label %cleanup

if.end34:                                         ; preds = %if.else64.i, %if.then58.i, %do.end75.i, %do.body70.i.if.end34_crit_edge, %if.end59.i
  %frame_size = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 30
  %116 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %frame_size, align 8
  %frame_header_size = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 28
  %118 = ptrtoint ptr %frame_header_size to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %frame_header_size, align 8
  %add = add i32 %119, %117
  %frame_trailer_size = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 29
  %120 = ptrtoint ptr %frame_trailer_size to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %frame_trailer_size, align 4
  %add35 = add i32 %add, %121
  %frame_total_size = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 31
  %122 = ptrtoint ptr %frame_total_size to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %add35, ptr %frame_total_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pwc_trace to i32))
  %123 = load i32, ptr @pwc_trace, align 4
  %and37 = and i32 %123, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end34.cleanup_crit_edge, label %do.end42

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %width44 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 35
  %124 = ptrtoint ptr %width44 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %width44, align 8
  %height45 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 36
  %126 = ptrtoint ptr %height45 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %height45, align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %125, i32 noundef %127) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %if.end34.cleanup_crit_edge, %do.end31
  %retval.0 = phi i32 [ %ret.0.ph, %do.end31 ], [ 0, %do.end42 ], [ 0, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwc_get_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pwc_get_fps(ptr nocapture noundef readonly %pdev, i32 noundef %index, i32 noundef %size) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 675, i32 %1)
  %cmp = icmp slt i32 %1, 675
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx1.i = getelementptr [6 x [8 x %struct.Nala_table_entry]], ptr @Nala_table, i32 0, i32 %size, i32 0
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.for.inc.i_crit_edge, label %if.then.i

if.then.for.inc.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %if.then
  %dec.i = add i32 %index, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp2.i = icmp eq i32 %index, 0
  br i1 %cmp2.i, label %if.then.i.if.then3.i_crit_edge, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i.if.then3.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3.i

if.then3.i:                                       ; preds = %for.inc.6.i.if.then3.i_crit_edge, %if.then.6.i.if.then3.i_crit_edge, %if.then.5.i.if.then3.i_crit_edge, %if.then.4.i.if.then3.i_crit_edge, %if.then.3.i.if.then3.i_crit_edge, %if.then.2.i.if.then3.i_crit_edge, %if.then.1.i.if.then3.i_crit_edge, %if.then.i.if.then3.i_crit_edge
  %i.03.lcssa.i = phi i32 [ 0, %if.then.i.if.then3.i_crit_edge ], [ 1, %if.then.1.i.if.then3.i_crit_edge ], [ 2, %if.then.2.i.if.then3.i_crit_edge ], [ 3, %if.then.3.i.if.then3.i_crit_edge ], [ 4, %if.then.4.i.if.then3.i_crit_edge ], [ 5, %if.then.5.i.if.then3.i_crit_edge ], [ 6, %if.then.6.i.if.then3.i_crit_edge ], [ 7, %for.inc.6.i.if.then3.i_crit_edge ]
  %arrayidx4.i = getelementptr [8 x i32], ptr @Nala_fps_vector, i32 0, i32 %i.03.lcssa.i
  br label %if.end7.sink.split

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %if.then.for.inc.i_crit_edge
  %index.addr.1.i = phi i32 [ %dec.i, %if.then.i.for.inc.i_crit_edge ], [ %index, %if.then.for.inc.i_crit_edge ]
  %arrayidx1.1.i = getelementptr [6 x [8 x %struct.Nala_table_entry]], ptr @Nala_table, i32 0, i32 %size, i32 1
  %4 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.1.i = icmp eq i8 %5, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  %dec.1.i = add i32 %index.addr.1.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.1.i)
  %cmp2.1.i = icmp eq i32 %index.addr.1.i, 0
  br i1 %cmp2.1.i, label %if.then.1.i.if.then3.i_crit_edge, label %if.then.1.i.for.inc.1.i_crit_edge

if.then.1.i.for.inc.1.i_crit_edge:                ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.then.1.i.if.then3.i_crit_edge:                 ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3.i

for.inc.1.i:                                      ; preds = %if.then.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %index.addr.1.1.i = phi i32 [ %dec.1.i, %if.then.1.i.for.inc.1.i_crit_edge ], [ %index.addr.1.i, %for.inc.i.for.inc.1.i_crit_edge ]
  %arrayidx1.2.i = getelementptr [6 x [8 x %struct.Nala_table_entry]], ptr @Nala_table, i32 0, i32 %size, i32 2
  %6 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx1.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.2.i = icmp eq i8 %7, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  %dec.2.i = add i32 %index.addr.1.1.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.1.1.i)
  %cmp2.2.i = icmp eq i32 %index.addr.1.1.i, 0
  br i1 %cmp2.2.i, label %if.then.2.i.if.then3.i_crit_edge, label %if.then.2.i.for.inc.2.i_crit_edge

if.then.2.i.for.inc.2.i_crit_edge:                ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

if.then.2.i.if.then3.i_crit_edge:                 ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3.i

for.inc.2.i:                                      ; preds = %if.then.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %index.addr.1.2.i = phi i32 [ %dec.2.i, %if.then.2.i.for.inc.2.i_crit_edge ], [ %index.addr.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %arrayidx1.3.i = getelementptr [6 x [8 x %struct.Nala_table_entry]], ptr @Nala_table, i32 0, i32 %size, i32 3
  %8 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx1.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.3.i = icmp eq i8 %9, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.then.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  %dec.3.i = add i32 %index.addr.1.2.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.1.2.i)
  %cmp2.3.i = icmp eq i32 %index.addr.1.2.i, 0
  br i1 %cmp2.3.i, label %if.then.3.i.if.then3.i_crit_edge, label %if.then.3.i.for.inc.3.i_crit_edge

if.then.3.i.for.inc.3.i_crit_edge:                ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i

if.then.3.i.if.then3.i_crit_edge:                 ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3.i

for.inc.3.i:                                      ; preds = %if.then.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %index.addr.1.3.i = phi i32 [ %dec.3.i, %if.then.3.i.for.inc.3.i_crit_edge ], [ %index.addr.1.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ]
  %arrayidx1.4.i = getelementptr [6 x [8 x %struct.Nala_table_entry]], ptr @Nala_table, i32 0, i32 %size, i32 4
  %10 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx1.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.4.i = icmp eq i8 %11, 0
  br i1 %tobool.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.then.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4.i

if.then.4.i:                                      ; preds = %for.inc.3.i
  %dec.4.i = add i32 %index.addr.1.3.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.1.3.i)
  %cmp2.4.i = icmp eq i32 %index.addr.1.3.i, 0
  br i1 %cmp2.4.i, label %if.then.4.i.if.then3.i_crit_edge, label %if.then.4.i.for.inc.4.i_crit_edge

if.then.4.i.for.inc.4.i_crit_edge:                ; preds = %if.then.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4.i

if.then.4.i.if.then3.i_crit_edge:                 ; preds = %if.then.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3.i

for.inc.4.i:                                      ; preds = %if.then.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %index.addr.1.4.i = phi i32 [ %dec.4.i, %if.then.4.i.for.inc.4.i_crit_edge ], [ %index.addr.1.3.i, %for.inc.3.i.for.inc.4.i_crit_edge ]
  %arrayidx1.5.i = getelementptr [6 x [8 x %struct.Nala_table_entry]], ptr @Nala_table, i32 0, i32 %size, i32 5
  %12 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx1.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.5.i = icmp eq i8 %13, 0
  br i1 %tobool.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %if.then.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5.i

if.then.5.i:                                      ; preds = %for.inc.4.i
  %dec.5.i = add i32 %index.addr.1.4.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.1.4.i)
  %cmp2.5.i = icmp eq i32 %index.addr.1.4.i, 0
  br i1 %cmp2.5.i, label %if.then.5.i.if.then3.i_crit_edge, label %if.then.5.i.for.inc.5.i_crit_edge

if.then.5.i.for.inc.5.i_crit_edge:                ; preds = %if.then.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5.i

if.then.5.i.if.then3.i_crit_edge:                 ; preds = %if.then.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3.i

for.inc.5.i:                                      ; preds = %if.then.5.i.for.inc.5.i_crit_edge, %for.inc.4.i.for.inc.5.i_crit_edge
  %index.addr.1.5.i = phi i32 [ %dec.5.i, %if.then.5.i.for.inc.5.i_crit_edge ], [ %index.addr.1.4.i, %for.inc.4.i.for.inc.5.i_crit_edge ]
  %arrayidx1.6.i = getelementptr [6 x [8 x %struct.Nala_table_entry]], ptr @Nala_table, i32 0, i32 %size, i32 6
  %14 = ptrtoint ptr %arrayidx1.6.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx1.6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.6.i = icmp eq i8 %15, 0
  br i1 %tobool.not.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %if.then.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6.i

if.then.6.i:                                      ; preds = %for.inc.5.i
  %dec.6.i = add i32 %index.addr.1.5.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.1.5.i)
  %cmp2.6.i = icmp eq i32 %index.addr.1.5.i, 0
  br i1 %cmp2.6.i, label %if.then.6.i.if.then3.i_crit_edge, label %if.then.6.i.for.inc.6.i_crit_edge

if.then.6.i.for.inc.6.i_crit_edge:                ; preds = %if.then.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6.i

if.then.6.i.if.then3.i_crit_edge:                 ; preds = %if.then.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3.i

for.inc.6.i:                                      ; preds = %if.then.6.i.for.inc.6.i_crit_edge, %for.inc.5.i.for.inc.6.i_crit_edge
  %index.addr.1.6.i = phi i32 [ %dec.6.i, %if.then.6.i.for.inc.6.i_crit_edge ], [ %index.addr.1.5.i, %for.inc.5.i.for.inc.6.i_crit_edge ]
  %arrayidx1.7.i = getelementptr [6 x [8 x %struct.Nala_table_entry]], ptr @Nala_table, i32 0, i32 %size, i32 7
  %16 = ptrtoint ptr %arrayidx1.7.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx1.7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.7.i = icmp ne i8 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.1.6.i)
  %cmp2.7.i = icmp eq i32 %index.addr.1.6.i, 0
  %or.cond.i = select i1 %tobool.not.7.i, i1 %cmp2.7.i, i1 false
  br i1 %or.cond.i, label %for.inc.6.i.if.then3.i_crit_edge, label %for.inc.6.i.if.end7_crit_edge

for.inc.6.i.if.end7_crit_edge:                    ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

for.inc.6.i.if.then3.i_crit_edge:                 ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3.i

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 699, i32 %1)
  %cmp2 = icmp ugt i32 %1, 699
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %arrayidx2.i = getelementptr [6 x [6 x [4 x %struct.Kiara_table_entry]]], ptr @Kiara_table, i32 0, i32 %size, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i16 = icmp eq i8 %19, 0
  br i1 %tobool.not.i16, label %if.then3.for.inc.i22_crit_edge, label %if.then.i18

if.then3.for.inc.i22_crit_edge:                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i22

if.then.i18:                                      ; preds = %if.then3
  %dec.i17 = add i32 %index, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp3.i = icmp eq i32 %index, 0
  br i1 %cmp3.i, label %if.then.i18.if.then4.i_crit_edge, label %if.then.i18.for.inc.i22_crit_edge

if.then.i18.for.inc.i22_crit_edge:                ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i22

if.then.i18.if.then4.i_crit_edge:                 ; preds = %if.then.i18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i

if.then4.i:                                       ; preds = %for.inc.4.i43.if.then4.i_crit_edge, %if.then.4.i39.if.then4.i_crit_edge, %if.then.3.i34.if.then4.i_crit_edge, %if.then.2.i29.if.then4.i_crit_edge, %if.then.1.i24.if.then4.i_crit_edge, %if.then.i18.if.then4.i_crit_edge
  %i.03.lcssa.i19 = phi i32 [ 0, %if.then.i18.if.then4.i_crit_edge ], [ 1, %if.then.1.i24.if.then4.i_crit_edge ], [ 2, %if.then.2.i29.if.then4.i_crit_edge ], [ 3, %if.then.3.i34.if.then4.i_crit_edge ], [ 4, %if.then.4.i39.if.then4.i_crit_edge ], [ 5, %for.inc.4.i43.if.then4.i_crit_edge ]
  %arrayidx5.i = getelementptr [6 x i32], ptr @Kiara_fps_vector, i32 0, i32 %i.03.lcssa.i19
  br label %if.end7.sink.split

for.inc.i22:                                      ; preds = %if.then.i18.for.inc.i22_crit_edge, %if.then3.for.inc.i22_crit_edge
  %index.addr.1.i20 = phi i32 [ %dec.i17, %if.then.i18.for.inc.i22_crit_edge ], [ %index, %if.then3.for.inc.i22_crit_edge ]
  %arrayidx2.1.i = getelementptr [6 x [6 x [4 x %struct.Kiara_table_entry]]], ptr @Kiara_table, i32 0, i32 %size, i32 1, i32 3
  %20 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx2.1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.1.i21 = icmp eq i8 %21, 0
  br i1 %tobool.not.1.i21, label %for.inc.i22.for.inc.1.i27_crit_edge, label %if.then.1.i24

for.inc.i22.for.inc.1.i27_crit_edge:              ; preds = %for.inc.i22
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i27

if.then.1.i24:                                    ; preds = %for.inc.i22
  %dec.1.i23 = add i32 %index.addr.1.i20, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.1.i20)
  %cmp3.1.i = icmp eq i32 %index.addr.1.i20, 0
  br i1 %cmp3.1.i, label %if.then.1.i24.if.then4.i_crit_edge, label %if.then.1.i24.for.inc.1.i27_crit_edge

if.then.1.i24.for.inc.1.i27_crit_edge:            ; preds = %if.then.1.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i27

if.then.1.i24.if.then4.i_crit_edge:               ; preds = %if.then.1.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i

for.inc.1.i27:                                    ; preds = %if.then.1.i24.for.inc.1.i27_crit_edge, %for.inc.i22.for.inc.1.i27_crit_edge
  %index.addr.1.1.i25 = phi i32 [ %dec.1.i23, %if.then.1.i24.for.inc.1.i27_crit_edge ], [ %index.addr.1.i20, %for.inc.i22.for.inc.1.i27_crit_edge ]
  %arrayidx2.2.i = getelementptr [6 x [6 x [4 x %struct.Kiara_table_entry]]], ptr @Kiara_table, i32 0, i32 %size, i32 2, i32 3
  %22 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx2.2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.2.i26 = icmp eq i8 %23, 0
  br i1 %tobool.not.2.i26, label %for.inc.1.i27.for.inc.2.i32_crit_edge, label %if.then.2.i29

for.inc.1.i27.for.inc.2.i32_crit_edge:            ; preds = %for.inc.1.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i32

if.then.2.i29:                                    ; preds = %for.inc.1.i27
  %dec.2.i28 = add i32 %index.addr.1.1.i25, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.1.1.i25)
  %cmp3.2.i = icmp eq i32 %index.addr.1.1.i25, 0
  br i1 %cmp3.2.i, label %if.then.2.i29.if.then4.i_crit_edge, label %if.then.2.i29.for.inc.2.i32_crit_edge

if.then.2.i29.for.inc.2.i32_crit_edge:            ; preds = %if.then.2.i29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i32

if.then.2.i29.if.then4.i_crit_edge:               ; preds = %if.then.2.i29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i

for.inc.2.i32:                                    ; preds = %if.then.2.i29.for.inc.2.i32_crit_edge, %for.inc.1.i27.for.inc.2.i32_crit_edge
  %index.addr.1.2.i30 = phi i32 [ %dec.2.i28, %if.then.2.i29.for.inc.2.i32_crit_edge ], [ %index.addr.1.1.i25, %for.inc.1.i27.for.inc.2.i32_crit_edge ]
  %arrayidx2.3.i = getelementptr [6 x [6 x [4 x %struct.Kiara_table_entry]]], ptr @Kiara_table, i32 0, i32 %size, i32 3, i32 3
  %24 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx2.3.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.3.i31 = icmp eq i8 %25, 0
  br i1 %tobool.not.3.i31, label %for.inc.2.i32.for.inc.3.i37_crit_edge, label %if.then.3.i34

for.inc.2.i32.for.inc.3.i37_crit_edge:            ; preds = %for.inc.2.i32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i37

if.then.3.i34:                                    ; preds = %for.inc.2.i32
  %dec.3.i33 = add i32 %index.addr.1.2.i30, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.1.2.i30)
  %cmp3.3.i = icmp eq i32 %index.addr.1.2.i30, 0
  br i1 %cmp3.3.i, label %if.then.3.i34.if.then4.i_crit_edge, label %if.then.3.i34.for.inc.3.i37_crit_edge

if.then.3.i34.for.inc.3.i37_crit_edge:            ; preds = %if.then.3.i34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i37

if.then.3.i34.if.then4.i_crit_edge:               ; preds = %if.then.3.i34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i

for.inc.3.i37:                                    ; preds = %if.then.3.i34.for.inc.3.i37_crit_edge, %for.inc.2.i32.for.inc.3.i37_crit_edge
  %index.addr.1.3.i35 = phi i32 [ %dec.3.i33, %if.then.3.i34.for.inc.3.i37_crit_edge ], [ %index.addr.1.2.i30, %for.inc.2.i32.for.inc.3.i37_crit_edge ]
  %arrayidx2.4.i = getelementptr [6 x [6 x [4 x %struct.Kiara_table_entry]]], ptr @Kiara_table, i32 0, i32 %size, i32 4, i32 3
  %26 = ptrtoint ptr %arrayidx2.4.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx2.4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.4.i36 = icmp eq i8 %27, 0
  br i1 %tobool.not.4.i36, label %for.inc.3.i37.for.inc.4.i43_crit_edge, label %if.then.4.i39

for.inc.3.i37.for.inc.4.i43_crit_edge:            ; preds = %for.inc.3.i37
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4.i43

if.then.4.i39:                                    ; preds = %for.inc.3.i37
  %dec.4.i38 = add i32 %index.addr.1.3.i35, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.1.3.i35)
  %cmp3.4.i = icmp eq i32 %index.addr.1.3.i35, 0
  br i1 %cmp3.4.i, label %if.then.4.i39.if.then4.i_crit_edge, label %if.then.4.i39.for.inc.4.i43_crit_edge

if.then.4.i39.for.inc.4.i43_crit_edge:            ; preds = %if.then.4.i39
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4.i43

if.then.4.i39.if.then4.i_crit_edge:               ; preds = %if.then.4.i39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i

for.inc.4.i43:                                    ; preds = %if.then.4.i39.for.inc.4.i43_crit_edge, %for.inc.3.i37.for.inc.4.i43_crit_edge
  %index.addr.1.4.i40 = phi i32 [ %dec.4.i38, %if.then.4.i39.for.inc.4.i43_crit_edge ], [ %index.addr.1.3.i35, %for.inc.3.i37.for.inc.4.i43_crit_edge ]
  %arrayidx2.5.i = getelementptr [6 x [6 x [4 x %struct.Kiara_table_entry]]], ptr @Kiara_table, i32 0, i32 %size, i32 5, i32 3
  %28 = ptrtoint ptr %arrayidx2.5.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx2.5.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.5.i41 = icmp ne i8 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.1.4.i40)
  %cmp3.5.i = icmp eq i32 %index.addr.1.4.i40, 0
  %or.cond.i42 = select i1 %tobool.not.5.i41, i1 %cmp3.5.i, i1 false
  br i1 %or.cond.i42, label %for.inc.4.i43.if.then4.i_crit_edge, label %for.inc.4.i43.if.end7_crit_edge

for.inc.4.i43.if.end7_crit_edge:                  ; preds = %for.inc.4.i43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

for.inc.4.i43.if.then4.i_crit_edge:               ; preds = %for.inc.4.i43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i

if.else5:                                         ; preds = %if.else
  %arrayidx2.i45 = getelementptr [6 x [6 x [4 x %struct.Timon_table_entry]]], ptr @Timon_table, i32 0, i32 %size, i32 0, i32 3
  %30 = ptrtoint ptr %arrayidx2.i45 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx2.i45, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i46 = icmp eq i8 %31, 0
  br i1 %tobool.not.i46, label %if.else5.for.inc.i56_crit_edge, label %if.then.i49

if.else5.for.inc.i56_crit_edge:                   ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i56

if.then.i49:                                      ; preds = %if.else5
  %dec.i47 = add i32 %index, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp3.i48 = icmp eq i32 %index, 0
  br i1 %cmp3.i48, label %if.then.i49.if.then4.i52_crit_edge, label %if.then.i49.for.inc.i56_crit_edge

if.then.i49.for.inc.i56_crit_edge:                ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i56

if.then.i49.if.then4.i52_crit_edge:               ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i52

if.then4.i52:                                     ; preds = %for.inc.4.i86.if.then4.i52_crit_edge, %if.then.4.i80.if.then4.i52_crit_edge, %if.then.3.i73.if.then4.i52_crit_edge, %if.then.2.i66.if.then4.i52_crit_edge, %if.then.1.i59.if.then4.i52_crit_edge, %if.then.i49.if.then4.i52_crit_edge
  %i.03.lcssa.i50 = phi i32 [ 0, %if.then.i49.if.then4.i52_crit_edge ], [ 1, %if.then.1.i59.if.then4.i52_crit_edge ], [ 2, %if.then.2.i66.if.then4.i52_crit_edge ], [ 3, %if.then.3.i73.if.then4.i52_crit_edge ], [ 4, %if.then.4.i80.if.then4.i52_crit_edge ], [ 5, %for.inc.4.i86.if.then4.i52_crit_edge ]
  %arrayidx5.i51 = getelementptr [6 x i32], ptr @Timon_fps_vector, i32 0, i32 %i.03.lcssa.i50
  br label %if.end7.sink.split

for.inc.i56:                                      ; preds = %if.then.i49.for.inc.i56_crit_edge, %if.else5.for.inc.i56_crit_edge
  %index.addr.1.i53 = phi i32 [ %dec.i47, %if.then.i49.for.inc.i56_crit_edge ], [ %index, %if.else5.for.inc.i56_crit_edge ]
  %arrayidx2.1.i54 = getelementptr [6 x [6 x [4 x %struct.Timon_table_entry]]], ptr @Timon_table, i32 0, i32 %size, i32 1, i32 3
  %32 = ptrtoint ptr %arrayidx2.1.i54 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx2.1.i54, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.1.i55 = icmp eq i8 %33, 0
  br i1 %tobool.not.1.i55, label %for.inc.i56.for.inc.1.i63_crit_edge, label %if.then.1.i59

for.inc.i56.for.inc.1.i63_crit_edge:              ; preds = %for.inc.i56
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i63

if.then.1.i59:                                    ; preds = %for.inc.i56
  %dec.1.i57 = add i32 %index.addr.1.i53, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.1.i53)
  %cmp3.1.i58 = icmp eq i32 %index.addr.1.i53, 0
  br i1 %cmp3.1.i58, label %if.then.1.i59.if.then4.i52_crit_edge, label %if.then.1.i59.for.inc.1.i63_crit_edge

if.then.1.i59.for.inc.1.i63_crit_edge:            ; preds = %if.then.1.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i63

if.then.1.i59.if.then4.i52_crit_edge:             ; preds = %if.then.1.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i52

for.inc.1.i63:                                    ; preds = %if.then.1.i59.for.inc.1.i63_crit_edge, %for.inc.i56.for.inc.1.i63_crit_edge
  %index.addr.1.1.i60 = phi i32 [ %dec.1.i57, %if.then.1.i59.for.inc.1.i63_crit_edge ], [ %index.addr.1.i53, %for.inc.i56.for.inc.1.i63_crit_edge ]
  %arrayidx2.2.i61 = getelementptr [6 x [6 x [4 x %struct.Timon_table_entry]]], ptr @Timon_table, i32 0, i32 %size, i32 2, i32 3
  %34 = ptrtoint ptr %arrayidx2.2.i61 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx2.2.i61, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.2.i62 = icmp eq i8 %35, 0
  br i1 %tobool.not.2.i62, label %for.inc.1.i63.for.inc.2.i70_crit_edge, label %if.then.2.i66

for.inc.1.i63.for.inc.2.i70_crit_edge:            ; preds = %for.inc.1.i63
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i70

if.then.2.i66:                                    ; preds = %for.inc.1.i63
  %dec.2.i64 = add i32 %index.addr.1.1.i60, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.1.1.i60)
  %cmp3.2.i65 = icmp eq i32 %index.addr.1.1.i60, 0
  br i1 %cmp3.2.i65, label %if.then.2.i66.if.then4.i52_crit_edge, label %if.then.2.i66.for.inc.2.i70_crit_edge

if.then.2.i66.for.inc.2.i70_crit_edge:            ; preds = %if.then.2.i66
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i70

if.then.2.i66.if.then4.i52_crit_edge:             ; preds = %if.then.2.i66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i52

for.inc.2.i70:                                    ; preds = %if.then.2.i66.for.inc.2.i70_crit_edge, %for.inc.1.i63.for.inc.2.i70_crit_edge
  %index.addr.1.2.i67 = phi i32 [ %dec.2.i64, %if.then.2.i66.for.inc.2.i70_crit_edge ], [ %index.addr.1.1.i60, %for.inc.1.i63.for.inc.2.i70_crit_edge ]
  %arrayidx2.3.i68 = getelementptr [6 x [6 x [4 x %struct.Timon_table_entry]]], ptr @Timon_table, i32 0, i32 %size, i32 3, i32 3
  %36 = ptrtoint ptr %arrayidx2.3.i68 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx2.3.i68, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.3.i69 = icmp eq i8 %37, 0
  br i1 %tobool.not.3.i69, label %for.inc.2.i70.for.inc.3.i77_crit_edge, label %if.then.3.i73

for.inc.2.i70.for.inc.3.i77_crit_edge:            ; preds = %for.inc.2.i70
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i77

if.then.3.i73:                                    ; preds = %for.inc.2.i70
  %dec.3.i71 = add i32 %index.addr.1.2.i67, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.1.2.i67)
  %cmp3.3.i72 = icmp eq i32 %index.addr.1.2.i67, 0
  br i1 %cmp3.3.i72, label %if.then.3.i73.if.then4.i52_crit_edge, label %if.then.3.i73.for.inc.3.i77_crit_edge

if.then.3.i73.for.inc.3.i77_crit_edge:            ; preds = %if.then.3.i73
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i77

if.then.3.i73.if.then4.i52_crit_edge:             ; preds = %if.then.3.i73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i52

for.inc.3.i77:                                    ; preds = %if.then.3.i73.for.inc.3.i77_crit_edge, %for.inc.2.i70.for.inc.3.i77_crit_edge
  %index.addr.1.3.i74 = phi i32 [ %dec.3.i71, %if.then.3.i73.for.inc.3.i77_crit_edge ], [ %index.addr.1.2.i67, %for.inc.2.i70.for.inc.3.i77_crit_edge ]
  %arrayidx2.4.i75 = getelementptr [6 x [6 x [4 x %struct.Timon_table_entry]]], ptr @Timon_table, i32 0, i32 %size, i32 4, i32 3
  %38 = ptrtoint ptr %arrayidx2.4.i75 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx2.4.i75, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.4.i76 = icmp eq i8 %39, 0
  br i1 %tobool.not.4.i76, label %for.inc.3.i77.for.inc.4.i86_crit_edge, label %if.then.4.i80

for.inc.3.i77.for.inc.4.i86_crit_edge:            ; preds = %for.inc.3.i77
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4.i86

if.then.4.i80:                                    ; preds = %for.inc.3.i77
  %dec.4.i78 = add i32 %index.addr.1.3.i74, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.1.3.i74)
  %cmp3.4.i79 = icmp eq i32 %index.addr.1.3.i74, 0
  br i1 %cmp3.4.i79, label %if.then.4.i80.if.then4.i52_crit_edge, label %if.then.4.i80.for.inc.4.i86_crit_edge

if.then.4.i80.for.inc.4.i86_crit_edge:            ; preds = %if.then.4.i80
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4.i86

if.then.4.i80.if.then4.i52_crit_edge:             ; preds = %if.then.4.i80
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i52

for.inc.4.i86:                                    ; preds = %if.then.4.i80.for.inc.4.i86_crit_edge, %for.inc.3.i77.for.inc.4.i86_crit_edge
  %index.addr.1.4.i81 = phi i32 [ %dec.4.i78, %if.then.4.i80.for.inc.4.i86_crit_edge ], [ %index.addr.1.3.i74, %for.inc.3.i77.for.inc.4.i86_crit_edge ]
  %arrayidx2.5.i82 = getelementptr [6 x [6 x [4 x %struct.Timon_table_entry]]], ptr @Timon_table, i32 0, i32 %size, i32 5, i32 3
  %40 = ptrtoint ptr %arrayidx2.5.i82 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx2.5.i82, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.5.i83 = icmp ne i8 %41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.1.4.i81)
  %cmp3.5.i84 = icmp eq i32 %index.addr.1.4.i81, 0
  %or.cond.i85 = select i1 %tobool.not.5.i83, i1 %cmp3.5.i84, i1 false
  br i1 %or.cond.i85, label %for.inc.4.i86.if.then4.i52_crit_edge, label %for.inc.4.i86.if.end7_crit_edge

for.inc.4.i86.if.end7_crit_edge:                  ; preds = %for.inc.4.i86
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

for.inc.4.i86.if.then4.i52_crit_edge:             ; preds = %for.inc.4.i86
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4.i52

if.end7.sink.split:                               ; preds = %if.then4.i52, %if.then4.i, %if.then3.i
  %arrayidx5.i51.sink = phi ptr [ %arrayidx5.i51, %if.then4.i52 ], [ %arrayidx5.i, %if.then4.i ], [ %arrayidx4.i, %if.then3.i ]
  %42 = ptrtoint ptr %arrayidx5.i51.sink to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx5.i51.sink, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end7.sink.split, %for.inc.4.i86.if.end7_crit_edge, %for.inc.4.i43.if.end7_crit_edge, %for.inc.6.i.if.end7_crit_edge
  %ret.0 = phi i32 [ 0, %for.inc.6.i.if.end7_crit_edge ], [ 0, %for.inc.4.i43.if.end7_crit_edge ], [ 0, %for.inc.4.i86.if.end7_crit_edge ], [ %43, %if.end7.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwc_get_u8_ctrl(ptr nocapture noundef readonly %pdev, i8 noundef zeroext %request, i16 noundef zeroext %value, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %udev.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 7
  %0 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %3, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %vcinterface.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 12
  %4 = ptrtoint ptr %vcinterface.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vcinterface.i, align 8
  %conv.i = trunc i32 %5 to i16
  %ctrl_buf.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 25
  %6 = ptrtoint ptr %ctrl_buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl_buf.i, align 4
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or2.i, i8 noundef zeroext %request, i8 noundef zeroext -64, i16 noundef zeroext %value, i16 noundef zeroext %conv.i, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 5000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %recv_control_msg.exit.thread, label %if.end

recv_control_msg.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv6.i = zext i8 %request to i32
  %conv7.i = zext i16 %value to i32
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %call4.i, i32 noundef %conv6.i, i32 noundef %conv7.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %ctrl_buf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_buf.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %conv = zext i8 %11 to i32
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %recv_control_msg.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ %call4.i, %recv_control_msg.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwc_set_u8_ctrl(ptr nocapture noundef readonly %pdev, i8 noundef zeroext %request, i16 noundef zeroext %value, i8 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_buf = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 25
  %0 = ptrtoint ptr %ctrl_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %data, ptr %1, align 1
  %3 = load ptr, ptr %ctrl_buf, align 4
  %udev.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 7
  %4 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %7, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %vcinterface.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 12
  %8 = ptrtoint ptr %vcinterface.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vcinterface.i, align 8
  %conv.i = trunc i32 %9 to i16
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or.i, i8 noundef zeroext %request, i8 noundef zeroext 64, i16 noundef zeroext %value, i16 noundef zeroext %conv.i, ptr noundef %3, i16 noundef zeroext 1, i32 noundef 5000) #5
  %10 = tail call i32 @llvm.smin.i32(i32 %call3.i, i32 0)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwc_get_s8_ctrl(ptr nocapture noundef readonly %pdev, i8 noundef zeroext %request, i16 noundef zeroext %value, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %udev.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 7
  %0 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %3, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %vcinterface.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 12
  %4 = ptrtoint ptr %vcinterface.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vcinterface.i, align 8
  %conv.i = trunc i32 %5 to i16
  %ctrl_buf.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 25
  %6 = ptrtoint ptr %ctrl_buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl_buf.i, align 4
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or2.i, i8 noundef zeroext %request, i8 noundef zeroext -64, i16 noundef zeroext %value, i16 noundef zeroext %conv.i, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 5000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %recv_control_msg.exit.thread, label %if.end

recv_control_msg.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv6.i = zext i8 %request to i32
  %conv7.i = zext i16 %value to i32
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %call4.i, i32 noundef %conv6.i, i32 noundef %conv7.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %ctrl_buf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_buf.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %conv = sext i8 %11 to i32
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %recv_control_msg.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ %call4.i, %recv_control_msg.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwc_get_u16_ctrl(ptr nocapture noundef readonly %pdev, i8 noundef zeroext %request, i16 noundef zeroext %value, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %udev.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 7
  %0 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %3, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %vcinterface.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 12
  %4 = ptrtoint ptr %vcinterface.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vcinterface.i, align 8
  %conv.i = trunc i32 %5 to i16
  %ctrl_buf.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 25
  %6 = ptrtoint ptr %ctrl_buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl_buf.i, align 4
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or2.i, i8 noundef zeroext %request, i8 noundef zeroext -64, i16 noundef zeroext %value, i16 noundef zeroext %conv.i, ptr noundef %7, i16 noundef zeroext 2, i32 noundef 5000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %recv_control_msg.exit.thread, label %if.end

recv_control_msg.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv6.i = zext i8 %request to i32
  %conv7.i = zext i16 %value to i32
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %call4.i, i32 noundef %conv6.i, i32 noundef %conv7.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %ctrl_buf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_buf.i, align 4
  %arrayidx = getelementptr i8, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %9, align 1
  %conv3 = zext i8 %13 to i32
  %or = or i32 %shl, %conv3
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %recv_control_msg.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ %call4.i, %recv_control_msg.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwc_set_u16_ctrl(ptr nocapture noundef readonly %pdev, i8 noundef zeroext %request, i16 noundef zeroext %value, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv1 = trunc i16 %data to i8
  %ctrl_buf = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 25
  %0 = ptrtoint ptr %ctrl_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1, ptr %1, align 1
  %3 = lshr i16 %data, 8
  %conv3 = trunc i16 %3 to i8
  %4 = load ptr, ptr %ctrl_buf, align 4
  %arrayidx5 = getelementptr i8, ptr %4, i32 1
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv3, ptr %arrayidx5, align 1
  %6 = load ptr, ptr %ctrl_buf, align 4
  %udev.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 7
  %7 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i = shl i32 %10, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %vcinterface.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 12
  %11 = ptrtoint ptr %vcinterface.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vcinterface.i, align 8
  %conv.i = trunc i32 %12 to i16
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i, i8 noundef zeroext %request, i8 noundef zeroext 64, i16 noundef zeroext %value, i16 noundef zeroext %conv.i, ptr noundef %6, i16 noundef zeroext 2, i32 noundef 5000) #5
  %13 = tail call i32 @llvm.smin.i32(i32 %call3.i, i32 0)
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwc_button_ctrl(ptr nocapture noundef readonly %pdev, i16 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %udev.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 7
  %0 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %3, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %vcinterface.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 12
  %4 = ptrtoint ptr %vcinterface.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vcinterface.i, align 8
  %conv.i = trunc i32 %5 to i16
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext %value, i16 noundef zeroext %conv.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #5
  %6 = tail call i32 @llvm.smin.i32(i32 %call3.i, i32 0)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pwc_camera_power(ptr nocapture noundef readonly %pdev, i32 noundef %power) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %power_save = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 23
  %0 = ptrtoint ptr %power_save to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %power_save, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 8
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 675, i32 %3)
  %cmp = icmp slt i32 %3, 675
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 730, i32 %3)
  %cmp2 = icmp ult i32 %3, 730
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false.if.end5_crit_edge

lor.lhs.false.if.end5_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

land.lhs.true:                                    ; preds = %lor.lhs.false
  %release = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 9
  %4 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %release, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp3 = icmp slt i32 %5, 6
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %lor.lhs.false.if.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power)
  %tobool6.not = icmp eq i32 %power, 0
  %ctrl_buf8 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 25
  %6 = ptrtoint ptr %ctrl_buf8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl_buf8, align 4
  %. = sext i1 %tobool6.not to i8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %., ptr %7, align 1
  %ctrl_buf11 = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 25
  %9 = ptrtoint ptr %ctrl_buf11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl_buf11, align 4
  %udev.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 7
  %11 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i = shl i32 %14, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %vcinterface.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 12
  %15 = ptrtoint ptr %vcinterface.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vcinterface.i, align 8
  %conv.i = trunc i32 %16 to i16
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext 12800, i16 noundef zeroext %conv.i, ptr noundef %10, i16 noundef zeroext 1, i32 noundef 5000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp12 = icmp slt i32 %call3.i, 0
  br i1 %cmp12, label %do.end, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %cond = select i1 %tobool6.not, ptr @.str.15, ptr @.str.14
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull %cond, i32 noundef %call3.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwc_set_leds(ptr nocapture noundef readonly %pdev, i32 noundef %on_value, i32 noundef %off_value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 730, i32 %1)
  %cmp = icmp slt i32 %1, 730
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %div = sdiv i32 %on_value, 100
  %div1 = sdiv i32 %off_value, 100
  %2 = tail call i32 @llvm.smax.i32(i32 %div, i32 0)
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 255)
  %4 = tail call i32 @llvm.smax.i32(i32 %div1, i32 0)
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 255)
  %conv = trunc i32 %3 to i8
  %ctrl_buf = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 25
  %6 = ptrtoint ptr %ctrl_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl_buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %7, align 1
  %conv14 = trunc i32 %5 to i8
  %9 = load ptr, ptr %ctrl_buf, align 4
  %arrayidx16 = getelementptr i8, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv14, ptr %arrayidx16, align 1
  %11 = load ptr, ptr %ctrl_buf, align 4
  %udev.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 7
  %12 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udev.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i = shl i32 %15, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %vcinterface.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 12
  %16 = ptrtoint ptr %vcinterface.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vcinterface.i, align 8
  %conv.i = trunc i32 %17 to i16
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i, i8 noundef zeroext 5, i8 noundef zeroext 64, i16 noundef zeroext 13312, i16 noundef zeroext %conv.i, ptr noundef %11, i16 noundef zeroext 2, i32 noundef 5000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp18 = icmp slt i32 %call3.i, 0
  br i1 %cmp18, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call3.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call3.i, %do.end ], [ %call3.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pwc_get_cmos_sensor(ptr nocapture noundef readonly %pdev, ptr nocapture noundef writeonly %sensor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 675, i32 %1)
  %cmp = icmp slt i32 %1, 675
  br i1 %cmp, label %entry.if.end5_crit_edge, label %if.else

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 730, i32 %1)
  %cmp2 = icmp ult i32 %1, 730
  br i1 %cmp2, label %if.else.cleanup_crit_edge, label %if.else.if.end5_crit_edge

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.else.if.end5_crit_edge, %entry.if.end5_crit_edge
  %request.0 = phi i16 [ 3072, %entry.if.end5_crit_edge ], [ 14080, %if.else.if.end5_crit_edge ]
  %udev.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 7
  %2 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %vcinterface.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 12
  %6 = ptrtoint ptr %vcinterface.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vcinterface.i, align 8
  %conv.i = trunc i32 %7 to i16
  %ctrl_buf.i = getelementptr inbounds %struct.pwc_device, ptr %pdev, i32 0, i32 25
  %8 = ptrtoint ptr %ctrl_buf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_buf.i, align 4
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or2.i, i8 noundef zeroext 6, i8 noundef zeroext -64, i16 noundef zeroext %request.0, i16 noundef zeroext %conv.i, ptr noundef %9, i16 noundef zeroext 1, i32 noundef 5000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %recv_control_msg.exit.thread, label %if.end9

recv_control_msg.exit.thread:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %conv7.i = zext i16 %request.0 to i32
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %call4.i, i32 noundef 6, i32 noundef %conv7.i) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 675, i32 %11)
  %cmp11 = icmp slt i32 %11, 675
  %12 = ptrtoint ptr %ctrl_buf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl_buf.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %conv14 = zext i8 %15 to i32
  %or = or i32 %conv14, 256
  %storemerge = select i1 %cmp11, i32 %or, i32 %conv14
  %16 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge, ptr %sensor, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %recv_control_msg.exit.thread, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -1, %if.else.cleanup_crit_edge ], [ %call4.i, %recv_control_msg.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwc_dec1_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwc_dec23_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/pwc/pwc-ctrl.c", i32 324, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @pwc_set_video_mode._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @pwc_set_video_mode._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/pwc/pwc-ctrl.c", i32 327, i32 2}
!8 = !{ptr @pwc_set_video_mode._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @pwc_set_video_mode._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/pwc/pwc-ctrl.c", i32 340, i32 3}
!12 = !{ptr @pwc_set_video_mode._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @pwc_set_video_mode._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/pwc/pwc-ctrl.c", i32 344, i32 2}
!16 = !{ptr @pwc_set_video_mode._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @pwc_set_video_mode._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/pwc/pwc-ctrl.c", i32 491, i32 3}
!20 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @pwc_camera_power._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @pwc_camera_power._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.15, !19, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/pwc/pwc-ctrl.c", i32 518, i32 3}
!27 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @pwc_set_leds._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @pwc_set_leds._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @Nala_table, !31, !"Nala_table", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/pwc/pwc-ctrl.c", i32 88, i32 32}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/pwc/pwc-ctrl.c", i32 126, i32 3}
!34 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @send_video_command._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @send_video_command._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/pwc/pwc-ctrl.c", i32 314, i32 2}
!39 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @set_video_mode_Kiara._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @set_video_mode_Kiara._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/pwc/pwc-ctrl.c", i32 61, i32 2}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/pwc/pwc-ctrl.c", i32 62, i32 2}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/pwc/pwc-ctrl.c", i32 63, i32 2}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/pwc/pwc-ctrl.c", i32 64, i32 2}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/pwc/pwc-ctrl.c", i32 65, i32 2}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/pwc/pwc-ctrl.c", i32 66, i32 2}
!54 = !{ptr @size2name, !55, !"size2name", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/pwc/pwc-ctrl.c", i32 59, i32 20}
!56 = !{ptr @Nala_fps_vector, !57, !"Nala_fps_vector", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/pwc/pwc-ctrl.c", i32 86, i32 21}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/pwc/pwc-ctrl.c", i32 106, i32 3}
!60 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @recv_control_msg._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @recv_control_msg._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
