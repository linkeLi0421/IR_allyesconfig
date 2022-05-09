; ModuleID = '/llk/IR_all_yes/drivers/media/rc/ir-rc5-decoder.c_pt.bc'
source_filename = "../drivers/media/rc/ir-rc5-decoder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ir_raw_handler = type { %struct.list_head, i64, ptr, ptr, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ir_raw_timings_manchester = type { i32, i32, i32, i8, i32 }
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

@rc5_handler = internal global { %struct.ir_raw_handler, [56 x i8] } { %struct.ir_raw_handler { %struct.list_head zeroinitializer, i64 28, ptr @ir_rc5_decode, ptr @ir_rc5_encode, i32 36000, i32 5334, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_ir_rc5_decoder__231_290_ir_rc5_decode_init6 = internal global ptr @ir_rc5_decode_init, section ".initcall6.init", align 4
@__exitcall_ir_rc5_decode_exit = internal global ptr @ir_rc5_decode_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file232 = internal constant [52 x i8] c"ir_rc5_decoder.file=drivers/media/rc/ir-rc5-decoder\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [30 x i8] c"ir_rc5_decoder.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [61 x i8] c"ir_rc5_decoder.author=Mauro Carvalho Chehab and Jarod Wilson\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [59 x i8] c"ir_rc5_decoder.author=Red Hat Inc. (http://www.redhat.com)\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [57 x i8] c"ir_rc5_decoder.description=RC5(x/sz) IR protocol decoder\00", section ".modinfo", align 1
@ir_rc5_decode.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ir_rc5_decoder\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ir_rc5_decode\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/rc/ir-rc5-decoder.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"RC5(x/sz) decode started at state %i (%uus %s)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pulse\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"space\00", [26 x i8] zeroinitializer }, align 32
@ir_rc5_decode.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RC5(x/sz) scancode 0x%06x (p: %u, t: %u)\0A\00", [54 x i8] zeroinitializer }, align 32
@ir_rc5_decode.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"RC5(x/sz) decode failed at state %i count %d (%uus %s)\0A\00", [40 x i8] zeroinitializer }, align 32
@ir_rc5_timings = internal constant { %struct.ir_raw_timings_manchester, [44 x i8] } { %struct.ir_raw_timings_manchester { i32 889, i32 0, i32 889, i8 0, i32 8890 }, [44 x i8] zeroinitializer }, align 32
@ir_rc5x_timings = internal constant { [2 x %struct.ir_raw_timings_manchester], [56 x i8] } { [2 x %struct.ir_raw_timings_manchester] [%struct.ir_raw_timings_manchester { i32 889, i32 0, i32 889, i8 0, i32 3556 }, %struct.ir_raw_timings_manchester { i32 0, i32 0, i32 889, i8 0, i32 8890 }], [56 x i8] zeroinitializer }, align 32
@ir_rc5_sz_timings = internal constant { %struct.ir_raw_timings_manchester, [44 x i8] } { %struct.ir_raw_timings_manchester { i32 889, i32 0, i32 889, i8 0, i32 8890 }, [44 x i8] zeroinitializer }, align 32
@ir_rc5_decode_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016IR RC5(x/sz) protocol handler initialized\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ir_rc5_decode_init\00", [45 x i8] zeroinitializer }, align 32
@ir_rc5_decode_init._entry_ptr = internal global ptr @ir_rc5_decode_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@___asan_gen_.11 = private unnamed_addr constant [12 x i8] c"rc5_handler\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 268, i32 30 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 57, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 157, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 166, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"ir_rc5_timings\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 172, i32 47 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"ir_rc5x_timings\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 178, i32 47 }
@___asan_gen_.44 = private unnamed_addr constant [18 x i8] c"ir_rc5_sz_timings\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 190, i32 47 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [37 x i8] c"../drivers/media/rc/ir-rc5-decoder.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 281, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_ir_rc5_decode_exit, ptr @__initcall__kmod_ir_rc5_decoder__231_290_ir_rc5_decode_init6, ptr @ir_rc5_decode_exit, ptr @ir_rc5_decode_init._entry, ptr @ir_rc5_decode_init._entry_ptr, ptr @rc5_handler, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ir_rc5_timings, ptr @ir_rc5x_timings, ptr @ir_rc5_sz_timings, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5_handler to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_rc5_timings to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_rc5x_timings to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_rc5_sz_timings to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_rc5_decode_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ir_rc5_decode_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ir_raw_handler_unregister(ptr noundef nonnull @rc5_handler) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_handler_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_rc5_decode_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ir_raw_handler_register(ptr noundef nonnull @rc5_handler) #6
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_rc5_decode(ptr noundef %dev, [2 x i32] %ev.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ev.coerce.fca.1.extract = extractvalue [2 x i32] %ev.coerce, 1
  %ev.sroa.16.4.extract.shift = lshr i32 %ev.coerce.fca.1.extract, 16
  %ev.sroa.16.4.extract.trunc = trunc i32 %ev.sroa.16.4.extract.shift to i8
  %raw = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %raw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw, align 4
  %rc5 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 12
  %2 = and i32 %ev.coerce.fca.1.extract, 5242880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %4 = and i8 %ev.sroa.16.4.extract.trunc, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then.cleanup251_crit_edge, label %if.then.cleanup251.sink.split_crit_edge

if.then.cleanup251.sink.split_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup251.sink.split

if.then.cleanup251_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup251

if.end2:                                          ; preds = %entry
  %ev.coerce.fca.0.extract = extractvalue [2 x i32] %ev.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 445, i32 %ev.coerce.fca.0.extract)
  %cmp.i = icmp ugt i32 %ev.coerce.fca.0.extract, 445
  br i1 %cmp.i, label %again.preheader, label %if.end2.do.body225_crit_edge

if.end2.do.body225_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body225

again.preheader:                                  ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %ev.sroa.16.4.extract.trunc)
  %tobool16.not = icmp sgt i8 %ev.sroa.16.4.extract.trunc, -1
  %cond = select i1 %tobool16.not, ptr @.str.5, ptr @.str.4
  %is_rc5x69 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 12, i32 3
  %count54 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 12, i32 2
  br label %again.outer

again.outer:                                      ; preds = %again.outer.backedge, %again.preheader
  %ev.sroa.0.0.ph = phi i32 [ %ev.coerce.fca.0.extract, %again.preheader ], [ %ev.sroa.0.0.ph.be, %again.outer.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 445, i32 %ev.sroa.0.0.ph)
  %cmp.i318 = icmp ugt i32 %ev.sroa.0.0.ph, 445
  %cmp.i319 = icmp ugt i32 %ev.sroa.0.0.ph, 4890
  br label %again

again:                                            ; preds = %if.then37, %again.outer
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_rc5_decode.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_rc5_decode, %if.then10)) #6
          to label %do.end [label %if.then10], !srcloc !49

if.then10:                                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %rc5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rc5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_rc5_decode.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %6, i32 noundef %ev.sroa.0.0.ph, ptr noundef nonnull %cond) #6
  br label %do.end

do.end:                                           ; preds = %if.then10, %again
  br i1 %cmp.i318, label %if.end20, label %do.end.cleanup251_crit_edge

do.end.cleanup251_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup251

if.end20:                                         ; preds = %do.end
  %7 = ptrtoint ptr %rc5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rc5, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.end20.do.body225_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb30
    i32 2, label %sw.bb53
    i32 3, label %sw.bb59
    i32 4, label %sw.bb72
  ]

if.end20.do.body225_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body225

sw.bb:                                            ; preds = %if.end20
  br i1 %tobool16.not, label %sw.bb.do.body225_crit_edge, label %if.end28

sw.bb.do.body225_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body225

if.end28:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %rc5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %rc5, align 4
  %11 = ptrtoint ptr %count54 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %count54, align 4
  %12 = tail call i32 @llvm.usub.sat.i32(i32 %ev.sroa.0.0.ph, i32 889) #6
  br label %again.outer.backedge

sw.bb30:                                          ; preds = %if.end20
  br i1 %tobool16.not, label %land.lhs.true, label %if.end39.thread

land.lhs.true:                                    ; preds = %sw.bb30
  br i1 %cmp.i319, label %if.then37, label %if.end39

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %rc5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %rc5, align 4
  br label %again

if.end39:                                         ; preds = %land.lhs.true
  %14 = add nsw i32 %ev.sroa.0.0.ph, -446
  call void @__sanitizer_cov_trace_const_cmp4(i32 887, i32 %14)
  %15 = icmp ult i32 %14, 887
  br i1 %15, label %if.then48, label %if.end39.do.body225_crit_edge

if.end39.do.body225_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body225

if.end39.thread:                                  ; preds = %sw.bb30
  %16 = add i32 %ev.sroa.0.0.ph, -446
  call void @__sanitizer_cov_trace_const_cmp4(i32 887, i32 %16)
  %17 = icmp ult i32 %16, 887
  br i1 %17, label %if.end42.thread, label %if.end39.thread.do.body225_crit_edge

if.end39.thread.do.body225_crit_edge:             ; preds = %if.end39.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body225

if.end42.thread:                                  ; preds = %if.end39.thread
  call void @__sanitizer_cov_trace_pc() #8
  %bits332 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 12, i32 1
  %18 = ptrtoint ptr %bits332 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bits332, align 4
  %shl333 = shl i32 %19, 1
  store i32 %shl333, ptr %bits332, align 4
  br label %if.end50

if.then48:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %bits = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 12, i32 1
  %20 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bits, align 4
  %shl = shl i32 %21, 1
  %or = or i32 %shl, 1
  store i32 %or, ptr %bits, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end42.thread
  %22 = ptrtoint ptr %count54 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count54, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %count54, align 4
  br label %cleanup251.sink.split

sw.bb53:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %count54 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %25)
  %cmp = icmp eq i32 %25, 8
  %. = select i1 %cmp, i32 3, i32 1
  %26 = ptrtoint ptr %rc5 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %., ptr %rc5, align 4
  %27 = tail call i32 @llvm.usub.sat.i32(i32 %ev.sroa.0.0.ph, i32 889) #6
  br label %again.outer.backedge

sw.bb59:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 3112, i32 %ev.sroa.0.0.ph)
  %cmp.i320 = icmp ugt i32 %ev.sroa.0.0.ph, 3112
  %or.cond = select i1 %tobool16.not, i1 %cmp.i320, i1 false
  br i1 %or.cond, label %if.then67, label %if.else68

if.then67:                                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %is_rc5x69 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %is_rc5x69, align 4
  %29 = tail call i32 @llvm.usub.sat.i32(i32 %ev.sroa.0.0.ph, i32 3556) #6
  br label %if.end70

if.else68:                                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %is_rc5x69 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %is_rc5x69, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.else68, %if.then67
  %ev.sroa.0.1 = phi i32 [ %29, %if.then67 ], [ %ev.sroa.0.0.ph, %if.else68 ]
  %31 = ptrtoint ptr %rc5 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %rc5, align 4
  br label %again.outer.backedge

again.outer.backedge:                             ; preds = %if.end70, %sw.bb53, %if.end28
  %ev.sroa.0.0.ph.be = phi i32 [ %12, %if.end28 ], [ %27, %sw.bb53 ], [ %ev.sroa.0.1, %if.end70 ]
  br label %again.outer

sw.bb72:                                          ; preds = %if.end20
  br i1 %tobool16.not, label %if.end79, label %sw.bb72.do.body225_crit_edge

sw.bb72.do.body225_crit_edge:                     ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body225

if.end79:                                         ; preds = %sw.bb72
  %32 = ptrtoint ptr %is_rc5x69 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %is_rc5x69, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool81.not = icmp eq i8 %33, 0
  %34 = ptrtoint ptr %count54 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %count54, align 4
  br i1 %tobool81.not, label %land.lhs.true123, label %land.lhs.true82

land.lhs.true82:                                  ; preds = %if.end79
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %35)
  %cmp84 = icmp eq i32 %35, 20
  br i1 %cmp84, label %if.then85, label %land.lhs.true82.do.body225_crit_edge

land.lhs.true82.do.body225_crit_edge:             ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body225

if.then85:                                        ; preds = %land.lhs.true82
  %enabled_protocols = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 17
  %36 = ptrtoint ptr %enabled_protocols to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %enabled_protocols, align 8
  %and = and i64 %37, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool86.not = icmp eq i64 %and, 0
  br i1 %tobool86.not, label %if.then85.cleanup251.sink.split_crit_edge, label %cleanup

if.then85.cleanup251.sink.split_crit_edge:        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup251.sink.split

cleanup:                                          ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #8
  %bits90 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 12, i32 1
  %38 = ptrtoint ptr %bits90 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bits90, align 4
  %conv = and i32 %39, 63
  %and93 = lshr i32 %39, 6
  %conv95 = and i32 %and93, 63
  %and101 = lshr i32 %39, 17
  %and106 = lshr i32 %39, 12
  %40 = and i32 %and106, 64
  %41 = or i32 %40, %conv95
  %42 = shl i32 %39, 4
  %shl112 = and i32 %42, 2031616
  %conv110 = shl nuw nsw i32 %41, 8
  %43 = or i32 %conv110, %shl112
  %44 = or i32 %43, %conv
  %or117 = xor i32 %44, 16384
  br label %do.body205

land.lhs.true123:                                 ; preds = %if.end79
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %35)
  %cmp125 = icmp eq i32 %35, 14
  br i1 %cmp125, label %if.then127, label %land.lhs.true167

if.then127:                                       ; preds = %land.lhs.true123
  %enabled_protocols130 = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 17
  %45 = ptrtoint ptr %enabled_protocols130 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %enabled_protocols130, align 8
  %and131 = and i64 %46, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and131)
  %tobool132.not = icmp eq i64 %and131, 0
  br i1 %tobool132.not, label %if.then127.cleanup251.sink.split_crit_edge, label %cleanup160

if.then127.cleanup251.sink.split_crit_edge:       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup251.sink.split

cleanup160:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #8
  %bits136 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 12, i32 1
  %47 = ptrtoint ptr %bits136 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bits136, align 4
  %conv139 = and i32 %48, 63
  %and145 = lshr i32 %48, 11
  %and150 = lshr i32 %48, 6
  %49 = and i32 %and150, 64
  %50 = or i32 %49, %conv139
  %51 = shl i32 %48, 2
  %shl157 = and i32 %51, 7936
  %52 = or i32 %50, %shl157
  %or159 = xor i32 %52, 64
  br label %do.body205

land.lhs.true167:                                 ; preds = %land.lhs.true123
  %53 = ptrtoint ptr %count54 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %54)
  %cmp169 = icmp eq i32 %54, 15
  br i1 %cmp169, label %if.then171, label %land.lhs.true167.do.body225_crit_edge

land.lhs.true167.do.body225_crit_edge:            ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body225

if.then171:                                       ; preds = %land.lhs.true167
  %enabled_protocols174 = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 17
  %55 = ptrtoint ptr %enabled_protocols174 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %enabled_protocols174, align 8
  %and175 = and i64 %56, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and175)
  %tobool176.not = icmp eq i64 %and175, 0
  br i1 %tobool176.not, label %if.then171.cleanup251.sink.split_crit_edge, label %cleanup197

if.then171.cleanup251.sink.split_crit_edge:       ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup251.sink.split

cleanup197:                                       ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #8
  %bits180 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 12, i32 1
  %57 = ptrtoint ptr %bits180 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bits180, align 4
  %and189 = lshr i32 %58, 12
  %or196 = and i32 %58, 12287
  br label %do.body205

do.body205:                                       ; preds = %cleanup197, %cleanup160, %cleanup
  %protocol.3 = phi i32 [ 3, %cleanup ], [ 4, %cleanup197 ], [ 2, %cleanup160 ]
  %scancode.3 = phi i32 [ %or117, %cleanup ], [ %or196, %cleanup197 ], [ %or159, %cleanup160 ]
  %toggle.3.in.in = phi i32 [ %and101, %cleanup ], [ %and189, %cleanup197 ], [ %and145, %cleanup160 ]
  %toggle.3.in = trunc i32 %toggle.3.in.in to i8
  %toggle.3 = and i8 %toggle.3.in, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_rc5_decode.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_rc5_decode, %if.then217)) #6
          to label %do.end222 [label %if.then217], !srcloc !49

if.then217:                                       ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #8
  %conv219 = zext i8 %toggle.3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_rc5_decode.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %scancode.3, i32 noundef %protocol.3, i32 noundef %conv219) #6
  br label %do.end222

do.end222:                                        ; preds = %if.then217, %do.body205
  %conv223 = zext i32 %scancode.3 to i64
  tail call void @rc_keydown(ptr noundef %dev, i32 noundef %protocol.3, i64 noundef %conv223, i8 noundef zeroext %toggle.3) #6
  br label %cleanup251.sink.split

do.body225:                                       ; preds = %land.lhs.true167.do.body225_crit_edge, %land.lhs.true82.do.body225_crit_edge, %sw.bb72.do.body225_crit_edge, %if.end39.thread.do.body225_crit_edge, %if.end39.do.body225_crit_edge, %sw.bb.do.body225_crit_edge, %if.end20.do.body225_crit_edge, %if.end2.do.body225_crit_edge
  %ev.sroa.0.2 = phi i32 [ %ev.sroa.0.0.ph, %land.lhs.true167.do.body225_crit_edge ], [ %ev.sroa.0.0.ph, %sw.bb72.do.body225_crit_edge ], [ %ev.sroa.0.0.ph, %if.end39.do.body225_crit_edge ], [ %ev.coerce.fca.0.extract, %if.end2.do.body225_crit_edge ], [ %ev.sroa.0.0.ph, %if.end39.thread.do.body225_crit_edge ], [ %ev.sroa.0.0.ph, %land.lhs.true82.do.body225_crit_edge ], [ %ev.sroa.0.0.ph, %if.end20.do.body225_crit_edge ], [ %ev.sroa.0.0.ph, %sw.bb.do.body225_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_rc5_decode.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_rc5_decode, %if.then237)) #6
          to label %cleanup251.sink.split [label %if.then237], !srcloc !49

if.then237:                                       ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %rc5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rc5, align 4
  %count240 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 12, i32 2
  %61 = ptrtoint ptr %count240 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %count240, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %ev.sroa.16.4.extract.trunc)
  %tobool245.not = icmp sgt i8 %ev.sroa.16.4.extract.trunc, -1
  %cond246 = select i1 %tobool245.not, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_rc5_decode.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %60, i32 noundef %62, i32 noundef %ev.sroa.0.2, ptr noundef nonnull %cond246) #6
  br label %cleanup251.sink.split

cleanup251.sink.split:                            ; preds = %if.then237, %do.body225, %do.end222, %if.then171.cleanup251.sink.split_crit_edge, %if.then127.cleanup251.sink.split_crit_edge, %if.then85.cleanup251.sink.split_crit_edge, %if.end50, %if.then.cleanup251.sink.split_crit_edge
  %.sink = phi i32 [ 0, %do.end222 ], [ 2, %if.end50 ], [ 0, %if.then.cleanup251.sink.split_crit_edge ], [ 0, %if.then85.cleanup251.sink.split_crit_edge ], [ 0, %if.then127.cleanup251.sink.split_crit_edge ], [ 0, %if.then171.cleanup251.sink.split_crit_edge ], [ 0, %do.body225 ], [ 0, %if.then237 ]
  %retval.3.ph = phi i32 [ 0, %do.end222 ], [ 0, %if.end50 ], [ 0, %if.then.cleanup251.sink.split_crit_edge ], [ 0, %if.then85.cleanup251.sink.split_crit_edge ], [ 0, %if.then127.cleanup251.sink.split_crit_edge ], [ 0, %if.then171.cleanup251.sink.split_crit_edge ], [ -22, %do.body225 ], [ -22, %if.then237 ]
  %63 = ptrtoint ptr %rc5 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %.sink, ptr %rc5, align 4
  br label %cleanup251

cleanup251:                                       ; preds = %cleanup251.sink.split, %do.end.cleanup251_crit_edge, %if.then.cleanup251_crit_edge
  %retval.3 = phi i32 [ 0, %if.then.cleanup251_crit_edge ], [ %retval.3.ph, %cleanup251.sink.split ], [ 0, %do.end.cleanup251_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_rc5_encode(i32 noundef %protocol, i32 noundef %scancode, ptr noundef %events, i32 noundef %max) #2 align 64 {
entry:
  %e = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e) #6
  %0 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %events, ptr %e, align 4
  %1 = zext i32 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %protocol, label %entry.cleanup_crit_edge [
    i32 2, label %if.then
    i32 3, label %if.then12
    i32 4, label %if.then45
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %and = and i32 %scancode, 63
  %2 = shl i32 %scancode, 6
  %3 = and i32 %2, 4096
  %4 = lshr i32 %scancode, 2
  %shl5 = and i32 %4, 1984
  %5 = or i32 %shl5, %and
  %6 = or i32 %5, %3
  %or6 = xor i32 %6, 4096
  %conv = zext i32 %or6 to i64
  %call = call i32 @ir_raw_gen_manchester(ptr noundef nonnull %e, i32 noundef %max, ptr noundef nonnull @ir_rc5_timings, i32 noundef 13, i64 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %if.then.cleanup_crit_edge, label %if.then.if.end56_crit_edge

if.then.if.end56_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %entry
  %and13 = and i32 %scancode, 63
  %7 = shl i32 %scancode, 4
  %8 = and i32 %7, 262144
  %9 = lshr i32 %scancode, 4
  %shl24 = and i32 %9, 126976
  %10 = lshr i32 %scancode, 2
  %shl26 = and i32 %10, 4032
  %11 = or i32 %shl24, %and13
  %12 = or i32 %11, %8
  %13 = or i32 %12, %shl26
  %or28 = xor i32 %13, 262144
  %shr29 = lshr i32 %or28, 12
  %conv30 = zext i32 %shr29 to i64
  %call31 = call i32 @ir_raw_gen_manchester(ptr noundef nonnull %e, i32 noundef %max, ptr noundef nonnull @ir_rc5x_timings, i32 noundef 7, i64 noundef %conv30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then12.cleanup_crit_edge, label %if.end35

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %if.then12
  %14 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %e, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %events to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  %sub = sub i32 %max, %sub.ptr.div
  %conv36 = zext i32 %or28 to i64
  %call37 = call i32 @ir_raw_gen_manchester(ptr noundef nonnull %e, i32 noundef %sub, ptr noundef getelementptr inbounds ([2 x %struct.ir_raw_timings_manchester], ptr @ir_rc5x_timings, i32 0, i32 1), i32 noundef 12, i64 noundef %conv36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end35.cleanup_crit_edge, label %if.end35.if.end56_crit_edge

if.end35.if.end56_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then45:                                        ; preds = %entry
  %and46 = and i32 %scancode, 12287
  %conv47 = zext i32 %and46 to i64
  %call48 = call i32 @ir_raw_gen_manchester(ptr noundef nonnull %e, i32 noundef %max, ptr noundef nonnull @ir_rc5_sz_timings, i32 noundef 14, i64 noundef %conv47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then45.cleanup_crit_edge, label %if.then45.if.end56_crit_edge

if.then45.if.end56_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end56:                                         ; preds = %if.then45.if.end56_crit_edge, %if.end35.if.end56_crit_edge, %if.then.if.end56_crit_edge
  %16 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %e, align 4
  %sub.ptr.lhs.cast57 = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast58 = ptrtoint ptr %events to i32
  %sub.ptr.sub59 = sub i32 %sub.ptr.lhs.cast57, %sub.ptr.rhs.cast58
  %sub.ptr.div60 = ashr exact i32 %sub.ptr.sub59, 3
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.then45.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.div60, %if.end56 ], [ %call, %if.then.cleanup_crit_edge ], [ %call31, %if.then12.cleanup_crit_edge ], [ %call37, %if.end35.cleanup_crit_edge ], [ %call48, %if.then45.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
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
declare dso_local i32 @ir_raw_gen_manchester(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !28, !29, !31, !33, !35, !37, !38, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_ir_rc5_decoder__231_290_ir_rc5_decode_init6, !1, !"__initcall__kmod_ir_rc5_decoder__231_290_ir_rc5_decode_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/ir-rc5-decoder.c", i32 290, i32 1}
!2 = !{ptr @__exitcall_ir_rc5_decode_exit, !3, !"__exitcall_ir_rc5_decode_exit", i1 false, i1 false}
!3 = !{!"../drivers/media/rc/ir-rc5-decoder.c", i32 291, i32 1}
!4 = !{ptr @__UNIQUE_ID_file232, !5, !"__UNIQUE_ID_file232", i1 false, i1 false}
!5 = !{!"../drivers/media/rc/ir-rc5-decoder.c", i32 293, i32 1}
!6 = !{ptr @__UNIQUE_ID_license233, !5, !"__UNIQUE_ID_license233", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author234, !8, !"__UNIQUE_ID_author234", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/ir-rc5-decoder.c", i32 294, i32 1}
!9 = !{ptr @__UNIQUE_ID_author235, !10, !"__UNIQUE_ID_author235", i1 false, i1 false}
!10 = !{!"../drivers/media/rc/ir-rc5-decoder.c", i32 295, i32 1}
!11 = !{ptr @__UNIQUE_ID_description236, !12, !"__UNIQUE_ID_description236", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/ir-rc5-decoder.c", i32 296, i32 1}
!13 = !{ptr @rc5_handler, !14, !"rc5_handler", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/ir-rc5-decoder.c", i32 268, i32 30}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/rc/ir-rc5-decoder.c", i32 57, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ir_rc5_decode.__UNIQUE_ID_ddebug228, !16, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!21 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/rc/ir-rc5-decoder.c", i32 157, i32 3}
!25 = !{ptr @ir_rc5_decode.__UNIQUE_ID_ddebug229, !24, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/rc/ir-rc5-decoder.c", i32 166, i32 2}
!28 = !{ptr @ir_rc5_decode.__UNIQUE_ID_ddebug230, !27, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!29 = !{ptr @ir_rc5_timings, !30, !"ir_rc5_timings", i1 false, i1 false}
!30 = !{!"../drivers/media/rc/ir-rc5-decoder.c", i32 172, i32 47}
!31 = !{ptr @ir_rc5x_timings, !32, !"ir_rc5x_timings", i1 false, i1 false}
!32 = !{!"../drivers/media/rc/ir-rc5-decoder.c", i32 178, i32 47}
!33 = !{ptr @ir_rc5_sz_timings, !34, !"ir_rc5_sz_timings", i1 false, i1 false}
!34 = !{!"../drivers/media/rc/ir-rc5-decoder.c", i32 190, i32 47}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/rc/ir-rc5-decoder.c", i32 281, i32 2}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ir_rc5_decode_init._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @ir_rc5_decode_init._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2148216426, i64 2148216431, i64 2148216444, i64 2148216488, i64 2148216522, i64 2148216543}
!50 = !{i8 0, i8 2}
