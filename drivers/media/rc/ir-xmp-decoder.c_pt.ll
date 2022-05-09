; ModuleID = '/llk/IR_all_yes/drivers/media/rc/ir-xmp-decoder.c_pt.bc'
source_filename = "../drivers/media/rc/ir-xmp-decoder.c"
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

@xmp_handler = internal global { %struct.ir_raw_handler, [56 x i8] } { %struct.ir_raw_handler { %struct.list_head zeroinitializer, i64 2097152, ptr @ir_xmp_decode, ptr null, i32 0, i32 20000, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_ir_xmp_decoder__240_211_ir_xmp_decode_init6 = internal global ptr @ir_xmp_decode_init, section ".initcall6.init", align 4
@__exitcall_ir_xmp_decode_exit = internal global ptr @ir_xmp_decode_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file241 = internal constant [52 x i8] c"ir_xmp_decoder.file=drivers/media/rc/ir-xmp-decoder\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [27 x i8] c"ir_xmp_decoder.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [50 x i8] c"ir_xmp_decoder.author=Marcel Mol <marcel@mesa.nl>\00", section ".modinfo", align 1
@__UNIQUE_ID_author244 = internal constant [59 x i8] c"ir_xmp_decoder.author=MESA Consulting (http://www.mesa.nl)\00", section ".modinfo", align 1
@__UNIQUE_ID_description245 = internal constant [51 x i8] c"ir_xmp_decoder.description=XMP IR protocol decoder\00", section ".modinfo", align 1
@ir_xmp_decode.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ir_xmp_decoder\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ir_xmp_decode\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/rc/ir-xmp-decoder.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"XMP decode started at state %d %d (%uus %s)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pulse\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"space\00", [26 x i8] zeroinitializer }, align 32
@ir_xmp_decode.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"received TRAILER period at index %d: %u\0A\00", [55 x i8] zeroinitializer }, align 32
@ir_xmp_decode.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"divider to small %d.\0A\00", [42 x i8] zeroinitializer }, align 32
@ir_xmp_decode.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"checksum errors sum1=0x%X sum2=0x%X\0A\00", [59 x i8] zeroinitializer }, align 32
@ir_xmp_decode.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"subaddress nibbles mismatch 0x%02X != 0x%02X\0A\00", [50 x i8] zeroinitializer }, align 32
@ir_xmp_decode.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Warning: OEM nibbles 0x%02X. Expected 0x44\0A\00", [52 x i8] zeroinitializer }, align 32
@ir_xmp_decode.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 0, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"XMP scancode 0x%06x\0A\00", [43 x i8] zeroinitializer }, align 32
@ir_xmp_decode.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.12, i8 0, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Repeat last key\0A\00", [47 x i8] zeroinitializer }, align 32
@ir_xmp_decode.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"received half frame pulse at index %d. Probably a final frame key-up event: %u\0A\00", [48 x i8] zeroinitializer }, align 32
@ir_xmp_decode.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.14, i8 0, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"received half frame pulse at index %d: %u\0A\00", [53 x i8] zeroinitializer }, align 32
@ir_xmp_decode.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.15, i8 0, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"too many pulses (%d) ignoring: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@ir_xmp_decode.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.16, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"XMP decode failed at count %d state %d (%uus %s)\0A\00", [46 x i8] zeroinitializer }, align 32
@ir_xmp_decode_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016IR XMP protocol handler initialized\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ir_xmp_decode_init\00", [45 x i8] zeroinitializer }, align 32
@ir_xmp_decode_init._entry_ptr = internal global ptr @ir_xmp_decode_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@___asan_gen_.20 = private unnamed_addr constant [12 x i8] c"xmp_handler\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 192, i32 30 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 45, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 81, i32 5 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 95, i32 5 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 110, i32 5 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 124, i32 5 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 130, i32 5 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 135, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 141, i32 5 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 150, i32 5 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 161, i32 5 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 170, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 186, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [37 x i8] c"../drivers/media/rc/ir-xmp-decoder.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 202, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_ir_xmp_decode_exit, ptr @__initcall__kmod_ir_xmp_decoder__240_211_ir_xmp_decode_init6, ptr @ir_xmp_decode_exit, ptr @ir_xmp_decode_init._entry, ptr @ir_xmp_decode_init._entry_ptr, ptr @xmp_handler, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xmp_handler to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ir_xmp_decode_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ir_xmp_decode_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ir_raw_handler_unregister(ptr noundef nonnull @xmp_handler) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_handler_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_xmp_decode_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ir_raw_handler_register(ptr noundef nonnull @xmp_handler) #4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ir_xmp_decode(ptr noundef %dev, [2 x i32] %ev.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ev.coerce.fca.0.extract = extractvalue [2 x i32] %ev.coerce, 0
  %ev.coerce.fca.1.extract = extractvalue [2 x i32] %ev.coerce, 1
  %raw = getelementptr inbounds %struct.rc_dev, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %raw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %raw, align 4
  %xmp = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 19
  %2 = and i32 %ev.coerce.fca.1.extract, 5242880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  %4 = and i32 %ev.coerce.fca.1.extract, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then.cleanup416_crit_edge, label %if.then.cleanup416.sink.split_crit_edge

if.then.cleanup416.sink.split_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup416.sink.split

if.then.cleanup416_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup416

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_xmp_decode.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_xmp_decode, %if.then7)) #4
          to label %do.end [label %if.then7], !srcloc !70

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %xmp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %xmp, align 4
  %count = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 19, i32 1
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 4
  %9 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool13.not = icmp eq i32 %9, 0
  %cond = select i1 %tobool13.not, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_xmp_decode.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %6, i32 noundef %8, i32 noundef %ev.coerce.fca.0.extract, ptr noundef nonnull %cond) #4
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %10 = ptrtoint ptr %xmp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xmp, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %do.end.do.body390_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb28
    i32 2, label %sw.bb40
  ]

do.end.do.body390_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body390

sw.bb:                                            ; preds = %do.end
  %13 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %sw.bb.do.body390_crit_edge, label %if.end22

sw.bb.do.body390_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body390

if.end22:                                         ; preds = %sw.bb
  %14 = add i32 %ev.coerce.fca.0.extract, -143
  call void @__sanitizer_cov_trace_const_cmp4(i32 135, i32 %14)
  %15 = icmp ult i32 %14, 135
  br i1 %15, label %if.then24, label %if.end22.cleanup416_crit_edge

if.end22.cleanup416_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup416

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %count25 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 19, i32 1
  %16 = ptrtoint ptr %count25 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %count25, align 4
  br label %cleanup416.sink.split

sw.bb28:                                          ; preds = %do.end
  %17 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool33.not = icmp eq i32 %17, 0
  br i1 %tobool33.not, label %sw.bb28.do.body390_crit_edge, label %if.end35

sw.bb28.do.body390_crit_edge:                     ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body390

if.end35:                                         ; preds = %sw.bb28
  %18 = add i32 %ev.coerce.fca.0.extract, -143
  call void @__sanitizer_cov_trace_const_cmp4(i32 135, i32 %18)
  %19 = icmp ult i32 %18, 135
  br i1 %19, label %if.end35.cleanup416.sink.split_crit_edge, label %if.end35.cleanup416_crit_edge

if.end35.cleanup416_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup416

if.end35.cleanup416.sink.split_crit_edge:         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup416.sink.split

sw.bb40:                                          ; preds = %do.end
  %20 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool45.not = icmp eq i32 %20, 0
  br i1 %tobool45.not, label %if.end47, label %sw.bb40.do.body390_crit_edge

sw.bb40.do.body390_crit_edge:                     ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body390

if.end47:                                         ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_const_cmp4(i32 19240, i32 %ev.coerce.fca.0.extract)
  %cmp.i = icmp ugt i32 %ev.coerce.fca.0.extract, 19240
  br i1 %cmp.i, label %if.then49, label %if.else302

if.then49:                                        ; preds = %if.end47
  %count50 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 19, i32 1
  %21 = ptrtoint ptr %count50 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %22)
  %cmp.not = icmp eq i32 %22, 16
  br i1 %cmp.not, label %if.end71, label %do.body52

do.body52:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_xmp_decode.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_xmp_decode, %if.then64)) #4
          to label %cleanup416.sink.split [label %if.then64], !srcloc !70

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %count50 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count50, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_xmp_decode.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %24, i32 noundef %ev.coerce.fca.0.extract) #4
  br label %cleanup416.sink.split

if.end71:                                         ; preds = %if.then49
  %arrayidx = getelementptr %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 19, i32 2, i32 3
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %sub = add i32 %26, -760
  %div = udiv i32 %sub, 15
  %sub72 = add nsw i32 %div, -2000
  call void @__sanitizer_cov_trace_const_cmp4(i32 30750, i32 %sub)
  %cmp73 = icmp ult i32 %sub, 30750
  br i1 %cmp73, label %do.body75, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end71
  %durations = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 19, i32 2
  %27 = ptrtoint ptr %durations to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %durations, align 4
  %sub96 = add i32 %28, -760
  %div97 = udiv i32 %sub96, %sub72
  store i32 %div97, ptr %durations, align 4
  %arrayidx95.1 = getelementptr %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 19, i32 2, i32 1
  %29 = ptrtoint ptr %arrayidx95.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx95.1, align 4
  %sub96.1 = add i32 %30, -760
  %div97.1 = udiv i32 %sub96.1, %sub72
  store i32 %div97.1, ptr %arrayidx95.1, align 4
  %arrayidx95.2 = getelementptr %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 19, i32 2, i32 2
  %31 = ptrtoint ptr %arrayidx95.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx95.2, align 4
  %sub96.2 = add i32 %32, -760
  %div97.2 = udiv i32 %sub96.2, %sub72
  store i32 %div97.2, ptr %arrayidx95.2, align 4
  %arrayidx95.3 = getelementptr %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 19, i32 2, i32 3
  %33 = ptrtoint ptr %arrayidx95.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx95.3, align 4
  %sub96.3 = add i32 %34, -760
  %div97.3 = udiv i32 %sub96.3, %sub72
  store i32 %div97.3, ptr %arrayidx95.3, align 4
  %arrayidx95.4 = getelementptr %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 19, i32 2, i32 4
  %35 = ptrtoint ptr %arrayidx95.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx95.4, align 4
  %sub96.4 = add i32 %36, -760
  %div97.4 = udiv i32 %sub96.4, %sub72
  store i32 %div97.4, ptr %arrayidx95.4, align 4
  %arrayidx95.5 = getelementptr %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 19, i32 2, i32 5
  %37 = ptrtoint ptr %arrayidx95.5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx95.5, align 4
  %sub96.5 = add i32 %38, -760
  %div97.5 = udiv i32 %sub96.5, %sub72
  store i32 %div97.5, ptr %arrayidx95.5, align 4
  %arrayidx95.6 = getelementptr %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 19, i32 2, i32 6
  %39 = ptrtoint ptr %arrayidx95.6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx95.6, align 4
  %sub96.6 = add i32 %40, -760
  %div97.6 = udiv i32 %sub96.6, %sub72
  store i32 %div97.6, ptr %arrayidx95.6, align 4
  %arrayidx95.7 = getelementptr %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 19, i32 2, i32 7
  %41 = ptrtoint ptr %arrayidx95.7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx95.7, align 4
  %sub96.7 = add i32 %42, -760
  %div97.7 = udiv i32 %sub96.7, %sub72
  store i32 %div97.7, ptr %arrayidx95.7, align 4
  %arrayidx95.8 = getelementptr %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 19, i32 2, i32 8
  %43 = ptrtoint ptr %arrayidx95.8 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx95.8, align 4
  %sub96.8 = add i32 %44, -760
  %div97.8 = udiv i32 %sub96.8, %sub72
  store i32 %div97.8, ptr %arrayidx95.8, align 4
  %arrayidx95.9 = getelementptr %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 19, i32 2, i32 9
  %45 = ptrtoint ptr %arrayidx95.9 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx95.9, align 4
  %sub96.9 = add i32 %46, -760
  %div97.9 = udiv i32 %sub96.9, %sub72
  store i32 %div97.9, ptr %arrayidx95.9, align 4
  %arrayidx95.10 = getelementptr %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 19, i32 2, i32 10
  %47 = ptrtoint ptr %arrayidx95.10 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx95.10, align 4
  %sub96.10 = add i32 %48, -760
  %div97.10 = udiv i32 %sub96.10, %sub72
  store i32 %div97.10, ptr %arrayidx95.10, align 4
  %arrayidx95.11 = getelementptr %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 19, i32 2, i32 11
  %49 = ptrtoint ptr %arrayidx95.11 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx95.11, align 4
  %sub96.11 = add i32 %50, -760
  %div97.11 = udiv i32 %sub96.11, %sub72
  store i32 %div97.11, ptr %arrayidx95.11, align 4
  %arrayidx95.12 = getelementptr %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 19, i32 2, i32 12
  %51 = ptrtoint ptr %arrayidx95.12 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx95.12, align 4
  %sub96.12 = add i32 %52, -760
  %div97.12 = udiv i32 %sub96.12, %sub72
  store i32 %div97.12, ptr %arrayidx95.12, align 4
  %arrayidx95.13 = getelementptr %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 19, i32 2, i32 13
  %53 = ptrtoint ptr %arrayidx95.13 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx95.13, align 4
  %sub96.13 = add i32 %54, -760
  %div97.13 = udiv i32 %sub96.13, %sub72
  store i32 %div97.13, ptr %arrayidx95.13, align 4
  %arrayidx95.14 = getelementptr %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 19, i32 2, i32 14
  %55 = ptrtoint ptr %arrayidx95.14 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx95.14, align 4
  %sub96.14 = add i32 %56, -760
  %div97.14 = udiv i32 %sub96.14, %sub72
  store i32 %div97.14, ptr %arrayidx95.14, align 4
  %arrayidx95.15 = getelementptr %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 19, i32 2, i32 15
  %57 = ptrtoint ptr %arrayidx95.15 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx95.15, align 4
  %sub96.15 = add i32 %58, -760
  %div97.15 = udiv i32 %sub96.15, %sub72
  store i32 %div97.15, ptr %arrayidx95.15, align 4
  %add = add i32 %div97, 15
  %add101 = add i32 %add, %div97.1
  %add103 = add i32 %add101, %div97.2
  %add105 = add i32 %add103, %div97.3
  %add107 = add i32 %add105, %div97.4
  %add109 = add i32 %add107, %div97.5
  %add111 = add i32 %add109, %div97.6
  %add113 = add i32 %add111, %div97.7
  %conv = and i32 %add113, 15
  %add115 = add i32 %div97.8, 15
  %add117 = add i32 %add115, %div97.9
  %add119 = add i32 %add117, %div97.10
  %add121 = add i32 %add119, %div97.11
  %add123 = add i32 %add121, %div97.12
  %add125 = add i32 %add123, %div97.13
  %add127 = add i32 %add125, %div97.14
  %add129 = add i32 %add127, %div97.15
  %59 = trunc i32 %add129 to i8
  %conv131 = and i8 %59, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %conv)
  %cmp133.not = icmp eq i32 %conv, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %conv131)
  %cmp136.not = icmp eq i8 %conv131, 15
  %or.cond = select i1 %cmp133.not, i1 %cmp136.not, i1 false
  br i1 %or.cond, label %if.end159, label %do.body139

do.body75:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_xmp_decode.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_xmp_decode, %if.then87)) #4
          to label %cleanup416.sink.split [label %if.then87], !srcloc !70

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_xmp_decode.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %sub72) #4
  br label %cleanup416.sink.split

do.body139:                                       ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_xmp_decode.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_xmp_decode, %if.then151)) #4
          to label %cleanup416.sink.split [label %if.then151], !srcloc !70

if.then151:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #6
  %conv154 = zext i8 %conv131 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_xmp_decode.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv, i32 noundef %conv154) #4
  br label %cleanup416.sink.split

if.end159:                                        ; preds = %for.body.preheader
  %shl = shl i32 %div97, 4
  %or = or i32 %div97.2, %shl
  %shl164 = shl i32 %div97.8, 4
  %or166 = or i32 %div97.11, %shl164
  %shl186 = shl i32 %div97.14, 4
  %or188 = or i32 %shl186, %div97.15
  %conv190 = and i32 %or, 255
  %conv191 = and i32 %or166, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv190, i32 %conv191)
  %cmp192.not = icmp eq i32 %conv190, %conv191
  br i1 %cmp192.not, label %if.end215, label %do.body195

do.body195:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_xmp_decode.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_xmp_decode, %if.then207)) #4
          to label %cleanup416.sink.split [label %if.then207], !srcloc !70

if.then207:                                       ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_xmp_decode.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %conv190, i32 noundef %conv191) #4
  br label %cleanup416.sink.split

if.end215:                                        ; preds = %if.end159
  %shl169 = shl i32 %div97.4, 4
  %or171 = or i32 %shl169, %div97.5
  %conv216 = and i32 %or171, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %conv216)
  %cmp217.not = icmp eq i32 %conv216, 68
  br i1 %cmp217.not, label %if.end215.if.end238_crit_edge, label %do.body220

if.end215.if.end238_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end238

do.body220:                                       ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_xmp_decode.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_xmp_decode, %if.then232)) #4
          to label %if.end238 [label %if.then232], !srcloc !70

if.then232:                                       ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_xmp_decode.__UNIQUE_ID_ddebug233, ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %conv216) #4
  br label %if.end238

if.end238:                                        ; preds = %if.then232, %do.body220, %if.end215.if.end238_crit_edge
  %60 = shl i32 %div97.6, 28
  %61 = shl i32 %div97.7, 24
  %shl240 = or i32 %60, %61
  %shl242 = shl nuw nsw i32 %conv190, 16
  %or243 = or i32 %shl240, %shl242
  %62 = shl i32 %div97.12, 12
  %63 = shl i32 %div97.13, 8
  %conv244 = or i32 %63, %62
  %shl245 = and i32 %conv244, 65280
  %or246 = or i32 %shl245, %or243
  %conv247 = and i32 %or188, 255
  %or248 = or i32 %or246, %conv247
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_xmp_decode.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_xmp_decode, %if.then261)) #4
          to label %do.end265 [label %if.then261], !srcloc !70

if.then261:                                       ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_xmp_decode.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %or248) #4
  br label %do.end265

do.end265:                                        ; preds = %if.then261, %if.end238
  %conv266 = and i32 %div97.10, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv266)
  %cmp267 = icmp eq i32 %conv266, 0
  br i1 %cmp267, label %if.then269, label %if.else

if.then269:                                       ; preds = %do.end265
  call void @__sanitizer_cov_trace_pc() #6
  %conv270 = zext i32 %or248 to i64
  tail call void @rc_keydown(ptr noundef %dev, i32 noundef 21, i64 noundef %conv270, i8 noundef zeroext 0) #4
  br label %cleanup416.sink.split

if.else:                                          ; preds = %do.end265
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rc_repeat(ptr noundef %dev) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_xmp_decode.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_xmp_decode, %if.then283)) #4
          to label %cleanup416.sink.split [label %if.then283], !srcloc !70

if.then283:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_xmp_decode.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.12) #4
  br label %cleanup416.sink.split

if.else302:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 13040, i32 %ev.coerce.fca.0.extract)
  %cmp.i551 = icmp ugt i32 %ev.coerce.fca.0.extract, 13040
  br i1 %cmp.i551, label %if.then304, label %if.else354

if.then304:                                       ; preds = %if.else302
  %count305 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 19, i32 1
  %64 = ptrtoint ptr %count305 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %count305, align 4
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %65, label %do.body333 [
    i32 16, label %do.body309
    i32 8, label %if.then304.cleanup416.sink.split_crit_edge
  ]

if.then304.cleanup416.sink.split_crit_edge:       ; preds = %if.then304
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup416.sink.split

do.body309:                                       ; preds = %if.then304
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_xmp_decode.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_xmp_decode, %if.then321)) #4
          to label %do.end326 [label %if.then321], !srcloc !70

if.then321:                                       ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #6
  %67 = ptrtoint ptr %count305 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %count305, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_xmp_decode.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %68, i32 noundef %ev.coerce.fca.0.extract) #4
  br label %do.end326

do.end326:                                        ; preds = %if.then321, %do.body309
  %69 = ptrtoint ptr %count305 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 8, ptr %count305, align 4
  br label %cleanup416.sink.split

do.body333:                                       ; preds = %if.then304
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_xmp_decode.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_xmp_decode, %if.then345)) #4
          to label %cleanup416.sink.split [label %if.then345], !srcloc !70

if.then345:                                       ; preds = %do.body333
  call void @__sanitizer_cov_trace_pc() #6
  %70 = ptrtoint ptr %count305 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %count305, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_xmp_decode.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %71, i32 noundef %ev.coerce.fca.0.extract) #4
  br label %cleanup416.sink.split

if.else354:                                       ; preds = %if.else302
  call void @__sanitizer_cov_trace_const_cmp4(i32 624, i32 %ev.coerce.fca.0.extract)
  %cmp.i552 = icmp ugt i32 %ev.coerce.fca.0.extract, 624
  br i1 %cmp.i552, label %if.then356, label %if.else354.do.body390_crit_edge

if.else354.do.body390_crit_edge:                  ; preds = %if.else354
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body390

if.then356:                                       ; preds = %if.else354
  %count357 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 19, i32 1
  %72 = ptrtoint ptr %count357 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %count357, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %73)
  %cmp358 = icmp eq i32 %73, 16
  br i1 %cmp358, label %do.body361, label %if.end380

do.body361:                                       ; preds = %if.then356
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_xmp_decode.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_xmp_decode, %if.then373)) #4
          to label %cleanup416.sink.split [label %if.then373], !srcloc !70

if.then373:                                       ; preds = %do.body361
  call void @__sanitizer_cov_trace_pc() #6
  %74 = ptrtoint ptr %count357 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %count357, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_xmp_decode.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %75, i32 noundef %ev.coerce.fca.0.extract) #4
  br label %cleanup416.sink.split

if.end380:                                        ; preds = %if.then356
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx383 = getelementptr %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 19, i32 2, i32 %73
  %76 = ptrtoint ptr %arrayidx383 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %ev.coerce.fca.0.extract, ptr %arrayidx383, align 4
  %77 = ptrtoint ptr %count357 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %count357, align 4
  %inc385 = add i32 %78, 1
  store i32 %inc385, ptr %count357, align 4
  br label %cleanup416.sink.split

do.body390:                                       ; preds = %if.else354.do.body390_crit_edge, %sw.bb40.do.body390_crit_edge, %sw.bb28.do.body390_crit_edge, %sw.bb.do.body390_crit_edge, %do.end.do.body390_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ir_xmp_decode.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ir_xmp_decode, %if.then402)) #4
          to label %cleanup416.sink.split [label %if.then402], !srcloc !70

if.then402:                                       ; preds = %do.body390
  call void @__sanitizer_cov_trace_pc() #6
  %count404 = getelementptr inbounds %struct.ir_raw_event_ctrl, ptr %1, i32 0, i32 19, i32 1
  %79 = ptrtoint ptr %count404 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %count404, align 4
  %81 = ptrtoint ptr %xmp to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %xmp, align 4
  %83 = and i32 %ev.coerce.fca.1.extract, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool410.not = icmp eq i32 %83, 0
  %cond411 = select i1 %tobool410.not, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ir_xmp_decode.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %80, i32 noundef %82, i32 noundef %ev.coerce.fca.0.extract, ptr noundef nonnull %cond411) #4
  br label %cleanup416.sink.split

cleanup416.sink.split:                            ; preds = %if.then402, %do.body390, %if.end380, %if.then373, %do.body361, %if.then345, %do.body333, %do.end326, %if.then304.cleanup416.sink.split_crit_edge, %if.then283, %if.else, %if.then269, %if.then207, %do.body195, %if.then151, %do.body139, %if.then87, %do.body75, %if.then64, %do.body52, %if.end35.cleanup416.sink.split_crit_edge, %if.then24, %if.then.cleanup416.sink.split_crit_edge
  %.sink = phi i32 [ 2, %if.then24 ], [ 1, %if.end380 ], [ 0, %if.then.cleanup416.sink.split_crit_edge ], [ 2, %if.end35.cleanup416.sink.split_crit_edge ], [ 0, %do.body52 ], [ 0, %if.then64 ], [ 0, %do.body75 ], [ 0, %if.then87 ], [ 0, %do.body139 ], [ 0, %if.then151 ], [ 0, %do.body195 ], [ 0, %if.then207 ], [ 0, %if.else ], [ 0, %if.then283 ], [ 0, %if.then269 ], [ 1, %do.body333 ], [ 1, %if.then304.cleanup416.sink.split_crit_edge ], [ 1, %if.then345 ], [ 1, %do.end326 ], [ 0, %do.body361 ], [ 0, %if.then373 ], [ 0, %do.body390 ], [ 0, %if.then402 ]
  %retval.1.ph = phi i32 [ 0, %if.then24 ], [ 0, %if.end380 ], [ 0, %if.then.cleanup416.sink.split_crit_edge ], [ 0, %if.end35.cleanup416.sink.split_crit_edge ], [ -22, %do.body52 ], [ -22, %if.then64 ], [ -22, %do.body75 ], [ -22, %if.then87 ], [ -22, %do.body139 ], [ -22, %if.then151 ], [ -22, %do.body195 ], [ -22, %if.then207 ], [ 0, %if.else ], [ 0, %if.then283 ], [ 0, %if.then269 ], [ 0, %do.body333 ], [ 0, %if.then304.cleanup416.sink.split_crit_edge ], [ 0, %if.then345 ], [ 0, %do.end326 ], [ -22, %do.body361 ], [ -22, %if.then373 ], [ -22, %do.body390 ], [ -22, %if.then402 ]
  %84 = ptrtoint ptr %xmp to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %.sink, ptr %xmp, align 4
  br label %cleanup416

cleanup416:                                       ; preds = %cleanup416.sink.split, %if.end35.cleanup416_crit_edge, %if.end22.cleanup416_crit_edge, %if.then.cleanup416_crit_edge
  %retval.1 = phi i32 [ 0, %if.then.cleanup416_crit_edge ], [ 0, %if.end22.cleanup416_crit_edge ], [ 0, %if.end35.cleanup416_crit_edge ], [ %retval.1.ph, %cleanup416.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_repeat(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_handler_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__initcall__kmod_ir_xmp_decoder__240_211_ir_xmp_decode_init6, !1, !"__initcall__kmod_ir_xmp_decoder__240_211_ir_xmp_decode_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/ir-xmp-decoder.c", i32 211, i32 1}
!2 = !{ptr @__exitcall_ir_xmp_decode_exit, !3, !"__exitcall_ir_xmp_decode_exit", i1 false, i1 false}
!3 = !{!"../drivers/media/rc/ir-xmp-decoder.c", i32 212, i32 1}
!4 = !{ptr @__UNIQUE_ID_file241, !5, !"__UNIQUE_ID_file241", i1 false, i1 false}
!5 = !{!"../drivers/media/rc/ir-xmp-decoder.c", i32 214, i32 1}
!6 = !{ptr @__UNIQUE_ID_license242, !5, !"__UNIQUE_ID_license242", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author243, !8, !"__UNIQUE_ID_author243", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/ir-xmp-decoder.c", i32 215, i32 1}
!9 = !{ptr @__UNIQUE_ID_author244, !10, !"__UNIQUE_ID_author244", i1 false, i1 false}
!10 = !{!"../drivers/media/rc/ir-xmp-decoder.c", i32 216, i32 1}
!11 = !{ptr @__UNIQUE_ID_description245, !12, !"__UNIQUE_ID_description245", i1 false, i1 false}
!12 = !{!"../drivers/media/rc/ir-xmp-decoder.c", i32 217, i32 1}
!13 = !{ptr @xmp_handler, !14, !"xmp_handler", i1 false, i1 false}
!14 = !{!"../drivers/media/rc/ir-xmp-decoder.c", i32 192, i32 30}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/rc/ir-xmp-decoder.c", i32 45, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ir_xmp_decode.__UNIQUE_ID_ddebug228, !16, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!21 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/rc/ir-xmp-decoder.c", i32 81, i32 5}
!25 = !{ptr @ir_xmp_decode.__UNIQUE_ID_ddebug229, !24, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/rc/ir-xmp-decoder.c", i32 95, i32 5}
!28 = !{ptr @ir_xmp_decode.__UNIQUE_ID_ddebug230, !27, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/rc/ir-xmp-decoder.c", i32 110, i32 5}
!31 = !{ptr @ir_xmp_decode.__UNIQUE_ID_ddebug231, !30, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/rc/ir-xmp-decoder.c", i32 124, i32 5}
!34 = !{ptr @ir_xmp_decode.__UNIQUE_ID_ddebug232, !33, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/rc/ir-xmp-decoder.c", i32 130, i32 5}
!37 = !{ptr @ir_xmp_decode.__UNIQUE_ID_ddebug233, !36, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/rc/ir-xmp-decoder.c", i32 135, i32 4}
!40 = !{ptr @ir_xmp_decode.__UNIQUE_ID_ddebug234, !39, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/rc/ir-xmp-decoder.c", i32 141, i32 5}
!43 = !{ptr @ir_xmp_decode.__UNIQUE_ID_ddebug235, !42, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/rc/ir-xmp-decoder.c", i32 150, i32 5}
!46 = !{ptr @ir_xmp_decode.__UNIQUE_ID_ddebug236, !45, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/rc/ir-xmp-decoder.c", i32 161, i32 5}
!49 = !{ptr @ir_xmp_decode.__UNIQUE_ID_ddebug237, !48, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/rc/ir-xmp-decoder.c", i32 170, i32 5}
!52 = !{ptr @ir_xmp_decode.__UNIQUE_ID_ddebug238, !51, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/rc/ir-xmp-decoder.c", i32 186, i32 2}
!55 = !{ptr @ir_xmp_decode.__UNIQUE_ID_ddebug239, !54, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/rc/ir-xmp-decoder.c", i32 202, i32 2}
!58 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ir_xmp_decode_init._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @ir_xmp_decode_init._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i64 2148960315, i64 2148960320, i64 2148960333, i64 2148960377, i64 2148960411, i64 2148960432}
