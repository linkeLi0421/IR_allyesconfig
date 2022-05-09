; ModuleID = '/llk/IR_all_yes/drivers/iio/humidity/hts221_buffer.c_pt.bc'
source_filename = "../drivers/iio/humidity/hts221_buffer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hts221_hw = type { ptr, ptr, ptr, ptr, ptr, i32, [2 x %struct.hts221_sensor], i8, i8, %struct.anon.85 }
%struct.hts221_sensor = type { i8, i32, i32 }
%struct.anon.85 = type { [2 x i16], i64 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.st_sensors_platform_data = type { i8, i8, i8, i8, i8 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.78, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.78 = type { i8, i8, i8, i8, i8, i32 }

@hts221_allocate_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 96, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mode %lx unsupported, using IRQF_TRIGGER_RISING\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hts221_allocate_trigger\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/iio/humidity/hts221_buffer.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hts221_allocate_trigger._entry_ptr = internal global ptr @hts221_allocate_trigger._entry, section ".printk_index", align 4
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"drive-open-drain\00", [47 x i8] zeroinitializer }, align 32
@hts221_allocate_trigger._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 127, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to request trigger irq %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@hts221_allocate_trigger._entry_ptr.9 = internal global ptr @hts221_allocate_trigger._entry.6, section ".printk_index", align 4
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s-trigger\00", [21 x i8] zeroinitializer }, align 32
@hts221_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @hts221_trig_set_state, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@hts221_buffer_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr @hts221_buffer_preenable, ptr null, ptr null, ptr @hts221_buffer_postdisable, ptr null }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author303 = internal constant [57 x i8] c"hts221.author=Lorenzo Bianconi <lorenzo.bianconi@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [59 x i8] c"hts221.description=STMicroelectronics hts221 buffer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [40 x i8] c"hts221.file=drivers/iio/humidity/hts221\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [22 x i8] c"hts221.license=GPL v2\00", section ".modinfo", align 1
@switch.table.hts221_allocate_trigger = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 4, i32 4, i32 4, i32 4, i32 4, i32 8], [32 x i8] zeroinitializer }, align 32
@switch.table.hts221_allocate_trigger.11 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 128, i32 0, i32 0, i32 0, i32 0, i32 0, i32 128], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 94, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 108, i32 41 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 126, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 131, i32 45 }
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c"hts221_trigger_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 48, i32 37 }
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"hts221_buffer_ops\00", align 1
@___asan_gen_.49 = private constant [40 x i8] c"../drivers/iio/humidity/hts221_buffer.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 153, i32 42 }
@___asan_gen_.51 = private unnamed_addr constant [37 x i8] c"switch.table.hts221_allocate_trigger\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [40 x i8] c"switch.table.hts221_allocate_trigger.11\00", align 1
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @hts221_allocate_trigger._entry, ptr @hts221_allocate_trigger._entry.6, ptr @hts221_allocate_trigger._entry_ptr, ptr @hts221_allocate_trigger._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @hts221_trigger_ops, ptr @hts221_buffer_ops, ptr @switch.table.hts221_allocate_trigger, ptr @switch.table.hts221_allocate_trigger.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hts221_allocate_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hts221_allocate_trigger._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hts221_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hts221_buffer_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hts221_allocate_trigger to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hts221_allocate_trigger.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hts221_allocate_trigger(ptr noundef %iio_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev = getelementptr inbounds %struct.hts221_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %irq = getelementptr inbounds %struct.hts221_hw, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @irq_get_irq_data(i32 noundef %7) #4
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call2, i32 0, i32 3
  %8 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %common.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %and.i = and i32 %11, 15
  %switch.tableidx = add nsw i32 %and.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %12 = icmp ult i32 %switch.tableidx, 8
  br i1 %12, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str, i32 noundef %and.i) #7
  br label %sw.epilog.thread

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %15 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %switch.lobit.not = icmp eq i8 %15, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.hts221_allocate_trigger, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep152 = getelementptr inbounds [8 x i32], ptr @switch.table.hts221_allocate_trigger.11, i32 0, i32 %switch.tableidx
  %17 = ptrtoint ptr %switch.gep152 to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load153 = load i32, ptr %switch.gep152, align 4
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %switch.lookup, %do.end
  %irq_type.0147 = phi i32 [ 1, %do.end ], [ %switch.load, %switch.lookup ]
  %18 = phi i32 [ 0, %do.end ], [ %switch.load153, %switch.lookup ]
  %regmap148 = getelementptr inbounds %struct.hts221_hw, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %regmap148 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap148, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 34, i32 noundef 128, i32 noundef %18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %sw.epilog.thread.cleanup_crit_edge, label %if.end29

sw.epilog.thread.cleanup_crit_edge:               ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end29:                                         ; preds = %sw.epilog.thread
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %call.i141 = tail call zeroext i1 @device_property_present(ptr noundef %22, ptr noundef nonnull @.str.5) #4
  br i1 %call.i141, label %if.end29._crit_edge, label %lor.lhs.false

if.end29._crit_edge:                              ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %25

lor.lhs.false:                                    ; preds = %if.end29
  %tobool33.not = icmp eq ptr %5, null
  br i1 %tobool33.not, label %lor.lhs.false.if.end38.thread_crit_edge, label %land.lhs.true

lor.lhs.false.if.end38.thread_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38.thread

land.lhs.true:                                    ; preds = %lor.lhs.false
  %open_drain34 = getelementptr inbounds %struct.st_sensors_platform_data, ptr %5, i32 0, i32 1
  %23 = ptrtoint ptr %open_drain34 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %open_drain34, align 1, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool35.not = icmp eq i8 %24, 0
  br i1 %tobool35.not, label %land.lhs.true.if.end38.thread_crit_edge, label %land.lhs.true._crit_edge

land.lhs.true._crit_edge:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %25

land.lhs.true.if.end38.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38.thread

25:                                               ; preds = %land.lhs.true._crit_edge, %if.end29._crit_edge
  %or = or i32 %irq_type.0147, 128
  br label %if.end38.thread

if.end38.thread:                                  ; preds = %25, %land.lhs.true.if.end38.thread_crit_edge, %lor.lhs.false.if.end38.thread_crit_edge
  %irq_type.1151 = phi i32 [ %or, %25 ], [ %irq_type.0147, %land.lhs.true.if.end38.thread_crit_edge ], [ %irq_type.0147, %lor.lhs.false.if.end38.thread_crit_edge ]
  %26 = phi i32 [ 64, %25 ], [ 0, %land.lhs.true.if.end38.thread_crit_edge ], [ 0, %lor.lhs.false.if.end38.thread_crit_edge ]
  %27 = ptrtoint ptr %regmap148 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap148, align 8
  %call.i142 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 34, i32 noundef 64, i32 noundef %26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %cmp70 = icmp slt i32 %call.i142, 0
  br i1 %cmp70, label %if.end38.thread.cleanup_crit_edge, label %if.end73

if.end38.thread.cleanup_crit_edge:                ; preds = %if.end38.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end73:                                         ; preds = %if.end38.thread
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  %or76 = or i32 %irq_type.1151, 8192
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %call77 = tail call i32 @devm_request_threaded_irq(ptr noundef %30, i32 noundef %32, ptr noundef null, ptr noundef nonnull @hts221_trigger_handler_thread, i32 noundef %or76, ptr noundef %34, ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  br i1 %tobool78.not, label %if.end85, label %do.end82

do.end82:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.7, i32 noundef %38) #7
  br label %cleanup

if.end85:                                         ; preds = %if.end73
  %name87 = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 15
  %39 = ptrtoint ptr %name87 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name87, align 8
  %call88 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %36, ptr noundef nonnull @.str.10, ptr noundef %40) #4
  %trig = getelementptr inbounds %struct.hts221_hw, ptr %1, i32 0, i32 4
  %41 = ptrtoint ptr %trig to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call88, ptr %trig, align 8
  %tobool90.not = icmp eq ptr %call88, null
  br i1 %tobool90.not, label %if.end85.cleanup_crit_edge, label %if.end92

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end92:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %call88, i32 0, i32 4, i32 8
  %42 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %iio_dev, ptr %driver_data.i.i, align 4
  %43 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %trig, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @hts221_trigger_ops, ptr %44, align 8
  %46 = load ptr, ptr %trig, align 8
  %dev.i = getelementptr inbounds %struct.iio_trigger, ptr %46, i32 0, i32 4
  %call.i143 = tail call ptr @get_device(ptr noundef %dev.i) #4
  %owner.i = getelementptr inbounds %struct.iio_trigger, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %owner.i, align 4
  tail call void @__module_get(ptr noundef %48) #4
  %trig97 = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 10
  %49 = ptrtoint ptr %trig97 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %trig97, align 4
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  %52 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %trig, align 8
  %call100 = tail call i32 @__devm_iio_trigger_register(ptr noundef %51, ptr noundef %53, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %if.end85.cleanup_crit_edge, %do.end82, %if.end38.thread.cleanup_crit_edge, %sw.epilog.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ %call77, %do.end82 ], [ %call100, %if.end92 ], [ %call.i, %sw.epilog.thread.cleanup_crit_edge ], [ %call.i142, %if.end38.thread.cleanup_crit_edge ], [ -12, %if.end85.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hts221_trigger_handler_thread(i32 noundef %irq, ptr nocapture noundef readonly %private) #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #4
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !38
  %regmap = getelementptr inbounds %struct.hts221_hw, ptr %private, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 8
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 39, ptr noundef nonnull %status) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %trig = getelementptr inbounds %struct.hts221_hw, ptr %private, i32 0, i32 4
  %5 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trig, align 8
  call void @iio_trigger_poll_chained(ptr noundef %6) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end2 ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #4
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hts221_allocate_buffers(ptr noundef %iio_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev = getelementptr inbounds %struct.hts221_hw, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call1 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %3, ptr noundef %iio_dev, ptr noundef null, ptr noundef nonnull @hts221_buffer_handler_thread, i32 noundef 0, ptr noundef nonnull @hts221_buffer_ops, ptr noundef null) #4
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hts221_buffer_handler_thread(i32 noundef %irq, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channels, align 8
  %regmap = getelementptr inbounds %struct.hts221_hw, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 8
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %address, align 4
  %scan = getelementptr inbounds %struct.hts221_hw, ptr %3, i32 0, i32 9
  %call3 = tail call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef %9, ptr noundef %scan, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %channels, align 8
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 8
  %address7 = getelementptr %struct.iio_chan_spec, ptr %11, i32 1, i32 3
  %14 = ptrtoint ptr %address7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %address7, align 4
  %arrayidx10 = getelementptr %struct.hts221_hw, ptr %3, i32 0, i32 9, i32 0, i32 1
  %call11 = tail call i32 @regmap_bulk_read(ptr noundef %13, i32 noundef %15, ptr noundef %arrayidx10, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end.out_crit_edge, label %if.end14

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end14:                                         ; preds = %if.end
  %call16 = tail call i64 @iio_get_time_ns(ptr noundef %1) #4
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %scan_timestamp.i, align 8, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %if.end14.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end14.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %19, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan, i32 %sub.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %call16, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end14.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan) #4
  br label %out

out:                                              ; preds = %iio_push_to_buffers_with_timestamp.exit, %if.end.out_crit_edge, %entry.out_crit_edge
  %trig = getelementptr inbounds %struct.hts221_hw, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %trig, align 8
  tail call void @iio_trigger_notify_done(ptr noundef %22) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll_chained(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hts221_trig_set_state(ptr nocapture noundef readonly %trig, i1 noundef zeroext %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %regmap = getelementptr inbounds %struct.hts221_hw, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 8
  %shl = select i1 %state, i32 4, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 34, i32 noundef 4, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hts221_buffer_preenable(ptr nocapture noundef readonly %iio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i32 @hts221_set_enable(ptr noundef %1, i1 noundef zeroext true) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hts221_buffer_postdisable(ptr nocapture noundef readonly %iio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i32 @hts221_set_enable(ptr noundef %1, i1 noundef zeroext false) #4
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hts221_set_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !19, !21, !23, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iio/humidity/hts221_buffer.c", i32 94, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hts221_allocate_trigger._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hts221_allocate_trigger._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/iio/humidity/hts221_buffer.c", i32 108, i32 41}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/humidity/hts221_buffer.c", i32 126, i32 3}
!12 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @hts221_allocate_trigger._entry.6, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @hts221_allocate_trigger._entry_ptr.9, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/iio/humidity/hts221_buffer.c", i32 131, i32 45}
!17 = !{ptr @__UNIQUE_ID_author303, !18, !"__UNIQUE_ID_author303", i1 false, i1 false}
!18 = !{!"../drivers/iio/humidity/hts221_buffer.c", i32 199, i32 1}
!19 = !{ptr @__UNIQUE_ID_description304, !20, !"__UNIQUE_ID_description304", i1 false, i1 false}
!20 = !{!"../drivers/iio/humidity/hts221_buffer.c", i32 200, i32 1}
!21 = !{ptr @__UNIQUE_ID_file305, !22, !"__UNIQUE_ID_file305", i1 false, i1 false}
!22 = !{!"../drivers/iio/humidity/hts221_buffer.c", i32 201, i32 1}
!23 = !{ptr @__UNIQUE_ID_license306, !22, !"__UNIQUE_ID_license306", i1 false, i1 false}
!24 = !{ptr @hts221_trigger_ops, !25, !"hts221_trigger_ops", i1 false, i1 false}
!25 = !{!"../drivers/iio/humidity/hts221_buffer.c", i32 48, i32 37}
!26 = !{ptr @hts221_buffer_ops, !27, !"hts221_buffer_ops", i1 false, i1 false}
!27 = !{!"../drivers/iio/humidity/hts221_buffer.c", i32 153, i32 42}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i8 0, i8 2}
!38 = !{!"auto-init"}
