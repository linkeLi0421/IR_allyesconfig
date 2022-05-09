; ModuleID = '/llk/IR_all_yes/drivers/media/rc/ir-sony-decoder.c_pt.bc'
source_filename = "../drivers/media/rc/ir-sony-decoder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ir_raw_handler = type { %struct.list_head, i64, ptr, ptr, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ir_raw_timings_pl = type { i32, i32, [2 x i32], i32, i8 }
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

@sony_handler = internal global { %struct.ir_raw_handler, [56 x i8] } { %struct.ir_raw_handler { %struct.list_head zeroinitializer, i64 448, ptr @ir_sony_decode, ptr @ir_sony_encode, i32 40000, i32 6000, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_ir_sony_decoder__232_235_ir_sony_decode_init6 = internal global ptr @ir_sony_decode_init, section ".initcall6.init", align 4
@__exitcall_ir_sony_decode_exit = internal global ptr @ir_sony_decode_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file233 = internal constant [54 x i8] c"ir_sony_decoder.file=drivers/media/rc/ir-sony-decoder\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [28 x i8] c"ir_sony_decoder.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [59 x i8] c"ir_sony_decoder.author=David H\C3\A4rdeman <david@hardeman.nu>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [53 x i8] c"ir_sony_decoder.description=Sony IR protocol decoder\00", section ".modinfo", align 1
@ir_sony_decode.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ir_sony_decoder\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ir_sony_decode\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/rc/ir-sony-decoder.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Sony decode started at state %d (%uus %s)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pulse\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"space\00", [26 x i8] zeroinitializer }, align 32
@ir_sony_decode.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Sony invalid bitcount %u\0A\00", [38 x i8] zeroinitializer }, align 32
@ir_sony_decode.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Sony(%u) scancode 0x%05x\0A\00", [38 x i8] zeroinitializer }, align 32
@ir_sony_decode.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Sony decode failed at state %d (%uus %s)\0A\00", [54 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@ir_sony_timings = internal constant { %struct.ir_raw_timings_pl, [40 x i8] } { %struct.ir_raw_timings_pl { i32 2400, i32 600, [2 x i32] [i32 600, i32 1200], i32 6600, i8 0 }, [40 x i8] zeroinitializer }, align 32
@ir_sony_decode_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016IR Sony protocol handler initialized\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ir_sony_decode_init\00", [44 x i8] zeroinitializer }, align 32
@ir_sony_decode_init._entry_ptr = internal global ptr @ir_sony_decode_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 12, i64 15, i64 20]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@___asan_gen_.13 = private unnamed_addr constant [13 x i8] c"sony_handler\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 213, i32 30 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 50, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 143, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 149, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 156, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"ir_sony_timings\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 166, i32 39 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [38 x i8] c"../drivers/media/rc/ir-sony-decoder.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 226, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_ir_sony_decode_exit, ptr @__initcall__kmod_ir_sony_decoder__232_235_ir_sony_decode_init6, ptr @ir_sony_decode_exit, ptr @ir_sony_decode_init._entry, ptr @ir_sony_decode_init._entry_ptr, ptr @sony_handler, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ir_sony_timings, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sony_handler to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_sony_timings to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_sony_decode_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ir_sony_decode_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ir_raw_handler_unregister(ptr noundef nonnull @sony_handler) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_handler_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_sony_decode_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ir_raw_handler_register(ptr noundef nonnull @sony_handler) #6
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_sony_decode(ptr noundef %dev, [2 x i32] %ev.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ev.coerce.fca.0.extract = extractvalue [2 x i32] %ev.coerce, 0
  %ev.coerce.fca.1.extract = extractvalue [2 x i32] %ev.coerce, 1
  %ev.sroa.15.4.extract.shift = lshr i32 %ev.coerce.fca.1.extract, 16
  %ev.sroa.15.4.extract.trunc = trunc i32 %ev.sroa.15.4.extract.shift to i8
  %raw = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %raw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw, align 4
  %sony = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 14
  %2 = and i32 %ev.coerce.fca.1.extract, 5242880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %4 = and i8 %ev.sroa.15.4.extract.trunc, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %ev.coerce.fca.0.extract)
  %cmp.i = icmp ugt i32 %ev.coerce.fca.0.extract, 300
  br i1 %cmp.i, label %do.body, label %if.end2.do.body407_crit_edge

if.end2.do.body407_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body407

do.body:                                          ; preds = %if.end2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_sony_decode.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_sony_decode, %if.then10)) #6
          to label %do.end [label %if.then10], !srcloc !46

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %sony to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sony, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %ev.sroa.15.4.extract.trunc)
  %tobool16.not = icmp sgt i8 %ev.sroa.15.4.extract.trunc, -1
  %cond = select i1 %tobool16.not, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_sony_decode.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %6, i32 noundef %ev.coerce.fca.0.extract, ptr noundef nonnull %cond) #6
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %7 = ptrtoint ptr %sony to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sony, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %do.end.do.body407_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb30
    i32 2, label %sw.bb42
    i32 3, label %sw.bb59
    i32 4, label %sw.bb75
  ]

do.end.do.body407_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body407

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ev.sroa.15.4.extract.trunc)
  %tobool23.not = icmp slt i8 %ev.sroa.15.4.extract.trunc, 0
  %10 = add i32 %ev.coerce.fca.0.extract, -2101
  call void @__sanitizer_cov_trace_const_cmp4(i32 599, i32 %10)
  %11 = icmp ult i32 %10, 599
  %or.cond581 = select i1 %tobool23.not, i1 %11, i1 false
  br i1 %or.cond581, label %if.end28, label %sw.bb.do.body407_crit_edge

sw.bb.do.body407_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body407

if.end28:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %count = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 14, i32 2
  %12 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %count, align 4
  br label %cleanup.sink.split

sw.bb30:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %ev.sroa.15.4.extract.trunc)
  %tobool35.not = icmp sgt i8 %ev.sroa.15.4.extract.trunc, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 900, i32 %ev.coerce.fca.0.extract)
  %cmp1.i542 = icmp ult i32 %ev.coerce.fca.0.extract, 900
  %or.cond = select i1 %tobool35.not, i1 %cmp1.i542, i1 false
  br i1 %or.cond, label %sw.bb30.cleanup.sink.split_crit_edge, label %sw.bb30.do.body407_crit_edge

sw.bb30.do.body407_crit_edge:                     ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body407

sw.bb30.cleanup.sink.split_crit_edge:             ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb42:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %ev.sroa.15.4.extract.trunc)
  %tobool47.not = icmp sgt i8 %ev.sroa.15.4.extract.trunc, -1
  br i1 %tobool47.not, label %sw.bb42.do.body407_crit_edge, label %if.end49

sw.bb42.do.body407_crit_edge:                     ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body407

if.end49:                                         ; preds = %sw.bb42
  %bits = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 14, i32 1
  %13 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bits, align 4
  %shl = shl i32 %14, 1
  store i32 %shl, ptr %bits, align 4
  %15 = add i32 %ev.coerce.fca.0.extract, -901
  call void @__sanitizer_cov_trace_const_cmp4(i32 599, i32 %15)
  %16 = icmp ult i32 %15, 599
  br i1 %16, label %if.then51, label %if.else

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %shl, 1
  %17 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or, ptr %bits, align 4
  br label %if.end56

if.else:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 900, i32 %ev.coerce.fca.0.extract)
  %cmp1.i546 = icmp ult i32 %ev.coerce.fca.0.extract, 900
  br i1 %cmp1.i546, label %if.else.if.end56_crit_edge, label %if.else.do.body407_crit_edge

if.else.do.body407_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body407

if.else.if.end56_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.end56:                                         ; preds = %if.else.if.end56_crit_edge, %if.then51
  %count57 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 14, i32 2
  %18 = ptrtoint ptr %count57 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count57, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %count57, align 4
  br label %cleanup.sink.split

sw.bb59:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %ev.sroa.15.4.extract.trunc)
  %tobool64.not = icmp sgt i8 %ev.sroa.15.4.extract.trunc, -1
  br i1 %tobool64.not, label %if.end69, label %sw.bb59.do.body407_crit_edge

sw.bb59.do.body407_crit_edge:                     ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body407

if.end69:                                         ; preds = %sw.bb59
  %20 = tail call i32 @llvm.usub.sat.i32(i32 %ev.coerce.fca.0.extract, i32 600) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %20)
  %cmp.i548 = icmp ugt i32 %20, 300
  br i1 %cmp.i548, label %sw.bb75.thread, label %if.end69.cleanup.sink.split_crit_edge

if.end69.cleanup.sink.split_crit_edge:            ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb75.thread:                                   ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %sony to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %sony, align 4
  br label %if.end82

sw.bb75:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %ev.sroa.15.4.extract.trunc)
  %tobool80.not = icmp sgt i8 %ev.sroa.15.4.extract.trunc, -1
  br i1 %tobool80.not, label %sw.bb75.if.end82_crit_edge, label %sw.bb75.do.body407_crit_edge

sw.bb75.do.body407_crit_edge:                     ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body407

sw.bb75.if.end82_crit_edge:                       ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.end82:                                         ; preds = %sw.bb75.if.end82_crit_edge, %sw.bb75.thread
  %ev.sroa.0.0576 = phi i32 [ %20, %sw.bb75.thread ], [ %ev.coerce.fca.0.extract, %sw.bb75.if.end82_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5700, i32 %ev.sroa.0.0576)
  %cmp.i549 = icmp ugt i32 %ev.sroa.0.0576, 5700
  br i1 %cmp.i549, label %if.end85, label %if.end82.do.body407_crit_edge

if.end82.do.body407_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body407

if.end85:                                         ; preds = %if.end82
  %count86 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 14, i32 2
  %22 = ptrtoint ptr %count86 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count86, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %23, label %do.body362 [
    i32 12, label %sw.bb87
    i32 15, label %sw.bb160
    i32 20, label %sw.bb242
  ]

sw.bb87:                                          ; preds = %if.end85
  %enabled_protocols = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 17
  %25 = ptrtoint ptr %enabled_protocols to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %enabled_protocols, align 8
  %and = and i64 %26, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool88.not = icmp eq i64 %and, 0
  br i1 %tobool88.not, label %sw.bb87.cleanup.sink.split_crit_edge, label %if.end90

sw.bb87.cleanup.sink.split_crit_edge:             ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end90:                                         ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #8
  %bits91 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 14, i32 1
  %27 = ptrtoint ptr %bits91 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bits91, align 4
  %conv = shl i32 %28, 3
  %idxprom.i = and i32 %conv, 248
  %arrayidx.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i
  %shr124 = lshr i32 %28, 4
  %conv126 = and i32 %shr124, 254
  %arrayidx.i551 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv126
  br label %sw.epilog

sw.bb160:                                         ; preds = %if.end85
  %enabled_protocols161 = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 17
  %29 = ptrtoint ptr %enabled_protocols161 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %enabled_protocols161, align 8
  %and162 = and i64 %30, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and162)
  %tobool163.not = icmp eq i64 %and162, 0
  br i1 %tobool163.not, label %sw.bb160.cleanup.sink.split_crit_edge, label %if.end165

sw.bb160.cleanup.sink.split_crit_edge:            ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end165:                                        ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #8
  %bits167 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 14, i32 1
  %31 = ptrtoint ptr %bits167 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bits167, align 4
  %idxprom.i552 = and i32 %32, 255
  %arrayidx.i553 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i552
  %shr206 = lshr i32 %32, 7
  %conv208 = and i32 %shr206, 254
  %arrayidx.i555 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv208
  br label %sw.epilog

sw.bb242:                                         ; preds = %if.end85
  %enabled_protocols243 = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 17
  %33 = ptrtoint ptr %enabled_protocols243 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %enabled_protocols243, align 8
  %and244 = and i64 %34, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and244)
  %tobool245.not = icmp eq i64 %and244, 0
  br i1 %tobool245.not, label %sw.bb242.cleanup.sink.split_crit_edge, label %if.end247

sw.bb242.cleanup.sink.split_crit_edge:            ; preds = %sw.bb242
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end247:                                        ; preds = %sw.bb242
  call void @__sanitizer_cov_trace_pc() #8
  %bits249 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 14, i32 1
  %35 = ptrtoint ptr %bits249 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bits249, align 4
  %shr250 = lshr i32 %36, 5
  %conv252 = and i32 %shr250, 248
  %arrayidx.i557 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv252
  %idxprom.i558 = and i32 %36, 255
  %arrayidx.i559 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i558
  %37 = ptrtoint ptr %arrayidx.i559 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i559, align 1
  %shr326 = lshr i32 %36, 12
  %conv328 = and i32 %shr326, 254
  %arrayidx.i561 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv328
  %phi.cast = zext i8 %38 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast, 8
  br label %sw.epilog

do.body362:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_sony_decode.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_sony_decode, %if.then374)) #6
          to label %do.body407 [label %if.then374], !srcloc !46

if.then374:                                       ; preds = %do.body362
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %count86 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count86, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_sony_decode.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %40) #6
  br label %do.body407

sw.epilog:                                        ; preds = %if.end247, %if.end165, %if.end90
  %function.0.in = phi ptr [ %arrayidx.i551, %if.end90 ], [ %arrayidx.i555, %if.end165 ], [ %arrayidx.i561, %if.end247 ]
  %subdevice.0 = phi i32 [ 0, %if.end90 ], [ 0, %if.end165 ], [ %phi.bo, %if.end247 ]
  %device.0.in = phi ptr [ %arrayidx.i, %if.end90 ], [ %arrayidx.i553, %if.end165 ], [ %arrayidx.i557, %if.end247 ]
  %protocol.0 = phi i32 [ 6, %if.end90 ], [ 7, %if.end165 ], [ 8, %if.end247 ]
  %41 = ptrtoint ptr %device.0.in to i32
  call void @__asan_load1_noabort(i32 %41)
  %device.0 = load i8, ptr %device.0.in, align 1
  %42 = ptrtoint ptr %function.0.in to i32
  call void @__asan_load1_noabort(i32 %42)
  %function.0 = load i8, ptr %function.0.in, align 1
  %conv380 = zext i8 %device.0 to i32
  %shl381 = shl nuw nsw i32 %conv380, 16
  %or384 = or i32 %shl381, %subdevice.0
  %conv385 = zext i8 %function.0 to i32
  %or386 = or i32 %or384, %conv385
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_sony_decode.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_sony_decode, %if.then399)) #6
          to label %do.end404 [label %if.then399], !srcloc !46

if.then399:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %count86 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %count86, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_sony_decode.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %44, i32 noundef %or386) #6
  br label %do.end404

do.end404:                                        ; preds = %if.then399, %sw.epilog
  %conv405 = zext i32 %or386 to i64
  tail call void @rc_keydown(ptr noundef %dev, i32 noundef %protocol.0, i64 noundef %conv405, i8 noundef zeroext 0) #6
  br label %cleanup.sink.split

do.body407:                                       ; preds = %if.then374, %do.body362, %if.end82.do.body407_crit_edge, %sw.bb75.do.body407_crit_edge, %sw.bb59.do.body407_crit_edge, %if.else.do.body407_crit_edge, %sw.bb42.do.body407_crit_edge, %sw.bb30.do.body407_crit_edge, %sw.bb.do.body407_crit_edge, %do.end.do.body407_crit_edge, %if.end2.do.body407_crit_edge
  %ev.sroa.0.1 = phi i32 [ %ev.coerce.fca.0.extract, %do.end.do.body407_crit_edge ], [ %ev.sroa.0.0576, %if.then374 ], [ %ev.sroa.0.0576, %if.end82.do.body407_crit_edge ], [ %ev.coerce.fca.0.extract, %sw.bb75.do.body407_crit_edge ], [ %ev.coerce.fca.0.extract, %sw.bb59.do.body407_crit_edge ], [ %ev.coerce.fca.0.extract, %sw.bb42.do.body407_crit_edge ], [ %ev.coerce.fca.0.extract, %if.else.do.body407_crit_edge ], [ %ev.coerce.fca.0.extract, %sw.bb30.do.body407_crit_edge ], [ %ev.coerce.fca.0.extract, %sw.bb.do.body407_crit_edge ], [ %ev.coerce.fca.0.extract, %if.end2.do.body407_crit_edge ], [ %ev.sroa.0.0576, %do.body362 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_sony_decode.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_sony_decode, %if.then419)) #6
          to label %cleanup.sink.split [label %if.then419], !srcloc !46

if.then419:                                       ; preds = %do.body407
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %sony to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sony, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %ev.sroa.15.4.extract.trunc)
  %tobool426.not = icmp sgt i8 %ev.sroa.15.4.extract.trunc, -1
  %cond427 = select i1 %tobool426.not, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_sony_decode.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %46, i32 noundef %ev.sroa.0.1, ptr noundef nonnull %cond427) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then419, %do.body407, %do.end404, %sw.bb242.cleanup.sink.split_crit_edge, %sw.bb160.cleanup.sink.split_crit_edge, %sw.bb87.cleanup.sink.split_crit_edge, %if.end69.cleanup.sink.split_crit_edge, %if.end56, %sw.bb30.cleanup.sink.split_crit_edge, %if.end28, %if.then.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 3, %if.end56 ], [ 1, %if.end28 ], [ 0, %if.then.cleanup.sink.split_crit_edge ], [ 2, %sw.bb30.cleanup.sink.split_crit_edge ], [ 2, %if.end69.cleanup.sink.split_crit_edge ], [ 0, %do.body407 ], [ 0, %if.then419 ], [ 0, %sw.bb242.cleanup.sink.split_crit_edge ], [ 0, %sw.bb160.cleanup.sink.split_crit_edge ], [ 0, %sw.bb87.cleanup.sink.split_crit_edge ], [ 0, %do.end404 ]
  %retval.0.ph = phi i32 [ 0, %if.end56 ], [ 0, %if.end28 ], [ 0, %if.then.cleanup.sink.split_crit_edge ], [ 0, %sw.bb30.cleanup.sink.split_crit_edge ], [ 0, %if.end69.cleanup.sink.split_crit_edge ], [ -22, %do.body407 ], [ -22, %if.then419 ], [ 0, %sw.bb242.cleanup.sink.split_crit_edge ], [ 0, %sw.bb160.cleanup.sink.split_crit_edge ], [ 0, %sw.bb87.cleanup.sink.split_crit_edge ], [ 0, %do.end404 ]
  %47 = ptrtoint ptr %sony to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.sink, ptr %sony, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_sony_encode(i32 noundef %protocol, i32 noundef %scancode, ptr noundef %events, i32 noundef %max) #2 align 64 {
entry:
  %e = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e) #6
  %0 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %events, ptr %e, align 4
  %1 = zext i32 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %protocol, label %if.else8 [
    i32 6, label %if.then
    i32 7, label %if.then3
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %scancode, 127
  %and1 = lshr i32 %scancode, 9
  %shr = and i32 %and1, 3968
  %or = or i32 %shr, %and
  br label %if.end15

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and4 = and i32 %scancode, 127
  %and5 = lshr i32 %scancode, 9
  %shr6 = and i32 %and5, 32640
  %or7 = or i32 %shr6, %and4
  br label %if.end15

if.else8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and9 = and i32 %scancode, 127
  %and10 = lshr i32 %scancode, 9
  %shr11 = and i32 %and10, 3968
  %or12 = or i32 %shr11, %and9
  %and13 = shl i32 %scancode, 4
  %shl = and i32 %and13, 1044480
  %or14 = or i32 %or12, %shl
  br label %if.end15

if.end15:                                         ; preds = %if.else8, %if.then3, %if.then
  %raw.0 = phi i32 [ %or, %if.then ], [ %or7, %if.then3 ], [ %or14, %if.else8 ]
  %len.0 = phi i32 [ 12, %if.then ], [ 15, %if.then3 ], [ 20, %if.else8 ]
  %conv = zext i32 %raw.0 to i64
  %call = call i32 @ir_raw_gen_pl(ptr noundef nonnull %e, i32 noundef %max, ptr noundef nonnull @ir_sony_timings, i32 noundef %len.0, i64 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp16 = icmp slt i32 %call, 0
  br i1 %cmp16, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %e, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %events to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.div, %if.end19 ], [ %call, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e) #6
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
declare dso_local i32 @ir_raw_gen_pl(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_handler_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !26, !27, !29, !30, !32, !34, !35, !36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_ir_sony_decoder__232_235_ir_sony_decode_init6, !1, !"__initcall__kmod_ir_sony_decoder__232_235_ir_sony_decode_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/ir-sony-decoder.c", i32 235, i32 1}
!2 = !{ptr @__exitcall_ir_sony_decode_exit, !3, !"__exitcall_ir_sony_decode_exit", i1 false, i1 false}
!3 = !{!"../drivers/media/rc/ir-sony-decoder.c", i32 236, i32 1}
!4 = !{ptr @__UNIQUE_ID_file233, !5, !"__UNIQUE_ID_file233", i1 false, i1 false}
!5 = !{!"../drivers/media/rc/ir-sony-decoder.c", i32 238, i32 1}
!6 = !{ptr @__UNIQUE_ID_license234, !5, !"__UNIQUE_ID_license234", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author235, !8, !"__UNIQUE_ID_author235", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/ir-sony-decoder.c", i32 239, i32 1}
!9 = !{ptr @__UNIQUE_ID_description236, !10, !"__UNIQUE_ID_description236", i1 false, i1 false}
!10 = !{!"../drivers/media/rc/ir-sony-decoder.c", i32 240, i32 1}
!11 = !{ptr @sony_handler, !12, !"sony_handler", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/ir-sony-decoder.c", i32 213, i32 30}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/ir-sony-decoder.c", i32 50, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ir_sony_decode.__UNIQUE_ID_ddebug228, !14, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!19 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/rc/ir-sony-decoder.c", i32 143, i32 4}
!23 = !{ptr @ir_sony_decode.__UNIQUE_ID_ddebug229, !22, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/rc/ir-sony-decoder.c", i32 149, i32 3}
!26 = !{ptr @ir_sony_decode.__UNIQUE_ID_ddebug230, !25, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/rc/ir-sony-decoder.c", i32 156, i32 2}
!29 = !{ptr @ir_sony_decode.__UNIQUE_ID_ddebug231, !28, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!30 = !{ptr @ir_sony_timings, !31, !"ir_sony_timings", i1 false, i1 false}
!31 = !{!"../drivers/media/rc/ir-sony-decoder.c", i32 166, i32 39}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/rc/ir-sony-decoder.c", i32 226, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ir_sony_decode_init._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @ir_sony_decode_init._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 2148960513, i64 2148960518, i64 2148960531, i64 2148960575, i64 2148960609, i64 2148960630}
