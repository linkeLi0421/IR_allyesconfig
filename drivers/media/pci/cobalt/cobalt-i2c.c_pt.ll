; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cobalt/cobalt-i2c.c_pt.bc'
source_filename = "../drivers/media/pci/cobalt/cobalt-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cobalt = type { i32, ptr, %struct.v4l2_device, %struct.mutex, ptr, ptr, i8, i16, [16 x %struct.cobalt_stream], [5 x %struct.i2c_adapter], [5 x %struct.cobalt_i2c_data], i8, i8, ptr, %struct.work_struct, i32, i32, i32, i32, [12 x i32], i32, i32, i32, i32, i8, [512 x i8], ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.cobalt_stream = type { %struct.video_device, %struct.vb2_queue, %struct.list_head, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [32 x %struct.sg_dma_desc_info], i32, i8, i8, i8, i32, i8, i8, i8, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.82 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.79], %struct.media_entity_enum, i32 }
%struct.anon.79 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_dv_timings = type { i32, %union.anon.107 }
%union.anon.107 = type { [32 x i32] }
%struct.sg_dma_desc_info = type { ptr, i32, i32, ptr, ptr }
%struct.cobalt_i2c_data = type { ptr, ptr }
%struct.cobalt_i2c_regs = type { i8, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, [3 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@cobalt_debug = external dso_local local_unnamed_addr global i32, align 4
@cobalt_i2c_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: i2c init\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cobalt_i2c_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/pci/cobalt/cobalt-i2c.c\00", [58 x i8] zeroinitializer }, align 32
@cobalt_i2c_init._entry_ptr = internal global ptr @cobalt_i2c_init._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cobalt_ignore_err = external dso_local local_unnamed_addr global i32, align 4
@cobalt_i2c_adap_template = internal constant { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 0, ptr null, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] c"cobalt i2c driver\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@cobalt_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @cobalt_xfer, ptr null, ptr null, ptr null, ptr @cobalt_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" #%d-%d\00", [24 x i8] zeroinitializer }, align 32
@cobalt_i2c_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: registered bus %s\0A\00", [39 x i8] zeroinitializer }, align 32
@cobalt_i2c_init._entry_ptr.6 = internal global ptr @cobalt_i2c_init._entry.4, section ".printk_index", align 4
@cobalt_i2c_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: i2c exit\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cobalt_i2c_exit\00", [16 x i8] zeroinitializer }, align 32
@cobalt_i2c_exit._entry_ptr = internal global ptr @cobalt_i2c_exit._entry, section ".printk_index", align 4
@cobalt_i2c_exit._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: unregistered bus %s\0A\00", [37 x i8] zeroinitializer }, align 32
@cobalt_i2c_exit._entry_ptr.11 = internal global ptr @cobalt_i2c_exit._entry.9, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 312, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [25 x i8] c"cobalt_i2c_adap_template\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 292, i32 33 }
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"cobalt_algo\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 299, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 356, i32 5 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 369, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 378, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [41 x i8] c"../drivers/media/pci/cobalt/cobalt-i2c.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 381, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @cobalt_i2c_exit._entry, ptr @cobalt_i2c_exit._entry.9, ptr @cobalt_i2c_exit._entry_ptr, ptr @cobalt_i2c_exit._entry_ptr.11, ptr @cobalt_i2c_init._entry, ptr @cobalt_i2c_init._entry.4, ptr @cobalt_i2c_init._entry_ptr, ptr @cobalt_i2c_init._entry_ptr.6, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cobalt_i2c_adap_template, ptr @cobalt_algo, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_i2c_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_i2c_adap_template to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_i2c_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_i2c_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cobalt_i2c_exit._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cobalt_i2c_init(ptr noundef %cobalt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cobalt_debug to i32))
  %0 = load i32, ptr @cobalt_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %bar18.i = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 5
  %v4l2_dev38 = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 2
  %pci_dev = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 1
  %name59 = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 2, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end3
  %i.0118 = phi i32 [ 0, %do.end3 ], [ %inc, %for.inc.for.body_crit_edge ]
  %1 = zext i32 %i.0118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.0118, label %sw.default.i [
    i32 4, label %sw.bb10.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb4.i
    i32 3, label %sw.bb7.i
  ]

sw.default.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %bar18.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bar18.i, align 8
  br label %cobalt_i2c_regs.exit

sw.bb1.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %bar18.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bar18.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %5, i32 128
  br label %cobalt_i2c_regs.exit

sw.bb4.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %bar18.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bar18.i, align 8
  %add.ptr6.i = getelementptr i8, ptr %7, i32 256
  br label %cobalt_i2c_regs.exit

sw.bb7.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %bar18.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bar18.i, align 8
  %add.ptr9.i = getelementptr i8, ptr %9, i32 384
  br label %cobalt_i2c_regs.exit

sw.bb10.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %bar18.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bar18.i, align 8
  %add.ptr12.i = getelementptr i8, ptr %11, i32 512
  br label %cobalt_i2c_regs.exit

cobalt_i2c_regs.exit:                             ; preds = %sw.bb10.i, %sw.bb7.i, %sw.bb4.i, %sw.bb1.i, %sw.default.i
  %retval.0.i = phi ptr [ %3, %sw.default.i ], [ %add.ptr9.i, %sw.bb7.i ], [ %add.ptr6.i, %sw.bb4.i ], [ %add.ptr3.i, %sw.bb1.i ], [ %add.ptr12.i, %sw.bb10.i ]
  %arrayidx = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 9, i32 %i.0118
  %cr_sr = getelementptr inbounds %struct.cobalt_i2c_regs, ptr %retval.0.i, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr_sr, i8 -128) #7, !srcloc !35
  %ctr = getelementptr inbounds %struct.cobalt_i2c_regs, ptr %retval.0.i, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ctr, i8 0) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr_sr, i8 0) #7, !srcloc !35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %12, 100
  br label %do.body7

do.body7:                                         ; preds = %if.end12.do.body7_crit_edge, %cobalt_i2c_regs.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp8 = icmp slt i32 %sub, 0
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %do.body7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cobalt_ignore_err to i32))
  %14 = load i32, ptr @cobalt_ignore_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.then9.cleanup65_crit_edge, label %if.then10

if.then9.cleanup65_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup65

if.then10:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %parent = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 9, i32 %i.0118, i32 9, i32 1
  br label %cleanup65.sink.split

if.end12:                                         ; preds = %do.body7
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %cr_sr) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  %16 = and i8 %15, 2
  %tobool16.not = icmp eq i8 %16, 0
  br i1 %tobool16.not, label %do.end17, label %if.end12.do.body7_crit_edge

if.end12.do.body7_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

do.end17:                                         ; preds = %if.end12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ctr, i8 0) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr_sr, i8 0) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %retval.0.i, i8 40) #7, !srcloc !35
  %prerhi = getelementptr inbounds %struct.cobalt_i2c_regs, ptr %retval.0.i, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %prerhi, i8 0) #7, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ctr, i8 -128) #7, !srcloc !35
  %arrayidx25 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 10, i32 %i.0118
  %17 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cobalt, ptr %arrayidx25, align 8
  %regs29 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 10, i32 %i.0118, i32 1
  %18 = ptrtoint ptr %regs29 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %retval.0.i, ptr %regs29, align 4
  %19 = call ptr @memcpy(ptr %arrayidx, ptr @cobalt_i2c_adap_template, i32 1360)
  %algo = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 9, i32 %i.0118, i32 2
  %20 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @cobalt_algo, ptr %algo, align 8
  %algo_data = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 9, i32 %i.0118, i32 3
  %21 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx25, ptr %algo_data, align 4
  %retries = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 9, i32 %i.0118, i32 8
  %22 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %retries, align 8
  %name32 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 9, i32 %i.0118, i32 12
  %call36 = tail call i32 @strlen(ptr noundef %name32) #11
  %add.ptr = getelementptr i8, ptr %name32, i32 %call36
  %23 = ptrtoint ptr %cobalt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cobalt, align 8
  %call37 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.3, i32 noundef %24, i32 noundef %i.0118)
  %driver_data.i.i = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 9, i32 %i.0118, i32 9, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %v4l2_dev38, ptr %driver_data.i.i, align 4
  %26 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci_dev, align 4
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %parent41 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 9, i32 %i.0118, i32 9, i32 1
  %28 = ptrtoint ptr %parent41 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev39, ptr %parent41, align 8
  %call42 = tail call i32 @i2c_add_adapter(ptr noundef %arrayidx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %for.inc, label %if.then44

if.then44:                                        ; preds = %do.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cobalt_ignore_err to i32))
  %29 = load i32, ptr @cobalt_ignore_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool45.not = icmp eq i32 %29, 0
  br i1 %tobool45.not, label %while.cond.preheader, label %if.then44.cleanup65.sink.split_crit_edge

if.then44.cleanup65.sink.split_crit_edge:         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup65.sink.split

while.cond.preheader:                             ; preds = %if.then44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0118)
  %tobool50.not119 = icmp eq i32 %i.0118, 0
  br i1 %tobool50.not119, label %while.cond.preheader.cleanup65_crit_edge, label %while.body

while.cond.preheader.cleanup65_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup65

while.body:                                       ; preds = %while.cond.preheader
  %dec = add nsw i32 %i.0118, -1
  %arrayidx52 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 9, i32 %dec
  tail call void @i2c_del_adapter(ptr noundef %arrayidx52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool50.not = icmp eq i32 %dec, 0
  br i1 %tobool50.not, label %while.body.cleanup65_crit_edge, label %while.body.1

while.body.cleanup65_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup65

while.body.1:                                     ; preds = %while.body
  %dec.1 = add nsw i32 %i.0118, -2
  %arrayidx52.1 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 9, i32 %dec.1
  tail call void @i2c_del_adapter(ptr noundef %arrayidx52.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.1)
  %tobool50.not.1 = icmp eq i32 %dec.1, 0
  br i1 %tobool50.not.1, label %while.body.1.cleanup65_crit_edge, label %while.body.2

while.body.1.cleanup65_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup65

while.body.2:                                     ; preds = %while.body.1
  %dec.2 = add nsw i32 %i.0118, -3
  %arrayidx52.2 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 9, i32 %dec.2
  tail call void @i2c_del_adapter(ptr noundef %arrayidx52.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.2)
  %tobool50.not.2 = icmp eq i32 %dec.2, 0
  br i1 %tobool50.not.2, label %while.body.2.cleanup65_crit_edge, label %while.body.3

while.body.2.cleanup65_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup65

while.body.3:                                     ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #9
  %dec.3 = add nsw i32 %i.0118, -4
  %arrayidx52.3 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 9, i32 %dec.3
  tail call void @i2c_del_adapter(ptr noundef %arrayidx52.3) #7
  br label %cleanup65

for.inc:                                          ; preds = %do.end17
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name59, ptr noundef %name32) #10
  %inc = add nuw nsw i32 %i.0118, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.inc.cleanup65_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup65_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup65

cleanup65.sink.split:                             ; preds = %if.then44.cleanup65.sink.split_crit_edge, %if.then10
  %parent41.lcssa.sink = phi ptr [ %parent, %if.then10 ], [ %parent41, %if.then44.cleanup65.sink.split_crit_edge ]
  %30 = ptrtoint ptr %parent41.lcssa.sink to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %parent41.lcssa.sink, align 8
  br label %cleanup65

cleanup65:                                        ; preds = %cleanup65.sink.split, %for.inc.cleanup65_crit_edge, %while.body.3, %while.body.2.cleanup65_crit_edge, %while.body.1.cleanup65_crit_edge, %while.body.cleanup65_crit_edge, %while.cond.preheader.cleanup65_crit_edge, %if.then9.cleanup65_crit_edge
  %retval.2 = phi i32 [ -110, %if.then9.cleanup65_crit_edge ], [ %call42, %while.cond.preheader.cleanup65_crit_edge ], [ 0, %cleanup65.sink.split ], [ %call42, %while.body.3 ], [ %call42, %while.body.2.cleanup65_crit_edge ], [ %call42, %while.body.1.cleanup65_crit_edge ], [ %call42, %while.body.cleanup65_crit_edge ], [ 0, %for.inc.cleanup65_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cobalt_i2c_exit(ptr noundef %cobalt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cobalt_debug to i32))
  %0 = load i32, ptr @cobalt_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %name10 = getelementptr inbounds %struct.cobalt, ptr %cobalt, i32 0, i32 2, i32 4
  %arrayidx = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 9, i32 0
  %name12 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 9, i32 0, i32 12
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name10, ptr noundef %name12) #10
  tail call void @i2c_del_adapter(ptr noundef %arrayidx) #7
  %arrayidx.1 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 9, i32 1
  %name12.1 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 9, i32 1, i32 12
  %call14.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name10, ptr noundef %name12.1) #10
  tail call void @i2c_del_adapter(ptr noundef %arrayidx.1) #7
  %arrayidx.2 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 9, i32 2
  %name12.2 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 9, i32 2, i32 12
  %call14.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name10, ptr noundef %name12.2) #10
  tail call void @i2c_del_adapter(ptr noundef %arrayidx.2) #7
  %arrayidx.3 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 9, i32 3
  %name12.3 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 9, i32 3, i32 12
  %call14.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name10, ptr noundef %name12.3) #10
  tail call void @i2c_del_adapter(ptr noundef %arrayidx.3) #7
  %arrayidx.4 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 9, i32 4
  %name12.4 = getelementptr %struct.cobalt, ptr %cobalt, i32 0, i32 9, i32 4, i32 12
  %call14.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name10, ptr noundef %name12.4) #10
  tail call void @i2c_del_adapter(ptr noundef %arrayidx.4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cobalt_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #0 align 64 {
entry:
  %data.i105 = alloca i8, align 1
  %data.i = alloca i8, align 1
  %addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %regs1 = getelementptr inbounds %struct.cobalt_i2c_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp132 = icmp sgt i32 %num, 0
  br i1 %cmp132, label %for.body.lr.ph, label %entry.cleanup66_crit_edge

entry.cleanup66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup66

for.body.lr.ph:                                   ; preds = %entry
  %sub = add nsw i32 %num, -1
  %retries = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 8
  %cr_sr.i = getelementptr inbounds %struct.cobalt_i2c_regs, ptr %3, i32 0, i32 8
  %timeout.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 7
  %txr_rxr.i = getelementptr inbounds %struct.cobalt_i2c_regs, ptr %3, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc58.for.body_crit_edge, %for.body.lr.ph
  %i.0134 = phi i32 [ 0, %for.body.lr.ph ], [ %inc59, %for.inc58.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0134, i32 %sub)
  %cmp2 = icmp eq i32 %i.0134, %sub
  %flags3 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0134, i32 1
  %4 = ptrtoint ptr %flags3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags3, align 2
  %6 = and i16 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %if.then, label %for.body.if.end34_crit_edge

for.body.if.end34_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0134
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr) #7
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 4
  %conv7 = trunc i16 %8 to i8
  %shl = shl i8 %conv7, 1
  %9 = trunc i16 %5 to i8
  %10 = and i8 %9, 1
  %11 = or i8 %shl, %10
  %and16 = lshr i16 %5, 13
  %12 = trunc i16 %and16 to i8
  %13 = and i8 %12, 1
  %spec.select = xor i8 %11, %13
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %spec.select, ptr %addr, align 1
  %15 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %retries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp23130 = icmp sgt i32 %16, 0
  br i1 %cmp23130, label %if.then.for.body25_crit_edge, label %for.end.thread140

if.then.for.body25_crit_edge:                     ; preds = %if.then
  br label %for.body25

for.end.thread140:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr) #7
  br label %if.end34

for.body25:                                       ; preds = %if.end28.for.body25_crit_edge, %if.then.for.body25_crit_edge
  %j.0131 = phi i32 [ %inc, %if.end28.for.body25_crit_edge ], [ 0, %if.then.for.body25_crit_edge ]
  %call = call fastcc i32 @cobalt_tx_bytes(ptr noundef %3, ptr noundef %adap, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull %addr, i16 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool26.not = icmp eq i32 %call, 0
  br i1 %tobool26.not, label %for.end.thread, label %if.end28

for.end.thread:                                   ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr) #7
  br label %if.end34

if.end28:                                         ; preds = %for.body25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #7
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %data.i, align 1
  %call.i = call fastcc i32 @cobalt_tx_bytes(ptr noundef %3, ptr noundef %adap, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull %data.i, i16 noundef zeroext 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #7
  %inc = add nuw nsw i32 %j.0131, 1
  %18 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %retries, align 8
  %cmp23 = icmp slt i32 %inc, %19
  br i1 %cmp23, label %if.end28.for.body25_crit_edge, label %for.end

if.end28.for.body25_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body25

for.end:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp30 = icmp slt i32 %call, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr) #7
  br i1 %cmp30, label %for.end.cleanup66_crit_edge, label %for.end.if.end34_crit_edge

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

for.end.cleanup66_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup66

if.end34:                                         ; preds = %for.end.if.end34_crit_edge, %for.end.thread, %for.end.thread140, %for.body.if.end34_crit_edge
  %20 = ptrtoint ptr %flags3 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags3, align 2
  %22 = and i16 %21, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool38.not = icmp eq i16 %22, 0
  %buf47 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0134, i32 3
  %23 = ptrtoint ptr %buf47 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf47, align 4
  %len48 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0134, i32 2
  %25 = ptrtoint ptr %len48 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %len48, align 4
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end34
  %conv.i = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp6.not.i = icmp eq i16 %26, 0
  br i1 %cmp6.not.i, label %if.then39.for.inc58_crit_edge, label %for.body.lr.ph.i

if.then39.for.inc58_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc58

for.body.lr.ph.i:                                 ; preds = %if.then39
  %sub.i = add nsw i32 %conv.i, -1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end37.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end37.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.07.i, i32 %sub.i)
  %cmp7.i = icmp eq i32 %i.07.i, %sub.i
  %brmerge.demorgan.i = and i1 %cmp2, %cmp7.i
  %cmd.0.i = select i1 %brmerge.demorgan.i, i32 96, i32 32
  %or.i = or i32 %cmd.0.i, 8
  %cmd.1.i = select i1 %cmp7.i, i32 %or.i, i32 %cmd.0.i
  %conv21.i = trunc i32 %cmd.1.i to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr_sr.i, i8 %conv21.i) #7, !srcloc !35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %cr_sr.i) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  %status.03.i = zext i8 %28 to i32
  %and4.i = and i32 %status.03.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool24.not5.i = icmp eq i32 %and4.i, 0
  br i1 %tobool24.not5.i, label %for.body.i.while.end.i_crit_edge, label %for.body.i.while.body.i_crit_edge

for.body.i.while.body.i_crit_edge:                ; preds = %for.body.i
  br label %while.body.i

for.body.i.while.end.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i:                                     ; preds = %if.end29.i.while.body.i_crit_edge, %for.body.i.while.body.i_crit_edge
  %29 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %timeout.i, align 4
  %add.i = add i32 %30, %27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %sub25.i = sub i32 %add.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub25.i)
  %cmp26.i = icmp slt i32 %sub25.i, 0
  br i1 %cmp26.i, label %while.body.i.if.then63_crit_edge, label %if.end29.i

while.body.i.if.then63_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then63

if.end29.i:                                       ; preds = %while.body.i
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 202, i32 noundef 0) #7
  %call.i.i = tail call i32 @__cond_resched() #7
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %cr_sr.i) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  %status.0.i = zext i8 %32 to i32
  %and.i = and i32 %status.0.i, 2
  %tobool24.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool24.not.i, label %if.end29.i.while.end.i_crit_edge, label %if.end29.i.while.body.i_crit_edge

if.end29.i.while.body.i_crit_edge:                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end29.i.while.end.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %if.end29.i.while.end.i_crit_edge, %for.body.i.while.end.i_crit_edge
  %status.0.lcssa.i = phi i32 [ %status.03.i, %for.body.i.while.end.i_crit_edge ], [ %status.0.i, %if.end29.i.while.end.i_crit_edge ]
  %and34.i = and i32 %status.0.lcssa.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %while.end.i.if.then63_crit_edge

while.end.i.if.then63_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then63

if.end37.i:                                       ; preds = %while.end.i
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %txr_rxr.i) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  %arrayidx.i = getelementptr i8, ptr %24, i32 %i.07.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %if.end37.i.for.inc58_crit_edge, label %if.end37.i.for.body.i_crit_edge

if.end37.i.for.body.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end37.i.for.inc58_crit_edge:                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc58

if.else:                                          ; preds = %if.end34
  %call49 = tail call fastcc i32 @cobalt_tx_bytes(ptr noundef %3, ptr noundef %adap, i1 noundef zeroext false, i1 noundef zeroext %cmp2, ptr noundef %24, i16 noundef zeroext %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.else.if.then63_crit_edge, label %if.else.for.inc58_crit_edge

if.else.for.inc58_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc58

if.else.if.then63_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then63

for.inc58:                                        ; preds = %if.else.for.inc58_crit_edge, %if.end37.i.for.inc58_crit_edge, %if.then39.for.inc58_crit_edge
  %inc59 = add nuw nsw i32 %i.0134, 1
  %exitcond.not = icmp eq i32 %inc59, %num
  br i1 %exitcond.not, label %bailout, label %for.inc58.for.body_crit_edge

for.inc58.for.body_crit_edge:                     ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

bailout:                                          ; preds = %for.inc58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp61 = icmp slt i32 %num, 0
  br i1 %cmp61, label %bailout.if.then63_crit_edge, label %bailout.cleanup66_crit_edge

bailout.cleanup66_crit_edge:                      ; preds = %bailout
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup66

bailout.if.then63_crit_edge:                      ; preds = %bailout
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then63

if.then63:                                        ; preds = %bailout.if.then63_crit_edge, %if.else.if.then63_crit_edge, %while.end.i.if.then63_crit_edge, %while.body.i.if.then63_crit_edge
  %ret.6122 = phi i32 [ %num, %bailout.if.then63_crit_edge ], [ -110, %while.body.i.if.then63_crit_edge ], [ -5, %while.end.i.if.then63_crit_edge ], [ %call49, %if.else.if.then63_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i105) #7
  %35 = ptrtoint ptr %data.i105 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %data.i105, align 1
  %call.i106 = call fastcc i32 @cobalt_tx_bytes(ptr noundef %3, ptr noundef %adap, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull %data.i105, i16 noundef zeroext 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i105) #7
  br label %cleanup66

cleanup66:                                        ; preds = %if.then63, %bailout.cleanup66_crit_edge, %for.end.cleanup66_crit_edge, %entry.cleanup66_crit_edge
  %retval.4 = phi i32 [ %ret.6122, %if.then63 ], [ %num, %bailout.cleanup66_crit_edge ], [ 0, %entry.cleanup66_crit_edge ], [ %call, %for.end.cleanup66_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cobalt_func(ptr nocapture noundef readnone %adap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cobalt_tx_bytes(ptr noundef %regs, ptr nocapture noundef readonly %adap, i1 noundef zeroext %start, i1 noundef zeroext %stop, ptr nocapture noundef readonly %data, i16 noundef zeroext %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %len to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %len)
  %cmp55.not = icmp eq i16 %len, 0
  br i1 %cmp55.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %txr_rxr = getelementptr inbounds %struct.cobalt_i2c_regs, ptr %regs, i32 0, i32 6
  %sub = add nsw i32 %conv, -1
  %cr_sr = getelementptr inbounds %struct.cobalt_i2c_regs, ptr %regs, i32 0, i32 8
  %timeout = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 7
  br label %for.body

for.cond:                                         ; preds = %while.end
  %inc = add nuw nsw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %data, i32 %i.056
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %txr_rxr, i8 %1) #7, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.056)
  %cmp3 = icmp eq i32 %i.056, 0
  %2 = and i1 %cmp3, %start
  call void @__sanitizer_cov_trace_cmp4(i32 %i.056, i32 %sub)
  %cmp7 = icmp eq i32 %i.056, %sub
  %3 = and i1 %cmp7, %stop
  %spec.select = select i1 %3, i8 80, i8 16
  %cmd.0 = select i1 %2, i8 -112, i8 %spec.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr_sr, i8 %cmd.0) #7, !srcloc !35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %cr_sr) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  %status.052 = zext i8 %5 to i32
  %and53 = and i32 %status.052, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool18.not54 = icmp eq i32 %and53, 0
  br i1 %tobool18.not54, label %for.body.while.end_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.end23.while.body_crit_edge, %for.body.while.body_crit_edge
  %6 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %timeout, align 4
  %add = add i32 %7, %4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub19 = sub i32 %add, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub19)
  %cmp20 = icmp slt i32 %sub19, 0
  br i1 %cmp20, label %while.body.cleanup_crit_edge, label %if.end23

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %while.body
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 143, i32 noundef 0) #7
  %call.i = tail call i32 @__cond_resched() #7
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %cr_sr) #7, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  %status.0 = zext i8 %9 to i32
  %and = and i32 %status.0, 2
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.end23.while.end_crit_edge, label %if.end23.while.body_crit_edge

if.end23.while.body_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end23.while.end_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end23.while.end_crit_edge, %for.body.while.end_crit_edge
  %status.0.lcssa = phi i32 [ %status.052, %for.body.while.end_crit_edge ], [ %status.0, %if.end23.while.end_crit_edge ]
  %10 = and i32 %status.0.lcssa, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %for.cond, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %while.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -110, %while.body.cleanup_crit_edge ], [ -5, %while.end.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cobalt/cobalt-i2c.c", i32 312, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cobalt_i2c_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cobalt_i2c_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/cobalt/cobalt-i2c.c", i32 356, i32 5}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/cobalt/cobalt-i2c.c", i32 369, i32 3}
!10 = !{ptr @cobalt_i2c_init._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @cobalt_i2c_init._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/cobalt/cobalt-i2c.c", i32 378, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @cobalt_i2c_exit._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @cobalt_i2c_exit._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/cobalt/cobalt-i2c.c", i32 381, i32 3}
!19 = !{ptr @cobalt_i2c_exit._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @cobalt_i2c_exit._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @cobalt_i2c_adap_template, !22, !"cobalt_i2c_adap_template", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/cobalt/cobalt-i2c.c", i32 292, i32 33}
!23 = !{ptr @cobalt_algo, !24, !"cobalt_algo", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/cobalt/cobalt-i2c.c", i32 299, i32 35}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i64 2152538059}
!35 = !{i64 4996714}
!36 = !{i64 4997109}
!37 = !{i64 2152536454}
