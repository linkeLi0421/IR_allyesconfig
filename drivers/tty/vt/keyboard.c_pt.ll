; ModuleID = '/llk/IR_all_yes/drivers/tty/vt/keyboard.c_pt.bc'
source_filename = "../drivers/tty/vt/keyboard.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+register_keyboard_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_register_keyboard_notifier\09\09\09\09"
module asm "\09.long\09__crc_register_keyboard_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_keyboard_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22register_keyboard_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_register_keyboard_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unregister_keyboard_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_keyboard_notifier\09\09\09\09"
module asm "\09.long\09__crc_unregister_keyboard_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_keyboard_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_keyboard_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_keyboard_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kd_mksound\22, \22a\22\09"
module asm "\09.weak\09__crc_kd_mksound\09\09\09\09"
module asm "\09.long\09__crc_kd_mksound\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kd_mksound:\09\09\09\09\09"
module asm "\09.asciz \09\22kd_mksound\22\09\09\09\09\09"
module asm "__kstrtabns_kd_mksound:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vt_get_leds\22, \22a\22\09"
module asm "\09.weak\09__crc_vt_get_leds\09\09\09\09"
module asm "\09.long\09__crc_vt_get_leds\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vt_get_leds:\09\09\09\09\09"
module asm "\09.asciz \09\22vt_get_leds\22\09\09\09\09\09"
module asm "__kstrtabns_vt_get_leds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.vt_spawn_console = type { %struct.spinlock, ptr, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.input_handler = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.kbd_struct = type { i8, i8, i8, i8, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.75, i32 }
%struct.atomic_t = type { i32 }
%union.anon.75 = type { ptr }
%struct.kbdiacruc = type { i32, i32, i32 }
%struct.input_device_id = type { i32, i16, i16, i16, i16, [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }
%struct.vc = type { ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kbd_led_trigger = type { %struct.led_trigger, i32 }
%struct.led_trigger = type { ptr, ptr, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.input_handle = type { ptr, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.kbd_repeat = type { i32, i32 }
%struct.kbdiacr = type { i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.kbdiacrs = type { i32, [256 x %struct.kbdiacr] }
%struct.kbdiacrsuc = type { i32, [256 x %struct.kbdiacruc] }
%struct.getset_keycode_data = type { %struct.input_keymap_entry, i32 }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }
%struct.kbkeycode = type { i32, i32 }
%struct.kbentry = type { i8, i8, i16 }
%struct.kbsentry = type { i8, [512 x i8] }
%struct.keyboard_notifier_param = type { ptr, i32, i32, i32, i32 }
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, ptr, i32, %struct.wait_queue_head, i16, i8, i32, [8 x i32], [48 x i8], ptr, i32, i32, i32, i16, ptr, ptr, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.35, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.35 = type { ptr }
%struct.llist_head = type { ptr }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.console_font = type { i32, i32, i32, ptr }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.36, %struct.anon.37, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.36 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.37 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vt_spawn_con.lock\00", [46 x i8] zeroinitializer }, align 32
@vt_spawn_con = dso_local global { %struct.vt_spawn_console, [44 x i8] } { %struct.vt_spawn_console { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, ptr null, i32 0 }, [44 x i8] zeroinitializer }, align 32
@keyboard_notifier_list = internal global { %struct.atomic_notifier_head, [48 x i8] } { %struct.atomic_notifier_head { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, ptr null }, [48 x i8] zeroinitializer }, align 32
@__kstrtab_register_keyboard_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_keyboard_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_register_keyboard_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_keyboard_notifier to i32), ptr @__kstrtab_register_keyboard_notifier, ptr @__kstrtabns_register_keyboard_notifier }, section "___ksymtab_gpl+register_keyboard_notifier", align 4
@__kstrtab_unregister_keyboard_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_keyboard_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_keyboard_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_keyboard_notifier to i32), ptr @__kstrtab_unregister_keyboard_notifier, ptr @__kstrtabns_unregister_keyboard_notifier }, section "___ksymtab_gpl+unregister_keyboard_notifier", align 4
@kd_mksound_timer = internal global { %struct.timer_list, [48 x i8] } { %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @kd_nosound, i32 0, %struct.lockdep_map { ptr @.str.4, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [48 x i8] zeroinitializer }, align 32
@kbd_handler = internal global { %struct.input_handler, [32 x i8] } { %struct.input_handler { ptr null, ptr @kbd_event, ptr null, ptr null, ptr @kbd_match, ptr @kbd_connect, ptr @kbd_disconnect, ptr @kbd_start, i8 0, i32 0, ptr @.str.7, ptr @kbd_ids, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_kd_mksound = external dso_local constant [0 x i8], align 1
@__kstrtabns_kd_mksound = external dso_local constant [0 x i8], align 1
@__ksymtab_kd_mksound = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kd_mksound to i32), ptr @__kstrtab_kd_mksound, ptr @__kstrtabns_kd_mksound }, section "___ksymtab+kd_mksound", align 4
@vt_switch = internal global { i1, [31 x i8] } zeroinitializer, align 32
@kbd_event_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_brl_timeout234 = internal constant [95 x i8] c"keyboard.parm=brl_timeout:Braille keys release delay in ms (0 for commit on first key release)\00", section ".modinfo", align 1
@__param_str_brl_timeout = internal constant [21 x i8] c"keyboard.brl_timeout\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@brl_timeout = internal global { i32, [28 x i8] } { i32 300, [28 x i8] zeroinitializer }, align 32
@__param_brl_timeout = internal constant %struct.kernel_param { ptr @__param_str_brl_timeout, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @brl_timeout } }, section "__param", align 4
@__UNIQUE_ID_brl_timeouttype235 = internal constant [35 x i8] c"keyboard.parmtype=brl_timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_brl_nbchords236 = internal constant [95 x i8] c"keyboard.parm=brl_nbchords:Number of chords that produce a braille pattern (0 for dead chords)\00", section ".modinfo", align 1
@__param_str_brl_nbchords = internal constant [22 x i8] c"keyboard.brl_nbchords\00", align 1
@brl_nbchords = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_brl_nbchords = internal constant %struct.kernel_param { ptr @__param_str_brl_nbchords, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.62 { ptr @brl_nbchords } }, section "__param", align 4
@__UNIQUE_ID_brl_nbchordstype237 = internal constant [36 x i8] c"keyboard.parmtype=brl_nbchords:uint\00", section ".modinfo", align 1
@led_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@ledioctl = internal global { i8, [31 x i8] } zeroinitializer, align 32
@kbd_table = internal global { [63 x %struct.kbd_struct], [69 x i8] } zeroinitializer, align 32
@__kstrtab_vt_get_leds = external dso_local constant [0 x i8], align 1
@__kstrtabns_vt_get_leds = external dso_local constant [0 x i8], align 1
@__ksymtab_vt_get_leds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vt_get_leds to i32), ptr @__kstrtab_vt_get_leds, ptr @__kstrtabns_vt_get_leds }, section "___ksymtab_gpl+vt_get_leds", align 4
@default_utf8 = external dso_local local_unnamed_addr global i32, align 4
@keyboard_tasklet = internal global { %struct.tasklet_struct, [40 x i8] } { %struct.tasklet_struct { ptr null, i32 0, %struct.atomic_t { i32 1 }, i8 1, %union.anon.75 { ptr @kbd_bh }, i32 0 }, [40 x i8] zeroinitializer }, align 32
@accent_table_size = external dso_local local_unnamed_addr global i32, align 4
@accent_table = external dso_local local_unnamed_addr global [0 x %struct.kbdiacruc], align 4
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/tty/vt/keyboard.c\00", [38 x i8] zeroinitializer }, align 32
@func_buf_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@func_table = external dso_local local_unnamed_addr global [256 x ptr], align 4
@.str.2 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@shift_state = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"keyboard_notifier_list.lock\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/tty/vt/keyboard.c:274\00", [34 x i8] zeroinitializer }, align 32
@kd_nosound.zero = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kbd_event_lock\00", [17 x i8] zeroinitializer }, align 32
@shift_down = internal global { [9 x i8], [23 x i8] } zeroinitializer, align 32
@key_down = internal global { [24 x i32], [32 x i8] } zeroinitializer, align 32
@key_maps = external dso_local local_unnamed_addr global [256 x ptr], align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"led_lock\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"kbd\00", [28 x i8] zeroinitializer }, align 32
@kbd_ids = internal constant { [3 x %struct.input_device_id], [116 x i8] } { [3 x %struct.input_device_id] [%struct.input_device_id { i32 16, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 2], [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, %struct.input_device_id { i32 16, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 262144], [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, %struct.input_device_id zeroinitializer], [116 x i8] zeroinitializer }, align 32
@do_poke_blanked_console = external dso_local local_unnamed_addr global i32, align 4
@vc_cons = external dso_local global [63 x %struct.vc], align 4
@fg_console = external dso_local local_unnamed_addr global i32, align 4
@kbd = internal global { ptr, [28 x i8] } { ptr @kbd_table, [28 x i8] zeroinitializer }, align 32
@rep = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__func__.kbd_keycode = private unnamed_addr constant [12 x i8] c"kbd_keycode\00", align 1
@kbd_keycode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.kbd_keycode, ptr @.str.1, i32 1429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014keyboard: can't emulate rawmode for keycode %d\0A\00", [46 x i8] zeroinitializer }, align 32
@kbd_keycode._entry_ptr = internal global ptr @kbd_keycode._entry, section ".printk_index", align 4
@k_handler = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @k_self, ptr @k_fn, ptr @k_spec, ptr @k_pad, ptr @k_dead, ptr @k_cons, ptr @k_cur, ptr @k_shift, ptr @k_meta, ptr @k_ascii, ptr @k_lock, ptr @k_lowercase, ptr @k_slock, ptr @k_dead2, ptr @k_brl, ptr @k_ignore], [32 x i8] zeroinitializer }, align 32
@x86_keycodes = internal constant { <{ [240 x i16], [16 x i16] }>, [128 x i8] } { <{ [240 x i16], [16 x i16] }> <{ [240 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 118, i16 86, i16 87, i16 88, i16 115, i16 120, i16 119, i16 121, i16 112, i16 123, i16 92, i16 284, i16 285, i16 309, i16 0, i16 312, i16 91, i16 327, i16 328, i16 329, i16 331, i16 333, i16 335, i16 336, i16 337, i16 338, i16 339, i16 367, i16 288, i16 302, i16 304, i16 350, i16 89, i16 334, i16 326, i16 267, i16 126, i16 268, i16 269, i16 125, i16 347, i16 348, i16 349, i16 360, i16 261, i16 262, i16 263, i16 268, i16 376, i16 100, i16 101, i16 321, i16 316, i16 373, i16 286, i16 289, i16 102, i16 351, i16 355, i16 103, i16 104, i16 105, i16 275, i16 287, i16 279, i16 258, i16 106, i16 274, i16 107, i16 294, i16 364, i16 358, i16 363, i16 362, i16 361, i16 291, i16 108, i16 381, i16 281, i16 290, i16 272, i16 292, i16 305, i16 280, i16 99, i16 112, i16 257, i16 306, i16 359, i16 113, i16 114, i16 264, i16 117, i16 271, i16 374, i16 379, i16 265, i16 266, i16 93, i16 94, i16 95, i16 85, i16 259, i16 375, i16 260, i16 90, i16 116, i16 377, i16 109, i16 111, i16 277, i16 278, i16 282, i16 283, i16 295, i16 296, i16 297, i16 299, i16 300, i16 301, i16 293, i16 303, i16 307, i16 308, i16 310, i16 313, i16 314, i16 315, i16 317, i16 318, i16 319, i16 320, i16 357, i16 322, i16 323, i16 324, i16 325, i16 276, i16 330, i16 332, i16 340, i16 365, i16 342, i16 343, i16 344, i16 345, i16 346, i16 356, i16 270, i16 341, i16 368, i16 369, i16 370, i16 371, i16 372], [16 x i16] zeroinitializer }>, [128 x i8] zeroinitializer }, align 32
@diacr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dead_key_next = internal global { i1, [31 x i8] } zeroinitializer, align 32
@k_fn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.1, i32 780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013keyboard: k_fn called with value=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"k_fn\00", [27 x i8] zeroinitializer }, align 32
@k_fn._entry_ptr = internal global ptr @k_fn._entry, section ".printk_index", align 4
@fn_handler = internal constant { [20 x ptr], [48 x i8] } { [20 x ptr] [ptr @fn_null, ptr @fn_enter, ptr @fn_show_ptregs, ptr @fn_show_mem, ptr @fn_show_state, ptr @fn_send_intr, ptr @fn_lastcons, ptr @fn_caps_toggle, ptr @fn_num, ptr @fn_hold, ptr @fn_scroll_forw, ptr @fn_scroll_back, ptr @fn_boot_it, ptr @fn_caps_on, ptr @fn_compose, ptr @fn_SAK, ptr @fn_dec_console, ptr @fn_inc_console, ptr @fn_spawn_con, ptr @fn_bare_num], [48 x i8] zeroinitializer }, align 32
@__irq_regs = external dso_local global ptr, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@last_console = external dso_local local_unnamed_addr global i32, align 4
@applkey.buf = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\1BO\00\00", [28 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@want_console = external dso_local local_unnamed_addr global i32, align 4
@k_pad.pad_chars = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0123456789+-*/\0D,.?()#\00", [42 x i8] zeroinitializer }, align 32
@k_pad.app_map = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pqrstuvwxylSRQMnnmPQS\00", [42 x i8] zeroinitializer }, align 32
@k_dead.ret_diacr = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"`'^~\22,_U.*=cki#o!?+-)(:n;$@", [37 x i8] zeroinitializer }, align 32
@k_cur.cur_chars = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BDCA\00", [27 x i8] zeroinitializer }, align 32
@npadch_active = internal global { i1, [31 x i8] } zeroinitializer, align 32
@npadch_value = internal global { i32, [28 x i8] } zeroinitializer, align 32
@k_lowercase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.1, i32 672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013keyboard: k_lowercase was called - impossible\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"k_lowercase\00", [20 x i8] zeroinitializer }, align 32
@k_lowercase._entry_ptr = internal global ptr @k_lowercase._entry, section ".printk_index", align 4
@k_brl.pressed = internal global { i32, [28 x i8] } zeroinitializer, align 32
@k_brl.committing = internal global { i32, [28 x i8] } zeroinitializer, align 32
@k_brl.releasestart = internal global { i32, [28 x i8] } zeroinitializer, align 32
@k_brl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.1, i32 985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014keyboard: keyboard mode must be unicode for braille patterns\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"k_brl\00", [26 x i8] zeroinitializer }, align 32
@k_brl._entry_ptr = internal global ptr @k_brl._entry, section ".printk_index", align 4
@k_brlcommit.chords = internal global { i32, [28 x i8] } zeroinitializer, align 32
@k_brlcommit.committed = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ledstate = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@kbd_led_triggers = internal global { [12 x %struct.kbd_led_trigger], [240 x i8] } { [12 x %struct.kbd_led_trigger] [%struct.kbd_led_trigger { %struct.led_trigger { ptr @.str.17, ptr @kbd_led_trigger_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, i32 1 }, %struct.kbd_led_trigger { %struct.led_trigger { ptr @.str.18, ptr @kbd_led_trigger_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, i32 2 }, %struct.kbd_led_trigger { %struct.led_trigger { ptr @.str.19, ptr @kbd_led_trigger_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, i32 4 }, %struct.kbd_led_trigger { %struct.led_trigger { ptr @.str.20, ptr @kbd_led_trigger_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, i32 8 }, %struct.kbd_led_trigger { %struct.led_trigger { ptr @.str.21, ptr @kbd_led_trigger_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, i32 256 }, %struct.kbd_led_trigger { %struct.led_trigger { ptr @.str.22, ptr @kbd_led_trigger_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, i32 512 }, %struct.kbd_led_trigger { %struct.led_trigger { ptr @.str.23, ptr @kbd_led_trigger_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, i32 1024 }, %struct.kbd_led_trigger { %struct.led_trigger { ptr @.str.24, ptr @kbd_led_trigger_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, i32 2048 }, %struct.kbd_led_trigger { %struct.led_trigger { ptr @.str.25, ptr @kbd_led_trigger_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, i32 4096 }, %struct.kbd_led_trigger { %struct.led_trigger { ptr @.str.26, ptr @kbd_led_trigger_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, i32 8192 }, %struct.kbd_led_trigger { %struct.led_trigger { ptr @.str.27, ptr @kbd_led_trigger_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, i32 16384 }, %struct.kbd_led_trigger { %struct.led_trigger { ptr @.str.28, ptr @kbd_led_trigger_activate, ptr null, ptr null, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null }, i32 32768 }], [240 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kbd-scrolllock\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kbd-numlock\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kbd-capslock\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kbd-kanalock\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kbd-shiftlock\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kbd-altgrlock\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kbd-ctrllock\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kbd-altlock\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kbd-shiftllock\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kbd-shiftrlock\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kbd-ctrlllock\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kbd-ctrlrlock\00", [18 x i8] zeroinitializer }, align 32
@kbd_init_leds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.1, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013keyboard: error %d while registering trigger %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kbd_init_leds\00", [18 x i8] zeroinitializer }, align 32
@kbd_init_leds._entry_ptr = internal global ptr @kbd_init_leds._entry, section ".printk_index", align 4
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@keymap_count = external dso_local local_unnamed_addr global i32, align 4
@max_vals = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\FF\FF\13\13\1A\FF\03\08\FF\19\08\FF\08\FF\0A", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"func_buf_lock\00", [18 x i8] zeroinitializer }, align 32
@vt_kdskbsent.is_kmalloc = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@switch.table.vt_do_kdgkbmode = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 0, i32 3, i32 4], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 12]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 12]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 19274, i64 19275, i64 19450, i64 19451]
@__sancov_gen_cov_switch_values.37 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 12]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 12]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 19276, i64 19277]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 19270, i64 19271]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 19272, i64 19273]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 19249, i64 19250, i64 19300, i64 19301]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 99, i64 119, i64 122, i64 123]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 12]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 7]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 7]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 10240]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 3, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.51 = internal global [14 x i64] [i64 12, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 15, i64 16]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 12]
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 100, i32 10 }
@___asan_gen_.56 = private unnamed_addr constant [13 x i8] c"vt_spawn_con\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 99, i32 25 }
@___asan_gen_.59 = private unnamed_addr constant [23 x i8] c"keyboard_notifier_list\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"kd_mksound_timer\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [12 x i8] c"kbd_handler\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1643, i32 29 }
@___asan_gen_.68 = private unnamed_addr constant [10 x i8] c"vt_switch\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [15 x i8] c"kbd_event_lock\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"brl_timeout\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 952, i32 17 }
@___asan_gen_.75 = private unnamed_addr constant [13 x i8] c"brl_nbchords\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 956, i32 17 }
@___asan_gen_.78 = private unnamed_addr constant [9 x i8] c"led_lock\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [9 x i8] c"ledioctl\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 155, i32 22 }
@___asan_gen_.84 = private unnamed_addr constant [10 x i8] c"kbd_table\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 110, i32 26 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"keyboard_tasklet\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 135, i32 8 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1724, i32 7 }
@___asan_gen_.93 = private unnamed_addr constant [14 x i8] c"func_buf_lock\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2082, i32 46 }
@___asan_gen_.99 = private unnamed_addr constant [12 x i8] c"shift_state\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 152, i32 12 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 161, i32 8 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 274, i32 8 }
@___asan_gen_.108 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 269, i32 22 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 138, i32 8 }
@___asan_gen_.114 = private unnamed_addr constant [11 x i8] c"shift_down\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 142, i32 22 }
@___asan_gen_.117 = private unnamed_addr constant [9 x i8] c"key_down\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 141, i32 8 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 139, i32 8 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1649, i32 11 }
@___asan_gen_.126 = private unnamed_addr constant [8 x i8] c"kbd_ids\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1627, i32 37 }
@___asan_gen_.129 = private unnamed_addr constant [4 x i8] c"kbd\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 111, i32 27 }
@___asan_gen_.132 = private unnamed_addr constant [4 x i8] c"rep\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 150, i32 13 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1428, i32 5 }
@___asan_gen_.141 = private unnamed_addr constant [10 x i8] c"k_handler\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 82, i32 22 }
@___asan_gen_.144 = private unnamed_addr constant [13 x i8] c"x86_keycodes\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1290, i32 29 }
@___asan_gen_.147 = private unnamed_addr constant [6 x i8] c"diacr\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 149, i32 21 }
@___asan_gen_.150 = private unnamed_addr constant [14 x i8] c"dead_key_next\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 780, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [11 x i8] c"fn_handler\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 93, i32 23 }
@___asan_gen_.163 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 339, i32 14 }
@___asan_gen_.166 = private unnamed_addr constant [10 x i8] c"pad_chars\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 795, i32 20 }
@___asan_gen_.169 = private unnamed_addr constant [8 x i8] c"app_map\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 796, i32 20 }
@___asan_gen_.172 = private unnamed_addr constant [10 x i8] c"ret_diacr\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 725, i32 29 }
@___asan_gen_.175 = private unnamed_addr constant [10 x i8] c"cur_chars\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 785, i32 20 }
@___asan_gen_.178 = private unnamed_addr constant [14 x i8] c"npadch_active\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [13 x i8] c"npadch_value\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 147, i32 21 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 672, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant [8 x i8] c"pressed\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 980, i32 18 }
@___asan_gen_.194 = private unnamed_addr constant [11 x i8] c"committing\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 980, i32 27 }
@___asan_gen_.197 = private unnamed_addr constant [13 x i8] c"releasestart\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 981, i32 23 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 985, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant [7 x i8] c"chords\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 962, i32 23 }
@___asan_gen_.212 = private unnamed_addr constant [10 x i8] c"committed\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 963, i32 18 }
@___asan_gen_.215 = private unnamed_addr constant [9 x i8] c"ledstate\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 154, i32 21 }
@___asan_gen_.218 = private unnamed_addr constant [17 x i8] c"kbd_led_triggers\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1055, i32 31 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1056, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1057, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1058, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1059, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1061, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1062, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1063, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1064, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1065, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1066, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1067, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1068, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 1106, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 230, i32 6 }
@___asan_gen_.270 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 214, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 174, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [9 x i8] c"max_vals\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 114, i32 28 }
@___asan_gen_.278 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 140, i32 8 }
@___asan_gen_.281 = private unnamed_addr constant [11 x i8] c"is_kmalloc\00", align 1
@___asan_gen_.282 = private constant [29 x i8] c"../drivers/tty/vt/keyboard.c\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 2047, i32 9 }
@___asan_gen_.284 = private unnamed_addr constant [29 x i8] c"switch.table.vt_do_kdgkbmode\00", align 1
@llvm.compiler.used = appending global [95 x ptr] [ptr @__UNIQUE_ID_brl_nbchords236, ptr @__UNIQUE_ID_brl_nbchordstype237, ptr @__UNIQUE_ID_brl_timeout234, ptr @__UNIQUE_ID_brl_timeouttype235, ptr @__ksymtab_kd_mksound, ptr @__ksymtab_register_keyboard_notifier, ptr @__ksymtab_unregister_keyboard_notifier, ptr @__ksymtab_vt_get_leds, ptr @__param_brl_nbchords, ptr @__param_brl_timeout, ptr @k_brl._entry, ptr @k_brl._entry_ptr, ptr @k_fn._entry, ptr @k_fn._entry_ptr, ptr @k_lowercase._entry, ptr @k_lowercase._entry_ptr, ptr @kbd_init_leds._entry, ptr @kbd_init_leds._entry_ptr, ptr @kbd_keycode._entry, ptr @kbd_keycode._entry_ptr, ptr @.str, ptr @vt_spawn_con, ptr @keyboard_notifier_list, ptr @kd_mksound_timer, ptr @kbd_handler, ptr @vt_switch, ptr @kbd_event_lock, ptr @brl_timeout, ptr @brl_nbchords, ptr @led_lock, ptr @ledioctl, ptr @kbd_table, ptr @keyboard_tasklet, ptr @.str.1, ptr @func_buf_lock, ptr @.str.2, ptr @shift_state, ptr @.str.3, ptr @.str.4, ptr @kd_nosound.zero, ptr @.str.5, ptr @shift_down, ptr @key_down, ptr @.str.6, ptr @.str.7, ptr @kbd_ids, ptr @kbd, ptr @rep, ptr @.str.8, ptr @k_handler, ptr @x86_keycodes, ptr @diacr, ptr @dead_key_next, ptr @.str.10, ptr @.str.11, ptr @fn_handler, ptr @applkey.buf, ptr @k_pad.pad_chars, ptr @k_pad.app_map, ptr @k_dead.ret_diacr, ptr @k_cur.cur_chars, ptr @npadch_active, ptr @npadch_value, ptr @.str.13, ptr @.str.14, ptr @k_brl.pressed, ptr @k_brl.committing, ptr @k_brl.releasestart, ptr @.str.15, ptr @.str.16, ptr @k_brlcommit.chords, ptr @k_brlcommit.committed, ptr @ledstate, ptr @kbd_led_triggers, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @max_vals, ptr @.str.34, ptr @vt_kdskbsent.is_kmalloc, ptr @switch.table.vt_do_kdgkbmode], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt_spawn_con to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyboard_notifier_list to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kd_mksound_timer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbd_handler to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt_switch to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbd_event_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brl_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brl_nbchords to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ledioctl to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbd_table to i32), i32 315, i32 384, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keyboard_tasklet to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @func_buf_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shift_state to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kd_nosound.zero to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shift_down to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_down to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbd_ids to i32), i32 492, i32 608, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rep to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbd_keycode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k_handler to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @x86_keycodes to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diacr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dead_key_next to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k_fn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fn_handler to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @applkey.buf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k_pad.pad_chars to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k_pad.app_map to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k_dead.ret_diacr to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k_cur.cur_chars to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npadch_active to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @npadch_value to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k_lowercase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k_brl.pressed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k_brl.committing to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k_brl.releasestart to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k_brl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k_brlcommit.chords to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k_brlcommit.committed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ledstate to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbd_led_triggers to i32), i32 1008, i32 1248, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbd_init_leds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_vals to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt_kdskbsent.is_kmalloc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vt_do_kdgkbmode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_keyboard_notifier(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @keyboard_notifier_list, ptr noundef %nb) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unregister_keyboard_notifier(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @atomic_notifier_chain_unregister(ptr noundef nonnull @keyboard_notifier_list, ptr noundef %nb) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kd_mksound(i32 noundef %hz, i32 noundef %ticks) #0 align 64 {
entry:
  %hz.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hz.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %hz, ptr %hz.addr, align 4
  %call = tail call i32 @del_timer_sync(ptr noundef nonnull @kd_mksound_timer) #16
  %call1 = call i32 @input_handler_for_each_handle(ptr noundef nonnull @kbd_handler, ptr noundef nonnull %hz.addr, ptr noundef nonnull @kd_sound_helper) #16
  %1 = ptrtoint ptr %hz.addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hz.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ticks)
  %tobool2.not = icmp eq i32 %ticks, 0
  %or.cond = or i1 %tobool2.not, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %3, %ticks
  %call3 = call i32 @mod_timer(ptr noundef nonnull @kd_mksound_timer, i32 noundef %add) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_handler_for_each_handle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kd_sound_helper(ptr noundef %handle, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.input_handle, ptr %handle, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %evbit, align 4
  %4 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %entry
  %sndbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %sndbit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %sndbit, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.then.if.end8_crit_edge, label %if.then5

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then5:                                         ; preds = %if.then
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  tail call void @input_inject_event(ptr noundef %handle, i32 noundef 18, i32 noundef 2, i32 noundef %9) #16
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %if.then5.if.end8_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then5.if.end8_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.end8:                                          ; preds = %if.then5.if.end8_crit_edge, %if.then.if.end8_crit_edge
  %12 = ptrtoint ptr %sndbit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %sndbit, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.not = icmp eq i32 %14, 0
  br i1 %tobool12.not, label %if.end8.cleanup_crit_edge, label %if.then13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool14.not = icmp ne i32 %16, 0
  %cond = zext i1 %tobool14.not to i32
  tail call void @input_inject_event(ptr noundef %handle, i32 noundef 18, i32 noundef 1, i32 noundef %cond) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end8.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kbd_rate(ptr nocapture noundef %rpt) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [2 x %struct.kbd_repeat], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #16
  %0 = getelementptr inbounds [2 x %struct.kbd_repeat], ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %rpt to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %rpt, align 4
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %data, align 8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %0, align 8
  %call = call i32 @input_handler_for_each_handle(ptr noundef nonnull @kbd_handler, ptr noundef nonnull %data, ptr noundef nonnull @kbd_rate_helper) #16
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %0, align 8
  %7 = ptrtoint ptr %rpt to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %6, ptr %rpt, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #16
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kbd_rate_helper(ptr noundef %handle, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.input_handle, ptr %handle, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %evbit, align 4
  %4 = and i32 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @input_inject_event(ptr noundef %handle, i32 noundef 20, i32 noundef 0, i32 noundef %6) #16
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %period = getelementptr inbounds %struct.kbd_repeat, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %period, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6 = icmp sgt i32 %8, 0
  br i1 %cmp6, label %if.then7, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @input_inject_event(ptr noundef %handle, i32 noundef 20, i32 noundef 1, i32 noundef %8) #16
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %rep = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 24
  %9 = ptrtoint ptr %rep to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rep, align 4
  %arrayidx12 = getelementptr %struct.kbd_repeat, ptr %data, i32 1
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx12, align 4
  %arrayidx15 = getelementptr %struct.input_dev, ptr %1, i32 0, i32 24, i32 1
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx15, align 4
  %period17 = getelementptr %struct.kbd_repeat, ptr %data, i32 1, i32 1
  %14 = ptrtoint ptr %period17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %period17, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end10, %entry.if.end18_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vt_set_leds_compute_shiftstate() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @vt_switch, align 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 1)) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.set_leds.exit_crit_edge

entry.set_leds.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_leds.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__tasklet_schedule(ptr noundef nonnull @keyboard_tasklet) #16
  br label %set_leds.exit

set_leds.exit:                                    ; preds = %if.then.i.i, %entry.set_leds.exit_crit_edge
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #16
  store i32 0, ptr @shift_state, align 4
  %0 = call ptr @memset(ptr @shift_down, i32 0, i32 9)
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef nonnull @key_down, i32 noundef 256, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call.i)
  %cmp18.i = icmp ult i32 %call.i, 256
  br i1 %cmp18.i, label %set_leds.exit.for.body.i_crit_edge, label %set_leds.exit.do_compute_shiftstate.exit_crit_edge

set_leds.exit.do_compute_shiftstate.exit_crit_edge: ; preds = %set_leds.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do_compute_shiftstate.exit

set_leds.exit.for.body.i_crit_edge:               ; preds = %set_leds.exit
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %set_leds.exit.for.body.i_crit_edge
  %k.019.i = phi i32 [ %call11.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %set_leds.exit.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @key_maps to i32))
  %1 = load ptr, ptr @key_maps, align 4
  %arrayidx.i = getelementptr i16, ptr %1, i32 %k.019.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i, align 2
  %4 = lshr i16 %3, 8
  %5 = trunc i16 %4 to i8
  %trunc.i = xor i8 %5, -16
  %6 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %for.body.i.for.inc.i_crit_edge [
    i8 7, label %for.body.i.if.end.i_crit_edge
    i8 12, label %for.body.i.if.end.i_crit_edge5
  ]

for.body.i.if.end.i_crit_edge5:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge5
  %7 = and i16 %3, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %7)
  %cmp6.i = icmp eq i16 %7, 8
  %narrow.i = select i1 %cmp6.i, i16 0, i16 %7
  %spec.store.select.i = zext i16 %narrow.i to i32
  %arrayidx10.i = getelementptr [9 x i8], ptr @shift_down, i32 0, i32 %spec.store.select.i
  %8 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10.i, align 1
  %inc.i = add i8 %9, 1
  store i8 %inc.i, ptr %arrayidx10.i, align 1
  %shl.i = shl nuw i32 1, %spec.store.select.i
  %10 = load i32, ptr @shift_state, align 4
  %or.i = or i32 %10, %shl.i
  store i32 %or.i, ptr @shift_state, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %add.i = add nuw nsw i32 %k.019.i, 1
  %call11.i = tail call i32 @_find_next_bit_be(ptr noundef nonnull @key_down, i32 noundef 256, i32 noundef %add.i) #16
  %cmp.i = icmp ult i32 %call11.i, 256
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do_compute_shiftstate.exit_crit_edge

for.inc.i.do_compute_shiftstate.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do_compute_shiftstate.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

do_compute_shiftstate.exit:                       ; preds = %for.inc.i.do_compute_shiftstate.exit_crit_edge, %set_leds.exit.do_compute_shiftstate.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %call2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_compute_shiftstate() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @shift_state, align 4
  %0 = call ptr @memset(ptr @shift_down, i32 0, i32 9)
  %call = tail call i32 @_find_next_bit_be(ptr noundef nonnull @key_down, i32 noundef 256, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call)
  %cmp18 = icmp ult i32 %call, 256
  br i1 %cmp18, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %k.019 = phi i32 [ %call11, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @key_maps to i32))
  %1 = load ptr, ptr @key_maps, align 4
  %arrayidx = getelementptr i16, ptr %1, i32 %k.019
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = lshr i16 %3, 8
  %5 = trunc i16 %4 to i8
  %trunc = xor i8 %5, -16
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %trunc, label %for.body.for.inc_crit_edge [
    i8 7, label %for.body.if.end_crit_edge
    i8 12, label %for.body.if.end_crit_edge20
  ]

for.body.if.end_crit_edge20:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.body.if.end_crit_edge20
  %7 = and i16 %3, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %7)
  %cmp6 = icmp eq i16 %7, 8
  %narrow = select i1 %cmp6, i16 0, i16 %7
  %spec.store.select = zext i16 %narrow to i32
  %arrayidx10 = getelementptr [9 x i8], ptr @shift_down, i32 0, i32 %spec.store.select
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10, align 1
  %inc = add i8 %9, 1
  store i8 %inc, ptr %arrayidx10, align 1
  %shl = shl nuw i32 1, %spec.store.select
  %10 = load i32, ptr @shift_state, align 4
  %or = or i32 %10, %shl
  store i32 %or, ptr @shift_state, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %add = add nuw nsw i32 %k.019, 1
  %call11 = tail call i32 @_find_next_bit_be(ptr noundef nonnull @key_down, i32 noundef 256, i32 noundef %add) #16
  %cmp = icmp ult i32 %call11, 256
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @setledstate(ptr nocapture noundef %kb, i32 noundef %led) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @led_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %led)
  %tobool.not = icmp ult i32 %led, 8
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %conv5 = trunc i32 %led to i8
  store i8 %conv5, ptr @ledioctl, align 1
  %ledmode = getelementptr inbounds %struct.kbd_struct, ptr %kb, i32 0, i32 2
  %0 = ptrtoint ptr %ledmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %ledmode, align 1
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %ledmode, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %ledmode6 = getelementptr inbounds %struct.kbd_struct, ptr %kb, i32 0, i32 2
  %1 = ptrtoint ptr %ledmode6 to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load7 = load i8, ptr %ledmode6, align 1
  %bf.clear8 = and i8 %bf.load7, 127
  store i8 %bf.clear8, ptr %ledmode6, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 1)) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.set_leds.exit_crit_edge

if.end.set_leds.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_leds.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__tasklet_schedule(ptr noundef nonnull @keyboard_tasklet) #16
  br label %set_leds.exit

set_leds.exit:                                    ; preds = %if.then.i.i, %if.end.set_leds.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @led_lock, i32 noundef %call2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vt_get_leds(i32 noundef %console, i32 noundef %flag) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @led_lock) #16
  %ledflagstate.i = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 2
  %0 = ptrtoint ptr %ledflagstate.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %ledflagstate.i, align 1
  %bf.lshr.i = lshr i8 %bf.load.i, 3
  %bf.clear.i = and i8 %bf.lshr.i, 15
  %conv.i = zext i8 %bf.clear.i to i32
  %shr.i = lshr i32 %conv.i, %flag
  %and.i = and i32 %shr.i, 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @led_lock, i32 noundef %call2) #16
  ret i32 %and.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vt_set_led_state(i32 noundef %console, i32 noundef %leds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @led_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %leds)
  %tobool.not.i = icmp ult i32 %leds, 8
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %conv5.i = trunc i32 %leds to i8
  store i8 %conv5.i, ptr @ledioctl, align 1
  %ledmode.i = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 2
  %0 = ptrtoint ptr %ledmode.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %ledmode.i, align 1
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %ledmode.i, align 1
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %ledmode6.i = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 2
  %1 = ptrtoint ptr %ledmode6.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load7.i = load i8, ptr %ledmode6.i, align 1
  %bf.clear8.i = and i8 %bf.load7.i, 127
  store i8 %bf.clear8.i, ptr %ledmode6.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %call.i.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 1)) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i.setledstate.exit_crit_edge

if.end.i.setledstate.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %setledstate.exit

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__tasklet_schedule(ptr noundef nonnull @keyboard_tasklet) #16
  br label %setledstate.exit

setledstate.exit:                                 ; preds = %if.then.i.i.i, %if.end.i.setledstate.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @led_lock, i32 noundef %call2.i) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vt_kbd_con_start(i32 noundef %console) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @led_lock) #16
  %ledflagstate.i = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 2
  %0 = ptrtoint ptr %ledflagstate.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %ledflagstate.i, align 1
  %bf.set.i = and i8 %bf.load.i, -9
  store i8 %bf.set.i, ptr %ledflagstate.i, align 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 1)) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.set_leds.exit_crit_edge

entry.set_leds.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_leds.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__tasklet_schedule(ptr noundef nonnull @keyboard_tasklet) #16
  br label %set_leds.exit

set_leds.exit:                                    ; preds = %if.then.i.i, %entry.set_leds.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @led_lock, i32 noundef %call2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vt_kbd_con_stop(i32 noundef %console) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @led_lock) #16
  %ledflagstate.i = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 2
  %0 = ptrtoint ptr %ledflagstate.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %ledflagstate.i, align 1
  %bf.set.i = or i8 %bf.load.i, 8
  store i8 %bf.set.i, ptr %ledflagstate.i, align 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 1)) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.set_leds.exit_crit_edge

entry.set_leds.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_leds.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__tasklet_schedule(ptr noundef nonnull @keyboard_tasklet) #16
  br label %set_leds.exit

set_leds.exit:                                    ; preds = %if.then.i.i, %entry.set_leds.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @led_lock, i32 noundef %call2) #16
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kbd_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @default_utf8 to i32))
  %0 = load i32, ptr @default_utf8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  %conv19 = select i1 %tobool.not, i8 0, i8 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.040 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %i.040
  %ledflagstate = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %i.040, i32 2
  %1 = ptrtoint ptr %ledflagstate to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %ledflagstate, align 1
  %default_ledflagstate = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %i.040, i32 3
  %2 = ptrtoint ptr %default_ledflagstate to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load4 = load i8, ptr %default_ledflagstate, align 1
  %bf.clear11 = and i8 %bf.load, 7
  store i8 %bf.clear11, ptr %ledflagstate, align 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx, align 1
  %slockstate = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %i.040, i32 1
  %4 = ptrtoint ptr %slockstate to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %slockstate, align 1
  %modeflags = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %i.040, i32 4
  %5 = ptrtoint ptr %modeflags to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load16 = load i8, ptr %modeflags, align 1
  %bf.clear17 = and i8 %bf.load16, 7
  %bf.set18 = or i8 %bf.clear17, -96
  store i8 %bf.set18, ptr %modeflags, align 1
  %bf.clear24 = and i8 %bf.load4, 1
  %bf.set25 = or i8 %conv19, %bf.clear24
  store i8 %bf.set25, ptr %default_ledflagstate, align 1
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, 63
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body
  %call.i = tail call i32 @led_trigger_register(ptr noundef nonnull @kbd_led_triggers) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.end.for.inc.i_crit_edge, label %do.end.i

for.end.for.inc.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

do.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %6 = load ptr, ptr @kbd_led_triggers, align 4
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %call.i, ptr noundef %6) #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i, %for.end.for.inc.i_crit_edge
  %call.1.i = tail call i32 @led_trigger_register(ptr noundef getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 1)) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %do.end.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.1.i

do.end.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  %7 = load ptr, ptr getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 1), align 4
  %call3.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %call.1.i, ptr noundef %7) #19
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %do.end.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %call.2.i = tail call i32 @led_trigger_register(ptr noundef getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 2)) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %do.end.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.2.i

do.end.2.i:                                       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #18
  %8 = load ptr, ptr getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 2), align 4
  %call3.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %call.2.i, ptr noundef %8) #19
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %do.end.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %call.3.i = tail call i32 @led_trigger_register(ptr noundef getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 3)) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %do.end.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.3.i

do.end.3.i:                                       ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #18
  %9 = load ptr, ptr getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 3), align 4
  %call3.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %call.3.i, ptr noundef %9) #19
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %do.end.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %call.4.i = tail call i32 @led_trigger_register(ptr noundef getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 4)) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %tobool.not.4.i = icmp eq i32 %call.4.i, 0
  br i1 %tobool.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %do.end.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.4.i

do.end.4.i:                                       ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #18
  %10 = load ptr, ptr getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 4), align 4
  %call3.4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %call.4.i, ptr noundef %10) #19
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %do.end.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %call.5.i = tail call i32 @led_trigger_register(ptr noundef getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 5)) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %tobool.not.5.i = icmp eq i32 %call.5.i, 0
  br i1 %tobool.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %do.end.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.5.i

do.end.5.i:                                       ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #18
  %11 = load ptr, ptr getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 5), align 4
  %call3.5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %call.5.i, ptr noundef %11) #19
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %do.end.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %call.6.i = tail call i32 @led_trigger_register(ptr noundef getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 6)) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %tobool.not.6.i = icmp eq i32 %call.6.i, 0
  br i1 %tobool.not.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %do.end.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.6.i

do.end.6.i:                                       ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #18
  %12 = load ptr, ptr getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 6), align 4
  %call3.6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %call.6.i, ptr noundef %12) #19
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %do.end.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %call.7.i = tail call i32 @led_trigger_register(ptr noundef getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 7)) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i)
  %tobool.not.7.i = icmp eq i32 %call.7.i, 0
  br i1 %tobool.not.7.i, label %for.inc.6.i.for.inc.7.i_crit_edge, label %do.end.7.i

for.inc.6.i.for.inc.7.i_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.7.i

do.end.7.i:                                       ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #18
  %13 = load ptr, ptr getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 7), align 4
  %call3.7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %call.7.i, ptr noundef %13) #19
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %do.end.7.i, %for.inc.6.i.for.inc.7.i_crit_edge
  %call.8.i = tail call i32 @led_trigger_register(ptr noundef getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 8)) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8.i)
  %tobool.not.8.i = icmp eq i32 %call.8.i, 0
  br i1 %tobool.not.8.i, label %for.inc.7.i.for.inc.8.i_crit_edge, label %do.end.8.i

for.inc.7.i.for.inc.8.i_crit_edge:                ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.8.i

do.end.8.i:                                       ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #18
  %14 = load ptr, ptr getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 8), align 4
  %call3.8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %call.8.i, ptr noundef %14) #19
  br label %for.inc.8.i

for.inc.8.i:                                      ; preds = %do.end.8.i, %for.inc.7.i.for.inc.8.i_crit_edge
  %call.9.i = tail call i32 @led_trigger_register(ptr noundef getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 9)) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9.i)
  %tobool.not.9.i = icmp eq i32 %call.9.i, 0
  br i1 %tobool.not.9.i, label %for.inc.8.i.for.inc.9.i_crit_edge, label %do.end.9.i

for.inc.8.i.for.inc.9.i_crit_edge:                ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.9.i

do.end.9.i:                                       ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #18
  %15 = load ptr, ptr getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 9), align 4
  %call3.9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %call.9.i, ptr noundef %15) #19
  br label %for.inc.9.i

for.inc.9.i:                                      ; preds = %do.end.9.i, %for.inc.8.i.for.inc.9.i_crit_edge
  %call.10.i = tail call i32 @led_trigger_register(ptr noundef getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 10)) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.10.i)
  %tobool.not.10.i = icmp eq i32 %call.10.i, 0
  br i1 %tobool.not.10.i, label %for.inc.9.i.for.inc.10.i_crit_edge, label %do.end.10.i

for.inc.9.i.for.inc.10.i_crit_edge:               ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.10.i

do.end.10.i:                                      ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #18
  %16 = load ptr, ptr getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 10), align 4
  %call3.10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %call.10.i, ptr noundef %16) #19
  br label %for.inc.10.i

for.inc.10.i:                                     ; preds = %do.end.10.i, %for.inc.9.i.for.inc.10.i_crit_edge
  %call.11.i = tail call i32 @led_trigger_register(ptr noundef getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 11)) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.11.i)
  %tobool.not.11.i = icmp eq i32 %call.11.i, 0
  br i1 %tobool.not.11.i, label %for.inc.10.i.kbd_init_leds.exit_crit_edge, label %do.end.11.i

for.inc.10.i.kbd_init_leds.exit_crit_edge:        ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kbd_init_leds.exit

do.end.11.i:                                      ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #18
  %17 = load ptr, ptr getelementptr inbounds ([12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 11), align 4
  %call3.11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %call.11.i, ptr noundef %17) #19
  br label %kbd_init_leds.exit

kbd_init_leds.exit:                               ; preds = %do.end.11.i, %for.inc.10.i.kbd_init_leds.exit_crit_edge
  %call26 = tail call i32 @input_register_handler(ptr noundef nonnull @kbd_handler) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end, label %kbd_init_leds.exit.cleanup_crit_edge

kbd_init_leds.exit.cleanup_crit_edge:             ; preds = %kbd_init_leds.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %kbd_init_leds.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !184
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), i32 1, i32 3, i32 1) #16
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), ptr getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2)) #16, !srcloc !185
  %call.i38 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 1)) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %tobool.not.i39 = icmp eq i32 %call.i38, 0
  br i1 %tobool.not.i39, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__tasklet_schedule(ptr noundef nonnull @keyboard_tasklet) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %kbd_init_leds.exit.cleanup_crit_edge
  ret i32 %call26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vt_do_diacrit(i32 noundef %cmd, ptr noundef %udp, i32 noundef %perm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %cmd, label %entry.cleanup219_crit_edge [
    i32 19274, label %sw.bb
    i32 19450, label %sw.bb37
    i32 19275, label %sw.bb86
    i32 19451, label %sw.bb161
  ]

entry.cleanup219_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup219

sw.bb:                                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 768) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %sw.bb.cleanup219_crit_edge, label %do.body1

sw.bb.cleanup219_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup219

do.body1:                                         ; preds = %sw.bb
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @accent_table_size to i32))
  %2 = load i32, ptr @accent_table_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp6327 = icmp sgt i32 %2, 0
  br i1 %cmp6327, label %do.body1.for.body_crit_edge, label %do.body1.for.end_crit_edge

do.body1.for.end_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

do.body1.for.body_crit_edge:                      ; preds = %do.body1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body1.for.body_crit_edge
  %i.0328 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.body1.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.kbdiacruc], ptr @accent_table, i32 0, i32 %i.0328
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %call8 = tail call i32 @conv_uni_to_8bit(i32 noundef %4) #16
  %conv9 = trunc i32 %call8 to i8
  %arrayidx10 = getelementptr %struct.kbdiacr, ptr %call7.i.i, i32 %i.0328
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv9, ptr %arrayidx10, align 1
  %base = getelementptr [0 x %struct.kbdiacruc], ptr @accent_table, i32 0, i32 %i.0328, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 4
  %call13 = tail call i32 @conv_uni_to_8bit(i32 noundef %7) #16
  %conv14 = trunc i32 %call13 to i8
  %base16 = getelementptr %struct.kbdiacr, ptr %call7.i.i, i32 %i.0328, i32 1
  %8 = ptrtoint ptr %base16 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv14, ptr %base16, align 1
  %result = getelementptr [0 x %struct.kbdiacruc], ptr @accent_table, i32 0, i32 %i.0328, i32 2
  %9 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %result, align 4
  %call18 = tail call i32 @conv_uni_to_8bit(i32 noundef %10) #16
  %conv19 = trunc i32 %call18 to i8
  %result21 = getelementptr %struct.kbdiacr, ptr %call7.i.i, i32 %i.0328, i32 2
  %11 = ptrtoint ptr %result21 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv19, ptr %result21, align 1
  %inc = add nuw nsw i32 %i.0328, 1
  %exitcond329.not = icmp eq i32 %inc, %2
  br i1 %exitcond329.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body1.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %call3) #16
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1724) #16
  %12 = tail call i32 @llvm.read_register.i32(metadata !174) #16
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #12, !srcloc !186
  %and.i = and i32 %14, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #16, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !188
  %15 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %udp, i32 %2, i32 -1226833921) #16, !srcloc !189
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #16, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool28.not = icmp eq i32 %15, 0
  br i1 %tobool28.not, label %if.else, label %for.end.if.end34_crit_edge

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34

if.else:                                          ; preds = %for.end
  %kbdiacr = getelementptr inbounds %struct.kbdiacrs, ptr %udp, i32 0, i32 1
  %mul = mul i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %mul)
  %cmp1.i.i = icmp ugt i32 %mul, 768
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !190

if.then3.i.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.32, i32 noundef 768, i32 noundef %mul) #16
  br label %if.end34

if.then.i.i.i:                                    ; preds = %if.else
  tail call void @__check_object_size(ptr noundef nonnull %call7.i.i, i32 noundef %mul, i1 noundef zeroext true) #16
  tail call void @__might_fault(ptr noundef nonnull @.str.33, i32 noundef 174) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %kbdiacr, i32 %mul, i32 -1226833920) #21, !srcloc !191
  %asmresult.i.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i.i, i32 noundef %mul) #16
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %kbdiacr, ptr noundef nonnull %call7.i.i, i32 noundef %mul) #16
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %mul, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %mul, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool31.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool31.not, i32 0, i32 -14
  br label %if.end34

if.end34:                                         ; preds = %copy_to_user.exit, %if.then3.i.i, %for.end.if.end34_crit_edge
  %ret.0 = phi i32 [ -14, %for.end.if.end34_crit_edge ], [ -14, %if.then3.i.i ], [ %spec.select, %copy_to_user.exit ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup219

sw.bb37:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i319 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3264, i32 noundef 3072) #20
  %cmp40 = icmp eq ptr %call7.i.i319, null
  br i1 %cmp40, label %sw.bb37.cleanup219_crit_edge, label %do.body45

sw.bb37.cleanup219_crit_edge:                     ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup219

do.body45:                                        ; preds = %sw.bb37
  %call52 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @accent_table_size to i32))
  %18 = load i32, ptr @accent_table_size, align 4
  %mul57 = mul i32 %18, 12
  %19 = call ptr @memcpy(ptr %call7.i.i319, ptr @accent_table, i32 %mul57)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %call52) #16
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1751) #16
  %20 = tail call i32 @llvm.read_register.i32(metadata !174) #16
  %and.i.i.i280 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i280 to ptr
  %cpu_domain.i.i281 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i281) #12, !srcloc !186
  %and.i282 = and i32 %22, -13
  %or.i283 = or i32 %and.i282, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i283) #16, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !188
  %23 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %udp, i32 %18, i32 -1226833921) #16, !srcloc !192
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #16, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool74.not = icmp eq i32 %23, 0
  br i1 %tobool74.not, label %if.else76, label %do.body45.if.end83_crit_edge

do.body45.if.end83_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end83

if.else76:                                        ; preds = %do.body45
  %kbdiacruc = getelementptr inbounds %struct.kbdiacrsuc, ptr %udp, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %mul57)
  %cmp1.i.i285 = icmp ugt i32 %mul57, 3072
  br i1 %cmp1.i.i285, label %if.then3.i.i288, label %if.then.i.i.i296, !prof !190

if.then3.i.i288:                                  ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.32, i32 noundef 3072, i32 noundef %mul57) #16
  br label %if.end83

if.then.i.i.i296:                                 ; preds = %if.else76
  tail call void @__check_object_size(ptr noundef nonnull %call7.i.i319, i32 noundef %mul57, i1 noundef zeroext true) #16
  tail call void @__might_fault(ptr noundef nonnull @.str.33, i32 noundef 174) #16
  %call.i.i297 = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i297, label %if.then.i.i.i296.copy_to_user.exit306_crit_edge, label %if.end.i.i301

if.then.i.i.i296.copy_to_user.exit306_crit_edge:  ; preds = %if.then.i.i.i296
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_to_user.exit306

if.end.i.i301:                                    ; preds = %if.then.i.i.i296
  %24 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %kbdiacruc, i32 %mul57, i32 -1226833920) #21, !srcloc !191
  %asmresult.i.i299 = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i299)
  %cmp.i6.i300 = icmp eq i32 %asmresult.i.i299, 0
  br i1 %cmp.i6.i300, label %if.then2.i.i304, label %if.end.i.i301.copy_to_user.exit306_crit_edge

if.end.i.i301.copy_to_user.exit306_crit_edge:     ; preds = %if.end.i.i301
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_to_user.exit306

if.then2.i.i304:                                  ; preds = %if.end.i.i301
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i302 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i.i319, i32 noundef %mul57) #16
  %call.i12.i.i303 = tail call i32 @arm_copy_to_user(ptr noundef %kbdiacruc, ptr noundef nonnull %call7.i.i319, i32 noundef %mul57) #16
  br label %copy_to_user.exit306

copy_to_user.exit306:                             ; preds = %if.then2.i.i304, %if.end.i.i301.copy_to_user.exit306_crit_edge, %if.then.i.i.i296.copy_to_user.exit306_crit_edge
  %n.addr.0.i305 = phi i32 [ %mul57, %if.then.i.i.i296.copy_to_user.exit306_crit_edge ], [ %call.i12.i.i303, %if.then2.i.i304 ], [ %mul57, %if.end.i.i301.copy_to_user.exit306_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i305)
  %tobool80.not = icmp eq i32 %n.addr.0.i305, 0
  %spec.select338 = select i1 %tobool80.not, i32 0, i32 -14
  br label %if.end83

if.end83:                                         ; preds = %copy_to_user.exit306, %if.then3.i.i288, %do.body45.if.end83_crit_edge
  %ret.1 = phi i32 [ -14, %do.body45.if.end83_crit_edge ], [ -14, %if.then3.i.i288 ], [ %spec.select338, %copy_to_user.exit306 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i319) #16
  br label %cleanup219

sw.bb86:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %perm)
  %tobool90.not = icmp eq i32 %perm, 0
  br i1 %tobool90.not, label %sw.bb86.cleanup219_crit_edge, label %if.end92

sw.bb86.cleanup219_crit_edge:                     ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup219

if.end92:                                         ; preds = %sw.bb86
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1769) #16
  %25 = tail call i32 @llvm.read_register.i32(metadata !174) #16
  %and.i.i.i307 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i307 to ptr
  %cpu_domain.i.i308 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i308) #12, !srcloc !186
  %and.i309 = and i32 %27, -13
  %or.i310 = or i32 %and.i309, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i310) #16, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !188
  %28 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %udp, i32 -1226833921) #16, !srcloc !193
  %asmresult = extractvalue { i32, i32 } %28, 0
  %asmresult102 = extractvalue { i32, i32 } %28, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #16, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool104.not = icmp eq i32 %asmresult, 0
  br i1 %tobool104.not, label %if.end106, label %if.end92.cleanup219_crit_edge

if.end92.cleanup219_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup219

if.end106:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %asmresult102)
  %cmp107 = icmp ugt i32 %asmresult102, 255
  br i1 %cmp107, label %if.end106.cleanup219_crit_edge, label %if.end110

if.end106.cleanup219_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup219

if.end110:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult102)
  %tobool111.not = icmp eq i32 %asmresult102, 0
  br i1 %tobool111.not, label %do.body123.thread, label %if.then112

do.body123.thread:                                ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #18
  %call130335 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #16
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @accent_table_size to i32))
  store i32 %asmresult102, ptr @accent_table_size, align 4
  br label %for.end156

if.then112:                                       ; preds = %if.end110
  %kbdiacr113 = getelementptr inbounds %struct.kbdiacrs, ptr %udp, i32 0, i32 1
  %mul115 = mul nuw nsw i32 %asmresult102, 3
  %call116 = tail call ptr @memdup_user(ptr noundef %kbdiacr113, i32 noundef %mul115) #16
  %cmp.i = icmp ugt ptr %call116, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then118, label %for.body138.preheader

if.then118:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #18
  %29 = ptrtoint ptr %call116 to i32
  br label %cleanup219

for.body138.preheader:                            ; preds = %if.then112
  %call130 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #16
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @accent_table_size to i32))
  store i32 %asmresult102, ptr @accent_table_size, align 4
  br label %for.body138

for.body138:                                      ; preds = %for.body138.for.body138_crit_edge, %for.body138.preheader
  %i89.0326 = phi i32 [ %inc155, %for.body138.for.body138_crit_edge ], [ 0, %for.body138.preheader ]
  %arrayidx139 = getelementptr %struct.kbdiacr, ptr %call116, i32 %i89.0326
  %30 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx139, align 1
  %call141 = tail call i32 @conv_8bit_to_uni(i8 noundef zeroext %31) #16
  %arrayidx142 = getelementptr [0 x %struct.kbdiacruc], ptr @accent_table, i32 0, i32 %i89.0326
  %32 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call141, ptr %arrayidx142, align 4
  %base145 = getelementptr %struct.kbdiacr, ptr %call116, i32 %i89.0326, i32 1
  %33 = ptrtoint ptr %base145 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %base145, align 1
  %call146 = tail call i32 @conv_8bit_to_uni(i8 noundef zeroext %34) #16
  %base148 = getelementptr [0 x %struct.kbdiacruc], ptr @accent_table, i32 0, i32 %i89.0326, i32 1
  %35 = ptrtoint ptr %base148 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call146, ptr %base148, align 4
  %result150 = getelementptr %struct.kbdiacr, ptr %call116, i32 %i89.0326, i32 2
  %36 = ptrtoint ptr %result150 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %result150, align 1
  %call151 = tail call i32 @conv_8bit_to_uni(i8 noundef zeroext %37) #16
  %result153 = getelementptr [0 x %struct.kbdiacruc], ptr @accent_table, i32 0, i32 %i89.0326, i32 2
  %38 = ptrtoint ptr %result153 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call151, ptr %result153, align 4
  %inc155 = add nuw i32 %i89.0326, 1
  %exitcond.not = icmp eq i32 %inc155, %asmresult102
  br i1 %exitcond.not, label %for.body138.for.end156_crit_edge, label %for.body138.for.body138_crit_edge

for.body138.for.body138_crit_edge:                ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body138

for.body138.for.end156_crit_edge:                 ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end156

for.end156:                                       ; preds = %for.body138.for.end156_crit_edge, %do.body123.thread
  %call130337 = phi i32 [ %call130335, %do.body123.thread ], [ %call130, %for.body138.for.end156_crit_edge ]
  %dia88.0336 = phi ptr [ null, %do.body123.thread ], [ %call116, %for.body138.for.end156_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %call130337) #16
  tail call void @kfree(ptr noundef %dia88.0336) #16
  br label %cleanup219

sw.bb161:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %perm)
  %tobool165.not = icmp eq i32 %perm, 0
  br i1 %tobool165.not, label %sw.bb161.cleanup219_crit_edge, label %if.end167

sw.bb161.cleanup219_crit_edge:                    ; preds = %sw.bb161
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup219

if.end167:                                        ; preds = %sw.bb161
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1807) #16
  %39 = tail call i32 @llvm.read_register.i32(metadata !174) #16
  %and.i.i.i311 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i311 to ptr
  %cpu_domain.i.i312 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 4
  %41 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i312) #12, !srcloc !186
  %and.i313 = and i32 %41, -13
  %or.i314 = or i32 %and.i313, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i314) #16, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !188
  %42 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %udp, i32 -1226833921) #16, !srcloc !194
  %asmresult178 = extractvalue { i32, i32 } %42, 0
  %asmresult179 = extractvalue { i32, i32 } %42, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #16, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult178)
  %tobool181.not = icmp eq i32 %asmresult178, 0
  br i1 %tobool181.not, label %if.end183, label %if.end167.cleanup219_crit_edge

if.end167.cleanup219_crit_edge:                   ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup219

if.end183:                                        ; preds = %if.end167
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %asmresult179)
  %cmp184 = icmp ugt i32 %asmresult179, 255
  br i1 %cmp184, label %if.end183.cleanup219_crit_edge, label %if.end187

if.end183.cleanup219_crit_edge:                   ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup219

if.end187:                                        ; preds = %if.end183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult179)
  %tobool188.not = icmp eq i32 %asmresult179, 0
  br i1 %tobool188.not, label %do.body200.thread, label %if.then189

do.body200.thread:                                ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #18
  %call207322 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #16
  br label %if.end215

if.then189:                                       ; preds = %if.end187
  %kbdiacruc190 = getelementptr inbounds %struct.kbdiacrsuc, ptr %udp, i32 0, i32 1
  %mul192 = mul nuw nsw i32 %asmresult179, 12
  %call193 = tail call ptr @memdup_user(ptr noundef %kbdiacruc190, i32 noundef %mul192) #16
  %cmp.i320 = icmp ugt ptr %call193, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i320, label %if.then195, label %if.then213

if.then195:                                       ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #18
  %43 = ptrtoint ptr %call193 to i32
  br label %cleanup219

if.then213:                                       ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #18
  %call207 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #16
  %44 = call ptr @memcpy(ptr @accent_table, ptr %call193, i32 %mul192)
  br label %if.end215

if.end215:                                        ; preds = %if.then213, %do.body200.thread
  %call207324 = phi i32 [ %call207322, %do.body200.thread ], [ %call207, %if.then213 ]
  %buf164.0323 = phi ptr [ null, %do.body200.thread ], [ %call193, %if.then213 ]
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @accent_table_size to i32))
  store i32 %asmresult179, ptr @accent_table_size, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %call207324) #16
  tail call void @kfree(ptr noundef %buf164.0323) #16
  br label %cleanup219

cleanup219:                                       ; preds = %if.end215, %if.then195, %if.end183.cleanup219_crit_edge, %if.end167.cleanup219_crit_edge, %sw.bb161.cleanup219_crit_edge, %for.end156, %if.then118, %if.end106.cleanup219_crit_edge, %if.end92.cleanup219_crit_edge, %sw.bb86.cleanup219_crit_edge, %if.end83, %sw.bb37.cleanup219_crit_edge, %if.end34, %sw.bb.cleanup219_crit_edge, %entry.cleanup219_crit_edge
  %retval.4 = phi i32 [ %ret.0, %if.end34 ], [ -12, %sw.bb.cleanup219_crit_edge ], [ %ret.1, %if.end83 ], [ -12, %sw.bb37.cleanup219_crit_edge ], [ %29, %if.then118 ], [ 0, %for.end156 ], [ -1, %sw.bb86.cleanup219_crit_edge ], [ -14, %if.end92.cleanup219_crit_edge ], [ -22, %if.end106.cleanup219_crit_edge ], [ %43, %if.then195 ], [ 0, %if.end215 ], [ -1, %sw.bb161.cleanup219_crit_edge ], [ -14, %if.end167.cleanup219_crit_edge ], [ -22, %if.end183.cleanup219_crit_edge ], [ 0, %entry.cleanup219_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @conv_uni_to_8bit(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @conv_8bit_to_uni(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vt_do_kdskbmode(i32 noundef %console, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #16
  %0 = zext i32 %arg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %arg, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb5
    i32 1, label %sw.bb10
    i32 3, label %sw.bb15
    i32 4, label %sw.bb20
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split

sw.bb10:                                          ; preds = %entry
  %kbdmode11 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 3
  %1 = ptrtoint ptr %kbdmode11 to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load12 = load i8, ptr %kbdmode11, align 1
  %bf.clear13 = and i8 %bf.load12, -15
  store i8 %bf.clear13, ptr %kbdmode11, align 1
  store i32 0, ptr @shift_state, align 4
  %2 = call ptr @memset(ptr @shift_down, i32 0, i32 9)
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef nonnull @key_down, i32 noundef 256, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call.i)
  %cmp18.i = icmp ult i32 %call.i, 256
  br i1 %cmp18.i, label %sw.bb10.for.body.i_crit_edge, label %sw.bb10.sw.epilog_crit_edge

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb10.for.body.i_crit_edge:                     ; preds = %sw.bb10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb10.for.body.i_crit_edge
  %k.019.i = phi i32 [ %call11.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %sw.bb10.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @key_maps to i32))
  %3 = load ptr, ptr @key_maps, align 4
  %arrayidx.i = getelementptr i16, ptr %3, i32 %k.019.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %6 = lshr i16 %5, 8
  %7 = trunc i16 %6 to i8
  %trunc.i = xor i8 %7, -16
  %8 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %trunc.i, label %for.body.i.for.inc.i_crit_edge [
    i8 7, label %for.body.i.if.end.i_crit_edge
    i8 12, label %for.body.i.if.end.i_crit_edge54
  ]

for.body.i.if.end.i_crit_edge54:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge54
  %9 = and i16 %5, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %9)
  %cmp6.i = icmp eq i16 %9, 8
  %narrow.i = select i1 %cmp6.i, i16 0, i16 %9
  %spec.store.select.i = zext i16 %narrow.i to i32
  %arrayidx10.i = getelementptr [9 x i8], ptr @shift_down, i32 0, i32 %spec.store.select.i
  %10 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx10.i, align 1
  %inc.i = add i8 %11, 1
  store i8 %inc.i, ptr %arrayidx10.i, align 1
  %shl.i = shl nuw i32 1, %spec.store.select.i
  %12 = load i32, ptr @shift_state, align 4
  %or.i = or i32 %12, %shl.i
  store i32 %or.i, ptr @shift_state, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %add.i = add nuw nsw i32 %k.019.i, 1
  %call11.i = tail call i32 @_find_next_bit_be(ptr noundef nonnull @key_down, i32 noundef 256, i32 noundef %add.i) #16
  %cmp.i = icmp ult i32 %call11.i, 256
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.sw.epilog_crit_edge

for.inc.i.sw.epilog_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

sw.bb15:                                          ; preds = %entry
  %kbdmode16 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 3
  %13 = ptrtoint ptr %kbdmode16 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load17 = load i8, ptr %kbdmode16, align 1
  %bf.clear18 = and i8 %bf.load17, -15
  %bf.set19 = or i8 %bf.clear18, 6
  store i8 %bf.set19, ptr %kbdmode16, align 1
  store i32 0, ptr @shift_state, align 4
  %14 = call ptr @memset(ptr @shift_down, i32 0, i32 9)
  %call.i29 = tail call i32 @_find_next_bit_be(ptr noundef nonnull @key_down, i32 noundef 256, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call.i29)
  %cmp18.i30 = icmp ult i32 %call.i29, 256
  br i1 %cmp18.i30, label %sw.bb15.for.body.i34_crit_edge, label %sw.bb15.sw.epilog_crit_edge

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb15.for.body.i34_crit_edge:                   ; preds = %sw.bb15
  br label %for.body.i34

for.body.i34:                                     ; preds = %for.inc.i46.for.body.i34_crit_edge, %sw.bb15.for.body.i34_crit_edge
  %k.019.i31 = phi i32 [ %call11.i44, %for.inc.i46.for.body.i34_crit_edge ], [ %call.i29, %sw.bb15.for.body.i34_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @key_maps to i32))
  %15 = load ptr, ptr @key_maps, align 4
  %arrayidx.i32 = getelementptr i16, ptr %15, i32 %k.019.i31
  %16 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i32, align 2
  %18 = lshr i16 %17, 8
  %19 = trunc i16 %18 to i8
  %trunc.i33 = xor i8 %19, -16
  %20 = zext i8 %trunc.i33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %trunc.i33, label %for.body.i34.for.inc.i46_crit_edge [
    i8 7, label %for.body.i34.if.end.i42_crit_edge
    i8 12, label %for.body.i34.if.end.i42_crit_edge55
  ]

for.body.i34.if.end.i42_crit_edge55:              ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i42

for.body.i34.if.end.i42_crit_edge:                ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i42

for.body.i34.for.inc.i46_crit_edge:               ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i46

if.end.i42:                                       ; preds = %for.body.i34.if.end.i42_crit_edge, %for.body.i34.if.end.i42_crit_edge55
  %21 = and i16 %17, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %21)
  %cmp6.i35 = icmp eq i16 %21, 8
  %narrow.i36 = select i1 %cmp6.i35, i16 0, i16 %21
  %spec.store.select.i37 = zext i16 %narrow.i36 to i32
  %arrayidx10.i38 = getelementptr [9 x i8], ptr @shift_down, i32 0, i32 %spec.store.select.i37
  %22 = ptrtoint ptr %arrayidx10.i38 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx10.i38, align 1
  %inc.i39 = add i8 %23, 1
  store i8 %inc.i39, ptr %arrayidx10.i38, align 1
  %shl.i40 = shl nuw i32 1, %spec.store.select.i37
  %24 = load i32, ptr @shift_state, align 4
  %or.i41 = or i32 %24, %shl.i40
  store i32 %or.i41, ptr @shift_state, align 4
  br label %for.inc.i46

for.inc.i46:                                      ; preds = %if.end.i42, %for.body.i34.for.inc.i46_crit_edge
  %add.i43 = add nuw nsw i32 %k.019.i31, 1
  %call11.i44 = tail call i32 @_find_next_bit_be(ptr noundef nonnull @key_down, i32 noundef 256, i32 noundef %add.i43) #16
  %cmp.i45 = icmp ult i32 %call11.i44, 256
  br i1 %cmp.i45, label %for.inc.i46.for.body.i34_crit_edge, label %for.inc.i46.sw.epilog_crit_edge

for.inc.i46.sw.epilog_crit_edge:                  ; preds = %for.inc.i46
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

for.inc.i46.for.body.i34_crit_edge:               ; preds = %for.inc.i46
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i34

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb20, %sw.bb5, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 8, %sw.bb20 ], [ 2, %sw.bb5 ], [ 4, %entry.sw.epilog.sink.split_crit_edge ]
  %kbdmode = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 3
  %25 = ptrtoint ptr %kbdmode to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load22 = load i8, ptr %kbdmode, align 1
  %bf.clear23 = and i8 %bf.load22, -15
  %bf.set24 = or i8 %bf.clear23, %.sink
  store i8 %bf.set24, ptr %kbdmode, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.inc.i46.sw.epilog_crit_edge, %sw.bb15.sw.epilog_crit_edge, %for.inc.i.sw.epilog_crit_edge, %sw.bb10.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb10.sw.epilog_crit_edge ], [ 0, %sw.bb15.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ], [ 0, %for.inc.i.sw.epilog_crit_edge ], [ 0, %for.inc.i46.sw.epilog_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %call2) #16
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vt_do_kdskbmeta(i32 noundef %console, i32 noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #16
  %0 = zext i32 %arg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %arg, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %modeflags.i = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 4
  %1 = ptrtoint ptr %modeflags.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i = load i8, ptr %modeflags.i, align 1
  %bf.set.i = and i8 %bf.load.i, 127
  store i8 %bf.set.i, ptr %modeflags.i, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %modeflags.i7 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 4
  %2 = ptrtoint ptr %modeflags.i7 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i8 = load i8, ptr %modeflags.i7, align 1
  %bf.set.i9 = or i8 %bf.load.i8, -128
  store i8 %bf.set.i9, ptr %modeflags.i7, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb5 ], [ 0, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %call2) #16
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vt_do_kbkeycode_ioctl(i32 noundef %cmd, ptr noundef %user_kbkc, i32 noundef %perm) local_unnamed_addr #0 align 64 {
entry:
  %d.i18 = alloca %struct.getset_keycode_data, align 4
  %d.i = alloca %struct.getset_keycode_data, align 4
  %tmp = alloca %struct.kbkeycode, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #16
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !195
  %1 = getelementptr inbounds %struct.kbkeycode, ptr %tmp, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !195
  tail call void @__might_fault(ptr noundef nonnull @.str.33, i32 noundef 156) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_kbkc, i32 8, i32 -1226833920) #21, !srcloc !196
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !197

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tmp, i32 noundef 8) #16
  %4 = call i32 @llvm.read_register.i32(metadata !174) #16
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #12, !srcloc !186
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !187
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !188
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tmp, ptr noundef %user_kbkc, i32 noundef 8) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #16, !srcloc !187
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !197

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i22 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %entry.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i22
  %add.ptr.i.i = getelementptr i8, ptr %tmp, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i22)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 19276, label %sw.bb
    i32 19277, label %sw.bb7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %9 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tmp, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %d.i) #16
  %11 = call ptr @memset(ptr %d.i, i32 0, i32 40)
  %12 = getelementptr inbounds %struct.input_keymap_entry, ptr %d.i, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 4, ptr %12, align 1
  %14 = getelementptr inbounds %struct.getset_keycode_data, ptr %d.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -19, ptr %14, align 4
  %scancode1.i = getelementptr inbounds %struct.input_keymap_entry, ptr %d.i, i32 0, i32 4
  %16 = ptrtoint ptr %scancode1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %10, ptr %scancode1.i, align 4
  %call.i = call i32 @input_handler_for_each_handle(ptr noundef nonnull @kbd_handler, ptr noundef nonnull %d.i, ptr noundef nonnull @getkeycode_helper) #16
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %cond.false.i, label %sw.bb.getkeycode.exit_crit_edge

sw.bb.getkeycode.exit_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %getkeycode.exit

cond.false.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  %keycode.i = getelementptr inbounds %struct.input_keymap_entry, ptr %d.i, i32 0, i32 3
  %19 = ptrtoint ptr %keycode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %keycode.i, align 4
  br label %getkeycode.exit

getkeycode.exit:                                  ; preds = %cond.false.i, %sw.bb.getkeycode.exit_crit_edge
  %cond.i = phi i32 [ %20, %cond.false.i ], [ %18, %sw.bb.getkeycode.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %d.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond.i)
  %cmp = icmp sgt i32 %cond.i, -1
  br i1 %cmp, label %if.then2, label %getkeycode.exit.cleanup_crit_edge

getkeycode.exit.cleanup_crit_edge:                ; preds = %getkeycode.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then2:                                         ; preds = %getkeycode.exit
  call void @__sanitizer_cov_trace_pc() #18
  %keycode = getelementptr inbounds %struct.kbkeycode, ptr %user_kbkc, i32 0, i32 1
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1913) #16
  %21 = call i32 @llvm.read_register.i32(metadata !174) #16
  %and.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 4
  %23 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #12, !srcloc !186
  %and.i = and i32 %23, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #16, !srcloc !187
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !188
  %24 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %keycode, i32 %cond.i, i32 -1226833921) #16, !srcloc !198
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #16, !srcloc !187
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !188
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %perm)
  %tobool8.not = icmp eq i32 %perm, 0
  br i1 %tobool8.not, label %sw.bb7.cleanup_crit_edge, label %if.end10

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #18
  %25 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tmp, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %d.i18) #16
  %29 = call ptr @memset(ptr %d.i18, i32 0, i32 40)
  %len.i = getelementptr inbounds %struct.input_keymap_entry, ptr %d.i18, i32 0, i32 1
  %30 = ptrtoint ptr %len.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 4, ptr %len.i, align 1
  %keycode1.i = getelementptr inbounds %struct.input_keymap_entry, ptr %d.i18, i32 0, i32 3
  %31 = ptrtoint ptr %keycode1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %keycode1.i, align 4
  %error.i = getelementptr inbounds %struct.getset_keycode_data, ptr %d.i18, i32 0, i32 1
  %32 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -19, ptr %error.i, align 4
  %scancode4.i = getelementptr inbounds %struct.input_keymap_entry, ptr %d.i18, i32 0, i32 4
  %33 = ptrtoint ptr %scancode4.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %26, ptr %scancode4.i, align 4
  %call.i19 = call i32 @input_handler_for_each_handle(ptr noundef nonnull @kbd_handler, ptr noundef nonnull %d.i18, ptr noundef nonnull @setkeycode_helper) #16
  %34 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %d.i18) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %sw.bb7.cleanup_crit_edge, %if.then2, %getkeycode.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -1, %sw.bb7.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %35, %if.end10 ], [ %24, %if.then2 ], [ %cond.i, %getkeycode.exit.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vt_do_kdsk_ioctl(i32 noundef %cmd, ptr noundef %user_kbe, i32 noundef %perm, i32 noundef %console) local_unnamed_addr #0 align 64 {
entry:
  %kbe = alloca %struct.kbentry, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kbe) #16
  %0 = getelementptr inbounds %struct.kbentry, ptr %kbe, i32 0, i32 1
  %1 = getelementptr inbounds %struct.kbentry, ptr %kbe, i32 0, i32 2
  %2 = ptrtoint ptr %kbe to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %kbe, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.33, i32 noundef 156) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_kbe, i32 4, i32 -1226833920) #21, !srcloc !196
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !197

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %kbe, i32 noundef 4) #16
  %4 = call i32 @llvm.read_register.i32(metadata !174) #16
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #12, !srcloc !186
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !187
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !188
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %kbe, ptr noundef %user_kbe, i32 noundef 4) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #16, !srcloc !187
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !197

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i27 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %entry.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i27
  %add.ptr.i.i = getelementptr i8, ptr %kbe, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i27)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 19270, label %sw.bb
    i32 19271, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %kb_value = getelementptr inbounds %struct.kbentry, ptr %user_kbe, i32 0, i32 2
  %kbdmode = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 3
  %9 = ptrtoint ptr %kbdmode to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %kbdmode, align 1
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %0, align 1
  %12 = ptrtoint ptr %kbe to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %kbe, align 4
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #16
  %idxprom.i = zext i8 %13 to i32
  %arrayidx.i = getelementptr [256 x ptr], ptr @key_maps, i32 0, i32 %idxprom.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  %idxprom5.i = zext i8 %11 to i32
  %arrayidx6.i = getelementptr i16, ptr %15, i32 %idxprom5.i
  %16 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx6.i, align 2
  %18 = xor i16 %17, -4096
  %19 = and i8 %bf.load, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %19)
  %cmp10.not.i = icmp eq i8 %19, 6
  br i1 %cmp10.not.i, label %if.then.i.vt_kdgkbent.exit_crit_edge, label %land.lhs.true.i

if.then.i.vt_kdgkbent.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vt_kdgkbent.exit

land.lhs.true.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp2(i16 3839, i16 %18)
  %cmp13.i = icmp ugt i16 %18, 3839
  %spec.store.select.i = select i1 %cmp13.i, i16 512, i16 %18
  br label %vt_kdgkbent.exit

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool17.not.i = icmp eq i8 %11, 0
  %conv18.i = select i1 %tobool17.not.i, i16 639, i16 512
  br label %vt_kdgkbent.exit

vt_kdgkbent.exit:                                 ; preds = %if.else.i, %land.lhs.true.i, %if.then.i.vt_kdgkbent.exit_crit_edge
  %val.0.i = phi i16 [ %spec.store.select.i, %land.lhs.true.i ], [ %18, %if.then.i.vt_kdgkbent.exit_crit_edge ], [ %conv18.i, %if.else.i ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %call2.i) #16
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 2035) #16
  %20 = call i32 @llvm.read_register.i32(metadata !174) #16
  %and.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #12, !srcloc !186
  %and.i = and i32 %22, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #16, !srcloc !187
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !188
  %23 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_2", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %kb_value, i16 %val.0.i, i32 -1226833921) #16, !srcloc !199
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #16, !srcloc !187
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !188
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %perm)
  %tobool5.not = icmp eq i32 %perm, 0
  br i1 %tobool5.not, label %sw.bb4.cleanup_crit_edge, label %lor.lhs.false

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb4
  %call6 = call zeroext i1 @capable(i32 noundef 26) #16
  br i1 %call6, label %if.end8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %kbdmode9 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 3
  %24 = ptrtoint ptr %kbdmode9 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load10 = load i8, ptr %kbdmode9, align 1
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %0, align 1
  %27 = ptrtoint ptr %kbe to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %kbe, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i20 = icmp eq i8 %26, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 639, i16 %30)
  %cmp.i = icmp eq i16 %30, 639
  %or.cond.i = and i1 %tobool.not.i20, %cmp.i
  br i1 %or.cond.i, label %do.body2.i, label %if.end21.i

do.body2.i:                                       ; preds = %if.end8
  %call5.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #16
  %idxprom.i21 = zext i8 %28 to i32
  %arrayidx.i22 = getelementptr [256 x ptr], ptr @key_maps, i32 0, i32 %idxprom.i21
  %31 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i22, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool9.not.i = icmp eq i8 %28, 0
  %tobool11.not.i = icmp eq ptr %32, null
  %or.cond157.i = select i1 %tobool9.not.i, i1 true, i1 %tobool11.not.i
  br i1 %or.cond157.i, label %do.body2.i.if.end20.i_crit_edge, label %if.then12.i

do.body2.i.if.end20.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20.i

if.then12.i:                                      ; preds = %do.body2.i
  %33 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx.i22, align 4
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %32, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3458, i16 %35)
  %cmp17.i = icmp eq i16 %35, -3458
  br i1 %cmp17.i, label %if.then19.i, label %if.then12.i.if.end20.i_crit_edge

if.then12.i.if.end20.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20.i

if.then19.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree(ptr noundef nonnull %32) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @keymap_count to i32))
  %36 = load i32, ptr @keymap_count, align 4
  %dec.i = add i32 %36, -1
  store i32 %dec.i, ptr @keymap_count, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then19.i, %if.then12.i.if.end20.i_crit_edge, %do.body2.i.if.end20.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %call5.i) #16
  br label %cleanup

if.end21.i:                                       ; preds = %if.end8
  %conv22.i = zext i16 %30 to i32
  %37 = lshr i32 %conv22.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3840, i16 %30)
  %cmp23.i = icmp ult i16 %30, 3840
  br i1 %cmp23.i, label %if.then25.i, label %if.else.i24

if.then25.i:                                      ; preds = %if.end21.i
  %and.i23 = and i32 %conv22.i, 255
  %arrayidx29.i = getelementptr [15 x i8], ptr @max_vals, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx29.i, align 1
  %conv30.i = zext i8 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i23, i32 %conv30.i)
  %cmp31.i = icmp ugt i32 %and.i23, %conv30.i
  %brmerge160.i = or i1 %tobool.not.i20, %cmp31.i
  %.mux161.i = select i1 %cmp31.i, i32 -22, i32 0
  br i1 %brmerge160.i, label %if.then25.i.cleanup_crit_edge, label %if.then25.i.if.end43.i_crit_edge

if.then25.i.if.end43.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43.i

if.then25.i.cleanup_crit_edge:                    ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else.i24:                                      ; preds = %if.end21.i
  %40 = and i8 %bf.load10, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %40)
  %cmp36.not.i = icmp ne i8 %40, 6
  %brmerge.i = or i1 %cmp36.not.i, %tobool.not.i20
  %.mux.i = select i1 %cmp36.not.i, i32 -22, i32 0
  br i1 %brmerge.i, label %if.else.i24.cleanup_crit_edge, label %if.else.i24.if.end43.i_crit_edge

if.else.i24.if.end43.i_crit_edge:                 ; preds = %if.else.i24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43.i

if.else.i24.cleanup_crit_edge:                    ; preds = %if.else.i24
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end43.i:                                       ; preds = %if.else.i24.if.end43.i_crit_edge, %if.then25.i.if.end43.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3264, i32 noundef 512) #20
  %tobool45.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool45.not.i, label %if.end43.i.cleanup_crit_edge, label %do.body49.i

if.end43.i.cleanup_crit_edge:                     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body49.i:                                      ; preds = %if.end43.i
  %call56.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #16
  %idxprom61.i = zext i8 %28 to i32
  %arrayidx62.i = getelementptr [256 x ptr], ptr @key_maps, i32 0, i32 %idxprom61.i
  %42 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx62.i, align 4
  %cmp63.i = icmp eq ptr %43, null
  br i1 %cmp63.i, label %if.then65.i, label %if.else79.i

if.then65.i:                                      ; preds = %do.body49.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @keymap_count to i32))
  %44 = load i32, ptr @keymap_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %44)
  %cmp66.i = icmp ugt i32 %44, 255
  br i1 %cmp66.i, label %land.lhs.true68.i, label %if.then65.i.if.end71.i_crit_edge

if.then65.i.if.end71.i_crit_edge:                 ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end71.i

land.lhs.true68.i:                                ; preds = %if.then65.i
  %call69.i = call zeroext i1 @capable(i32 noundef 24) #16
  br i1 %call69.i, label %land.lhs.true68.i.if.end71.i_crit_edge, label %cleanup.i

land.lhs.true68.i.if.end71.i_crit_edge:           ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end71.i

if.end71.i:                                       ; preds = %land.lhs.true68.i.if.end71.i_crit_edge, %if.then65.i.if.end71.i_crit_edge
  %45 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i.i, ptr %arrayidx62.i, align 4
  %46 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 -3458, ptr %call7.i.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end71.i
  %j.0164.i = phi i32 [ 1, %if.end71.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx77.i = getelementptr i16, ptr %call7.i.i, i32 %j.0164.i
  %47 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 -3584, ptr %arrayidx77.i, align 2
  %inc.i = add nuw nsw i32 %j.0164.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %cleanup.thread.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

cleanup.thread.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @keymap_count to i32))
  %48 = load i32, ptr @keymap_count, align 4
  %inc78.i = add i32 %48, 1
  store i32 %inc78.i, ptr @keymap_count, align 4
  br label %if.end80.i

cleanup.i:                                        ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %call56.i) #16
  call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

if.else79.i:                                      ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.else79.i, %cleanup.thread.i
  %key_map.1.i = phi ptr [ %43, %if.else79.i ], [ %call7.i.i, %cleanup.thread.i ]
  %idxprom81.i = zext i8 %26 to i32
  %arrayidx82.i = getelementptr i16, ptr %key_map.1.i, i32 %idxprom81.i
  %49 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx82.i, align 2
  %51 = xor i16 %50, -4096
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %30)
  %cmp87.i = icmp eq i16 %51, %30
  br i1 %cmp87.i, label %if.end80.i.out.i_crit_edge, label %if.end90.i

if.end80.i.out.i_crit_edge:                       ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i

if.end90.i:                                       ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 527, i16 %51)
  %cmp92.i = icmp eq i16 %51, 527
  call void @__sanitizer_cov_trace_const_cmp2(i16 527, i16 %30)
  %cmp95.i = icmp eq i16 %30, 527
  %or.cond158.i = or i1 %cmp95.i, %cmp92.i
  br i1 %or.cond158.i, label %land.lhs.true97.i, label %if.end90.i.if.end100.i_crit_edge

if.end90.i.if.end100.i_crit_edge:                 ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end100.i

land.lhs.true97.i:                                ; preds = %if.end90.i
  %call98.i = call zeroext i1 @capable(i32 noundef 21) #16
  br i1 %call98.i, label %land.lhs.true97.i.if.end100.i_crit_edge, label %if.then99.i

land.lhs.true97.i.if.end100.i_crit_edge:          ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end100.i

if.then99.i:                                      ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %call56.i) #16
  br label %cleanup

if.end100.i:                                      ; preds = %land.lhs.true97.i.if.end100.i_crit_edge, %if.end90.i.if.end100.i_crit_edge
  %xor102.i = xor i16 %30, -4096
  %52 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %xor102.i, ptr %arrayidx82.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool106.not.i = icmp eq i8 %28, 0
  br i1 %tobool106.not.i, label %land.lhs.true107.i, label %if.end100.i.out.i_crit_edge

if.end100.i.out.i_crit_edge:                      ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i

land.lhs.true107.i:                               ; preds = %if.end100.i
  %.mask.i = and i16 %51, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 1792, i16 %.mask.i)
  %cmp110.i = icmp eq i16 %.mask.i, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %37)
  %cmp115.i = icmp eq i32 %37, 7
  %or.cond159.i = or i1 %cmp115.i, %cmp110.i
  br i1 %or.cond159.i, label %if.then117.i, label %land.lhs.true107.i.out.i_crit_edge

land.lhs.true107.i.out.i_crit_edge:               ; preds = %land.lhs.true107.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i

if.then117.i:                                     ; preds = %land.lhs.true107.i
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @do_compute_shiftstate() #16
  br label %out.i

out.i:                                            ; preds = %if.then117.i, %land.lhs.true107.i.out.i_crit_edge, %if.end100.i.out.i_crit_edge, %if.end80.i.out.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %call56.i) #16
  br label %cleanup

cleanup:                                          ; preds = %out.i, %if.then99.i, %cleanup.i, %if.end43.i.cleanup_crit_edge, %if.else.i24.cleanup_crit_edge, %if.then25.i.cleanup_crit_edge, %if.end20.i, %lor.lhs.false.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %vt_kdgkbent.exit, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %23, %vt_kdgkbent.exit ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %sw.bb4.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %out.i ], [ -1, %if.then99.i ], [ -1, %cleanup.i ], [ 0, %if.end20.i ], [ %.mux161.i, %if.then25.i.cleanup_crit_edge ], [ %.mux.i, %if.else.i24.cleanup_crit_edge ], [ -12, %if.end43.i.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kbe) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vt_do_kdgkb_ioctl(i32 noundef %cmd, ptr noundef %user_kdgkb, i32 noundef %perm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 2067) #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !174) #16
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #12, !srcloc !186
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #16, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !188
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %user_kdgkb, i32 -1226833921) #16, !srcloc !200
  %asmresult = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #16, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup57_crit_edge

entry.cleanup57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup57

if.end:                                           ; preds = %entry
  %asmresult2 = extractvalue { i32, i32 } %3, 1
  %conv4 = and i32 %asmresult2, 255
  %4 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %conv4, i32 256) #16, !srcloc !201
  %and = and i32 %4, %asmresult2
  %conv11 = trunc i32 %and to i8
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %cmd, label %if.end.sw.epilog_crit_edge [
    i32 19272, label %sw.bb
    i32 19273, label %sw.bb31
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 512) #20
  %tobool13.not = icmp eq ptr %call7.i, null
  br i1 %tobool13.not, label %sw.bb.cleanup57_crit_edge, label %do.body17

sw.bb.cleanup57_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup57

do.body17:                                        ; preds = %sw.bb
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @func_buf_lock) #16
  %idxprom = and i32 %and, 255
  %arrayidx = getelementptr [256 x ptr], ptr @func_table, i32 0, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool26.not = icmp eq ptr %8, null
  %cond = select i1 %tobool26.not, ptr @.str.2, ptr %8
  %call27 = tail call i32 @strlcpy(ptr noundef nonnull %call7.i, ptr noundef %cond, i32 noundef 512) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @func_buf_lock, i32 noundef %call21) #16
  %kb_string = getelementptr inbounds %struct.kbsentry, ptr %user_kdgkb, i32 0, i32 1
  %add = add i32 %call27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add)
  %cmp1.i.i = icmp ugt i32 %add, 512
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !190

if.then3.i.i:                                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.32, i32 noundef 512, i32 noundef %add) #16
  br label %sw.epilog

if.then.i.i.i:                                    ; preds = %do.body17
  tail call void @__check_object_size(ptr noundef nonnull %call7.i, i32 noundef %add, i1 noundef zeroext true) #16
  tail call void @__might_fault(ptr noundef nonnull @.str.33, i32 noundef 174) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %if.then.i.i.i.cleanup_crit_edge, label %if.end.i.i

if.then.i.i.i.cleanup_crit_edge:                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %kb_string, i32 %add, i32 -1226833920) #21, !srcloc !191
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i, i32 noundef %add) #16
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %kb_string, ptr noundef nonnull %call7.i, i32 noundef %add) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then2.i.i, %if.end.i.i.cleanup_crit_edge, %if.then.i.i.i.cleanup_crit_edge
  %n.addr.0.i = phi i32 [ %add, %if.then.i.i.i.cleanup_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %add, %if.end.i.i.cleanup_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool29.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool29.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %perm)
  %tobool32.not = icmp eq i32 %perm, 0
  br i1 %tobool32.not, label %sw.bb31.cleanup57_crit_edge, label %lor.lhs.false

sw.bb31.cleanup57_crit_edge:                      ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup57

lor.lhs.false:                                    ; preds = %sw.bb31
  %call33 = tail call zeroext i1 @capable(i32 noundef 26) #16
  br i1 %call33, label %if.end35, label %lor.lhs.false.cleanup57_crit_edge

lor.lhs.false.cleanup57_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup57

if.end35:                                         ; preds = %lor.lhs.false
  %kb_string36 = getelementptr inbounds %struct.kbsentry, ptr %user_kdgkb, i32 0, i32 1
  %call38 = tail call ptr @strndup_user(ptr noundef %kb_string36, i32 noundef 512) #16
  %cmp.i = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then40, label %do.body44

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %call38 to i32
  br label %cleanup57

do.body44:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  %call51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @func_buf_lock) #16
  %call56 = tail call fastcc ptr @vt_kdskbsent(ptr noundef %call38, i8 noundef zeroext %conv11)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @func_buf_lock, i32 noundef %call51) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body44, %cleanup, %if.then3.i.i, %if.end.sw.epilog_crit_edge
  %ret.1 = phi i32 [ -1, %if.end.sw.epilog_crit_edge ], [ 0, %do.body44 ], [ -14, %if.then3.i.i ], [ %spec.select, %cleanup ]
  %kbs.0 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end.sw.epilog_crit_edge ], [ %call56, %do.body44 ], [ %call7.i, %if.then3.i.i ], [ %call7.i, %cleanup ]
  tail call void @kfree(ptr noundef %kbs.0) #16
  br label %cleanup57

cleanup57:                                        ; preds = %sw.epilog, %if.then40, %lor.lhs.false.cleanup57_crit_edge, %sw.bb31.cleanup57_crit_edge, %sw.bb.cleanup57_crit_edge, %entry.cleanup57_crit_edge
  %retval.1 = phi i32 [ %ret.1, %sw.epilog ], [ %10, %if.then40 ], [ -14, %entry.cleanup57_crit_edge ], [ -1, %lor.lhs.false.cleanup57_crit_edge ], [ -1, %sw.bb31.cleanup57_crit_edge ], [ -12, %sw.bb.cleanup57_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strndup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc ptr @vt_kdskbsent(ptr noundef %kbs, i8 noundef zeroext %cur) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %cur to i32
  %arrayidx = getelementptr [256 x ptr], ptr @func_table, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @strlen(ptr noundef nonnull %1) #22
  %call1 = tail call i32 @strlen(ptr noundef %kbs) #22
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %call1)
  %cmp.not = icmp ult i32 %call, %call1
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %call2 = tail call ptr @strcpy(ptr noundef nonnull %1, ptr noundef %kbs) #22
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %kbs, ptr %arrayidx, align 4
  %rem.i = and i32 %idxprom, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div1.i = lshr i32 %idxprom, 5
  %add.ptr.i = getelementptr i32, ptr @vt_kdskbsent.is_kmalloc, i32 %div1.i
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %4, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %5 = and i32 %4, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  %spec.select = select i1 %tobool6.not, ptr null, ptr %1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %kbs, %if.then ], [ %spec.select, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vt_do_kdskled(i32 noundef %console, i32 noundef %cmd, i32 noundef %arg, i32 noundef %perm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 19300, label %do.body1
    i32 19301, label %sw.bb16
    i32 19249, label %sw.bb46
    i32 19250, label %sw.bb63
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #16
  %ledflagstate = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 2
  %1 = ptrtoint ptr %ledflagstate to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %ledflagstate, align 1
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 15
  %default_ledflagstate = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 3
  %2 = ptrtoint ptr %default_ledflagstate to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load6 = load i8, ptr %default_ledflagstate, align 1
  %bf.lshr7 = and i8 %bf.load6, -16
  %or81 = or i8 %bf.clear, %bf.lshr7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %call2) #16
  %3 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 2125) #16
  %4 = tail call i32 @llvm.read_register.i32(metadata !174) #16
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #12, !srcloc !186
  %and.i = and i32 %6, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #16, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !188
  %7 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i8 %or81, i32 -1226833921) #16, !srcloc !202
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #16, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !188
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %perm)
  %tobool.not = icmp eq i32 %perm, 0
  br i1 %tobool.not, label %sw.bb16.cleanup_crit_edge, label %if.end

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %sw.bb16
  %and = and i32 %arg, -120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %do.body21, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body21:                                        ; preds = %if.end
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @led_lock) #16
  %8 = trunc i32 %arg to i8
  %ledflagstate35 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 2
  %9 = ptrtoint ptr %ledflagstate35 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load36 = load i8, ptr %ledflagstate35, align 1
  %conv34 = shl i8 %8, 3
  %bf.shl = and i8 %conv34, 56
  %bf.clear37 = and i8 %bf.load36, -121
  %bf.set = or i8 %bf.clear37, %bf.shl
  store i8 %bf.set, ptr %ledflagstate35, align 1
  %conv39 = and i8 %8, 112
  %default_ledflagstate40 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 3
  %10 = ptrtoint ptr %default_ledflagstate40 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load41 = load i8, ptr %default_ledflagstate40, align 1
  %bf.clear44 = and i8 %bf.load41, 15
  %bf.set45 = or i8 %bf.clear44, %conv39
  store i8 %bf.set45, ptr %default_ledflagstate40, align 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 1)) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body21.set_leds.exit_crit_edge

do.body21.set_leds.exit_crit_edge:                ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_leds.exit

if.then.i.i:                                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__tasklet_schedule(ptr noundef nonnull @keyboard_tasklet) #16
  br label %set_leds.exit

set_leds.exit:                                    ; preds = %if.then.i.i, %do.body21.set_leds.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @led_lock, i32 noundef %call28) #16
  br label %cleanup

sw.bb46:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %11 = load i32, ptr @ledstate, align 4
  %conv.i = trunc i32 %11 to i8
  %12 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 2143) #16
  %13 = tail call i32 @llvm.read_register.i32(metadata !174) #16
  %and.i.i.i82 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i82 to ptr
  %cpu_domain.i.i83 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i83) #12, !srcloc !186
  %and.i84 = and i32 %15, -13
  %or.i85 = or i32 %and.i84, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i85) #16, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !188
  %16 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %12, i8 %conv.i, i32 -1226833921) #16, !srcloc !203
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #16, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !188
  br label %cleanup

sw.bb63:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %perm)
  %tobool64.not = icmp eq i32 %perm, 0
  br i1 %tobool64.not, label %sw.bb63.cleanup_crit_edge, label %if.end66

sw.bb63.cleanup_crit_edge:                        ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end66:                                         ; preds = %sw.bb63
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @led_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %arg)
  %tobool.not.i = icmp ult i32 %arg, 8
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #18
  %conv5.i = trunc i32 %arg to i8
  store i8 %conv5.i, ptr @ledioctl, align 1
  %ledmode.i = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 2
  %17 = ptrtoint ptr %ledmode.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %ledmode.i, align 1
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %ledmode.i, align 1
  br label %if.end.i

if.else.i:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #18
  %ledmode6.i = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 2
  %18 = ptrtoint ptr %ledmode6.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load7.i = load i8, ptr %ledmode6.i, align 1
  %bf.clear8.i = and i8 %bf.load7.i, 127
  store i8 %bf.clear8.i, ptr %ledmode6.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %call.i.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 1)) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i.setledstate.exit_crit_edge

if.end.i.setledstate.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %setledstate.exit

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__tasklet_schedule(ptr noundef nonnull @keyboard_tasklet) #16
  br label %setledstate.exit

setledstate.exit:                                 ; preds = %if.then.i.i.i, %if.end.i.setledstate.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @led_lock, i32 noundef %call2.i) #16
  br label %cleanup

cleanup:                                          ; preds = %setledstate.exit, %sw.bb63.cleanup_crit_edge, %sw.bb46, %set_leds.exit, %if.end.cleanup_crit_edge, %sw.bb16.cleanup_crit_edge, %do.body1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %setledstate.exit ], [ %16, %sw.bb46 ], [ 0, %set_leds.exit ], [ %7, %do.body1 ], [ -1, %sw.bb16.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -1, %sw.bb63.cleanup_crit_edge ], [ -515, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vt_do_kdgkbmode(i32 noundef %console) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %kbdmode = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 3
  %0 = ptrtoint ptr %kbdmode to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %kbdmode, align 1
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 7
  %conv = zext i8 %bf.clear to i32
  %switch.tableidx = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 4
  br i1 %1, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.vt_do_kdgkbmode, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vt_do_kdgkbmeta(i32 noundef %console) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %modeflags.i = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 4
  %0 = ptrtoint ptr %modeflags.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %modeflags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not = icmp sgt i8 %bf.load.i, -1
  %cond = select i1 %tobool.not, i32 3, i32 4
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vt_reset_unicode(i32 noundef %console) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @default_utf8 to i32))
  %0 = load i32, ptr @default_utf8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  %conv5 = select i1 %tobool.not, i8 0, i8 6
  %kbdmode = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 3
  %1 = ptrtoint ptr %kbdmode to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %kbdmode, align 1
  %bf.clear = and i8 %bf.load, -15
  %bf.set = or i8 %bf.clear, %conv5
  store i8 %bf.set, ptr %kbdmode, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %call2) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vt_get_shift_state() local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @shift_state, align 4
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vt_reset_keyboard(i32 noundef %console) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #16
  %modeflags.i = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 4
  %0 = ptrtoint ptr %modeflags.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %modeflags.i, align 1
  %bf.set.i = and i8 %bf.load.i, -121
  %bf.set.i19 = or i8 %bf.set.i, 32
  store i8 %bf.set.i19, ptr %modeflags.i, align 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %arrayidx, align 1
  %slockstate = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 1
  %2 = ptrtoint ptr %slockstate to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %slockstate, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @led_lock) #16
  %ledmode = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 2
  %3 = ptrtoint ptr %ledmode to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %ledmode, align 1
  %default_ledflagstate = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 3
  %4 = ptrtoint ptr %default_ledflagstate to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load5 = load i8, ptr %default_ledflagstate, align 1
  %5 = lshr i8 %bf.load5, 1
  %bf.shl = and i8 %5, 120
  %bf.clear7 = and i8 %bf.load, 7
  %bf.set8 = or i8 %bf.shl, %bf.clear7
  store i8 %bf.set8, ptr %ledmode, align 1
  tail call void @_raw_spin_unlock(ptr noundef nonnull @led_lock) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %call2) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vt_get_kbd_mode_bit(i32 noundef %console, i32 noundef %bit) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %modeflags.i = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 4
  %0 = ptrtoint ptr %modeflags.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %modeflags.i, align 1
  %bf.lshr.i = lshr i8 %bf.load.i, 3
  %conv.i = zext i8 %bf.lshr.i to i32
  %shr.i = lshr i32 %conv.i, %bit
  %and.i = and i32 %shr.i, 1
  ret i32 %and.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vt_set_kbd_mode_bit(i32 noundef %console, i32 noundef %bit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #16
  %shl.i = shl nuw i32 1, %bit
  %modeflags.i = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 4
  %0 = ptrtoint ptr %modeflags.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %modeflags.i, align 1
  %1 = trunc i32 %shl.i to i8
  %bf.value3.i = shl i8 %1, 3
  %bf.load.masked.i = and i8 %bf.load.i, -8
  %bf.shl.i = or i8 %bf.load.masked.i, %bf.value3.i
  %bf.clear.i = and i8 %bf.load.i, 7
  %bf.set.i = or i8 %bf.shl.i, %bf.clear.i
  store i8 %bf.set.i, ptr %modeflags.i, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %call2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vt_clr_kbd_mode_bit(i32 noundef %console, i32 noundef %bit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kbd_event_lock) #16
  %shl.i = shl nuw i32 1, %bit
  %modeflags.i = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %console, i32 4
  %0 = ptrtoint ptr %modeflags.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %modeflags.i, align 1
  %1 = trunc i32 %shl.i to i8
  %2 = xor i8 %1, -1
  %conv13.i = shl i8 %2, 3
  %bf.lshr45.i = or i8 %conv13.i, 7
  %bf.set.i = and i8 %bf.load.i, %bf.lshr45.i
  store i8 %bf.set.i, ptr %modeflags.i, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kbd_event_lock, i32 noundef %call2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kd_nosound(ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @input_handler_for_each_handle(ptr noundef nonnull @kbd_handler, ptr noundef nonnull @kd_nosound.zero, ptr noundef nonnull @kd_sound_helper) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_inject_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kbd_event(ptr nocapture noundef readonly %handle, i32 noundef %event_type, i32 noundef %event_code, i32 noundef %value) #0 align 64 {
entry:
  %param.i = alloca %struct.keyboard_notifier_param, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @kbd_event_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %event_type)
  %cmp = icmp eq i32 %event_type, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %event_code)
  %cmp1 = icmp eq i32 %event_code, 3
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.input_handle, ptr %handle, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %evbit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %evbit.i, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %land.lhs.true2.if.end11_crit_edge, label %lor.lhs.false.i

land.lhs.true2.if.end11_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

lor.lhs.false.i:                                  ; preds = %land.lhs.true2
  %mscbit.i = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %mscbit.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %mscbit.i, align 4
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not.i = icmp eq i32 %7, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.end11_crit_edge, label %if.end.i

lor.lhs.false.i.if.end11_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.end.i:                                         ; preds = %lor.lhs.false.i
  %id.i = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %9)
  %cmp.i = icmp eq i16 %9, 17
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.end11_crit_edge

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

land.lhs.true.i:                                  ; preds = %if.end.i
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vendor.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %11)
  %cmp7.i = icmp eq i16 %11, 1
  br i1 %cmp7.i, label %kbd_is_hw_raw.exit, label %land.lhs.true.i.if.end11_crit_edge

land.lhs.true.i.if.end11_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

kbd_is_hw_raw.exit:                               ; preds = %land.lhs.true.i
  %product.i = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %product.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %product.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %13)
  %cmp11.i = icmp eq i16 %13, 1
  br i1 %cmp11.i, label %if.then, label %kbd_is_hw_raw.exit.if.end11_crit_edge

kbd_is_hw_raw.exit.if.end11_crit_edge:            ; preds = %kbd_is_hw_raw.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then:                                          ; preds = %kbd_is_hw_raw.exit
  %conv = trunc i32 %value to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %14 = load i32, ptr @fg_console, align 4
  %arrayidx.i = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %vc_num.i = getelementptr inbounds %struct.vc_data, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %vc_num.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vc_num.i, align 4
  %idxprom.i = zext i16 %18 to i32
  %arrayidx1.i = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %idxprom.i
  store ptr %arrayidx1.i, ptr @kbd, align 4
  %kbdmode.i = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %idxprom.i, i32 3
  %19 = ptrtoint ptr %kbdmode.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %kbdmode.i, align 1
  %20 = and i8 %bf.load.i, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %20)
  %cmp.i18 = icmp eq i8 %20, 4
  br i1 %cmp.i18, label %if.then.i, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then.i:                                        ; preds = %if.then
  %tail.i.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %16, i32 0, i32 8
  %21 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i.i.i, align 4
  %used.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %used.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %used.i.i.i, align 4
  %size.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp3.i.i.i = icmp slt i32 %24, %26
  br i1 %cmp3.i.i.i, label %if.then.i.i.i, label %if.end12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  %flags.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %22, i32 0, i32 5
  %27 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i.i

if.then8.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %22, i32 0, i32 6
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i.i, i32 %24
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %26
  %29 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %add.ptr.i.i.i.i, align 1
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then8.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %30 = ptrtoint ptr %used.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %used.i.i.i, align 4
  %inc.i.i.i = add i32 %31, 1
  store i32 %inc.i.i.i, ptr %used.i.i.i, align 4
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %22, i32 0, i32 6
  %add.ptr.i1.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %31
  %32 = ptrtoint ptr %add.ptr.i1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv, ptr %add.ptr.i1.i.i.i, align 1
  br label %put_queue.exit.i

if.end12.i.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %16, i8 noundef zeroext %conv, i8 noundef zeroext 0) #16
  br label %put_queue.exit.i

put_queue.exit.i:                                 ; preds = %if.end12.i.i.i, %if.end.i.i.i
  tail call void @tty_flip_buffer_push(ptr noundef %16) #16
  br label %if.end11

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event_type)
  %cmp3 = icmp eq i32 %event_type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %event_code)
  %cmp6 = icmp ult i32 %event_code, 768
  %or.cond17 = and i1 %cmp3, %cmp6
  br i1 %or.cond17, label %if.then8, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then8:                                         ; preds = %if.end
  %dev9 = getelementptr inbounds %struct.input_handle, ptr %handle, i32 0, i32 3
  %33 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev9, align 4
  %evbit.i20 = getelementptr inbounds %struct.input_dev, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %evbit.i20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %evbit.i20, align 4
  %37 = and i32 %36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i21 = icmp eq i32 %37, 0
  br i1 %tobool.not.i21, label %if.then8.kbd_is_hw_raw.exit35_crit_edge, label %lor.lhs.false.i24

if.then8.kbd_is_hw_raw.exit35_crit_edge:          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %kbd_is_hw_raw.exit35

lor.lhs.false.i24:                                ; preds = %if.then8
  %mscbit.i22 = getelementptr inbounds %struct.input_dev, ptr %34, i32 0, i32 9
  %38 = ptrtoint ptr %mscbit.i22 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %mscbit.i22, align 4
  %40 = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool3.not.i23 = icmp eq i32 %40, 0
  br i1 %tobool3.not.i23, label %lor.lhs.false.i24.kbd_is_hw_raw.exit35_crit_edge, label %if.end.i27

lor.lhs.false.i24.kbd_is_hw_raw.exit35_crit_edge: ; preds = %lor.lhs.false.i24
  call void @__sanitizer_cov_trace_pc() #18
  br label %kbd_is_hw_raw.exit35

if.end.i27:                                       ; preds = %lor.lhs.false.i24
  %id.i25 = getelementptr inbounds %struct.input_dev, ptr %34, i32 0, i32 3
  %41 = ptrtoint ptr %id.i25 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %id.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %42)
  %cmp.i26 = icmp eq i16 %42, 17
  br i1 %cmp.i26, label %land.lhs.true.i30, label %if.end.i27.kbd_is_hw_raw.exit35_crit_edge

if.end.i27.kbd_is_hw_raw.exit35_crit_edge:        ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #18
  br label %kbd_is_hw_raw.exit35

land.lhs.true.i30:                                ; preds = %if.end.i27
  %vendor.i28 = getelementptr inbounds %struct.input_dev, ptr %34, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %vendor.i28 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vendor.i28, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %44)
  %cmp7.i29 = icmp eq i16 %44, 1
  br i1 %cmp7.i29, label %land.rhs.i33, label %land.lhs.true.i30.kbd_is_hw_raw.exit35_crit_edge

land.lhs.true.i30.kbd_is_hw_raw.exit35_crit_edge: ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #18
  br label %kbd_is_hw_raw.exit35

land.rhs.i33:                                     ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #18
  %product.i31 = getelementptr inbounds %struct.input_dev, ptr %34, i32 0, i32 3, i32 2
  %45 = ptrtoint ptr %product.i31 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %product.i31, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %46)
  %cmp11.i32 = icmp eq i16 %46, 1
  br label %kbd_is_hw_raw.exit35

kbd_is_hw_raw.exit35:                             ; preds = %land.rhs.i33, %land.lhs.true.i30.kbd_is_hw_raw.exit35_crit_edge, %if.end.i27.kbd_is_hw_raw.exit35_crit_edge, %lor.lhs.false.i24.kbd_is_hw_raw.exit35_crit_edge, %if.then8.kbd_is_hw_raw.exit35_crit_edge
  %retval.0.i34 = phi i1 [ false, %lor.lhs.false.i24.kbd_is_hw_raw.exit35_crit_edge ], [ false, %if.then8.kbd_is_hw_raw.exit35_crit_edge ], [ false, %land.lhs.true.i30.kbd_is_hw_raw.exit35_crit_edge ], [ false, %if.end.i27.kbd_is_hw_raw.exit35_crit_edge ], [ %cmp11.i32, %land.rhs.i33 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %47 = load i32, ptr @fg_console, align 4
  %arrayidx.i36 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i36, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %param.i) #16
  %50 = getelementptr inbounds %struct.keyboard_notifier_param, ptr %param.i, i32 0, i32 1
  %51 = getelementptr inbounds %struct.keyboard_notifier_param, ptr %param.i, i32 0, i32 2
  %52 = getelementptr inbounds %struct.keyboard_notifier_param, ptr %param.i, i32 0, i32 3
  %53 = getelementptr inbounds %struct.keyboard_notifier_param, ptr %param.i, i32 0, i32 4
  %54 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %49, ptr %param.i, align 4
  %55 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %value, ptr %50, align 4
  %56 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %51, align 4
  %57 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %52, align 4
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %event_code, ptr %53, align 4
  %tty3.i = getelementptr inbounds %struct.tty_port, ptr %49, i32 0, i32 1
  %59 = ptrtoint ptr %tty3.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tty3.i, align 4
  %tobool.not.i37 = icmp eq ptr %60, null
  br i1 %tobool.not.i37, label %kbd_is_hw_raw.exit35.if.end.i45_crit_edge, label %land.lhs.true.i38

kbd_is_hw_raw.exit35.if.end.i45_crit_edge:        ; preds = %kbd_is_hw_raw.exit35
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i45

land.lhs.true.i38:                                ; preds = %kbd_is_hw_raw.exit35
  %driver_data.i = getelementptr inbounds %struct.tty_struct, ptr %60, i32 0, i32 30
  %61 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %driver_data.i, align 4
  %tobool4.not.i = icmp eq ptr %62, null
  br i1 %tobool4.not.i, label %if.then.i39, label %land.lhs.true.i38.if.end.i45_crit_edge

land.lhs.true.i38.if.end.i45_crit_edge:           ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i45

if.then.i39:                                      ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #18
  %63 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %49, ptr %driver_data.i, align 4
  br label %if.end.i45

if.end.i45:                                       ; preds = %if.then.i39, %land.lhs.true.i38.if.end.i45_crit_edge, %kbd_is_hw_raw.exit35.if.end.i45_crit_edge
  %vc_num.i40 = getelementptr inbounds %struct.vc_data, ptr %49, i32 0, i32 3
  %64 = ptrtoint ptr %vc_num.i40 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %vc_num.i40, align 4
  %idxprom.i41 = zext i16 %65 to i32
  %arrayidx6.i = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %idxprom.i41
  store ptr %arrayidx6.i, ptr @kbd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %value)
  %cmp.i42 = icmp eq i32 %value, 2
  %frombool7.i = zext i1 %cmp.i42 to i8
  store i8 %frombool7.i, ptr @rep, align 1
  %kbdmode.i43 = getelementptr [63 x %struct.kbd_struct], ptr @kbd_table, i32 0, i32 %idxprom.i41, i32 3
  %66 = ptrtoint ptr %kbdmode.i43 to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load.i44 = load i8, ptr %kbdmode.i43, align 1
  %67 = and i8 %bf.load.i44, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %67)
  %cmp8.i = icmp eq i8 %67, 4
  %cmp8.not.i = xor i1 %cmp8.i, true
  %brmerge.i = or i1 %retval.0.i34, %cmp8.not.i
  br i1 %brmerge.i, label %if.end.i45.if.end29.i_crit_edge, label %if.then15.i

if.end.i45.if.end29.i_crit_edge:                  ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i

if.then15.i:                                      ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool16.not.i = icmp eq i32 %value, 0
  %conv17.i = select i1 %tobool16.not.i, i8 -128, i8 0
  %68 = zext i32 %event_code to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %event_code, label %sw.default.i.i [
    i32 119, label %sw.bb.i.i
    i32 122, label %sw.bb3.i.i
    i32 123, label %sw.bb4.i.i
    i32 99, label %sw.bb8.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then15.i
  %tail.i.i.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %49, i32 0, i32 8
  %69 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tail.i.i.i.i, align 4
  %used.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %used.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %used.i.i.i.i, align 4
  %size.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %70, i32 0, i32 2
  %73 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %size.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp3.i.i.i.i = icmp slt i32 %72, %74
  br i1 %cmp3.i.i.i.i, label %if.then.i.i.i.i, label %if.end12.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %sw.bb.i.i
  %flags.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %70, i32 0, i32 5
  %75 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then8.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i.i.i

if.then8.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %70, i32 0, i32 6
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i.i.i, i32 %72
  %add.ptr.i.i.i.i.i46 = getelementptr i8, ptr %add.ptr.i.i.i.i.i.i, i32 %74
  %77 = ptrtoint ptr %add.ptr.i.i.i.i.i46 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %add.ptr.i.i.i.i.i46, align 1
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then8.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %78 = ptrtoint ptr %used.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %used.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %79, 1
  store i32 %inc.i.i.i.i, ptr %used.i.i.i.i, align 4
  %data.i.i.i.i.i47 = getelementptr inbounds %struct.tty_buffer, ptr %70, i32 0, i32 6
  %add.ptr.i1.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i.i47, i32 %79
  %80 = ptrtoint ptr %add.ptr.i1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -31, ptr %add.ptr.i1.i.i.i.i, align 1
  br label %put_queue.exit.i.i

if.end12.i.i.i.i:                                 ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %49, i8 noundef zeroext -31, i8 noundef zeroext 0) #16
  br label %put_queue.exit.i.i

put_queue.exit.i.i:                               ; preds = %if.end12.i.i.i.i, %if.end.i.i.i.i
  tail call void @tty_flip_buffer_push(ptr noundef %49) #16
  %or.i.i = or i8 %conv17.i, 29
  %81 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tail.i.i.i.i, align 4
  %used.i.i58.i.i = getelementptr inbounds %struct.tty_buffer, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %used.i.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %used.i.i58.i.i, align 4
  %size.i.i59.i.i = getelementptr inbounds %struct.tty_buffer, ptr %82, i32 0, i32 2
  %85 = ptrtoint ptr %size.i.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %size.i.i59.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp3.i.i60.i.i = icmp slt i32 %84, %86
  br i1 %cmp3.i.i60.i.i, label %if.then.i.i64.i.i, label %if.end12.i.i74.i.i

if.then.i.i64.i.i:                                ; preds = %put_queue.exit.i.i
  %flags.i.i61.i.i = getelementptr inbounds %struct.tty_buffer, ptr %82, i32 0, i32 5
  %87 = ptrtoint ptr %flags.i.i61.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags.i.i61.i.i, align 4
  %and.i.i62.i.i = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i62.i.i)
  %tobool.not.i.i63.i.i = icmp eq i32 %and.i.i62.i.i, 0
  br i1 %tobool.not.i.i63.i.i, label %if.then8.i.i68.i.i, label %if.then.i.i64.i.i.if.end.i.i72.i.i_crit_edge

if.then.i.i64.i.i.if.end.i.i72.i.i_crit_edge:     ; preds = %if.then.i.i64.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i72.i.i

if.then8.i.i68.i.i:                               ; preds = %if.then.i.i64.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i65.i.i = getelementptr inbounds %struct.tty_buffer, ptr %82, i32 0, i32 6
  %add.ptr.i.i.i.i66.i.i = getelementptr i8, ptr %data.i.i.i.i65.i.i, i32 %84
  %add.ptr.i.i.i67.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i66.i.i, i32 %86
  %89 = ptrtoint ptr %add.ptr.i.i.i67.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %add.ptr.i.i.i67.i.i, align 1
  br label %if.end.i.i72.i.i

if.end.i.i72.i.i:                                 ; preds = %if.then8.i.i68.i.i, %if.then.i.i64.i.i.if.end.i.i72.i.i_crit_edge
  %90 = ptrtoint ptr %used.i.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %used.i.i58.i.i, align 4
  %inc.i.i69.i.i = add i32 %91, 1
  store i32 %inc.i.i69.i.i, ptr %used.i.i58.i.i, align 4
  %data.i.i.i70.i.i = getelementptr inbounds %struct.tty_buffer, ptr %82, i32 0, i32 6
  %add.ptr.i1.i.i71.i.i = getelementptr i8, ptr %data.i.i.i70.i.i, i32 %91
  %92 = ptrtoint ptr %add.ptr.i1.i.i71.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %or.i.i, ptr %add.ptr.i1.i.i71.i.i, align 1
  br label %put_queue.exit75.i.i

if.end12.i.i74.i.i:                               ; preds = %put_queue.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i73.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %49, i8 noundef zeroext %or.i.i, i8 noundef zeroext 0) #16
  br label %put_queue.exit75.i.i

put_queue.exit75.i.i:                             ; preds = %if.end12.i.i74.i.i, %if.end.i.i72.i.i
  tail call void @tty_flip_buffer_push(ptr noundef %49) #16
  %93 = or i8 %conv17.i, 69
  %94 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tail.i.i.i.i, align 4
  %used.i.i78.i.i = getelementptr inbounds %struct.tty_buffer, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %used.i.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %used.i.i78.i.i, align 4
  %size.i.i79.i.i = getelementptr inbounds %struct.tty_buffer, ptr %95, i32 0, i32 2
  %98 = ptrtoint ptr %size.i.i79.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %size.i.i79.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %99)
  %cmp3.i.i80.i.i = icmp slt i32 %97, %99
  br i1 %cmp3.i.i80.i.i, label %if.then.i.i84.i.i, label %if.end12.i.i94.i.i

if.then.i.i84.i.i:                                ; preds = %put_queue.exit75.i.i
  %flags.i.i81.i.i = getelementptr inbounds %struct.tty_buffer, ptr %95, i32 0, i32 5
  %100 = ptrtoint ptr %flags.i.i81.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %flags.i.i81.i.i, align 4
  %and.i.i82.i.i = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i82.i.i)
  %tobool.not.i.i83.i.i = icmp eq i32 %and.i.i82.i.i, 0
  br i1 %tobool.not.i.i83.i.i, label %if.then8.i.i88.i.i, label %if.then.i.i84.i.i.if.end.i.i92.i.i_crit_edge

if.then.i.i84.i.i.if.end.i.i92.i.i_crit_edge:     ; preds = %if.then.i.i84.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i92.i.i

if.then8.i.i88.i.i:                               ; preds = %if.then.i.i84.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i85.i.i = getelementptr inbounds %struct.tty_buffer, ptr %95, i32 0, i32 6
  %add.ptr.i.i.i.i86.i.i = getelementptr i8, ptr %data.i.i.i.i85.i.i, i32 %97
  %add.ptr.i.i.i87.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i86.i.i, i32 %99
  %102 = ptrtoint ptr %add.ptr.i.i.i87.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %add.ptr.i.i.i87.i.i, align 1
  br label %if.end.i.i92.i.i

if.end.i.i92.i.i:                                 ; preds = %if.then8.i.i88.i.i, %if.then.i.i84.i.i.if.end.i.i92.i.i_crit_edge
  %103 = ptrtoint ptr %used.i.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %used.i.i78.i.i, align 4
  %inc.i.i89.i.i = add i32 %104, 1
  store i32 %inc.i.i89.i.i, ptr %used.i.i78.i.i, align 4
  %data.i.i.i90.i.i = getelementptr inbounds %struct.tty_buffer, ptr %95, i32 0, i32 6
  %add.ptr.i1.i.i91.i.i = getelementptr i8, ptr %data.i.i.i90.i.i, i32 %104
  %105 = ptrtoint ptr %add.ptr.i1.i.i91.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %93, ptr %add.ptr.i1.i.i91.i.i, align 1
  br label %cleanup.sink.split.i.i

if.end12.i.i94.i.i:                               ; preds = %put_queue.exit75.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i93.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %49, i8 noundef zeroext %93, i8 noundef zeroext 0) #16
  br label %cleanup.sink.split.i.i

sw.bb3.i.i:                                       ; preds = %if.then15.i
  br i1 %tobool16.not.i, label %sw.bb3.i.i.if.end29.i_crit_edge, label %if.then.i266.i

sw.bb3.i.i.if.end29.i_crit_edge:                  ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i

if.then.i266.i:                                   ; preds = %sw.bb3.i.i
  %tail.i.i96.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %49, i32 0, i32 8
  %106 = ptrtoint ptr %tail.i.i96.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tail.i.i96.i.i, align 4
  %used.i.i97.i.i = getelementptr inbounds %struct.tty_buffer, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %used.i.i97.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %used.i.i97.i.i, align 4
  %size.i.i98.i.i = getelementptr inbounds %struct.tty_buffer, ptr %107, i32 0, i32 2
  %110 = ptrtoint ptr %size.i.i98.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %size.i.i98.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %111)
  %cmp3.i.i99.i.i = icmp slt i32 %109, %111
  br i1 %cmp3.i.i99.i.i, label %if.then.i.i103.i.i, label %if.end12.i.i113.i.i

if.then.i.i103.i.i:                               ; preds = %if.then.i266.i
  %flags.i.i100.i.i = getelementptr inbounds %struct.tty_buffer, ptr %107, i32 0, i32 5
  %112 = ptrtoint ptr %flags.i.i100.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %flags.i.i100.i.i, align 4
  %and.i.i101.i.i = and i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i101.i.i)
  %tobool.not.i.i102.i.i = icmp eq i32 %and.i.i101.i.i, 0
  br i1 %tobool.not.i.i102.i.i, label %if.then8.i.i107.i.i, label %if.then.i.i103.i.i.if.end.i.i111.i.i_crit_edge

if.then.i.i103.i.i.if.end.i.i111.i.i_crit_edge:   ; preds = %if.then.i.i103.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i111.i.i

if.then8.i.i107.i.i:                              ; preds = %if.then.i.i103.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i104.i.i = getelementptr inbounds %struct.tty_buffer, ptr %107, i32 0, i32 6
  %add.ptr.i.i.i.i105.i.i = getelementptr i8, ptr %data.i.i.i.i104.i.i, i32 %109
  %add.ptr.i.i.i106.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i105.i.i, i32 %111
  %114 = ptrtoint ptr %add.ptr.i.i.i106.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %add.ptr.i.i.i106.i.i, align 1
  br label %if.end.i.i111.i.i

if.end.i.i111.i.i:                                ; preds = %if.then8.i.i107.i.i, %if.then.i.i103.i.i.if.end.i.i111.i.i_crit_edge
  %115 = ptrtoint ptr %used.i.i97.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %used.i.i97.i.i, align 4
  %inc.i.i108.i.i = add i32 %116, 1
  store i32 %inc.i.i108.i.i, ptr %used.i.i97.i.i, align 4
  %data.i.i.i109.i.i = getelementptr inbounds %struct.tty_buffer, ptr %107, i32 0, i32 6
  %add.ptr.i1.i.i110.i.i = getelementptr i8, ptr %data.i.i.i109.i.i, i32 %116
  %117 = ptrtoint ptr %add.ptr.i1.i.i110.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 -14, ptr %add.ptr.i1.i.i110.i.i, align 1
  br label %cleanup.sink.split.i.i

if.end12.i.i113.i.i:                              ; preds = %if.then.i266.i
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i112.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %49, i8 noundef zeroext -14, i8 noundef zeroext 0) #16
  br label %cleanup.sink.split.i.i

sw.bb4.i.i:                                       ; preds = %if.then15.i
  br i1 %tobool16.not.i, label %sw.bb4.i.i.if.end29.i_crit_edge, label %if.then6.i.i

sw.bb4.i.i.if.end29.i_crit_edge:                  ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i

if.then6.i.i:                                     ; preds = %sw.bb4.i.i
  %tail.i.i115.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %49, i32 0, i32 8
  %118 = ptrtoint ptr %tail.i.i115.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %tail.i.i115.i.i, align 4
  %used.i.i116.i.i = getelementptr inbounds %struct.tty_buffer, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %used.i.i116.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %used.i.i116.i.i, align 4
  %size.i.i117.i.i = getelementptr inbounds %struct.tty_buffer, ptr %119, i32 0, i32 2
  %122 = ptrtoint ptr %size.i.i117.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %size.i.i117.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %123)
  %cmp3.i.i118.i.i = icmp slt i32 %121, %123
  br i1 %cmp3.i.i118.i.i, label %if.then.i.i122.i.i, label %if.end12.i.i132.i.i

if.then.i.i122.i.i:                               ; preds = %if.then6.i.i
  %flags.i.i119.i.i = getelementptr inbounds %struct.tty_buffer, ptr %119, i32 0, i32 5
  %124 = ptrtoint ptr %flags.i.i119.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %flags.i.i119.i.i, align 4
  %and.i.i120.i.i = and i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i120.i.i)
  %tobool.not.i.i121.i.i = icmp eq i32 %and.i.i120.i.i, 0
  br i1 %tobool.not.i.i121.i.i, label %if.then8.i.i126.i.i, label %if.then.i.i122.i.i.if.end.i.i130.i.i_crit_edge

if.then.i.i122.i.i.if.end.i.i130.i.i_crit_edge:   ; preds = %if.then.i.i122.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i130.i.i

if.then8.i.i126.i.i:                              ; preds = %if.then.i.i122.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i123.i.i = getelementptr inbounds %struct.tty_buffer, ptr %119, i32 0, i32 6
  %add.ptr.i.i.i.i124.i.i = getelementptr i8, ptr %data.i.i.i.i123.i.i, i32 %121
  %add.ptr.i.i.i125.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i124.i.i, i32 %123
  %126 = ptrtoint ptr %add.ptr.i.i.i125.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %add.ptr.i.i.i125.i.i, align 1
  br label %if.end.i.i130.i.i

if.end.i.i130.i.i:                                ; preds = %if.then8.i.i126.i.i, %if.then.i.i122.i.i.if.end.i.i130.i.i_crit_edge
  %127 = ptrtoint ptr %used.i.i116.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %used.i.i116.i.i, align 4
  %inc.i.i127.i.i = add i32 %128, 1
  store i32 %inc.i.i127.i.i, ptr %used.i.i116.i.i, align 4
  %data.i.i.i128.i.i = getelementptr inbounds %struct.tty_buffer, ptr %119, i32 0, i32 6
  %add.ptr.i1.i.i129.i.i = getelementptr i8, ptr %data.i.i.i128.i.i, i32 %128
  %129 = ptrtoint ptr %add.ptr.i1.i.i129.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 -15, ptr %add.ptr.i1.i.i129.i.i, align 1
  br label %cleanup.sink.split.i.i

if.end12.i.i132.i.i:                              ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i131.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %49, i8 noundef zeroext -15, i8 noundef zeroext 0) #16
  br label %cleanup.sink.split.i.i

sw.bb8.i.i:                                       ; preds = %if.then15.i
  %130 = load volatile i32, ptr getelementptr inbounds ([24 x i32], ptr @key_down, i32 0, i32 1), align 4
  %131 = and i32 %130, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool9.not.i.i = icmp eq i32 %131, 0
  br i1 %tobool9.not.i.i, label %lor.lhs.false.i.i, label %sw.bb8.i.i.if.then12.i.i_crit_edge

sw.bb8.i.i.if.then12.i.i_crit_edge:               ; preds = %sw.bb8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then12.i.i

lor.lhs.false.i.i:                                ; preds = %sw.bb8.i.i
  %132 = load volatile i32, ptr getelementptr inbounds ([24 x i32], ptr @key_down, i32 0, i32 3), align 4
  %133 = and i32 %132, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool11.not.i.i = icmp eq i32 %133, 0
  br i1 %tobool11.not.i.i, label %if.else.i267.i, label %lor.lhs.false.i.i.if.then12.i.i_crit_edge

lor.lhs.false.i.i.if.then12.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then12.i.i

if.then12.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then12.i.i_crit_edge, %sw.bb8.i.i.if.then12.i.i_crit_edge
  %134 = or i8 %conv17.i, 84
  %tail.i.i134.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %49, i32 0, i32 8
  %135 = ptrtoint ptr %tail.i.i134.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %tail.i.i134.i.i, align 4
  %used.i.i135.i.i = getelementptr inbounds %struct.tty_buffer, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %used.i.i135.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %used.i.i135.i.i, align 4
  %size.i.i136.i.i = getelementptr inbounds %struct.tty_buffer, ptr %136, i32 0, i32 2
  %139 = ptrtoint ptr %size.i.i136.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %size.i.i136.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %140)
  %cmp3.i.i137.i.i = icmp slt i32 %138, %140
  br i1 %cmp3.i.i137.i.i, label %if.then.i.i141.i.i, label %if.end12.i.i151.i.i

if.then.i.i141.i.i:                               ; preds = %if.then12.i.i
  %flags.i.i138.i.i = getelementptr inbounds %struct.tty_buffer, ptr %136, i32 0, i32 5
  %141 = ptrtoint ptr %flags.i.i138.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %flags.i.i138.i.i, align 4
  %and.i.i139.i.i = and i32 %142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i139.i.i)
  %tobool.not.i.i140.i.i = icmp eq i32 %and.i.i139.i.i, 0
  br i1 %tobool.not.i.i140.i.i, label %if.then8.i.i145.i.i, label %if.then.i.i141.i.i.if.end.i.i149.i.i_crit_edge

if.then.i.i141.i.i.if.end.i.i149.i.i_crit_edge:   ; preds = %if.then.i.i141.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i149.i.i

if.then8.i.i145.i.i:                              ; preds = %if.then.i.i141.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i142.i.i = getelementptr inbounds %struct.tty_buffer, ptr %136, i32 0, i32 6
  %add.ptr.i.i.i.i143.i.i = getelementptr i8, ptr %data.i.i.i.i142.i.i, i32 %138
  %add.ptr.i.i.i144.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i143.i.i, i32 %140
  %143 = ptrtoint ptr %add.ptr.i.i.i144.i.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %add.ptr.i.i.i144.i.i, align 1
  br label %if.end.i.i149.i.i

if.end.i.i149.i.i:                                ; preds = %if.then8.i.i145.i.i, %if.then.i.i141.i.i.if.end.i.i149.i.i_crit_edge
  %144 = ptrtoint ptr %used.i.i135.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %used.i.i135.i.i, align 4
  %inc.i.i146.i.i = add i32 %145, 1
  store i32 %inc.i.i146.i.i, ptr %used.i.i135.i.i, align 4
  %data.i.i.i147.i.i = getelementptr inbounds %struct.tty_buffer, ptr %136, i32 0, i32 6
  %add.ptr.i1.i.i148.i.i = getelementptr i8, ptr %data.i.i.i147.i.i, i32 %145
  %146 = ptrtoint ptr %add.ptr.i1.i.i148.i.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %134, ptr %add.ptr.i1.i.i148.i.i, align 1
  br label %cleanup.sink.split.i.i

if.end12.i.i151.i.i:                              ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i150.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %49, i8 noundef zeroext %134, i8 noundef zeroext 0) #16
  br label %cleanup.sink.split.i.i

if.else.i267.i:                                   ; preds = %lor.lhs.false.i.i
  %tail.i.i153.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %49, i32 0, i32 8
  %147 = ptrtoint ptr %tail.i.i153.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %tail.i.i153.i.i, align 4
  %used.i.i154.i.i = getelementptr inbounds %struct.tty_buffer, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %used.i.i154.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %used.i.i154.i.i, align 4
  %size.i.i155.i.i = getelementptr inbounds %struct.tty_buffer, ptr %148, i32 0, i32 2
  %151 = ptrtoint ptr %size.i.i155.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %size.i.i155.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %150, i32 %152)
  %cmp3.i.i156.i.i = icmp slt i32 %150, %152
  br i1 %cmp3.i.i156.i.i, label %if.then.i.i160.i.i, label %if.end12.i.i170.i.i

if.then.i.i160.i.i:                               ; preds = %if.else.i267.i
  %flags.i.i157.i.i = getelementptr inbounds %struct.tty_buffer, ptr %148, i32 0, i32 5
  %153 = ptrtoint ptr %flags.i.i157.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %flags.i.i157.i.i, align 4
  %and.i.i158.i.i = and i32 %154, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i158.i.i)
  %tobool.not.i.i159.i.i = icmp eq i32 %and.i.i158.i.i, 0
  br i1 %tobool.not.i.i159.i.i, label %if.then8.i.i164.i.i, label %if.then.i.i160.i.i.if.end.i.i168.i.i_crit_edge

if.then.i.i160.i.i.if.end.i.i168.i.i_crit_edge:   ; preds = %if.then.i.i160.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i168.i.i

if.then8.i.i164.i.i:                              ; preds = %if.then.i.i160.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i161.i.i = getelementptr inbounds %struct.tty_buffer, ptr %148, i32 0, i32 6
  %add.ptr.i.i.i.i162.i.i = getelementptr i8, ptr %data.i.i.i.i161.i.i, i32 %150
  %add.ptr.i.i.i163.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i162.i.i, i32 %152
  %155 = ptrtoint ptr %add.ptr.i.i.i163.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %add.ptr.i.i.i163.i.i, align 1
  br label %if.end.i.i168.i.i

if.end.i.i168.i.i:                                ; preds = %if.then8.i.i164.i.i, %if.then.i.i160.i.i.if.end.i.i168.i.i_crit_edge
  %156 = ptrtoint ptr %used.i.i154.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %used.i.i154.i.i, align 4
  %inc.i.i165.i.i = add i32 %157, 1
  store i32 %inc.i.i165.i.i, ptr %used.i.i154.i.i, align 4
  %data.i.i.i166.i.i = getelementptr inbounds %struct.tty_buffer, ptr %148, i32 0, i32 6
  %add.ptr.i1.i.i167.i.i = getelementptr i8, ptr %data.i.i.i166.i.i, i32 %157
  %158 = ptrtoint ptr %add.ptr.i1.i.i167.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 -32, ptr %add.ptr.i1.i.i167.i.i, align 1
  br label %put_queue.exit171.i.i

if.end12.i.i170.i.i:                              ; preds = %if.else.i267.i
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i169.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %49, i8 noundef zeroext -32, i8 noundef zeroext 0) #16
  br label %put_queue.exit171.i.i

put_queue.exit171.i.i:                            ; preds = %if.end12.i.i170.i.i, %if.end.i.i168.i.i
  tail call void @tty_flip_buffer_push(ptr noundef %49) #16
  %or16.i.i = or i8 %conv17.i, 42
  %159 = ptrtoint ptr %tail.i.i153.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %tail.i.i153.i.i, align 4
  %used.i.i174.i.i = getelementptr inbounds %struct.tty_buffer, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %used.i.i174.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %used.i.i174.i.i, align 4
  %size.i.i175.i.i = getelementptr inbounds %struct.tty_buffer, ptr %160, i32 0, i32 2
  %163 = ptrtoint ptr %size.i.i175.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %size.i.i175.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %162, i32 %164)
  %cmp3.i.i176.i.i = icmp slt i32 %162, %164
  br i1 %cmp3.i.i176.i.i, label %if.then.i.i180.i.i, label %if.end12.i.i190.i.i

if.then.i.i180.i.i:                               ; preds = %put_queue.exit171.i.i
  %flags.i.i177.i.i = getelementptr inbounds %struct.tty_buffer, ptr %160, i32 0, i32 5
  %165 = ptrtoint ptr %flags.i.i177.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %flags.i.i177.i.i, align 4
  %and.i.i178.i.i = and i32 %166, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i178.i.i)
  %tobool.not.i.i179.i.i = icmp eq i32 %and.i.i178.i.i, 0
  br i1 %tobool.not.i.i179.i.i, label %if.then8.i.i184.i.i, label %if.then.i.i180.i.i.if.end.i.i188.i.i_crit_edge

if.then.i.i180.i.i.if.end.i.i188.i.i_crit_edge:   ; preds = %if.then.i.i180.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i188.i.i

if.then8.i.i184.i.i:                              ; preds = %if.then.i.i180.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i181.i.i = getelementptr inbounds %struct.tty_buffer, ptr %160, i32 0, i32 6
  %add.ptr.i.i.i.i182.i.i = getelementptr i8, ptr %data.i.i.i.i181.i.i, i32 %162
  %add.ptr.i.i.i183.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i182.i.i, i32 %164
  %167 = ptrtoint ptr %add.ptr.i.i.i183.i.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %add.ptr.i.i.i183.i.i, align 1
  br label %if.end.i.i188.i.i

if.end.i.i188.i.i:                                ; preds = %if.then8.i.i184.i.i, %if.then.i.i180.i.i.if.end.i.i188.i.i_crit_edge
  %168 = ptrtoint ptr %used.i.i174.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %used.i.i174.i.i, align 4
  %inc.i.i185.i.i = add i32 %169, 1
  store i32 %inc.i.i185.i.i, ptr %used.i.i174.i.i, align 4
  %data.i.i.i186.i.i = getelementptr inbounds %struct.tty_buffer, ptr %160, i32 0, i32 6
  %add.ptr.i1.i.i187.i.i = getelementptr i8, ptr %data.i.i.i186.i.i, i32 %169
  %170 = ptrtoint ptr %add.ptr.i1.i.i187.i.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %or16.i.i, ptr %add.ptr.i1.i.i187.i.i, align 1
  br label %put_queue.exit191.i.i

if.end12.i.i190.i.i:                              ; preds = %put_queue.exit171.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i189.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %49, i8 noundef zeroext %or16.i.i, i8 noundef zeroext 0) #16
  br label %put_queue.exit191.i.i

put_queue.exit191.i.i:                            ; preds = %if.end12.i.i190.i.i, %if.end.i.i188.i.i
  tail call void @tty_flip_buffer_push(ptr noundef %49) #16
  %171 = ptrtoint ptr %tail.i.i153.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %tail.i.i153.i.i, align 4
  %used.i.i193.i.i = getelementptr inbounds %struct.tty_buffer, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %used.i.i193.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %used.i.i193.i.i, align 4
  %size.i.i194.i.i = getelementptr inbounds %struct.tty_buffer, ptr %172, i32 0, i32 2
  %175 = ptrtoint ptr %size.i.i194.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %size.i.i194.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %174, i32 %176)
  %cmp3.i.i195.i.i = icmp slt i32 %174, %176
  br i1 %cmp3.i.i195.i.i, label %if.then.i.i199.i.i, label %if.end12.i.i209.i.i

if.then.i.i199.i.i:                               ; preds = %put_queue.exit191.i.i
  %flags.i.i196.i.i = getelementptr inbounds %struct.tty_buffer, ptr %172, i32 0, i32 5
  %177 = ptrtoint ptr %flags.i.i196.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %flags.i.i196.i.i, align 4
  %and.i.i197.i.i = and i32 %178, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i197.i.i)
  %tobool.not.i.i198.i.i = icmp eq i32 %and.i.i197.i.i, 0
  br i1 %tobool.not.i.i198.i.i, label %if.then8.i.i203.i.i, label %if.then.i.i199.i.i.if.end.i.i207.i.i_crit_edge

if.then.i.i199.i.i.if.end.i.i207.i.i_crit_edge:   ; preds = %if.then.i.i199.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i207.i.i

if.then8.i.i203.i.i:                              ; preds = %if.then.i.i199.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i200.i.i = getelementptr inbounds %struct.tty_buffer, ptr %172, i32 0, i32 6
  %add.ptr.i.i.i.i201.i.i = getelementptr i8, ptr %data.i.i.i.i200.i.i, i32 %174
  %add.ptr.i.i.i202.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i201.i.i, i32 %176
  %179 = ptrtoint ptr %add.ptr.i.i.i202.i.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %add.ptr.i.i.i202.i.i, align 1
  br label %if.end.i.i207.i.i

if.end.i.i207.i.i:                                ; preds = %if.then8.i.i203.i.i, %if.then.i.i199.i.i.if.end.i.i207.i.i_crit_edge
  %180 = ptrtoint ptr %used.i.i193.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %used.i.i193.i.i, align 4
  %inc.i.i204.i.i = add i32 %181, 1
  store i32 %inc.i.i204.i.i, ptr %used.i.i193.i.i, align 4
  %data.i.i.i205.i.i = getelementptr inbounds %struct.tty_buffer, ptr %172, i32 0, i32 6
  %add.ptr.i1.i.i206.i.i = getelementptr i8, ptr %data.i.i.i205.i.i, i32 %181
  %182 = ptrtoint ptr %add.ptr.i1.i.i206.i.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 -32, ptr %add.ptr.i1.i.i206.i.i, align 1
  br label %put_queue.exit210.i.i

if.end12.i.i209.i.i:                              ; preds = %put_queue.exit191.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i208.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %49, i8 noundef zeroext -32, i8 noundef zeroext 0) #16
  br label %put_queue.exit210.i.i

put_queue.exit210.i.i:                            ; preds = %if.end12.i.i209.i.i, %if.end.i.i207.i.i
  tail call void @tty_flip_buffer_push(ptr noundef %49) #16
  %183 = or i8 %conv17.i, 55
  %184 = ptrtoint ptr %tail.i.i153.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %tail.i.i153.i.i, align 4
  %used.i.i213.i.i = getelementptr inbounds %struct.tty_buffer, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %used.i.i213.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %used.i.i213.i.i, align 4
  %size.i.i214.i.i = getelementptr inbounds %struct.tty_buffer, ptr %185, i32 0, i32 2
  %188 = ptrtoint ptr %size.i.i214.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %size.i.i214.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %187, i32 %189)
  %cmp3.i.i215.i.i = icmp slt i32 %187, %189
  br i1 %cmp3.i.i215.i.i, label %if.then.i.i219.i.i, label %if.end12.i.i229.i.i

if.then.i.i219.i.i:                               ; preds = %put_queue.exit210.i.i
  %flags.i.i216.i.i = getelementptr inbounds %struct.tty_buffer, ptr %185, i32 0, i32 5
  %190 = ptrtoint ptr %flags.i.i216.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %flags.i.i216.i.i, align 4
  %and.i.i217.i.i = and i32 %191, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i217.i.i)
  %tobool.not.i.i218.i.i = icmp eq i32 %and.i.i217.i.i, 0
  br i1 %tobool.not.i.i218.i.i, label %if.then8.i.i223.i.i, label %if.then.i.i219.i.i.if.end.i.i227.i.i_crit_edge

if.then.i.i219.i.i.if.end.i.i227.i.i_crit_edge:   ; preds = %if.then.i.i219.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i227.i.i

if.then8.i.i223.i.i:                              ; preds = %if.then.i.i219.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i220.i.i = getelementptr inbounds %struct.tty_buffer, ptr %185, i32 0, i32 6
  %add.ptr.i.i.i.i221.i.i = getelementptr i8, ptr %data.i.i.i.i220.i.i, i32 %187
  %add.ptr.i.i.i222.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i221.i.i, i32 %189
  %192 = ptrtoint ptr %add.ptr.i.i.i222.i.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 0, ptr %add.ptr.i.i.i222.i.i, align 1
  br label %if.end.i.i227.i.i

if.end.i.i227.i.i:                                ; preds = %if.then8.i.i223.i.i, %if.then.i.i219.i.i.if.end.i.i227.i.i_crit_edge
  %193 = ptrtoint ptr %used.i.i213.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %used.i.i213.i.i, align 4
  %inc.i.i224.i.i = add i32 %194, 1
  store i32 %inc.i.i224.i.i, ptr %used.i.i213.i.i, align 4
  %data.i.i.i225.i.i = getelementptr inbounds %struct.tty_buffer, ptr %185, i32 0, i32 6
  %add.ptr.i1.i.i226.i.i = getelementptr i8, ptr %data.i.i.i225.i.i, i32 %194
  %195 = ptrtoint ptr %add.ptr.i1.i.i226.i.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %183, ptr %add.ptr.i1.i.i226.i.i, align 1
  br label %cleanup.sink.split.i.i

if.end12.i.i229.i.i:                              ; preds = %put_queue.exit210.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i228.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %49, i8 noundef zeroext %183, i8 noundef zeroext 0) #16
  br label %cleanup.sink.split.i.i

sw.default.i.i:                                   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %event_code)
  %cmp.i.i = icmp ugt i32 %event_code, 255
  br i1 %cmp.i.i, label %sw.default.i.i.if.end29.i_crit_edge, label %if.end22.i.i

sw.default.i.i.if.end29.i_crit_edge:              ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i

if.end22.i.i:                                     ; preds = %sw.default.i.i
  %arrayidx.i.i = getelementptr [256 x i16], ptr @x86_keycodes, i32 0, i32 %event_code
  %196 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %197)
  %tobool24.not.i.i = icmp eq i16 %197, 0
  br i1 %tobool24.not.i.i, label %land.lhs.true22.i, label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.end22.i.i
  %198 = and i16 %197, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %198)
  %tobool27.not.i.i = icmp eq i16 %198, 0
  br i1 %tobool27.not.i.i, label %if.end26.i.i.if.end29.i.i_crit_edge, label %if.then28.i.i

if.end26.i.i.if.end29.i.i_crit_edge:              ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i.i

if.then28.i.i:                                    ; preds = %if.end26.i.i
  %tail.i.i231.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %49, i32 0, i32 8
  %199 = ptrtoint ptr %tail.i.i231.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %tail.i.i231.i.i, align 4
  %used.i.i232.i.i = getelementptr inbounds %struct.tty_buffer, ptr %200, i32 0, i32 1
  %201 = ptrtoint ptr %used.i.i232.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %used.i.i232.i.i, align 4
  %size.i.i233.i.i = getelementptr inbounds %struct.tty_buffer, ptr %200, i32 0, i32 2
  %203 = ptrtoint ptr %size.i.i233.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %size.i.i233.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %202, i32 %204)
  %cmp3.i.i234.i.i = icmp slt i32 %202, %204
  br i1 %cmp3.i.i234.i.i, label %if.then.i.i238.i.i, label %if.end12.i.i248.i.i

if.then.i.i238.i.i:                               ; preds = %if.then28.i.i
  %flags.i.i235.i.i = getelementptr inbounds %struct.tty_buffer, ptr %200, i32 0, i32 5
  %205 = ptrtoint ptr %flags.i.i235.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %flags.i.i235.i.i, align 4
  %and.i.i236.i.i = and i32 %206, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i236.i.i)
  %tobool.not.i.i237.i.i = icmp eq i32 %and.i.i236.i.i, 0
  br i1 %tobool.not.i.i237.i.i, label %if.then8.i.i242.i.i, label %if.then.i.i238.i.i.if.end.i.i246.i.i_crit_edge

if.then.i.i238.i.i.if.end.i.i246.i.i_crit_edge:   ; preds = %if.then.i.i238.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i246.i.i

if.then8.i.i242.i.i:                              ; preds = %if.then.i.i238.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i239.i.i = getelementptr inbounds %struct.tty_buffer, ptr %200, i32 0, i32 6
  %add.ptr.i.i.i.i240.i.i = getelementptr i8, ptr %data.i.i.i.i239.i.i, i32 %202
  %add.ptr.i.i.i241.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i240.i.i, i32 %204
  %207 = ptrtoint ptr %add.ptr.i.i.i241.i.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 0, ptr %add.ptr.i.i.i241.i.i, align 1
  br label %if.end.i.i246.i.i

if.end.i.i246.i.i:                                ; preds = %if.then8.i.i242.i.i, %if.then.i.i238.i.i.if.end.i.i246.i.i_crit_edge
  %208 = ptrtoint ptr %used.i.i232.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %used.i.i232.i.i, align 4
  %inc.i.i243.i.i = add i32 %209, 1
  store i32 %inc.i.i243.i.i, ptr %used.i.i232.i.i, align 4
  %data.i.i.i244.i.i = getelementptr inbounds %struct.tty_buffer, ptr %200, i32 0, i32 6
  %add.ptr.i1.i.i245.i.i = getelementptr i8, ptr %data.i.i.i244.i.i, i32 %209
  %210 = ptrtoint ptr %add.ptr.i1.i.i245.i.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 -32, ptr %add.ptr.i1.i.i245.i.i, align 1
  br label %put_queue.exit249.i.i

if.end12.i.i248.i.i:                              ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i247.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %49, i8 noundef zeroext -32, i8 noundef zeroext 0) #16
  br label %put_queue.exit249.i.i

put_queue.exit249.i.i:                            ; preds = %if.end12.i.i248.i.i, %if.end.i.i246.i.i
  tail call void @tty_flip_buffer_push(ptr noundef %49) #16
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %put_queue.exit249.i.i, %if.end26.i.i.if.end29.i.i_crit_edge
  %211 = trunc i16 %197 to i8
  %212 = and i8 %211, 127
  %conv.i250.i.i = or i8 %212, %conv17.i
  %tail.i.i251.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %49, i32 0, i32 8
  %213 = ptrtoint ptr %tail.i.i251.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %tail.i.i251.i.i, align 4
  %used.i.i252.i.i = getelementptr inbounds %struct.tty_buffer, ptr %214, i32 0, i32 1
  %215 = ptrtoint ptr %used.i.i252.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %used.i.i252.i.i, align 4
  %size.i.i253.i.i = getelementptr inbounds %struct.tty_buffer, ptr %214, i32 0, i32 2
  %217 = ptrtoint ptr %size.i.i253.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %size.i.i253.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %216, i32 %218)
  %cmp3.i.i254.i.i = icmp slt i32 %216, %218
  br i1 %cmp3.i.i254.i.i, label %if.then.i.i258.i.i, label %if.end12.i.i268.i.i

if.then.i.i258.i.i:                               ; preds = %if.end29.i.i
  %flags.i.i255.i.i = getelementptr inbounds %struct.tty_buffer, ptr %214, i32 0, i32 5
  %219 = ptrtoint ptr %flags.i.i255.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %flags.i.i255.i.i, align 4
  %and.i.i256.i.i = and i32 %220, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i256.i.i)
  %tobool.not.i.i257.i.i = icmp eq i32 %and.i.i256.i.i, 0
  br i1 %tobool.not.i.i257.i.i, label %if.then8.i.i262.i.i, label %if.then.i.i258.i.i.if.end.i.i266.i.i_crit_edge

if.then.i.i258.i.i.if.end.i.i266.i.i_crit_edge:   ; preds = %if.then.i.i258.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i266.i.i

if.then8.i.i262.i.i:                              ; preds = %if.then.i.i258.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i259.i.i = getelementptr inbounds %struct.tty_buffer, ptr %214, i32 0, i32 6
  %add.ptr.i.i.i.i260.i.i = getelementptr i8, ptr %data.i.i.i.i259.i.i, i32 %216
  %add.ptr.i.i.i261.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i260.i.i, i32 %218
  %221 = ptrtoint ptr %add.ptr.i.i.i261.i.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 0, ptr %add.ptr.i.i.i261.i.i, align 1
  br label %if.end.i.i266.i.i

if.end.i.i266.i.i:                                ; preds = %if.then8.i.i262.i.i, %if.then.i.i258.i.i.if.end.i.i266.i.i_crit_edge
  %222 = ptrtoint ptr %used.i.i252.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %used.i.i252.i.i, align 4
  %inc.i.i263.i.i = add i32 %223, 1
  store i32 %inc.i.i263.i.i, ptr %used.i.i252.i.i, align 4
  %data.i.i.i264.i.i = getelementptr inbounds %struct.tty_buffer, ptr %214, i32 0, i32 6
  %add.ptr.i1.i.i265.i.i = getelementptr i8, ptr %data.i.i.i264.i.i, i32 %223
  %224 = ptrtoint ptr %add.ptr.i1.i.i265.i.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %conv.i250.i.i, ptr %add.ptr.i1.i.i265.i.i, align 1
  br label %cleanup.sink.split.i.i

if.end12.i.i268.i.i:                              ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i267.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %49, i8 noundef zeroext %conv.i250.i.i, i8 noundef zeroext 0) #16
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.end12.i.i268.i.i, %if.end.i.i266.i.i, %if.end12.i.i229.i.i, %if.end.i.i227.i.i, %if.end12.i.i151.i.i, %if.end.i.i149.i.i, %if.end12.i.i132.i.i, %if.end.i.i130.i.i, %if.end12.i.i113.i.i, %if.end.i.i111.i.i, %if.end12.i.i94.i.i, %if.end.i.i92.i.i
  tail call void @tty_flip_buffer_push(ptr noundef %49) #16
  br label %if.end29.i

land.lhs.true22.i:                                ; preds = %if.end22.i.i
  %call23.i = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.kbd_keycode) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true22.i.if.end29.i_crit_edge, label %do.end.i

land.lhs.true22.i.if.end29.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i

do.end.i:                                         ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #18
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %event_code) #19
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.end.i, %land.lhs.true22.i.if.end29.i_crit_edge, %cleanup.sink.split.i.i, %sw.default.i.i.if.end29.i_crit_edge, %sw.bb4.i.i.if.end29.i_crit_edge, %sw.bb3.i.i.if.end29.i_crit_edge, %if.end.i45.if.end29.i_crit_edge
  %225 = load ptr, ptr @kbd, align 4
  %kbdmode30.i = getelementptr inbounds %struct.kbd_struct, ptr %225, i32 0, i32 3
  %226 = ptrtoint ptr %kbdmode30.i to i32
  call void @__asan_load1_noabort(i32 %226)
  %bf.load31.i = load i8, ptr %kbdmode30.i, align 1
  %227 = and i8 %bf.load31.i, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %227)
  %cmp35.i = icmp eq i8 %227, 2
  br i1 %cmp35.i, label %if.then37.i, label %if.end29.i.if.end52.i_crit_edge

if.end29.i.if.end52.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52.i

if.then37.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %event_code)
  %cmp38.i = icmp ult i32 %event_code, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool41.not.i = icmp eq i32 %value, 0
  br i1 %cmp38.i, label %if.then40.i, label %if.else.i

if.then40.i:                                      ; preds = %if.then37.i
  %shl44.i = select i1 %tobool41.not.i, i32 128, i32 0
  %or.i = or i32 %shl44.i, %event_code
  %conv.i.i = trunc i32 %or.i to i8
  %tail.i.i.i48 = getelementptr inbounds %struct.tty_bufhead, ptr %49, i32 0, i32 8
  %228 = ptrtoint ptr %tail.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %tail.i.i.i48, align 4
  %used.i.i.i49 = getelementptr inbounds %struct.tty_buffer, ptr %229, i32 0, i32 1
  %230 = ptrtoint ptr %used.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %used.i.i.i49, align 4
  %size.i.i.i50 = getelementptr inbounds %struct.tty_buffer, ptr %229, i32 0, i32 2
  %232 = ptrtoint ptr %size.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %size.i.i.i50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %231, i32 %233)
  %cmp3.i.i.i51 = icmp slt i32 %231, %233
  br i1 %cmp3.i.i.i51, label %if.then.i.i.i55, label %if.end12.i.i.i63

if.then.i.i.i55:                                  ; preds = %if.then40.i
  %flags.i.i.i52 = getelementptr inbounds %struct.tty_buffer, ptr %229, i32 0, i32 5
  %234 = ptrtoint ptr %flags.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %flags.i.i.i52, align 4
  %and.i.i.i53 = and i32 %235, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i53)
  %tobool.not.i.i.i54 = icmp eq i32 %and.i.i.i53, 0
  br i1 %tobool.not.i.i.i54, label %if.then8.i.i.i57, label %if.then.i.i.i55.if.end.i.i.i61_crit_edge

if.then.i.i.i55.if.end.i.i.i61_crit_edge:         ; preds = %if.then.i.i.i55
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i.i61

if.then8.i.i.i57:                                 ; preds = %if.then.i.i.i55
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i268.i = getelementptr inbounds %struct.tty_buffer, ptr %229, i32 0, i32 6
  %add.ptr.i.i.i.i269.i = getelementptr i8, ptr %data.i.i.i.i268.i, i32 %231
  %add.ptr.i.i.i.i56 = getelementptr i8, ptr %add.ptr.i.i.i.i269.i, i32 %233
  %236 = ptrtoint ptr %add.ptr.i.i.i.i56 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 0, ptr %add.ptr.i.i.i.i56, align 1
  br label %if.end.i.i.i61

if.end.i.i.i61:                                   ; preds = %if.then8.i.i.i57, %if.then.i.i.i55.if.end.i.i.i61_crit_edge
  %237 = ptrtoint ptr %used.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %used.i.i.i49, align 4
  %inc.i.i.i58 = add i32 %238, 1
  store i32 %inc.i.i.i58, ptr %used.i.i.i49, align 4
  %data.i.i.i.i59 = getelementptr inbounds %struct.tty_buffer, ptr %229, i32 0, i32 6
  %add.ptr.i1.i.i.i60 = getelementptr i8, ptr %data.i.i.i.i59, i32 %238
  %239 = ptrtoint ptr %add.ptr.i1.i.i.i60 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 %conv.i.i, ptr %add.ptr.i1.i.i.i60, align 1
  br label %if.end52.sink.split.i

if.end12.i.i.i63:                                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i.i62 = tail call i32 @__tty_insert_flip_char(ptr noundef %49, i8 noundef zeroext %conv.i.i, i8 noundef zeroext 0) #16
  br label %if.end52.sink.split.i

if.else.i:                                        ; preds = %if.then37.i
  %conv.i270.i = select i1 %tobool41.not.i, i8 -128, i8 0
  %tail.i.i271.i = getelementptr inbounds %struct.tty_bufhead, ptr %49, i32 0, i32 8
  %240 = ptrtoint ptr %tail.i.i271.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %tail.i.i271.i, align 4
  %used.i.i272.i = getelementptr inbounds %struct.tty_buffer, ptr %241, i32 0, i32 1
  %242 = ptrtoint ptr %used.i.i272.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %used.i.i272.i, align 4
  %size.i.i273.i = getelementptr inbounds %struct.tty_buffer, ptr %241, i32 0, i32 2
  %244 = ptrtoint ptr %size.i.i273.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %size.i.i273.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %243, i32 %245)
  %cmp3.i.i274.i = icmp slt i32 %243, %245
  br i1 %cmp3.i.i274.i, label %if.then.i.i278.i, label %if.end12.i.i288.i

if.then.i.i278.i:                                 ; preds = %if.else.i
  %flags.i.i275.i = getelementptr inbounds %struct.tty_buffer, ptr %241, i32 0, i32 5
  %246 = ptrtoint ptr %flags.i.i275.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %flags.i.i275.i, align 4
  %and.i.i276.i = and i32 %247, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i276.i)
  %tobool.not.i.i277.i = icmp eq i32 %and.i.i276.i, 0
  br i1 %tobool.not.i.i277.i, label %if.then8.i.i282.i, label %if.then.i.i278.i.if.end.i.i286.i_crit_edge

if.then.i.i278.i.if.end.i.i286.i_crit_edge:       ; preds = %if.then.i.i278.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i286.i

if.then8.i.i282.i:                                ; preds = %if.then.i.i278.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i279.i = getelementptr inbounds %struct.tty_buffer, ptr %241, i32 0, i32 6
  %add.ptr.i.i.i.i280.i = getelementptr i8, ptr %data.i.i.i.i279.i, i32 %243
  %add.ptr.i.i.i281.i = getelementptr i8, ptr %add.ptr.i.i.i.i280.i, i32 %245
  %248 = ptrtoint ptr %add.ptr.i.i.i281.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 0, ptr %add.ptr.i.i.i281.i, align 1
  br label %if.end.i.i286.i

if.end.i.i286.i:                                  ; preds = %if.then8.i.i282.i, %if.then.i.i278.i.if.end.i.i286.i_crit_edge
  %249 = ptrtoint ptr %used.i.i272.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %used.i.i272.i, align 4
  %inc.i.i283.i = add i32 %250, 1
  store i32 %inc.i.i283.i, ptr %used.i.i272.i, align 4
  %data.i.i.i284.i = getelementptr inbounds %struct.tty_buffer, ptr %241, i32 0, i32 6
  %add.ptr.i1.i.i285.i = getelementptr i8, ptr %data.i.i.i284.i, i32 %250
  %251 = ptrtoint ptr %add.ptr.i1.i.i285.i to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %conv.i270.i, ptr %add.ptr.i1.i.i285.i, align 1
  br label %put_queue.exit289.i

if.end12.i.i288.i:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i287.i = tail call i32 @__tty_insert_flip_char(ptr noundef %49, i8 noundef zeroext %conv.i270.i, i8 noundef zeroext 0) #16
  br label %put_queue.exit289.i

put_queue.exit289.i:                              ; preds = %if.end12.i.i288.i, %if.end.i.i286.i
  tail call void @tty_flip_buffer_push(ptr noundef %49) #16
  %shr.i = lshr i32 %event_code, 7
  %252 = trunc i32 %shr.i to i8
  %conv.i290.i = or i8 %252, -128
  %253 = ptrtoint ptr %tail.i.i271.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %tail.i.i271.i, align 4
  %used.i.i292.i = getelementptr inbounds %struct.tty_buffer, ptr %254, i32 0, i32 1
  %255 = ptrtoint ptr %used.i.i292.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %used.i.i292.i, align 4
  %size.i.i293.i = getelementptr inbounds %struct.tty_buffer, ptr %254, i32 0, i32 2
  %257 = ptrtoint ptr %size.i.i293.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %size.i.i293.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %256, i32 %258)
  %cmp3.i.i294.i = icmp slt i32 %256, %258
  br i1 %cmp3.i.i294.i, label %if.then.i.i298.i, label %if.end12.i.i308.i

if.then.i.i298.i:                                 ; preds = %put_queue.exit289.i
  %flags.i.i295.i = getelementptr inbounds %struct.tty_buffer, ptr %254, i32 0, i32 5
  %259 = ptrtoint ptr %flags.i.i295.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %flags.i.i295.i, align 4
  %and.i.i296.i = and i32 %260, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i296.i)
  %tobool.not.i.i297.i = icmp eq i32 %and.i.i296.i, 0
  br i1 %tobool.not.i.i297.i, label %if.then8.i.i302.i, label %if.then.i.i298.i.if.end.i.i306.i_crit_edge

if.then.i.i298.i.if.end.i.i306.i_crit_edge:       ; preds = %if.then.i.i298.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i306.i

if.then8.i.i302.i:                                ; preds = %if.then.i.i298.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i299.i = getelementptr inbounds %struct.tty_buffer, ptr %254, i32 0, i32 6
  %add.ptr.i.i.i.i300.i = getelementptr i8, ptr %data.i.i.i.i299.i, i32 %256
  %add.ptr.i.i.i301.i = getelementptr i8, ptr %add.ptr.i.i.i.i300.i, i32 %258
  %261 = ptrtoint ptr %add.ptr.i.i.i301.i to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 0, ptr %add.ptr.i.i.i301.i, align 1
  br label %if.end.i.i306.i

if.end.i.i306.i:                                  ; preds = %if.then8.i.i302.i, %if.then.i.i298.i.if.end.i.i306.i_crit_edge
  %262 = ptrtoint ptr %used.i.i292.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %used.i.i292.i, align 4
  %inc.i.i303.i = add i32 %263, 1
  store i32 %inc.i.i303.i, ptr %used.i.i292.i, align 4
  %data.i.i.i304.i = getelementptr inbounds %struct.tty_buffer, ptr %254, i32 0, i32 6
  %add.ptr.i1.i.i305.i = getelementptr i8, ptr %data.i.i.i304.i, i32 %263
  %264 = ptrtoint ptr %add.ptr.i1.i.i305.i to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 %conv.i290.i, ptr %add.ptr.i1.i.i305.i, align 1
  br label %put_queue.exit309.i

if.end12.i.i308.i:                                ; preds = %put_queue.exit289.i
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i307.i = tail call i32 @__tty_insert_flip_char(ptr noundef %49, i8 noundef zeroext %conv.i290.i, i8 noundef zeroext 0) #16
  br label %put_queue.exit309.i

put_queue.exit309.i:                              ; preds = %if.end12.i.i308.i, %if.end.i.i306.i
  tail call void @tty_flip_buffer_push(ptr noundef %49) #16
  %265 = trunc i32 %event_code to i8
  %conv.i310.i = or i8 %265, -128
  %266 = ptrtoint ptr %tail.i.i271.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %tail.i.i271.i, align 4
  %used.i.i312.i = getelementptr inbounds %struct.tty_buffer, ptr %267, i32 0, i32 1
  %268 = ptrtoint ptr %used.i.i312.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %used.i.i312.i, align 4
  %size.i.i313.i = getelementptr inbounds %struct.tty_buffer, ptr %267, i32 0, i32 2
  %270 = ptrtoint ptr %size.i.i313.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %size.i.i313.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %269, i32 %271)
  %cmp3.i.i314.i = icmp slt i32 %269, %271
  br i1 %cmp3.i.i314.i, label %if.then.i.i318.i, label %if.end12.i.i328.i

if.then.i.i318.i:                                 ; preds = %put_queue.exit309.i
  %flags.i.i315.i = getelementptr inbounds %struct.tty_buffer, ptr %267, i32 0, i32 5
  %272 = ptrtoint ptr %flags.i.i315.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %flags.i.i315.i, align 4
  %and.i.i316.i = and i32 %273, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i316.i)
  %tobool.not.i.i317.i = icmp eq i32 %and.i.i316.i, 0
  br i1 %tobool.not.i.i317.i, label %if.then8.i.i322.i, label %if.then.i.i318.i.if.end.i.i326.i_crit_edge

if.then.i.i318.i.if.end.i.i326.i_crit_edge:       ; preds = %if.then.i.i318.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i326.i

if.then8.i.i322.i:                                ; preds = %if.then.i.i318.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i319.i = getelementptr inbounds %struct.tty_buffer, ptr %267, i32 0, i32 6
  %add.ptr.i.i.i.i320.i = getelementptr i8, ptr %data.i.i.i.i319.i, i32 %269
  %add.ptr.i.i.i321.i = getelementptr i8, ptr %add.ptr.i.i.i.i320.i, i32 %271
  %274 = ptrtoint ptr %add.ptr.i.i.i321.i to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 0, ptr %add.ptr.i.i.i321.i, align 1
  br label %if.end.i.i326.i

if.end.i.i326.i:                                  ; preds = %if.then8.i.i322.i, %if.then.i.i318.i.if.end.i.i326.i_crit_edge
  %275 = ptrtoint ptr %used.i.i312.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %used.i.i312.i, align 4
  %inc.i.i323.i = add i32 %276, 1
  store i32 %inc.i.i323.i, ptr %used.i.i312.i, align 4
  %data.i.i.i324.i = getelementptr inbounds %struct.tty_buffer, ptr %267, i32 0, i32 6
  %add.ptr.i1.i.i325.i = getelementptr i8, ptr %data.i.i.i324.i, i32 %276
  %277 = ptrtoint ptr %add.ptr.i1.i.i325.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %conv.i310.i, ptr %add.ptr.i1.i.i325.i, align 1
  br label %if.end52.sink.split.i

if.end12.i.i328.i:                                ; preds = %put_queue.exit309.i
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i327.i = tail call i32 @__tty_insert_flip_char(ptr noundef %49, i8 noundef zeroext %conv.i310.i, i8 noundef zeroext 0) #16
  br label %if.end52.sink.split.i

if.end52.sink.split.i:                            ; preds = %if.end12.i.i328.i, %if.end.i.i326.i, %if.end12.i.i.i63, %if.end.i.i.i61
  tail call void @tty_flip_buffer_push(ptr noundef %49) #16
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.end52.sink.split.i, %if.end29.i.if.end52.i_crit_edge
  %raw_mode.0.off0.i = phi i1 [ %cmp8.i, %if.end29.i.if.end52.i_crit_edge ], [ true, %if.end52.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool53.not343.i = icmp eq i32 %value, 0
  br i1 %tobool53.not343.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef %event_code, ptr noundef nonnull @key_down) #16
  br label %assign_bit.exit.i

if.else.i.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_clear_bit(i32 noundef %event_code, ptr noundef nonnull @key_down) #16
  br label %assign_bit.exit.i

assign_bit.exit.i:                                ; preds = %if.else.i.i, %if.then.i.i
  %278 = load i8, ptr @rep, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %278)
  %tobool54.not.i = icmp eq i8 %278, 0
  br i1 %tobool54.not.i, label %assign_bit.exit.i.if.end66.i_crit_edge, label %land.lhs.true56.i

assign_bit.exit.i.if.end66.i_crit_edge:           ; preds = %assign_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66.i

land.lhs.true56.i:                                ; preds = %assign_bit.exit.i
  %279 = load ptr, ptr @kbd, align 4
  %modeflags.i.i = getelementptr inbounds %struct.kbd_struct, ptr %279, i32 0, i32 4
  %280 = ptrtoint ptr %modeflags.i.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %bf.load.i.i = load i8, ptr %modeflags.i.i, align 1
  %281 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %281)
  %tobool58.not.i = icmp eq i8 %281, 0
  br i1 %tobool58.not.i, label %land.lhs.true56.i.kbd_keycode.exit_crit_edge, label %lor.lhs.false.i64

land.lhs.true56.i.kbd_keycode.exit_crit_edge:     ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kbd_keycode.exit

lor.lhs.false.i64:                                ; preds = %land.lhs.true56.i
  br i1 %tobool.not.i37, label %lor.lhs.false.i64.if.end66.i_crit_edge, label %land.lhs.true60.i

lor.lhs.false.i64.if.end66.i_crit_edge:           ; preds = %lor.lhs.false.i64
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66.i

land.lhs.true60.i:                                ; preds = %lor.lhs.false.i64
  %c_lflag.i = getelementptr inbounds %struct.tty_struct, ptr %60, i32 0, i32 13, i32 3
  %282 = ptrtoint ptr %c_lflag.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %c_lflag.i, align 4
  %and.i = and i32 %283, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool61.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool61.not.i, label %land.lhs.true62.i, label %land.lhs.true60.i.if.end66.i_crit_edge

land.lhs.true60.i.if.end66.i_crit_edge:           ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66.i

land.lhs.true62.i:                                ; preds = %land.lhs.true60.i
  %call63.i = tail call i32 @tty_chars_in_buffer(ptr noundef nonnull %60) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %land.lhs.true62.i.if.end66.i_crit_edge, label %land.lhs.true62.i.kbd_keycode.exit_crit_edge

land.lhs.true62.i.kbd_keycode.exit_crit_edge:     ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kbd_keycode.exit

land.lhs.true62.i.if.end66.i_crit_edge:           ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66.i

if.end66.i:                                       ; preds = %land.lhs.true62.i.if.end66.i_crit_edge, %land.lhs.true60.i.if.end66.i_crit_edge, %lor.lhs.false.i64.if.end66.i_crit_edge, %assign_bit.exit.i.if.end66.i_crit_edge
  %284 = load i32, ptr @shift_state, align 4
  %285 = load ptr, ptr @kbd, align 4
  %slockstate.i = getelementptr inbounds %struct.kbd_struct, ptr %285, i32 0, i32 1
  %286 = ptrtoint ptr %slockstate.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %slockstate.i, align 1
  %conv67.i = zext i8 %287 to i32
  %or68.i = or i32 %284, %conv67.i
  %288 = ptrtoint ptr %285 to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %285, align 1
  %conv69.i = zext i8 %289 to i32
  %xor.i = xor i32 %or68.i, %conv69.i
  %290 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %xor.i, ptr %51, align 4
  %ledflagstate.i = getelementptr inbounds %struct.kbd_struct, ptr %285, i32 0, i32 2
  %291 = ptrtoint ptr %ledflagstate.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %bf.load71.i = load i8, ptr %ledflagstate.i, align 1
  %bf.lshr72.i = lshr i8 %bf.load71.i, 3
  %bf.clear73.i = and i8 %bf.lshr72.i, 15
  %conv74.i = zext i8 %bf.clear73.i to i32
  %292 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %conv74.i, ptr %52, align 4
  %arrayidx76.i = getelementptr [256 x ptr], ptr @key_maps, i32 0, i32 %xor.i
  %293 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %arrayidx76.i, align 4
  %call77.i = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @keyboard_notifier_list, i32 noundef 1, ptr noundef nonnull %param.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32769, i32 %call77.i)
  %cmp78.i = icmp eq i32 %call77.i, 32769
  %tobool81.not.i = icmp eq ptr %294, null
  %or.cond260.i = select i1 %cmp78.i, i1 true, i1 %tobool81.not.i
  br i1 %or.cond260.i, label %if.then82.i, label %if.end85.i

if.then82.i:                                      ; preds = %if.end66.i
  %call83.i = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @keyboard_notifier_list, i32 noundef 2, ptr noundef nonnull %param.i) #16
  store i32 0, ptr @shift_state, align 4
  %295 = call ptr @memset(ptr @shift_down, i32 0, i32 9)
  %call.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull @key_down, i32 noundef 256, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call.i.i)
  %cmp18.i.i = icmp ult i32 %call.i.i, 256
  br i1 %cmp18.i.i, label %if.then82.i.for.body.i.i_crit_edge, label %if.then82.i.do_compute_shiftstate.exit.i_crit_edge

if.then82.i.do_compute_shiftstate.exit.i_crit_edge: ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do_compute_shiftstate.exit.i

if.then82.i.for.body.i.i_crit_edge:               ; preds = %if.then82.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then82.i.for.body.i.i_crit_edge
  %k.019.i.i = phi i32 [ %call11.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.then82.i.for.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @key_maps to i32))
  %296 = load ptr, ptr @key_maps, align 4
  %arrayidx.i331.i = getelementptr i16, ptr %296, i32 %k.019.i.i
  %297 = ptrtoint ptr %arrayidx.i331.i to i32
  call void @__asan_load2_noabort(i32 %297)
  %298 = load i16, ptr %arrayidx.i331.i, align 2
  %299 = lshr i16 %298, 8
  %300 = trunc i16 %299 to i8
  %trunc.i.i = xor i8 %300, -16
  %301 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %301, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %trunc.i.i, label %for.body.i.i.for.inc.i.i_crit_edge [
    i8 7, label %for.body.i.i.if.end.i.i_crit_edge
    i8 12, label %for.body.i.i.if.end.i.i_crit_edge72
  ]

for.body.i.i.if.end.i.i_crit_edge72:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i.if.end.i.i_crit_edge, %for.body.i.i.if.end.i.i_crit_edge72
  %302 = and i16 %298, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %302)
  %cmp6.i.i = icmp eq i16 %302, 8
  %narrow.i.i = select i1 %cmp6.i.i, i16 0, i16 %302
  %spec.store.select.i.i = zext i16 %narrow.i.i to i32
  %arrayidx10.i.i = getelementptr [9 x i8], ptr @shift_down, i32 0, i32 %spec.store.select.i.i
  %303 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %arrayidx10.i.i, align 1
  %inc.i.i = add i8 %304, 1
  store i8 %inc.i.i, ptr %arrayidx10.i.i, align 1
  %shl.i.i = shl nuw i32 1, %spec.store.select.i.i
  %305 = load i32, ptr @shift_state, align 4
  %or.i332.i = or i32 %305, %shl.i.i
  store i32 %or.i332.i, ptr @shift_state, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %add.i.i = add nuw nsw i32 %k.019.i.i, 1
  %call11.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull @key_down, i32 noundef 256, i32 noundef %add.i.i) #16
  %cmp.i333.i = icmp ult i32 %call11.i.i, 256
  br i1 %cmp.i333.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do_compute_shiftstate.exit.i_crit_edge

for.inc.i.i.do_compute_shiftstate.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do_compute_shiftstate.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

do_compute_shiftstate.exit.i:                     ; preds = %for.inc.i.i.do_compute_shiftstate.exit.i_crit_edge, %if.then82.i.do_compute_shiftstate.exit.i_crit_edge
  %306 = load ptr, ptr @kbd, align 4
  %slockstate84.i = getelementptr inbounds %struct.kbd_struct, ptr %306, i32 0, i32 1
  %307 = ptrtoint ptr %slockstate84.i to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 0, ptr %slockstate84.i, align 1
  br label %kbd_keycode.exit

if.end85.i:                                       ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %event_code)
  %cmp86.i = icmp ult i32 %event_code, 256
  br i1 %cmp86.i, label %if.then88.i, label %if.else90.i

if.then88.i:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx89.i = getelementptr i16, ptr %294, i32 %event_code
  %308 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load2_noabort(i32 %308)
  %309 = load i16, ptr %arrayidx89.i, align 2
  br label %if.end102.i

if.else90.i:                                      ; preds = %if.end85.i
  %310 = add nsw i32 %event_code, -497
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %310)
  %311 = icmp ult i32 %310, 8
  br i1 %311, label %if.then96.i, label %if.else90.i.kbd_keycode.exit_crit_edge

if.else90.i.kbd_keycode.exit_crit_edge:           ; preds = %if.else90.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kbd_keycode.exit

if.then96.i:                                      ; preds = %if.else90.i
  call void @__sanitizer_cov_trace_pc() #18
  %312 = trunc i32 %event_code to i16
  %313 = add nsw i16 %312, -496
  %314 = and i16 %313, -3585
  %conv99.i = xor i16 %314, -512
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then96.i, %if.then88.i
  %keysym.0.i = phi i16 [ %309, %if.then88.i ], [ %conv99.i, %if.then96.i ]
  %conv103.i = zext i16 %keysym.0.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4096, i16 %keysym.0.i)
  %cmp107.i = icmp ult i16 %keysym.0.i, -4096
  br i1 %cmp107.i, label %if.then109.i, label %if.end127.i

if.then109.i:                                     ; preds = %if.end102.i
  %315 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %conv103.i, ptr %53, align 4
  %call112.i = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @keyboard_notifier_list, i32 noundef 3, ptr noundef nonnull %param.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32769, i32 %call112.i)
  %cmp113.not.i = icmp eq i32 %call112.i, 32769
  %brmerge262.i = or i1 %tobool53.not343.i, %cmp113.not.i
  %brmerge263.i = select i1 %brmerge262.i, i1 true, i1 %raw_mode.0.off0.i
  br i1 %brmerge263.i, label %if.then109.i.kbd_keycode.exit_crit_edge, label %if.then119.i

if.then109.i.kbd_keycode.exit_crit_edge:          ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kbd_keycode.exit

if.then119.i:                                     ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @k_unicode(ptr noundef %49, i32 noundef %conv103.i, i8 noundef zeroext 0) #16
  br label %kbd_keycode.exit

if.end127.i:                                      ; preds = %if.end102.i
  %316 = lshr i16 %keysym.0.i, 8
  %conv105.i = trunc i16 %316 to i8
  %sub129.i = add nsw i8 %conv105.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %sub129.i)
  %cmp132.i = icmp eq i8 %sub129.i, 11
  %extract.t346.i = trunc i16 %keysym.0.i to i8
  br i1 %cmp132.i, label %if.then134.i, label %if.end127.i.if.end145.i_crit_edge

if.end127.i.if.end145.i_crit_edge:                ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end145.i

if.then134.i:                                     ; preds = %if.end127.i
  %317 = load ptr, ptr @kbd, align 4
  %ledflagstate.i.i = getelementptr inbounds %struct.kbd_struct, ptr %317, i32 0, i32 2
  %318 = ptrtoint ptr %ledflagstate.i.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %bf.load.i334.i = load i8, ptr %ledflagstate.i.i, align 1
  %319 = and i8 %bf.load.i334.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %319)
  %tobool136.not.i = icmp eq i8 %319, 0
  br i1 %tobool136.not.i, label %if.then134.i.if.end145.i_crit_edge, label %if.then137.i

if.then134.i.if.end145.i_crit_edge:               ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end145.i

if.then137.i:                                     ; preds = %if.then134.i
  %xor138.i = xor i32 %xor.i, 1
  %arrayidx139.i = getelementptr [256 x ptr], ptr @key_maps, i32 0, i32 %xor138.i
  %320 = ptrtoint ptr %arrayidx139.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %arrayidx139.i, align 4
  %tobool140.not.i = icmp eq ptr %321, null
  br i1 %tobool140.not.i, label %if.then137.i.if.end145.i_crit_edge, label %if.then141.i

if.then137.i.if.end145.i_crit_edge:               ; preds = %if.then137.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end145.i

if.then141.i:                                     ; preds = %if.then137.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx142.i = getelementptr i16, ptr %321, i32 %event_code
  %322 = ptrtoint ptr %arrayidx142.i to i32
  call void @__asan_load2_noabort(i32 %322)
  %323 = load i16, ptr %arrayidx142.i, align 2
  %.pre.i = zext i16 %323 to i32
  %extract.t344.i = trunc i16 %323 to i8
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.then141.i, %if.then137.i.if.end145.i_crit_edge, %if.then134.i.if.end145.i_crit_edge, %if.end127.i.if.end145.i_crit_edge
  %conv146.pre-phi.i = phi i32 [ %conv103.i, %if.then134.i.if.end145.i_crit_edge ], [ %.pre.i, %if.then141.i ], [ %conv103.i, %if.then137.i.if.end145.i_crit_edge ], [ %conv103.i, %if.end127.i.if.end145.i_crit_edge ]
  %keysym.1.off0.i = phi i8 [ %extract.t346.i, %if.then134.i.if.end145.i_crit_edge ], [ %extract.t344.i, %if.then141.i ], [ %extract.t346.i, %if.then137.i.if.end145.i_crit_edge ], [ %extract.t346.i, %if.end127.i.if.end145.i_crit_edge ]
  %type.0.i = phi i8 [ 0, %if.then134.i.if.end145.i_crit_edge ], [ 0, %if.then141.i ], [ 0, %if.then137.i.if.end145.i_crit_edge ], [ %sub129.i, %if.end127.i.if.end145.i_crit_edge ]
  %324 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 %conv146.pre-phi.i, ptr %53, align 4
  %call148.i = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @keyboard_notifier_list, i32 noundef 4, ptr noundef nonnull %param.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32769, i32 %call148.i)
  %cmp149.i = icmp eq i32 %call148.i, 32769
  br i1 %cmp149.i, label %if.end145.i.kbd_keycode.exit_crit_edge, label %if.end152.i

if.end145.i.kbd_keycode.exit_crit_edge:           ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kbd_keycode.exit

if.end152.i:                                      ; preds = %if.end145.i
  br i1 %raw_mode.0.off0.i, label %land.lhs.true163.i, label %lor.lhs.false155.i

lor.lhs.false155.i:                               ; preds = %if.end152.i
  %325 = load ptr, ptr @kbd, align 4
  %kbdmode156.i = getelementptr inbounds %struct.kbd_struct, ptr %325, i32 0, i32 3
  %326 = ptrtoint ptr %kbdmode156.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %bf.load157.i = load i8, ptr %kbdmode156.i, align 1
  %bf.load157.fr.i = freeze i8 %bf.load157.i
  %327 = and i8 %bf.load157.fr.i, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %327)
  %cmp161.not.i = icmp eq i8 %327, 8
  br i1 %cmp161.not.i, label %switch.early.test.i, label %lor.lhs.false155.i.if.end172.i_crit_edge

lor.lhs.false155.i.if.end172.i_crit_edge:         ; preds = %lor.lhs.false155.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end172.i

switch.early.test.i:                              ; preds = %lor.lhs.false155.i
  %328 = zext i8 %type.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %328, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %type.0.i, label %switch.early.test.i.kbd_keycode.exit_crit_edge [
    i8 7, label %switch.early.test.i.if.end172.i_crit_edge
    i8 2, label %switch.early.test.i.if.end172.i_crit_edge73
  ]

switch.early.test.i.if.end172.i_crit_edge73:      ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end172.i

switch.early.test.i.if.end172.i_crit_edge:        ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end172.i

switch.early.test.i.kbd_keycode.exit_crit_edge:   ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kbd_keycode.exit

land.lhs.true163.i:                               ; preds = %if.end152.i
  %329 = zext i8 %type.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %329, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %type.0.i, label %land.lhs.true163.i.kbd_keycode.exit_crit_edge [
    i8 2, label %land.lhs.true163.i.if.end172.i_crit_edge
    i8 7, label %land.lhs.true163.i.if.end172.i_crit_edge74
  ]

land.lhs.true163.i.if.end172.i_crit_edge74:       ; preds = %land.lhs.true163.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end172.i

land.lhs.true163.i.if.end172.i_crit_edge:         ; preds = %land.lhs.true163.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end172.i

land.lhs.true163.i.kbd_keycode.exit_crit_edge:    ; preds = %land.lhs.true163.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kbd_keycode.exit

if.end172.i:                                      ; preds = %land.lhs.true163.i.if.end172.i_crit_edge, %land.lhs.true163.i.if.end172.i_crit_edge74, %switch.early.test.i.if.end172.i_crit_edge, %switch.early.test.i.if.end172.i_crit_edge73, %lor.lhs.false155.i.if.end172.i_crit_edge
  %idxprom173.i = zext i8 %type.0.i to i32
  %arrayidx174.i = getelementptr [16 x ptr], ptr @k_handler, i32 0, i32 %idxprom173.i
  %330 = ptrtoint ptr %arrayidx174.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %arrayidx174.i, align 4
  %conv181.i = zext i1 %tobool53.not343.i to i8
  call void %331(ptr noundef %49, i8 noundef zeroext %keysym.1.off0.i, i8 noundef zeroext %conv181.i) #16
  %332 = load ptr, ptr @kbd, align 4
  %ledflagstate182.i = getelementptr inbounds %struct.kbd_struct, ptr %332, i32 0, i32 2
  %333 = ptrtoint ptr %ledflagstate182.i to i32
  call void @__asan_load1_noabort(i32 %333)
  %bf.load183.i = load i8, ptr %ledflagstate182.i, align 1
  %bf.lshr184.i = lshr i8 %bf.load183.i, 3
  %bf.clear185.i = and i8 %bf.lshr184.i, 15
  %conv186.i = zext i8 %bf.clear185.i to i32
  %334 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %conv186.i, ptr %52, align 4
  %call188.i = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @keyboard_notifier_list, i32 noundef 5, ptr noundef nonnull %param.i) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %type.0.i)
  %cmp190.not.i = icmp eq i8 %type.0.i, 12
  br i1 %cmp190.not.i, label %if.end172.i.kbd_keycode.exit_crit_edge, label %if.then192.i

if.end172.i.kbd_keycode.exit_crit_edge:           ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %kbd_keycode.exit

if.then192.i:                                     ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #18
  %335 = load ptr, ptr @kbd, align 4
  %slockstate193.i = getelementptr inbounds %struct.kbd_struct, ptr %335, i32 0, i32 1
  %336 = ptrtoint ptr %slockstate193.i to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 0, ptr %slockstate193.i, align 1
  br label %kbd_keycode.exit

kbd_keycode.exit:                                 ; preds = %if.then192.i, %if.end172.i.kbd_keycode.exit_crit_edge, %land.lhs.true163.i.kbd_keycode.exit_crit_edge, %switch.early.test.i.kbd_keycode.exit_crit_edge, %if.end145.i.kbd_keycode.exit_crit_edge, %if.then119.i, %if.then109.i.kbd_keycode.exit_crit_edge, %if.else90.i.kbd_keycode.exit_crit_edge, %do_compute_shiftstate.exit.i, %land.lhs.true62.i.kbd_keycode.exit_crit_edge, %land.lhs.true56.i.kbd_keycode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %param.i) #16
  br label %if.end11

if.end11:                                         ; preds = %kbd_keycode.exit, %if.end.if.end11_crit_edge, %put_queue.exit.i, %if.then.if.end11_crit_edge, %kbd_is_hw_raw.exit.if.end11_crit_edge, %land.lhs.true.i.if.end11_crit_edge, %if.end.i.if.end11_crit_edge, %lor.lhs.false.i.if.end11_crit_edge, %land.lhs.true2.if.end11_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @kbd_event_lock) #16
  %call.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 1)) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i65 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i65, label %if.then.i66, label %if.end11.tasklet_schedule.exit_crit_edge

if.end11.tasklet_schedule.exit_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %tasklet_schedule.exit

if.then.i66:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  call void @__tasklet_schedule(ptr noundef nonnull @keyboard_tasklet) #16
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i66, %if.end11.tasklet_schedule.exit_crit_edge
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @do_poke_blanked_console to i32))
  store i32 1, ptr @do_poke_blanked_console, align 4
  call void @schedule_console_callback() #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @kbd_match(ptr nocapture noundef readnone %handler, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %evbit = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %evbit, align 4
  %2 = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %evbit, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.end.if.end16_crit_edge, label %if.then5

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then5:                                         ; preds = %if.end
  %keybit = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 6
  %call7 = tail call i32 @_find_next_bit_be(ptr noundef %keybit, i32 noundef 256, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call7)
  %cmp = icmp slt i32 %call7, 256
  br i1 %cmp, label %if.then5.return_crit_edge, label %if.end9

if.then5.return_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end9:                                          ; preds = %if.then5
  %call12 = tail call i32 @_find_next_bit_be(ptr noundef %keybit, i32 noundef 507, i32 noundef 497) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 507, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 507
  br i1 %cmp13, label %if.end9.return_crit_edge, label %if.end9.if.end16_crit_edge

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.end9.return_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end16:                                         ; preds = %if.end9.if.end16_crit_edge, %if.end.if.end16_crit_edge
  br label %return

return:                                           ; preds = %if.end16, %if.end9.return_crit_edge, %if.then5.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end16 ], [ true, %entry.return_crit_edge ], [ true, %if.then5.return_crit_edge ], [ true, %if.end9.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kbd_connect(ptr noundef %handler, ptr noundef %dev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.input_handle, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev1, align 4
  %handler2 = getelementptr inbounds %struct.input_handle, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %handler2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %handler, ptr %handler2, align 8
  %name = getelementptr inbounds %struct.input_handle, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.7, ptr %name, align 8
  %call3 = tail call i32 @input_register_handle(ptr noundef nonnull %call7.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.err_free_handle_crit_edge

if.end.err_free_handle_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_free_handle

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @input_open_device(ptr noundef nonnull %call7.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %err_unregister_handle

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

err_unregister_handle:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @input_unregister_handle(ptr noundef nonnull %call7.i.i) #16
  br label %err_free_handle

err_free_handle:                                  ; preds = %err_unregister_handle, %if.end.err_free_handle_crit_edge
  %error.0 = phi i32 [ %call3, %if.end.err_free_handle_crit_edge ], [ %call7, %err_unregister_handle ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %err_free_handle, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %err_free_handle ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kbd_disconnect(ptr noundef %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @input_close_device(ptr noundef %handle) #16
  tail call void @input_unregister_handle(ptr noundef %handle) #16
  tail call void @kfree(ptr noundef %handle) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kbd_start(ptr nocapture noundef readonly %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), ptr getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2)) #16, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !206
  tail call void @tasklet_unlock_wait(ptr noundef nonnull @keyboard_tasklet) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !207
  %1 = load i32, ptr @ledstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not = icmp eq i32 %1, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %dev.i = getelementptr inbounds %struct.input_handle, ptr %handle, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %evbit.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %evbit.i, align 4
  %6 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.for.body.i.i_crit_edge

if.then.for.body.i.i_crit_edge:                   ; preds = %if.then
  br label %for.body.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.for.body.i.i_crit_edge
  %i.010.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.for.body.i.i_crit_edge ]
  %mask.i.i = getelementptr [12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 %i.010.i.i, i32 1
  %7 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mask.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i.i = getelementptr [12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 %i.010.i.i
  %and3.i.i = and i32 %8, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  %cond.i.i = select i1 %tobool4.not.i.i, i32 0, i32 255
  tail call void @led_trigger_event(ptr noundef %arrayidx.i.i, i32 noundef %cond.i.i) #16
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 12
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.inc.i.i.if.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %for.inc.i.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !184
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), i32 1, i32 3, i32 1) #16
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), ptr getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2)) #16, !srcloc !185
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule_console_callback() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_chars_in_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @k_unicode(ptr noundef %vc, i32 noundef %value, i8 noundef zeroext %up_flag) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %up_flag)
  %tobool.not = icmp eq i8 %up_flag, 0
  br i1 %tobool.not, label %if.end, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @diacr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call fastcc i32 @handle_diacr(ptr noundef %vc, i32 noundef %value)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %value.addr.0 = phi i32 [ %call, %if.then2 ], [ %value, %if.end.if.end3_crit_edge ]
  %.b21 = load i1, ptr @dead_key_next, align 1
  br i1 %.b21, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  store i1 false, ptr @dead_key_next, align 1
  store i32 %value.addr.0, ptr @diacr, align 4
  br label %if.end14

if.end6:                                          ; preds = %if.end3
  %1 = load ptr, ptr @kbd, align 4
  %kbdmode = getelementptr inbounds %struct.kbd_struct, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %kbdmode to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %kbdmode, align 1
  %3 = and i8 %bf.load, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %3)
  %cmp = icmp eq i8 %3, 6
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @to_utf8(ptr noundef %vc, i32 noundef %value.addr.0)
  br label %if.end14

if.else:                                          ; preds = %if.end6
  %call9 = tail call i32 @conv_uni_to_8bit(i32 noundef %value.addr.0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, -1
  br i1 %cmp10.not, label %if.else.if.end14_crit_edge, label %if.then12

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then12:                                        ; preds = %if.else
  %conv.i = trunc i32 %call9 to i8
  %tail.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %vc, i32 0, i32 8
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 4
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp3.i.i = icmp slt i32 %7, %9
  br i1 %cmp3.i.i, label %if.then.i.i, label %if.end12.i.i

if.then.i.i:                                      ; preds = %if.then12
  %flags.i.i = getelementptr inbounds %struct.tty_buffer, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then8.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then8.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %5, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %7
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %9
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %add.ptr.i.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then8.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %13 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %14, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %5, i32 0, i32 6
  %add.ptr.i1.i.i = getelementptr i8, ptr %data.i.i.i, i32 %14
  %15 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %add.ptr.i1.i.i, align 1
  br label %put_queue.exit

if.end12.i.i:                                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %vc, i8 noundef zeroext %conv.i, i8 noundef zeroext 0) #16
  br label %put_queue.exit

put_queue.exit:                                   ; preds = %if.end12.i.i, %if.end.i.i
  tail call void @tty_flip_buffer_push(ptr noundef %vc) #16
  br label %if.end14

if.end14:                                         ; preds = %put_queue.exit, %if.else.if.end14_crit_edge, %if.then8, %if.then5, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @handle_diacr(ptr noundef %vc, i32 noundef %ch) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @diacr, align 4
  store i32 0, ptr @diacr, align 4
  %and = and i32 %0, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 10240, i32 %and)
  %cmp = icmp eq i32 %and, 10240
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @accent_table_size to i32))
  %1 = load i32, ptr @accent_table_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp447.not = icmp eq i32 %1, 0
  br i1 %cmp447.not, label %for.cond.preheader.if.end11_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end11_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then:                                          ; preds = %entry
  %and1 = and i32 %ch, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 10240, i32 %and1)
  %cmp2 = icmp eq i32 %and1, 10240
  br i1 %cmp2, label %if.then3, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %or = or i32 %0, %ch
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.048 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.kbdiacruc], ptr @accent_table, i32 0, i32 %i.048
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %0)
  %cmp5 = icmp eq i32 %3, %0
  br i1 %cmp5, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %base = getelementptr [0 x %struct.kbdiacruc], ptr @accent_table, i32 0, i32 %i.048, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %ch)
  %cmp7 = icmp eq i32 %5, %ch
  br i1 %cmp7, label %if.then8, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %result = getelementptr [0 x %struct.kbdiacruc], ptr @accent_table, i32 0, i32 %i.048, i32 2
  %6 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %result, align 4
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.if.end11_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.if.end11_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.end11:                                         ; preds = %for.inc.if.end11_crit_edge, %if.then.if.end11_crit_edge, %for.cond.preheader.if.end11_crit_edge
  %8 = zext i32 %ch to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %ch, label %lor.lhs.false14 [
    i32 32, label %if.end11.cleanup_crit_edge
    i32 10240, label %if.end11.cleanup_crit_edge55
  ]

if.end11.cleanup_crit_edge55:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false14:                                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %ch)
  %cmp15 = icmp eq i32 %0, %ch
  br i1 %cmp15, label %lor.lhs.false14.cleanup_crit_edge, label %if.end17

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false14
  %9 = load ptr, ptr @kbd, align 4
  %kbdmode = getelementptr inbounds %struct.kbd_struct, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %kbdmode to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %kbdmode, align 1
  %11 = and i8 %bf.load, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %11)
  %cmp18 = icmp eq i8 %11, 6
  br i1 %cmp18, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @to_utf8(ptr noundef %vc, i32 noundef %0)
  br label %cleanup

if.else21:                                        ; preds = %if.end17
  %call = tail call i32 @conv_uni_to_8bit(i32 noundef %0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp22.not = icmp eq i32 %call, -1
  br i1 %cmp22.not, label %if.else21.cleanup_crit_edge, label %if.then24

if.else21.cleanup_crit_edge:                      ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then24:                                        ; preds = %if.else21
  %conv.i = trunc i32 %call to i8
  %tail.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %vc, i32 0, i32 8
  %12 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i.i, align 4
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp3.i.i = icmp slt i32 %15, %17
  br i1 %cmp3.i.i, label %if.then.i.i, label %if.end12.i.i

if.then.i.i:                                      ; preds = %if.then24
  %flags.i.i = getelementptr inbounds %struct.tty_buffer, ptr %13, i32 0, i32 5
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then8.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then8.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %13, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %15
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %17
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %add.ptr.i.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then8.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %21 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %22, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %13, i32 0, i32 6
  %add.ptr.i1.i.i = getelementptr i8, ptr %data.i.i.i, i32 %22
  %23 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i, ptr %add.ptr.i1.i.i, align 1
  br label %put_queue.exit

if.end12.i.i:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %vc, i8 noundef zeroext %conv.i, i8 noundef zeroext 0) #16
  br label %put_queue.exit

put_queue.exit:                                   ; preds = %if.end12.i.i, %if.end.i.i
  tail call void @tty_flip_buffer_push(ptr noundef %vc) #16
  br label %cleanup

cleanup:                                          ; preds = %put_queue.exit, %if.else21.cleanup_crit_edge, %if.then20, %lor.lhs.false14.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end11.cleanup_crit_edge55, %if.then8, %if.then3
  %retval.0 = phi i32 [ %or, %if.then3 ], [ %7, %if.then8 ], [ %0, %if.end11.cleanup_crit_edge ], [ %0, %if.end11.cleanup_crit_edge55 ], [ %ch, %lor.lhs.false14.cleanup_crit_edge ], [ %ch, %if.else21.cleanup_crit_edge ], [ %ch, %put_queue.exit ], [ %ch, %if.then20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @to_utf8(ptr noundef %vc, i32 noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %c)
  %cmp = icmp ult i32 %c, 128
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %conv.i = trunc i32 %c to i8
  %tail.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %vc, i32 0, i32 8
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i, align 4
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp3.i.i = icmp slt i32 %3, %5
  br i1 %cmp3.i.i, label %if.then.i.i, label %if.end12.i.i

if.then.i.i:                                      ; preds = %if.then
  %flags.i.i = getelementptr inbounds %struct.tty_buffer, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then8.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then8.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %1, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %3
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %5
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %add.ptr.i.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then8.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %9 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %10, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %1, i32 0, i32 6
  %add.ptr.i1.i.i = getelementptr i8, ptr %data.i.i.i, i32 %10
  %11 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i, ptr %add.ptr.i1.i.i, align 1
  br label %if.end36.sink.split

if.end12.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %vc, i8 noundef zeroext %conv.i, i8 noundef zeroext 0) #16
  br label %if.end36.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %c)
  %cmp1 = icmp ult i32 %c, 2048
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  %shr = lshr i32 %c, 6
  %12 = trunc i32 %shr to i8
  %conv.i63 = or i8 %12, -64
  %tail.i.i64 = getelementptr inbounds %struct.tty_bufhead, ptr %vc, i32 0, i32 8
  %13 = ptrtoint ptr %tail.i.i64 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i64, align 4
  %used.i.i65 = getelementptr inbounds %struct.tty_buffer, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %used.i.i65 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %used.i.i65, align 4
  %size.i.i66 = getelementptr inbounds %struct.tty_buffer, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %size.i.i66 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size.i.i66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp3.i.i67 = icmp slt i32 %16, %18
  br i1 %cmp3.i.i67, label %if.then.i.i71, label %if.end12.i.i81

if.then.i.i71:                                    ; preds = %if.then2
  %flags.i.i68 = getelementptr inbounds %struct.tty_buffer, ptr %14, i32 0, i32 5
  %19 = ptrtoint ptr %flags.i.i68 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i.i68, align 4
  %and.i.i69 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i69)
  %tobool.not.i.i70 = icmp eq i32 %and.i.i69, 0
  br i1 %tobool.not.i.i70, label %if.then8.i.i75, label %if.then.i.i71.if.end.i.i79_crit_edge

if.then.i.i71.if.end.i.i79_crit_edge:             ; preds = %if.then.i.i71
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i79

if.then8.i.i75:                                   ; preds = %if.then.i.i71
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i72 = getelementptr inbounds %struct.tty_buffer, ptr %14, i32 0, i32 6
  %add.ptr.i.i.i.i73 = getelementptr i8, ptr %data.i.i.i.i72, i32 %16
  %add.ptr.i.i.i74 = getelementptr i8, ptr %add.ptr.i.i.i.i73, i32 %18
  %21 = ptrtoint ptr %add.ptr.i.i.i74 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %add.ptr.i.i.i74, align 1
  br label %if.end.i.i79

if.end.i.i79:                                     ; preds = %if.then8.i.i75, %if.then.i.i71.if.end.i.i79_crit_edge
  %22 = ptrtoint ptr %used.i.i65 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %used.i.i65, align 4
  %inc.i.i76 = add i32 %23, 1
  store i32 %inc.i.i76, ptr %used.i.i65, align 4
  %data.i.i.i77 = getelementptr inbounds %struct.tty_buffer, ptr %14, i32 0, i32 6
  %add.ptr.i1.i.i78 = getelementptr i8, ptr %data.i.i.i77, i32 %23
  %24 = ptrtoint ptr %add.ptr.i1.i.i78 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv.i63, ptr %add.ptr.i1.i.i78, align 1
  br label %put_queue.exit82

if.end12.i.i81:                                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i80 = tail call i32 @__tty_insert_flip_char(ptr noundef %vc, i8 noundef zeroext %conv.i63, i8 noundef zeroext 0) #16
  br label %put_queue.exit82

put_queue.exit82:                                 ; preds = %if.end12.i.i81, %if.end.i.i79
  tail call void @tty_flip_buffer_push(ptr noundef %vc) #16
  %25 = trunc i32 %c to i8
  %26 = and i8 %25, 63
  %conv.i83 = or i8 %26, -128
  %27 = ptrtoint ptr %tail.i.i64 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i64, align 4
  %used.i.i85 = getelementptr inbounds %struct.tty_buffer, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %used.i.i85 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %used.i.i85, align 4
  %size.i.i86 = getelementptr inbounds %struct.tty_buffer, ptr %28, i32 0, i32 2
  %31 = ptrtoint ptr %size.i.i86 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size.i.i86, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp3.i.i87 = icmp slt i32 %30, %32
  br i1 %cmp3.i.i87, label %if.then.i.i91, label %if.end12.i.i101

if.then.i.i91:                                    ; preds = %put_queue.exit82
  %flags.i.i88 = getelementptr inbounds %struct.tty_buffer, ptr %28, i32 0, i32 5
  %33 = ptrtoint ptr %flags.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i.i88, align 4
  %and.i.i89 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i89)
  %tobool.not.i.i90 = icmp eq i32 %and.i.i89, 0
  br i1 %tobool.not.i.i90, label %if.then8.i.i95, label %if.then.i.i91.if.end.i.i99_crit_edge

if.then.i.i91.if.end.i.i99_crit_edge:             ; preds = %if.then.i.i91
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i99

if.then8.i.i95:                                   ; preds = %if.then.i.i91
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i92 = getelementptr inbounds %struct.tty_buffer, ptr %28, i32 0, i32 6
  %add.ptr.i.i.i.i93 = getelementptr i8, ptr %data.i.i.i.i92, i32 %30
  %add.ptr.i.i.i94 = getelementptr i8, ptr %add.ptr.i.i.i.i93, i32 %32
  %35 = ptrtoint ptr %add.ptr.i.i.i94 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %add.ptr.i.i.i94, align 1
  br label %if.end.i.i99

if.end.i.i99:                                     ; preds = %if.then8.i.i95, %if.then.i.i91.if.end.i.i99_crit_edge
  %36 = ptrtoint ptr %used.i.i85 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %used.i.i85, align 4
  %inc.i.i96 = add i32 %37, 1
  store i32 %inc.i.i96, ptr %used.i.i85, align 4
  %data.i.i.i97 = getelementptr inbounds %struct.tty_buffer, ptr %28, i32 0, i32 6
  %add.ptr.i1.i.i98 = getelementptr i8, ptr %data.i.i.i97, i32 %37
  %38 = ptrtoint ptr %add.ptr.i1.i.i98 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv.i83, ptr %add.ptr.i1.i.i98, align 1
  br label %if.end36.sink.split

if.end12.i.i101:                                  ; preds = %put_queue.exit82
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i100 = tail call i32 @__tty_insert_flip_char(ptr noundef %vc, i8 noundef zeroext %conv.i83, i8 noundef zeroext 0) #16
  br label %if.end36.sink.split

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %c)
  %cmp5 = icmp ult i32 %c, 65536
  br i1 %cmp5, label %if.then6, label %if.else20

if.then6:                                         ; preds = %if.else4
  %39 = and i32 %c, -2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 55296, i32 %39)
  %40 = icmp eq i32 %39, 55296
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %c)
  %cmp10 = icmp eq i32 %c, 65535
  %or.cond62 = or i1 %cmp10, %40
  br i1 %or.cond62, label %if.then6.if.end36_crit_edge, label %if.end12

if.then6.if.end36_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.end12:                                         ; preds = %if.then6
  %shr13 = lshr i32 %c, 12
  %41 = trunc i32 %shr13 to i8
  %conv.i103 = or i8 %41, -32
  %tail.i.i104 = getelementptr inbounds %struct.tty_bufhead, ptr %vc, i32 0, i32 8
  %42 = ptrtoint ptr %tail.i.i104 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i.i104, align 4
  %used.i.i105 = getelementptr inbounds %struct.tty_buffer, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %used.i.i105 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %used.i.i105, align 4
  %size.i.i106 = getelementptr inbounds %struct.tty_buffer, ptr %43, i32 0, i32 2
  %46 = ptrtoint ptr %size.i.i106 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size.i.i106, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp3.i.i107 = icmp slt i32 %45, %47
  br i1 %cmp3.i.i107, label %if.then.i.i111, label %if.end12.i.i121

if.then.i.i111:                                   ; preds = %if.end12
  %flags.i.i108 = getelementptr inbounds %struct.tty_buffer, ptr %43, i32 0, i32 5
  %48 = ptrtoint ptr %flags.i.i108 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags.i.i108, align 4
  %and.i.i109 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i109)
  %tobool.not.i.i110 = icmp eq i32 %and.i.i109, 0
  br i1 %tobool.not.i.i110, label %if.then8.i.i115, label %if.then.i.i111.if.end.i.i119_crit_edge

if.then.i.i111.if.end.i.i119_crit_edge:           ; preds = %if.then.i.i111
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i119

if.then8.i.i115:                                  ; preds = %if.then.i.i111
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i112 = getelementptr inbounds %struct.tty_buffer, ptr %43, i32 0, i32 6
  %add.ptr.i.i.i.i113 = getelementptr i8, ptr %data.i.i.i.i112, i32 %45
  %add.ptr.i.i.i114 = getelementptr i8, ptr %add.ptr.i.i.i.i113, i32 %47
  %50 = ptrtoint ptr %add.ptr.i.i.i114 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %add.ptr.i.i.i114, align 1
  br label %if.end.i.i119

if.end.i.i119:                                    ; preds = %if.then8.i.i115, %if.then.i.i111.if.end.i.i119_crit_edge
  %51 = ptrtoint ptr %used.i.i105 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %used.i.i105, align 4
  %inc.i.i116 = add i32 %52, 1
  store i32 %inc.i.i116, ptr %used.i.i105, align 4
  %data.i.i.i117 = getelementptr inbounds %struct.tty_buffer, ptr %43, i32 0, i32 6
  %add.ptr.i1.i.i118 = getelementptr i8, ptr %data.i.i.i117, i32 %52
  %53 = ptrtoint ptr %add.ptr.i1.i.i118 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv.i103, ptr %add.ptr.i1.i.i118, align 1
  br label %put_queue.exit122

if.end12.i.i121:                                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i120 = tail call i32 @__tty_insert_flip_char(ptr noundef %vc, i8 noundef zeroext %conv.i103, i8 noundef zeroext 0) #16
  br label %put_queue.exit122

put_queue.exit122:                                ; preds = %if.end12.i.i121, %if.end.i.i119
  tail call void @tty_flip_buffer_push(ptr noundef %vc) #16
  %shr15 = lshr i32 %c, 6
  %54 = trunc i32 %shr15 to i8
  %55 = and i8 %54, 63
  %conv.i123 = or i8 %55, -128
  %56 = ptrtoint ptr %tail.i.i104 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tail.i.i104, align 4
  %used.i.i125 = getelementptr inbounds %struct.tty_buffer, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %used.i.i125 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %used.i.i125, align 4
  %size.i.i126 = getelementptr inbounds %struct.tty_buffer, ptr %57, i32 0, i32 2
  %60 = ptrtoint ptr %size.i.i126 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size.i.i126, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp3.i.i127 = icmp slt i32 %59, %61
  br i1 %cmp3.i.i127, label %if.then.i.i131, label %if.end12.i.i141

if.then.i.i131:                                   ; preds = %put_queue.exit122
  %flags.i.i128 = getelementptr inbounds %struct.tty_buffer, ptr %57, i32 0, i32 5
  %62 = ptrtoint ptr %flags.i.i128 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i.i128, align 4
  %and.i.i129 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i129)
  %tobool.not.i.i130 = icmp eq i32 %and.i.i129, 0
  br i1 %tobool.not.i.i130, label %if.then8.i.i135, label %if.then.i.i131.if.end.i.i139_crit_edge

if.then.i.i131.if.end.i.i139_crit_edge:           ; preds = %if.then.i.i131
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i139

if.then8.i.i135:                                  ; preds = %if.then.i.i131
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i132 = getelementptr inbounds %struct.tty_buffer, ptr %57, i32 0, i32 6
  %add.ptr.i.i.i.i133 = getelementptr i8, ptr %data.i.i.i.i132, i32 %59
  %add.ptr.i.i.i134 = getelementptr i8, ptr %add.ptr.i.i.i.i133, i32 %61
  %64 = ptrtoint ptr %add.ptr.i.i.i134 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %add.ptr.i.i.i134, align 1
  br label %if.end.i.i139

if.end.i.i139:                                    ; preds = %if.then8.i.i135, %if.then.i.i131.if.end.i.i139_crit_edge
  %65 = ptrtoint ptr %used.i.i125 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %used.i.i125, align 4
  %inc.i.i136 = add i32 %66, 1
  store i32 %inc.i.i136, ptr %used.i.i125, align 4
  %data.i.i.i137 = getelementptr inbounds %struct.tty_buffer, ptr %57, i32 0, i32 6
  %add.ptr.i1.i.i138 = getelementptr i8, ptr %data.i.i.i137, i32 %66
  %67 = ptrtoint ptr %add.ptr.i1.i.i138 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv.i123, ptr %add.ptr.i1.i.i138, align 1
  br label %put_queue.exit142

if.end12.i.i141:                                  ; preds = %put_queue.exit122
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i140 = tail call i32 @__tty_insert_flip_char(ptr noundef %vc, i8 noundef zeroext %conv.i123, i8 noundef zeroext 0) #16
  br label %put_queue.exit142

put_queue.exit142:                                ; preds = %if.end12.i.i141, %if.end.i.i139
  tail call void @tty_flip_buffer_push(ptr noundef %vc) #16
  %68 = trunc i32 %c to i8
  %69 = and i8 %68, 63
  %conv.i143 = or i8 %69, -128
  %70 = ptrtoint ptr %tail.i.i104 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tail.i.i104, align 4
  %used.i.i145 = getelementptr inbounds %struct.tty_buffer, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %used.i.i145 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %used.i.i145, align 4
  %size.i.i146 = getelementptr inbounds %struct.tty_buffer, ptr %71, i32 0, i32 2
  %74 = ptrtoint ptr %size.i.i146 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %size.i.i146, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %75)
  %cmp3.i.i147 = icmp slt i32 %73, %75
  br i1 %cmp3.i.i147, label %if.then.i.i151, label %if.end12.i.i161

if.then.i.i151:                                   ; preds = %put_queue.exit142
  %flags.i.i148 = getelementptr inbounds %struct.tty_buffer, ptr %71, i32 0, i32 5
  %76 = ptrtoint ptr %flags.i.i148 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags.i.i148, align 4
  %and.i.i149 = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i149)
  %tobool.not.i.i150 = icmp eq i32 %and.i.i149, 0
  br i1 %tobool.not.i.i150, label %if.then8.i.i155, label %if.then.i.i151.if.end.i.i159_crit_edge

if.then.i.i151.if.end.i.i159_crit_edge:           ; preds = %if.then.i.i151
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i159

if.then8.i.i155:                                  ; preds = %if.then.i.i151
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i152 = getelementptr inbounds %struct.tty_buffer, ptr %71, i32 0, i32 6
  %add.ptr.i.i.i.i153 = getelementptr i8, ptr %data.i.i.i.i152, i32 %73
  %add.ptr.i.i.i154 = getelementptr i8, ptr %add.ptr.i.i.i.i153, i32 %75
  %78 = ptrtoint ptr %add.ptr.i.i.i154 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %add.ptr.i.i.i154, align 1
  br label %if.end.i.i159

if.end.i.i159:                                    ; preds = %if.then8.i.i155, %if.then.i.i151.if.end.i.i159_crit_edge
  %79 = ptrtoint ptr %used.i.i145 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %used.i.i145, align 4
  %inc.i.i156 = add i32 %80, 1
  store i32 %inc.i.i156, ptr %used.i.i145, align 4
  %data.i.i.i157 = getelementptr inbounds %struct.tty_buffer, ptr %71, i32 0, i32 6
  %add.ptr.i1.i.i158 = getelementptr i8, ptr %data.i.i.i157, i32 %80
  %81 = ptrtoint ptr %add.ptr.i1.i.i158 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv.i143, ptr %add.ptr.i1.i.i158, align 1
  br label %if.end36.sink.split

if.end12.i.i161:                                  ; preds = %put_queue.exit142
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i160 = tail call i32 @__tty_insert_flip_char(ptr noundef %vc, i8 noundef zeroext %conv.i143, i8 noundef zeroext 0) #16
  br label %if.end36.sink.split

if.else20:                                        ; preds = %if.else4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1114112, i32 %c)
  %cmp21 = icmp ult i32 %c, 1114112
  br i1 %cmp21, label %if.then22, label %if.else20.if.end36_crit_edge

if.else20.if.end36_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.then22:                                        ; preds = %if.else20
  %shr23 = lshr i32 %c, 18
  %82 = trunc i32 %shr23 to i8
  %conv.i163 = or i8 %82, -16
  %tail.i.i164 = getelementptr inbounds %struct.tty_bufhead, ptr %vc, i32 0, i32 8
  %83 = ptrtoint ptr %tail.i.i164 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tail.i.i164, align 4
  %used.i.i165 = getelementptr inbounds %struct.tty_buffer, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %used.i.i165 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %used.i.i165, align 4
  %size.i.i166 = getelementptr inbounds %struct.tty_buffer, ptr %84, i32 0, i32 2
  %87 = ptrtoint ptr %size.i.i166 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %size.i.i166, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %88)
  %cmp3.i.i167 = icmp slt i32 %86, %88
  br i1 %cmp3.i.i167, label %if.then.i.i171, label %if.end12.i.i181

if.then.i.i171:                                   ; preds = %if.then22
  %flags.i.i168 = getelementptr inbounds %struct.tty_buffer, ptr %84, i32 0, i32 5
  %89 = ptrtoint ptr %flags.i.i168 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags.i.i168, align 4
  %and.i.i169 = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i169)
  %tobool.not.i.i170 = icmp eq i32 %and.i.i169, 0
  br i1 %tobool.not.i.i170, label %if.then8.i.i175, label %if.then.i.i171.if.end.i.i179_crit_edge

if.then.i.i171.if.end.i.i179_crit_edge:           ; preds = %if.then.i.i171
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i179

if.then8.i.i175:                                  ; preds = %if.then.i.i171
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i172 = getelementptr inbounds %struct.tty_buffer, ptr %84, i32 0, i32 6
  %add.ptr.i.i.i.i173 = getelementptr i8, ptr %data.i.i.i.i172, i32 %86
  %add.ptr.i.i.i174 = getelementptr i8, ptr %add.ptr.i.i.i.i173, i32 %88
  %91 = ptrtoint ptr %add.ptr.i.i.i174 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %add.ptr.i.i.i174, align 1
  br label %if.end.i.i179

if.end.i.i179:                                    ; preds = %if.then8.i.i175, %if.then.i.i171.if.end.i.i179_crit_edge
  %92 = ptrtoint ptr %used.i.i165 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %used.i.i165, align 4
  %inc.i.i176 = add i32 %93, 1
  store i32 %inc.i.i176, ptr %used.i.i165, align 4
  %data.i.i.i177 = getelementptr inbounds %struct.tty_buffer, ptr %84, i32 0, i32 6
  %add.ptr.i1.i.i178 = getelementptr i8, ptr %data.i.i.i177, i32 %93
  %94 = ptrtoint ptr %add.ptr.i1.i.i178 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv.i163, ptr %add.ptr.i1.i.i178, align 1
  br label %put_queue.exit182

if.end12.i.i181:                                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i180 = tail call i32 @__tty_insert_flip_char(ptr noundef %vc, i8 noundef zeroext %conv.i163, i8 noundef zeroext 0) #16
  br label %put_queue.exit182

put_queue.exit182:                                ; preds = %if.end12.i.i181, %if.end.i.i179
  tail call void @tty_flip_buffer_push(ptr noundef %vc) #16
  %shr25 = lshr i32 %c, 12
  %95 = trunc i32 %shr25 to i8
  %96 = and i8 %95, 63
  %conv.i183 = or i8 %96, -128
  %97 = ptrtoint ptr %tail.i.i164 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tail.i.i164, align 4
  %used.i.i185 = getelementptr inbounds %struct.tty_buffer, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %used.i.i185 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %used.i.i185, align 4
  %size.i.i186 = getelementptr inbounds %struct.tty_buffer, ptr %98, i32 0, i32 2
  %101 = ptrtoint ptr %size.i.i186 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %size.i.i186, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %102)
  %cmp3.i.i187 = icmp slt i32 %100, %102
  br i1 %cmp3.i.i187, label %if.then.i.i191, label %if.end12.i.i201

if.then.i.i191:                                   ; preds = %put_queue.exit182
  %flags.i.i188 = getelementptr inbounds %struct.tty_buffer, ptr %98, i32 0, i32 5
  %103 = ptrtoint ptr %flags.i.i188 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags.i.i188, align 4
  %and.i.i189 = and i32 %104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i189)
  %tobool.not.i.i190 = icmp eq i32 %and.i.i189, 0
  br i1 %tobool.not.i.i190, label %if.then8.i.i195, label %if.then.i.i191.if.end.i.i199_crit_edge

if.then.i.i191.if.end.i.i199_crit_edge:           ; preds = %if.then.i.i191
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i199

if.then8.i.i195:                                  ; preds = %if.then.i.i191
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i192 = getelementptr inbounds %struct.tty_buffer, ptr %98, i32 0, i32 6
  %add.ptr.i.i.i.i193 = getelementptr i8, ptr %data.i.i.i.i192, i32 %100
  %add.ptr.i.i.i194 = getelementptr i8, ptr %add.ptr.i.i.i.i193, i32 %102
  %105 = ptrtoint ptr %add.ptr.i.i.i194 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %add.ptr.i.i.i194, align 1
  br label %if.end.i.i199

if.end.i.i199:                                    ; preds = %if.then8.i.i195, %if.then.i.i191.if.end.i.i199_crit_edge
  %106 = ptrtoint ptr %used.i.i185 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %used.i.i185, align 4
  %inc.i.i196 = add i32 %107, 1
  store i32 %inc.i.i196, ptr %used.i.i185, align 4
  %data.i.i.i197 = getelementptr inbounds %struct.tty_buffer, ptr %98, i32 0, i32 6
  %add.ptr.i1.i.i198 = getelementptr i8, ptr %data.i.i.i197, i32 %107
  %108 = ptrtoint ptr %add.ptr.i1.i.i198 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv.i183, ptr %add.ptr.i1.i.i198, align 1
  br label %put_queue.exit202

if.end12.i.i201:                                  ; preds = %put_queue.exit182
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i200 = tail call i32 @__tty_insert_flip_char(ptr noundef %vc, i8 noundef zeroext %conv.i183, i8 noundef zeroext 0) #16
  br label %put_queue.exit202

put_queue.exit202:                                ; preds = %if.end12.i.i201, %if.end.i.i199
  tail call void @tty_flip_buffer_push(ptr noundef %vc) #16
  %shr28 = lshr i32 %c, 6
  %109 = trunc i32 %shr28 to i8
  %110 = and i8 %109, 63
  %conv.i203 = or i8 %110, -128
  %111 = ptrtoint ptr %tail.i.i164 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %tail.i.i164, align 4
  %used.i.i205 = getelementptr inbounds %struct.tty_buffer, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %used.i.i205 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %used.i.i205, align 4
  %size.i.i206 = getelementptr inbounds %struct.tty_buffer, ptr %112, i32 0, i32 2
  %115 = ptrtoint ptr %size.i.i206 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %size.i.i206, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %116)
  %cmp3.i.i207 = icmp slt i32 %114, %116
  br i1 %cmp3.i.i207, label %if.then.i.i211, label %if.end12.i.i221

if.then.i.i211:                                   ; preds = %put_queue.exit202
  %flags.i.i208 = getelementptr inbounds %struct.tty_buffer, ptr %112, i32 0, i32 5
  %117 = ptrtoint ptr %flags.i.i208 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %flags.i.i208, align 4
  %and.i.i209 = and i32 %118, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i209)
  %tobool.not.i.i210 = icmp eq i32 %and.i.i209, 0
  br i1 %tobool.not.i.i210, label %if.then8.i.i215, label %if.then.i.i211.if.end.i.i219_crit_edge

if.then.i.i211.if.end.i.i219_crit_edge:           ; preds = %if.then.i.i211
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i219

if.then8.i.i215:                                  ; preds = %if.then.i.i211
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i212 = getelementptr inbounds %struct.tty_buffer, ptr %112, i32 0, i32 6
  %add.ptr.i.i.i.i213 = getelementptr i8, ptr %data.i.i.i.i212, i32 %114
  %add.ptr.i.i.i214 = getelementptr i8, ptr %add.ptr.i.i.i.i213, i32 %116
  %119 = ptrtoint ptr %add.ptr.i.i.i214 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %add.ptr.i.i.i214, align 1
  br label %if.end.i.i219

if.end.i.i219:                                    ; preds = %if.then8.i.i215, %if.then.i.i211.if.end.i.i219_crit_edge
  %120 = ptrtoint ptr %used.i.i205 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %used.i.i205, align 4
  %inc.i.i216 = add i32 %121, 1
  store i32 %inc.i.i216, ptr %used.i.i205, align 4
  %data.i.i.i217 = getelementptr inbounds %struct.tty_buffer, ptr %112, i32 0, i32 6
  %add.ptr.i1.i.i218 = getelementptr i8, ptr %data.i.i.i217, i32 %121
  %122 = ptrtoint ptr %add.ptr.i1.i.i218 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv.i203, ptr %add.ptr.i1.i.i218, align 1
  br label %put_queue.exit222

if.end12.i.i221:                                  ; preds = %put_queue.exit202
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i220 = tail call i32 @__tty_insert_flip_char(ptr noundef %vc, i8 noundef zeroext %conv.i203, i8 noundef zeroext 0) #16
  br label %put_queue.exit222

put_queue.exit222:                                ; preds = %if.end12.i.i221, %if.end.i.i219
  tail call void @tty_flip_buffer_push(ptr noundef %vc) #16
  %123 = trunc i32 %c to i8
  %124 = and i8 %123, 63
  %conv.i223 = or i8 %124, -128
  %125 = ptrtoint ptr %tail.i.i164 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %tail.i.i164, align 4
  %used.i.i225 = getelementptr inbounds %struct.tty_buffer, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %used.i.i225 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %used.i.i225, align 4
  %size.i.i226 = getelementptr inbounds %struct.tty_buffer, ptr %126, i32 0, i32 2
  %129 = ptrtoint ptr %size.i.i226 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %size.i.i226, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %130)
  %cmp3.i.i227 = icmp slt i32 %128, %130
  br i1 %cmp3.i.i227, label %if.then.i.i231, label %if.end12.i.i241

if.then.i.i231:                                   ; preds = %put_queue.exit222
  %flags.i.i228 = getelementptr inbounds %struct.tty_buffer, ptr %126, i32 0, i32 5
  %131 = ptrtoint ptr %flags.i.i228 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %flags.i.i228, align 4
  %and.i.i229 = and i32 %132, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i229)
  %tobool.not.i.i230 = icmp eq i32 %and.i.i229, 0
  br i1 %tobool.not.i.i230, label %if.then8.i.i235, label %if.then.i.i231.if.end.i.i239_crit_edge

if.then.i.i231.if.end.i.i239_crit_edge:           ; preds = %if.then.i.i231
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i239

if.then8.i.i235:                                  ; preds = %if.then.i.i231
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i232 = getelementptr inbounds %struct.tty_buffer, ptr %126, i32 0, i32 6
  %add.ptr.i.i.i.i233 = getelementptr i8, ptr %data.i.i.i.i232, i32 %128
  %add.ptr.i.i.i234 = getelementptr i8, ptr %add.ptr.i.i.i.i233, i32 %130
  %133 = ptrtoint ptr %add.ptr.i.i.i234 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %add.ptr.i.i.i234, align 1
  br label %if.end.i.i239

if.end.i.i239:                                    ; preds = %if.then8.i.i235, %if.then.i.i231.if.end.i.i239_crit_edge
  %134 = ptrtoint ptr %used.i.i225 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %used.i.i225, align 4
  %inc.i.i236 = add i32 %135, 1
  store i32 %inc.i.i236, ptr %used.i.i225, align 4
  %data.i.i.i237 = getelementptr inbounds %struct.tty_buffer, ptr %126, i32 0, i32 6
  %add.ptr.i1.i.i238 = getelementptr i8, ptr %data.i.i.i237, i32 %135
  %136 = ptrtoint ptr %add.ptr.i1.i.i238 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %conv.i223, ptr %add.ptr.i1.i.i238, align 1
  br label %if.end36.sink.split

if.end12.i.i241:                                  ; preds = %put_queue.exit222
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i240 = tail call i32 @__tty_insert_flip_char(ptr noundef %vc, i8 noundef zeroext %conv.i223, i8 noundef zeroext 0) #16
  br label %if.end36.sink.split

if.end36.sink.split:                              ; preds = %if.end12.i.i241, %if.end.i.i239, %if.end12.i.i161, %if.end.i.i159, %if.end12.i.i101, %if.end.i.i99, %if.end12.i.i, %if.end.i.i
  tail call void @tty_flip_buffer_push(ptr noundef %vc) #16
  br label %if.end36

if.end36:                                         ; preds = %if.end36.sink.split, %if.else20.if.end36_crit_edge, %if.then6.if.end36_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k_self(ptr noundef %vc, i8 noundef zeroext %value, i8 noundef zeroext %up_flag) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @conv_8bit_to_uni(i8 noundef zeroext %value) #16
  tail call fastcc void @k_unicode(ptr noundef %vc, i32 noundef %call, i8 noundef zeroext %up_flag)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k_fn(ptr noundef %vc, i8 noundef zeroext %value, i8 noundef zeroext %up_flag) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %up_flag)
  %tobool.not = icmp eq i8 %up_flag, 0
  br i1 %tobool.not, label %if.then2, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.then2:                                         ; preds = %entry
  %conv = zext i8 %value to i32
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @func_buf_lock) #16
  %arrayidx = getelementptr [256 x ptr], ptr @func_table, i32 0, i32 %conv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %1, null
  br i1 %tobool9.not, label %if.then2.if.end13_crit_edge, label %if.then10

if.then2.if.end13_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then10:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call i32 @strlen(ptr noundef nonnull %1) #23
  %call.i.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %vc, ptr noundef nonnull %1, i8 noundef zeroext 0, i32 noundef %call.i) #16
  tail call void @tty_flip_buffer_push(ptr noundef %vc) #16
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then2.if.end13_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @func_buf_lock, i32 noundef %call6) #16
  br label %if.end20

if.end20:                                         ; preds = %if.end13, %entry.if.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k_spec(ptr noundef %vc, i8 noundef zeroext %value, i8 noundef zeroext %up_flag) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %up_flag)
  %tobool.not = icmp eq i8 %up_flag, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %conv = zext i8 %value to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %value)
  %cmp = icmp ugt i8 %value, 19
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end3:                                          ; preds = %if.end
  %0 = load ptr, ptr @kbd, align 4
  %kbdmode = getelementptr inbounds %struct.kbd_struct, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %kbdmode to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %kbdmode, align 1
  %bf.lshr = lshr i8 %bf.load, 1
  %trunc = trunc i8 %bf.lshr to i3
  %2 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.50)
  switch i3 %trunc, label %if.end3.if.end26_crit_edge [
    i3 2, label %if.end3.land.lhs.true_crit_edge
    i3 1, label %if.end3.land.lhs.true_crit_edge29
    i3 -4, label %if.end3.land.lhs.true_crit_edge30
  ]

if.end3.land.lhs.true_crit_edge30:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

if.end3.land.lhs.true_crit_edge29:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

if.end3.land.lhs.true_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

if.end3.if.end26_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end3.land.lhs.true_crit_edge, %if.end3.land.lhs.true_crit_edge29, %if.end3.land.lhs.true_crit_edge30
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %value)
  %cmp23.not = icmp eq i8 %value, 15
  br i1 %cmp23.not, label %land.lhs.true.if.end26_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.end26:                                         ; preds = %land.lhs.true.if.end26_crit_edge, %if.end3.if.end26_crit_edge
  %arrayidx = getelementptr [20 x ptr], ptr @fn_handler, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  tail call void %4(ptr noundef %vc) #16
  br label %return

return:                                           ; preds = %if.end26, %land.lhs.true.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k_pad(ptr noundef %vc, i8 noundef zeroext %value, i8 noundef zeroext %up_flag) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %up_flag)
  %tobool.not = icmp eq i8 %up_flag, 0
  br i1 %tobool.not, label %if.end, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @kbd, align 4
  %modeflags.i = getelementptr inbounds %struct.kbd_struct, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %modeflags.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i = load i8, ptr %modeflags.i, align 1
  %bf.lshr.i = lshr i8 %bf.load.i, 3
  %2 = and i8 %bf.lshr.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %3 = load i8, ptr @shift_down, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.then3, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %idxprom = zext i8 %value to i32
  %arrayidx = getelementptr [22 x i8], ptr @k_pad.app_map, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  store i8 79, ptr getelementptr inbounds ([4 x i8], ptr @applkey.buf, i32 0, i32 1), align 1
  store i8 %5, ptr getelementptr inbounds ([4 x i8], ptr @applkey.buf, i32 0, i32 2), align 1
  %call.i.i = tail call i32 @strlen(ptr noundef nonnull @applkey.buf) #23
  %call.i.i.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %vc, ptr noundef nonnull @applkey.buf, i8 noundef zeroext 0, i32 noundef %call.i.i) #16
  tail call void @tty_flip_buffer_push(ptr noundef %vc) #16
  br label %if.end31

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %ledflagstate.i = getelementptr inbounds %struct.kbd_struct, ptr %0, i32 0, i32 2
  %6 = ptrtoint ptr %ledflagstate.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i48 = load i8, ptr %ledflagstate.i, align 1
  %7 = and i8 %bf.load.i48, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %if.then7, label %if.end4.if.end21_crit_edge

if.end4.if.end21_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.then7:                                         ; preds = %if.end4
  %8 = zext i8 %value to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %value, label %if.then7.if.end21_crit_edge [
    i8 15, label %if.then7.sw.bb_crit_edge
    i8 16, label %if.then7.sw.bb_crit_edge82
    i8 0, label %sw.bb9
    i8 1, label %sw.bb10
    i8 2, label %sw.bb11
    i8 3, label %sw.bb12
    i8 4, label %sw.bb13
    i8 6, label %sw.bb14
    i8 7, label %sw.bb15
    i8 8, label %sw.bb16
    i8 9, label %sw.bb17
    i8 5, label %sw.bb18
  ]

if.then7.sw.bb_crit_edge82:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.then7.sw.bb_crit_edge:                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb

if.then7.if.end21_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

sw.bb:                                            ; preds = %if.then7.sw.bb_crit_edge, %if.then7.sw.bb_crit_edge82
  tail call void @k_fn(ptr noundef %vc, i8 noundef zeroext 22, i8 noundef zeroext 0)
  br label %if.end31

sw.bb9:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @k_fn(ptr noundef %vc, i8 noundef zeroext 21, i8 noundef zeroext 0)
  br label %if.end31

sw.bb10:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @k_fn(ptr noundef %vc, i8 noundef zeroext 23, i8 noundef zeroext 0)
  br label %if.end31

sw.bb11:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @k_cur(ptr noundef %vc, i8 noundef zeroext 0, i8 noundef zeroext 0)
  br label %if.end31

sw.bb12:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @k_fn(ptr noundef %vc, i8 noundef zeroext 25, i8 noundef zeroext 0)
  br label %if.end31

sw.bb13:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @k_cur(ptr noundef %vc, i8 noundef zeroext 1, i8 noundef zeroext 0)
  br label %if.end31

sw.bb14:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @k_cur(ptr noundef %vc, i8 noundef zeroext 2, i8 noundef zeroext 0)
  br label %if.end31

sw.bb15:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @k_fn(ptr noundef %vc, i8 noundef zeroext 20, i8 noundef zeroext 0)
  br label %if.end31

sw.bb16:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @k_cur(ptr noundef %vc, i8 noundef zeroext 3, i8 noundef zeroext 0)
  br label %if.end31

sw.bb17:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @k_fn(ptr noundef %vc, i8 noundef zeroext 24, i8 noundef zeroext 0)
  br label %if.end31

sw.bb18:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @applkey(ptr noundef %vc, i32 noundef 71, i8 noundef zeroext %2)
  br label %if.end31

if.end21:                                         ; preds = %if.then7.if.end21_crit_edge, %if.end4.if.end21_crit_edge
  %idxprom22 = zext i8 %value to i32
  %arrayidx23 = getelementptr [22 x i8], ptr @k_pad.pad_chars, i32 0, i32 %idxprom22
  %9 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx23, align 1
  %tail.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %vc, i32 0, i32 8
  %11 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i.i, align 4
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp3.i.i = icmp slt i32 %14, %16
  br i1 %cmp3.i.i, label %if.then.i.i, label %if.end12.i.i

if.then.i.i:                                      ; preds = %if.end21
  %flags.i.i = getelementptr inbounds %struct.tty_buffer, ptr %12, i32 0, i32 5
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then8.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then8.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %12, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %14
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %16
  %19 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %add.ptr.i.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then8.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %20 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %21, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %12, i32 0, i32 6
  %add.ptr.i1.i.i = getelementptr i8, ptr %data.i.i.i, i32 %21
  %22 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %10, ptr %add.ptr.i1.i.i, align 1
  br label %put_queue.exit

if.end12.i.i:                                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %vc, i8 noundef zeroext %10, i8 noundef zeroext 0) #16
  br label %put_queue.exit

put_queue.exit:                                   ; preds = %if.end12.i.i, %if.end.i.i
  tail call void @tty_flip_buffer_push(ptr noundef %vc) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %value)
  %cmp = icmp eq i8 %value, 14
  br i1 %cmp, label %land.lhs.true27, label %put_queue.exit.if.end31_crit_edge

put_queue.exit.if.end31_crit_edge:                ; preds = %put_queue.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

land.lhs.true27:                                  ; preds = %put_queue.exit
  %23 = load ptr, ptr @kbd, align 4
  %modeflags.i57 = getelementptr inbounds %struct.kbd_struct, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %modeflags.i57 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i58 = load i8, ptr %modeflags.i57, align 1
  %25 = and i8 %bf.load.i58, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool29.not = icmp eq i8 %25, 0
  br i1 %tobool29.not, label %land.lhs.true27.if.end31_crit_edge, label %if.then30

land.lhs.true27.if.end31_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

if.then30:                                        ; preds = %land.lhs.true27
  %26 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail.i.i, align 4
  %used.i.i64 = getelementptr inbounds %struct.tty_buffer, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %used.i.i64 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %used.i.i64, align 4
  %size.i.i65 = getelementptr inbounds %struct.tty_buffer, ptr %27, i32 0, i32 2
  %30 = ptrtoint ptr %size.i.i65 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size.i.i65, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp3.i.i66 = icmp slt i32 %29, %31
  br i1 %cmp3.i.i66, label %if.then.i.i70, label %if.end12.i.i80

if.then.i.i70:                                    ; preds = %if.then30
  %flags.i.i67 = getelementptr inbounds %struct.tty_buffer, ptr %27, i32 0, i32 5
  %32 = ptrtoint ptr %flags.i.i67 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i.i67, align 4
  %and.i.i68 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i68)
  %tobool.not.i.i69 = icmp eq i32 %and.i.i68, 0
  br i1 %tobool.not.i.i69, label %if.then8.i.i74, label %if.then.i.i70.if.end.i.i78_crit_edge

if.then.i.i70.if.end.i.i78_crit_edge:             ; preds = %if.then.i.i70
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i78

if.then8.i.i74:                                   ; preds = %if.then.i.i70
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i71 = getelementptr inbounds %struct.tty_buffer, ptr %27, i32 0, i32 6
  %add.ptr.i.i.i.i72 = getelementptr i8, ptr %data.i.i.i.i71, i32 %29
  %add.ptr.i.i.i73 = getelementptr i8, ptr %add.ptr.i.i.i.i72, i32 %31
  %34 = ptrtoint ptr %add.ptr.i.i.i73 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %add.ptr.i.i.i73, align 1
  br label %if.end.i.i78

if.end.i.i78:                                     ; preds = %if.then8.i.i74, %if.then.i.i70.if.end.i.i78_crit_edge
  %35 = ptrtoint ptr %used.i.i64 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %used.i.i64, align 4
  %inc.i.i75 = add i32 %36, 1
  store i32 %inc.i.i75, ptr %used.i.i64, align 4
  %data.i.i.i76 = getelementptr inbounds %struct.tty_buffer, ptr %27, i32 0, i32 6
  %add.ptr.i1.i.i77 = getelementptr i8, ptr %data.i.i.i76, i32 %36
  %37 = ptrtoint ptr %add.ptr.i1.i.i77 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 10, ptr %add.ptr.i1.i.i77, align 1
  br label %put_queue.exit81

if.end12.i.i80:                                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i79 = tail call i32 @__tty_insert_flip_char(ptr noundef %vc, i8 noundef zeroext 10, i8 noundef zeroext 0) #16
  br label %put_queue.exit81

put_queue.exit81:                                 ; preds = %if.end12.i.i80, %if.end.i.i78
  tail call void @tty_flip_buffer_push(ptr noundef %vc) #16
  br label %if.end31

if.end31:                                         ; preds = %put_queue.exit81, %land.lhs.true27.if.end31_crit_edge, %put_queue.exit.if.end31_crit_edge, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb, %if.then3, %entry.if.end31_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k_dead(ptr noundef %vc, i8 noundef zeroext %value, i8 noundef zeroext %up_flag) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %value to i32
  %arrayidx = getelementptr [27 x i8], ptr @k_dead.ret_diacr, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %up_flag)
  %tobool.not.i = icmp eq i8 %up_flag, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.k_deadunicode.exit_crit_edge

entry.k_deadunicode.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %k_deadunicode.exit

if.end.i:                                         ; preds = %entry
  %2 = load i32, ptr @diacr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not.i = icmp eq i32 %2, 0
  br i1 %tobool1.not.i, label %if.end.i.cond.end.i_crit_edge, label %cond.true.i

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call fastcc i32 @handle_diacr(ptr noundef %vc, i32 noundef %conv) #16
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %conv, %if.end.i.cond.end.i_crit_edge ]
  store i32 %cond.i, ptr @diacr, align 4
  br label %k_deadunicode.exit

k_deadunicode.exit:                               ; preds = %cond.end.i, %entry.k_deadunicode.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k_cons(ptr nocapture noundef readnone %vc, i8 noundef zeroext %value, i8 noundef zeroext %up_flag) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %up_flag)
  %tobool.not = icmp eq i8 %up_flag, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %conv = zext i8 %value to i32
  %call = tail call i32 @set_console(i32 noundef %conv) #16
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k_cur(ptr noundef %vc, i8 noundef zeroext %value, i8 noundef zeroext %up_flag) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %up_flag)
  %tobool.not = icmp eq i8 %up_flag, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %idxprom = zext i8 %value to i32
  %arrayidx = getelementptr [5 x i8], ptr @k_cur.cur_chars, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = load ptr, ptr @kbd, align 4
  %modeflags.i = getelementptr inbounds %struct.kbd_struct, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %modeflags.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i = load i8, ptr %modeflags.i, align 1
  %4 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %conv1.i = select i1 %tobool.not.i, i8 91, i8 79
  store i8 %conv1.i, ptr getelementptr inbounds ([4 x i8], ptr @applkey.buf, i32 0, i32 1), align 1
  store i8 %1, ptr getelementptr inbounds ([4 x i8], ptr @applkey.buf, i32 0, i32 2), align 1
  %call.i.i = tail call i32 @strlen(ptr noundef nonnull @applkey.buf) #23
  %call.i.i.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %vc, ptr noundef nonnull @applkey.buf, i8 noundef zeroext 0, i32 noundef %call.i.i) #16
  tail call void @tty_flip_buffer_push(ptr noundef %vc) #16
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k_shift(ptr noundef %vc, i8 noundef zeroext %value, i8 noundef zeroext %up_flag) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @shift_state, align 4
  %1 = load i8, ptr @rep, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %value)
  %cmp = icmp eq i8 %value, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %up_flag)
  %tobool3.not = icmp eq i8 %up_flag, 0
  br i1 %cmp, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  br i1 %tobool3.not, label %if.end6.thread, label %if.then2.if.then8_crit_edge

if.then2.if.then8_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8

if.end6.thread:                                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  %2 = load ptr, ptr @kbd, align 4
  %ledflagstate.i = getelementptr inbounds %struct.kbd_struct, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %ledflagstate.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i = load i8, ptr %ledflagstate.i, align 1
  %bf.set.i = and i8 %bf.load.i, -33
  store i8 %bf.set.i, ptr %ledflagstate.i, align 1
  br label %if.else

if.end6:                                          ; preds = %if.end
  br i1 %tobool3.not, label %if.end6.if.else_crit_edge, label %if.end6.if.then8_crit_edge

if.end6.if.then8_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8

if.end6.if.else_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else

if.then8:                                         ; preds = %if.end6.if.then8_crit_edge, %if.then2.if.then8_crit_edge
  %value.addr.061 = phi i8 [ %value, %if.end6.if.then8_crit_edge ], [ 0, %if.then2.if.then8_crit_edge ]
  %idxprom = zext i8 %value.addr.061 to i32
  %arrayidx = getelementptr [9 x i8], ptr @shift_down, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %if.then8.if.end16_crit_edge, label %if.then10

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  %dec = add i8 %5, -1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %dec, ptr %arrayidx, align 1
  br label %if.end16

if.else:                                          ; preds = %if.end6.if.else_crit_edge, %if.end6.thread
  %value.addr.055 = phi i8 [ 0, %if.end6.thread ], [ %value, %if.end6.if.else_crit_edge ]
  %idxprom14 = zext i8 %value.addr.055 to i32
  %arrayidx15 = getelementptr [9 x i8], ptr @shift_down, i32 0, i32 %idxprom14
  %7 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx15, align 1
  %inc = add i8 %8, 1
  store i8 %inc, ptr %arrayidx15, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then10, %if.then8.if.end16_crit_edge
  %idxprom17.pre-phi = phi i32 [ %idxprom, %if.then8.if.end16_crit_edge ], [ %idxprom, %if.then10 ], [ %idxprom14, %if.else ]
  %tobool7.not56 = phi i1 [ false, %if.then8.if.end16_crit_edge ], [ false, %if.then10 ], [ true, %if.else ]
  %arrayidx18 = getelementptr [9 x i8], ptr @shift_down, i32 0, i32 %idxprom17.pre-phi
  %9 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool19.not = icmp eq i8 %10, 0
  %shl24 = shl nuw i32 1, %idxprom17.pre-phi
  %neg = xor i32 %shl24, -1
  %and = and i32 %0, %neg
  %or = or i32 %shl24, %0
  %storemerge = select i1 %tobool19.not, i32 %and, i32 %or
  store i32 %storemerge, ptr @shift_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge, i32 %0)
  %cmp28.not = icmp eq i32 %storemerge, %0
  %or.cond = select i1 %tobool7.not56, i1 true, i1 %cmp28.not
  br i1 %or.cond, label %if.end16.cleanup_crit_edge, label %land.lhs.true30

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true30:                                  ; preds = %if.end16
  %.b51 = load i1, ptr @npadch_active, align 1
  br i1 %.b51, label %if.then33, label %land.lhs.true30.cleanup_crit_edge

land.lhs.true30.cleanup_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then33:                                        ; preds = %land.lhs.true30
  %11 = load ptr, ptr @kbd, align 4
  %kbdmode = getelementptr inbounds %struct.kbd_struct, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %kbdmode to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %kbdmode, align 1
  %13 = and i8 %bf.load, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %13)
  %cmp35 = icmp eq i8 %13, 6
  %14 = load i32, ptr @npadch_value, align 4
  br i1 %cmp35, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @to_utf8(ptr noundef %vc, i32 noundef %14)
  br label %if.end40

if.else38:                                        ; preds = %if.then33
  %conv.i = trunc i32 %14 to i8
  %tail.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %vc, i32 0, i32 8
  %15 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i, align 4
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp3.i.i = icmp slt i32 %18, %20
  br i1 %cmp3.i.i, label %if.then.i.i, label %if.end12.i.i

if.then.i.i:                                      ; preds = %if.else38
  %flags.i.i = getelementptr inbounds %struct.tty_buffer, ptr %16, i32 0, i32 5
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then8.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then8.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %16, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %18
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %20
  %23 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %add.ptr.i.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then8.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %24 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %25, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %16, i32 0, i32 6
  %add.ptr.i1.i.i = getelementptr i8, ptr %data.i.i.i, i32 %25
  %26 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i, ptr %add.ptr.i1.i.i, align 1
  br label %put_queue.exit

if.end12.i.i:                                     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %vc, i8 noundef zeroext %conv.i, i8 noundef zeroext 0) #16
  br label %put_queue.exit

put_queue.exit:                                   ; preds = %if.end12.i.i, %if.end.i.i
  tail call void @tty_flip_buffer_push(ptr noundef %vc) #16
  br label %if.end40

if.end40:                                         ; preds = %put_queue.exit, %if.then37
  store i1 false, ptr @npadch_active, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %land.lhs.true30.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k_meta(ptr noundef %vc, i8 noundef zeroext %value, i8 noundef zeroext %up_flag) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %up_flag)
  %tobool.not = icmp eq i8 %up_flag, 0
  br i1 %tobool.not, label %if.end, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @kbd, align 4
  %modeflags.i = getelementptr inbounds %struct.kbd_struct, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %modeflags.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i = load i8, ptr %modeflags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool1.not = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %tail.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %vc, i32 0, i32 8
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 4
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3.i.i = icmp slt i32 %5, %7
  br i1 %cmp3.i.i, label %if.then.i.i, label %if.end12.i.i

if.then.i.i:                                      ; preds = %if.then2
  %flags.i.i = getelementptr inbounds %struct.tty_buffer, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then8.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then8.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %3, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %5
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %7
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %add.ptr.i.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then8.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %11 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %12, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %3, i32 0, i32 6
  %add.ptr.i1.i.i = getelementptr i8, ptr %data.i.i.i, i32 %12
  %13 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 27, ptr %add.ptr.i1.i.i, align 1
  br label %put_queue.exit

if.end12.i.i:                                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %vc, i8 noundef zeroext 27, i8 noundef zeroext 0) #16
  br label %put_queue.exit

put_queue.exit:                                   ; preds = %if.end12.i.i, %if.end.i.i
  tail call void @tty_flip_buffer_push(ptr noundef %vc) #16
  %14 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i, align 4
  %used.i.i9 = getelementptr inbounds %struct.tty_buffer, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %used.i.i9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %used.i.i9, align 4
  %size.i.i10 = getelementptr inbounds %struct.tty_buffer, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %size.i.i10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i.i10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp3.i.i11 = icmp slt i32 %17, %19
  br i1 %cmp3.i.i11, label %if.then.i.i15, label %if.end12.i.i25

if.then.i.i15:                                    ; preds = %put_queue.exit
  %flags.i.i12 = getelementptr inbounds %struct.tty_buffer, ptr %15, i32 0, i32 5
  %20 = ptrtoint ptr %flags.i.i12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i.i12, align 4
  %and.i.i13 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i13)
  %tobool.not.i.i14 = icmp eq i32 %and.i.i13, 0
  br i1 %tobool.not.i.i14, label %if.then8.i.i19, label %if.then.i.i15.if.end.i.i23_crit_edge

if.then.i.i15.if.end.i.i23_crit_edge:             ; preds = %if.then.i.i15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i23

if.then8.i.i19:                                   ; preds = %if.then.i.i15
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i16 = getelementptr inbounds %struct.tty_buffer, ptr %15, i32 0, i32 6
  %add.ptr.i.i.i.i17 = getelementptr i8, ptr %data.i.i.i.i16, i32 %17
  %add.ptr.i.i.i18 = getelementptr i8, ptr %add.ptr.i.i.i.i17, i32 %19
  %22 = ptrtoint ptr %add.ptr.i.i.i18 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %add.ptr.i.i.i18, align 1
  br label %if.end.i.i23

if.end.i.i23:                                     ; preds = %if.then8.i.i19, %if.then.i.i15.if.end.i.i23_crit_edge
  %23 = ptrtoint ptr %used.i.i9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %used.i.i9, align 4
  %inc.i.i20 = add i32 %24, 1
  store i32 %inc.i.i20, ptr %used.i.i9, align 4
  %data.i.i.i21 = getelementptr inbounds %struct.tty_buffer, ptr %15, i32 0, i32 6
  %add.ptr.i1.i.i22 = getelementptr i8, ptr %data.i.i.i21, i32 %24
  %25 = ptrtoint ptr %add.ptr.i1.i.i22 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %value, ptr %add.ptr.i1.i.i22, align 1
  br label %if.end4.sink.split

if.end12.i.i25:                                   ; preds = %put_queue.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i24 = tail call i32 @__tty_insert_flip_char(ptr noundef %vc, i8 noundef zeroext %value, i8 noundef zeroext 0) #16
  br label %if.end4.sink.split

if.else:                                          ; preds = %if.end
  %26 = or i8 %value, -128
  %tail.i.i27 = getelementptr inbounds %struct.tty_bufhead, ptr %vc, i32 0, i32 8
  %27 = ptrtoint ptr %tail.i.i27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i27, align 4
  %used.i.i28 = getelementptr inbounds %struct.tty_buffer, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %used.i.i28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %used.i.i28, align 4
  %size.i.i29 = getelementptr inbounds %struct.tty_buffer, ptr %28, i32 0, i32 2
  %31 = ptrtoint ptr %size.i.i29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size.i.i29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp3.i.i30 = icmp slt i32 %30, %32
  br i1 %cmp3.i.i30, label %if.then.i.i34, label %if.end12.i.i44

if.then.i.i34:                                    ; preds = %if.else
  %flags.i.i31 = getelementptr inbounds %struct.tty_buffer, ptr %28, i32 0, i32 5
  %33 = ptrtoint ptr %flags.i.i31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i.i31, align 4
  %and.i.i32 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i32)
  %tobool.not.i.i33 = icmp eq i32 %and.i.i32, 0
  br i1 %tobool.not.i.i33, label %if.then8.i.i38, label %if.then.i.i34.if.end.i.i42_crit_edge

if.then.i.i34.if.end.i.i42_crit_edge:             ; preds = %if.then.i.i34
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i42

if.then8.i.i38:                                   ; preds = %if.then.i.i34
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i35 = getelementptr inbounds %struct.tty_buffer, ptr %28, i32 0, i32 6
  %add.ptr.i.i.i.i36 = getelementptr i8, ptr %data.i.i.i.i35, i32 %30
  %add.ptr.i.i.i37 = getelementptr i8, ptr %add.ptr.i.i.i.i36, i32 %32
  %35 = ptrtoint ptr %add.ptr.i.i.i37 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %add.ptr.i.i.i37, align 1
  br label %if.end.i.i42

if.end.i.i42:                                     ; preds = %if.then8.i.i38, %if.then.i.i34.if.end.i.i42_crit_edge
  %36 = ptrtoint ptr %used.i.i28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %used.i.i28, align 4
  %inc.i.i39 = add i32 %37, 1
  store i32 %inc.i.i39, ptr %used.i.i28, align 4
  %data.i.i.i40 = getelementptr inbounds %struct.tty_buffer, ptr %28, i32 0, i32 6
  %add.ptr.i1.i.i41 = getelementptr i8, ptr %data.i.i.i40, i32 %37
  %38 = ptrtoint ptr %add.ptr.i1.i.i41 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %26, ptr %add.ptr.i1.i.i41, align 1
  br label %if.end4.sink.split

if.end12.i.i44:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i43 = tail call i32 @__tty_insert_flip_char(ptr noundef %vc, i8 noundef zeroext %26, i8 noundef zeroext 0) #16
  br label %if.end4.sink.split

if.end4.sink.split:                               ; preds = %if.end12.i.i44, %if.end.i.i42, %if.end12.i.i25, %if.end.i.i23
  tail call void @tty_flip_buffer_push(ptr noundef %vc) #16
  br label %if.end4

if.end4:                                          ; preds = %if.end4.sink.split, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @k_ascii(ptr nocapture noundef readnone %vc, i8 noundef zeroext %value, i8 noundef zeroext %up_flag) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %up_flag)
  %tobool.not = icmp eq i8 %up_flag, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %value)
  %cmp = icmp ult i8 %value, 10
  %sub = add i8 %value, -10
  %value.addr.0 = select i1 %cmp, i8 %value, i8 %sub
  %base.0 = select i1 %cmp, i32 10, i32 16
  %.b12 = load i1, ptr @npadch_active, align 1
  br i1 %.b12, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  store i32 0, ptr @npadch_value, align 4
  store i1 true, ptr @npadch_active, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %0 = load i32, ptr @npadch_value, align 4
  %mul = mul i32 %0, %base.0
  %conv9 = zext i8 %value.addr.0 to i32
  %add = add i32 %mul, %conv9
  store i32 %add, ptr @npadch_value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @k_lock(ptr nocapture noundef readnone %vc, i8 noundef zeroext %value, i8 noundef zeroext %up_flag) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %up_flag)
  %tobool.not = icmp eq i8 %up_flag, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, ptr @rep, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  %1 = load ptr, ptr @kbd, align 4
  %conv3 = zext i8 %value to i32
  %shl.i = shl nuw i32 1, %conv3
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %4 = trunc i32 %shl.i to i8
  %conv1.i = xor i8 %3, %4
  store i8 %conv1.i, ptr %1, align 1
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k_lowercase(ptr nocapture noundef readnone %vc, i8 noundef zeroext %value, i8 noundef zeroext %up_flag) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k_slock(ptr noundef %vc, i8 noundef zeroext %value, i8 noundef zeroext %up_flag) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @k_shift(ptr noundef %vc, i8 noundef zeroext %value, i8 noundef zeroext %up_flag)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %up_flag)
  %tobool.not = icmp eq i8 %up_flag, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, ptr @rep, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.if.end10_crit_edge

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  %1 = load ptr, ptr @kbd, align 4
  %conv3 = zext i8 %value to i32
  %shl.i = shl nuw i32 1, %conv3
  %slockstate.i = getelementptr inbounds %struct.kbd_struct, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %slockstate.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %slockstate.i, align 1
  %4 = trunc i32 %shl.i to i8
  %conv1.i = xor i8 %3, %4
  store i8 %conv1.i, ptr %slockstate.i, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %1, align 1
  %xor14 = xor i8 %6, %conv1.i
  %xor = zext i8 %xor14 to i32
  %arrayidx = getelementptr [256 x ptr], ptr @key_maps, i32 0, i32 %xor
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %8, null
  %spec.store.select = select i1 %tobool6.not, i8 %4, i8 %conv1.i
  store i8 %spec.store.select, ptr %slockstate.i, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.end, %lor.lhs.false.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k_dead2(ptr noundef %vc, i8 noundef zeroext %value, i8 noundef zeroext %up_flag) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %value to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %up_flag)
  %tobool.not.i = icmp eq i8 %up_flag, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.k_deadunicode.exit_crit_edge

entry.k_deadunicode.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %k_deadunicode.exit

if.end.i:                                         ; preds = %entry
  %0 = load i32, ptr @diacr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool1.not.i = icmp eq i32 %0, 0
  br i1 %tobool1.not.i, label %if.end.i.cond.end.i_crit_edge, label %cond.true.i

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call fastcc i32 @handle_diacr(ptr noundef %vc, i32 noundef %conv) #16
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %conv, %if.end.i.cond.end.i_crit_edge ]
  store i32 %cond.i, ptr @diacr, align 4
  br label %k_deadunicode.exit

k_deadunicode.exit:                               ; preds = %cond.end.i, %entry.k_deadunicode.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k_brl(ptr noundef %vc, i8 noundef zeroext %value, i8 noundef zeroext %up_flag) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @kbd, align 4
  %kbdmode = getelementptr inbounds %struct.kbd_struct, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %kbdmode to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %kbdmode, align 1
  %2 = and i8 %bf.load, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %2)
  %cmp.not = icmp eq i8 %2, 6
  br i1 %cmp.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %up_flag)
  %tobool.not = icmp eq i8 %up_flag, 0
  br i1 %tobool.not, label %do.end, label %if.then.if.end44_crit_edge

if.then.if.end44_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #19
  br label %if.end44

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %value)
  %tobool4.not = icmp eq i8 %value, 0
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @k_unicode(ptr noundef %vc, i32 noundef 10240, i8 noundef zeroext %up_flag)
  br label %if.end44

if.end6:                                          ; preds = %if.end3
  %conv7 = zext i8 %value to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %value)
  %cmp8 = icmp ugt i8 %value, 8
  br i1 %cmp8, label %if.end6.if.end44_crit_edge, label %if.end11

if.end6.if.end44_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %up_flag)
  %tobool12.not = icmp eq i8 %up_flag, 0
  br i1 %tobool12.not, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  %sub = add nsw i32 %conv7, -1
  %shl = shl nuw i32 1, %sub
  %3 = load i32, ptr @k_brl.pressed, align 4
  %or = or i32 %3, %shl
  store i32 %or, ptr @k_brl.pressed, align 4
  %4 = load i32, ptr @brl_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool15.not = icmp eq i32 %4, 0
  br i1 %tobool15.not, label %if.then16, label %if.then13.if.end44_crit_edge

if.then13.if.end44_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #18
  store i32 %or, ptr @k_brl.committing, align 4
  br label %if.end44

if.else:                                          ; preds = %if.end11
  %5 = load i32, ptr @brl_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool18.not = icmp eq i32 %5, 0
  %6 = load i32, ptr @k_brl.committing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool35.not = icmp eq i32 %6, 0
  br i1 %tobool18.not, label %if.else34, label %if.then19

if.then19:                                        ; preds = %if.else
  br i1 %tobool35.not, label %if.then19.if.then25_crit_edge, label %lor.lhs.false

if.then19.if.then25_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then25

lor.lhs.false:                                    ; preds = %if.then19
  %7 = load i32, ptr @k_brl.releasestart, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %5) #16
  %add = add i32 %call2.i, %7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub22 = sub i32 %add, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub22)
  %cmp23 = icmp slt i32 %sub22, 0
  br i1 %cmp23, label %lor.lhs.false.if.then25_crit_edge, label %lor.lhs.false.if.end26_crit_edge

lor.lhs.false.if.end26_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

lor.lhs.false.if.then25_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then25

if.then25:                                        ; preds = %lor.lhs.false.if.then25_crit_edge, %if.then19.if.then25_crit_edge
  %9 = load i32, ptr @k_brl.pressed, align 4
  store i32 %9, ptr @k_brl.committing, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  store i32 %10, ptr @k_brl.releasestart, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %lor.lhs.false.if.end26_crit_edge
  %sub28 = add nsw i32 %conv7, -1
  %shl29 = shl nuw i32 1, %sub28
  %neg = xor i32 %shl29, -1
  %11 = load i32, ptr @k_brl.pressed, align 4
  %and = and i32 %11, %neg
  store i32 %and, ptr @k_brl.pressed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %land.lhs.true, label %if.end26.if.end44_crit_edge

if.end26.if.end44_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

land.lhs.true:                                    ; preds = %if.end26
  %12 = load i32, ptr @k_brl.committing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool31.not = icmp eq i32 %12, 0
  br i1 %tobool31.not, label %land.lhs.true.if.end44_crit_edge, label %if.then32

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @k_brlcommit(ptr noundef %vc, i32 noundef %12)
  store i32 0, ptr @k_brl.committing, align 4
  br label %if.end44

if.else34:                                        ; preds = %if.else
  br i1 %tobool35.not, label %if.else34.if.end37_crit_edge, label %if.then36

if.else34.if.end37_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.then36:                                        ; preds = %if.else34
  %13 = load i32, ptr @brl_nbchords, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.then.i55, label %if.else.i57

if.then.i55:                                      ; preds = %if.then36
  %or.i = or i32 %6, 10240
  %14 = load i32, ptr @diacr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool1.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool1.not.i.i, label %if.then.i55.k_deadunicode.exit.i_crit_edge, label %cond.true.i.i

if.then.i55.k_deadunicode.exit.i_crit_edge:       ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #18
  br label %k_deadunicode.exit.i

cond.true.i.i:                                    ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i = tail call fastcc i32 @handle_diacr(ptr noundef %vc, i32 noundef %or.i) #16
  br label %k_deadunicode.exit.i

k_deadunicode.exit.i:                             ; preds = %cond.true.i.i, %if.then.i55.k_deadunicode.exit.i_crit_edge
  %cond.i.i = phi i32 [ %call.i.i, %cond.true.i.i ], [ %or.i, %if.then.i55.k_deadunicode.exit.i_crit_edge ]
  store i32 %cond.i.i, ptr @diacr, align 4
  br label %k_brlcommit.exit

if.else.i57:                                      ; preds = %if.then36
  %15 = load i32, ptr @k_brlcommit.committed, align 4
  %or1.i = or i32 %15, %6
  store i32 %or1.i, ptr @k_brlcommit.committed, align 4
  %16 = load i32, ptr @k_brlcommit.chords, align 4
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr @k_brlcommit.chords, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %13)
  %cmp.i56 = icmp eq i32 %inc.i, %13
  br i1 %cmp.i56, label %if.then2.i, label %if.else.i57.k_brlcommit.exit_crit_edge

if.else.i57.k_brlcommit.exit_crit_edge:           ; preds = %if.else.i57
  call void @__sanitizer_cov_trace_pc() #18
  br label %k_brlcommit.exit

if.then2.i:                                       ; preds = %if.else.i57
  call void @__sanitizer_cov_trace_pc() #18
  %or3.i = or i32 %or1.i, 10240
  tail call fastcc void @k_unicode(ptr noundef %vc, i32 noundef %or3.i, i8 noundef zeroext 0) #16
  store i32 0, ptr @k_brlcommit.chords, align 4
  store i32 0, ptr @k_brlcommit.committed, align 4
  br label %k_brlcommit.exit

k_brlcommit.exit:                                 ; preds = %if.then2.i, %if.else.i57.k_brlcommit.exit_crit_edge, %k_deadunicode.exit.i
  store i32 0, ptr @k_brl.committing, align 4
  br label %if.end37

if.end37:                                         ; preds = %k_brlcommit.exit, %if.else34.if.end37_crit_edge
  %sub39 = add nsw i32 %conv7, -1
  %shl40 = shl nuw i32 1, %sub39
  %neg41 = xor i32 %shl40, -1
  %17 = load i32, ptr @k_brl.pressed, align 4
  %and42 = and i32 %17, %neg41
  store i32 %and42, ptr @k_brl.pressed, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end37, %if.then32, %land.lhs.true.if.end44_crit_edge, %if.end26.if.end44_crit_edge, %if.then16, %if.then13.if.end44_crit_edge, %if.end6.if.end44_crit_edge, %if.then5, %do.end, %if.then.if.end44_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @k_ignore(ptr nocapture noundef %vc, i8 noundef zeroext %value, i8 noundef zeroext %up_flag) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_insert_flip_string_fixed_flag(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fn_null(ptr nocapture noundef readnone %vc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @shift_state, align 4
  %0 = call ptr @memset(ptr @shift_down, i32 0, i32 9)
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef nonnull @key_down, i32 noundef 256, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call.i)
  %cmp18.i = icmp ult i32 %call.i, 256
  br i1 %cmp18.i, label %entry.for.body.i_crit_edge, label %entry.do_compute_shiftstate.exit_crit_edge

entry.do_compute_shiftstate.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do_compute_shiftstate.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %k.019.i = phi i32 [ %call11.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @key_maps to i32))
  %1 = load ptr, ptr @key_maps, align 4
  %arrayidx.i = getelementptr i16, ptr %1, i32 %k.019.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i, align 2
  %4 = lshr i16 %3, 8
  %5 = trunc i16 %4 to i8
  %trunc.i = xor i8 %5, -16
  %6 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %trunc.i, label %for.body.i.for.inc.i_crit_edge [
    i8 7, label %for.body.i.if.end.i_crit_edge
    i8 12, label %for.body.i.if.end.i_crit_edge1
  ]

for.body.i.if.end.i_crit_edge1:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge1
  %7 = and i16 %3, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %7)
  %cmp6.i = icmp eq i16 %7, 8
  %narrow.i = select i1 %cmp6.i, i16 0, i16 %7
  %spec.store.select.i = zext i16 %narrow.i to i32
  %arrayidx10.i = getelementptr [9 x i8], ptr @shift_down, i32 0, i32 %spec.store.select.i
  %8 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10.i, align 1
  %inc.i = add i8 %9, 1
  store i8 %inc.i, ptr %arrayidx10.i, align 1
  %shl.i = shl nuw i32 1, %spec.store.select.i
  %10 = load i32, ptr @shift_state, align 4
  %or.i = or i32 %10, %shl.i
  store i32 %or.i, ptr @shift_state, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %add.i = add nuw nsw i32 %k.019.i, 1
  %call11.i = tail call i32 @_find_next_bit_be(ptr noundef nonnull @key_down, i32 noundef 256, i32 noundef %add.i) #16
  %cmp.i = icmp ult i32 %call11.i, 256
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do_compute_shiftstate.exit_crit_edge

for.inc.i.do_compute_shiftstate.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do_compute_shiftstate.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

do_compute_shiftstate.exit:                       ; preds = %for.inc.i.do_compute_shiftstate.exit_crit_edge, %entry.do_compute_shiftstate.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fn_enter(ptr noundef %vc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @diacr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @kbd, align 4
  %kbdmode = getelementptr inbounds %struct.kbd_struct, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %kbdmode to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %kbdmode, align 1
  %3 = and i8 %bf.load, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %3)
  %cmp = icmp eq i8 %3, 6
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @to_utf8(ptr noundef %vc, i32 noundef %0)
  br label %if.end6

if.else:                                          ; preds = %if.then
  %call = tail call i32 @conv_uni_to_8bit(i32 noundef %0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp3.not = icmp eq i32 %call, -1
  br i1 %cmp3.not, label %if.else.if.end6_crit_edge, label %if.then5

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then5:                                         ; preds = %if.else
  %conv.i = trunc i32 %call to i8
  %tail.i.i = getelementptr inbounds %struct.tty_bufhead, ptr %vc, i32 0, i32 8
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 4
  %used.i.i = getelementptr inbounds %struct.tty_buffer, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %used.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.tty_buffer, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp3.i.i = icmp slt i32 %7, %9
  br i1 %cmp3.i.i, label %if.then.i.i, label %if.end12.i.i

if.then.i.i:                                      ; preds = %if.then5
  %flags.i.i = getelementptr inbounds %struct.tty_buffer, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then8.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then8.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %5, i32 0, i32 6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i, i32 %7
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %9
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %add.ptr.i.i.i, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then8.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %13 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %used.i.i, align 4
  %inc.i.i = add i32 %14, 1
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %5, i32 0, i32 6
  %add.ptr.i1.i.i = getelementptr i8, ptr %data.i.i.i, i32 %14
  %15 = ptrtoint ptr %add.ptr.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %add.ptr.i1.i.i, align 1
  br label %put_queue.exit

if.end12.i.i:                                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %vc, i8 noundef zeroext %conv.i, i8 noundef zeroext 0) #16
  br label %put_queue.exit

put_queue.exit:                                   ; preds = %if.end12.i.i, %if.end.i.i
  tail call void @tty_flip_buffer_push(ptr noundef %vc) #16
  br label %if.end6

if.end6:                                          ; preds = %put_queue.exit, %if.else.if.end6_crit_edge, %if.then2
  store i32 0, ptr @diacr, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %entry.if.end7_crit_edge
  %tail.i.i16 = getelementptr inbounds %struct.tty_bufhead, ptr %vc, i32 0, i32 8
  %16 = ptrtoint ptr %tail.i.i16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i.i16, align 4
  %used.i.i17 = getelementptr inbounds %struct.tty_buffer, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %used.i.i17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %used.i.i17, align 4
  %size.i.i18 = getelementptr inbounds %struct.tty_buffer, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %size.i.i18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size.i.i18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp3.i.i19 = icmp slt i32 %19, %21
  br i1 %cmp3.i.i19, label %if.then.i.i23, label %if.end12.i.i33

if.then.i.i23:                                    ; preds = %if.end7
  %flags.i.i20 = getelementptr inbounds %struct.tty_buffer, ptr %17, i32 0, i32 5
  %22 = ptrtoint ptr %flags.i.i20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i.i20, align 4
  %and.i.i21 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i21)
  %tobool.not.i.i22 = icmp eq i32 %and.i.i21, 0
  br i1 %tobool.not.i.i22, label %if.then8.i.i27, label %if.then.i.i23.if.end.i.i31_crit_edge

if.then.i.i23.if.end.i.i31_crit_edge:             ; preds = %if.then.i.i23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i31

if.then8.i.i27:                                   ; preds = %if.then.i.i23
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i24 = getelementptr inbounds %struct.tty_buffer, ptr %17, i32 0, i32 6
  %add.ptr.i.i.i.i25 = getelementptr i8, ptr %data.i.i.i.i24, i32 %19
  %add.ptr.i.i.i26 = getelementptr i8, ptr %add.ptr.i.i.i.i25, i32 %21
  %24 = ptrtoint ptr %add.ptr.i.i.i26 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %add.ptr.i.i.i26, align 1
  br label %if.end.i.i31

if.end.i.i31:                                     ; preds = %if.then8.i.i27, %if.then.i.i23.if.end.i.i31_crit_edge
  %25 = ptrtoint ptr %used.i.i17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %used.i.i17, align 4
  %inc.i.i28 = add i32 %26, 1
  store i32 %inc.i.i28, ptr %used.i.i17, align 4
  %data.i.i.i29 = getelementptr inbounds %struct.tty_buffer, ptr %17, i32 0, i32 6
  %add.ptr.i1.i.i30 = getelementptr i8, ptr %data.i.i.i29, i32 %26
  %27 = ptrtoint ptr %add.ptr.i1.i.i30 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 13, ptr %add.ptr.i1.i.i30, align 1
  br label %put_queue.exit34

if.end12.i.i33:                                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i32 = tail call i32 @__tty_insert_flip_char(ptr noundef %vc, i8 noundef zeroext 13, i8 noundef zeroext 0) #16
  br label %put_queue.exit34

put_queue.exit34:                                 ; preds = %if.end12.i.i33, %if.end.i.i31
  tail call void @tty_flip_buffer_push(ptr noundef %vc) #16
  %28 = load ptr, ptr @kbd, align 4
  %modeflags.i = getelementptr inbounds %struct.kbd_struct, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %modeflags.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i = load i8, ptr %modeflags.i, align 1
  %30 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool9.not = icmp eq i8 %30, 0
  br i1 %tobool9.not, label %put_queue.exit34.if.end11_crit_edge, label %if.then10

put_queue.exit34.if.end11_crit_edge:              ; preds = %put_queue.exit34
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then10:                                        ; preds = %put_queue.exit34
  %31 = ptrtoint ptr %tail.i.i16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i.i16, align 4
  %used.i.i37 = getelementptr inbounds %struct.tty_buffer, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %used.i.i37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %used.i.i37, align 4
  %size.i.i38 = getelementptr inbounds %struct.tty_buffer, ptr %32, i32 0, i32 2
  %35 = ptrtoint ptr %size.i.i38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size.i.i38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp3.i.i39 = icmp slt i32 %34, %36
  br i1 %cmp3.i.i39, label %if.then.i.i43, label %if.end12.i.i53

if.then.i.i43:                                    ; preds = %if.then10
  %flags.i.i40 = getelementptr inbounds %struct.tty_buffer, ptr %32, i32 0, i32 5
  %37 = ptrtoint ptr %flags.i.i40 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i.i40, align 4
  %and.i.i41 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i41)
  %tobool.not.i.i42 = icmp eq i32 %and.i.i41, 0
  br i1 %tobool.not.i.i42, label %if.then8.i.i47, label %if.then.i.i43.if.end.i.i51_crit_edge

if.then.i.i43.if.end.i.i51_crit_edge:             ; preds = %if.then.i.i43
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i51

if.then8.i.i47:                                   ; preds = %if.then.i.i43
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i.i44 = getelementptr inbounds %struct.tty_buffer, ptr %32, i32 0, i32 6
  %add.ptr.i.i.i.i45 = getelementptr i8, ptr %data.i.i.i.i44, i32 %34
  %add.ptr.i.i.i46 = getelementptr i8, ptr %add.ptr.i.i.i.i45, i32 %36
  %39 = ptrtoint ptr %add.ptr.i.i.i46 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %add.ptr.i.i.i46, align 1
  br label %if.end.i.i51

if.end.i.i51:                                     ; preds = %if.then8.i.i47, %if.then.i.i43.if.end.i.i51_crit_edge
  %40 = ptrtoint ptr %used.i.i37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %used.i.i37, align 4
  %inc.i.i48 = add i32 %41, 1
  store i32 %inc.i.i48, ptr %used.i.i37, align 4
  %data.i.i.i49 = getelementptr inbounds %struct.tty_buffer, ptr %32, i32 0, i32 6
  %add.ptr.i1.i.i50 = getelementptr i8, ptr %data.i.i.i49, i32 %41
  %42 = ptrtoint ptr %add.ptr.i1.i.i50 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 10, ptr %add.ptr.i1.i.i50, align 1
  br label %put_queue.exit54

if.end12.i.i53:                                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  %call13.i.i52 = tail call i32 @__tty_insert_flip_char(ptr noundef %vc, i8 noundef zeroext 10, i8 noundef zeroext 0) #16
  br label %put_queue.exit54

put_queue.exit54:                                 ; preds = %if.end12.i.i53, %if.end.i.i51
  tail call void @tty_flip_buffer_push(ptr noundef %vc) #16
  br label %if.end11

if.end11:                                         ; preds = %put_queue.exit54, %put_queue.exit34.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fn_show_ptregs(ptr nocapture noundef readnone %vc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !174) #16
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, ptrtoint (ptr @__irq_regs to i32)
  %6 = inttoptr i32 %add.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @show_regs(ptr noundef nonnull %8) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fn_show_mem(ptr nocapture noundef readnone %vc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @show_mem(i32 noundef 0, ptr noundef null) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fn_show_state(ptr nocapture noundef readnone %vc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @show_state_filter(i32 noundef 0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fn_send_intr(ptr noundef %vc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i = getelementptr inbounds %struct.tty_bufhead, ptr %vc, i32 0, i32 8
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i, align 4
  %flags.i = getelementptr inbounds %struct.tty_buffer, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.if.end12.i_crit_edge

entry.if.end12.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %entry
  %used.i = getelementptr inbounds %struct.tty_buffer, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %used.i, align 4
  %size.i = getelementptr inbounds %struct.tty_buffer, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3.i = icmp slt i32 %5, %7
  br i1 %cmp3.i, label %if.end.i, label %land.lhs.true.i.if.end12.i_crit_edge

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12.i

if.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %data.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %1, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %data.i.i.i, i32 %5
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %7
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %add.ptr.i.i, align 1
  %9 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %used.i, align 4
  %inc.i = add i32 %10, 1
  store i32 %inc.i, ptr %used.i, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %data.i.i.i, i32 %10
  %11 = ptrtoint ptr %add.ptr.i1.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %add.ptr.i1.i, align 1
  br label %tty_insert_flip_char.exit

if.end12.i:                                       ; preds = %land.lhs.true.i.if.end12.i_crit_edge, %entry.if.end12.i_crit_edge
  %call13.i = tail call i32 @__tty_insert_flip_char(ptr noundef %vc, i8 noundef zeroext 0, i8 noundef zeroext 1) #16
  br label %tty_insert_flip_char.exit

tty_insert_flip_char.exit:                        ; preds = %if.end12.i, %if.end.i
  tail call void @tty_flip_buffer_push(ptr noundef %vc) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fn_lastcons(ptr nocapture noundef readnone %vc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @last_console to i32))
  %0 = load i32, ptr @last_console, align 4
  %call = tail call i32 @set_console(i32 noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fn_caps_toggle(ptr nocapture noundef readnone %vc) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @rep, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %1 = load ptr, ptr @kbd, align 4
  %ledflagstate.i = getelementptr inbounds %struct.kbd_struct, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ledflagstate.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %ledflagstate.i, align 1
  %bf.set.i = xor i8 %bf.load.i, 32
  store i8 %bf.set.i, ptr %ledflagstate.i, align 1
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fn_num(ptr noundef %vc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @kbd, align 4
  %modeflags.i = getelementptr inbounds %struct.kbd_struct, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %modeflags.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i = load i8, ptr %modeflags.i, align 1
  %2 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  store i8 79, ptr getelementptr inbounds ([4 x i8], ptr @applkey.buf, i32 0, i32 1), align 1
  store i8 80, ptr getelementptr inbounds ([4 x i8], ptr @applkey.buf, i32 0, i32 2), align 1
  %call.i.i = tail call i32 @strlen(ptr noundef nonnull @applkey.buf) #23
  %call.i.i.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %vc, ptr noundef nonnull @applkey.buf, i8 noundef zeroext 0, i32 noundef %call.i.i) #16
  tail call void @tty_flip_buffer_push(ptr noundef %vc) #16
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i8, ptr @rep, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %ledflagstate.i.i = getelementptr inbounds %struct.kbd_struct, ptr %0, i32 0, i32 2
  %4 = ptrtoint ptr %ledflagstate.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i.i = load i8, ptr %ledflagstate.i.i, align 1
  %bf.set.i.i = xor i8 %bf.load.i.i, 16
  store i8 %bf.set.i.i, ptr %ledflagstate.i.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.else.if.end_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fn_hold(ptr nocapture noundef readonly %vc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tty1 = getelementptr inbounds %struct.tty_port, ptr %vc, i32 0, i32 1
  %0 = ptrtoint ptr %tty1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tty1, align 4
  %2 = load i8, ptr @rep, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp ne i8 %2, 0
  %tobool2.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %stopped = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 19, i32 1
  %3 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %stopped, align 4, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @start_tty(ptr noundef nonnull %1) #16
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @stop_tty(ptr noundef nonnull %1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fn_scroll_forw(ptr noundef %vc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @scrollfront(ptr noundef %vc, i32 noundef 0) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fn_scroll_back(ptr noundef %vc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @scrollback(ptr noundef %vc) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fn_boot_it(ptr nocapture noundef readnone %vc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ctrl_alt_del() #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fn_caps_on(ptr nocapture noundef readnone %vc) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @rep, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %1 = load ptr, ptr @kbd, align 4
  %ledflagstate.i = getelementptr inbounds %struct.kbd_struct, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ledflagstate.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %ledflagstate.i, align 1
  %bf.set.i = or i8 %bf.load.i, 32
  store i8 %bf.set.i, ptr %ledflagstate.i, align 1
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @fn_compose(ptr nocapture noundef readnone %vc) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @dead_key_next, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fn_SAK(ptr nocapture noundef readnone %vc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %0 = load i32, ptr @fg_console, align 4
  %SAK_work1 = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %SAK_work1) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fn_dec_console(ptr nocapture noundef readnone %vc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %0 = load i32, ptr @fg_console, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @want_console to i32))
  %1 = load i32, ptr @want_console, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not = icmp eq i32 %1, -1
  %spec.select = select i1 %cmp.not, i32 %0, i32 %1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %i.0.in = phi i32 [ %spec.select, %entry ], [ %spec.store.select, %for.body.for.cond_crit_edge ]
  %i.0 = add i32 %i.0.in, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %spec.select)
  %cmp1.not = icmp eq i32 %i.0, %spec.select
  br i1 %cmp1.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in)
  %cmp2 = icmp eq i32 %i.0.in, 0
  %spec.store.select = select i1 %cmp2, i32 62, i32 %i.0
  %call = tail call i32 @vc_cons_allocated(i32 noundef %spec.store.select) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %i.1 = phi i32 [ %spec.store.select, %for.body.for.end_crit_edge ], [ %spec.select, %for.cond.for.end_crit_edge ]
  %call7 = tail call i32 @set_console(i32 noundef %i.1) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fn_inc_console(ptr nocapture noundef readnone %vc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %0 = load i32, ptr @fg_console, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @want_console to i32))
  %1 = load i32, ptr @want_console, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not = icmp eq i32 %1, -1
  %spec.select = select i1 %cmp.not, i32 %0, i32 %1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %i.0.in = phi i32 [ %spec.select, %entry ], [ %spec.store.select, %for.body.for.cond_crit_edge ]
  %i.0 = add i32 %i.0.in, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %spec.select)
  %cmp1.not = icmp eq i32 %i.0, %spec.select
  br i1 %cmp1.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %i.0)
  %cmp2 = icmp eq i32 %i.0, 63
  %spec.store.select = select i1 %cmp2, i32 0, i32 %i.0
  %call = tail call i32 @vc_cons_allocated(i32 noundef %spec.store.select) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %i.1 = phi i32 [ %spec.store.select, %for.body.for.end_crit_edge ], [ %spec.select, %for.cond.for.end_crit_edge ]
  %call7 = tail call i32 @set_console(i32 noundef %i.1) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fn_spawn_con(ptr nocapture noundef readnone %vc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @vt_spawn_con) #16
  %0 = load ptr, ptr getelementptr inbounds (%struct.vt_spawn_console, ptr @vt_spawn_con, i32 0, i32 1), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then:                                          ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds (%struct.vt_spawn_console, ptr @vt_spawn_con, i32 0, i32 2), align 4
  %call = tail call i32 @kill_pid(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then2

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %2 = load ptr, ptr getelementptr inbounds (%struct.vt_spawn_console, ptr @vt_spawn_con, i32 0, i32 1), align 4
  tail call void @put_pid(ptr noundef %2) #16
  store ptr null, ptr getelementptr inbounds (%struct.vt_spawn_console, ptr @vt_spawn_con, i32 0, i32 1), align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @vt_spawn_con) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fn_bare_num(ptr nocapture noundef readnone %vc) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @rep, align 1, !range !204
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %1 = load ptr, ptr @kbd, align 4
  %ledflagstate.i = getelementptr inbounds %struct.kbd_struct, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ledflagstate.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %ledflagstate.i, align 1
  %bf.set.i = xor i8 %bf.load.i, 16
  store i8 %bf.set.i, ptr %ledflagstate.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_regs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_mem(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_state_filter(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_console(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @applkey(ptr noundef %vc, i32 noundef %key, i8 noundef zeroext %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mode)
  %tobool.not = icmp eq i8 %mode, 0
  %conv1 = select i1 %tobool.not, i8 91, i8 79
  store i8 %conv1, ptr getelementptr inbounds ([4 x i8], ptr @applkey.buf, i32 0, i32 1), align 1
  %conv2 = trunc i32 %key to i8
  store i8 %conv2, ptr getelementptr inbounds ([4 x i8], ptr @applkey.buf, i32 0, i32 2), align 1
  %call.i = tail call i32 @strlen(ptr noundef nonnull @applkey.buf) #23
  %call.i.i = tail call i32 @tty_insert_flip_string_fixed_flag(ptr noundef %vc, ptr noundef nonnull @applkey.buf, i8 noundef zeroext 0, i32 noundef %call.i) #16
  tail call void @tty_flip_buffer_push(ptr noundef %vc) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @start_tty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stop_tty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scrollfront(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scrollback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ctrl_alt_del() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc_cons_allocated(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kill_pid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @k_brlcommit(ptr noundef %vc, i32 noundef %pattern) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @brl_nbchords, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %or = or i32 %pattern, 10240
  %1 = load i32, ptr @diacr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not.i = icmp eq i32 %1, 0
  br i1 %tobool1.not.i, label %if.then.k_deadunicode.exit_crit_edge, label %cond.true.i

if.then.k_deadunicode.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %k_deadunicode.exit

cond.true.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call fastcc i32 @handle_diacr(ptr noundef %vc, i32 noundef %or) #16
  br label %k_deadunicode.exit

k_deadunicode.exit:                               ; preds = %cond.true.i, %if.then.k_deadunicode.exit_crit_edge
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %or, %if.then.k_deadunicode.exit_crit_edge ]
  store i32 %cond.i, ptr @diacr, align 4
  br label %if.end4

if.else:                                          ; preds = %entry
  %2 = load i32, ptr @k_brlcommit.committed, align 4
  %or1 = or i32 %2, %pattern
  store i32 %or1, ptr @k_brlcommit.committed, align 4
  %3 = load i32, ptr @k_brlcommit.chords, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr @k_brlcommit.chords, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %0)
  %cmp = icmp eq i32 %inc, %0
  br i1 %cmp, label %if.then2, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %or3 = or i32 %or1, 10240
  tail call fastcc void @k_unicode(ptr noundef %vc, i32 noundef %or3, i8 noundef zeroext 0)
  store i32 0, ptr @k_brlcommit.chords, align 4
  store i32 0, ptr @k_brlcommit.committed, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.else.if.end4_crit_edge, %k_deadunicode.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_open_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_close_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kbd_led_trigger_activate(ptr nocapture noundef readonly %cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger1 = getelementptr inbounds %struct.led_classdev, ptr %cdev, i32 0, i32 24
  %0 = ptrtoint ptr %trigger1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trigger1, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), ptr getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2)) #16, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !206
  tail call void @tasklet_unlock_wait(ptr noundef nonnull @keyboard_tasklet) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !207
  %3 = load i32, ptr @ledstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.not = icmp eq i32 %3, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %mask = getelementptr inbounds %struct.kbd_led_trigger, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %and = and i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 0, i32 255
  tail call void @led_trigger_event(ptr noundef %1, i32 noundef %cond) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !184
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), ptr getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.tasklet_struct, ptr @keyboard_tasklet, i32 0, i32 2)) #16, !srcloc !185
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_trigger_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kbd_bh(ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @led_lock) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %0 = load i32, ptr @fg_console, align 4
  %ledmode.i = getelementptr %struct.kbd_struct, ptr @kbd_table, i32 %0, i32 2
  %1 = ptrtoint ptr %ledmode.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i = load i8, ptr %ledmode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %cmp.i = icmp slt i8 %bf.load.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = load i8, ptr @ledioctl, align 1
  br label %getleds.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %bf.lshr3.i = lshr i8 %bf.load.i, 3
  br label %getleds.exit

getleds.exit:                                     ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i8 [ %2, %if.then.i ], [ %bf.lshr3.i, %if.end.i ]
  %conv6 = zext i8 %retval.0.i to i32
  %3 = load ptr, ptr @kbd, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %conv7 = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv7, 8
  %or = or i32 %shl, %conv6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @led_lock, i32 noundef %call2) #16
  %.b16 = load i1, ptr @vt_switch, align 1
  br i1 %.b16, label %if.then, label %getleds.exit.if.end_crit_edge

getleds.exit.if.end_crit_edge:                    ; preds = %getleds.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %getleds.exit
  call void @__sanitizer_cov_trace_pc() #18
  %neg = xor i32 %or, -1
  store i32 %neg, ptr @ledstate, align 4
  store i1 false, ptr @vt_switch, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %getleds.exit.if.end_crit_edge
  %6 = load i32, ptr @ledstate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %6)
  %cmp8.not = icmp eq i32 %or, %6
  br i1 %cmp8.not, label %if.end.if.end11_crit_edge, label %if.then10

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then10:                                        ; preds = %if.end
  %xor.i = xor i32 %6, %or
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then10
  %i.010.i = phi i32 [ 0, %if.then10 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %mask.i = getelementptr [12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 %i.010.i, i32 1
  %7 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %8, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i17

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then.i17:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr [12 x %struct.kbd_led_trigger], ptr @kbd_led_triggers, i32 0, i32 %i.010.i
  %and3.i = and i32 %8, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %cond.i = select i1 %tobool4.not.i, i32 0, i32 255
  tail call void @led_trigger_event(ptr noundef %arrayidx.i, i32 noundef %cond.i) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i17, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %kbd_propagate_led_state.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

kbd_propagate_led_state.exit:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  store i32 %or, ptr @ledstate, align 4
  br label %if.end11

if.end11:                                         ; preds = %kbd_propagate_led_state.exit, %if.end.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @getkeycode_helper(ptr nocapture noundef readonly %handle, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.input_handle, ptr %handle, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call i32 @input_get_keycode(ptr noundef %1, ptr noundef %data) #16
  %error = getelementptr inbounds %struct.getset_keycode_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_get_keycode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @setkeycode_helper(ptr nocapture noundef readonly %handle, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.input_handle, ptr %handle, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call i32 @input_set_keycode(ptr noundef %1, ptr noundef %data) #16
  %error = getelementptr inbounds %struct.getset_keycode_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_set_keycode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind readonly }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind readnone }
attributes #22 = { nobuiltin }
attributes #23 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !38, !40, !42, !43, !45, !47, !48, !50, !51, !53, !55, !56, !58, !60, !62, !64, !66, !67, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !106, !108, !110, !112, !114, !115, !116, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !154, !155, !156, !158, !160, !161, !163, !165, !167, !169, !170, !172}
!llvm.named.register.sp = !{!174}
!llvm.module.flags = !{!175, !176, !177, !178, !179, !180, !181, !182}
!llvm.ident = !{!183}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/tty/vt/keyboard.c", i32 100, i32 10}
!2 = !{ptr @vt_spawn_con, !3, !"vt_spawn_con", i1 false, i1 false}
!3 = !{!"../drivers/tty/vt/keyboard.c", i32 99, i32 25}
!4 = !{ptr @__ksymtab_register_keyboard_notifier, !5, !"__ksymtab_register_keyboard_notifier", i1 false, i1 false}
!5 = !{!"../drivers/tty/vt/keyboard.c", i32 167, i32 1}
!6 = !{ptr @__ksymtab_unregister_keyboard_notifier, !7, !"__ksymtab_unregister_keyboard_notifier", i1 false, i1 false}
!7 = !{!"../drivers/tty/vt/keyboard.c", i32 173, i32 1}
!8 = !{ptr @__ksymtab_kd_mksound, !9, !"__ksymtab_kd_mksound", i1 false, i1 false}
!9 = !{!"../drivers/tty/vt/keyboard.c", i32 285, i32 1}
!10 = !{ptr @__UNIQUE_ID_brl_timeout234, !11, !"__UNIQUE_ID_brl_timeout234", i1 false, i1 false}
!11 = !{!"../drivers/tty/vt/keyboard.c", i32 953, i32 1}
!12 = !{ptr @__param_brl_timeout, !13, !"__param_brl_timeout", i1 false, i1 false}
!13 = !{!"../drivers/tty/vt/keyboard.c", i32 954, i32 1}
!14 = !{ptr @__UNIQUE_ID_brl_timeouttype235, !13, !"__UNIQUE_ID_brl_timeouttype235", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_brl_nbchords236, !16, !"__UNIQUE_ID_brl_nbchords236", i1 false, i1 false}
!16 = !{!"../drivers/tty/vt/keyboard.c", i32 957, i32 1}
!17 = !{ptr @__param_brl_nbchords, !18, !"__param_brl_nbchords", i1 false, i1 false}
!18 = !{!"../drivers/tty/vt/keyboard.c", i32 958, i32 1}
!19 = !{ptr @__UNIQUE_ID_brl_nbchordstype237, !18, !"__UNIQUE_ID_brl_nbchordstype237", i1 false, i1 false}
!20 = !{ptr @__ksymtab_vt_get_leds, !21, !"__ksymtab_vt_get_leds", i1 false, i1 false}
!21 = !{!"../drivers/tty/vt/keyboard.c", i32 1193, i32 1}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/tty/vt/keyboard.c", i32 1724, i32 7}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/tty/vt/keyboard.c", i32 2082, i32 46}
!26 = !{ptr @kbd_table, !27, !"kbd_table", i1 false, i1 false}
!27 = !{!"../drivers/tty/vt/keyboard.c", i32 110, i32 26}
!28 = !{ptr @ledioctl, !29, !"ledioctl", i1 false, i1 false}
!29 = !{!"../drivers/tty/vt/keyboard.c", i32 155, i32 22}
!30 = distinct !{null, !31, !"vt_switch", i1 false, i1 false}
!31 = !{!"../drivers/tty/vt/keyboard.c", i32 156, i32 13}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/tty/vt/keyboard.c", i32 161, i32 8}
!34 = !{ptr @keyboard_notifier_list, !33, !"keyboard_notifier_list", i1 false, i1 false}
!35 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/tty/vt/keyboard.c", i32 274, i32 8}
!37 = !{ptr @kd_mksound_timer, !36, !"kd_mksound_timer", i1 false, i1 false}
!38 = !{ptr @kd_nosound.zero, !39, !"zero", i1 false, i1 false}
!39 = !{!"../drivers/tty/vt/keyboard.c", i32 269, i32 22}
!40 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/tty/vt/keyboard.c", i32 138, i32 8}
!42 = !{ptr @kbd_event_lock, !41, !"kbd_event_lock", i1 false, i1 false}
!43 = !{ptr @shift_down, !44, !"shift_down", i1 false, i1 false}
!44 = !{!"../drivers/tty/vt/keyboard.c", i32 142, i32 22}
!45 = !{ptr @key_down, !46, !"key_down", i1 false, i1 false}
!46 = !{!"../drivers/tty/vt/keyboard.c", i32 141, i32 8}
!47 = !{ptr @__param_str_brl_timeout, !13, !"__param_str_brl_timeout", i1 false, i1 false}
!48 = !{ptr @brl_timeout, !49, !"brl_timeout", i1 false, i1 false}
!49 = !{!"../drivers/tty/vt/keyboard.c", i32 952, i32 17}
!50 = !{ptr @__param_str_brl_nbchords, !18, !"__param_str_brl_nbchords", i1 false, i1 false}
!51 = !{ptr @brl_nbchords, !52, !"brl_nbchords", i1 false, i1 false}
!52 = !{!"../drivers/tty/vt/keyboard.c", i32 956, i32 17}
!53 = !{ptr @.str.6, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/tty/vt/keyboard.c", i32 139, i32 8}
!55 = !{ptr @led_lock, !54, !"led_lock", i1 false, i1 false}
!56 = !{ptr @.str.7, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/tty/vt/keyboard.c", i32 1649, i32 11}
!58 = !{ptr @kbd_handler, !59, !"kbd_handler", i1 false, i1 false}
!59 = !{!"../drivers/tty/vt/keyboard.c", i32 1643, i32 29}
!60 = !{ptr @kbd, !61, !"kbd", i1 false, i1 false}
!61 = !{!"../drivers/tty/vt/keyboard.c", i32 111, i32 27}
!62 = !{ptr @__func__.kbd_keycode, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/tty/vt/keyboard.c", i32 1427, i32 30}
!64 = !{ptr @.str.8, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/tty/vt/keyboard.c", i32 1428, i32 5}
!66 = !{ptr @kbd_keycode._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @kbd_keycode._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @rep, !69, !"rep", i1 false, i1 false}
!69 = !{!"../drivers/tty/vt/keyboard.c", i32 150, i32 13}
!70 = !{ptr @x86_keycodes, !71, !"x86_keycodes", i1 false, i1 false}
!71 = !{!"../drivers/tty/vt/keyboard.c", i32 1290, i32 29}
!72 = !{ptr @diacr, !73, !"diacr", i1 false, i1 false}
!73 = !{!"../drivers/tty/vt/keyboard.c", i32 149, i32 21}
!74 = distinct !{null, !75, !"dead_key_next", i1 false, i1 false}
!75 = !{!"../drivers/tty/vt/keyboard.c", i32 143, i32 13}
!76 = !{ptr @k_handler, !77, !"k_handler", i1 false, i1 false}
!77 = !{!"../drivers/tty/vt/keyboard.c", i32 82, i32 22}
!78 = !{ptr @.str.10, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/tty/vt/keyboard.c", i32 780, i32 3}
!80 = !{ptr @.str.11, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @k_fn._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @k_fn._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @fn_handler, !84, !"fn_handler", i1 false, i1 false}
!84 = !{!"../drivers/tty/vt/keyboard.c", i32 93, i32 23}
!85 = distinct !{null, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/asm-generic/irq_regs.h", i32 21, i32 9}
!87 = !{ptr @applkey.buf, !88, !"buf", i1 false, i1 false}
!88 = !{!"../drivers/tty/vt/keyboard.c", i32 339, i32 14}
!89 = !{ptr @k_pad.pad_chars, !90, !"pad_chars", i1 false, i1 false}
!90 = !{!"../drivers/tty/vt/keyboard.c", i32 795, i32 20}
!91 = !{ptr @k_pad.app_map, !92, !"app_map", i1 false, i1 false}
!92 = !{!"../drivers/tty/vt/keyboard.c", i32 796, i32 20}
!93 = !{ptr @k_dead.ret_diacr, !94, !"ret_diacr", i1 false, i1 false}
!94 = !{!"../drivers/tty/vt/keyboard.c", i32 725, i32 29}
!95 = !{ptr @k_cur.cur_chars, !96, !"cur_chars", i1 false, i1 false}
!96 = !{!"../drivers/tty/vt/keyboard.c", i32 785, i32 20}
!97 = distinct !{null, !98, !"npadch_active", i1 false, i1 false}
!98 = !{!"../drivers/tty/vt/keyboard.c", i32 146, i32 13}
!99 = !{ptr @npadch_value, !100, !"npadch_value", i1 false, i1 false}
!100 = !{!"../drivers/tty/vt/keyboard.c", i32 147, i32 21}
!101 = !{ptr @.str.13, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/tty/vt/keyboard.c", i32 672, i32 2}
!103 = !{ptr @.str.14, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @k_lowercase._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @k_lowercase._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @k_brl.pressed, !107, !"pressed", i1 false, i1 false}
!107 = !{!"../drivers/tty/vt/keyboard.c", i32 980, i32 18}
!108 = !{ptr @k_brl.committing, !109, !"committing", i1 false, i1 false}
!109 = !{!"../drivers/tty/vt/keyboard.c", i32 980, i32 27}
!110 = !{ptr @k_brl.releasestart, !111, !"releasestart", i1 false, i1 false}
!111 = !{!"../drivers/tty/vt/keyboard.c", i32 981, i32 23}
!112 = !{ptr @.str.15, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/tty/vt/keyboard.c", i32 985, i32 4}
!114 = !{ptr @.str.16, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @k_brl._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @k_brl._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @k_brlcommit.chords, !118, !"chords", i1 false, i1 false}
!118 = !{!"../drivers/tty/vt/keyboard.c", i32 962, i32 23}
!119 = !{ptr @k_brlcommit.committed, !120, !"committed", i1 false, i1 false}
!120 = !{!"../drivers/tty/vt/keyboard.c", i32 963, i32 18}
!121 = !{ptr @ledstate, !122, !"ledstate", i1 false, i1 false}
!122 = !{!"../drivers/tty/vt/keyboard.c", i32 154, i32 21}
!123 = !{ptr @.str.17, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/tty/vt/keyboard.c", i32 1056, i32 2}
!125 = !{ptr @.str.18, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/tty/vt/keyboard.c", i32 1057, i32 2}
!127 = !{ptr @.str.19, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/tty/vt/keyboard.c", i32 1058, i32 2}
!129 = !{ptr @.str.20, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/tty/vt/keyboard.c", i32 1059, i32 2}
!131 = !{ptr @.str.21, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/tty/vt/keyboard.c", i32 1061, i32 2}
!133 = !{ptr @.str.22, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/tty/vt/keyboard.c", i32 1062, i32 2}
!135 = !{ptr @.str.23, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/tty/vt/keyboard.c", i32 1063, i32 2}
!137 = !{ptr @.str.24, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/tty/vt/keyboard.c", i32 1064, i32 2}
!139 = !{ptr @.str.25, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/tty/vt/keyboard.c", i32 1065, i32 2}
!141 = !{ptr @.str.26, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/tty/vt/keyboard.c", i32 1066, i32 2}
!143 = !{ptr @.str.27, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/tty/vt/keyboard.c", i32 1067, i32 2}
!145 = !{ptr @.str.28, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/tty/vt/keyboard.c", i32 1068, i32 2}
!147 = !{ptr @kbd_led_triggers, !148, !"kbd_led_triggers", i1 false, i1 false}
!148 = !{!"../drivers/tty/vt/keyboard.c", i32 1055, i32 31}
!149 = !{ptr @kbd_ids, !150, !"kbd_ids", i1 false, i1 false}
!150 = !{!"../drivers/tty/vt/keyboard.c", i32 1627, i32 37}
!151 = !{ptr @.str.29, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/tty/vt/keyboard.c", i32 1106, i32 4}
!153 = !{ptr @.str.30, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @kbd_init_leds._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @kbd_init_leds._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @keyboard_tasklet, !157, !"keyboard_tasklet", i1 false, i1 false}
!157 = !{!"../drivers/tty/vt/keyboard.c", i32 135, i32 8}
!158 = distinct !{null, !159, !"__already_done", i1 false, i1 false}
!159 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!160 = !{ptr @.str.31, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.32, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!163 = !{ptr @.str.33, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!165 = !{ptr @max_vals, !166, !"max_vals", i1 false, i1 false}
!166 = !{!"../drivers/tty/vt/keyboard.c", i32 114, i32 28}
!167 = !{ptr @.str.34, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/tty/vt/keyboard.c", i32 140, i32 8}
!169 = !{ptr @func_buf_lock, !168, !"func_buf_lock", i1 false, i1 false}
!170 = !{ptr @vt_kdskbsent.is_kmalloc, !171, !"is_kmalloc", i1 false, i1 false}
!171 = !{!"../drivers/tty/vt/keyboard.c", i32 2047, i32 9}
!172 = !{ptr @shift_state, !173, !"shift_state", i1 false, i1 false}
!173 = !{!"../drivers/tty/vt/keyboard.c", i32 152, i32 12}
!174 = !{!"sp"}
!175 = !{i32 1, !"wchar_size", i32 2}
!176 = !{i32 1, !"min_enum_size", i32 4}
!177 = !{i32 8, !"branch-target-enforcement", i32 0}
!178 = !{i32 8, !"sign-return-address", i32 0}
!179 = !{i32 8, !"sign-return-address-all", i32 0}
!180 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!181 = !{i32 7, !"uwtable", i32 1}
!182 = !{i32 7, !"frame-pointer", i32 2}
!183 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!184 = !{i64 2154075516}
!185 = !{i64 2148288544, i64 2148288570, i64 2148288599, i64 2148288633, i64 2148288664, i64 2148288687}
!186 = !{i64 5257445}
!187 = !{i64 5257642}
!188 = !{i64 2152742875}
!189 = !{i64 2154528008, i64 2154528288, i64 2154528622, i64 2154528956}
!190 = !{!"branch_weights", i32 1, i32 2000}
!191 = !{i64 2152762571, i64 2152762596}
!192 = !{i64 2154537396, i64 2154537676, i64 2154538010, i64 2154538344}
!193 = !{i64 2154548917, i64 2154549197, i64 2154549531, i64 2154549865}
!194 = !{i64 2154561487, i64 2154561767, i64 2154562101, i64 2154562435}
!195 = !{!"auto-init"}
!196 = !{i64 2152761890, i64 2152761915}
!197 = !{!"branch_weights", i32 2000, i32 1}
!198 = !{i64 2154572183, i64 2154572463, i64 2154572797, i64 2154573131}
!199 = !{i64 2154581130, i64 2154581410, i64 2154581744, i64 2154582078}
!200 = !{i64 2154589830, i64 2154590110, i64 2154590444, i64 2154590778}
!201 = !{i64 734881, i64 734898}
!202 = !{i64 2154604605, i64 2154604885, i64 2154605219, i64 2154605553}
!203 = !{i64 2154613827, i64 2154614107, i64 2154614441, i64 2154614775}
!204 = !{i8 0, i8 2}
!205 = !{i64 2148286079, i64 2148286105, i64 2148286134, i64 2148286168, i64 2148286199, i64 2148286222}
!206 = !{i64 2154074527}
!207 = !{i64 2154075169}
