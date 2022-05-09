; ModuleID = '/llk/IR_all_yes/drivers/media/rc/ir-sharp-decoder.c_pt.bc'
source_filename = "../drivers/media/rc/ir-sharp-decoder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ir_raw_handler = type { %struct.list_head, i64, ptr, ptr, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ir_raw_timings_pd = type { i32, i32, i32, [2 x i32], i32, i32, i8 }
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

@sharp_handler = internal global { %struct.ir_raw_handler, [56 x i8] } { %struct.ir_raw_handler { %struct.list_head zeroinitializer, i64 1048576, ptr @ir_sharp_decode, ptr @ir_sharp_encode, i32 38000, i32 50000, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_ir_sharp_decoder__232_237_ir_sharp_decode_init6 = internal global ptr @ir_sharp_decode_init, section ".initcall6.init", align 4
@__exitcall_ir_sharp_decode_exit = internal global ptr @ir_sharp_decode_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file233 = internal constant [56 x i8] c"ir_sharp_decoder.file=drivers/media/rc/ir-sharp-decoder\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [29 x i8] c"ir_sharp_decoder.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [56 x i8] c"ir_sharp_decoder.author=James Hogan <jhogan@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [55 x i8] c"ir_sharp_decoder.description=Sharp IR protocol decoder\00", section ".modinfo", align 1
@ir_sharp_decode.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ir_sharp_decoder\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ir_sharp_decode\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/rc/ir-sharp-decoder.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Sharp decode started at state %d (%uus %s)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pulse\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"space\00", [26 x i8] zeroinitializer }, align 32
@ir_sharp_decode.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Sharp checksum error: received 0x%04x, 0x%04x\0A\00", [49 x i8] zeroinitializer }, align 32
@ir_sharp_decode.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Sharp scancode 0x%04x\0A\00", [41 x i8] zeroinitializer }, align 32
@ir_sharp_decode.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Sharp decode failed at count %d state %d (%uus %s)\0A\00", [44 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@ir_sharp_timings = internal constant { %struct.ir_raw_timings_pd, [32 x i8] } { %struct.ir_raw_timings_pd { i32 0, i32 0, i32 320, [2 x i32] [i32 1000, i32 2000], i32 320, i32 40000, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@ir_sharp_decode_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016IR Sharp protocol handler initialized\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ir_sharp_decode_init\00", [43 x i8] zeroinitializer }, align 32
@ir_sharp_decode_init._entry_ptr = internal global ptr @ir_sharp_decode_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"sharp_handler\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 216, i32 30 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 49, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 144, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 154, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 161, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"ir_sharp_timings\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 167, i32 39 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [39 x i8] c"../drivers/media/rc/ir-sharp-decoder.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 228, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_ir_sharp_decode_exit, ptr @__initcall__kmod_ir_sharp_decoder__232_237_ir_sharp_decode_init6, ptr @ir_sharp_decode_exit, ptr @ir_sharp_decode_init._entry, ptr @ir_sharp_decode_init._entry_ptr, ptr @sharp_handler, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ir_sharp_timings, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sharp_handler to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_sharp_timings to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_sharp_decode_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ir_sharp_decode_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ir_raw_handler_unregister(ptr noundef nonnull @sharp_handler) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_handler_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_sharp_decode_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ir_raw_handler_register(ptr noundef nonnull @sharp_handler) #5
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_sharp_decode(ptr noundef %dev, [2 x i32] %ev.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ev.coerce.fca.0.extract = extractvalue [2 x i32] %ev.coerce, 0
  %ev.coerce.fca.1.extract = extractvalue [2 x i32] %ev.coerce, 1
  %raw = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %raw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw, align 4
  %sharp = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 17
  %2 = and i32 %ev.coerce.fca.1.extract, 5242880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  %4 = and i32 %ev.coerce.fca.1.extract, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_sharp_decode.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_sharp_decode, %if.then7)) #5
          to label %do.end [label %if.then7], !srcloc !46

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %sharp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sharp, align 4
  %7 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool13.not = icmp eq i32 %7, 0
  %cond = select i1 %tobool13.not, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_sharp_decode.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %6, i32 noundef %ev.coerce.fca.0.extract, ptr noundef nonnull %cond) #5
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %8 = ptrtoint ptr %sharp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sharp, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.end.do.body226_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb27
    i32 2, label %sw.bb40
    i32 3, label %sw.bb67
    i32 4, label %sw.bb92
    i32 5, label %sw.bb104
  ]

do.end.do.body226_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body226

sw.bb:                                            ; preds = %do.end
  %11 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool20.not = icmp ne i32 %11, 0
  %12 = add i32 %ev.coerce.fca.0.extract, -161
  call void @__sanitizer_cov_trace_const_cmp4(i32 319, i32 %12)
  %13 = icmp ult i32 %12, 319
  %or.cond351 = select i1 %tobool20.not, i1 %13, i1 false
  br i1 %or.cond351, label %if.end25, label %sw.bb.do.body226_crit_edge

sw.bb.do.body226_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body226

if.end25:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %count = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 17, i32 1
  %14 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %count, align 4
  %pulse_len = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 17, i32 3
  %15 = ptrtoint ptr %pulse_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %ev.coerce.fca.0.extract, ptr %pulse_len, align 4
  br label %cleanup.sink.split

sw.bb27:                                          ; preds = %do.end
  %16 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool32.not = icmp ne i32 %16, 0
  %17 = add i32 %ev.coerce.fca.0.extract, -161
  call void @__sanitizer_cov_trace_const_cmp4(i32 319, i32 %17)
  %18 = icmp ult i32 %17, 319
  %or.cond353 = select i1 %tobool32.not, i1 %18, i1 false
  br i1 %or.cond353, label %if.end37, label %sw.bb27.do.body226_crit_edge

sw.bb27.do.body226_crit_edge:                     ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body226

if.end37:                                         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #7
  %pulse_len38 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 17, i32 3
  %19 = ptrtoint ptr %pulse_len38 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %ev.coerce.fca.0.extract, ptr %pulse_len38, align 4
  br label %cleanup.sink.split

sw.bb40:                                          ; preds = %do.end
  %20 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool45.not = icmp eq i32 %20, 0
  br i1 %tobool45.not, label %if.end47, label %sw.bb40.do.body226_crit_edge

sw.bb40.do.body226_crit_edge:                     ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body226

if.end47:                                         ; preds = %sw.bb40
  %bits = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 17, i32 2
  %21 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bits, align 4
  %shl = shl i32 %22, 1
  store i32 %shl, ptr %bits, align 4
  %pulse_len48 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 17, i32 3
  %23 = ptrtoint ptr %pulse_len48 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pulse_len48, align 4
  %add = add i32 %24, %ev.coerce.fca.0.extract
  %25 = add i32 %add, -1361
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279, i32 %25)
  %26 = icmp ult i32 %25, 1279
  br i1 %26, label %if.then50, label %if.else

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %shl, 1
  %27 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or, ptr %bits, align 4
  br label %if.end57

if.else:                                          ; preds = %if.end47
  %28 = add i32 %add, -361
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279, i32 %28)
  %29 = icmp ult i32 %28, 1279
  br i1 %29, label %if.else.if.end57_crit_edge, label %if.else.do.body226_crit_edge

if.else.do.body226_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body226

if.else.if.end57_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.end57:                                         ; preds = %if.else.if.end57_crit_edge, %if.then50
  %count58 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 17, i32 1
  %30 = ptrtoint ptr %count58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count58, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %count58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %inc)
  %switch.selectcmp.case1 = icmp eq i32 %inc, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %inc)
  %switch.selectcmp.case2 = icmp eq i32 %inc, 30
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %32 = select i1 %switch.selectcmp, i32 3, i32 1
  br label %cleanup.sink.split

sw.bb67:                                          ; preds = %do.end
  %33 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool72.not = icmp ne i32 %33, 0
  %34 = add i32 %ev.coerce.fca.0.extract, -161
  call void @__sanitizer_cov_trace_const_cmp4(i32 319, i32 %34)
  %35 = icmp ult i32 %34, 319
  %or.cond355 = select i1 %tobool72.not, i1 %35, i1 false
  br i1 %or.cond355, label %if.end77, label %sw.bb67.do.body226_crit_edge

sw.bb67.do.body226_crit_edge:                     ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body226

if.end77:                                         ; preds = %sw.bb67
  %count78 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 17, i32 1
  %36 = ptrtoint ptr %count78 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %37)
  %cmp79 = icmp eq i32 %37, 15
  br i1 %cmp79, label %if.then80, label %if.end77.cleanup.sink.split_crit_edge

if.end77.cleanup.sink.split_crit_edge:            ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then80:                                        ; preds = %if.end77
  %bits81 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 17, i32 2
  %38 = ptrtoint ptr %bits81 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bits81, align 4
  %and = and i32 %39, 3
  %40 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %and, label %if.then80.do.body226_crit_edge [
    i32 2, label %if.then80.cleanup.sink.split_crit_edge
    i32 0, label %if.then80.cleanup.sink.split_crit_edge358
  ]

if.then80.cleanup.sink.split_crit_edge358:        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then80.cleanup.sink.split_crit_edge:           ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then80.do.body226_crit_edge:                   ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body226

sw.bb92:                                          ; preds = %do.end
  %41 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool97.not = icmp eq i32 %41, 0
  %42 = add i32 %ev.coerce.fca.0.extract, -30001
  call void @__sanitizer_cov_trace_const_cmp4(i32 19999, i32 %42)
  %43 = icmp ult i32 %42, 19999
  %or.cond357 = select i1 %tobool97.not, i1 %43, i1 false
  br i1 %or.cond357, label %sw.bb92.cleanup.sink.split_crit_edge, label %sw.bb92.do.body226_crit_edge

sw.bb92.do.body226_crit_edge:                     ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body226

sw.bb92.cleanup.sink.split_crit_edge:             ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb104:                                         ; preds = %do.end
  %44 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool109.not = icmp eq i32 %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4840, i32 %ev.coerce.fca.0.extract)
  %cmp.i343 = icmp ugt i32 %ev.coerce.fca.0.extract, 4840
  %or.cond = select i1 %tobool109.not, i1 %cmp.i343, i1 false
  br i1 %or.cond, label %if.end114, label %sw.bb104.do.body226_crit_edge

sw.bb104.do.body226_crit_edge:                    ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body226

if.end114:                                        ; preds = %sw.bb104
  %bits115 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 17, i32 2
  %45 = ptrtoint ptr %bits115 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bits115, align 4
  %shr = lshr i32 %46, 15
  %and116 = and i32 %shr, 32767
  %and118 = and i32 %46, 32767
  %xor = xor i32 %and116, %and118
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %xor)
  %cmp119.not = icmp eq i32 %xor, 1023
  br i1 %cmp119.not, label %cond.end, label %do.body121

do.body121:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_sharp_decode.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_sharp_decode, %if.then133)) #5
          to label %do.body226 [label %if.then133], !srcloc !46

if.then133:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_sharp_decode.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %and116, i32 noundef %and118) #5
  br label %do.body226

cond.end:                                         ; preds = %if.end114
  %shr139 = lshr i32 %46, 22
  %conv = and i32 %shr139, 248
  %arrayidx.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i, align 1
  %cond168 = zext i8 %48 to i32
  %shr170 = lshr i32 %46, 17
  %idxprom.i344 = and i32 %shr170, 255
  %arrayidx.i345 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i344
  %49 = ptrtoint ptr %arrayidx.i345 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i345, align 1
  %cond204 = zext i8 %50 to i32
  %shl205 = shl nuw nsw i32 %cond168, 8
  %or206 = or i32 %shl205, %cond204
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_sharp_decode.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_sharp_decode, %if.then219)) #5
          to label %do.end223 [label %if.then219], !srcloc !46

if.then219:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_sharp_decode.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %or206) #5
  br label %do.end223

do.end223:                                        ; preds = %if.then219, %cond.end
  %conv224 = zext i32 %or206 to i64
  tail call void @rc_keydown(ptr noundef %dev, i32 noundef 20, i64 noundef %conv224, i8 noundef zeroext 0) #5
  br label %cleanup.sink.split

do.body226:                                       ; preds = %if.then133, %do.body121, %sw.bb104.do.body226_crit_edge, %sw.bb92.do.body226_crit_edge, %if.then80.do.body226_crit_edge, %sw.bb67.do.body226_crit_edge, %if.else.do.body226_crit_edge, %sw.bb40.do.body226_crit_edge, %sw.bb27.do.body226_crit_edge, %sw.bb.do.body226_crit_edge, %do.end.do.body226_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_sharp_decode.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_sharp_decode, %if.then238)) #5
          to label %cleanup.sink.split [label %if.then238], !srcloc !46

if.then238:                                       ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #7
  %count240 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 17, i32 1
  %51 = ptrtoint ptr %count240 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %count240, align 4
  %53 = ptrtoint ptr %sharp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sharp, align 4
  %55 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool246.not = icmp eq i32 %55, 0
  %cond247 = select i1 %tobool246.not, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_sharp_decode.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %52, i32 noundef %54, i32 noundef %ev.coerce.fca.0.extract, ptr noundef nonnull %cond247) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then238, %do.body226, %do.end223, %sw.bb92.cleanup.sink.split_crit_edge, %if.then80.cleanup.sink.split_crit_edge, %if.then80.cleanup.sink.split_crit_edge358, %if.end77.cleanup.sink.split_crit_edge, %if.end57, %if.end37, %if.end25, %if.then.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %do.end223 ], [ %32, %if.end57 ], [ 2, %if.end37 ], [ 2, %if.end25 ], [ 0, %if.then.cleanup.sink.split_crit_edge ], [ 4, %if.then80.cleanup.sink.split_crit_edge ], [ 4, %if.then80.cleanup.sink.split_crit_edge358 ], [ 5, %if.end77.cleanup.sink.split_crit_edge ], [ 1, %sw.bb92.cleanup.sink.split_crit_edge ], [ 0, %do.body226 ], [ 0, %if.then238 ]
  %retval.0.ph = phi i32 [ 0, %do.end223 ], [ 0, %if.end57 ], [ 0, %if.end37 ], [ 0, %if.end25 ], [ 0, %if.then.cleanup.sink.split_crit_edge ], [ 0, %if.then80.cleanup.sink.split_crit_edge ], [ 0, %if.then80.cleanup.sink.split_crit_edge358 ], [ 0, %if.end77.cleanup.sink.split_crit_edge ], [ 0, %sw.bb92.cleanup.sink.split_crit_edge ], [ -22, %do.body226 ], [ -22, %if.then238 ]
  %56 = ptrtoint ptr %sharp to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.sink, ptr %sharp, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_sharp_encode(i32 noundef %protocol, i32 noundef %scancode, ptr noundef %events, i32 noundef %max) #2 align 64 {
entry:
  %e = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e) #5
  %0 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %events, ptr %e, align 4
  %shr = lshr i32 %scancode, 8
  %idxprom.i = and i32 %shr, 255
  %arrayidx.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i, align 1
  %3 = lshr i8 %2, 3
  %4 = zext i8 %3 to i32
  %idxprom.i193 = and i32 %scancode, 255
  %arrayidx.i194 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i193
  %5 = ptrtoint ptr %arrayidx.i194 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i194, align 1
  %cond59 = zext i8 %6 to i32
  %7 = shl nuw nsw i32 %4, 10
  %8 = shl nuw nsw i32 %cond59, 2
  %shl61 = or i32 %8, %7
  %or62 = or i32 %shl61, 2
  %conv63 = zext i32 %or62 to i64
  %call64 = call i32 @ir_raw_gen_pd(ptr noundef nonnull %e, i32 noundef %max, ptr noundef nonnull @ir_sharp_timings, i32 noundef 15, i64 noundef %conv63) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp = icmp slt i32 %call64, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = sub i32 %max, %call64
  %idxprom.i195 = and i32 %shr, 255
  %arrayidx.i196 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i195
  %9 = ptrtoint ptr %arrayidx.i196 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i196, align 1
  %11 = lshr i8 %10, 3
  %12 = zext i8 %11 to i32
  %conv105 = and i32 %scancode, 255
  %idxprom.i197 = xor i32 %conv105, 255
  %arrayidx.i198 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i197
  %13 = ptrtoint ptr %arrayidx.i198 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i198, align 1
  %cond137 = zext i8 %14 to i32
  %15 = shl nuw nsw i32 %12, 10
  %16 = shl nuw nsw i32 %cond137, 2
  %shl139 = or i32 %16, %15
  %or140 = or i32 %shl139, 1
  %conv141 = zext i32 %or140 to i64
  %call142 = call i32 @ir_raw_gen_pd(ptr noundef nonnull %e, i32 noundef %sub, ptr noundef nonnull @ir_sharp_timings, i32 noundef 15, i64 noundef %conv141) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %cmp143 = icmp slt i32 %call142, 0
  br i1 %cmp143, label %if.end.cleanup_crit_edge, label %if.end146

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end146:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %e, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %events to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  br label %cleanup

cleanup:                                          ; preds = %if.end146, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.div, %if.end146 ], [ %call64, %entry.cleanup_crit_edge ], [ %call142, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_gen_pd(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_handler_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !26, !27, !29, !30, !32, !34, !35, !36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_ir_sharp_decoder__232_237_ir_sharp_decode_init6, !1, !"__initcall__kmod_ir_sharp_decoder__232_237_ir_sharp_decode_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/ir-sharp-decoder.c", i32 237, i32 1}
!2 = !{ptr @__exitcall_ir_sharp_decode_exit, !3, !"__exitcall_ir_sharp_decode_exit", i1 false, i1 false}
!3 = !{!"../drivers/media/rc/ir-sharp-decoder.c", i32 238, i32 1}
!4 = !{ptr @__UNIQUE_ID_file233, !5, !"__UNIQUE_ID_file233", i1 false, i1 false}
!5 = !{!"../drivers/media/rc/ir-sharp-decoder.c", i32 240, i32 1}
!6 = !{ptr @__UNIQUE_ID_license234, !5, !"__UNIQUE_ID_license234", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author235, !8, !"__UNIQUE_ID_author235", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/ir-sharp-decoder.c", i32 241, i32 1}
!9 = !{ptr @__UNIQUE_ID_description236, !10, !"__UNIQUE_ID_description236", i1 false, i1 false}
!10 = !{!"../drivers/media/rc/ir-sharp-decoder.c", i32 242, i32 1}
!11 = !{ptr @sharp_handler, !12, !"sharp_handler", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/ir-sharp-decoder.c", i32 216, i32 30}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/ir-sharp-decoder.c", i32 49, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ir_sharp_decode.__UNIQUE_ID_ddebug228, !14, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!19 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/rc/ir-sharp-decoder.c", i32 144, i32 4}
!23 = !{ptr @ir_sharp_decode.__UNIQUE_ID_ddebug229, !22, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/rc/ir-sharp-decoder.c", i32 154, i32 3}
!26 = !{ptr @ir_sharp_decode.__UNIQUE_ID_ddebug230, !25, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/rc/ir-sharp-decoder.c", i32 161, i32 2}
!29 = !{ptr @ir_sharp_decode.__UNIQUE_ID_ddebug231, !28, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!30 = !{ptr @ir_sharp_timings, !31, !"ir_sharp_timings", i1 false, i1 false}
!31 = !{!"../drivers/media/rc/ir-sharp-decoder.c", i32 167, i32 39}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/rc/ir-sharp-decoder.c", i32 228, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ir_sharp_decode_init._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @ir_sharp_decode_init._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 2148960518, i64 2148960523, i64 2148960536, i64 2148960580, i64 2148960614, i64 2148960635}
