; ModuleID = '/llk/IR_all_yes/drivers/media/rc/ir-jvc-decoder.c_pt.bc'
source_filename = "../drivers/media/rc/ir-jvc-decoder.c"
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

@jvc_handler = internal global { %struct.ir_raw_handler, [56 x i8] } { %struct.ir_raw_handler { %struct.list_head zeroinitializer, i64 32, ptr @ir_jvc_decode, ptr @ir_jvc_encode, i32 38000, i32 18375, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_ir_jvc_decoder__233_224_ir_jvc_decode_init6 = internal global ptr @ir_jvc_decode_init, section ".initcall6.init", align 4
@__exitcall_ir_jvc_decode_exit = internal global ptr @ir_jvc_decode_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file234 = internal constant [52 x i8] c"ir_jvc_decoder.file=drivers/media/rc/ir-jvc-decoder\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [27 x i8] c"ir_jvc_decoder.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [58 x i8] c"ir_jvc_decoder.author=David H\C3\A4rdeman <david@hardeman.nu>\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [51 x i8] c"ir_jvc_decoder.description=JVC IR protocol decoder\00", section ".modinfo", align 1
@ir_jvc_decode.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ir_jvc_decoder\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ir_jvc_decode\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/rc/ir-jvc-decoder.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"JVC decode started at state %d (%uus %s)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pulse\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"space\00", [26 x i8] zeroinitializer }, align 32
@ir_jvc_decode.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"JVC scancode 0x%04x\0A\00", [43 x i8] zeroinitializer }, align 32
@ir_jvc_decode.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"JVC repeat\0A\00", [20 x i8] zeroinitializer }, align 32
@ir_jvc_decode.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"JVC invalid repeat msg\0A\00", [40 x i8] zeroinitializer }, align 32
@ir_jvc_decode.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"JVC decode failed at state %d (%uus %s)\0A\00", [55 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@ir_jvc_timings = internal constant { %struct.ir_raw_timings_pd, [32 x i8] } { %struct.ir_raw_timings_pd { i32 8400, i32 4200, i32 525, [2 x i32] [i32 525, i32 1575], i32 525, i32 18375, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@ir_jvc_decode_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016IR JVC protocol handler initialized\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ir_jvc_decode_init\00", [45 x i8] zeroinitializer }, align 32
@ir_jvc_decode_init._entry_ptr = internal global ptr @ir_jvc_decode_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.12 = private unnamed_addr constant [12 x i8] c"jvc_handler\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 203, i32 30 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 51, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 131, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 136, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 139, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 159, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"ir_jvc_timings\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 165, i32 39 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [37 x i8] c"../drivers/media/rc/ir-jvc-decoder.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 215, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_ir_jvc_decode_exit, ptr @__initcall__kmod_ir_jvc_decoder__233_224_ir_jvc_decode_init6, ptr @ir_jvc_decode_exit, ptr @ir_jvc_decode_init._entry, ptr @ir_jvc_decode_init._entry_ptr, ptr @jvc_handler, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ir_jvc_timings, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jvc_handler to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_jvc_timings to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_jvc_decode_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ir_jvc_decode_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ir_raw_handler_unregister(ptr noundef nonnull @jvc_handler) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_handler_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_jvc_decode_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ir_raw_handler_register(ptr noundef nonnull @jvc_handler) #5
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_jvc_decode(ptr noundef %dev, [2 x i32] %ev.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ev.coerce.fca.0.extract = extractvalue [2 x i32] %ev.coerce, 0
  %ev.coerce.fca.1.extract = extractvalue [2 x i32] %ev.coerce, 1
  %ev.sroa.18.4.extract.shift = lshr i32 %ev.coerce.fca.1.extract, 16
  %ev.sroa.18.4.extract.trunc = trunc i32 %ev.sroa.18.4.extract.shift to i8
  %raw = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %raw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw, align 4
  %jvc = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 15
  %2 = and i32 %ev.coerce.fca.1.extract, 5242880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %4 = and i8 %ev.sroa.18.4.extract.trunc, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 263, i32 %ev.coerce.fca.0.extract)
  %cmp.i = icmp ugt i32 %ev.coerce.fca.0.extract, 263
  br i1 %cmp.i, label %do.body, label %if.end2.do.body268_crit_edge

if.end2.do.body268_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body268

do.body:                                          ; preds = %if.end2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_jvc_decode.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_jvc_decode, %if.then10)) #5
          to label %do.end [label %if.then10], !srcloc !49

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %jvc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %jvc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %ev.sroa.18.4.extract.trunc)
  %tobool16.not = icmp sgt i8 %ev.sroa.18.4.extract.trunc, -1
  %cond = select i1 %tobool16.not, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_jvc_decode.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %6, i32 noundef %ev.coerce.fca.0.extract, ptr noundef nonnull %cond) #5
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %7 = ptrtoint ptr %jvc to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %jvc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %ev.sroa.18.4.extract.trunc)
  %tobool259.not = icmp sgt i8 %ev.sroa.18.4.extract.trunc, -1
  %8 = add i32 %ev.coerce.fca.0.extract, -8139
  call void @__sanitizer_cov_trace_const_cmp4(i32 523, i32 %8)
  %9 = icmp ult i32 %8, 523
  %.349 = select i1 %9, i32 0, i32 2
  br label %again

again:                                            ; preds = %if.end261, %do.end
  %10 = phi i32 [ %.349, %if.end261 ], [ %.pr, %do.end ]
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %again.do.body268_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb35
    i32 2, label %sw.bb47
    i32 3, label %sw.bb59
    i32 4, label %sw.bb86
    i32 5, label %sw.bb98
    i32 6, label %sw.bb254
  ]

again.do.body268_crit_edge:                       ; preds = %again
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body268

sw.bb:                                            ; preds = %again
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ev.sroa.18.4.extract.trunc)
  %tobool23.not = icmp slt i8 %ev.sroa.18.4.extract.trunc, 0
  %or.cond399 = select i1 %tobool23.not, i1 %9, i1 false
  br i1 %or.cond399, label %if.end28, label %sw.bb.do.body268_crit_edge

sw.bb.do.body268_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body268

if.end28:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %count = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 15, i32 3
  %12 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %count, align 4
  %first = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 15, i32 4
  %13 = ptrtoint ptr %first to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %first, align 4
  %toggle = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 15, i32 5
  %14 = ptrtoint ptr %toggle to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %toggle, align 1, !range !50
  %16 = xor i8 %15, 1
  store i8 %16, ptr %toggle, align 1
  br label %cleanup.sink.split

sw.bb35:                                          ; preds = %again
  %17 = add i32 %ev.coerce.fca.0.extract, -3939
  call void @__sanitizer_cov_trace_const_cmp4(i32 523, i32 %17)
  %18 = icmp ult i32 %17, 523
  %or.cond401 = select i1 %tobool259.not, i1 %18, i1 false
  br i1 %or.cond401, label %sw.bb35.cleanup.sink.split_crit_edge, label %sw.bb35.do.body268_crit_edge

sw.bb35.do.body268_crit_edge:                     ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body268

sw.bb35.cleanup.sink.split_crit_edge:             ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb47:                                          ; preds = %again
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ev.sroa.18.4.extract.trunc)
  %tobool52.not = icmp slt i8 %ev.sroa.18.4.extract.trunc, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 787, i32 %ev.coerce.fca.0.extract)
  %cmp1.i366 = icmp ult i32 %ev.coerce.fca.0.extract, 787
  %or.cond = select i1 %tobool52.not, i1 %cmp1.i366, i1 false
  br i1 %or.cond, label %sw.bb47.cleanup.sink.split_crit_edge, label %sw.bb47.do.body268_crit_edge

sw.bb47.do.body268_crit_edge:                     ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body268

sw.bb47.cleanup.sink.split_crit_edge:             ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb59:                                          ; preds = %again
  br i1 %tobool259.not, label %if.end66, label %sw.bb59.do.body268_crit_edge

sw.bb59.do.body268_crit_edge:                     ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body268

if.end66:                                         ; preds = %sw.bb59
  %bits = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 15, i32 1
  %19 = ptrtoint ptr %bits to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %bits, align 4
  %shl = shl i16 %20, 1
  store i16 %shl, ptr %bits, align 4
  %21 = add i32 %ev.coerce.fca.0.extract, -1314
  call void @__sanitizer_cov_trace_const_cmp4(i32 523, i32 %21)
  %22 = icmp ult i32 %21, 523
  br i1 %22, label %if.then69, label %if.else

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  %23 = or i16 %shl, 1
  %24 = ptrtoint ptr %bits to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %bits, align 4
  br label %if.end77

if.else:                                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_const_cmp4(i32 787, i32 %ev.coerce.fca.0.extract)
  %cmp1.i370 = icmp ult i32 %ev.coerce.fca.0.extract, 787
  br i1 %cmp1.i370, label %if.else.if.end77_crit_edge, label %if.else.do.body268_crit_edge

if.else.do.body268_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body268

if.else.if.end77_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.end77:                                         ; preds = %if.else.if.end77_crit_edge, %if.then69
  %count78 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 15, i32 3
  %25 = ptrtoint ptr %count78 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count78, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %count78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc)
  %cmp = icmp eq i32 %inc, 16
  %. = select i1 %cmp, i32 4, i32 2
  br label %cleanup.sink.split

sw.bb86:                                          ; preds = %again
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ev.sroa.18.4.extract.trunc)
  %tobool91.not = icmp slt i8 %ev.sroa.18.4.extract.trunc, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 787, i32 %ev.coerce.fca.0.extract)
  %cmp1.i372 = icmp ult i32 %ev.coerce.fca.0.extract, 787
  %or.cond396 = select i1 %tobool91.not, i1 %cmp1.i372, i1 false
  br i1 %or.cond396, label %sw.bb86.cleanup.sink.split_crit_edge, label %sw.bb86.do.body268_crit_edge

sw.bb86.do.body268_crit_edge:                     ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body268

sw.bb86.cleanup.sink.split_crit_edge:             ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb98:                                          ; preds = %again
  call void @__sanitizer_cov_trace_const_cmp4(i32 18113, i32 %ev.coerce.fca.0.extract)
  %cmp.i373 = icmp ugt i32 %ev.coerce.fca.0.extract, 18113
  %or.cond397 = select i1 %tobool259.not, i1 %cmp.i373, i1 false
  br i1 %or.cond397, label %if.end108, label %sw.bb98.do.body268_crit_edge

sw.bb98.do.body268_crit_edge:                     ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body268

if.end108:                                        ; preds = %sw.bb98
  %first109 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 15, i32 4
  %27 = ptrtoint ptr %first109 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %first109, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool110.not = icmp eq i8 %28, 0
  %bits208 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 15, i32 1
  %29 = ptrtoint ptr %bits208 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %bits208, align 4
  br i1 %tobool110.not, label %if.else207, label %cond.end

cond.end:                                         ; preds = %if.end108
  %31 = lshr i16 %30, 8
  %idxprom.i = zext i16 %31 to i32
  %arrayidx.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i, align 1
  %cond142 = zext i8 %33 to i32
  %shl143 = shl nuw nsw i32 %cond142, 8
  %conv149.mask = and i16 %30, 255
  %idxprom.i374 = zext i16 %conv149.mask to i32
  %arrayidx.i375 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i374
  %34 = ptrtoint ptr %arrayidx.i375 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i375, align 1
  %cond181 = zext i8 %35 to i32
  %or183 = or i32 %shl143, %cond181
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_jvc_decode.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_jvc_decode, %if.then196)) #5
          to label %do.end200 [label %if.then196], !srcloc !49

if.then196:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_jvc_decode.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %or183) #5
  br label %do.end200

do.end200:                                        ; preds = %if.then196, %cond.end
  %conv201 = zext i32 %or183 to i64
  %toggle202 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 15, i32 5
  %36 = ptrtoint ptr %toggle202 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %toggle202, align 1, !range !50
  tail call void @rc_keydown(ptr noundef %dev, i32 noundef 5, i64 noundef %conv201, i8 noundef zeroext %37) #5
  %38 = ptrtoint ptr %first109 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %first109, align 4
  %39 = ptrtoint ptr %bits208 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %bits208, align 4
  %old_bits = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 15, i32 2
  %41 = ptrtoint ptr %old_bits to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %old_bits, align 2
  br label %if.end251

if.else207:                                       ; preds = %if.end108
  %old_bits210 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 15, i32 2
  %42 = ptrtoint ptr %old_bits210 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %old_bits210, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %43)
  %cmp212 = icmp eq i16 %30, %43
  br i1 %cmp212, label %do.body215, label %do.body233

do.body215:                                       ; preds = %if.else207
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_jvc_decode.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_jvc_decode, %if.then227)) #5
          to label %do.end231 [label %if.then227], !srcloc !49

if.then227:                                       ; preds = %do.body215
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_jvc_decode.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.7) #5
  br label %do.end231

do.end231:                                        ; preds = %if.then227, %do.body215
  tail call void @rc_repeat(ptr noundef %dev) #5
  br label %if.end251

do.body233:                                       ; preds = %if.else207
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_jvc_decode.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_jvc_decode, %if.then245)) #5
          to label %do.body268 [label %if.then245], !srcloc !49

if.then245:                                       ; preds = %do.body233
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_jvc_decode.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.8) #5
  br label %do.body268

if.end251:                                        ; preds = %do.end231, %do.end200
  %count252 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 15, i32 3
  %44 = ptrtoint ptr %count252 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %count252, align 4
  br label %cleanup.sink.split

sw.bb254:                                         ; preds = %again
  br i1 %tobool259.not, label %sw.bb254.do.body268_crit_edge, label %if.end261

sw.bb254.do.body268_crit_edge:                    ; preds = %sw.bb254
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body268

if.end261:                                        ; preds = %sw.bb254
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %jvc to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %.349, ptr %jvc, align 4
  br label %again

do.body268:                                       ; preds = %sw.bb254.do.body268_crit_edge, %if.then245, %do.body233, %sw.bb98.do.body268_crit_edge, %sw.bb86.do.body268_crit_edge, %if.else.do.body268_crit_edge, %sw.bb59.do.body268_crit_edge, %sw.bb47.do.body268_crit_edge, %sw.bb35.do.body268_crit_edge, %sw.bb.do.body268_crit_edge, %again.do.body268_crit_edge, %if.end2.do.body268_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_jvc_decode.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_jvc_decode, %if.then280)) #5
          to label %cleanup.sink.split [label %if.then280], !srcloc !49

if.then280:                                       ; preds = %do.body268
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %jvc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %jvc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %ev.sroa.18.4.extract.trunc)
  %tobool287.not = icmp sgt i8 %ev.sroa.18.4.extract.trunc, -1
  %cond288 = select i1 %tobool287.not, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_jvc_decode.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %47, i32 noundef %ev.coerce.fca.0.extract, ptr noundef nonnull %cond288) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then280, %do.body268, %if.end251, %sw.bb86.cleanup.sink.split_crit_edge, %if.end77, %sw.bb47.cleanup.sink.split_crit_edge, %sw.bb35.cleanup.sink.split_crit_edge, %if.end28, %if.then.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 6, %if.end251 ], [ %., %if.end77 ], [ 1, %if.end28 ], [ 0, %if.then.cleanup.sink.split_crit_edge ], [ 2, %sw.bb35.cleanup.sink.split_crit_edge ], [ 3, %sw.bb47.cleanup.sink.split_crit_edge ], [ 5, %sw.bb86.cleanup.sink.split_crit_edge ], [ 0, %do.body268 ], [ 0, %if.then280 ]
  %retval.0.ph = phi i32 [ 0, %if.end251 ], [ 0, %if.end77 ], [ 0, %if.end28 ], [ 0, %if.then.cleanup.sink.split_crit_edge ], [ 0, %sw.bb35.cleanup.sink.split_crit_edge ], [ 0, %sw.bb47.cleanup.sink.split_crit_edge ], [ 0, %sw.bb86.cleanup.sink.split_crit_edge ], [ -22, %do.body268 ], [ -22, %if.then280 ]
  %48 = ptrtoint ptr %jvc to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink, ptr %jvc, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_jvc_encode(i32 noundef %protocol, i32 noundef %scancode, ptr noundef %events, i32 noundef %max) #2 align 64 {
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
  %cond = zext i8 %2 to i32
  %shl24 = shl nuw nsw i32 %cond, 8
  %idxprom.i87 = and i32 %scancode, 255
  %arrayidx.i88 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i87
  %3 = ptrtoint ptr %arrayidx.i88 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i88, align 1
  %cond60 = zext i8 %4 to i32
  %or62 = or i32 %shl24, %cond60
  %conv63 = zext i32 %or62 to i64
  %call64 = call i32 @ir_raw_gen_pd(ptr noundef nonnull %e, i32 noundef %max, ptr noundef nonnull @ir_jvc_timings, i32 noundef 16, i64 noundef %conv63) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp = icmp slt i32 %call64, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %e, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %events to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.div, %if.end ], [ %call64, %entry.cleanup_crit_edge ]
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
declare dso_local void @rc_repeat(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_gen_pd(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_handler_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !37, !38, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_ir_jvc_decoder__233_224_ir_jvc_decode_init6, !1, !"__initcall__kmod_ir_jvc_decoder__233_224_ir_jvc_decode_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/ir-jvc-decoder.c", i32 224, i32 1}
!2 = !{ptr @__exitcall_ir_jvc_decode_exit, !3, !"__exitcall_ir_jvc_decode_exit", i1 false, i1 false}
!3 = !{!"../drivers/media/rc/ir-jvc-decoder.c", i32 225, i32 1}
!4 = !{ptr @__UNIQUE_ID_file234, !5, !"__UNIQUE_ID_file234", i1 false, i1 false}
!5 = !{!"../drivers/media/rc/ir-jvc-decoder.c", i32 227, i32 1}
!6 = !{ptr @__UNIQUE_ID_license235, !5, !"__UNIQUE_ID_license235", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author236, !8, !"__UNIQUE_ID_author236", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/ir-jvc-decoder.c", i32 228, i32 1}
!9 = !{ptr @__UNIQUE_ID_description237, !10, !"__UNIQUE_ID_description237", i1 false, i1 false}
!10 = !{!"../drivers/media/rc/ir-jvc-decoder.c", i32 229, i32 1}
!11 = !{ptr @jvc_handler, !12, !"jvc_handler", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/ir-jvc-decoder.c", i32 203, i32 30}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/ir-jvc-decoder.c", i32 51, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ir_jvc_decode.__UNIQUE_ID_ddebug228, !14, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!19 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/rc/ir-jvc-decoder.c", i32 131, i32 4}
!23 = !{ptr @ir_jvc_decode.__UNIQUE_ID_ddebug229, !22, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/rc/ir-jvc-decoder.c", i32 136, i32 4}
!26 = !{ptr @ir_jvc_decode.__UNIQUE_ID_ddebug230, !25, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/rc/ir-jvc-decoder.c", i32 139, i32 4}
!29 = !{ptr @ir_jvc_decode.__UNIQUE_ID_ddebug231, !28, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/rc/ir-jvc-decoder.c", i32 159, i32 2}
!32 = !{ptr @ir_jvc_decode.__UNIQUE_ID_ddebug232, !31, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!33 = !{ptr @ir_jvc_timings, !34, !"ir_jvc_timings", i1 false, i1 false}
!34 = !{!"../drivers/media/rc/ir-jvc-decoder.c", i32 165, i32 39}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/rc/ir-jvc-decoder.c", i32 215, i32 2}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ir_jvc_decode_init._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @ir_jvc_decode_init._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2148960106, i64 2148960111, i64 2148960124, i64 2148960168, i64 2148960202, i64 2148960223}
!50 = !{i8 0, i8 2}
