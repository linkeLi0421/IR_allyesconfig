; ModuleID = '/llk/IR_all_yes/drivers/media/rc/ir-rc6-decoder.c_pt.bc'
source_filename = "../drivers/media/rc/ir-rc6-decoder.c"
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

@rc6_handler = internal global { %struct.ir_raw_handler, [56 x i8] } { %struct.ir_raw_handler { %struct.list_head zeroinitializer, i64 1015808, ptr @ir_rc6_decode, ptr @ir_rc6_encode, i32 36000, i32 2664, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_ir_rc6_decoder__237_402_ir_rc6_decode_init6 = internal global ptr @ir_rc6_decode_init, section ".initcall6.init", align 4
@__exitcall_ir_rc6_decode_exit = internal global ptr @ir_rc6_decode_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file238 = internal constant [52 x i8] c"ir_rc6_decoder.file=drivers/media/rc/ir-rc6-decoder\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [27 x i8] c"ir_rc6_decoder.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [58 x i8] c"ir_rc6_decoder.author=David H\C3\A4rdeman <david@hardeman.nu>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [51 x i8] c"ir_rc6_decoder.description=RC6 IR protocol decoder\00", section ".modinfo", align 1
@ir_rc6_decode.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ir_rc6_decoder\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ir_rc6_decode\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/rc/ir-rc6-decoder.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RC6 decode started at state %i (%uus %s)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pulse\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"space\00", [26 x i8] zeroinitializer }, align 32
@ir_rc6_decode.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RC6 invalid start bit\0A\00", [41 x i8] zeroinitializer }, align 32
@ir_rc6_decode.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RC6 unknown mode\0A\00", [46 x i8] zeroinitializer }, align 32
@ir_rc6_decode.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RC6(0) scancode 0x%04x (toggle: %u)\0A\00", [59 x i8] zeroinitializer }, align 32
@ir_rc6_decode.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RC6 too many (%u) data bits\0A\00", [35 x i8] zeroinitializer }, align 32
@ir_rc6_decode.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"RC6(6A) unsupported length\0A\00", [36 x i8] zeroinitializer }, align 32
@ir_rc6_decode.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 0, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"RC6(6A) proto 0x%04x, scancode 0x%08x (toggle: %u)\0A\00", [44 x i8] zeroinitializer }, align 32
@ir_rc6_decode.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ir_rc6_decode.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.12, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"RC6 decode failed at state %i (%uus %s)\0A\00", [55 x i8] zeroinitializer }, align 32
@ir_rc6_timings = internal constant { [4 x %struct.ir_raw_timings_manchester], [48 x i8] } { [4 x %struct.ir_raw_timings_manchester] [%struct.ir_raw_timings_manchester { i32 2664, i32 888, i32 444, i8 -128, i32 0 }, %struct.ir_raw_timings_manchester { i32 0, i32 0, i32 888, i8 -128, i32 0 }, %struct.ir_raw_timings_manchester { i32 0, i32 0, i32 444, i8 -128, i32 2664 }, %struct.ir_raw_timings_manchester zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ir_rc6_decode_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016IR RC6 protocol handler initialized\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ir_rc6_decode_init\00", [45 x i8] zeroinitializer }, align 32
@ir_rc6_decode_init._entry_ptr = internal global ptr @ir_rc6_decode_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 20, i64 24, i64 32]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 2148466688, i64 2150891520, i64 2152071168]
@__sancov_gen_cov_switch_values.19 = internal global [7 x i64] [i64 5, i64 32, i64 15, i64 16, i64 17, i64 18, i64 19]
@___asan_gen_.20 = private unnamed_addr constant [12 x i8] c"rc6_handler\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 379, i32 30 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 97, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 160, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 177, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 217, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 223, i32 5 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 254, i32 5 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 258, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 272, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"ir_rc6_timings\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 278, i32 47 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [37 x i8] c"../drivers/media/rc/ir-rc6-decoder.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 393, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_ir_rc6_decode_exit, ptr @__initcall__kmod_ir_rc6_decoder__237_402_ir_rc6_decode_init6, ptr @ir_rc6_decode_exit, ptr @ir_rc6_decode_init._entry, ptr @ir_rc6_decode_init._entry_ptr, ptr @rc6_handler, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @ir_rc6_timings, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc6_handler to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_rc6_timings to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_rc6_decode_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ir_rc6_decode_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ir_raw_handler_unregister(ptr noundef nonnull @rc6_handler) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_handler_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_rc6_decode_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ir_raw_handler_register(ptr noundef nonnull @rc6_handler) #6
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_rc6_decode(ptr noundef %dev, [2 x i32] %ev.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ev.coerce.fca.1.extract = extractvalue [2 x i32] %ev.coerce, 1
  %ev.sroa.19.4.extract.shift = lshr i32 %ev.coerce.fca.1.extract, 16
  %ev.sroa.19.4.extract.trunc = trunc i32 %ev.sroa.19.4.extract.shift to i8
  %raw = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %raw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw, align 4
  %rc6 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 13
  %2 = and i32 %ev.coerce.fca.1.extract, 5242880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %4 = and i8 %ev.sroa.19.4.extract.trunc, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then1

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %rc6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %rc6, align 4
  br label %cleanup

if.end2:                                          ; preds = %entry
  %ev.coerce.fca.0.extract = extractvalue [2 x i32] %ev.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 222, i32 %ev.coerce.fca.0.extract)
  %cmp.i = icmp ugt i32 %ev.coerce.fca.0.extract, 222
  br i1 %cmp.i, label %again.preheader, label %if.end2.do.body307_crit_edge

if.end2.do.body307_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body307

again.preheader:                                  ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %ev.sroa.19.4.extract.trunc)
  %tobool16.not = icmp sgt i8 %ev.sroa.19.4.extract.trunc, -1
  %cond = select i1 %tobool16.not, ptr @.str.5, ptr @.str.4
  %header.i432 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 13, i32 1
  %toggle.i434 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 13, i32 3
  %count166 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 13, i32 4
  %wanted_bits167 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 13, i32 5
  %body = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 13, i32 2
  br label %again.outer

again.outer:                                      ; preds = %again.outer.backedge, %again.preheader
  %ev.sroa.0.0.ph = phi i32 [ %ev.coerce.fca.0.extract, %again.preheader ], [ %ev.sroa.0.0.ph.be, %again.outer.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 222, i32 %ev.sroa.0.0.ph)
  %cmp.i421 = icmp ugt i32 %ev.sroa.0.0.ph, 222
  call void @__sanitizer_cov_trace_const_cmp4(i32 666, i32 %ev.sroa.0.0.ph)
  %cmp1.i431 = icmp ult i32 %ev.sroa.0.0.ph, 666
  call void @__sanitizer_cov_trace_const_cmp4(i32 2442, i32 %ev.sroa.0.0.ph)
  %cmp.i440 = icmp ugt i32 %ev.sroa.0.0.ph, 2442
  br label %again

again:                                            ; preds = %if.then161, %again.outer
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_rc6_decode.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_rc6_decode, %if.then10)) #6
          to label %do.end [label %if.then10], !srcloc !60

if.then10:                                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %rc6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rc6, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_rc6_decode.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %7, i32 noundef %ev.sroa.0.0.ph, ptr noundef nonnull %cond) #6
  br label %do.end

do.end:                                           ; preds = %if.then10, %again
  br i1 %cmp.i421, label %if.end20, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %do.end
  %8 = ptrtoint ptr %rc6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rc6, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.end20.do.body307_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb33
    i32 2, label %sw.bb45
    i32 3, label %sw.bb63
    i32 4, label %sw.bb70
    i32 5, label %sw.bb82
    i32 6, label %sw.bb128
    i32 7, label %sw.bb165
    i32 8, label %sw.bb175
  ]

if.end20.do.body307_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body307

sw.bb:                                            ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ev.sroa.19.4.extract.trunc)
  %tobool26.not = icmp slt i8 %ev.sroa.19.4.extract.trunc, 0
  %11 = add i32 %ev.sroa.0.0.ph, -2221
  call void @__sanitizer_cov_trace_const_cmp4(i32 887, i32 %11)
  %12 = icmp ult i32 %11, 887
  %or.cond482 = select i1 %tobool26.not, i1 %12, i1 false
  br i1 %or.cond482, label %if.end31, label %sw.bb.do.body307_crit_edge

sw.bb.do.body307_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body307

if.end31:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %rc6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %rc6, align 4
  %14 = ptrtoint ptr %count166 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %count166, align 4
  br label %cleanup

sw.bb33:                                          ; preds = %if.end20
  %15 = add i32 %ev.sroa.0.0.ph, -667
  call void @__sanitizer_cov_trace_const_cmp4(i32 443, i32 %15)
  %16 = icmp ult i32 %15, 443
  %or.cond484 = select i1 %tobool16.not, i1 %16, i1 false
  br i1 %or.cond484, label %if.end43, label %sw.bb33.do.body307_crit_edge

sw.bb33.do.body307_crit_edge:                     ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body307

if.end43:                                         ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %rc6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %rc6, align 4
  %18 = ptrtoint ptr %header.i432 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %header.i432, align 4
  br label %cleanup

sw.bb45:                                          ; preds = %if.end20
  br i1 %cmp1.i431, label %if.end48, label %sw.bb45.do.body307_crit_edge

sw.bb45.do.body307_crit_edge:                     ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body307

if.end48:                                         ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %header.i432 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %header.i432, align 4
  %spec.select = call i8 @llvm.fshl.i8(i8 %20, i8 %ev.sroa.19.4.extract.trunc, i8 1)
  %21 = ptrtoint ptr %header.i432 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %spec.select, ptr %header.i432, align 4
  %22 = ptrtoint ptr %count166 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count166, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %count166, align 4
  %24 = ptrtoint ptr %rc6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %rc6, align 4
  br label %cleanup

sw.bb63:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %count166 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %count166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp = icmp eq i32 %26, 4
  %. = select i1 %cmp, i32 4, i32 2
  %27 = ptrtoint ptr %rc6 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %., ptr %rc6, align 4
  %28 = tail call i32 @llvm.usub.sat.i32(i32 %ev.sroa.0.0.ph, i32 444) #6
  br label %again.outer.backedge

sw.bb70:                                          ; preds = %if.end20
  %29 = add i32 %ev.sroa.0.0.ph, -667
  call void @__sanitizer_cov_trace_const_cmp4(i32 443, i32 %29)
  %30 = icmp ult i32 %29, 443
  br i1 %30, label %if.end73, label %sw.bb70.do.body307_crit_edge

sw.bb70.do.body307_crit_edge:                     ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body307

if.end73:                                         ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #8
  %bf.load75.lobit = lshr i8 %ev.sroa.19.4.extract.trunc, 7
  %31 = ptrtoint ptr %toggle.i434 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %bf.load75.lobit, ptr %toggle.i434, align 4
  %32 = ptrtoint ptr %rc6 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 5, ptr %rc6, align 4
  br label %cleanup

sw.bb82:                                          ; preds = %if.end20
  %33 = ptrtoint ptr %header.i432 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %header.i432, align 4
  %35 = and i8 %34, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool85.not = icmp eq i8 %35, 0
  br i1 %tobool85.not, label %do.body87, label %if.end104

do.body87:                                        ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_rc6_decode.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_rc6_decode, %if.then99)) #6
          to label %do.body307 [label %if.then99], !srcloc !60

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_rc6_decode.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.6) #6
  br label %do.body307

if.end104:                                        ; preds = %sw.bb82
  %36 = ptrtoint ptr %rc6 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 6, ptr %rc6, align 4
  %37 = tail call i32 @llvm.usub.sat.i32(i32 %ev.sroa.0.0.ph, i32 888) #6
  %38 = ptrtoint ptr %count166 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %count166, align 4
  %39 = ptrtoint ptr %body to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %body, align 4
  %40 = ptrtoint ptr %header.i432 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %header.i432, align 4
  %42 = and i8 %41, 7
  %and.i = zext i8 %42 to i32
  %43 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %and.i, label %if.end104.do.body111_crit_edge [
    i32 0, label %sw.bb108
    i32 6, label %sw.bb1.i
  ]

if.end104.do.body111_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body111

sw.bb1.i:                                         ; preds = %if.end104
  %44 = ptrtoint ptr %toggle.i434 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %toggle.i434, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i, label %sw.bb109, label %sw.bb1.i.do.body111_crit_edge

sw.bb1.i.do.body111_crit_edge:                    ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body111

sw.bb108:                                         ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %wanted_bits167 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 16, ptr %wanted_bits167, align 4
  br label %again.outer.backedge

again.outer.backedge:                             ; preds = %sw.bb165, %sw.bb109, %sw.bb108, %sw.bb63
  %ev.sroa.0.0.ph.be = phi i32 [ %28, %sw.bb63 ], [ %65, %sw.bb165 ], [ %37, %sw.bb109 ], [ %37, %sw.bb108 ]
  br label %again.outer

sw.bb109:                                         ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %wanted_bits167 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 128, ptr %wanted_bits167, align 4
  br label %again.outer.backedge

do.body111:                                       ; preds = %sw.bb1.i.do.body111_crit_edge, %if.end104.do.body111_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_rc6_decode.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_rc6_decode, %if.then123)) #6
          to label %do.body307 [label %if.then123], !srcloc !60

if.then123:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_rc6_decode.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.7) #6
  br label %do.body307

sw.bb128:                                         ; preds = %if.end20
  br i1 %cmp1.i431, label %if.then130, label %if.else149

if.then130:                                       ; preds = %sw.bb128
  %48 = ptrtoint ptr %count166 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %count166, align 4
  %inc132 = add i32 %49, 1
  store i32 %inc132, ptr %count166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %49)
  %cmp133 = icmp ult i32 %49, 32
  br i1 %cmp133, label %if.then135, label %if.then130.if.end147_crit_edge

if.then130.if.end147_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

if.then135:                                       ; preds = %if.then130
  %50 = ptrtoint ptr %body to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %body, align 4
  %shl137 = shl i32 %51, 1
  store i32 %shl137, ptr %body, align 4
  br i1 %tobool16.not, label %if.then135.if.end147_crit_edge, label %if.then143

if.then135.if.end147_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

if.then143:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #8
  %or145 = or i32 %shl137, 1
  %52 = ptrtoint ptr %body to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or145, ptr %body, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.then143, %if.then135.if.end147_crit_edge, %if.then130.if.end147_crit_edge
  %53 = ptrtoint ptr %rc6 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 7, ptr %rc6, align 4
  br label %cleanup

if.else149:                                       ; preds = %sw.bb128
  %54 = ptrtoint ptr %header.i432 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %header.i432, align 4
  %56 = and i8 %55, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %56)
  %cond479 = icmp eq i8 %56, 6
  br i1 %cond479, label %sw.bb1.i436, label %if.else149.do.body307_crit_edge

if.else149.do.body307_crit_edge:                  ; preds = %if.else149
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body307

sw.bb1.i436:                                      ; preds = %if.else149
  %57 = ptrtoint ptr %toggle.i434 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %toggle.i434, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i435 = icmp eq i8 %58, 0
  %or.cond = select i1 %tobool.not.i435, i1 %tobool16.not, i1 false
  %or.cond480 = select i1 %or.cond, i1 %cmp.i440, i1 false
  br i1 %or.cond480, label %if.then161, label %sw.bb1.i436.do.body307_crit_edge

sw.bb1.i436.do.body307_crit_edge:                 ; preds = %sw.bb1.i436
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body307

if.then161:                                       ; preds = %sw.bb1.i436
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %rc6 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 8, ptr %rc6, align 4
  br label %again

sw.bb165:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %count166 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %count166, align 4
  %62 = ptrtoint ptr %wanted_bits167 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %wanted_bits167, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp168 = icmp eq i32 %61, %63
  %.396 = select i1 %cmp168, i32 8, i32 6
  %64 = ptrtoint ptr %rc6 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %.396, ptr %rc6, align 4
  %65 = tail call i32 @llvm.usub.sat.i32(i32 %ev.sroa.0.0.ph, i32 444) #6
  br label %again.outer.backedge

sw.bb175:                                         ; preds = %if.end20
  br i1 %tobool16.not, label %if.end182, label %sw.bb175.do.body307_crit_edge

sw.bb175.do.body307_crit_edge:                    ; preds = %sw.bb175
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body307

if.end182:                                        ; preds = %sw.bb175
  %66 = ptrtoint ptr %header.i432 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %header.i432, align 4
  %68 = and i8 %67, 7
  %and.i442 = zext i8 %68 to i32
  %69 = zext i32 %and.i442 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %and.i442, label %if.end182.do.body286_crit_edge [
    i32 0, label %sw.bb184
    i32 6, label %sw.bb1.i445
  ]

if.end182.do.body286_crit_edge:                   ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body286

sw.bb1.i445:                                      ; preds = %if.end182
  %70 = ptrtoint ptr %toggle.i434 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %toggle.i434, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i444 = icmp eq i8 %71, 0
  br i1 %tobool.not.i444, label %sw.bb207, label %sw.bb1.i445.do.body286_crit_edge

sw.bb1.i445.do.body286_crit_edge:                 ; preds = %sw.bb1.i445
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body286

sw.bb184:                                         ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %body to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %body, align 4
  %74 = ptrtoint ptr %toggle.i434 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %toggle.i434, align 4, !range !61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_rc6_decode.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_rc6_decode, %if.then201)) #6
          to label %sw.epilog303 [label %if.then201], !srcloc !60

if.then201:                                       ; preds = %sw.bb184
  call void @__sanitizer_cov_trace_pc() #8
  %conv203 = zext i8 %75 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_rc6_decode.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %73, i32 noundef %conv203) #6
  br label %sw.epilog303

sw.bb207:                                         ; preds = %sw.bb1.i445
  %76 = ptrtoint ptr %count166 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %count166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %77)
  %cmp209 = icmp ugt i32 %77, 32
  br i1 %cmp209, label %do.body212, label %if.end230

do.body212:                                       ; preds = %sw.bb207
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_rc6_decode.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_rc6_decode, %if.then224)) #6
          to label %do.body307 [label %if.then224], !srcloc !60

if.then224:                                       ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %count166 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %count166, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_rc6_decode.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %79) #6
  br label %do.body307

if.end230:                                        ; preds = %sw.bb207
  %80 = ptrtoint ptr %body to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %body, align 4
  %82 = zext i32 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %77, label %do.body249 [
    i32 20, label %if.end230.do.body267_crit_edge
    i32 24, label %sw.bb234
    i32 32, label %sw.bb235
  ]

if.end230.do.body267_crit_edge:                   ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body267

sw.bb234:                                         ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body267

sw.bb235:                                         ; preds = %if.end230
  %and236 = and i32 %81, -65536
  %83 = zext i32 %and236 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %and236, label %sw.bb235.do.body267_crit_edge [
    i32 -2146500608, label %sw.bb235.sw.bb237_crit_edge
    i32 -2142896128, label %sw.bb235.sw.bb237_crit_edge576
    i32 -2144075776, label %sw.bb235.sw.bb237_crit_edge577
  ]

sw.bb235.sw.bb237_crit_edge577:                   ; preds = %sw.bb235
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb237

sw.bb235.sw.bb237_crit_edge576:                   ; preds = %sw.bb235
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb237

sw.bb235.sw.bb237_crit_edge:                      ; preds = %sw.bb235
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb237

sw.bb235.do.body267_crit_edge:                    ; preds = %sw.bb235
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body267

sw.bb237:                                         ; preds = %sw.bb235.sw.bb237_crit_edge, %sw.bb235.sw.bb237_crit_edge576, %sw.bb235.sw.bb237_crit_edge577
  %and238 = lshr i32 %81, 15
  %84 = trunc i32 %and238 to i8
  %85 = and i8 %84, 1
  %and245 = and i32 %81, -32769
  br label %do.body267

do.body249:                                       ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_rc6_decode.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_rc6_decode, %if.then261)) #6
          to label %do.body307 [label %if.then261], !srcloc !60

if.then261:                                       ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_rc6_decode.__UNIQUE_ID_ddebug233, ptr noundef %dev, ptr noundef nonnull @.str.10) #6
  br label %do.body307

do.body267:                                       ; preds = %sw.bb237, %sw.bb235.do.body267_crit_edge, %sw.bb234, %if.end230.do.body267_crit_edge
  %protocol.0 = phi i32 [ 19, %sw.bb237 ], [ 17, %sw.bb234 ], [ 16, %if.end230.do.body267_crit_edge ], [ 18, %sw.bb235.do.body267_crit_edge ]
  %toggle.0 = phi i8 [ %85, %sw.bb237 ], [ 0, %sw.bb234 ], [ 0, %if.end230.do.body267_crit_edge ], [ 0, %sw.bb235.do.body267_crit_edge ]
  %scancode.0 = phi i32 [ %and245, %sw.bb237 ], [ %81, %sw.bb234 ], [ %81, %if.end230.do.body267_crit_edge ], [ %81, %sw.bb235.do.body267_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_rc6_decode.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_rc6_decode, %if.then279)) #6
          to label %sw.epilog303 [label %if.then279], !srcloc !60

if.then279:                                       ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #8
  %conv281 = zext i8 %toggle.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_rc6_decode.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %protocol.0, i32 noundef %scancode.0, i32 noundef %conv281) #6
  br label %sw.epilog303

do.body286:                                       ; preds = %sw.bb1.i445.do.body286_crit_edge, %if.end182.do.body286_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_rc6_decode.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_rc6_decode, %if.then298)) #6
          to label %do.body307 [label %if.then298], !srcloc !60

if.then298:                                       ; preds = %do.body286
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_rc6_decode.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.7) #6
  br label %do.body307

sw.epilog303:                                     ; preds = %if.then279, %do.body267, %if.then201, %sw.bb184
  %protocol.1 = phi i32 [ %protocol.0, %if.then279 ], [ 15, %if.then201 ], [ 15, %sw.bb184 ], [ %protocol.0, %do.body267 ]
  %toggle.1 = phi i8 [ %toggle.0, %if.then279 ], [ %75, %if.then201 ], [ %75, %sw.bb184 ], [ %toggle.0, %do.body267 ]
  %scancode.1 = phi i32 [ %scancode.0, %if.then279 ], [ %73, %if.then201 ], [ %73, %sw.bb184 ], [ %scancode.0, %do.body267 ]
  %conv304 = zext i32 %scancode.1 to i64
  tail call void @rc_keydown(ptr noundef %dev, i32 noundef %protocol.1, i64 noundef %conv304, i8 noundef zeroext %toggle.1) #6
  %86 = ptrtoint ptr %rc6 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %rc6, align 4
  br label %cleanup

do.body307:                                       ; preds = %if.then298, %do.body286, %if.then261, %do.body249, %if.then224, %do.body212, %sw.bb175.do.body307_crit_edge, %sw.bb1.i436.do.body307_crit_edge, %if.else149.do.body307_crit_edge, %if.then123, %do.body111, %if.then99, %do.body87, %sw.bb70.do.body307_crit_edge, %sw.bb45.do.body307_crit_edge, %sw.bb33.do.body307_crit_edge, %sw.bb.do.body307_crit_edge, %if.end20.do.body307_crit_edge, %if.end2.do.body307_crit_edge
  %ev.sroa.0.1 = phi i32 [ %ev.sroa.0.0.ph, %if.then298 ], [ %ev.sroa.0.0.ph, %if.then224 ], [ %ev.sroa.0.0.ph, %if.then261 ], [ %ev.sroa.0.0.ph, %sw.bb175.do.body307_crit_edge ], [ %ev.sroa.0.0.ph, %if.then99 ], [ %37, %if.then123 ], [ %ev.sroa.0.0.ph, %sw.bb70.do.body307_crit_edge ], [ %ev.sroa.0.0.ph, %sw.bb45.do.body307_crit_edge ], [ %ev.sroa.0.0.ph, %sw.bb33.do.body307_crit_edge ], [ %ev.sroa.0.0.ph, %sw.bb.do.body307_crit_edge ], [ %ev.coerce.fca.0.extract, %if.end2.do.body307_crit_edge ], [ %ev.sroa.0.0.ph, %do.body87 ], [ %37, %do.body111 ], [ %ev.sroa.0.0.ph, %do.body212 ], [ %ev.sroa.0.0.ph, %do.body249 ], [ %ev.sroa.0.0.ph, %do.body286 ], [ %ev.sroa.0.0.ph, %if.end20.do.body307_crit_edge ], [ %ev.sroa.0.0.ph, %sw.bb1.i436.do.body307_crit_edge ], [ %ev.sroa.0.0.ph, %if.else149.do.body307_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_rc6_decode.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_rc6_decode, %if.then319)) #6
          to label %do.end330 [label %if.then319], !srcloc !60

if.then319:                                       ; preds = %do.body307
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %rc6 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rc6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %ev.sroa.19.4.extract.trunc)
  %tobool326.not = icmp sgt i8 %ev.sroa.19.4.extract.trunc, -1
  %cond327 = select i1 %tobool326.not, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_rc6_decode.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %88, i32 noundef %ev.sroa.0.1, ptr noundef nonnull %cond327) #6
  br label %do.end330

do.end330:                                        ; preds = %if.then319, %do.body307
  %89 = ptrtoint ptr %rc6 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %rc6, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end330, %sw.epilog303, %if.end147, %if.end73, %if.end48, %if.end43, %if.end31, %do.end.cleanup_crit_edge, %if.then1, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end330 ], [ 0, %sw.epilog303 ], [ 0, %if.end147 ], [ 0, %if.end73 ], [ 0, %if.end48 ], [ 0, %if.end43 ], [ 0, %if.end31 ], [ 0, %if.then1 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_rc6_encode(i32 noundef %protocol, i32 noundef %scancode, ptr noundef %events, i32 noundef %max) #2 align 64 {
entry:
  %e = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e) #6
  %0 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %events, ptr %e, align 4
  %1 = zext i32 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %protocol, label %entry.cleanup60_crit_edge [
    i32 15, label %if.then
    i32 19, label %entry.sw.epilog_crit_edge
    i32 18, label %entry.sw.epilog_crit_edge89
    i32 17, label %sw.bb22
    i32 16, label %sw.bb23
  ]

entry.sw.epilog_crit_edge89:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup60_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup60

if.then:                                          ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint ptr %events to i32
  %call = call i32 @ir_raw_gen_manchester(ptr noundef nonnull %e, i32 noundef %max, ptr noundef nonnull @ir_rc6_timings, i32 noundef 4, i64 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.cleanup60_crit_edge, label %if.end

if.then.cleanup60_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup60

if.end:                                           ; preds = %if.then
  %2 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %e, align 4
  %sub.ptr.lhs.cast3 = ptrtoint ptr %3 to i32
  %sub.ptr.sub5 = sub i32 %sub.ptr.lhs.cast3, %sub.ptr.lhs.cast
  %sub.ptr.div6 = ashr exact i32 %sub.ptr.sub5, 3
  %sub7 = sub i32 %max, %sub.ptr.div6
  %call8 = call i32 @ir_raw_gen_manchester(ptr noundef nonnull %e, i32 noundef %sub7, ptr noundef getelementptr inbounds ([4 x %struct.ir_raw_timings_manchester], ptr @ir_rc6_timings, i32 0, i32 1), i32 noundef 1, i64 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end.cleanup60_crit_edge, label %if.end11

if.end.cleanup60_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup60

if.end11:                                         ; preds = %if.end
  %4 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %e, align 4
  %sub.ptr.lhs.cast12 = ptrtoint ptr %5 to i32
  %sub.ptr.sub14 = sub i32 %sub.ptr.lhs.cast12, %sub.ptr.lhs.cast
  %sub.ptr.div15 = ashr exact i32 %sub.ptr.sub14, 3
  %sub16 = sub i32 %max, %sub.ptr.div15
  %conv = zext i32 %scancode to i64
  %call17 = call i32 @ir_raw_gen_manchester(ptr noundef nonnull %e, i32 noundef %sub16, ptr noundef getelementptr inbounds ([4 x %struct.ir_raw_timings_manchester], ptr @ir_rc6_timings, i32 0, i32 2), i32 noundef 16, i64 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end11.cleanup60_crit_edge, label %if.end11.if.end55_crit_edge

if.end11.if.end55_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.end11.cleanup60_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup60

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb23, %sw.bb22, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge89
  %bits.0 = phi i32 [ 20, %sw.bb23 ], [ 24, %sw.bb22 ], [ 32, %entry.sw.epilog_crit_edge ], [ 32, %entry.sw.epilog_crit_edge89 ]
  %sub.ptr.lhs.cast24 = ptrtoint ptr %events to i32
  %call29 = call i32 @ir_raw_gen_manchester(ptr noundef nonnull %e, i32 noundef %max, ptr noundef nonnull @ir_rc6_timings, i32 noundef 4, i64 noundef 14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %sw.epilog.cleanup60_crit_edge, label %if.end33

sw.epilog.cleanup60_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup60

if.end33:                                         ; preds = %sw.epilog
  %6 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %e, align 4
  %sub.ptr.lhs.cast34 = ptrtoint ptr %7 to i32
  %sub.ptr.sub36 = sub i32 %sub.ptr.lhs.cast34, %sub.ptr.lhs.cast24
  %sub.ptr.div37 = ashr exact i32 %sub.ptr.sub36, 3
  %sub38 = sub i32 %max, %sub.ptr.div37
  %call39 = call i32 @ir_raw_gen_manchester(ptr noundef nonnull %e, i32 noundef %sub38, ptr noundef getelementptr inbounds ([4 x %struct.ir_raw_timings_manchester], ptr @ir_rc6_timings, i32 0, i32 1), i32 noundef 1, i64 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end33.cleanup60_crit_edge, label %cleanup

if.end33.cleanup60_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup60

cleanup:                                          ; preds = %if.end33
  %8 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %e, align 4
  %sub.ptr.lhs.cast44 = ptrtoint ptr %9 to i32
  %sub.ptr.sub46 = sub i32 %sub.ptr.lhs.cast44, %sub.ptr.lhs.cast24
  %sub.ptr.div47 = ashr exact i32 %sub.ptr.sub46, 3
  %sub48 = sub i32 %max, %sub.ptr.div47
  %conv49 = zext i32 %scancode to i64
  %call50 = call i32 @ir_raw_gen_manchester(ptr noundef nonnull %e, i32 noundef %sub48, ptr noundef getelementptr inbounds ([4 x %struct.ir_raw_timings_manchester], ptr @ir_rc6_timings, i32 0, i32 2), i32 noundef %bits.0, i64 noundef %conv49) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %cleanup.cleanup60_crit_edge, label %cleanup.if.end55_crit_edge

cleanup.if.end55_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

cleanup.cleanup60_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup60

if.end55:                                         ; preds = %cleanup.if.end55_crit_edge, %if.end11.if.end55_crit_edge
  %sub.ptr.rhs.cast57.pre-phi = phi i32 [ %sub.ptr.lhs.cast24, %cleanup.if.end55_crit_edge ], [ %sub.ptr.lhs.cast, %if.end11.if.end55_crit_edge ]
  %10 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %e, align 4
  %sub.ptr.lhs.cast56 = ptrtoint ptr %11 to i32
  %sub.ptr.sub58 = sub i32 %sub.ptr.lhs.cast56, %sub.ptr.rhs.cast57.pre-phi
  %sub.ptr.div59 = ashr exact i32 %sub.ptr.sub58, 3
  br label %cleanup60

cleanup60:                                        ; preds = %if.end55, %cleanup.cleanup60_crit_edge, %if.end33.cleanup60_crit_edge, %sw.epilog.cleanup60_crit_edge, %if.end11.cleanup60_crit_edge, %if.end.cleanup60_crit_edge, %if.then.cleanup60_crit_edge, %entry.cleanup60_crit_edge
  %retval.1 = phi i32 [ %sub.ptr.div59, %if.end55 ], [ %call50, %cleanup.cleanup60_crit_edge ], [ %call, %if.then.cleanup60_crit_edge ], [ %call8, %if.end.cleanup60_crit_edge ], [ %call17, %if.end11.cleanup60_crit_edge ], [ %call39, %if.end33.cleanup60_crit_edge ], [ %call29, %sw.epilog.cleanup60_crit_edge ], [ -22, %entry.cleanup60_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e) #6
  ret i32 %retval.1
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !43, !44, !46, !48, !49, !50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__initcall__kmod_ir_rc6_decoder__237_402_ir_rc6_decode_init6, !1, !"__initcall__kmod_ir_rc6_decoder__237_402_ir_rc6_decode_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/ir-rc6-decoder.c", i32 402, i32 1}
!2 = !{ptr @__exitcall_ir_rc6_decode_exit, !3, !"__exitcall_ir_rc6_decode_exit", i1 false, i1 false}
!3 = !{!"../drivers/media/rc/ir-rc6-decoder.c", i32 403, i32 1}
!4 = !{ptr @__UNIQUE_ID_file238, !5, !"__UNIQUE_ID_file238", i1 false, i1 false}
!5 = !{!"../drivers/media/rc/ir-rc6-decoder.c", i32 405, i32 1}
!6 = !{ptr @__UNIQUE_ID_license239, !5, !"__UNIQUE_ID_license239", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author240, !8, !"__UNIQUE_ID_author240", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/ir-rc6-decoder.c", i32 406, i32 1}
!9 = !{ptr @__UNIQUE_ID_description241, !10, !"__UNIQUE_ID_description241", i1 false, i1 false}
!10 = !{!"../drivers/media/rc/ir-rc6-decoder.c", i32 407, i32 1}
!11 = !{ptr @rc6_handler, !12, !"rc6_handler", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/ir-rc6-decoder.c", i32 379, i32 30}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/ir-rc6-decoder.c", i32 97, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ir_rc6_decode.__UNIQUE_ID_ddebug228, !14, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!19 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/rc/ir-rc6-decoder.c", i32 160, i32 4}
!23 = !{ptr @ir_rc6_decode.__UNIQUE_ID_ddebug229, !22, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/rc/ir-rc6-decoder.c", i32 177, i32 4}
!26 = !{ptr @ir_rc6_decode.__UNIQUE_ID_ddebug230, !25, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/rc/ir-rc6-decoder.c", i32 217, i32 4}
!29 = !{ptr @ir_rc6_decode.__UNIQUE_ID_ddebug231, !28, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/rc/ir-rc6-decoder.c", i32 223, i32 5}
!32 = !{ptr @ir_rc6_decode.__UNIQUE_ID_ddebug232, !31, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/rc/ir-rc6-decoder.c", i32 254, i32 5}
!35 = !{ptr @ir_rc6_decode.__UNIQUE_ID_ddebug233, !34, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/rc/ir-rc6-decoder.c", i32 258, i32 4}
!38 = !{ptr @ir_rc6_decode.__UNIQUE_ID_ddebug234, !37, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!39 = !{ptr @ir_rc6_decode.__UNIQUE_ID_ddebug235, !40, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!40 = !{!"../drivers/media/rc/ir-rc6-decoder.c", i32 262, i32 4}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/rc/ir-rc6-decoder.c", i32 272, i32 2}
!43 = !{ptr @ir_rc6_decode.__UNIQUE_ID_ddebug236, !42, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!44 = !{ptr @ir_rc6_timings, !45, !"ir_rc6_timings", i1 false, i1 false}
!45 = !{!"../drivers/media/rc/ir-rc6-decoder.c", i32 278, i32 47}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/rc/ir-rc6-decoder.c", i32 393, i32 2}
!48 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ir_rc6_decode_init._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @ir_rc6_decode_init._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 2148218218, i64 2148218223, i64 2148218236, i64 2148218280, i64 2148218314, i64 2148218335}
!61 = !{i8 0, i8 2}
