; ModuleID = '/llk/IR_all_yes/drivers/media/rc/ir-imon-decoder.c_pt.bc'
source_filename = "../drivers/media/rc/ir-imon-decoder.c"
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

@imon_handler = internal global { %struct.ir_raw_handler, [56 x i8] } { %struct.ir_raw_handler { %struct.list_head zeroinitializer, i64 8388608, ptr @ir_imon_decode, ptr @ir_imon_encode, i32 38000, i32 24960, ptr @ir_imon_register, ptr null }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_ir_imon_decoder__230_262_ir_imon_decode_init6 = internal global ptr @ir_imon_decode_init, section ".initcall6.init", align 4
@__exitcall_ir_imon_decode_exit = internal global ptr @ir_imon_decode_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file231 = internal constant [54 x i8] c"ir_imon_decoder.file=drivers/media/rc/ir-imon-decoder\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [28 x i8] c"ir_imon_decoder.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [50 x i8] c"ir_imon_decoder.author=Sean Young <sean@mess.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [53 x i8] c"ir_imon_decoder.description=iMON IR protocol decoder\00", section ".modinfo", align 1
@ir_imon_decode.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ir_imon_decoder\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ir_imon_decode\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/rc/ir-imon-decoder.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"iMON decode started at state %d bitno %d (%uus %s)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pulse\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"space\00", [26 x i8] zeroinitializer }, align 32
@ir_imon_decode.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"iMON decode failed at state %d bitno %d (%uus %s)\0A\00", [45 x i8] zeroinitializer }, align 32
@ir_imon_decode_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016ir_imon_decoder: IR iMON protocol handler initialized\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ir_imon_decode_init\00", [44 x i8] zeroinitializer }, align 32
@ir_imon_decode_init._entry_ptr = internal global ptr @ir_imon_decode_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.9 = private unnamed_addr constant [13 x i8] c"imon_handler\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 240, i32 30 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 103, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 169, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [38 x i8] c"../drivers/media/rc/ir-imon-decoder.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 253, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_ir_imon_decode_exit, ptr @__initcall__kmod_ir_imon_decoder__230_262_ir_imon_decode_init6, ptr @ir_imon_decode_exit, ptr @ir_imon_decode_init._entry, ptr @ir_imon_decode_init._entry_ptr, ptr @imon_handler, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imon_handler to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_imon_decode_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ir_imon_decode_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ir_raw_handler_unregister(ptr noundef nonnull @imon_handler) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_handler_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_imon_decode_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ir_raw_handler_register(ptr noundef nonnull @imon_handler) #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_imon_decode(ptr noundef %dev, [2 x i32] %ev.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ev.coerce.fca.0.extract = extractvalue [2 x i32] %ev.coerce, 0
  %ev.coerce.fca.1.extract = extractvalue [2 x i32] %ev.coerce, 1
  %ev.sroa.9.4.extract.shift = lshr i32 %ev.coerce.fca.1.extract, 16
  %ev.sroa.9.4.extract.trunc = trunc i32 %ev.sroa.9.4.extract.shift to i8
  %raw = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %raw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw, align 4
  %imon = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 20
  %2 = and i32 %ev.coerce.fca.1.extract, 5242880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  %4 = and i8 %ev.sroa.9.4.extract.trunc, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_imon_decode.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_imon_decode, %if.then7)) #7
          to label %do.end [label %if.then7], !srcloc !38

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %imon to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %imon, align 4
  %count = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 20, i32 1
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %ev.sroa.9.4.extract.trunc)
  %tobool13.not = icmp sgt i8 %ev.sroa.9.4.extract.trunc, -1
  %cond = select i1 %tobool13.not, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_imon_decode.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %6, i32 noundef %8, i32 noundef %ev.coerce.fca.0.extract, ptr noundef nonnull %cond) #7
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %9 = ptrtoint ptr %imon to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %imon, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp = icmp eq i32 %10, 4
  br i1 %cmp, label %if.then16, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 208, i32 %ev.coerce.fca.0.extract)
  %cmp.i162 = icmp ugt i32 %ev.coerce.fca.0.extract, 208
  br i1 %cmp.i162, label %if.end29.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29.lr.ph:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %ev.sroa.9.4.extract.trunc)
  %tobool95.not = icmp sgt i8 %ev.sroa.9.4.extract.trunc, -1
  %input_dev.i = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 12
  %bits58 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 20, i32 3
  %count68 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 20, i32 1
  %last_chk73 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 20, i32 2
  %bf.lshr46 = lshr i32 %ev.coerce.fca.1.extract, 23
  %bf.cast47 = and i32 %bf.lshr46, 1
  br label %if.end29

if.then16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %ev.sroa.9.4.extract.trunc)
  %tobool21.not = icmp sgt i8 %ev.sroa.9.4.extract.trunc, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %ev.coerce.fca.0.extract)
  %cmp22 = icmp ugt i32 %ev.coerce.fca.0.extract, 10000
  %or.cond = select i1 %tobool21.not, i1 %cmp22, i1 false
  br i1 %or.cond, label %if.then16.cleanup.sink.split_crit_edge, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then16.cleanup.sink.split_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end29:                                         ; preds = %sw.epilog.if.end29_crit_edge, %if.end29.lr.ph
  %ev.sroa.0.0163 = phi i32 [ %ev.coerce.fca.0.extract, %if.end29.lr.ph ], [ %11, %sw.epilog.if.end29_crit_edge ]
  %11 = tail call i32 @llvm.usub.sat.i32(i32 %ev.sroa.0.0163, i32 416) #7
  %12 = ptrtoint ptr %imon to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %imon, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.end29.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb40
    i32 2, label %sw.bb57
    i32 3, label %sw.bb90
  ]

if.end29.sw.epilog_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end29
  br i1 %tobool95.not, label %sw.bb.sw.epilog_crit_edge, label %if.then36

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then36:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %imon to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %imon, align 4
  %16 = ptrtoint ptr %bits58 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %bits58, align 4
  %17 = ptrtoint ptr %count68 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 30, ptr %count68, align 4
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end29
  %18 = ptrtoint ptr %count68 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count68, align 4
  %shl = shl nuw i32 1, %19
  %and = and i32 %shl, 1132428800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %if.else, label %if.then43

if.then43:                                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %last_chk73 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %bf.cast47, ptr %last_chk73, align 4
  br label %if.end55

if.else:                                          ; preds = %sw.bb40
  br i1 %tobool95.not, label %if.else.if.end55_crit_edge, label %if.else.do.body99_crit_edge

if.else.do.body99_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body99

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.end55:                                         ; preds = %if.else.if.end55_crit_edge, %if.then43
  %21 = ptrtoint ptr %imon to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %imon, align 4
  br label %sw.epilog

sw.bb57:                                          ; preds = %if.end29
  %22 = ptrtoint ptr %bits58 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bits58, align 4
  %shl59 = shl i32 %23, 1
  %24 = or i32 %bf.cast47, %shl59
  %spec.select = xor i32 %24, 1
  store i32 %spec.select, ptr %bits58, align 4
  %25 = ptrtoint ptr %count68 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count68, align 4
  %shl69 = shl nuw i32 1, %26
  %and70 = and i32 %shl69, 1132428800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %sw.bb57.if.end82_crit_edge, label %if.then72

sw.bb57.if.end82_crit_edge:                       ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then72:                                        ; preds = %sw.bb57
  %27 = ptrtoint ptr %last_chk73 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %last_chk73, align 4
  %29 = ptrtoint ptr %bits58 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bits58, align 4
  %and75 = and i32 %30, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  %lnot.ext78 = zext i1 %tobool76.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %lnot.ext78)
  %cmp79.not = icmp eq i32 %28, %lnot.ext78
  br i1 %cmp79.not, label %if.then72.if.end82_crit_edge, label %if.then72.do.body99_crit_edge

if.then72.do.body99_crit_edge:                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body99

if.then72.if.end82_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.end82:                                         ; preds = %if.then72.if.end82_crit_edge, %sw.bb57.if.end82_crit_edge
  %dec = add i32 %26, -1
  %31 = ptrtoint ptr %count68 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %dec, ptr %count68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool84.not = icmp eq i32 %26, 0
  br i1 %tobool84.not, label %if.then85, label %if.else87

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %imon to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %imon, align 4
  br label %sw.epilog

if.else87:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %imon to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %imon, align 4
  br label %sw.epilog

sw.bb90:                                          ; preds = %if.end29
  br i1 %tobool95.not, label %if.end97, label %sw.bb90.do.body99_crit_edge

sw.bb90.do.body99_crit_edge:                      ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body99

if.end97:                                         ; preds = %sw.bb90
  %34 = ptrtoint ptr %raw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %raw, align 4
  %bits.i = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %35, i32 0, i32 20, i32 3
  %36 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 697374135, i32 %37)
  %cmp.i154 = icmp eq i32 %37, 697374135
  br i1 %cmp.i154, label %if.end.thread.i, label %if.end.i

if.end.thread.i:                                  ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  %stick_keyboard.i = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %35, i32 0, i32 20, i32 4
  %38 = ptrtoint ptr %stick_keyboard.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %stick_keyboard.i, align 4, !range !39
  %40 = xor i8 %39, 1
  store i8 %40, ptr %stick_keyboard.i, align 4
  br label %ir_imon_decode_scancode.exit

if.end.i:                                         ; preds = %if.end97
  %and.i = and i32 %37, -67108609
  call void @__sanitizer_cov_trace_const_cmp4(i32 1744830647, i32 %and.i)
  %cmp4.i = icmp eq i32 %and.i, 1744830647
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i.ir_imon_decode_scancode.exit_crit_edge

if.end.i.ir_imon_decode_scancode.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ir_imon_decode_scancode.exit

if.then5.i:                                       ; preds = %if.end.i
  %shr.i = lshr i32 %37, 16
  %and8.i = and i32 %shr.i, 8
  %and10.i = lshr i32 %37, 18
  %41 = and i32 %and10.i, 4
  %or.i = or i32 %and8.i, %41
  %and13.i = lshr i32 %37, 20
  %42 = and i32 %and13.i, 2
  %or15.i = or i32 %or.i, %42
  %and17.i = lshr i32 %37, 22
  %43 = and i32 %and17.i, 1
  %or19.i = or i32 %or15.i, %43
  %and21.i = and i32 %37, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  %or24.i = or i32 %or19.i, -16
  %spec.select.i = select i1 %tobool22.not.i, i32 %or19.i, i32 %or24.i
  %shr27.i = lshr i32 %37, 8
  %and30.i = and i32 %shr27.i, 8
  %and32.i = lshr i32 %37, 10
  %44 = and i32 %and32.i, 4
  %or34.i = or i32 %and30.i, %44
  %and36.i = lshr i32 %37, 12
  %45 = and i32 %and36.i, 2
  %or38.i = or i32 %or34.i, %45
  %and40.i = lshr i32 %37, 14
  %46 = and i32 %and40.i, 1
  %or42.i = or i32 %or38.i, %46
  %and44.i = and i32 %37, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  %or47.i = or i32 %or42.i, -16
  %rel_y.0.i = select i1 %tobool45.not.i, i32 %or42.i, i32 %or47.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool49.not.i = icmp eq i32 %spec.select.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rel_y.0.i)
  %tobool50.not.i = icmp eq i32 %rel_y.0.i, 0
  %or.cond.i = select i1 %tobool49.not.i, i1 true, i1 %tobool50.not.i
  br i1 %or.cond.i, label %if.then5.i.if.end79.i_crit_edge, label %land.lhs.true51.i

if.then5.i.if.end79.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79.i

land.lhs.true51.i:                                ; preds = %if.then5.i
  %stick_keyboard52.i = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %35, i32 0, i32 20, i32 4
  %47 = ptrtoint ptr %stick_keyboard52.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %stick_keyboard52.i, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool53.not.i = icmp eq i8 %48, 0
  br i1 %tobool53.not.i, label %land.lhs.true51.i.if.end79.i_crit_edge, label %if.then55.i

land.lhs.true51.i.if.end79.i_crit_edge:           ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79.i

if.then55.i:                                      ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = tail call i32 @llvm.abs.i32(i32 %rel_y.0.i, i1 true) #7
  %50 = tail call i32 @llvm.abs.i32(i32 %spec.select.i, i1 true) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %50)
  %cmp67.i = icmp ugt i32 %49, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rel_y.0.i)
  %cmp70.i = icmp sgt i32 %rel_y.0.i, 0
  %cond72.i = select i1 %cmp70.i, i32 680859063, i32 715462071
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp74.i = icmp sgt i32 %spec.select.i, 0
  %cond76.i = select i1 %cmp74.i, i32 732239287, i32 698684855
  %cond72.sink.i = select i1 %cmp67.i, i32 %cond72.i, i32 %cond76.i
  %51 = ptrtoint ptr %bits.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %cond72.sink.i, ptr %bits.i, align 4
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then55.i, %land.lhs.true51.i.if.end79.i_crit_edge, %if.then5.i.if.end79.i_crit_edge
  %stick_keyboard80.i = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %35, i32 0, i32 20, i32 4
  %52 = ptrtoint ptr %stick_keyboard80.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %stick_keyboard80.i, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool81.not.i = icmp eq i8 %53, 0
  br i1 %tobool81.not.i, label %if.then82.i, label %if.end79.i.ir_imon_decode_scancode.exit_crit_edge

if.end79.i.ir_imon_decode_scancode.exit_crit_edge: ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ir_imon_decode_scancode.exit

if.then82.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %input_dev.i, align 8
  tail call void @input_event(ptr noundef %55, i32 noundef 2, i32 noundef 0, i32 noundef %spec.select.i) #7
  %56 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %input_dev.i, align 8
  tail call void @input_event(ptr noundef %57, i32 noundef 2, i32 noundef 1, i32 noundef %rel_y.0.i) #7
  %58 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %input_dev.i, align 8
  %60 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bits.i, align 4
  %62 = lshr i32 %61, 16
  %.lobit.i = and i32 %62, 1
  tail call void @input_event(ptr noundef %59, i32 noundef 1, i32 noundef 272, i32 noundef %.lobit.i) #7
  %63 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %input_dev.i, align 8
  %65 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bits.i, align 4
  %67 = lshr i32 %66, 18
  %.lobit140.i = and i32 %67, 1
  tail call void @input_event(ptr noundef %64, i32 noundef 1, i32 noundef 273, i32 noundef %.lobit140.i) #7
  br label %ir_imon_decode_scancode.exit

ir_imon_decode_scancode.exit:                     ; preds = %if.then82.i, %if.end79.i.ir_imon_decode_scancode.exit_crit_edge, %if.end.i.ir_imon_decode_scancode.exit_crit_edge, %if.end.thread.i
  %68 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %bits.i, align 4
  %conv97.i = zext i32 %69 to i64
  tail call void @rc_keydown(ptr noundef %dev, i32 noundef 23, i64 noundef %conv97.i, i8 noundef zeroext 0) #7
  %70 = ptrtoint ptr %imon to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %imon, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %ir_imon_decode_scancode.exit, %if.else87, %if.then85, %if.end55, %if.then36, %sw.bb.sw.epilog_crit_edge, %if.end29.sw.epilog_crit_edge
  %cmp.i = icmp ugt i32 %11, 208
  br i1 %cmp.i, label %sw.epilog.if.end29_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog.if.end29_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.body99:                                        ; preds = %sw.bb90.do.body99_crit_edge, %if.then72.do.body99_crit_edge, %if.else.do.body99_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_imon_decode.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_imon_decode, %if.then111)) #7
          to label %cleanup.sink.split [label %if.then111], !srcloc !38

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %imon to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %imon, align 4
  %73 = ptrtoint ptr %count68 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %count68, align 4
  %cond120 = select i1 %tobool95.not, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_imon_decode.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %72, i32 noundef %74, i32 noundef %11, ptr noundef nonnull %cond120) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then111, %do.body99, %if.then16.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %if.then.cleanup.sink.split_crit_edge ], [ 0, %if.then16.cleanup.sink.split_crit_edge ], [ 4, %do.body99 ], [ 4, %if.then111 ]
  %retval.0.ph = phi i32 [ 0, %if.then.cleanup.sink.split_crit_edge ], [ 0, %if.then16.cleanup.sink.split_crit_edge ], [ -22, %do.body99 ], [ -22, %if.then111 ]
  %75 = ptrtoint ptr %imon to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %.sink, ptr %imon, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.epilog.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then16.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_imon_encode(i32 noundef %protocol, i32 noundef %scancode, ptr noundef %events, i32 noundef %max) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max)
  %tobool.not = icmp eq i32 %max, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dec = add i32 %max, -1
  %0 = ptrtoint ptr %events to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 416, ptr %events, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %events, i32 4
  %1 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %events, i32 5
  %2 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -128, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 1
  %3 = xor i32 %scancode, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.078 = phi i32 [ 30, %if.end ], [ %dec37, %for.inc.for.body_crit_edge ]
  %e.077 = phi ptr [ %events, %if.end ], [ %e.2, %for.inc.for.body_crit_edge ]
  %max.addr.076 = phi i32 [ %dec, %if.end ], [ %max.addr.2, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.078
  %and = and i32 %shl, 1132428800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp ne i32 %and, 0
  %or = shl i32 3, %i.078
  %and5 = and i32 %or, %scancode
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %narrow = select i1 %tobool1.not, i1 %tobool6.not, i1 false
  %pulse8 = getelementptr inbounds %struct.ir_raw_event, ptr %e.077, i32 0, i32 2
  %4 = ptrtoint ptr %pulse8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %pulse8, align 1
  %bf.lshr = lshr i8 %bf.load, 7
  %5 = zext i1 %narrow to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr, i8 %5)
  %cmp9 = icmp eq i8 %bf.lshr, %5
  br i1 %cmp9, label %if.then10, label %if.else12

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %e.077 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %e.077, align 4
  %add11 = add i32 %7, 416
  store i32 %add11, ptr %e.077, align 4
  br label %if.end17

if.else12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max.addr.076)
  %tobool14.not = icmp eq i32 %max.addr.076, 0
  br i1 %tobool14.not, label %if.else12.cleanup_crit_edge, label %if.end16

if.else12.cleanup_crit_edge:                      ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #9
  %dec13 = add i32 %max.addr.076, -1
  %incdec.ptr = getelementptr %struct.ir_raw_event, ptr %e.077, i32 1
  %bf.shl.i = select i1 %narrow, i8 -128, i8 0
  %8 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 416, ptr %incdec.ptr, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i69 = getelementptr %struct.ir_raw_event, ptr %e.077, i32 1, i32 1
  %9 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i69 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i69, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i70 = getelementptr %struct.ir_raw_event, ptr %e.077, i32 1, i32 2
  %10 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i70 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %bf.shl.i, ptr %.compoundliteral.sroa.3.0..sroa_idx.i70, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then10
  %max.addr.1 = phi i32 [ %max.addr.076, %if.then10 ], [ %dec13, %if.end16 ]
  %e.1 = phi ptr [ %e.077, %if.then10 ], [ %incdec.ptr, %if.end16 ]
  %11 = lshr i32 %3, %i.078
  %12 = and i32 %11, 1
  %pulse23 = getelementptr inbounds %struct.ir_raw_event, ptr %e.1, i32 0, i32 2
  %13 = ptrtoint ptr %pulse23 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load24 = load i8, ptr %pulse23, align 1
  %bf.lshr25 = lshr i8 %bf.load24, 7
  %bf.cast26 = zext i8 %bf.lshr25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %bf.cast26)
  %cmp27 = icmp eq i32 %12, %bf.cast26
  br i1 %cmp27, label %if.then28, label %if.else30

if.then28:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %e.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %e.1, align 4
  %add29 = add i32 %15, 416
  store i32 %add29, ptr %e.1, align 4
  br label %for.inc

if.else30:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max.addr.1)
  %tobool32.not = icmp eq i32 %max.addr.1, 0
  br i1 %tobool32.not, label %if.else30.cleanup_crit_edge, label %if.end34

if.else30.cleanup_crit_edge:                      ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #9
  %dec31 = add i32 %max.addr.1, -1
  %incdec.ptr35 = getelementptr %struct.ir_raw_event, ptr %e.1, i32 1
  %16 = trunc i32 %12 to i8
  %bf.shl.i71 = shl nuw i8 %16, 7
  %17 = ptrtoint ptr %incdec.ptr35 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 416, ptr %incdec.ptr35, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i72 = getelementptr %struct.ir_raw_event, ptr %e.1, i32 1, i32 1
  %18 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i72 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i72, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i73 = getelementptr %struct.ir_raw_event, ptr %e.1, i32 1, i32 2
  %19 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i73 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %bf.shl.i71, ptr %.compoundliteral.sroa.3.0..sroa_idx.i73, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end34, %if.then28
  %max.addr.2 = phi i32 [ %max.addr.1, %if.then28 ], [ %dec31, %if.end34 ]
  %e.2 = phi ptr [ %e.1, %if.then28 ], [ %incdec.ptr35, %if.end34 ]
  %dec37 = add nsw i32 %i.078, -1
  %cmp.not = icmp eq i32 %i.078, 0
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %pulse38 = getelementptr inbounds %struct.ir_raw_event, ptr %e.2, i32 0, i32 2
  %20 = ptrtoint ptr %pulse38 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load39 = load i8, ptr %pulse38, align 1
  %bf.load39.lobit = lshr i8 %bf.load39, 7
  %21 = zext i8 %bf.load39.lobit to i32
  %spec.select = getelementptr %struct.ir_raw_event, ptr %e.2, i32 %21
  %sub.ptr.lhs.cast = ptrtoint ptr %spec.select to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %events to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.else30.cleanup_crit_edge, %if.else12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.div, %for.end ], [ -105, %entry.cleanup_crit_edge ], [ -105, %if.else12.cleanup_crit_edge ], [ -105, %if.else30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ir_imon_register(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %raw = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %raw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw, align 4
  %stick_keyboard = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 20, i32 4
  %2 = ptrtoint ptr %stick_keyboard to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %stick_keyboard, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_handler_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !26, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__initcall__kmod_ir_imon_decoder__230_262_ir_imon_decode_init6, !1, !"__initcall__kmod_ir_imon_decoder__230_262_ir_imon_decode_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/ir-imon-decoder.c", i32 262, i32 1}
!2 = !{ptr @__exitcall_ir_imon_decode_exit, !3, !"__exitcall_ir_imon_decode_exit", i1 false, i1 false}
!3 = !{!"../drivers/media/rc/ir-imon-decoder.c", i32 263, i32 1}
!4 = !{ptr @__UNIQUE_ID_file231, !5, !"__UNIQUE_ID_file231", i1 false, i1 false}
!5 = !{!"../drivers/media/rc/ir-imon-decoder.c", i32 265, i32 1}
!6 = !{ptr @__UNIQUE_ID_license232, !5, !"__UNIQUE_ID_license232", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author233, !8, !"__UNIQUE_ID_author233", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/ir-imon-decoder.c", i32 266, i32 1}
!9 = !{ptr @__UNIQUE_ID_description234, !10, !"__UNIQUE_ID_description234", i1 false, i1 false}
!10 = !{!"../drivers/media/rc/ir-imon-decoder.c", i32 267, i32 1}
!11 = !{ptr @imon_handler, !12, !"imon_handler", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/ir-imon-decoder.c", i32 240, i32 30}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/ir-imon-decoder.c", i32 103, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ir_imon_decode.__UNIQUE_ID_ddebug228, !14, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!19 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/rc/ir-imon-decoder.c", i32 169, i32 2}
!23 = !{ptr @ir_imon_decode.__UNIQUE_ID_ddebug229, !22, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/rc/ir-imon-decoder.c", i32 253, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ir_imon_decode_init._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @ir_imon_decode_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 2148958150, i64 2148958155, i64 2148958168, i64 2148958212, i64 2148958246, i64 2148958267}
!39 = !{i8 0, i8 2}
