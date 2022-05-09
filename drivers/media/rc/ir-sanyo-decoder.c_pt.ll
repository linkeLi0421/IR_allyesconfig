; ModuleID = '/llk/IR_all_yes/drivers/media/rc/ir-sanyo-decoder.c_pt.bc'
source_filename = "../drivers/media/rc/ir-sanyo-decoder.c"
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

@sanyo_handler = internal global { %struct.ir_raw_handler, [56 x i8] } { %struct.ir_raw_handler { %struct.list_head zeroinitializer, i64 4096, ptr @ir_sanyo_decode, ptr @ir_sanyo_encode, i32 38000, i32 5630, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_ir_sanyo_decoder__234_229_ir_sanyo_decode_init6 = internal global ptr @ir_sanyo_decode_init, section ".initcall6.init", align 4
@__exitcall_ir_sanyo_decode_exit = internal global ptr @ir_sanyo_decode_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file235 = internal constant [56 x i8] c"ir_sanyo_decoder.file=drivers/media/rc/ir-sanyo-decoder\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [32 x i8] c"ir_sanyo_decoder.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author237 = internal constant [46 x i8] c"ir_sanyo_decoder.author=Mauro Carvalho Chehab\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [61 x i8] c"ir_sanyo_decoder.author=Red Hat Inc. (http://www.redhat.com)\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [55 x i8] c"ir_sanyo_decoder.description=SANYO IR protocol decoder\00", section ".modinfo", align 1
@ir_sanyo_decode.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ir_sanyo_decoder\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ir_sanyo_decode\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/rc/ir-sanyo-decoder.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"SANYO event reset received. reset to state 0\0A\00", [50 x i8] zeroinitializer }, align 32
@ir_sanyo_decode.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"SANYO decode started at state %d (%uus %s)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pulse\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"space\00", [26 x i8] zeroinitializer }, align 32
@ir_sanyo_decode.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SANYO repeat last key\0A\00", [41 x i8] zeroinitializer }, align 32
@ir_sanyo_decode.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"SANYO checksum error: received 0x%08llx\0A\00", [55 x i8] zeroinitializer }, align 32
@ir_sanyo_decode.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SANYO scancode: 0x%06x\0A\00", [40 x i8] zeroinitializer }, align 32
@ir_sanyo_decode.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"SANYO decode failed at count %d state %d (%uus %s)\0A\00", [44 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@ir_sanyo_timings = internal constant { %struct.ir_raw_timings_pd, [32 x i8] } { %struct.ir_raw_timings_pd { i32 9008, i32 4504, i32 563, [2 x i32] [i32 563, i32 1689], i32 563, i32 5630, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@ir_sanyo_decode_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016IR SANYO protocol handler initialized\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ir_sanyo_decode_init\00", [43 x i8] zeroinitializer }, align 32
@ir_sanyo_decode_init._entry_ptr = internal global ptr @ir_sanyo_decode_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.13 = private unnamed_addr constant [14 x i8] c"sanyo_handler\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 208, i32 30 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 55, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 61, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 105, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 147, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 154, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 160, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"ir_sanyo_timings\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 166, i32 39 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [39 x i8] c"../drivers/media/rc/ir-sanyo-decoder.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 220, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_ir_sanyo_decode_exit, ptr @__initcall__kmod_ir_sanyo_decoder__234_229_ir_sanyo_decode_init6, ptr @ir_sanyo_decode_exit, ptr @ir_sanyo_decode_init._entry, ptr @ir_sanyo_decode_init._entry_ptr, ptr @sanyo_handler, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @ir_sanyo_timings, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sanyo_handler to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_sanyo_timings to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_sanyo_decode_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ir_sanyo_decode_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ir_raw_handler_unregister(ptr noundef nonnull @sanyo_handler) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_handler_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_sanyo_decode_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ir_raw_handler_register(ptr noundef nonnull @sanyo_handler) #5
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_sanyo_decode(ptr noundef %dev, [2 x i32] %ev.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ev.coerce.fca.0.extract = extractvalue [2 x i32] %ev.coerce, 0
  %ev.coerce.fca.1.extract = extractvalue [2 x i32] %ev.coerce, 1
  %raw = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %raw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw, align 4
  %sanyo = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 16
  %2 = and i32 %ev.coerce.fca.1.extract, 5242880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %do.body10, label %if.then

if.then:                                          ; preds = %entry
  %4 = and i32 %ev.coerce.fca.1.extract, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_sanyo_decode.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_sanyo_decode, %if.then6)) #5
          to label %cleanup.sink.split [label %if.then6], !srcloc !54

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_sanyo_decode.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.3) #5
  br label %cleanup.sink.split

do.body10:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_sanyo_decode.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_sanyo_decode, %if.then22)) #5
          to label %do.end31 [label %if.then22], !srcloc !54

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %sanyo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sanyo, align 8
  %7 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool28.not = icmp eq i32 %7, 0
  %cond = select i1 %tobool28.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_sanyo_decode.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %6, i32 noundef %ev.coerce.fca.0.extract, ptr noundef nonnull %cond) #5
  br label %do.end31

do.end31:                                         ; preds = %if.then22, %do.body10
  %8 = ptrtoint ptr %sanyo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sanyo, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.end31.do.body299_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb44
    i32 2, label %sw.bb56
    i32 3, label %sw.bb68
    i32 4, label %sw.bb113
    i32 5, label %sw.bb125
  ]

do.end31.do.body299_crit_edge:                    ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body299

sw.bb:                                            ; preds = %do.end31
  %11 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool37.not = icmp ne i32 %11, 0
  %12 = add i32 %ev.coerce.fca.0.extract, -8728
  call void @__sanitizer_cov_trace_const_cmp4(i32 561, i32 %12)
  %13 = icmp ult i32 %12, 561
  %or.cond438 = select i1 %tobool37.not, i1 %13, i1 false
  br i1 %or.cond438, label %if.then41, label %sw.bb.do.body299_crit_edge

sw.bb.do.body299_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body299

if.then41:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %count = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 16, i32 1
  %14 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %count, align 4
  br label %cleanup.sink.split

sw.bb44:                                          ; preds = %do.end31
  %15 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool49.not = icmp eq i32 %15, 0
  %16 = add i32 %ev.coerce.fca.0.extract, -4224
  call void @__sanitizer_cov_trace_const_cmp4(i32 561, i32 %16)
  %17 = icmp ult i32 %16, 561
  %or.cond440 = select i1 %tobool49.not, i1 %17, i1 false
  br i1 %or.cond440, label %sw.bb44.cleanup.sink.split_crit_edge, label %sw.bb44.do.body299_crit_edge

sw.bb44.do.body299_crit_edge:                     ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body299

sw.bb44.cleanup.sink.split_crit_edge:             ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb56:                                          ; preds = %do.end31
  %18 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool61.not = icmp ne i32 %18, 0
  %19 = add i32 %ev.coerce.fca.0.extract, -283
  call void @__sanitizer_cov_trace_const_cmp4(i32 561, i32 %19)
  %20 = icmp ult i32 %19, 561
  %or.cond442 = select i1 %tobool61.not, i1 %20, i1 false
  br i1 %or.cond442, label %sw.bb56.cleanup.sink.split_crit_edge, label %sw.bb56.do.body299_crit_edge

sw.bb56.do.body299_crit_edge:                     ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body299

sw.bb56.cleanup.sink.split_crit_edge:             ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb68:                                          ; preds = %do.end31
  %21 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool73.not = icmp eq i32 %21, 0
  br i1 %tobool73.not, label %if.end75, label %sw.bb68.do.body299_crit_edge

sw.bb68.do.body299_crit_edge:                     ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body299

if.end75:                                         ; preds = %sw.bb68
  %count76 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 16, i32 1
  %22 = ptrtoint ptr %count76 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool77.not = icmp eq i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 84169, i32 %ev.coerce.fca.0.extract)
  %cmp.i420 = icmp ugt i32 %ev.coerce.fca.0.extract, 84169
  %or.cond = select i1 %tobool77.not, i1 %cmp.i420, i1 false
  br i1 %or.cond, label %if.then79, label %if.end98

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rc_repeat(ptr noundef %dev) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_sanyo_decode.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_sanyo_decode, %if.then92)) #5
          to label %cleanup.sink.split [label %if.then92], !srcloc !54

if.then92:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_sanyo_decode.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.7) #5
  br label %cleanup.sink.split

if.end98:                                         ; preds = %if.end75
  %bits = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 16, i32 2
  %24 = ptrtoint ptr %bits to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %bits, align 8
  %shl = shl i64 %25, 1
  store i64 %shl, ptr %bits, align 8
  %26 = add i32 %ev.coerce.fca.0.extract, -1409
  call void @__sanitizer_cov_trace_const_cmp4(i32 561, i32 %26)
  %27 = icmp ult i32 %26, 561
  br i1 %27, label %if.then100, label %if.else

if.then100:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i64 %shl, 1
  %28 = ptrtoint ptr %bits to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %or, ptr %bits, align 8
  br label %if.end105

if.else:                                          ; preds = %if.end98
  %29 = add i32 %ev.coerce.fca.0.extract, -283
  call void @__sanitizer_cov_trace_const_cmp4(i32 561, i32 %29)
  %30 = icmp ult i32 %29, 561
  br i1 %30, label %if.else.if.end105_crit_edge, label %if.else.do.body299_crit_edge

if.else.do.body299_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body299

if.else.if.end105_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105

if.end105:                                        ; preds = %if.else.if.end105_crit_edge, %if.then100
  %31 = ptrtoint ptr %count76 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count76, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %count76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %inc)
  %cmp = icmp eq i32 %inc, 42
  %. = select i1 %cmp, i32 4, i32 2
  br label %cleanup.sink.split

sw.bb113:                                         ; preds = %do.end31
  %33 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool118.not = icmp ne i32 %33, 0
  %34 = add i32 %ev.coerce.fca.0.extract, -283
  call void @__sanitizer_cov_trace_const_cmp4(i32 561, i32 %34)
  %35 = icmp ult i32 %34, 561
  %or.cond444 = select i1 %tobool118.not, i1 %35, i1 false
  br i1 %or.cond444, label %sw.bb113.cleanup.sink.split_crit_edge, label %sw.bb113.do.body299_crit_edge

sw.bb113.do.body299_crit_edge:                    ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body299

sw.bb113.cleanup.sink.split_crit_edge:            ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

sw.bb125:                                         ; preds = %do.end31
  %36 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool130.not = icmp eq i32 %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5349, i32 %ev.coerce.fca.0.extract)
  %cmp.i427 = icmp ugt i32 %ev.coerce.fca.0.extract, 5349
  %or.cond436 = select i1 %tobool130.not, i1 %cmp.i427, i1 false
  br i1 %or.cond436, label %if.end135, label %sw.bb125.do.body299_crit_edge

sw.bb125.do.body299_crit_edge:                    ; preds = %sw.bb125
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body299

if.end135:                                        ; preds = %sw.bb125
  %bits136 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 16, i32 2
  %37 = ptrtoint ptr %bits136 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %bits136, align 8
  %39 = trunc i64 %38 to i32
  %40 = lshr i32 %39, 8
  %conv183 = and i32 %40, 255
  %arrayidx.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv183
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i, align 1
  %43 = trunc i64 %38 to i32
  %idxprom.i428 = and i32 %43, 255
  %arrayidx.i429 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i428
  %44 = ptrtoint ptr %arrayidx.i429 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i429, align 1
  %xor399 = xor i8 %45, %42
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %xor399)
  %cmp253.not = icmp eq i8 %xor399, -1
  br i1 %cmp253.not, label %if.end275, label %do.body256

do.body256:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_sanyo_decode.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_sanyo_decode, %if.then268)) #5
          to label %cleanup.sink.split [label %if.then268], !srcloc !54

if.then268:                                       ; preds = %do.body256
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %bits136 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %bits136, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_sanyo_decode.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.8, i64 noundef %47) #5
  br label %cleanup.sink.split

if.end275:                                        ; preds = %if.end135
  %shr = lshr i64 %38, 29
  %48 = trunc i64 %shr to i16
  %conv = lshr i16 %48, 8
  %49 = and i16 %conv, 31
  %conv4.i = zext i16 %49 to i32
  %arrayidx.i10.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i
  %50 = ptrtoint ptr %arrayidx.i10.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i10.i, align 1
  %conv6.i = zext i8 %51 to i32
  %52 = and i16 %48, 255
  %idxprom.i.i = zext i16 %52 to i32
  %arrayidx.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i.i, align 1
  %conv2.i = zext i8 %54 to i32
  %conv251 = zext i8 %42 to i32
  %55 = shl nuw nsw i32 %conv2.i, 13
  %56 = shl nuw nsw i32 %conv6.i, 5
  %.masked = and i32 %56, 7936
  %shl277 = or i32 %55, %.masked
  %or279 = or i32 %shl277, %conv251
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_sanyo_decode.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_sanyo_decode, %if.then292)) #5
          to label %do.end296 [label %if.then292], !srcloc !54

if.then292:                                       ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_sanyo_decode.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %or279) #5
  br label %do.end296

do.end296:                                        ; preds = %if.then292, %if.end275
  %conv297 = zext i32 %or279 to i64
  tail call void @rc_keydown(ptr noundef %dev, i32 noundef 12, i64 noundef %conv297, i8 noundef zeroext 0) #5
  br label %cleanup.sink.split

do.body299:                                       ; preds = %sw.bb125.do.body299_crit_edge, %sw.bb113.do.body299_crit_edge, %if.else.do.body299_crit_edge, %sw.bb68.do.body299_crit_edge, %sw.bb56.do.body299_crit_edge, %sw.bb44.do.body299_crit_edge, %sw.bb.do.body299_crit_edge, %do.end31.do.body299_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_sanyo_decode.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_sanyo_decode, %if.then311)) #5
          to label %cleanup.sink.split [label %if.then311], !srcloc !54

if.then311:                                       ; preds = %do.body299
  call void @__sanitizer_cov_trace_pc() #7
  %count313 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 16, i32 1
  %57 = ptrtoint ptr %count313 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %count313, align 4
  %59 = ptrtoint ptr %sanyo to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sanyo, align 8
  %61 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool319.not = icmp eq i32 %61, 0
  %cond320 = select i1 %tobool319.not, ptr @.str.6, ptr @.str.5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_sanyo_decode.__UNIQUE_ID_ddebug233, ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %58, i32 noundef %60, i32 noundef %ev.coerce.fca.0.extract, ptr noundef nonnull %cond320) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then311, %do.body299, %do.end296, %if.then268, %do.body256, %sw.bb113.cleanup.sink.split_crit_edge, %if.end105, %if.then92, %if.then79, %sw.bb56.cleanup.sink.split_crit_edge, %sw.bb44.cleanup.sink.split_crit_edge, %if.then41, %if.then6, %do.body
  %.sink = phi i32 [ 0, %do.end296 ], [ %., %if.end105 ], [ 1, %if.then41 ], [ 0, %do.body ], [ 0, %if.then6 ], [ 2, %sw.bb44.cleanup.sink.split_crit_edge ], [ 3, %sw.bb56.cleanup.sink.split_crit_edge ], [ 0, %if.then79 ], [ 0, %if.then92 ], [ 5, %sw.bb113.cleanup.sink.split_crit_edge ], [ 0, %do.body256 ], [ 0, %if.then268 ], [ 0, %do.body299 ], [ 0, %if.then311 ]
  %retval.0.ph = phi i32 [ 0, %do.end296 ], [ 0, %if.end105 ], [ 0, %if.then41 ], [ 0, %do.body ], [ 0, %if.then6 ], [ 0, %sw.bb44.cleanup.sink.split_crit_edge ], [ 0, %sw.bb56.cleanup.sink.split_crit_edge ], [ 0, %if.then79 ], [ 0, %if.then92 ], [ 0, %sw.bb113.cleanup.sink.split_crit_edge ], [ 0, %do.body256 ], [ 0, %if.then268 ], [ -22, %do.body299 ], [ -22, %if.then311 ]
  %62 = ptrtoint ptr %sanyo to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %.sink, ptr %sanyo, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_sanyo_encode(i32 noundef %protocol, i32 noundef %scancode, ptr noundef %events, i32 noundef %max) #2 align 64 {
entry:
  %e = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e) #5
  %0 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %events, ptr %e, align 4
  %shr = lshr i32 %scancode, 8
  %1 = and i32 %shr, 255
  %arrayidx.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i, align 1
  %conv2.i = zext i8 %3 to i16
  %shl.i = shl nuw i16 %conv2.i, 8
  %4 = lshr i32 %scancode, 16
  %conv4.i = and i32 %4, 255
  %arrayidx.i10.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i
  %5 = ptrtoint ptr %arrayidx.i10.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i10.i, align 1
  %7 = and i8 %6, -8
  %conv6.i.masked = zext i8 %7 to i16
  %8 = or i16 %shl.i, %conv6.i.masked
  %9 = zext i16 %8 to i64
  %shl33 = shl nuw nsw i64 %9, 26
  %neg = xor i32 %scancode, -1
  %shr35 = lshr i32 %neg, 8
  %10 = and i32 %shr35, 255
  %arrayidx.i.i205 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i205 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i205, align 1
  %conv2.i206 = zext i8 %12 to i16
  %shl.i207 = shl nuw i16 %conv2.i206, 8
  %13 = lshr i32 %neg, 16
  %conv4.i208 = and i32 %13, 255
  %arrayidx.i10.i209 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i208
  %14 = ptrtoint ptr %arrayidx.i10.i209 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i10.i209, align 1
  %16 = and i8 %15, -8
  %conv6.i210.masked = zext i8 %16 to i16
  %17 = or i16 %shl.i207, %conv6.i210.masked
  %18 = zext i16 %17 to i64
  %shl79 = shl nuw nsw i64 %18, 13
  %or80 = or i64 %shl79, %shl33
  %idxprom.i = and i32 %scancode, 255
  %arrayidx.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  %cond114 = zext i8 %20 to i32
  %shl116 = shl nuw nsw i32 %cond114, 8
  %21 = zext i32 %shl116 to i64
  %or118 = or i64 %or80, %21
  %idxprom.i212 = and i32 %neg, 255
  %arrayidx.i213 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i212
  %22 = ptrtoint ptr %arrayidx.i213 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i213, align 1
  %24 = zext i8 %23 to i64
  %or156 = or i64 %or118, %24
  %call157 = call i32 @ir_raw_gen_pd(ptr noundef nonnull %e, i32 noundef %max, ptr noundef nonnull @ir_sanyo_timings, i32 noundef 42, i64 noundef %or156) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %cmp = icmp slt i32 %call157, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %e, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %26 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %events to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.div, %if.end ], [ %call157, %entry.cleanup_crit_edge ]
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
declare dso_local void @rc_repeat(ptr noundef) local_unnamed_addr #1

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

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !42, !43, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__initcall__kmod_ir_sanyo_decoder__234_229_ir_sanyo_decode_init6, !1, !"__initcall__kmod_ir_sanyo_decoder__234_229_ir_sanyo_decode_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/ir-sanyo-decoder.c", i32 229, i32 1}
!2 = !{ptr @__exitcall_ir_sanyo_decode_exit, !3, !"__exitcall_ir_sanyo_decode_exit", i1 false, i1 false}
!3 = !{!"../drivers/media/rc/ir-sanyo-decoder.c", i32 230, i32 1}
!4 = !{ptr @__UNIQUE_ID_file235, !5, !"__UNIQUE_ID_file235", i1 false, i1 false}
!5 = !{!"../drivers/media/rc/ir-sanyo-decoder.c", i32 232, i32 1}
!6 = !{ptr @__UNIQUE_ID_license236, !5, !"__UNIQUE_ID_license236", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author237, !8, !"__UNIQUE_ID_author237", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/ir-sanyo-decoder.c", i32 233, i32 1}
!9 = !{ptr @__UNIQUE_ID_author238, !10, !"__UNIQUE_ID_author238", i1 false, i1 false}
!10 = !{!"../drivers/media/rc/ir-sanyo-decoder.c", i32 234, i32 1}
!11 = !{ptr @__UNIQUE_ID_description239, !12, !"__UNIQUE_ID_description239", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/ir-sanyo-decoder.c", i32 235, i32 1}
!13 = !{ptr @sanyo_handler, !14, !"sanyo_handler", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/ir-sanyo-decoder.c", i32 208, i32 30}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/rc/ir-sanyo-decoder.c", i32 55, i32 4}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ir_sanyo_decode.__UNIQUE_ID_ddebug228, !16, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/rc/ir-sanyo-decoder.c", i32 61, i32 2}
!23 = !{ptr @ir_sanyo_decode.__UNIQUE_ID_ddebug229, !22, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/rc/ir-sanyo-decoder.c", i32 105, i32 4}
!28 = !{ptr @ir_sanyo_decode.__UNIQUE_ID_ddebug230, !27, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/rc/ir-sanyo-decoder.c", i32 147, i32 4}
!31 = !{ptr @ir_sanyo_decode.__UNIQUE_ID_ddebug231, !30, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/rc/ir-sanyo-decoder.c", i32 154, i32 3}
!34 = !{ptr @ir_sanyo_decode.__UNIQUE_ID_ddebug232, !33, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/rc/ir-sanyo-decoder.c", i32 160, i32 2}
!37 = !{ptr @ir_sanyo_decode.__UNIQUE_ID_ddebug233, !36, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!38 = !{ptr @ir_sanyo_timings, !39, !"ir_sanyo_timings", i1 false, i1 false}
!39 = !{!"../drivers/media/rc/ir-sanyo-decoder.c", i32 166, i32 39}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/rc/ir-sanyo-decoder.c", i32 220, i32 2}
!42 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ir_sanyo_decode_init._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @ir_sanyo_decode_init._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2148957604, i64 2148957609, i64 2148957622, i64 2148957666, i64 2148957700, i64 2148957721}
