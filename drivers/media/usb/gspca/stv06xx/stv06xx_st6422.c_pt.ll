; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/stv06xx/stv06xx_st6422.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/stv06xx/stv06xx_st6422.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.stv06xx_sensor = type { [32 x i8], i8, i8, i8, [4 x i32], [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.95, i32, i32 }
%union.anon.95 = type { i32 }
%struct.sd = type { %struct.gspca_dev, ptr, ptr, i32, i8 }
%struct.gspca_dev = type { %struct.video_device, ptr, %struct.v4l2_device, ptr, ptr, [64 x i8], %struct.cam, ptr, %struct.v4l2_ctrl_handler, %struct.anon.100, ptr, [4 x ptr], ptr, ptr, i32, i8, i8, i8, i8, %struct.v4l2_pix_format, i32, %struct.vb2_queue, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, %struct.mutex, i32, i16, i8, i8, i8, i8, i8, i32, i8 }
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
%struct.cam = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.100 = type { ptr, ptr, ptr, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.84, %union.anon.85, i32, ptr, i32, %struct.anon.86, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.84 = type { i64 }
%union.anon.85 = type { ptr }
%struct.anon.86 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@stv06xx_sensor_st6422 = dso_local constant { %struct.stv06xx_sensor, [60 x i8] } { %struct.stv06xx_sensor { [32 x i8] c"ST6422\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, i8 0, i8 0, [4 x i32] [i32 300, i32 847, i32 0, i32 0], [4 x i32] [i32 300, i32 847, i32 0, i32 0], ptr @st6422_probe, ptr @st6422_init, ptr @st6422_init_controls, ptr null, ptr null, ptr @st6422_start, ptr @st6422_stop, ptr null }, [60 x i8] zeroinitializer }, align 32
@st6422_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"stv06xx_st6422:91:(hdl)->_lock\00", [33 x i8] zeroinitializer }, align 32
@st6422_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @st6422_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@st6422_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016gspca_stv06xx: st6422 sensor detected\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st6422_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/media/usb/gspca/stv06xx/stv06xx_st6422.c\00", [47 x i8] zeroinitializer }, align 32
@st6422_probe._entry_ptr = internal global ptr @st6422_probe._entry, section ".printk_index", align 4
@st6422_mode = internal global { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 162, i32 120, i32 1195528775, i32 1, i32 162, i32 19440, i32 8, i32 1, i32 0, %union.anon.95 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 324, i32 240, i32 1195528775, i32 1, i32 324, i32 79056, i32 8, i32 0, i32 0, %union.anon.95 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@st6422_init.st6422_bridge_init = internal constant { [30 x [2 x i16]], [40 x i8] } { [30 x [2 x i16]] [[2 x i16] [i16 5184, i16 0], [2 x i16] [i16 5174, i16 0], [2 x i16] [i16 5170, i16 3], [2 x i16] [i16 5178, i16 249], [2 x i16] [i16 1289, i16 56], [2 x i16] [i16 1290, i16 56], [2 x i16] [i16 1291, i16 56], [2 x i16] [i16 1292, i16 42], [2 x i16] [i16 1293, i16 1], [2 x i16] [i16 5169, i16 0], [2 x i16] [i16 5171, i16 52], [2 x i16] [i16 5176, i16 24], [2 x i16] [i16 5177, i16 0], [2 x i16] [i16 5179, i16 5], [2 x i16] [i16 5180, i16 0], [2 x i16] [i16 5182, i16 1], [2 x i16] [i16 5181, i16 0], [2 x i16] [i16 5186, i16 226], [2 x i16] [i16 5376, i16 208], [2 x i16] [i16 5376, i16 208], [2 x i16] [i16 5376, i16 80], [2 x i16] [i16 5377, i16 175], [2 x i16] [i16 5378, i16 194], [2 x i16] [i16 5379, i16 69], [2 x i16] [i16 5381, i16 2], [2 x i16] [i16 5390, i16 142], [2 x i16] [i16 5391, i16 55], [2 x i16] [i16 5568, i16 0], [2 x i16] [i16 5571, i16 8], [2 x i16] [i16 5183, i16 1]], [40 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@st6422_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: Halting stream\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"st6422_stop\00", [20 x i8] zeroinitializer }, align 32
@st6422_stop._entry_ptr = internal global ptr @st6422_stop._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 9963776, i64 9963777, i64 9963793, i64 9963795]
@___asan_gen_.6 = private unnamed_addr constant [22 x i8] c"stv06xx_sensor_st6422\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [52 x i8] c"../drivers/media/usb/gspca/stv06xx/stv06xx_st6422.h\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 26, i32 29 }
@___asan_gen_.9 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 91, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"st6422_ctrl_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 83, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 109, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"st6422_mode\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 19, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant [19 x i8] c"st6422_bridge_init\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 120, i32 19 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [52 x i8] c"../drivers/media/usb/gspca/stv06xx/stv06xx_st6422.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 270, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @st6422_probe._entry, ptr @st6422_probe._entry_ptr, ptr @st6422_stop._entry, ptr @st6422_stop._entry_ptr, ptr @stv06xx_sensor_st6422, ptr @st6422_init_controls._key, ptr @.str, ptr @st6422_ctrl_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @st6422_mode, ptr @st6422_init.st6422_bridge_init, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_sensor_st6422 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st6422_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st6422_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st6422_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st6422_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st6422_init.st6422_bridge_init to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st6422_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st6422_probe(ptr nocapture noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 4
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bridge, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp.not = icmp eq i8 %1, 3
  br i1 %cmp.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #7
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6
  %2 = ptrtoint ptr %cam to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @st6422_mode, ptr %cam, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6, i32 4
  %3 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %nmodes, align 4
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st6422_init(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.08 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [30 x [2 x i16]], ptr @st6422_init.st6422_bridge_init, i32 0, i32 %i.08
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %arrayidx3 = getelementptr [30 x [2 x i16]], ptr @st6422_init.st6422_bridge_init, i32 0, i32 %i.08, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx3, align 2
  %call = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext %1, i16 noundef zeroext %3) #4
  %inc = add nuw nsw i32 %i.08, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %i.08)
  %cmp = icmp ult i32 %i.08, 29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st6422_init_controls(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 8
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 4, ptr noundef nonnull @st6422_init_controls._key, ptr noundef nonnull @.str) #4
  %call1 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @st6422_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 31, i64 noundef 1, i64 noundef 3) #4
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @st6422_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 15, i64 noundef 1, i64 noundef 11) #4
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @st6422_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 1023, i64 noundef 1, i64 noundef 256) #4
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @st6422_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 64) #4
  %error = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 8, i32 9
  %0 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %error, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st6422_start(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 6
  %0 = ptrtoint ptr %cam1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cam1, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 18
  %2 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %curr_mode, align 1
  %idxprom = zext i8 %3 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %1, i32 %idxprom, i32 7
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %. = select i1 %tobool.not, i16 2, i16 15
  %call3 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5381, i16 noundef zeroext %.) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext 5183, i16 noundef zeroext 1) #4
  %6 = tail call i32 @llvm.smin.i32(i32 %call6, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.end5 ], [ %call3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st6422_stop(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name) #7
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st6422_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1584
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.if.end_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb1
    i32 9963795, label %sw.bb4
    i32 9963793, label %sw.bb7
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv.i = trunc i32 %6 to i16
  %call.i = tail call i32 @stv06xx_write_bridge(ptr noundef %add.ptr, i16 noundef zeroext 5170, i16 noundef zeroext %conv.i) #4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val2, align 4
  %9 = trunc i32 %8 to i16
  %conv.i26 = or i16 %9, 240
  %call.i27 = tail call i32 @stv06xx_write_bridge(ptr noundef %add.ptr, i16 noundef zeroext 5178, i16 noundef zeroext %conv.i26) #4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val5, align 4
  %12 = trunc i32 %11 to i16
  %conv.i28 = and i16 %12, 255
  %call.i29 = tail call i32 @stv06xx_write_bridge(ptr noundef %add.ptr, i16 noundef zeroext 1289, i16 noundef zeroext %conv.i28) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %cmp.i = icmp slt i32 %call.i29, 0
  br i1 %cmp.i, label %sw.bb4.if.end_crit_edge, label %if.end.i

sw.bb4.if.end_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %sw.bb4
  %call3.i = tail call i32 @stv06xx_write_bridge(ptr noundef %add.ptr, i16 noundef zeroext 1290, i16 noundef zeroext %conv.i28) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i.if.end_crit_edge, label %if.end7.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end7.i:                                        ; preds = %if.end.i
  %call9.i = tail call i32 @stv06xx_write_bridge(ptr noundef %add.ptr, i16 noundef zeroext 1291, i16 noundef zeroext %conv.i28) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end7.i.if.end_crit_edge, label %if.end13.i

if.end7.i.if.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end13.i:                                       ; preds = %if.end7.i
  %call14.i = tail call i32 @stv06xx_write_bridge(ptr noundef %add.ptr, i16 noundef zeroext 1292, i16 noundef zeroext 42) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.end13.i.if.end_crit_edge, label %if.end18.i

if.end13.i.if.end_crit_edge:                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end18.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  %call19.i = tail call i32 @stv06xx_write_bridge(ptr noundef %add.ptr, i16 noundef zeroext 1293, i16 noundef zeroext 1) #4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %13 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val8, align 4
  %conv9 = trunc i32 %14 to i16
  %and.i = and i16 %conv9, 255
  %call.i30 = tail call i32 @stv06xx_write_bridge(ptr noundef %add.ptr, i16 noundef zeroext 5181, i16 noundef zeroext %and.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %cmp.i31 = icmp slt i32 %call.i30, 0
  br i1 %cmp.i31, label %sw.bb7.if.end_crit_edge, label %if.end.i32

sw.bb7.if.end_crit_edge:                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i32:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ashr i16 %conv9, 8
  %call5.i = tail call i32 @stv06xx_write_bridge(ptr noundef %add.ptr, i16 noundef zeroext 5182, i16 noundef zeroext %15) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i32, %if.end18.i, %sw.bb1, %sw.bb
  %err.0 = phi i32 [ %call.i27, %sw.bb1 ], [ %call.i, %sw.bb ], [ %call19.i, %if.end18.i ], [ %call5.i, %if.end.i32 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %err.0)
  %cmp = icmp sgt i32 %err.0, -1
  br i1 %cmp, label %if.then, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = tail call i32 @stv06xx_write_bridge(ptr noundef %add.ptr, i16 noundef zeroext 5183, i16 noundef zeroext 1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge, %sw.bb7.if.end_crit_edge, %if.end13.i.if.end_crit_edge, %if.end7.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %sw.bb4.if.end_crit_edge, %entry.if.end_crit_edge
  %err.1 = phi i32 [ %call12, %if.then ], [ %err.0, %sw.epilog.if.end_crit_edge ], [ %call.i30, %sw.bb7.if.end_crit_edge ], [ %call14.i, %if.end13.i.if.end_crit_edge ], [ %call9.i, %if.end7.i.if.end_crit_edge ], [ %call3.i, %if.end.i.if.end_crit_edge ], [ %call.i29, %sw.bb4.if.end_crit_edge ], [ -22, %entry.if.end_crit_edge ]
  %usb_err = getelementptr i8, ptr %1, i32 1000
  %16 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %err.1, ptr %usb_err, align 8
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stv06xx_write_bridge(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !11, !12, !13, !15, !17, !19, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @stv06xx_sensor_st6422, !1, !"stv06xx_sensor_st6422", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_st6422.h", i32 26, i32 29}
!2 = !{ptr @st6422_init_controls._key, !3, !"_key", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_st6422.c", i32 91, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @st6422_ctrl_ops, !6, !"st6422_ctrl_ops", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_st6422.c", i32 83, i32 35}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_st6422.c", i32 109, i32 2}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @st6422_probe._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @st6422_probe._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @st6422_mode, !14, !"st6422_mode", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_st6422.c", i32 19, i32 31}
!15 = !{ptr @st6422_init.st6422_bridge_init, !16, !"st6422_bridge_init", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_st6422.c", i32 120, i32 19}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx_st6422.c", i32 270, i32 2}
!19 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @st6422_stop._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @st6422_stop._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
