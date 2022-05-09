; ModuleID = '/llk/IR_all_yes/drivers/media/rc/ir-rcmm-decoder.c_pt.bc'
source_filename = "../drivers/media/rc/ir-rcmm-decoder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ir_raw_handler = type { %struct.list_head, i64, ptr, ptr, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ir_raw_event_ctrl = type { %struct.list_head, ptr, %struct.anon.67, i64, ptr, %struct.spinlock, %struct.timer_list, %struct.ir_raw_event, %struct.ir_raw_event, i32, ptr, %struct.nec_dec, %struct.rc5_dec, %struct.rc6_dec, %struct.sony_dec, %struct.jvc_dec, %struct.sanyo_dec, %struct.sharp_dec, %struct.mce_kbd_dec, %struct.xmp_dec, %struct.imon_dec, %struct.rcmm_dec }
%struct.anon.67 = type { %union.anon.68, [512 x %struct.ir_raw_event] }
%union.anon.68 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.ir_raw_event = type { %union.anon.69, i8, i8 }
%union.anon.69 = type { i32 }
%struct.nec_dec = type { i32, i32, i32, i8, i8 }
%struct.rc5_dec = type { i32, i32, i32, i8 }
%struct.rc6_dec = type { i32, i8, i32, i8, i32, i32 }
%struct.sony_dec = type { i32, i32, i32 }
%struct.jvc_dec = type { i32, i16, i16, i32, i8, i8 }
%struct.sanyo_dec = type { i32, i32, i64 }
%struct.sharp_dec = type { i32, i32, i32, i32 }
%struct.mce_kbd_dec = type { %struct.spinlock, %struct.timer_list, i32, i8, i32, i32, i32 }
%struct.xmp_dec = type { i32, i32, [16 x i32] }
%struct.imon_dec = type { i32, i32, i32, i32, i8 }
%struct.rcmm_dec = type { i32, i32, i32 }

@rcmm_handler = internal global { %struct.ir_raw_handler, [56 x i8] } { %struct.ir_raw_handler { %struct.list_head zeroinitializer, i64 117440512, ptr @ir_rcmm_decode, ptr @ir_rcmm_encode, i32 36000, i32 944, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_ir_rcmm_decoder__229_250_ir_rcmm_decode_init6 = internal global ptr @ir_rcmm_decode_init, section ".initcall6.init", align 4
@__exitcall_ir_rcmm_decode_exit = internal global ptr @ir_rcmm_decode_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file230 = internal constant [54 x i8] c"ir_rcmm_decoder.file=drivers/media/rc/ir-rcmm-decoder\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [28 x i8] c"ir_rcmm_decoder.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [37 x i8] c"ir_rcmm_decoder.author=Patrick Lerda\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [53 x i8] c"ir_rcmm_decoder.description=RCMM IR protocol decoder\00", section ".modinfo", align 1
@ir_rcmm_decode.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ir_rcmm_decoder\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ir_rcmm_decode\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/rc/ir-rcmm-decoder.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"RC-MM decode failed at count %d state %d (%uus %s)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pulse\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"space\00", [26 x i8] zeroinitializer }, align 32
@rcmmspace = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 278, i32 444, i32 611, i32 778], [16 x i8] zeroinitializer }, align 32
@ir_rcmm_decode_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016IR RCMM protocol handler initialized\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ir_rcmm_decode_init\00", [44 x i8] zeroinitializer }, align 32
@ir_rcmm_decode_init._entry_ptr = internal global ptr @ir_rcmm_decode_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 24, i64 25, i64 26]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 24]
@___asan_gen_.10 = private unnamed_addr constant [13 x i8] c"rcmm_handler\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 227, i32 30 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 167, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [10 x i8] c"rcmmspace\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 173, i32 18 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [38 x i8] c"../drivers/media/rc/ir-rcmm-decoder.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 241, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_ir_rcmm_decode_exit, ptr @__initcall__kmod_ir_rcmm_decoder__229_250_ir_rcmm_decode_init6, ptr @ir_rcmm_decode_exit, ptr @ir_rcmm_decode_init._entry, ptr @ir_rcmm_decode_init._entry_ptr, ptr @rcmm_handler, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rcmmspace, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcmm_handler to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcmmspace to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_rcmm_decode_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ir_rcmm_decode_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ir_raw_handler_unregister(ptr noundef nonnull @rcmm_handler) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_handler_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_rcmm_decode_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ir_raw_handler_register(ptr noundef nonnull @rcmm_handler) #5
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_rcmm_decode(ptr noundef %dev, [2 x i32] %ev.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ev.coerce.fca.0.extract = extractvalue [2 x i32] %ev.coerce, 0
  %ev.coerce.fca.1.extract = extractvalue [2 x i32] %ev.coerce, 1
  %raw = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %raw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw, align 4
  %rcmm = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 21
  %enabled_protocols = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 17
  %2 = ptrtoint ptr %enabled_protocols to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %enabled_protocols, align 8
  %and = and i64 %3, 117440512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = and i32 %ev.coerce.fca.1.extract, 5242880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.end5, label %if.then1

if.then1:                                         ; preds = %if.end
  %6 = and i32 %ev.coerce.fca.1.extract, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.then1.cleanup_crit_edge, label %if.then3

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %rcmm to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rcmm, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %rcmm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rcmm, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end5.do.body_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb17
    i32 2, label %sw.bb29
    i32 3, label %sw.bb41
    i32 4, label %sw.bb80
  ]

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

sw.bb:                                            ; preds = %if.end5
  %11 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp ne i32 %11, 0
  %12 = add i32 %ev.coerce.fca.0.extract, -252
  call void @__sanitizer_cov_trace_const_cmp4(i32 331, i32 %12)
  %13 = icmp ult i32 %12, 331
  %or.cond = select i1 %tobool10.not, i1 %13, i1 false
  br i1 %or.cond, label %if.end15, label %sw.bb.do.body_crit_edge

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end15:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %rcmm to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %rcmm, align 4
  %count = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 21, i32 1
  %15 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %count, align 4
  %bits = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 21, i32 2
  %16 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %bits, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %if.end5
  %17 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool22.not = icmp eq i32 %17, 0
  %18 = add i32 %ev.coerce.fca.0.extract, -113
  call void @__sanitizer_cov_trace_const_cmp4(i32 331, i32 %18)
  %19 = icmp ult i32 %18, 331
  %or.cond190 = select i1 %tobool22.not, i1 %19, i1 false
  br i1 %or.cond190, label %if.end27, label %sw.bb17.do.body_crit_edge

sw.bb17.do.body_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end27:                                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %rcmm to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %rcmm, align 4
  br label %cleanup

sw.bb29:                                          ; preds = %if.end5
  %21 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool34.not = icmp ne i32 %21, 0
  %22 = add i32 %ev.coerce.fca.0.extract, -84
  call void @__sanitizer_cov_trace_const_cmp4(i32 165, i32 %22)
  %23 = icmp ult i32 %22, 165
  %or.cond192 = select i1 %tobool34.not, i1 %23, i1 false
  br i1 %or.cond192, label %if.end39, label %sw.bb29.do.body_crit_edge

sw.bb29.do.body_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end39:                                         ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %rcmm to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %rcmm, align 4
  br label %cleanup

sw.bb41:                                          ; preds = %if.end5
  %25 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool46.not = icmp eq i32 %25, 0
  br i1 %tobool46.not, label %if.end48, label %sw.bb41.do.body_crit_edge

sw.bb41.do.body_crit_edge:                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end48:                                         ; preds = %sw.bb41
  %26 = add i32 %ev.coerce.fca.0.extract, -196
  call void @__sanitizer_cov_trace_const_cmp4(i32 165, i32 %26)
  %27 = icmp ult i32 %26, 165
  br i1 %27, label %if.end48.if.end69_crit_edge, label %if.else

if.end48.if.end69_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.else:                                          ; preds = %if.end48
  %28 = add i32 %ev.coerce.fca.0.extract, -362
  call void @__sanitizer_cov_trace_const_cmp4(i32 165, i32 %28)
  %29 = icmp ult i32 %28, 165
  br i1 %29, label %if.else.if.end69_crit_edge, label %if.else53

if.else.if.end69_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.else53:                                        ; preds = %if.else
  %30 = add i32 %ev.coerce.fca.0.extract, -529
  call void @__sanitizer_cov_trace_const_cmp4(i32 165, i32 %30)
  %31 = icmp ult i32 %30, 165
  br i1 %31, label %if.else53.if.end69_crit_edge, label %if.end63

if.else53.if.end69_crit_edge:                     ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.end63:                                         ; preds = %if.else53
  %32 = add i32 %ev.coerce.fca.0.extract, -696
  call void @__sanitizer_cov_trace_const_cmp4(i32 165, i32 %32)
  %33 = icmp ult i32 %32, 165
  br i1 %33, label %if.end63.if.end69_crit_edge, label %if.then64

if.end63.if.end69_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then64:                                        ; preds = %if.end63
  %call65 = tail call fastcc i32 @rcmm_miscmode(ptr noundef %dev, ptr noundef %rcmm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then64.cleanup_crit_edge, label %if.then64.do.body_crit_edge

if.then64.do.body_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then64.cleanup_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end69:                                         ; preds = %if.end63.if.end69_crit_edge, %if.else53.if.end69_crit_edge, %if.else.if.end69_crit_edge, %if.end48.if.end69_crit_edge
  %value.0186 = phi i32 [ 3, %if.end63.if.end69_crit_edge ], [ 2, %if.else53.if.end69_crit_edge ], [ 1, %if.else.if.end69_crit_edge ], [ 0, %if.end48.if.end69_crit_edge ]
  %bits70 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 21, i32 2
  %34 = ptrtoint ptr %bits70 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bits70, align 4
  %shl = shl i32 %35, 2
  %or = or i32 %shl, %value.0186
  store i32 %or, ptr %bits70, align 4
  %count72 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 21, i32 1
  %36 = ptrtoint ptr %count72 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count72, align 4
  %add = add i32 %37, 2
  store i32 %add, ptr %count72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add)
  %cmp74 = icmp ult i32 %add, 32
  %.168 = select i1 %cmp74, i32 2, i32 4
  %38 = ptrtoint ptr %rcmm to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.168, ptr %rcmm, align 4
  br label %cleanup

sw.bb80:                                          ; preds = %if.end5
  %39 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool85.not = icmp eq i32 %39, 0
  %40 = add i32 %ev.coerce.fca.0.extract, -249
  call void @__sanitizer_cov_trace_const_cmp4(i32 -165, i32 %40)
  %41 = icmp ult i32 %40, -165
  %or.cond194 = select i1 %tobool85.not, i1 true, i1 %41
  %and103 = and i64 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and103)
  %tobool104.not = icmp eq i64 %and103, 0
  %or.cond195 = select i1 %or.cond194, i1 true, i1 %tobool104.not
  br i1 %or.cond195, label %sw.bb80.do.body_crit_edge, label %if.then105

sw.bb80.do.body_crit_edge:                        ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then105:                                       ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #7
  %bits.i = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 21, i32 2
  %42 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bits.i, align 4
  %and.i = and i32 %43, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 786432, i32 %and.i)
  %cmp.i183.not = icmp eq i32 %and.i, 786432
  %and94 = lshr i32 %43, 15
  %44 = trunc i32 %and94 to i8
  %45 = and i8 %44, 1
  %toggle.0 = select i1 %cmp.i183.not, i8 0, i8 %45
  %and98 = and i32 %43, -32769
  %scancode.0 = select i1 %cmp.i183.not, i32 %43, i32 %and98
  %conv106 = zext i32 %scancode.0 to i64
  tail call void @rc_keydown(ptr noundef %dev, i32 noundef 26, i64 noundef %conv106, i8 noundef zeroext %toggle.0) #5
  %46 = ptrtoint ptr %rcmm to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %rcmm, align 4
  br label %cleanup

do.body:                                          ; preds = %sw.bb80.do.body_crit_edge, %if.then64.do.body_crit_edge, %sw.bb41.do.body_crit_edge, %sw.bb29.do.body_crit_edge, %sw.bb17.do.body_crit_edge, %sw.bb.do.body_crit_edge, %if.end5.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_rcmm_decode.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_rcmm_decode, %if.then116)) #5
          to label %do.end [label %if.then116], !srcloc !37

if.then116:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %count118 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 21, i32 1
  %47 = ptrtoint ptr %count118 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %count118, align 4
  %49 = ptrtoint ptr %rcmm to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rcmm, align 4
  %51 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool124.not = icmp eq i32 %51, 0
  %cond = select i1 %tobool124.not, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_rcmm_decode.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %48, i32 noundef %50, i32 noundef %ev.coerce.fca.0.extract, ptr noundef nonnull %cond) #5
  br label %do.end

do.end:                                           ; preds = %if.then116, %do.body
  %52 = ptrtoint ptr %rcmm to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %rcmm, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then105, %if.end69, %if.then64.cleanup_crit_edge, %if.end39, %if.end27, %if.end15, %if.then3, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then105 ], [ 0, %if.end69 ], [ 0, %if.end39 ], [ 0, %if.end27 ], [ 0, %if.end15 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then3 ], [ 0, %if.then1.cleanup_crit_edge ], [ 0, %if.then64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @ir_rcmm_encode(i32 noundef %protocol, i32 noundef %scancode, ptr noundef %events, i32 noundef %max) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %protocol, label %entry.cleanup_crit_edge [
    i32 26, label %sw.bb
    i32 25, label %sw.bb1
    i32 24, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max)
  %tobool.not.i.i = icmp eq i32 %max, 0
  br i1 %tobool.not.i.i, label %sw.bb.cleanup_crit_edge, label %if.end.i.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.bb
  %1 = ptrtoint ptr %events to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 417, ptr %events, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %events, i32 4
  %2 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %events, i32 5
  %3 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -128, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %max)
  %tobool1.not.i.i = icmp eq i32 %max, 1
  br i1 %tobool1.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %ir_raw_gen_pulse_space.exit.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ir_raw_gen_pulse_space.exit.i:                    ; preds = %if.end.i.i
  %incdec.ptr.i.i = getelementptr %struct.ir_raw_event, ptr %events, i32 1
  %incdec.ptr4.i.i = getelementptr %struct.ir_raw_event, ptr %events, i32 2
  %4 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 278, ptr %incdec.ptr.i.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i9.i.i = getelementptr %struct.ir_raw_event, ptr %events, i32 1, i32 1
  %5 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i10.i.i = getelementptr %struct.ir_raw_event, ptr %events, i32 1, i32 2
  %6 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i10.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %.compoundliteral.sroa.3.0..sroa_idx.i10.i.i, align 1
  %7 = add i32 %max, -34
  br label %for.body.i

for.body.i:                                       ; preds = %ir_raw_gen_pulse_space.exit29.i.for.body.i_crit_edge, %ir_raw_gen_pulse_space.exit.i
  %e.0 = phi ptr [ %incdec.ptr4.i.i, %ir_raw_gen_pulse_space.exit.i ], [ %incdec.ptr4.i23.i, %ir_raw_gen_pulse_space.exit29.i.for.body.i_crit_edge ]
  %i.065.i = phi i32 [ 30, %ir_raw_gen_pulse_space.exit.i ], [ %i.0.i, %ir_raw_gen_pulse_space.exit29.i.for.body.i_crit_edge ]
  %max.addr.164.i.in = phi i32 [ %max, %ir_raw_gen_pulse_space.exit.i ], [ %max.addr.164.i, %ir_raw_gen_pulse_space.exit29.i.for.body.i_crit_edge ]
  %max.addr.164.i = add i32 %max.addr.164.i.in, -2
  %shr.i = lshr i32 %scancode, %i.065.i
  %and.i = and i32 %shr.i, 3
  %arrayidx.i = getelementptr [4 x i32], ptr @rcmmspace, i32 0, i32 %and.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max.addr.164.i)
  %tobool.not.i16.i = icmp eq i32 %max.addr.164.i, 0
  br i1 %tobool.not.i16.i, label %for.body.i.cleanup_crit_edge, label %if.end.i22.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i22.i:                                     ; preds = %for.body.i
  %10 = ptrtoint ptr %e.0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 166, ptr %e.0, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i18.i = getelementptr inbounds i8, ptr %e.0, i32 4
  %11 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i18.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i18.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i19.i = getelementptr inbounds i8, ptr %e.0, i32 5
  %12 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i19.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -128, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i19.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %max.addr.164.i.in)
  %tobool1.not.i21.i = icmp eq i32 %max.addr.164.i.in, 3
  br i1 %tobool1.not.i21.i, label %if.end.i22.i.cleanup_crit_edge, label %ir_raw_gen_pulse_space.exit29.i

if.end.i22.i.cleanup_crit_edge:                   ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ir_raw_gen_pulse_space.exit29.i:                  ; preds = %if.end.i22.i
  %incdec.ptr.i17.i = getelementptr %struct.ir_raw_event, ptr %e.0, i32 1
  %incdec.ptr4.i23.i = getelementptr %struct.ir_raw_event, ptr %e.0, i32 2
  %13 = ptrtoint ptr %incdec.ptr.i17.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %9, ptr %incdec.ptr.i17.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i9.i24.i = getelementptr %struct.ir_raw_event, ptr %e.0, i32 1, i32 1
  %14 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i24.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i24.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i10.i25.i = getelementptr %struct.ir_raw_event, ptr %e.0, i32 1, i32 2
  %15 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i10.i25.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %.compoundliteral.sroa.3.0..sroa_idx.i10.i25.i, align 1
  %i.0.i = add nsw i32 %i.065.i, -2
  %cmp.i = icmp sgt i32 %i.065.i, 1
  br i1 %cmp.i, label %ir_raw_gen_pulse_space.exit29.i.for.body.i_crit_edge, label %for.end.i

ir_raw_gen_pulse_space.exit29.i.for.body.i_crit_edge: ; preds = %ir_raw_gen_pulse_space.exit29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %ir_raw_gen_pulse_space.exit29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i30.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i30.i, label %for.end.i.cleanup_crit_edge, label %if.end.i36.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i36.i:                                     ; preds = %for.end.i
  %16 = ptrtoint ptr %incdec.ptr4.i23.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 166, ptr %incdec.ptr4.i23.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i32.i = getelementptr %struct.ir_raw_event, ptr %e.0, i32 2, i32 1
  %17 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i32.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i32.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i33.i = getelementptr %struct.ir_raw_event, ptr %e.0, i32 2, i32 2
  %18 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i33.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -128, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i33.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %tobool1.not.i35.i = icmp eq i32 %7, 1
  br i1 %tobool1.not.i35.i, label %if.end.i36.i.cleanup_crit_edge, label %if.end3.i41.i

if.end.i36.i.cleanup_crit_edge:                   ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3.i41.i:                                    ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.i31.i = getelementptr %struct.ir_raw_event, ptr %e.0, i32 3
  %incdec.ptr4.i37.i = getelementptr %struct.ir_raw_event, ptr %e.0, i32 4
  %19 = ptrtoint ptr %incdec.ptr.i31.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1556, ptr %incdec.ptr.i31.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i9.i38.i = getelementptr %struct.ir_raw_event, ptr %e.0, i32 3, i32 1
  %20 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i38.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i38.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i10.i39.i = getelementptr %struct.ir_raw_event, ptr %e.0, i32 3, i32 2
  br label %if.end

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max)
  %tobool.not.i.i12 = icmp eq i32 %max, 0
  br i1 %tobool.not.i.i12, label %sw.bb1.cleanup_crit_edge, label %if.end.i.i17

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i17:                                     ; preds = %sw.bb1
  %21 = ptrtoint ptr %events to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 417, ptr %events, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i.i14 = getelementptr inbounds i8, ptr %events, i32 4
  %22 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i.i14 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i.i14, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i.i15 = getelementptr inbounds i8, ptr %events, i32 5
  %23 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i.i15 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -128, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i.i15, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %max)
  %tobool1.not.i.i16 = icmp eq i32 %max, 1
  br i1 %tobool1.not.i.i16, label %if.end.i.i17.cleanup_crit_edge, label %ir_raw_gen_pulse_space.exit.i22

if.end.i.i17.cleanup_crit_edge:                   ; preds = %if.end.i.i17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ir_raw_gen_pulse_space.exit.i22:                  ; preds = %if.end.i.i17
  %incdec.ptr.i.i13 = getelementptr %struct.ir_raw_event, ptr %events, i32 1
  %incdec.ptr4.i.i18 = getelementptr %struct.ir_raw_event, ptr %events, i32 2
  %24 = ptrtoint ptr %incdec.ptr.i.i13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 278, ptr %incdec.ptr.i.i13, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i9.i.i19 = getelementptr %struct.ir_raw_event, ptr %events, i32 1, i32 1
  %25 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i.i19 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i.i19, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i10.i.i20 = getelementptr %struct.ir_raw_event, ptr %events, i32 1, i32 2
  %26 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i10.i.i20 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %.compoundliteral.sroa.3.0..sroa_idx.i10.i.i20, align 1
  %27 = add i32 %max, -26
  br label %for.body.i30

for.body.i30:                                     ; preds = %ir_raw_gen_pulse_space.exit29.i42.for.body.i30_crit_edge, %ir_raw_gen_pulse_space.exit.i22
  %e.2 = phi ptr [ %incdec.ptr4.i.i18, %ir_raw_gen_pulse_space.exit.i22 ], [ %incdec.ptr4.i23.i36, %ir_raw_gen_pulse_space.exit29.i42.for.body.i30_crit_edge ]
  %i.065.i23 = phi i32 [ 22, %ir_raw_gen_pulse_space.exit.i22 ], [ %i.0.i40, %ir_raw_gen_pulse_space.exit29.i42.for.body.i30_crit_edge ]
  %max.addr.164.i24.in = phi i32 [ %max, %ir_raw_gen_pulse_space.exit.i22 ], [ %max.addr.164.i24, %ir_raw_gen_pulse_space.exit29.i42.for.body.i30_crit_edge ]
  %max.addr.164.i24 = add i32 %max.addr.164.i24.in, -2
  %shr.i26 = lshr i32 %scancode, %i.065.i23
  %and.i27 = and i32 %shr.i26, 3
  %arrayidx.i28 = getelementptr [4 x i32], ptr @rcmmspace, i32 0, i32 %and.i27
  %28 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max.addr.164.i24)
  %tobool.not.i16.i29 = icmp eq i32 %max.addr.164.i24, 0
  br i1 %tobool.not.i16.i29, label %for.body.i30.cleanup_crit_edge, label %if.end.i22.i35

for.body.i30.cleanup_crit_edge:                   ; preds = %for.body.i30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i22.i35:                                   ; preds = %for.body.i30
  %30 = ptrtoint ptr %e.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 166, ptr %e.2, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i18.i32 = getelementptr inbounds i8, ptr %e.2, i32 4
  %31 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i18.i32 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i18.i32, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i19.i33 = getelementptr inbounds i8, ptr %e.2, i32 5
  %32 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i19.i33 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -128, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i19.i33, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %max.addr.164.i24.in)
  %tobool1.not.i21.i34 = icmp eq i32 %max.addr.164.i24.in, 3
  br i1 %tobool1.not.i21.i34, label %if.end.i22.i35.cleanup_crit_edge, label %ir_raw_gen_pulse_space.exit29.i42

if.end.i22.i35.cleanup_crit_edge:                 ; preds = %if.end.i22.i35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ir_raw_gen_pulse_space.exit29.i42:                ; preds = %if.end.i22.i35
  %incdec.ptr.i17.i31 = getelementptr %struct.ir_raw_event, ptr %e.2, i32 1
  %incdec.ptr4.i23.i36 = getelementptr %struct.ir_raw_event, ptr %e.2, i32 2
  %33 = ptrtoint ptr %incdec.ptr.i17.i31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %29, ptr %incdec.ptr.i17.i31, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i9.i24.i37 = getelementptr %struct.ir_raw_event, ptr %e.2, i32 1, i32 1
  %34 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i24.i37 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i24.i37, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i10.i25.i38 = getelementptr %struct.ir_raw_event, ptr %e.2, i32 1, i32 2
  %35 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i10.i25.i38 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %.compoundliteral.sroa.3.0..sroa_idx.i10.i25.i38, align 1
  %i.0.i40 = add nsw i32 %i.065.i23, -2
  %cmp.i41 = icmp sgt i32 %i.065.i23, 1
  br i1 %cmp.i41, label %ir_raw_gen_pulse_space.exit29.i42.for.body.i30_crit_edge, label %for.end.i44

ir_raw_gen_pulse_space.exit29.i42.for.body.i30_crit_edge: ; preds = %ir_raw_gen_pulse_space.exit29.i42
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i30

for.end.i44:                                      ; preds = %ir_raw_gen_pulse_space.exit29.i42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i30.i43 = icmp eq i32 %27, 0
  br i1 %tobool.not.i30.i43, label %for.end.i44.cleanup_crit_edge, label %if.end.i36.i49

for.end.i44.cleanup_crit_edge:                    ; preds = %for.end.i44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i36.i49:                                   ; preds = %for.end.i44
  %36 = ptrtoint ptr %incdec.ptr4.i23.i36 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 166, ptr %incdec.ptr4.i23.i36, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i32.i46 = getelementptr %struct.ir_raw_event, ptr %e.2, i32 2, i32 1
  %37 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i32.i46 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i32.i46, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i33.i47 = getelementptr %struct.ir_raw_event, ptr %e.2, i32 2, i32 2
  %38 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i33.i47 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -128, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i33.i47, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %tobool1.not.i35.i48 = icmp eq i32 %27, 1
  br i1 %tobool1.not.i35.i48, label %if.end.i36.i49.cleanup_crit_edge, label %if.end3.i41.i53

if.end.i36.i49.cleanup_crit_edge:                 ; preds = %if.end.i36.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3.i41.i53:                                  ; preds = %if.end.i36.i49
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.i31.i45 = getelementptr %struct.ir_raw_event, ptr %e.2, i32 3
  %incdec.ptr4.i37.i50 = getelementptr %struct.ir_raw_event, ptr %e.2, i32 4
  %39 = ptrtoint ptr %incdec.ptr.i31.i45 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1556, ptr %incdec.ptr.i31.i45, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i9.i38.i51 = getelementptr %struct.ir_raw_event, ptr %e.2, i32 3, i32 1
  %40 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i38.i51 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i38.i51, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i10.i39.i52 = getelementptr %struct.ir_raw_event, ptr %e.2, i32 3, i32 2
  br label %if.end

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max)
  %tobool.not.i.i56 = icmp eq i32 %max, 0
  br i1 %tobool.not.i.i56, label %sw.bb3.cleanup_crit_edge, label %if.end.i.i61

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i61:                                     ; preds = %sw.bb3
  %41 = ptrtoint ptr %events to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 417, ptr %events, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i.i58 = getelementptr inbounds i8, ptr %events, i32 4
  %42 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i.i58 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i.i58, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i.i59 = getelementptr inbounds i8, ptr %events, i32 5
  %43 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i.i59 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -128, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i.i59, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %max)
  %tobool1.not.i.i60 = icmp eq i32 %max, 1
  br i1 %tobool1.not.i.i60, label %if.end.i.i61.cleanup_crit_edge, label %ir_raw_gen_pulse_space.exit.i66

if.end.i.i61.cleanup_crit_edge:                   ; preds = %if.end.i.i61
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ir_raw_gen_pulse_space.exit.i66:                  ; preds = %if.end.i.i61
  %incdec.ptr.i.i57 = getelementptr %struct.ir_raw_event, ptr %events, i32 1
  %44 = ptrtoint ptr %incdec.ptr.i.i57 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 278, ptr %incdec.ptr.i.i57, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i9.i.i63 = getelementptr %struct.ir_raw_event, ptr %events, i32 1, i32 1
  %45 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i.i63 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i.i63, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i10.i.i64 = getelementptr %struct.ir_raw_event, ptr %events, i32 1, i32 2
  %46 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i10.i.i64 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %.compoundliteral.sroa.3.0..sroa_idx.i10.i.i64, align 1
  %47 = add i32 %max, -14
  %max.addr.164.i68 = add i32 %max, -2
  %shr.i70 = lshr i32 %scancode, 10
  %and.i71 = and i32 %shr.i70, 3
  %arrayidx.i72 = getelementptr [4 x i32], ptr @rcmmspace, i32 0, i32 %and.i71
  %48 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max.addr.164.i68)
  %tobool.not.i16.i73 = icmp eq i32 %max.addr.164.i68, 0
  br i1 %tobool.not.i16.i73, label %ir_raw_gen_pulse_space.exit.i66.cleanup_crit_edge, label %if.end.i22.i79

ir_raw_gen_pulse_space.exit.i66.cleanup_crit_edge: ; preds = %ir_raw_gen_pulse_space.exit.i66
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i22.i79:                                   ; preds = %ir_raw_gen_pulse_space.exit.i66
  %incdec.ptr4.i.i62 = getelementptr %struct.ir_raw_event, ptr %events, i32 2
  %50 = ptrtoint ptr %incdec.ptr4.i.i62 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 166, ptr %incdec.ptr4.i.i62, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i18.i76 = getelementptr %struct.ir_raw_event, ptr %events, i32 2, i32 1
  %51 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i18.i76 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i18.i76, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i19.i77 = getelementptr %struct.ir_raw_event, ptr %events, i32 2, i32 2
  %52 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i19.i77 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -128, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i19.i77, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %max)
  %tobool1.not.i21.i78 = icmp eq i32 %max, 3
  br i1 %tobool1.not.i21.i78, label %if.end.i22.i79.cleanup_crit_edge, label %ir_raw_gen_pulse_space.exit29.i86

if.end.i22.i79.cleanup_crit_edge:                 ; preds = %if.end.i22.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ir_raw_gen_pulse_space.exit29.i86:                ; preds = %if.end.i22.i79
  %incdec.ptr.i17.i75 = getelementptr %struct.ir_raw_event, ptr %events, i32 3
  %53 = ptrtoint ptr %incdec.ptr.i17.i75 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %49, ptr %incdec.ptr.i17.i75, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i9.i24.i81 = getelementptr %struct.ir_raw_event, ptr %events, i32 3, i32 1
  %54 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i24.i81 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i24.i81, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i10.i25.i82 = getelementptr %struct.ir_raw_event, ptr %events, i32 3, i32 2
  %55 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i10.i25.i82 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %.compoundliteral.sroa.3.0..sroa_idx.i10.i25.i82, align 1
  %max.addr.164.i68.1 = add i32 %max, -4
  %shr.i70.1 = lshr i32 %scancode, 8
  %and.i71.1 = and i32 %shr.i70.1, 3
  %arrayidx.i72.1 = getelementptr [4 x i32], ptr @rcmmspace, i32 0, i32 %and.i71.1
  %56 = ptrtoint ptr %arrayidx.i72.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i72.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max.addr.164.i68.1)
  %tobool.not.i16.i73.1 = icmp eq i32 %max.addr.164.i68.1, 0
  br i1 %tobool.not.i16.i73.1, label %ir_raw_gen_pulse_space.exit29.i86.cleanup_crit_edge, label %if.end.i22.i79.1

ir_raw_gen_pulse_space.exit29.i86.cleanup_crit_edge: ; preds = %ir_raw_gen_pulse_space.exit29.i86
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i22.i79.1:                                 ; preds = %ir_raw_gen_pulse_space.exit29.i86
  %incdec.ptr4.i23.i80 = getelementptr %struct.ir_raw_event, ptr %events, i32 4
  %58 = ptrtoint ptr %incdec.ptr4.i23.i80 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 166, ptr %incdec.ptr4.i23.i80, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i18.i76.1 = getelementptr %struct.ir_raw_event, ptr %events, i32 4, i32 1
  %59 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i18.i76.1 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i18.i76.1, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i19.i77.1 = getelementptr %struct.ir_raw_event, ptr %events, i32 4, i32 2
  %60 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i19.i77.1 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -128, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i19.i77.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %max.addr.164.i68)
  %tobool1.not.i21.i78.1 = icmp eq i32 %max.addr.164.i68, 3
  br i1 %tobool1.not.i21.i78.1, label %if.end.i22.i79.1.cleanup_crit_edge, label %ir_raw_gen_pulse_space.exit29.i86.1

if.end.i22.i79.1.cleanup_crit_edge:               ; preds = %if.end.i22.i79.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ir_raw_gen_pulse_space.exit29.i86.1:              ; preds = %if.end.i22.i79.1
  %incdec.ptr.i17.i75.1 = getelementptr %struct.ir_raw_event, ptr %events, i32 5
  %61 = ptrtoint ptr %incdec.ptr.i17.i75.1 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %57, ptr %incdec.ptr.i17.i75.1, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i9.i24.i81.1 = getelementptr %struct.ir_raw_event, ptr %events, i32 5, i32 1
  %62 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i24.i81.1 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i24.i81.1, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i10.i25.i82.1 = getelementptr %struct.ir_raw_event, ptr %events, i32 5, i32 2
  %63 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i10.i25.i82.1 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %.compoundliteral.sroa.3.0..sroa_idx.i10.i25.i82.1, align 1
  %max.addr.164.i68.2 = add i32 %max, -6
  %shr.i70.2 = lshr i32 %scancode, 6
  %and.i71.2 = and i32 %shr.i70.2, 3
  %arrayidx.i72.2 = getelementptr [4 x i32], ptr @rcmmspace, i32 0, i32 %and.i71.2
  %64 = ptrtoint ptr %arrayidx.i72.2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i72.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max.addr.164.i68.2)
  %tobool.not.i16.i73.2 = icmp eq i32 %max.addr.164.i68.2, 0
  br i1 %tobool.not.i16.i73.2, label %ir_raw_gen_pulse_space.exit29.i86.1.cleanup_crit_edge, label %if.end.i22.i79.2

ir_raw_gen_pulse_space.exit29.i86.1.cleanup_crit_edge: ; preds = %ir_raw_gen_pulse_space.exit29.i86.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i22.i79.2:                                 ; preds = %ir_raw_gen_pulse_space.exit29.i86.1
  %incdec.ptr4.i23.i80.1 = getelementptr %struct.ir_raw_event, ptr %events, i32 6
  %66 = ptrtoint ptr %incdec.ptr4.i23.i80.1 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 166, ptr %incdec.ptr4.i23.i80.1, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i18.i76.2 = getelementptr %struct.ir_raw_event, ptr %events, i32 6, i32 1
  %67 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i18.i76.2 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i18.i76.2, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i19.i77.2 = getelementptr %struct.ir_raw_event, ptr %events, i32 6, i32 2
  %68 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i19.i77.2 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -128, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i19.i77.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %max.addr.164.i68.1)
  %tobool1.not.i21.i78.2 = icmp eq i32 %max.addr.164.i68.1, 3
  br i1 %tobool1.not.i21.i78.2, label %if.end.i22.i79.2.cleanup_crit_edge, label %ir_raw_gen_pulse_space.exit29.i86.2

if.end.i22.i79.2.cleanup_crit_edge:               ; preds = %if.end.i22.i79.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ir_raw_gen_pulse_space.exit29.i86.2:              ; preds = %if.end.i22.i79.2
  %incdec.ptr.i17.i75.2 = getelementptr %struct.ir_raw_event, ptr %events, i32 7
  %69 = ptrtoint ptr %incdec.ptr.i17.i75.2 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %65, ptr %incdec.ptr.i17.i75.2, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i9.i24.i81.2 = getelementptr %struct.ir_raw_event, ptr %events, i32 7, i32 1
  %70 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i24.i81.2 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i24.i81.2, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i10.i25.i82.2 = getelementptr %struct.ir_raw_event, ptr %events, i32 7, i32 2
  %71 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i10.i25.i82.2 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %.compoundliteral.sroa.3.0..sroa_idx.i10.i25.i82.2, align 1
  %max.addr.164.i68.3 = add i32 %max, -8
  %shr.i70.3 = lshr i32 %scancode, 4
  %and.i71.3 = and i32 %shr.i70.3, 3
  %arrayidx.i72.3 = getelementptr [4 x i32], ptr @rcmmspace, i32 0, i32 %and.i71.3
  %72 = ptrtoint ptr %arrayidx.i72.3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i72.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max.addr.164.i68.3)
  %tobool.not.i16.i73.3 = icmp eq i32 %max.addr.164.i68.3, 0
  br i1 %tobool.not.i16.i73.3, label %ir_raw_gen_pulse_space.exit29.i86.2.cleanup_crit_edge, label %if.end.i22.i79.3

ir_raw_gen_pulse_space.exit29.i86.2.cleanup_crit_edge: ; preds = %ir_raw_gen_pulse_space.exit29.i86.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i22.i79.3:                                 ; preds = %ir_raw_gen_pulse_space.exit29.i86.2
  %incdec.ptr4.i23.i80.2 = getelementptr %struct.ir_raw_event, ptr %events, i32 8
  %74 = ptrtoint ptr %incdec.ptr4.i23.i80.2 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 166, ptr %incdec.ptr4.i23.i80.2, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i18.i76.3 = getelementptr %struct.ir_raw_event, ptr %events, i32 8, i32 1
  %75 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i18.i76.3 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i18.i76.3, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i19.i77.3 = getelementptr %struct.ir_raw_event, ptr %events, i32 8, i32 2
  %76 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i19.i77.3 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -128, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i19.i77.3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %max.addr.164.i68.2)
  %tobool1.not.i21.i78.3 = icmp eq i32 %max.addr.164.i68.2, 3
  br i1 %tobool1.not.i21.i78.3, label %if.end.i22.i79.3.cleanup_crit_edge, label %ir_raw_gen_pulse_space.exit29.i86.3

if.end.i22.i79.3.cleanup_crit_edge:               ; preds = %if.end.i22.i79.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ir_raw_gen_pulse_space.exit29.i86.3:              ; preds = %if.end.i22.i79.3
  %incdec.ptr.i17.i75.3 = getelementptr %struct.ir_raw_event, ptr %events, i32 9
  %77 = ptrtoint ptr %incdec.ptr.i17.i75.3 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %73, ptr %incdec.ptr.i17.i75.3, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i9.i24.i81.3 = getelementptr %struct.ir_raw_event, ptr %events, i32 9, i32 1
  %78 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i24.i81.3 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i24.i81.3, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i10.i25.i82.3 = getelementptr %struct.ir_raw_event, ptr %events, i32 9, i32 2
  %79 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i10.i25.i82.3 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %.compoundliteral.sroa.3.0..sroa_idx.i10.i25.i82.3, align 1
  %max.addr.164.i68.4 = add i32 %max, -10
  %shr.i70.4 = lshr i32 %scancode, 2
  %and.i71.4 = and i32 %shr.i70.4, 3
  %arrayidx.i72.4 = getelementptr [4 x i32], ptr @rcmmspace, i32 0, i32 %and.i71.4
  %80 = ptrtoint ptr %arrayidx.i72.4 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i72.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max.addr.164.i68.4)
  %tobool.not.i16.i73.4 = icmp eq i32 %max.addr.164.i68.4, 0
  br i1 %tobool.not.i16.i73.4, label %ir_raw_gen_pulse_space.exit29.i86.3.cleanup_crit_edge, label %if.end.i22.i79.4

ir_raw_gen_pulse_space.exit29.i86.3.cleanup_crit_edge: ; preds = %ir_raw_gen_pulse_space.exit29.i86.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i22.i79.4:                                 ; preds = %ir_raw_gen_pulse_space.exit29.i86.3
  %incdec.ptr4.i23.i80.3 = getelementptr %struct.ir_raw_event, ptr %events, i32 10
  %82 = ptrtoint ptr %incdec.ptr4.i23.i80.3 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 166, ptr %incdec.ptr4.i23.i80.3, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i18.i76.4 = getelementptr %struct.ir_raw_event, ptr %events, i32 10, i32 1
  %83 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i18.i76.4 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i18.i76.4, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i19.i77.4 = getelementptr %struct.ir_raw_event, ptr %events, i32 10, i32 2
  %84 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i19.i77.4 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 -128, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i19.i77.4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %max.addr.164.i68.3)
  %tobool1.not.i21.i78.4 = icmp eq i32 %max.addr.164.i68.3, 3
  br i1 %tobool1.not.i21.i78.4, label %if.end.i22.i79.4.cleanup_crit_edge, label %ir_raw_gen_pulse_space.exit29.i86.4

if.end.i22.i79.4.cleanup_crit_edge:               ; preds = %if.end.i22.i79.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ir_raw_gen_pulse_space.exit29.i86.4:              ; preds = %if.end.i22.i79.4
  %incdec.ptr.i17.i75.4 = getelementptr %struct.ir_raw_event, ptr %events, i32 11
  %85 = ptrtoint ptr %incdec.ptr.i17.i75.4 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %81, ptr %incdec.ptr.i17.i75.4, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i9.i24.i81.4 = getelementptr %struct.ir_raw_event, ptr %events, i32 11, i32 1
  %86 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i24.i81.4 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i24.i81.4, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i10.i25.i82.4 = getelementptr %struct.ir_raw_event, ptr %events, i32 11, i32 2
  %87 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i10.i25.i82.4 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %.compoundliteral.sroa.3.0..sroa_idx.i10.i25.i82.4, align 1
  %and.i71.5 = and i32 %scancode, 3
  %arrayidx.i72.5 = getelementptr [4 x i32], ptr @rcmmspace, i32 0, i32 %and.i71.5
  %88 = ptrtoint ptr %arrayidx.i72.5 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i72.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %max)
  %tobool.not.i16.i73.5 = icmp eq i32 %max, 12
  br i1 %tobool.not.i16.i73.5, label %ir_raw_gen_pulse_space.exit29.i86.4.cleanup_crit_edge, label %if.end.i22.i79.5

ir_raw_gen_pulse_space.exit29.i86.4.cleanup_crit_edge: ; preds = %ir_raw_gen_pulse_space.exit29.i86.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i22.i79.5:                                 ; preds = %ir_raw_gen_pulse_space.exit29.i86.4
  %incdec.ptr4.i23.i80.4 = getelementptr %struct.ir_raw_event, ptr %events, i32 12
  %90 = ptrtoint ptr %incdec.ptr4.i23.i80.4 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 166, ptr %incdec.ptr4.i23.i80.4, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i18.i76.5 = getelementptr %struct.ir_raw_event, ptr %events, i32 12, i32 1
  %91 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i18.i76.5 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i18.i76.5, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i19.i77.5 = getelementptr %struct.ir_raw_event, ptr %events, i32 12, i32 2
  %92 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i19.i77.5 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -128, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i19.i77.5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %max.addr.164.i68.4)
  %tobool1.not.i21.i78.5 = icmp eq i32 %max.addr.164.i68.4, 3
  br i1 %tobool1.not.i21.i78.5, label %if.end.i22.i79.5.cleanup_crit_edge, label %ir_raw_gen_pulse_space.exit29.i86.5

if.end.i22.i79.5.cleanup_crit_edge:               ; preds = %if.end.i22.i79.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ir_raw_gen_pulse_space.exit29.i86.5:              ; preds = %if.end.i22.i79.5
  %incdec.ptr.i17.i75.5 = getelementptr %struct.ir_raw_event, ptr %events, i32 13
  %93 = ptrtoint ptr %incdec.ptr.i17.i75.5 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %89, ptr %incdec.ptr.i17.i75.5, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i9.i24.i81.5 = getelementptr %struct.ir_raw_event, ptr %events, i32 13, i32 1
  %94 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i24.i81.5 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i24.i81.5, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i10.i25.i82.5 = getelementptr %struct.ir_raw_event, ptr %events, i32 13, i32 2
  %95 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i10.i25.i82.5 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %.compoundliteral.sroa.3.0..sroa_idx.i10.i25.i82.5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i30.i87 = icmp eq i32 %47, 0
  br i1 %tobool.not.i30.i87, label %ir_raw_gen_pulse_space.exit29.i86.5.cleanup_crit_edge, label %if.end.i36.i93

ir_raw_gen_pulse_space.exit29.i86.5.cleanup_crit_edge: ; preds = %ir_raw_gen_pulse_space.exit29.i86.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i36.i93:                                   ; preds = %ir_raw_gen_pulse_space.exit29.i86.5
  %incdec.ptr4.i23.i80.5 = getelementptr %struct.ir_raw_event, ptr %events, i32 14
  %96 = ptrtoint ptr %incdec.ptr4.i23.i80.5 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 166, ptr %incdec.ptr4.i23.i80.5, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i32.i90 = getelementptr %struct.ir_raw_event, ptr %events, i32 14, i32 1
  %97 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i32.i90 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i32.i90, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i33.i91 = getelementptr %struct.ir_raw_event, ptr %events, i32 14, i32 2
  %98 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i33.i91 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -128, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i33.i91, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %tobool1.not.i35.i92 = icmp eq i32 %47, 1
  br i1 %tobool1.not.i35.i92, label %if.end.i36.i93.cleanup_crit_edge, label %if.end3.i41.i97

if.end.i36.i93.cleanup_crit_edge:                 ; preds = %if.end.i36.i93
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3.i41.i97:                                  ; preds = %if.end.i36.i93
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr.i31.i89 = getelementptr %struct.ir_raw_event, ptr %events, i32 15
  %incdec.ptr4.i37.i94 = getelementptr %struct.ir_raw_event, ptr %events, i32 16
  %99 = ptrtoint ptr %incdec.ptr.i31.i89 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1556, ptr %incdec.ptr.i31.i89, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i9.i38.i95 = getelementptr %struct.ir_raw_event, ptr %events, i32 15, i32 1
  %100 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i38.i95 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i9.i38.i95, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i10.i39.i96 = getelementptr %struct.ir_raw_event, ptr %events, i32 15, i32 2
  br label %if.end

if.end:                                           ; preds = %if.end3.i41.i97, %if.end3.i41.i53, %if.end3.i41.i
  %.compoundliteral.sroa.3.0..sroa_idx.i10.i39.i.sink = phi ptr [ %.compoundliteral.sroa.3.0..sroa_idx.i10.i39.i, %if.end3.i41.i ], [ %.compoundliteral.sroa.3.0..sroa_idx.i10.i39.i52, %if.end3.i41.i53 ], [ %.compoundliteral.sroa.3.0..sroa_idx.i10.i39.i96, %if.end3.i41.i97 ]
  %e.6 = phi ptr [ %incdec.ptr4.i37.i, %if.end3.i41.i ], [ %incdec.ptr4.i37.i50, %if.end3.i41.i53 ], [ %incdec.ptr4.i37.i94, %if.end3.i41.i97 ]
  %101 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i10.i39.i.sink to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %.compoundliteral.sroa.3.0..sroa_idx.i10.i39.i.sink, align 1
  %sub.ptr.lhs.cast = ptrtoint ptr %e.6 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %events to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end.i36.i93.cleanup_crit_edge, %ir_raw_gen_pulse_space.exit29.i86.5.cleanup_crit_edge, %if.end.i22.i79.5.cleanup_crit_edge, %ir_raw_gen_pulse_space.exit29.i86.4.cleanup_crit_edge, %if.end.i22.i79.4.cleanup_crit_edge, %ir_raw_gen_pulse_space.exit29.i86.3.cleanup_crit_edge, %if.end.i22.i79.3.cleanup_crit_edge, %ir_raw_gen_pulse_space.exit29.i86.2.cleanup_crit_edge, %if.end.i22.i79.2.cleanup_crit_edge, %ir_raw_gen_pulse_space.exit29.i86.1.cleanup_crit_edge, %if.end.i22.i79.1.cleanup_crit_edge, %ir_raw_gen_pulse_space.exit29.i86.cleanup_crit_edge, %if.end.i22.i79.cleanup_crit_edge, %ir_raw_gen_pulse_space.exit.i66.cleanup_crit_edge, %if.end.i.i61.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %if.end.i36.i49.cleanup_crit_edge, %for.end.i44.cleanup_crit_edge, %if.end.i22.i35.cleanup_crit_edge, %for.body.i30.cleanup_crit_edge, %if.end.i.i17.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %if.end.i36.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %if.end.i22.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.div, %if.end ], [ -105, %if.end.i.i61.cleanup_crit_edge ], [ -105, %sw.bb3.cleanup_crit_edge ], [ -105, %if.end.i36.i93.cleanup_crit_edge ], [ -105, %ir_raw_gen_pulse_space.exit29.i86.5.cleanup_crit_edge ], [ -105, %if.end.i.i17.cleanup_crit_edge ], [ -105, %sw.bb1.cleanup_crit_edge ], [ -105, %if.end.i36.i49.cleanup_crit_edge ], [ -105, %for.end.i44.cleanup_crit_edge ], [ -105, %if.end.i.i.cleanup_crit_edge ], [ -105, %sw.bb.cleanup_crit_edge ], [ -105, %if.end.i36.i.cleanup_crit_edge ], [ -105, %for.end.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -105, %if.end.i22.i79.5.cleanup_crit_edge ], [ -105, %ir_raw_gen_pulse_space.exit29.i86.4.cleanup_crit_edge ], [ -105, %if.end.i22.i79.4.cleanup_crit_edge ], [ -105, %ir_raw_gen_pulse_space.exit29.i86.3.cleanup_crit_edge ], [ -105, %if.end.i22.i79.3.cleanup_crit_edge ], [ -105, %ir_raw_gen_pulse_space.exit29.i86.2.cleanup_crit_edge ], [ -105, %if.end.i22.i79.2.cleanup_crit_edge ], [ -105, %ir_raw_gen_pulse_space.exit29.i86.1.cleanup_crit_edge ], [ -105, %if.end.i22.i79.1.cleanup_crit_edge ], [ -105, %ir_raw_gen_pulse_space.exit29.i86.cleanup_crit_edge ], [ -105, %ir_raw_gen_pulse_space.exit.i66.cleanup_crit_edge ], [ -105, %if.end.i22.i79.cleanup_crit_edge ], [ -105, %for.body.i.cleanup_crit_edge ], [ -105, %if.end.i22.i.cleanup_crit_edge ], [ -105, %for.body.i30.cleanup_crit_edge ], [ -105, %if.end.i22.i35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcmm_miscmode(ptr noundef %dev, ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.rcmm_dec, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %1, label %entry.return_crit_edge [
    i32 24, label %sw.bb
    i32 12, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb:                                            ; preds = %entry
  %enabled_protocols = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 17
  %3 = ptrtoint ptr %enabled_protocols to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %enabled_protocols, align 8
  %and = and i64 %4, 33554432
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %sw.bb.return_crit_edge, label %sw.bb.return.sink.split_crit_edge

sw.bb.return.sink.split_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb1:                                           ; preds = %entry
  %enabled_protocols2 = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 17
  %5 = ptrtoint ptr %enabled_protocols2 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %enabled_protocols2, align 8
  %and3 = and i64 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool4.not = icmp eq i64 %and3, 0
  br i1 %tobool4.not, label %sw.bb1.return_crit_edge, label %sw.bb1.return.sink.split_crit_edge

sw.bb1.return.sink.split_crit_edge:               ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

return.sink.split:                                ; preds = %sw.bb1.return.sink.split_crit_edge, %sw.bb.return.sink.split_crit_edge
  %.sink = phi i32 [ 25, %sw.bb.return.sink.split_crit_edge ], [ 24, %sw.bb1.return.sink.split_crit_edge ]
  %bits6 = getelementptr inbounds %struct.rcmm_dec, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %bits6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bits6, align 4
  %conv7 = zext i32 %8 to i64
  tail call void @rc_keydown(ptr noundef %dev, i32 noundef %.sink, i64 noundef %conv7, i8 noundef zeroext 0) #5
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %data, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %sw.bb1.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %sw.bb.return_crit_edge ], [ -1, %sw.bb1.return_crit_edge ], [ -1, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_handler_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !25, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_ir_rcmm_decoder__229_250_ir_rcmm_decode_init6, !1, !"__initcall__kmod_ir_rcmm_decoder__229_250_ir_rcmm_decode_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/ir-rcmm-decoder.c", i32 250, i32 1}
!2 = !{ptr @__exitcall_ir_rcmm_decode_exit, !3, !"__exitcall_ir_rcmm_decode_exit", i1 false, i1 false}
!3 = !{!"../drivers/media/rc/ir-rcmm-decoder.c", i32 251, i32 1}
!4 = !{ptr @__UNIQUE_ID_file230, !5, !"__UNIQUE_ID_file230", i1 false, i1 false}
!5 = !{!"../drivers/media/rc/ir-rcmm-decoder.c", i32 253, i32 1}
!6 = !{ptr @__UNIQUE_ID_license231, !5, !"__UNIQUE_ID_license231", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author232, !8, !"__UNIQUE_ID_author232", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/ir-rcmm-decoder.c", i32 254, i32 1}
!9 = !{ptr @__UNIQUE_ID_description233, !10, !"__UNIQUE_ID_description233", i1 false, i1 false}
!10 = !{!"../drivers/media/rc/ir-rcmm-decoder.c", i32 255, i32 1}
!11 = !{ptr @rcmm_handler, !12, !"rcmm_handler", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/ir-rcmm-decoder.c", i32 227, i32 30}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/ir-rcmm-decoder.c", i32 167, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ir_rcmm_decode.__UNIQUE_ID_ddebug228, !14, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!19 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rcmmspace, !22, !"rcmmspace", i1 false, i1 false}
!22 = !{!"../drivers/media/rc/ir-rcmm-decoder.c", i32 173, i32 18}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/rc/ir-rcmm-decoder.c", i32 241, i32 2}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ir_rcmm_decode_init._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @ir_rcmm_decode_init._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2148214006, i64 2148214011, i64 2148214024, i64 2148214068, i64 2148214102, i64 2148214123}
