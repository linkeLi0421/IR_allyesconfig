; ModuleID = '/llk/IR_all_yes/drivers/tty/serial/kgdboc.c_pt.bc'
source_filename = "../drivers/tty/serial/kgdboc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_string = type { i32, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kgdb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vc = type { ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.input_handler = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.input_device_id = type { i32, i16, i16, i16, i16, [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], [1 x i32], i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__setup_str_kgdboc_option_setup = internal constant [8 x i8] c"kgdboc=\00", section ".init.rodata", align 1
@__setup_kgdboc_option_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_kgdboc_option_setup, ptr @kgdboc_option_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_kgdboc_early_init = internal constant [8 x i8] c"ekgdboc\00", section ".init.rodata", align 1
@__setup_kgdboc_early_init = internal global %struct.obs_kernel_param { ptr @__setup_str_kgdboc_early_init, ptr @kgdboc_early_init, i32 1 }, section ".init.setup", align 4
@__setup_str_kgdboc_earlycon_init = internal constant [16 x i8] c"kgdboc_earlycon\00", section ".init.rodata", align 1
@__setup_kgdboc_earlycon_init = internal global %struct.obs_kernel_param { ptr @__setup_str_kgdboc_earlycon_init, ptr @kgdboc_earlycon_init, i32 1 }, section ".init.setup", align 4
@__initcall__kmod_kgdboc__245_595_kgdboc_earlycon_late_initcon = internal global ptr @kgdboc_earlycon_late_init, section ".con_initcall.init", align 4
@__initcall__kmod_kgdboc__246_599_init_kgdboc6 = internal global ptr @init_kgdboc, section ".initcall6.init", align 4
@__exitcall_exit_kgdboc = internal global ptr @exit_kgdboc, section ".exitcall.exit", align 4
@__param_str_kgdboc = internal constant [14 x i8] c"kgdboc.kgdboc\00", align 1
@__param_ops_kgdboc = internal constant %struct.kernel_param_ops { i32 0, ptr @param_set_kgdboc_var, ptr @param_get_string, ptr null }, align 4
@kps = internal global { %struct.kparam_string, [24 x i8] } { %struct.kparam_string { i32 40, ptr @config }, [24 x i8] zeroinitializer }, align 32
@__param_kgdboc = internal constant %struct.kernel_param { ptr @__param_str_kgdboc, ptr null, ptr @__param_ops_kgdboc, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @kps } }, section "__param", align 4
@__UNIQUE_ID_kgdboc247 = internal constant [42 x i8] c"kgdboc.parm=kgdboc:<serial_device>[,baud]\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [43 x i8] c"kgdboc.description=KGDB Console TTY Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file249 = internal constant [38 x i8] c"kgdboc.file=drivers/tty/serial/kgdboc\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [19 x i8] c"kgdboc.license=GPL\00", section ".modinfo", align 1
@kgdboc_option_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013kgdboc: config string not provided\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kgdboc_option_setup\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/tty/serial/kgdboc.c\00", [36 x i8] zeroinitializer }, align 32
@kgdboc_option_setup._entry_ptr = internal global ptr @kgdboc_option_setup._entry, section ".printk_index", align 4
@kgdboc_option_setup._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013kgdboc: config string too long\0A\00", [62 x i8] zeroinitializer }, align 32
@kgdboc_option_setup._entry_ptr.5 = internal global ptr @kgdboc_option_setup._entry.3, section ".printk_index", align 4
@config = internal global { [40 x i8], [56 x i8] } zeroinitializer, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@kgdboc_io_ops = internal global { %struct.kgdb_io, [60 x i8] } { %struct.kgdb_io { ptr @.str.7, ptr @kgdboc_get_char, ptr @kgdboc_put_char, ptr null, ptr null, ptr null, ptr @kgdboc_pre_exp_handler, ptr @kgdboc_post_exp_handler, ptr null }, [60 x i8] zeroinitializer }, align 32
@kgdb_tty_driver = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@kgdboc_use_kms = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"kms,\00", [27 x i8] zeroinitializer }, align 32
@console_drivers = external dso_local local_unnamed_addr global ptr, align 4
@kgdb_tty_line = internal global { i32, [28 x i8] } zeroinitializer, align 32
@configured = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kgdboc\00", [25 x i8] zeroinitializer }, align 32
@dbg_restore_graphics = internal global { i1, [31 x i8] } zeroinitializer, align 32
@vc_cons = external dso_local local_unnamed_addr global [63 x %struct.vc], align 4
@fg_console = external dso_local local_unnamed_addr global i32, align 4
@kgdb_connected = external dso_local local_unnamed_addr global i32, align 4
@system_state = external dso_local local_unnamed_addr global i32, align 4
@kgdboc_restore_input_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @kgdboc_restore_input_work, i64 4), ptr getelementptr (i8, ptr @kgdboc_restore_input_work, i64 4) }, ptr @kgdboc_restore_input_helper, %struct.lockdep_map { ptr @kgdboc_restore_input_work, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kgdboc_restore_input_work\00", [38 x i8] zeroinitializer }, align 32
@kgdboc_reset_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @kgdboc_reset_mutex, i64 52), ptr getelementptr (i8, ptr @kgdboc_reset_mutex, i64 52) }, ptr @kgdboc_reset_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@kgdboc_reset_handler = internal global { %struct.input_handler, [32 x i8] } { %struct.input_handler { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kgdboc_reset_connect, ptr @kgdboc_reset_disconnect, ptr null, i8 0, i32 0, ptr @.str.11, ptr @kgdboc_reset_ids, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"kgdboc_reset_mutex.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kgdboc_reset_mutex\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kgdboc_reset\00", [19 x i8] zeroinitializer }, align 32
@kgdboc_reset_ids = internal constant { [2 x %struct.input_device_id], [88 x i8] } { [2 x %struct.input_device_id] [%struct.input_device_id { i32 16, i16 0, i16 0, i16 0, i16 0, [1 x i32] [i32 2], [24 x i32] zeroinitializer, [1 x i32] zeroinitializer, [2 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, [4 x i32] zeroinitializer, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 0 }, %struct.input_device_id zeroinitializer], [88 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"kbd\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"kdb\00", [28 x i8] zeroinitializer }, align 32
@kdb_poll_idx = external dso_local local_unnamed_addr global i32, align 4
@kdb_poll_funcs = external dso_local local_unnamed_addr global [0 x ptr], align 4
@kgdboc_earlycon_late_enable = internal unnamed_addr global i1 false, section ".init.data", align 1
@kgdboc_earlycon_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016kgdboc: No suitable earlycon yet, will try later\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kgdboc_earlycon_init\00", [43 x i8] zeroinitializer }, align 32
@kgdboc_earlycon_init._entry_ptr = internal global ptr @kgdboc_earlycon_init._entry, section ".printk_index", align 4
@kgdboc_earlycon_param = internal global [16 x i8] zeroinitializer, section ".init.data", align 1
@kgdboc_earlycon_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016kgdboc: Couldn't find kgdb earlycon\0A\00", [57 x i8] zeroinitializer }, align 32
@kgdboc_earlycon_init._entry_ptr.18 = internal global ptr @kgdboc_earlycon_init._entry.16, section ".printk_index", align 4
@kgdboc_earlycon_io_ops = internal global { %struct.kgdb_io, [60 x i8] } { %struct.kgdb_io { ptr @.str.25, ptr @kgdboc_earlycon_get_char, ptr @kgdboc_earlycon_put_char, ptr null, ptr null, ptr @kgdboc_earlycon_deinit, ptr @kgdboc_earlycon_pre_exp_handler, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kgdboc_earlycon_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016kgdboc: Going to register kgdb with earlycon '%s'\0A\00", [43 x i8] zeroinitializer }, align 32
@kgdboc_earlycon_init._entry_ptr.21 = internal global ptr @kgdboc_earlycon_init._entry.19, section ".printk_index", align 4
@kgdboc_earlycon_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.2, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016kgdboc: Failed to register kgdb with earlycon\0A\00", [47 x i8] zeroinitializer }, align 32
@kgdboc_earlycon_init._entry_ptr.24 = internal global ptr @kgdboc_earlycon_init._entry.22, section ".printk_index", align 4
@earlycon_orig_exit = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kgdboc_earlycon\00", [16 x i8] zeroinitializer }, align 32
@kgdboc_earlycon_pre_exp_handler.already_warned = internal global { i1, [31 x i8] } zeroinitializer, align 32
@kgdboc_earlycon_pre_exp_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014kgdboc: kgdboc_earlycon is still using bootconsole\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"kgdboc_earlycon_pre_exp_handler\00", [32 x i8] zeroinitializer }, align 32
@kgdboc_earlycon_pre_exp_handler._entry_ptr = internal global ptr @kgdboc_earlycon_pre_exp_handler._entry, section ".printk_index", align 4
@kgdboc_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @kgdboc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.7, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@kgdboc_pdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@config_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @config_mutex, i64 52), ptr getelementptr (i8, ptr @config_mutex, i64 52) }, ptr @config_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"config_mutex.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"config_mutex\00", [19 x i8] zeroinitializer }, align 32
@param_set_kgdboc_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.30, ptr @.str.2, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"param_set_kgdboc_var\00", [43 x i8] zeroinitializer }, align 32
@param_set_kgdboc_var._entry_ptr = internal global ptr @param_set_kgdboc_var._entry, section ".printk_index", align 4
@param_set_kgdboc_var._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013kgdboc: Cannot reconfigure while KGDB is connected.\0A\00", [41 x i8] zeroinitializer }, align 32
@param_set_kgdboc_var._entry_ptr.33 = internal global ptr @param_set_kgdboc_var._entry.31, section ".printk_index", align 4
@___asan_gen_.34 = private unnamed_addr constant [4 x i8] c"kps\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 35, i32 29 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 405, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 410, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 34, i32 13 }
@___asan_gen_.58 = private unnamed_addr constant [14 x i8] c"kgdboc_io_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 393, i32 23 }
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"kgdb_tty_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 41, i32 27 }
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"kgdboc_use_kms\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 184, i32 20 }
@___asan_gen_.68 = private unnamed_addr constant [14 x i8] c"kgdb_tty_line\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 42, i32 14 }
@___asan_gen_.71 = private unnamed_addr constant [11 x i8] c"configured\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 31, i32 12 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 394, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant [21 x i8] c"dbg_restore_graphics\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [26 x i8] c"kgdboc_restore_input_work\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 100, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant [19 x i8] c"kgdboc_reset_mutex\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [21 x i8] c"kgdboc_reset_handler\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 76, i32 29 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 83, i32 8 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 79, i32 11 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"kgdboc_reset_ids\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 68, i32 37 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 110, i32 21 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 111, i32 18 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 550, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 556, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant [23 x i8] c"kgdboc_earlycon_io_ops\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 509, i32 23 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 562, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 565, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [19 x i8] c"earlycon_orig_exit\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 48, i32 35 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 510, i32 12 }
@___asan_gen_.144 = private unnamed_addr constant [47 x i8] c"kgdboc_earlycon_pre_exp_handler.already_warned\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 469, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [23 x i8] c"kgdboc_platform_driver\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 247, i32 31 }
@___asan_gen_.157 = private unnamed_addr constant [12 x i8] c"kgdboc_pdev\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 44, i32 32 }
@___asan_gen_.160 = private unnamed_addr constant [13 x i8] c"config_mutex\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 32, i32 8 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 323, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private constant [31 x i8] c"../drivers/tty/serial/kgdboc.c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 328, i32 3 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_kgdboc247, ptr @__UNIQUE_ID_license250, ptr @__exitcall_exit_kgdboc, ptr @__initcall__kmod_kgdboc__245_595_kgdboc_earlycon_late_initcon, ptr @__initcall__kmod_kgdboc__246_599_init_kgdboc6, ptr @__param_kgdboc, ptr @__setup_kgdboc_early_init, ptr @__setup_kgdboc_earlycon_init, ptr @__setup_kgdboc_option_setup, ptr @kgdboc_earlycon_init._entry, ptr @kgdboc_earlycon_init._entry.16, ptr @kgdboc_earlycon_init._entry.19, ptr @kgdboc_earlycon_init._entry.22, ptr @kgdboc_earlycon_init._entry_ptr, ptr @kgdboc_earlycon_init._entry_ptr.18, ptr @kgdboc_earlycon_init._entry_ptr.21, ptr @kgdboc_earlycon_init._entry_ptr.24, ptr @kgdboc_earlycon_pre_exp_handler._entry, ptr @kgdboc_earlycon_pre_exp_handler._entry_ptr, ptr @kgdboc_option_setup._entry, ptr @kgdboc_option_setup._entry.3, ptr @kgdboc_option_setup._entry_ptr, ptr @kgdboc_option_setup._entry_ptr.5, ptr @param_set_kgdboc_var._entry, ptr @param_set_kgdboc_var._entry.31, ptr @param_set_kgdboc_var._entry_ptr, ptr @param_set_kgdboc_var._entry_ptr.33, ptr @kps, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @config, ptr @kgdboc_io_ops, ptr @kgdb_tty_driver, ptr @kgdboc_use_kms, ptr @.str.6, ptr @kgdb_tty_line, ptr @configured, ptr @.str.7, ptr @dbg_restore_graphics, ptr @kgdboc_restore_input_work, ptr @.str.8, ptr @kgdboc_reset_mutex, ptr @kgdboc_reset_handler, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @kgdboc_reset_ids, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @kgdboc_earlycon_io_ops, ptr @.str.20, ptr @.str.23, ptr @earlycon_orig_exit, ptr @.str.25, ptr @kgdboc_earlycon_pre_exp_handler.already_warned, ptr @.str.26, ptr @.str.27, ptr @kgdboc_platform_driver, ptr @kgdboc_pdev, ptr @config_mutex, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdboc_option_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdboc_option_setup._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdboc_io_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_tty_driver to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdboc_use_kms to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdb_tty_line to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configured to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_restore_graphics to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdboc_restore_input_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdboc_reset_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdboc_reset_handler to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdboc_reset_ids to i32), i32 328, i32 416, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdboc_earlycon_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdboc_earlycon_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdboc_earlycon_io_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdboc_earlycon_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdboc_earlycon_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @earlycon_orig_exit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdboc_earlycon_pre_exp_handler.already_warned to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdboc_earlycon_pre_exp_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdboc_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kgdboc_pdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_set_kgdboc_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_set_kgdboc_var._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kgdboc_option_setup(ptr noundef readonly %opt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @strlen(ptr noundef nonnull %opt) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %call1)
  %cmp = icmp ugt i32 %call1, 39
  br i1 %cmp, label %do.end4, label %if.end7

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %return

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call ptr @strcpy(ptr noundef nonnull @config, ptr noundef nonnull %opt) #14
  br label %return

return:                                           ; preds = %if.end7, %do.end4, %do.end
  %retval.0 = phi i32 [ -28, %do.end4 ], [ 0, %if.end7 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kgdboc_early_init(ptr noundef %opt) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kgdboc_option_setup(ptr noundef %opt)
  %call1 = tail call fastcc i32 @configure_kgdboc()
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kgdboc_earlycon_init(ptr noundef %opt) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kdb_init(i32 noundef 1) #10
  tail call void @console_lock() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @console_drivers to i32))
  %con.064 = load ptr, ptr @console_drivers, align 4
  %cmp.not65 = icmp eq ptr %con.064, null
  br i1 %cmp.not65, label %entry.if.then11.critedge_crit_edge, label %for.body.lr.ph

entry.if.then11.critedge_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.critedge

for.body.lr.ph:                                   ; preds = %entry
  %tobool5.not = icmp eq ptr %opt, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %con.066 = phi ptr [ %con.064, %for.body.lr.ph ], [ %con.0, %for.inc.for.body_crit_edge ]
  %write = getelementptr inbounds %struct.console, ptr %con.066, i32 0, i32 1
  %0 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %read = getelementptr inbounds %struct.console, ptr %con.066, i32 0, i32 2
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true2

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true2:                                   ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.console, ptr %con.066, i32 0, i32 8
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 4
  %6 = and i16 %5, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool3.not = icmp eq i16 %6, 0
  br i1 %tobool3.not, label %land.lhs.true2.for.inc_crit_edge, label %land.lhs.true4

land.lhs.true2.for.inc_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true4:                                   ; preds = %land.lhs.true2
  br i1 %tobool5.not, label %land.lhs.true4.if.end25_crit_edge, label %lor.lhs.false

land.lhs.true4.if.end25_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

lor.lhs.false:                                    ; preds = %land.lhs.true4
  %7 = ptrtoint ptr %opt to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %opt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  br i1 %tobool6.not, label %lor.lhs.false.if.end25_crit_edge, label %lor.lhs.false7

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call = tail call i32 @strcmp(ptr noundef nonnull %con.066, ptr noundef nonnull %opt) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp eq i32 %call, 0
  br i1 %cmp8, label %lor.lhs.false7.if.end25_crit_edge, label %lor.lhs.false7.for.inc_crit_edge

lor.lhs.false7.for.inc_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false7.if.end25_crit_edge:                ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

for.inc:                                          ; preds = %lor.lhs.false7.for.inc_crit_edge, %land.lhs.true2.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %next = getelementptr inbounds %struct.console, ptr %con.066, i32 0, i32 14
  %9 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %9)
  %con.0 = load ptr, ptr %next, align 4
  %cmp.not = icmp eq ptr %con.0, null
  br i1 %cmp.not, label %for.inc.if.then11.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.then11.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.critedge

if.then11.critedge:                               ; preds = %for.inc.if.then11.critedge_crit_edge, %entry.if.then11.critedge_crit_edge
  %.b59 = load i1, ptr @kgdboc_earlycon_late_enable, align 1
  br i1 %.b59, label %do.end21, label %do.end

do.end:                                           ; preds = %if.then11.critedge
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  %tobool15.not = icmp eq ptr %opt, null
  br i1 %tobool15.not, label %do.end.if.end18_crit_edge, label %if.then16

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 @strscpy(ptr noundef nonnull @kgdboc_earlycon_param, ptr noundef nonnull %opt, i32 noundef 16) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %do.end.if.end18_crit_edge
  store i1 true, ptr @kgdboc_earlycon_late_enable, align 1
  br label %unlock

do.end21:                                         ; preds = %if.then11.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #13
  br label %unlock

if.end25:                                         ; preds = %lor.lhs.false7.if.end25_crit_edge, %lor.lhs.false.if.end25_crit_edge, %land.lhs.true4.if.end25_crit_edge
  store ptr %con.066, ptr getelementptr inbounds (%struct.kgdb_io, ptr @kgdboc_earlycon_io_ops, i32 0, i32 8), align 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull %con.066) #13
  %call33 = tail call i32 @kgdb_register_io_module(ptr noundef nonnull @kgdboc_earlycon_io_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34.not = icmp eq i32 %call33, 0
  br i1 %cmp34.not, label %if.else42, label %if.then36

if.then36:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  store ptr null, ptr getelementptr inbounds (%struct.kgdb_io, ptr @kgdboc_earlycon_io_ops, i32 0, i32 8), align 4
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #13
  br label %unlock

if.else42:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %exit = getelementptr inbounds %struct.console, ptr %con.066, i32 0, i32 6
  %10 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %exit, align 4
  store ptr %11, ptr @earlycon_orig_exit, align 4
  store ptr @kgdboc_earlycon_deferred_exit, ptr %exit, align 4
  br label %unlock

unlock:                                           ; preds = %if.else42, %if.then36, %do.end21, %if.end18
  tail call void @console_unlock() #10
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kgdboc_earlycon_late_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %.b1 = load i1, ptr @kgdboc_earlycon_late_enable, align 1
  br i1 %.b1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @kgdboc_earlycon_init(ptr noundef nonnull @kgdboc_earlycon_param) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_kgdboc() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @kgdboc_platform_driver, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.7, i32 noundef -1) #10
  store ptr %call1, ptr @kgdboc_pdev, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.err_did_register_crit_edge, label %if.end4

if.end.err_did_register_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_did_register

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @platform_device_add(ptr noundef nonnull %call1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load ptr, ptr @kgdboc_pdev, align 4
  tail call void @platform_device_put(ptr noundef %0) #10
  br label %err_did_register

err_did_register:                                 ; preds = %if.end8, %if.end.err_did_register_crit_edge
  %ret.0 = phi i32 [ %call5, %if.end8 ], [ -12, %if.end.err_did_register_crit_edge ]
  tail call void @platform_driver_unregister(ptr noundef nonnull @kgdboc_platform_driver) #10
  br label %cleanup

cleanup:                                          ; preds = %err_did_register, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_did_register ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exit_kgdboc() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @config_mutex, i32 noundef 0) #10
  tail call fastcc void @cleanup_kgdboc()
  tail call void @mutex_unlock(ptr noundef nonnull @config_mutex) #10
  %0 = load ptr, ptr @kgdboc_pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %0) #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @kgdboc_platform_driver) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @configure_kgdboc() unnamed_addr #0 align 64 {
entry:
  %tty_line = alloca i32, align 4
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tty_line) #10
  %0 = ptrtoint ptr %tty_line to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tty_line, align 4
  %char0 = load i8, ptr @config, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool.not = icmp eq i8 %char0, 0
  br i1 %tobool.not, label %entry.noconfig_crit_edge, label %lor.lhs.false

entry.noconfig_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %noconfig

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i8 %char0 to i32
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %3 = and i8 %2, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.noconfig_crit_edge

lor.lhs.false.noconfig_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %noconfig

if.end:                                           ; preds = %lor.lhs.false
  store ptr null, ptr getelementptr inbounds (%struct.kgdb_io, ptr @kgdboc_io_ops, i32 0, i32 8), align 4
  store ptr null, ptr @kgdb_tty_driver, align 4
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @config, ptr noundef nonnull dereferenceable(4) @.str.6, i32 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp4 = icmp eq i32 %bcmp, 0
  store i1 %cmp4, ptr @kgdboc_use_kms, align 4
  %spec.select = select i1 %cmp4, ptr getelementptr inbounds ([40 x i8], ptr @config, i32 0, i32 4), ptr @config
  %call.i = tail call i32 @strncmp(ptr noundef nonnull %spec.select, ptr noundef nonnull dereferenceable(4) @.str.12, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end.if.then.i_crit_edge, label %lor.lhs.false.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @strncmp(ptr noundef %spec.select, ptr noundef nonnull dereferenceable(4) @.str.13, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end11_crit_edge

lor.lhs.false.i.if.end11_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_poll_idx to i32))
  %4 = load i32, ptr @kdb_poll_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp3.i = icmp slt i32 %4, 5
  br i1 %cmp3.i, label %if.then4.i, label %if.then.i.if.end11_crit_edge

if.then.i.if.end11_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then4.i:                                       ; preds = %if.then.i
  %arrayidx.i = getelementptr [0 x ptr], ptr @kdb_poll_funcs, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @kdb_get_kbd_char, ptr %arrayidx.i, align 4
  %inc.i = add nsw i32 %4, 1
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_poll_idx to i32))
  store i32 %inc.i, ptr @kdb_poll_idx, align 4
  %.val = load i8, ptr getelementptr inbounds ([40 x i8], ptr @config, i32 0, i32 7), align 1
  %.val64 = load i8, ptr getelementptr inbounds ([40 x i8], ptr @config, i32 0, i32 3), align 1
  %6 = select i1 %cmp4, i8 %.val, i8 %.val64
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %6)
  %cmp7.i = icmp eq i8 %6, 44
  br i1 %cmp7.i, label %if.then9.i, label %if.then4.i.do_register_crit_edge

if.then4.i.do_register_crit_edge:                 ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_register

if.then9.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = select i1 %cmp4, ptr getelementptr inbounds ([40 x i8], ptr @config, i32 0, i32 8), ptr getelementptr inbounds ([40 x i8], ptr @config, i32 0, i32 4)
  br label %if.end11

if.end11:                                         ; preds = %if.then9.i, %if.then.i.if.end11_crit_edge, %lor.lhs.false.i.if.end11_crit_edge
  %cptr.1.ph = phi ptr [ %spec.select, %lor.lhs.false.i.if.end11_crit_edge ], [ %spec.select, %if.then.i.if.end11_crit_edge ], [ %add.ptr.i, %if.then9.i ]
  %call12 = call ptr @tty_find_polling_driver(ptr noundef %cptr.1.ph, ptr noundef nonnull %tty_line) #10
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end11.noconfig_crit_edge, label %for.cond.preheader

if.end11.noconfig_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %noconfig

for.cond.preheader:                               ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @console_drivers to i32))
  %cons.066 = load ptr, ptr @console_drivers, align 4
  %cmp16.not67 = icmp eq ptr %cons.066, null
  br i1 %cmp16.not67, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %cons.068 = phi ptr [ %cons.0, %for.inc.for.body_crit_edge ], [ %cons.066, %for.cond.preheader.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #10
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %idx, align 4, !annotation !132
  %device = getelementptr inbounds %struct.console, ptr %cons.068, i32 0, i32 3
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %tobool18.not = icmp eq ptr %9, null
  br i1 %tobool18.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %call20 = call ptr %9(ptr noundef nonnull %cons.068, ptr noundef nonnull %idx) #10
  %cmp21 = icmp eq ptr %call20, %call12
  br i1 %cmp21, label %land.lhs.true23, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true23:                                  ; preds = %land.lhs.true
  %10 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx, align 4
  %12 = ptrtoint ptr %tty_line to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tty_line, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp24 = icmp eq i32 %11, %13
  br i1 %cmp24, label %cleanup, label %land.lhs.true23.for.inc_crit_edge

land.lhs.true23.for.inc_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

cleanup:                                          ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %cons.068, ptr getelementptr inbounds (%struct.kgdb_io, ptr @kgdboc_io_ops, i32 0, i32 8), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #10
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true23.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #10
  %next = getelementptr inbounds %struct.console, ptr %cons.068, i32 0, i32 14
  %14 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %14)
  %cons.0 = load ptr, ptr %next, align 4
  %cmp16.not = icmp eq ptr %cons.0, null
  br i1 %cmp16.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup, %for.cond.preheader.for.end_crit_edge
  store ptr %call12, ptr @kgdb_tty_driver, align 4
  %15 = ptrtoint ptr %tty_line to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tty_line, align 4
  store i32 %16, ptr @kgdb_tty_line, align 4
  br label %do_register

do_register:                                      ; preds = %for.end, %if.then4.i.do_register_crit_edge
  %call28 = call i32 @kgdb_register_io_module(ptr noundef nonnull @kgdboc_io_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %do_register.noconfig_crit_edge

do_register.noconfig_crit_edge:                   ; preds = %do_register
  call void @__sanitizer_cov_trace_pc() #12
  br label %noconfig

if.end31:                                         ; preds = %do_register
  %call32 = call i32 @kgdb_register_nmi_console() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end31.cleanup36_crit_edge, label %nmi_con_failed

if.end31.cleanup36_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup36

nmi_con_failed:                                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  call void @kgdb_unregister_io_module(ptr noundef nonnull @kgdboc_io_ops) #10
  br label %noconfig

noconfig:                                         ; preds = %nmi_con_failed, %do_register.noconfig_crit_edge, %if.end11.noconfig_crit_edge, %lor.lhs.false.noconfig_crit_edge, %entry.noconfig_crit_edge
  %err.0 = phi i32 [ %call28, %do_register.noconfig_crit_edge ], [ %call32, %nmi_con_failed ], [ -19, %if.end11.noconfig_crit_edge ], [ 0, %lor.lhs.false.noconfig_crit_edge ], [ 0, %entry.noconfig_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_poll_idx to i32))
  %kdb_poll_idx.promoted.i = load i32, ptr @kdb_poll_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %kdb_poll_idx.promoted.i)
  %cmp12.i = icmp sgt i32 %kdb_poll_idx.promoted.i, 0
  br i1 %cmp12.i, label %noconfig.for.body.i_crit_edge, label %noconfig.kgdboc_unregister_kbd.exit_crit_edge

noconfig.kgdboc_unregister_kbd.exit_crit_edge:    ; preds = %noconfig
  call void @__sanitizer_cov_trace_pc() #12
  br label %kgdboc_unregister_kbd.exit

noconfig.for.body.i_crit_edge:                    ; preds = %noconfig
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %noconfig.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i52, %for.inc.i.for.body.i_crit_edge ], [ 0, %noconfig.for.body.i_crit_edge ]
  %dec1113.i = phi i32 [ %dec10.i, %for.inc.i.for.body.i_crit_edge ], [ %kdb_poll_idx.promoted.i, %noconfig.for.body.i_crit_edge ]
  %arrayidx.i50 = getelementptr [0 x ptr], ptr @kdb_poll_funcs, i32 0, i32 %i.014.i
  %17 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i50, align 4
  %cmp1.i = icmp eq ptr %18, @kdb_get_kbd_char
  br i1 %cmp1.i, label %if.then.i51, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i51:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dec.i = add nsw i32 %dec1113.i, -1
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_poll_idx to i32))
  store i32 %dec.i, ptr @kdb_poll_idx, align 4
  %arrayidx2.i = getelementptr [0 x ptr], ptr @kdb_poll_funcs, i32 0, i32 %dec.i
  %19 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx2.i, align 4
  %21 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %arrayidx.i50, align 4
  store ptr null, ptr %arrayidx2.i, align 4
  %dec5.i = add i32 %i.014.i, -1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i51, %for.body.i.for.inc.i_crit_edge
  %dec10.i = phi i32 [ %dec.i, %if.then.i51 ], [ %dec1113.i, %for.body.i.for.inc.i_crit_edge ]
  %i.1.i = phi i32 [ %dec5.i, %if.then.i51 ], [ %i.014.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i52 = add i32 %i.1.i, 1
  %cmp.i53 = icmp slt i32 %inc.i52, %dec10.i
  br i1 %cmp.i53, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.kgdboc_unregister_kbd.exit_crit_edge

for.inc.i.kgdboc_unregister_kbd.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kgdboc_unregister_kbd.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

kgdboc_unregister_kbd.exit:                       ; preds = %for.inc.i.kgdboc_unregister_kbd.exit_crit_edge, %noconfig.kgdboc_unregister_kbd.exit_crit_edge
  %call.i54 = call zeroext i1 @flush_work(ptr noundef nonnull @kgdboc_restore_input_work) #10
  br label %cleanup36

cleanup36:                                        ; preds = %kgdboc_unregister_kbd.exit, %if.end31.cleanup36_crit_edge
  %storemerge = phi i32 [ 0, %kgdboc_unregister_kbd.exit ], [ 1, %if.end31.cleanup36_crit_edge ]
  %retval.0 = phi i32 [ %err.0, %kgdboc_unregister_kbd.exit ], [ 0, %if.end31.cleanup36_crit_edge ]
  store i32 %storemerge, ptr @configured, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tty_line) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_find_polling_driver(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kgdb_register_io_module(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kgdb_register_nmi_console() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_unregister_io_module(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kgdboc_get_char() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @kgdb_tty_driver, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ops = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 20
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %poll_get_char = getelementptr inbounds %struct.tty_operations, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %poll_get_char to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %poll_get_char, align 4
  %5 = load i32, ptr @kgdb_tty_line, align 4
  %call = tail call i32 %4(ptr noundef nonnull %0, i32 noundef %5) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kgdboc_put_char(i8 noundef zeroext %chr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @kgdb_tty_driver, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ops = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 20
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %poll_put_char = getelementptr inbounds %struct.tty_operations, ptr %2, i32 0, i32 34
  %3 = ptrtoint ptr %poll_put_char to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %poll_put_char, align 4
  %5 = load i32, ptr @kgdb_tty_line, align 4
  tail call void %4(ptr noundef nonnull %0, i32 noundef %5, i8 noundef zeroext %chr) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kgdboc_pre_exp_handler() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %.b6 = load i1, ptr @dbg_restore_graphics, align 4
  br i1 %.b6, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %.b = load i1, ptr @kgdboc_use_kms, align 4
  br i1 %.b, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @dbg_restore_graphics, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %0 = load i32, ptr @fg_console, align 4
  %arrayidx = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @con_debug_enter(ptr noundef %2) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_connected to i32))
  %3 = load i32, ptr @kgdb_connected, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call zeroext i1 @try_module_get(ptr noundef null) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kgdboc_post_exp_handler() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_connected to i32))
  %0 = load i32, ptr @kgdb_connected, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @module_put(ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.b = load i1, ptr @kgdboc_use_kms, align 4
  br i1 %.b, label %land.lhs.true, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %.b5 = load i1, ptr @dbg_restore_graphics, align 4
  br i1 %.b5, label %if.then3, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  store i1 false, ptr @dbg_restore_graphics, align 4
  %call = tail call i32 @con_debug_leave() #10
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %1 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.i = icmp eq i32 %1, 3
  br i1 %cmp.i, label %if.then.i, label %if.end4.kgdboc_restore_input.exit_crit_edge, !prof !133

if.end4.kgdboc_restore_input.exit_crit_edge:      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %kgdboc_restore_input.exit

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef nonnull @kgdboc_restore_input_work) #10
  br label %kgdboc_restore_input.exit

kgdboc_restore_input.exit:                        ; preds = %if.then.i, %if.end4.kgdboc_restore_input.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_debug_enter(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @con_debug_leave() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kgdboc_restore_input_helper(ptr nocapture noundef readnone %dummy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @kgdboc_reset_mutex, i32 noundef 0) #10
  %call = tail call i32 @input_register_handler(ptr noundef nonnull @kgdboc_reset_handler) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @input_unregister_handler(ptr noundef nonnull @kgdboc_reset_handler) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @kgdboc_reset_mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_handler(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_handler(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kgdboc_reset_connect(ptr nocapture noundef readnone %handler, ptr noundef %dev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @input_reset_device(ptr noundef %dev) #10
  ret i32 -19
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kgdboc_reset_disconnect(ptr nocapture noundef readnone %handle) #7 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/kgdboc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 65, 0\0A.popsection", ""() #10, !srcloc !134
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_reset_device(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdb_get_kbd_char() #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kdb_init(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kgdboc_earlycon_deferred_exit(ptr nocapture noundef writeonly %con) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @earlycon_orig_exit, align 4
  %exit = getelementptr inbounds %struct.console, ptr %con, i32 0, i32 6
  %1 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %0, ptr %exit, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kgdboc_earlycon_get_char() #0 align 64 {
entry:
  %c = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c) #10
  %0 = ptrtoint ptr %c to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %c, align 1, !annotation !132
  %1 = load ptr, ptr getelementptr inbounds (%struct.kgdb_io, ptr @kgdboc_earlycon_io_ops, i32 0, i32 8), align 4
  %read = getelementptr inbounds %struct.console, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read, align 4
  %call = call i32 %3(ptr noundef %1, ptr noundef nonnull %c, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %c to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %c, align 1
  %conv = zext i8 %5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ 16711680, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kgdboc_earlycon_put_char(i8 noundef zeroext %chr) #0 align 64 {
entry:
  %chr.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chr.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %chr, ptr %chr.addr, align 1
  %1 = load ptr, ptr getelementptr inbounds (%struct.kgdb_io, ptr @kgdboc_earlycon_io_ops, i32 0, i32 8), align 4
  %write = getelementptr inbounds %struct.console, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  call void %3(ptr noundef %1, ptr noundef nonnull %chr.addr, i32 noundef 1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kgdboc_earlycon_deinit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.kgdb_io, ptr @kgdboc_earlycon_io_ops, i32 0, i32 8), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %exit = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 6
  %1 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %exit, align 4
  %cmp = icmp eq ptr %2, @kgdboc_earlycon_deferred_exit
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = load ptr, ptr @earlycon_orig_exit, align 4
  %4 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %exit, align 4
  br label %if.end8

if.else:                                          ; preds = %if.end
  %tobool4.not = icmp eq ptr %2, null
  br i1 %tobool4.not, label %if.else.if.end8_crit_edge, label %if.then5

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 %2(ptr noundef nonnull %0) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.else.if.end8_crit_edge, %if.then1
  store ptr null, ptr getelementptr inbounds (%struct.kgdb_io, ptr @kgdboc_earlycon_io_ops, i32 0, i32 8), align 4
  br label %return

return:                                           ; preds = %if.end8, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kgdboc_earlycon_pre_exp_handler() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %.b6 = load i1, ptr @kgdboc_earlycon_pre_exp_handler.already_warned, align 1
  br i1 %.b6, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @console_drivers to i32))
  %con.07 = load ptr, ptr @console_drivers, align 4
  %cmp.not8 = icmp eq ptr %con.07, null
  br i1 %cmp.not8, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %0 = load ptr, ptr getelementptr inbounds (%struct.kgdb_io, ptr @kgdboc_earlycon_io_ops, i32 0, i32 8), align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %next = getelementptr inbounds %struct.console, ptr %con.09, i32 0, i32 14
  %1 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %1)
  %con.0 = load ptr, ptr %next, align 4
  %cmp.not = icmp eq ptr %con.0, null
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %con.09 = phi ptr [ %con.07, %for.body.lr.ph ], [ %con.0, %for.cond.for.body_crit_edge ]
  %cmp1 = icmp eq ptr %con.09, %0
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  store i1 true, ptr @kgdboc_earlycon_pre_exp_handler.already_warned, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kgdboc_probe(ptr nocapture noundef readnone %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @config_mutex, i32 noundef 0) #10
  %0 = load i32, ptr @configured, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp.not = icmp eq i32 %0, 1
  br i1 %cmp.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc i32 @configure_kgdboc()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call)
  %cmp1 = icmp eq i32 %call, -19
  %spec.store.select = select i1 %cmp1, i32 -517, i32 %call
  br label %if.end3

if.end3:                                          ; preds = %if.then, %entry.if.end3_crit_edge
  %ret.0 = phi i32 [ %spec.store.select, %if.then ], [ 0, %entry.if.end3_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @config_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cleanup_kgdboc() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.kgdb_io, ptr @kgdboc_earlycon_io_ops, i32 0, i32 8), align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.cleanup_earlycon.exit_crit_edge, label %if.then.i

entry.cleanup_earlycon.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup_earlycon.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kgdb_unregister_io_module(ptr noundef nonnull @kgdboc_earlycon_io_ops) #10
  br label %cleanup_earlycon.exit

cleanup_earlycon.exit:                            ; preds = %if.then.i, %entry.cleanup_earlycon.exit_crit_edge
  %1 = load i32, ptr @configured, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %cleanup_earlycon.exit.return_crit_edge

cleanup_earlycon.exit.return_crit_edge:           ; preds = %cleanup_earlycon.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %cleanup_earlycon.exit
  %call = tail call i32 @kgdb_unregister_nmi_console() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_poll_idx to i32))
  %kdb_poll_idx.promoted.i = load i32, ptr @kdb_poll_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %kdb_poll_idx.promoted.i)
  %cmp12.i = icmp sgt i32 %kdb_poll_idx.promoted.i, 0
  br i1 %cmp12.i, label %if.end2.for.body.i_crit_edge, label %if.end2.kgdboc_unregister_kbd.exit_crit_edge

if.end2.kgdboc_unregister_kbd.exit_crit_edge:     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %kgdboc_unregister_kbd.exit

if.end2.for.body.i_crit_edge:                     ; preds = %if.end2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end2.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end2.for.body.i_crit_edge ]
  %dec1113.i = phi i32 [ %dec10.i, %for.inc.i.for.body.i_crit_edge ], [ %kdb_poll_idx.promoted.i, %if.end2.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [0 x ptr], ptr @kdb_poll_funcs, i32 0, i32 %i.014.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %cmp1.i = icmp eq ptr %3, @kdb_get_kbd_char
  br i1 %cmp1.i, label %if.then.i3, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i3:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dec.i = add nsw i32 %dec1113.i, -1
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @kdb_poll_idx to i32))
  store i32 %dec.i, ptr @kdb_poll_idx, align 4
  %arrayidx2.i = getelementptr [0 x ptr], ptr @kdb_poll_funcs, i32 0, i32 %dec.i
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2.i, align 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %arrayidx.i, align 4
  store ptr null, ptr %arrayidx2.i, align 4
  %dec5.i = add i32 %i.014.i, -1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i3, %for.body.i.for.inc.i_crit_edge
  %dec10.i = phi i32 [ %dec.i, %if.then.i3 ], [ %dec1113.i, %for.body.i.for.inc.i_crit_edge ]
  %i.1.i = phi i32 [ %dec5.i, %if.then.i3 ], [ %i.014.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add i32 %i.1.i, 1
  %cmp.i = icmp slt i32 %inc.i, %dec10.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.kgdboc_unregister_kbd.exit_crit_edge

for.inc.i.kgdboc_unregister_kbd.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kgdboc_unregister_kbd.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

kgdboc_unregister_kbd.exit:                       ; preds = %for.inc.i.kgdboc_unregister_kbd.exit_crit_edge, %if.end2.kgdboc_unregister_kbd.exit_crit_edge
  %call.i = tail call zeroext i1 @flush_work(ptr noundef nonnull @kgdboc_restore_input_work) #10
  tail call void @kgdb_unregister_io_module(ptr noundef nonnull @kgdboc_io_ops) #10
  br label %return

return:                                           ; preds = %kgdboc_unregister_kbd.exit, %if.end.return_crit_edge, %cleanup_earlycon.exit.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kgdb_unregister_nmi_console() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_set_kgdboc_var(ptr nocapture noundef readonly %kmessage, ptr nocapture noundef readnone %kp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %kmessage) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %call)
  %cmp = icmp ugt i32 %call, 39
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_connected to i32))
  %0 = load i32, ptr @kgdb_connected, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end8, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @config_mutex, i32 noundef 0) #10
  %call9 = tail call ptr @strcpy(ptr noundef nonnull @config, ptr noundef %kmessage) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end8.if.end16_crit_edge, label %land.lhs.true

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end8
  %sub = add nsw i32 %call, -1
  %arrayidx = getelementptr [40 x i8], ptr @config, i32 0, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %2)
  %cmp11 = icmp eq i8 %2, 10
  br i1 %cmp11, label %if.then13, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %land.lhs.true.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  %4 = load i32, ptr @configured, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp17 = icmp eq i32 %4, 1
  br i1 %cmp17, label %if.then19, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @cleanup_kgdboc()
  %.pr = load i32, ptr @configured, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16.if.end20_crit_edge
  %5 = phi i32 [ %.pr, %if.then19 ], [ %4, %if.end16.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp21 = icmp sgt i32 %5, -1
  br i1 %cmp21, label %if.end25, label %if.end20.if.end28_crit_edge

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.end25:                                         ; preds = %if.end20
  %call24 = tail call fastcc i32 @configure_kgdboc()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool26.not = icmp eq i32 %call24, 0
  br i1 %tobool26.not, label %if.end25.if.end28_crit_edge, label %if.then27

if.end25.if.end28_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  store i8 0, ptr @config, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end25.if.end28_crit_edge, %if.end20.if.end28_crit_edge
  %ret.037 = phi i32 [ %call24, %if.then27 ], [ 0, %if.end25.if.end28_crit_edge ], [ 0, %if.end20.if.end28_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @config_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end5, %do.end
  %retval.0 = phi i32 [ -28, %do.end ], [ -16, %do.end5 ], [ %ret.037, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_string(ptr noundef, ptr noundef) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !37, !39, !41, !43, !45, !46, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !90, !92, !94, !96, !98, !99, !100, !101, !103, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @__setup_kgdboc_option_setup, !1, !"__setup_kgdboc_option_setup", i1 false, i1 false}
!1 = !{!"../drivers/tty/serial/kgdboc.c", i32 418, i32 1}
!2 = !{ptr @__setup_kgdboc_early_init, !3, !"__setup_kgdboc_early_init", i1 false, i1 false}
!3 = !{!"../drivers/tty/serial/kgdboc.c", i32 429, i32 1}
!4 = !{ptr @__setup_kgdboc_earlycon_init, !5, !"__setup_kgdboc_earlycon_init", i1 false, i1 false}
!5 = !{!"../drivers/tty/serial/kgdboc.c", i32 579, i32 1}
!6 = !{ptr @__initcall__kmod_kgdboc__245_595_kgdboc_earlycon_late_initcon, !7, !"__initcall__kmod_kgdboc__245_595_kgdboc_earlycon_late_initcon", i1 false, i1 false}
!7 = !{!"../drivers/tty/serial/kgdboc.c", i32 595, i32 1}
!8 = !{ptr @__initcall__kmod_kgdboc__246_599_init_kgdboc6, !9, !"__initcall__kmod_kgdboc__246_599_init_kgdboc6", i1 false, i1 false}
!9 = !{!"../drivers/tty/serial/kgdboc.c", i32 599, i32 1}
!10 = !{ptr @__exitcall_exit_kgdboc, !11, !"__exitcall_exit_kgdboc", i1 false, i1 false}
!11 = !{!"../drivers/tty/serial/kgdboc.c", i32 600, i32 1}
!12 = !{ptr @__param_kgdboc, !13, !"__param_kgdboc", i1 false, i1 false}
!13 = !{!"../drivers/tty/serial/kgdboc.c", i32 601, i32 1}
!14 = !{ptr @__UNIQUE_ID_kgdboc247, !15, !"__UNIQUE_ID_kgdboc247", i1 false, i1 false}
!15 = !{!"../drivers/tty/serial/kgdboc.c", i32 602, i32 1}
!16 = !{ptr @__UNIQUE_ID_description248, !17, !"__UNIQUE_ID_description248", i1 false, i1 false}
!17 = !{!"../drivers/tty/serial/kgdboc.c", i32 603, i32 1}
!18 = !{ptr @__UNIQUE_ID_file249, !19, !"__UNIQUE_ID_file249", i1 false, i1 false}
!19 = !{!"../drivers/tty/serial/kgdboc.c", i32 604, i32 1}
!20 = !{ptr @__UNIQUE_ID_license250, !19, !"__UNIQUE_ID_license250", i1 false, i1 false}
!21 = !{ptr @__setup_str_kgdboc_option_setup, !1, !"__setup_str_kgdboc_option_setup", i1 false, i1 false}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/tty/serial/kgdboc.c", i32 405, i32 3}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @kgdboc_option_setup._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @kgdboc_option_setup._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/tty/serial/kgdboc.c", i32 410, i32 3}
!30 = !{ptr @kgdboc_option_setup._entry.3, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @kgdboc_option_setup._entry_ptr.5, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @config, !33, !"config", i1 false, i1 false}
!33 = !{!"../drivers/tty/serial/kgdboc.c", i32 34, i32 13}
!34 = !{ptr @__setup_str_kgdboc_early_init, !3, !"__setup_str_kgdboc_early_init", i1 false, i1 false}
!35 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/tty/serial/kgdboc.c", i32 184, i32 20}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/tty/serial/kgdboc.c", i32 394, i32 12}
!39 = !{ptr @kgdboc_io_ops, !40, !"kgdboc_io_ops", i1 false, i1 false}
!40 = !{!"../drivers/tty/serial/kgdboc.c", i32 393, i32 23}
!41 = distinct !{null, !42, !"dbg_restore_graphics", i1 false, i1 false}
!42 = !{!"../drivers/tty/serial/kgdboc.c", i32 368, i32 12}
!43 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/tty/serial/kgdboc.c", i32 100, i32 8}
!45 = !{ptr @kgdboc_restore_input_work, !44, !"kgdboc_restore_input_work", i1 false, i1 false}
!46 = !{ptr @.str.9, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/tty/serial/kgdboc.c", i32 83, i32 8}
!48 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @kgdboc_reset_mutex, !47, !"kgdboc_reset_mutex", i1 false, i1 false}
!50 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/tty/serial/kgdboc.c", i32 79, i32 11}
!52 = !{ptr @kgdboc_reset_handler, !53, !"kgdboc_reset_handler", i1 false, i1 false}
!53 = !{!"../drivers/tty/serial/kgdboc.c", i32 76, i32 29}
!54 = !{ptr @kgdboc_reset_ids, !55, !"kgdboc_reset_ids", i1 false, i1 false}
!55 = !{!"../drivers/tty/serial/kgdboc.c", i32 68, i32 37}
!56 = !{ptr @kgdb_tty_driver, !57, !"kgdb_tty_driver", i1 false, i1 false}
!57 = !{!"../drivers/tty/serial/kgdboc.c", i32 41, i32 27}
!58 = distinct !{null, !59, !"kgdboc_use_kms", i1 false, i1 false}
!59 = !{!"../drivers/tty/serial/kgdboc.c", i32 40, i32 12}
!60 = !{ptr @.str.12, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/tty/serial/kgdboc.c", i32 110, i32 21}
!62 = !{ptr @.str.13, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/tty/serial/kgdboc.c", i32 111, i32 18}
!64 = !{ptr @kgdb_tty_line, !65, !"kgdb_tty_line", i1 false, i1 false}
!65 = !{!"../drivers/tty/serial/kgdboc.c", i32 42, i32 14}
!66 = !{ptr @configured, !67, !"configured", i1 false, i1 false}
!67 = !{!"../drivers/tty/serial/kgdboc.c", i32 31, i32 12}
!68 = !{ptr @__setup_str_kgdboc_earlycon_init, !5, !"__setup_str_kgdboc_earlycon_init", i1 false, i1 false}
!69 = !{ptr @.str.14, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/tty/serial/kgdboc.c", i32 550, i32 4}
!71 = !{ptr @.str.15, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @kgdboc_earlycon_init._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @kgdboc_earlycon_init._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.17, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/tty/serial/kgdboc.c", i32 556, i32 4}
!76 = !{ptr @kgdboc_earlycon_init._entry.16, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @kgdboc_earlycon_init._entry_ptr.18, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.20, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/tty/serial/kgdboc.c", i32 562, i32 2}
!80 = !{ptr @kgdboc_earlycon_init._entry.19, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @kgdboc_earlycon_init._entry_ptr.21, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.23, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/tty/serial/kgdboc.c", i32 565, i32 3}
!84 = !{ptr @kgdboc_earlycon_init._entry.22, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @kgdboc_earlycon_init._entry_ptr.24, !83, !"_entry_ptr", i1 false, i1 false}
!86 = distinct !{null, !87, !"kgdboc_earlycon_late_enable", i1 false, i1 false}
!87 = !{!"../drivers/tty/serial/kgdboc.c", i32 519, i32 13}
!88 = !{ptr @kgdboc_earlycon_param, !89, !"kgdboc_earlycon_param", i1 false, i1 false}
!89 = !{!"../drivers/tty/serial/kgdboc.c", i32 518, i32 13}
!90 = !{ptr @.str.25, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/tty/serial/kgdboc.c", i32 510, i32 12}
!92 = !{ptr @kgdboc_earlycon_io_ops, !93, !"kgdboc_earlycon_io_ops", i1 false, i1 false}
!93 = !{!"../drivers/tty/serial/kgdboc.c", i32 509, i32 23}
!94 = distinct !{null, !95, !"already_warned", i1 false, i1 false}
!95 = !{!"../drivers/tty/serial/kgdboc.c", i32 451, i32 14}
!96 = !{ptr @.str.26, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/tty/serial/kgdboc.c", i32 469, i32 2}
!98 = !{ptr @.str.27, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @kgdboc_earlycon_pre_exp_handler._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @kgdboc_earlycon_pre_exp_handler._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @earlycon_orig_exit, !102, !"earlycon_orig_exit", i1 false, i1 false}
!102 = !{!"../drivers/tty/serial/kgdboc.c", i32 48, i32 35}
!103 = !{ptr @kgdboc_platform_driver, !104, !"kgdboc_platform_driver", i1 false, i1 false}
!104 = !{!"../drivers/tty/serial/kgdboc.c", i32 247, i32 31}
!105 = !{ptr @.str.28, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/tty/serial/kgdboc.c", i32 32, i32 8}
!107 = !{ptr @.str.29, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @config_mutex, !106, !"config_mutex", i1 false, i1 false}
!109 = !{ptr @kgdboc_pdev, !110, !"kgdboc_pdev", i1 false, i1 false}
!110 = !{!"../drivers/tty/serial/kgdboc.c", i32 44, i32 32}
!111 = !{ptr @__param_str_kgdboc, !13, !"__param_str_kgdboc", i1 false, i1 false}
!112 = !{ptr @__param_ops_kgdboc, !13, !"__param_ops_kgdboc", i1 false, i1 false}
!113 = !{ptr @.str.30, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/tty/serial/kgdboc.c", i32 323, i32 3}
!115 = !{ptr @param_set_kgdboc_var._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @param_set_kgdboc_var._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.32, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/tty/serial/kgdboc.c", i32 328, i32 3}
!119 = !{ptr @param_set_kgdboc_var._entry.31, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @param_set_kgdboc_var._entry_ptr.33, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @kps, !122, !"kps", i1 false, i1 false}
!122 = !{!"../drivers/tty/serial/kgdboc.c", i32 35, i32 29}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{!"auto-init"}
!133 = !{!"branch_weights", i32 2000, i32 1}
!134 = !{i64 2154666096, i64 2154666587, i64 2154666133, i64 2154666189, i64 2154666223, i64 2154666247, i64 2154666288, i64 2154666309, i64 2154666337, i64 2154666371}
