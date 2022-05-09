; ModuleID = '/llk/IR_all_yes/drivers/media/rc/ir-mce_kbd-decoder.c_pt.bc'
source_filename = "../drivers/media/rc/ir-mce_kbd-decoder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ir_raw_handler = type { %struct.list_head, i64, ptr, ptr, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ir_raw_timings_manchester = type { i32, i32, i32, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lirc_scancode = type { i64, i16, i16, i32, i64 }
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

@mce_kbd_handler = internal global { %struct.ir_raw_handler, [56 x i8] } { %struct.ir_raw_handler { %struct.list_head zeroinitializer, i64 24576, ptr @ir_mce_kbd_decode, ptr @ir_mce_kbd_encode, i32 36000, i32 1165, ptr @ir_mce_kbd_register, ptr @ir_mce_kbd_unregister }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_ir_mce_kbd_decoder__237_446_ir_mce_kbd_decode_init6 = internal global ptr @ir_mce_kbd_decode_init, section ".initcall6.init", align 4
@__exitcall_ir_mce_kbd_decode_exit = internal global ptr @ir_mce_kbd_decode_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file238 = internal constant [60 x i8] c"ir_mce_kbd_decoder.file=drivers/media/rc/ir-mce_kbd-decoder\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [31 x i8] c"ir_mce_kbd_decoder.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [58 x i8] c"ir_mce_kbd_decoder.author=Jarod Wilson <jarod@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [70 x i8] c"ir_mce_kbd_decoder.description=MCE Keyboard/mouse IR protocol decoder\00", section ".modinfo", align 1
@ir_mce_kbd_decode.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ir_mce_kbd_decoder\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ir_mce_kbd_decode\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/rc/ir-mce_kbd-decoder.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"started at state %i (%uus %s)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pulse\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"space\00", [26 x i8] zeroinitializer }, align 32
@ir_mce_kbd_decode.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"not keyboard or mouse data\0A\00", [36 x i8] zeroinitializer }, align 32
@ir_mce_kbd_decode.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"keyboard data 0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ir_mce_kbd_decode.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mouse data 0x%06x\0A\00", [45 x i8] zeroinitializer }, align 32
@ir_mce_kbd_decode.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ir_mce_kbd_decode.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed at state %i (%uus %s)\0A\00", [34 x i8] zeroinitializer }, align 32
@ir_mce_kbd_process_keyboard_data.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ir_mce_kbd_process_keyboard_data\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"keyboard: keydata2 = 0x%02x, keydata1 = 0x%02x, shiftmask = 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@kbd_keycodes = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\00\00\00\1E0. \12!\22#\17$%&21\18\19\10\13\1F\14\16/\11-\15,\02\03\04\05\06\07\08\09\0A\0B\1C\01\0E\0F9\0C\0D\1A\1B++'()345:;<=>?@ABCDWXcFwnfhokmjilgEb7JN`OPQKLMGHIRSV\7Ftu\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\86\8A\82\84\80\81\83\89\85\87\88qsr\00\00\00y\00Y]|\\^_\00\00\00z{Z[U\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1D*8}a6d~\A4\A6\A5\A3\A1srq\96\9E\9F\80\88\B1\B2\B0\8E\98\AD\8C\00\00\00\00", [64 x i8] zeroinitializer }, align 32
@ir_mce_kbd_process_mouse_data.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ir_mce_kbd_process_mouse_data\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mouse: x = %d, y = %d, btns = %s%s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"L\00", [30 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"R\00", [30 x i8] zeroinitializer }, align 32
@ir_mce_kbd_timings = internal constant { %struct.ir_raw_timings_manchester, [44 x i8] } { %struct.ir_raw_timings_manchester { i32 2664, i32 0, i32 333, i8 -128, i32 3330 }, [44 x i8] zeroinitializer }, align 32
@ir_mce_kbd_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&mce_kbd->rx_timeout)\00", [41 x i8] zeroinitializer }, align 32
@ir_mce_kbd_register.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&mce_kbd->keylock\00", [46 x i8] zeroinitializer }, align 32
@mce_kbd_rx_timeout.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mce_kbd_rx_timeout\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"timer callback clearing all keys\0A\00", [62 x i8] zeroinitializer }, align 32
@ir_mce_kbd_decode_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016IR MCE Keyboard/mouse protocol handler initialized\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ir_mce_kbd_decode_init\00", [41 x i8] zeroinitializer }, align 32
@ir_mce_kbd_decode_init._entry_ptr = internal global ptr @ir_mce_kbd_decode_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 29, i64 32]
@___asan_gen_.26 = private unnamed_addr constant [16 x i8] c"mce_kbd_handler\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 423, i32 30 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 233, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 283, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 319, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 336, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 355, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 156, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [13 x i8] c"kbd_keycodes\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 55, i32 22 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 199, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [19 x i8] c"ir_mce_kbd_timings\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 380, i32 47 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 365, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 366, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 117, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private constant [41 x i8] c"../drivers/media/rc/ir-mce_kbd-decoder.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 437, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_ir_mce_kbd_decode_exit, ptr @__initcall__kmod_ir_mce_kbd_decoder__237_446_ir_mce_kbd_decode_init6, ptr @ir_mce_kbd_decode_exit, ptr @ir_mce_kbd_decode_init._entry, ptr @ir_mce_kbd_decode_init._entry_ptr, ptr @mce_kbd_handler, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @kbd_keycodes, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @ir_mce_kbd_timings, ptr @ir_mce_kbd_register.__key, ptr @.str.17, ptr @ir_mce_kbd_register.__key.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mce_kbd_handler to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbd_keycodes to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_mce_kbd_timings to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_mce_kbd_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_mce_kbd_register.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_mce_kbd_decode_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ir_mce_kbd_decode_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ir_raw_handler_unregister(ptr noundef nonnull @mce_kbd_handler) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_handler_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_mce_kbd_decode_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ir_raw_handler_register(ptr noundef nonnull @mce_kbd_handler) #6
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_mce_kbd_decode(ptr noundef %dev, [2 x i32] %ev.coerce) #2 align 64 {
entry:
  %lsc = alloca %struct.lirc_scancode, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ev.coerce.fca.1.extract = extractvalue [2 x i32] %ev.coerce, 1
  %ev.sroa.15.4.extract.shift = lshr i32 %ev.coerce.fca.1.extract, 16
  %ev.sroa.15.4.extract.trunc = trunc i32 %ev.sroa.15.4.extract.shift to i8
  %raw = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %raw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw, align 4
  %mce_kbd = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %lsc) #6
  %2 = call ptr @memset(ptr %lsc, i32 0, i32 24)
  %3 = and i32 %ev.coerce.fca.1.extract, 5242880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %5 = and i8 %ev.sroa.15.4.extract.trunc, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then1

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 18, i32 2
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %state, align 4
  br label %cleanup

if.end2:                                          ; preds = %entry
  %ev.coerce.fca.0.extract = extractvalue [2 x i32] %ev.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 167, i32 %ev.coerce.fca.0.extract)
  %cmp.i289 = icmp ugt i32 %ev.coerce.fca.0.extract, 167
  br i1 %cmp.i289, label %again.preheader, label %if.end2.do.body192_crit_edge

if.end2.do.body192_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body192

again.preheader:                                  ; preds = %if.end2
  %state12 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 18, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %ev.sroa.15.4.extract.trunc)
  %tobool16.not = icmp sgt i8 %ev.sroa.15.4.extract.trunc, -1
  %cond = select i1 %tobool16.not, ptr @.str.5, ptr @.str.4
  %count99 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 18, i32 5
  %wanted_bits100 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 18, i32 6
  %header.i = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 18, i32 3
  %body = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 18, i32 4
  br label %again

again:                                            ; preds = %again.backedge, %again.preheader
  %ev.sroa.0.0 = phi i32 [ %ev.coerce.fca.0.extract, %again.preheader ], [ %ev.sroa.0.0.be, %again.backedge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_mce_kbd_decode.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_mce_kbd_decode, %if.then10)) #6
          to label %do.end [label %if.then10], !srcloc !74

if.then10:                                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %state12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state12, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_mce_kbd_decode.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %8, i32 noundef %ev.sroa.0.0, ptr noundef nonnull %cond) #6
  br label %do.end

do.end:                                           ; preds = %if.then10, %again
  call void @__sanitizer_cov_trace_const_cmp4(i32 167, i32 %ev.sroa.0.0)
  %cmp.i290 = icmp ugt i32 %ev.sroa.0.0, 167
  br i1 %cmp.i290, label %if.end20, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %do.end
  %9 = ptrtoint ptr %state12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state12, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.end20.do.body192_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb33
    i32 2, label %sw.bb51
    i32 3, label %sw.bb80
    i32 4, label %sw.bb98
    i32 5, label %sw.bb107
  ]

if.end20.do.body192_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body192

sw.bb:                                            ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ev.sroa.15.4.extract.trunc)
  %tobool26.not = icmp slt i8 %ev.sroa.15.4.extract.trunc, 0
  %12 = add i32 %ev.sroa.0.0, -2332
  call void @__sanitizer_cov_trace_const_cmp4(i32 665, i32 %12)
  %13 = icmp ult i32 %12, 665
  %or.cond = select i1 %tobool26.not, i1 %13, i1 false
  br i1 %or.cond, label %if.end31, label %sw.bb.do.body192_crit_edge

sw.bb.do.body192_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body192

if.end31:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %state12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %state12, align 4
  %15 = ptrtoint ptr %count99 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %count99, align 4
  %16 = ptrtoint ptr %header.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %header.i, align 4
  br label %cleanup

sw.bb33:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 833, i32 %ev.sroa.0.0)
  %cmp.i291 = icmp ugt i32 %ev.sroa.0.0, 833
  br i1 %cmp.i291, label %sw.bb33.do.body192_crit_edge, label %if.end36

sw.bb33.do.body192_crit_edge:                     ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body192

if.end36:                                         ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %header.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %header.i, align 4
  %spec.select = call i8 @llvm.fshl.i8(i8 %18, i8 %ev.sroa.15.4.extract.trunc, i8 1)
  %19 = ptrtoint ptr %header.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %spec.select, ptr %header.i, align 4
  %20 = ptrtoint ptr %count99 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count99, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %count99, align 4
  %22 = ptrtoint ptr %state12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %state12, align 4
  br label %cleanup

sw.bb51:                                          ; preds = %if.end20
  %23 = tail call i32 @llvm.usub.sat.i32(i32 %ev.sroa.0.0, i32 333) #6
  %24 = ptrtoint ptr %count99 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %25)
  %cmp.not = icmp eq i32 %25, 5
  br i1 %cmp.not, label %if.end56, label %if.then54

if.then54:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %state12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %state12, align 4
  br label %again.backedge

again.backedge:                                   ; preds = %sw.bb98, %sw.epilog, %if.then54
  %ev.sroa.0.0.be = phi i32 [ %46, %sw.bb98 ], [ %23, %sw.epilog ], [ %23, %if.then54 ]
  br label %again

if.end56:                                         ; preds = %sw.bb51
  %27 = ptrtoint ptr %header.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %header.i, align 4
  %29 = and i8 %28, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %switch.selectcmp.i = icmp eq i8 %29, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %29)
  %switch.selectcmp2.i = icmp eq i8 %29, 4
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 0, i32 %switch.select.i
  %30 = zext i32 %switch.select3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %switch.select3.i, label %do.body61 [
    i32 0, label %if.end56.sw.epilog_crit_edge
    i32 1, label %sw.bb59
  ]

if.end56.sw.epilog_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_mce_kbd_decode.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_mce_kbd_decode, %do.body192.sink.split)) #6
          to label %do.body192 [label %do.body192.sink.split], !srcloc !74

sw.epilog:                                        ; preds = %sw.bb59, %if.end56.sw.epilog_crit_edge
  %storemerge = phi i32 [ 29, %sw.bb59 ], [ 32, %if.end56.sw.epilog_crit_edge ]
  %31 = ptrtoint ptr %wanted_bits100 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %storemerge, ptr %wanted_bits100, align 4
  %32 = ptrtoint ptr %count99 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %count99, align 4
  %33 = ptrtoint ptr %body to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %body, align 4
  %34 = ptrtoint ptr %state12 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 3, ptr %state12, align 4
  br label %again.backedge

sw.bb80:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 833, i32 %ev.sroa.0.0)
  %cmp.i292 = icmp ugt i32 %ev.sroa.0.0, 833
  br i1 %cmp.i292, label %sw.bb80.do.body192_crit_edge, label %if.end83

sw.bb80.do.body192_crit_edge:                     ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body192

if.end83:                                         ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %body to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %body, align 4
  %shl85 = shl i32 %36, 1
  %ev.sroa.15.4.extract.trunc.lobit = lshr i32 %ev.coerce.fca.1.extract, 23
  %37 = and i32 %ev.sroa.15.4.extract.trunc.lobit, 1
  %spec.select310 = or i32 %shl85, %37
  store i32 %spec.select310, ptr %body, align 4
  %38 = ptrtoint ptr %count99 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count99, align 4
  %inc96 = add i32 %39, 1
  store i32 %inc96, ptr %count99, align 4
  %40 = ptrtoint ptr %state12 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 4, ptr %state12, align 4
  br label %cleanup

sw.bb98:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %count99 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count99, align 4
  %43 = ptrtoint ptr %wanted_bits100 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %wanted_bits100, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp101 = icmp eq i32 %42, %44
  %. = select i1 %cmp101, i32 5, i32 3
  %45 = ptrtoint ptr %state12 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %., ptr %state12, align 4
  %46 = tail call i32 @llvm.usub.sat.i32(i32 %ev.sroa.0.0, i32 333) #6
  br label %again.backedge

sw.bb107:                                         ; preds = %if.end20
  br i1 %tobool16.not, label %if.end114, label %sw.bb107.do.body192_crit_edge

sw.bb107.do.body192_crit_edge:                    ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body192

if.end114:                                        ; preds = %sw.bb107
  %47 = ptrtoint ptr %wanted_bits100 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %wanted_bits100, align 4
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %48, label %do.body169 [
    i32 32, label %sw.bb116
    i32 29, label %sw.bb147
  ]

sw.bb116:                                         ; preds = %if.end114
  %50 = ptrtoint ptr %body to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %body, align 4
  %and = and i32 %51, 16777215
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_mce_kbd_decode.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_mce_kbd_decode, %if.then130)) #6
          to label %do.end135 [label %if.then130], !srcloc !74

if.then130:                                       ; preds = %sw.bb116
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %body to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %body, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_mce_kbd_decode.__UNIQUE_ID_ddebug233, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %53) #6
  br label %do.end135

do.end135:                                        ; preds = %if.then130, %sw.bb116
  tail call void @_raw_spin_lock(ptr noundef %mce_kbd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool136.not = icmp eq i32 %and, 0
  br i1 %tobool136.not, label %if.else142, label %if.else.i

if.else.i:                                        ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #8
  %timeout = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 34
  %54 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %timeout, align 4
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %55) #6
  %add = add i32 %call3.i, 10
  %rx_timeout = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 18, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %add140 = add i32 %add, %56
  %call141 = tail call i32 @mod_timer(ptr noundef %rx_timeout, i32 noundef %add140) #6
  br label %if.end145

if.else142:                                       ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #8
  %rx_timeout143 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 18, i32 1
  %call144 = tail call i32 @del_timer(ptr noundef %rx_timeout143) #6
  br label %if.end145

if.end145:                                        ; preds = %if.else142, %if.else.i
  tail call fastcc void @ir_mce_kbd_process_keyboard_data(ptr noundef %dev, i32 noundef %and)
  tail call void @_raw_spin_unlock(ptr noundef %mce_kbd) #6
  br label %sw.epilog186

sw.bb147:                                         ; preds = %if.end114
  %57 = ptrtoint ptr %body to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %body, align 4
  %and149 = and i32 %58, 2097151
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_mce_kbd_decode.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_mce_kbd_decode, %if.then162)) #6
          to label %do.end166 [label %if.then162], !srcloc !74

if.then162:                                       ; preds = %sw.bb147
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_mce_kbd_decode.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %and149) #6
  br label %do.end166

do.end166:                                        ; preds = %if.then162, %sw.bb147
  tail call fastcc void @ir_mce_kbd_process_mouse_data(ptr noundef %dev, i32 noundef %and149)
  br label %sw.epilog186

do.body169:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_mce_kbd_decode.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_mce_kbd_decode, %do.body192.sink.split)) #6
          to label %do.body192 [label %do.body192.sink.split], !srcloc !74

sw.epilog186:                                     ; preds = %do.end166, %if.end145
  %.sink = phi i16 [ 14, %do.end166 ], [ 13, %if.end145 ]
  %scancode.0 = phi i32 [ %and149, %do.end166 ], [ %and, %if.end145 ]
  %rc_proto167 = getelementptr inbounds %struct.lirc_scancode, ptr %lsc, i32 0, i32 2
  %59 = ptrtoint ptr %rc_proto167 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %.sink, ptr %rc_proto167, align 2
  %conv187 = zext i32 %scancode.0 to i64
  %scancode188 = getelementptr inbounds %struct.lirc_scancode, ptr %lsc, i32 0, i32 4
  %60 = ptrtoint ptr %scancode188 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv187, ptr %scancode188, align 8
  call void @lirc_scancode_event(ptr noundef %dev, ptr noundef nonnull %lsc) #6
  %61 = ptrtoint ptr %state12 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %state12, align 4
  %input_dev = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 12
  %62 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %input_dev, align 8
  call void @input_event(ptr noundef %63, i32 noundef 4, i32 noundef 4, i32 noundef %scancode.0) #6
  %64 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %input_dev, align 8
  call void @input_event(ptr noundef %65, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %cleanup

do.body192.sink.split:                            ; preds = %do.body169, %do.body61
  %ir_mce_kbd_decode.__UNIQUE_ID_ddebug232.sink = phi ptr [ @ir_mce_kbd_decode.__UNIQUE_ID_ddebug232, %do.body61 ], [ @ir_mce_kbd_decode.__UNIQUE_ID_ddebug235, %do.body169 ]
  %ev.sroa.0.1.ph = phi i32 [ %23, %do.body61 ], [ %ev.sroa.0.0, %do.body169 ]
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull %ir_mce_kbd_decode.__UNIQUE_ID_ddebug232.sink, ptr noundef %dev, ptr noundef nonnull @.str.6) #6
  br label %do.body192

do.body192:                                       ; preds = %do.body192.sink.split, %do.body169, %sw.bb107.do.body192_crit_edge, %sw.bb80.do.body192_crit_edge, %do.body61, %sw.bb33.do.body192_crit_edge, %sw.bb.do.body192_crit_edge, %if.end20.do.body192_crit_edge, %if.end2.do.body192_crit_edge
  %ev.sroa.0.1 = phi i32 [ %ev.sroa.0.0, %sw.bb107.do.body192_crit_edge ], [ %ev.sroa.0.0, %sw.bb80.do.body192_crit_edge ], [ %ev.sroa.0.0, %sw.bb33.do.body192_crit_edge ], [ %ev.sroa.0.0, %sw.bb.do.body192_crit_edge ], [ %ev.coerce.fca.0.extract, %if.end2.do.body192_crit_edge ], [ %23, %do.body61 ], [ %ev.sroa.0.0, %do.body169 ], [ %ev.sroa.0.1.ph, %do.body192.sink.split ], [ %ev.sroa.0.0, %if.end20.do.body192_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_mce_kbd_decode.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_mce_kbd_decode, %if.then204)) #6
          to label %do.end215 [label %if.then204], !srcloc !74

if.then204:                                       ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #8
  %state206 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 18, i32 2
  %66 = ptrtoint ptr %state206 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %state206, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %ev.sroa.15.4.extract.trunc)
  %tobool211.not = icmp sgt i8 %ev.sroa.15.4.extract.trunc, -1
  %cond212 = select i1 %tobool211.not, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_mce_kbd_decode.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %67, i32 noundef %ev.sroa.0.1, ptr noundef nonnull %cond212) #6
  br label %do.end215

do.end215:                                        ; preds = %if.then204, %do.body192
  %state216 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 18, i32 2
  %68 = ptrtoint ptr %state216 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %state216, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end215, %sw.epilog186, %if.end83, %if.end36, %if.end31, %do.end.cleanup_crit_edge, %if.then1, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end215 ], [ 0, %sw.epilog186 ], [ 0, %if.end83 ], [ 0, %if.end36 ], [ 0, %if.end31 ], [ 0, %if.then1 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %lsc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_mce_kbd_encode(i32 noundef %protocol, i32 noundef %scancode, ptr noundef %events, i32 noundef %max) #2 align 64 {
entry:
  %e = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e) #6
  %0 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %events, ptr %e, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %protocol)
  %cmp = icmp eq i32 %protocol, 13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i32 %scancode to i64
  %or = or i64 %conv, 17179869184
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = or i32 %scancode, 536870912
  %or2 = zext i32 %1 to i64
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %len.0 = phi i32 [ 37, %if.then ], [ 34, %if.else ]
  %raw.0 = phi i64 [ %or, %if.then ], [ %or2, %if.else ]
  %call = call i32 @ir_raw_gen_manchester(ptr noundef nonnull %e, i32 noundef %max, ptr noundef nonnull @ir_mce_kbd_timings, i32 noundef %len.0, i64 noundef %raw.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %e, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %events to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.div, %if.end6 ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_mce_kbd_register(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %raw = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %raw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw, align 4
  %mce_kbd1 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 18
  %rx_timeout = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 18, i32 1
  tail call void @init_timer_key(ptr noundef %rx_timeout, ptr noundef nonnull @mce_kbd_rx_timeout, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @ir_mce_kbd_register.__key) #6
  tail call void @__raw_spin_lock_init(ptr noundef %mce_kbd1, ptr noundef nonnull @.str.19, ptr noundef nonnull @ir_mce_kbd_register.__key.18, i16 noundef signext 3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_mce_kbd_unregister(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %raw = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %raw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw, align 4
  %rx_timeout = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 18, i32 1
  %call = tail call i32 @del_timer_sync(ptr noundef %rx_timeout) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ir_mce_kbd_process_keyboard_data(ptr noundef %dev, i32 noundef %scancode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %scancode, 8
  %conv = trunc i32 %shr to i8
  %shr1 = lshr i32 %scancode, 16
  %conv3 = trunc i32 %shr1 to i8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_mce_kbd_process_keyboard_data.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_mce_kbd_process_keyboard_data, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !74

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv9 = and i32 %shr1, 255
  %conv10 = and i32 %shr, 255
  %conv11 = and i32 %scancode, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_mce_kbd_process_keyboard_data.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %conv9, i32 noundef %conv10, i32 noundef %conv11) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %input_dev = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input_dev, align 8
  %2 = and i32 %scancode, 1
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 29, i32 noundef %2) #6
  %3 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %input_dev, align 8
  %5 = lshr i32 %scancode, 1
  %6 = and i32 %5, 1
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 42, i32 noundef %6) #6
  %7 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %input_dev, align 8
  %9 = lshr i32 %scancode, 2
  %10 = and i32 %9, 1
  tail call void @input_event(ptr noundef %8, i32 noundef 1, i32 noundef 56, i32 noundef %10) #6
  %11 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %input_dev, align 8
  %13 = lshr i32 %scancode, 3
  %14 = and i32 %13, 1
  tail call void @input_event(ptr noundef %12, i32 noundef 1, i32 noundef 125, i32 noundef %14) #6
  %15 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %input_dev, align 8
  %17 = lshr i32 %scancode, 4
  %18 = and i32 %17, 1
  tail call void @input_event(ptr noundef %16, i32 noundef 1, i32 noundef 97, i32 noundef %18) #6
  %19 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %input_dev, align 8
  %21 = lshr i32 %scancode, 5
  %22 = and i32 %21, 1
  tail call void @input_event(ptr noundef %20, i32 noundef 1, i32 noundef 54, i32 noundef %22) #6
  %23 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %input_dev, align 8
  %conv13 = lshr i32 %scancode, 6
  %25 = and i32 %conv13, 1
  tail call void @input_event(ptr noundef %24, i32 noundef 1, i32 noundef 100, i32 noundef %25) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool19.not = icmp eq i8 %conv, 0
  br i1 %tobool19.not, label %do.end.if.end24_crit_edge, label %if.then20

do.end.if.end24_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then20:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %input_dev, align 8
  %idxprom = and i32 %shr, 255
  %arrayidx22 = getelementptr [256 x i8], ptr @kbd_keycodes, i32 0, i32 %idxprom
  %28 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %29 to i32
  tail call void @input_event(ptr noundef %27, i32 noundef 1, i32 noundef %conv23, i32 noundef 1) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %do.end.if.end24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv3)
  %tobool25.not = icmp eq i8 %conv3, 0
  br i1 %tobool25.not, label %if.end31, label %if.end31.thread

if.end31.thread:                                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %input_dev, align 8
  %idxprom28 = and i32 %shr1, 255
  %arrayidx29 = getelementptr [256 x i8], ptr @kbd_keycodes, i32 0, i32 %idxprom28
  %32 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %33 to i32
  tail call void @input_event(ptr noundef %31, i32 noundef 1, i32 noundef %conv30, i32 noundef 1) #6
  br label %if.end45

if.end31:                                         ; preds = %if.end24
  %34 = or i32 %shr, %shr1
  %35 = trunc i32 %34 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %.not = icmp eq i8 %35, 0
  br i1 %.not, label %if.end31.for.body38_crit_edge, label %if.end31.if.end45_crit_edge

if.end31.if.end45_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.end31.for.body38_crit_edge:                    ; preds = %if.end31
  br label %for.body38

for.body38:                                       ; preds = %for.body38.for.body38_crit_edge, %if.end31.for.body38_crit_edge
  %i.170 = phi i32 [ %inc43, %for.body38.for.body38_crit_edge ], [ 0, %if.end31.for.body38_crit_edge ]
  %36 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %input_dev, align 8
  %arrayidx40 = getelementptr [256 x i8], ptr @kbd_keycodes, i32 0, i32 %i.170
  %38 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %39 to i32
  tail call void @input_event(ptr noundef %37, i32 noundef 1, i32 noundef %conv41, i32 noundef 0) #6
  %inc43 = add nuw nsw i32 %i.170, 1
  %exitcond.not = icmp eq i32 %inc43, 224
  br i1 %exitcond.not, label %for.body38.if.end45_crit_edge, label %for.body38.for.body38_crit_edge

for.body38.for.body38_crit_edge:                  ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body38

for.body38.if.end45_crit_edge:                    ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.end45:                                         ; preds = %for.body38.if.end45_crit_edge, %if.end31.if.end45_crit_edge, %if.end31.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ir_mce_kbd_process_mouse_data(ptr noundef %dev, i32 noundef %scancode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %scancode, 7
  %shr1 = lshr i32 %scancode, 14
  %conv3 = and i32 %shr1, 127
  %and4 = and i32 %scancode, 64
  %and5 = and i32 %scancode, 32
  %0 = and i32 %scancode, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool10.not = icmp eq i32 %0, 0
  %conv = and i32 %shr, 127
  %masksel = select i1 %tobool10.not, i32 0, i32 -128
  %x.0 = or i32 %masksel, %conv
  %1 = and i32 %scancode, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool16.not = icmp eq i32 %1, 0
  %masksel63 = select i1 %tobool16.not, i32 0, i32 -128
  %y.0 = or i32 %masksel63, %conv3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_mce_kbd_process_mouse_data.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_mce_kbd_process_mouse_data, %if.then30)) #6
          to label %do.end [label %if.then30], !srcloc !74

if.then30:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  %cond = select i1 %tobool6.not, ptr @.str.15, ptr @.str.14
  %cond36 = select i1 %tobool.not, ptr @.str.15, ptr @.str.16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_mce_kbd_process_mouse_data.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %x.0, i32 noundef %y.0, ptr noundef nonnull %cond, ptr noundef nonnull %cond36) #6
  br label %do.end

do.end:                                           ; preds = %if.then30, %entry
  %input_dev = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 12
  %2 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %3, i32 noundef 2, i32 noundef 0, i32 noundef %x.0) #6
  %4 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %5, i32 noundef 2, i32 noundef 1, i32 noundef %y.0) #6
  %6 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input_dev, align 8
  %and5.lobit = lshr exact i32 %and5, 5
  tail call void @input_event(ptr noundef %7, i32 noundef 1, i32 noundef 272, i32 noundef %and5.lobit) #6
  %8 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input_dev, align 8
  %and4.lobit = lshr exact i32 %and4, 6
  tail call void @input_event(ptr noundef %9, i32 noundef 1, i32 noundef 273, i32 noundef %and4.lobit) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lirc_scancode_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_gen_manchester(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mce_kbd_rx_timeout(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mce_kbd_rx_timeout.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mce_kbd_rx_timeout, %if.then)) #6
          to label %do.body6 [label %if.then], !srcloc !74

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr i8, ptr %t, i32 -284
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mce_kbd_rx_timeout.__UNIQUE_ID_ddebug228, ptr noundef %1, ptr noundef nonnull @.str.21) #6
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %mce_kbd = getelementptr i8, ptr %t, i32 -44
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mce_kbd) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %3 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %expires, align 4
  %sub = sub i32 %2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp15 = icmp sgt i32 %sub, -1
  br i1 %cmp15, label %for.cond.preheader, label %do.body6.if.end35_crit_edge

do.body6.if.end35_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

for.cond.preheader:                               ; preds = %do.body6
  %dev20 = getelementptr i8, ptr %t, i32 -284
  %5 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev20, align 8
  %input_dev = getelementptr inbounds %struct.rc_dev, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %8, i32 noundef 1, i32 noundef 29, i32 noundef 0) #6
  %9 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev20, align 8
  %input_dev.1 = getelementptr inbounds %struct.rc_dev, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %input_dev.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %input_dev.1, align 8
  tail call void @input_event(ptr noundef %12, i32 noundef 1, i32 noundef 42, i32 noundef 0) #6
  %13 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev20, align 8
  %input_dev.2 = getelementptr inbounds %struct.rc_dev, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %input_dev.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %input_dev.2, align 8
  tail call void @input_event(ptr noundef %16, i32 noundef 1, i32 noundef 56, i32 noundef 0) #6
  %17 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev20, align 8
  %input_dev.3 = getelementptr inbounds %struct.rc_dev, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %input_dev.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %input_dev.3, align 8
  tail call void @input_event(ptr noundef %20, i32 noundef 1, i32 noundef 125, i32 noundef 0) #6
  %21 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev20, align 8
  %input_dev.4 = getelementptr inbounds %struct.rc_dev, ptr %22, i32 0, i32 12
  %23 = ptrtoint ptr %input_dev.4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %input_dev.4, align 8
  tail call void @input_event(ptr noundef %24, i32 noundef 1, i32 noundef 97, i32 noundef 0) #6
  %25 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev20, align 8
  %input_dev.5 = getelementptr inbounds %struct.rc_dev, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %input_dev.5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %input_dev.5, align 8
  tail call void @input_event(ptr noundef %28, i32 noundef 1, i32 noundef 54, i32 noundef 0) #6
  %29 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev20, align 8
  %input_dev.6 = getelementptr inbounds %struct.rc_dev, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %input_dev.6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %input_dev.6, align 8
  tail call void @input_event(ptr noundef %32, i32 noundef 1, i32 noundef 100, i32 noundef 0) #6
  br label %for.body25

for.body25:                                       ; preds = %for.body25.for.body25_crit_edge, %for.cond.preheader
  %i.151 = phi i32 [ 0, %for.cond.preheader ], [ %inc31, %for.body25.for.body25_crit_edge ]
  %33 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev20, align 8
  %input_dev27 = getelementptr inbounds %struct.rc_dev, ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %input_dev27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %input_dev27, align 8
  %arrayidx28 = getelementptr [256 x i8], ptr @kbd_keycodes, i32 0, i32 %i.151
  %37 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %38 to i32
  tail call void @input_event(ptr noundef %36, i32 noundef 1, i32 noundef %conv29, i32 noundef 0) #6
  %inc31 = add nuw nsw i32 %i.151, 1
  %exitcond.not = icmp eq i32 %inc31, 224
  br i1 %exitcond.not, label %for.end32, label %for.body25.for.body25_crit_edge

for.body25.for.body25_crit_edge:                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body25

for.end32:                                        ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev20, align 8
  %input_dev34 = getelementptr inbounds %struct.rc_dev, ptr %40, i32 0, i32 12
  %41 = ptrtoint ptr %input_dev34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %input_dev34, align 8
  tail call void @input_event(ptr noundef %42, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %if.end35

if.end35:                                         ; preds = %for.end32, %do.body6.if.end35_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mce_kbd, i32 noundef %call9) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !26, !27, !29, !30, !32, !34, !35, !37, !38, !39, !41, !43, !44, !45, !46, !47, !48, !50, !52, !53, !55, !56, !58, !59, !60, !62, !63, !64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_ir_mce_kbd_decoder__237_446_ir_mce_kbd_decode_init6, !1, !"__initcall__kmod_ir_mce_kbd_decoder__237_446_ir_mce_kbd_decode_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/ir-mce_kbd-decoder.c", i32 446, i32 1}
!2 = !{ptr @__exitcall_ir_mce_kbd_decode_exit, !3, !"__exitcall_ir_mce_kbd_decode_exit", i1 false, i1 false}
!3 = !{!"../drivers/media/rc/ir-mce_kbd-decoder.c", i32 447, i32 1}
!4 = !{ptr @__UNIQUE_ID_file238, !5, !"__UNIQUE_ID_file238", i1 false, i1 false}
!5 = !{!"../drivers/media/rc/ir-mce_kbd-decoder.c", i32 449, i32 1}
!6 = !{ptr @__UNIQUE_ID_license239, !5, !"__UNIQUE_ID_license239", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author240, !8, !"__UNIQUE_ID_author240", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/ir-mce_kbd-decoder.c", i32 450, i32 1}
!9 = !{ptr @__UNIQUE_ID_description241, !10, !"__UNIQUE_ID_description241", i1 false, i1 false}
!10 = !{!"../drivers/media/rc/ir-mce_kbd-decoder.c", i32 451, i32 1}
!11 = !{ptr @mce_kbd_handler, !12, !"mce_kbd_handler", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/ir-mce_kbd-decoder.c", i32 423, i32 30}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/ir-mce_kbd-decoder.c", i32 233, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ir_mce_kbd_decode.__UNIQUE_ID_ddebug231, !14, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!19 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/rc/ir-mce_kbd-decoder.c", i32 283, i32 4}
!23 = !{ptr @ir_mce_kbd_decode.__UNIQUE_ID_ddebug232, !22, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/rc/ir-mce_kbd-decoder.c", i32 319, i32 4}
!26 = !{ptr @ir_mce_kbd_decode.__UNIQUE_ID_ddebug233, !25, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/rc/ir-mce_kbd-decoder.c", i32 336, i32 4}
!29 = !{ptr @ir_mce_kbd_decode.__UNIQUE_ID_ddebug234, !28, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!30 = !{ptr @ir_mce_kbd_decode.__UNIQUE_ID_ddebug235, !31, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!31 = !{!"../drivers/media/rc/ir-mce_kbd-decoder.c", i32 342, i32 4}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/rc/ir-mce_kbd-decoder.c", i32 355, i32 2}
!34 = !{ptr @ir_mce_kbd_decode.__UNIQUE_ID_ddebug236, !33, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/rc/ir-mce_kbd-decoder.c", i32 156, i32 2}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ir_mce_kbd_process_keyboard_data.__UNIQUE_ID_ddebug229, !36, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!39 = !{ptr @kbd_keycodes, !40, !"kbd_keycodes", i1 false, i1 false}
!40 = !{!"../drivers/media/rc/ir-mce_kbd-decoder.c", i32 55, i32 22}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/rc/ir-mce_kbd-decoder.c", i32 199, i32 2}
!43 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ir_mce_kbd_process_mouse_data.__UNIQUE_ID_ddebug230, !42, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!45 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ir_mce_kbd_timings, !49, !"ir_mce_kbd_timings", i1 false, i1 false}
!49 = !{!"../drivers/media/rc/ir-mce_kbd-decoder.c", i32 380, i32 47}
!50 = !{ptr @ir_mce_kbd_register.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/media/rc/ir-mce_kbd-decoder.c", i32 365, i32 2}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ir_mce_kbd_register.__key.18, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/media/rc/ir-mce_kbd-decoder.c", i32 366, i32 2}
!55 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/rc/ir-mce_kbd-decoder.c", i32 117, i32 2}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mce_kbd_rx_timeout.__UNIQUE_ID_ddebug228, !57, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/rc/ir-mce_kbd-decoder.c", i32 437, i32 2}
!62 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ir_mce_kbd_decode_init._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @ir_mce_kbd_decode_init._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2148965066, i64 2148965071, i64 2148965084, i64 2148965128, i64 2148965162, i64 2148965183}
