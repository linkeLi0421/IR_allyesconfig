; ModuleID = '/llk/IR_all_yes/drivers/ipack/devices/ipoctal.c_pt.bc'
source_filename = "../drivers/ipack/devices/ipoctal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ipack_driver = type { %struct.device_driver, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ipack_device_id = type { i8, i32, i32 }
%struct.ipack_driver_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_port_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ipack_device = type { i32, ptr, %struct.device, ptr, [5 x %struct.ipack_region], ptr, i32, i32, i32, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ipack_region = type { i32, i32 }
%struct.ipack_bus_device = type { ptr, ptr, i32, i32, ptr }
%struct.ipoctal = type { ptr, i32, [8 x %struct.ipoctal_channel], ptr, ptr, ptr }
%struct.ipoctal_channel = type { %struct.ipoctal_stats, i32, %struct.wait_queue_head, %struct.spinlock, i32, i32, %struct.tty_port, i8, ptr, ptr, i32, i8, i8, i32 }
%struct.ipoctal_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.35, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.35 = type { ptr }
%struct.llist_head = type { ptr }
%union.scc2698_channel = type { %struct.anon.71 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8] }
%union.scc2698_block = type { %struct.anon.73 }
%struct.anon.73 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.72 = type { i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8] }
%struct.anon.74 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.ipack_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.36, %struct.anon.37, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.36 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.37 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.serial_icounter_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x i32] }

@driver = internal global { %struct.ipack_driver, [44 x i8] } { %struct.ipack_driver { %struct.device_driver zeroinitializer, ptr @ipoctal_ids, ptr @ipoctal_drv_ops }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_description227 = internal constant [60 x i8] c"ipoctal.description=IP-Octal 232, 422 and 485 device driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file228 = internal constant [43 x i8] c"ipoctal.file=drivers/ipack/devices/ipoctal\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [20 x i8] c"ipoctal.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_ipoctal__230_774_ipoctal_init6 = internal global ptr @ipoctal_init, section ".initcall6.init", align 4
@__exitcall_ipoctal_exit = internal global ptr @ipoctal_exit, section ".exitcall.exit", align 4
@ipoctal_ids = internal constant { [4 x %struct.ipack_device_id], [48 x i8] } { [4 x %struct.ipack_device_id] [%struct.ipack_device_id { i8 1, i32 240, i32 34 }, %struct.ipack_device_id { i8 1, i32 240, i32 42 }, %struct.ipack_device_id { i8 1, i32 240, i32 72 }, %struct.ipack_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ipoctal_drv_ops = internal constant { %struct.ipack_driver_ops, [24 x i8] } { %struct.ipack_driver_ops { ptr @ipoctal_probe, ptr @ipoctal_remove }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ipoctal_inst_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 294, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to map slot [%d:%d] IO space!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ipoctal_inst_slot\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/ipack/devices/ipoctal.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ipoctal_inst_slot._entry_ptr = internal global ptr @ipoctal_inst_slot._entry, section ".printk_index", align 4
@ipoctal_inst_slot._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 310, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to map slot [%d:%d] INT space!\0A\00", [57 x i8] zeroinitializer }, align 32
@ipoctal_inst_slot._entry_ptr.7 = internal global ptr @ipoctal_inst_slot._entry.5, section ".printk_index", align 4
@ipoctal_inst_slot._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 321, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unable to map slot [%d:%d] MEM8 space!\0A\00", [56 x i8] zeroinitializer }, align 32
@ipoctal_inst_slot._entry_ptr.10 = internal global ptr @ipoctal_inst_slot._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ipoctal\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ipoctal.%d.%d.\00", [17 x i8] zeroinitializer }, align 32
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@ipoctal_fops = internal constant { %struct.tty_operations, [48 x i8] } { %struct.tty_operations { ptr null, ptr @ipoctal_install, ptr null, ptr @ipoctal_open, ptr @ipoctal_close, ptr @ipoctal_shutdown, ptr @ipoctal_cleanup, ptr @ipoctal_write_tty, ptr null, ptr null, ptr @ipoctal_write_room, ptr @ipoctal_chars_in_buffer, ptr null, ptr null, ptr @ipoctal_set_termios, ptr null, ptr null, ptr null, ptr null, ptr @ipoctal_hangup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipoctal_get_icount, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@ipoctal_inst_slot._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 388, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Can't register tty driver.\0A\00", [36 x i8] zeroinitializer }, align 32
@ipoctal_inst_slot._entry_ptr.15 = internal global ptr @ipoctal_inst_slot._entry.13, section ".printk_index", align 4
@ipoctal_tty_port_ops = internal constant { %struct.tty_port_operations, [44 x i8] } { %struct.tty_port_operations { ptr null, ptr null, ptr null, ptr @ipoctal_port_activate, ptr null }, [44 x i8] zeroinitializer }, align 32
@ipoctal_inst_slot.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&channel->lock\00", [17 x i8] zeroinitializer }, align 32
@ipoctal_inst_slot._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 413, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register tty device.\0A\00", [32 x i8] zeroinitializer }, align 32
@ipoctal_inst_slot._entry_ptr.19 = internal global ptr @ipoctal_inst_slot._entry.17, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 34, i64 42, i64 72]
@__sancov_gen_cov_switch_values.21 = internal global [14 x i64] [i64 12, i64 32, i64 75, i64 110, i64 150, i64 300, i64 600, i64 1200, i64 1800, i64 2000, i64 2400, i64 4800, i64 9600, i64 19200]
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 756, i32 28 }
@___asan_gen_.25 = private unnamed_addr constant [12 x i8] c"ipoctal_ids\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 739, i32 8 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"ipoctal_drv_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 751, i32 38 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 292, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 308, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 319, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 369, i32 21 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 370, i32 36 }
@___asan_gen_.67 = private unnamed_addr constant [13 x i8] c"ipoctal_fops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 674, i32 36 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 388, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [21 x i8] c"ipoctal_tty_port_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 269, i32 41 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 407, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [35 x i8] c"../drivers/ipack/devices/ipoctal.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 413, i32 4 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_description227, ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__exitcall_ipoctal_exit, ptr @__initcall__kmod_ipoctal__230_774_ipoctal_init6, ptr @ipoctal_exit, ptr @ipoctal_inst_slot._entry, ptr @ipoctal_inst_slot._entry.13, ptr @ipoctal_inst_slot._entry.17, ptr @ipoctal_inst_slot._entry.5, ptr @ipoctal_inst_slot._entry.8, ptr @ipoctal_inst_slot._entry_ptr, ptr @ipoctal_inst_slot._entry_ptr.10, ptr @ipoctal_inst_slot._entry_ptr.15, ptr @ipoctal_inst_slot._entry_ptr.19, ptr @ipoctal_inst_slot._entry_ptr.7, ptr @driver, ptr @ipoctal_ids, ptr @ipoctal_drv_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @ipoctal_fops, ptr @.str.14, ptr @ipoctal_tty_port_ops, ptr @ipoctal_inst_slot.__key, ptr @.str.16, ptr @.str.18], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoctal_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoctal_drv_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoctal_inst_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoctal_inst_slot._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoctal_inst_slot._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoctal_fops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoctal_inst_slot._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoctal_tty_port_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoctal_inst_slot.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoctal_inst_slot._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ipoctal_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ipack_driver_unregister(ptr noundef nonnull @driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipack_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoctal_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ipack_driver_register(ptr noundef nonnull @driver, ptr noundef null, ptr noundef nonnull @.str.11) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoctal_probe(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5876) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call7.i.i, align 8
  %bus = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %bus_nr = getelementptr inbounds %struct.ipack_bus_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %bus_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bus_nr, align 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev, align 8
  %id_device.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 8
  %8 = ptrtoint ptr %id_device.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id_device.i, align 8
  %board_id.i = getelementptr inbounds %struct.ipoctal, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %board_id.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %board_id.i, align 4
  %region2.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 4
  %dev4.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 2
  %11 = ptrtoint ptr %region2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %region2.i, align 4
  %size.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 4, i32 0, i32 1
  %13 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.i, align 4
  %call.i = tail call ptr @devm_ioremap(ptr noundef %dev4.i, i32 noundef %12, i32 noundef %14) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i.i, align 8
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev6.i = getelementptr inbounds %struct.ipack_device, ptr %16, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str, i32 noundef %5, i32 noundef %7) #11
  br label %out_uninst

if.end.i:                                         ; preds = %if.end
  %arrayidx9.i = getelementptr %struct.ipack_device, ptr %16, i32 0, i32 4, i32 2
  %dev11.i = getelementptr inbounds %struct.ipack_device, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx9.i, align 4
  %size13.i = getelementptr %struct.ipack_device, ptr %16, i32 0, i32 4, i32 2, i32 1
  %19 = ptrtoint ptr %size13.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size13.i, align 4
  %call14.i = tail call ptr @devm_ioremap(ptr noundef %dev11.i, i32 noundef %18, i32 noundef %20) #7
  %int_space.i = getelementptr inbounds %struct.ipoctal, ptr %call7.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %int_space.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call14.i, ptr %int_space.i, align 8
  %tobool16.not.i = icmp eq ptr %call14.i, null
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call7.i.i, align 8
  br i1 %tobool16.not.i, label %do.end20.i, label %if.end23.i

do.end20.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev22.i = getelementptr inbounds %struct.ipack_device, ptr %23, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22.i, ptr noundef nonnull @.str.6, i32 noundef %5, i32 noundef %7) #11
  br label %out_uninst

if.end23.i:                                       ; preds = %if.end.i
  %arrayidx26.i = getelementptr %struct.ipack_device, ptr %23, i32 0, i32 4, i32 3
  %dev28.i = getelementptr inbounds %struct.ipack_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx26.i, align 4
  %call30.i = tail call ptr @devm_ioremap(ptr noundef %dev28.i, i32 noundef %25, i32 noundef 32768) #7
  %mem8_space.i = getelementptr inbounds %struct.ipoctal, ptr %call7.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %mem8_space.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call30.i, ptr %mem8_space.i, align 4
  %tobool32.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool32.not.i, label %do.end36.i, label %if.end23.i.for.body.i_crit_edge

if.end23.i.for.body.i_crit_edge:                  ; preds = %if.end23.i
  br label %for.body.i

do.end36.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call7.i.i, align 8
  %dev38.i = getelementptr inbounds %struct.ipack_device, ptr %28, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38.i, ptr noundef nonnull @.str.9, i32 noundef %5, i32 noundef %7) #11
  br label %out_uninst

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end23.i.for.body.i_crit_edge
  %i.0229.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end23.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %union.scc2698_channel, ptr %call.i, i32 %i.0229.i
  %regs.i = getelementptr %struct.ipoctal, ptr %call7.i.i, i32 0, i32 2, i32 %i.0229.i, i32 8
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr.i, ptr %regs.i, align 4
  %30 = lshr i32 %i.0229.i, 1
  %add.ptr43.i = getelementptr %union.scc2698_block, ptr %call.i, i32 %30
  %block_regs44.i = getelementptr %struct.ipoctal, ptr %call7.i.i, i32 0, i32 2, i32 %i.0229.i, i32 9
  %31 = ptrtoint ptr %block_regs44.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr43.i, ptr %block_regs44.i, align 4
  %32 = ptrtoint ptr %board_id.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %board_id.i, align 4
  %board_id46.i = getelementptr %struct.ipoctal, ptr %call7.i.i, i32 0, i32 2, i32 %i.0229.i, i32 10
  %34 = ptrtoint ptr %board_id46.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %board_id46.i, align 4
  %and.i = and i32 %i.0229.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool47.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool47.not.i, i8 1, i8 16
  %spec.select236.i = select i1 %tobool47.not.i, i8 2, i8 32
  %35 = getelementptr %struct.ipoctal, ptr %call7.i.i, i32 0, i32 2, i32 %i.0229.i, i32 12
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %spec.select.i, ptr %35, align 1
  %37 = getelementptr %struct.ipoctal, ptr %call7.i.i, i32 0, i32 2, i32 %i.0229.i, i32 11
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %spec.select236.i, ptr %37, align 4
  %cr.i.i = getelementptr inbounds %struct.anon.72, ptr %add.ptr.i, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr.i.i, i8 10) #7, !srcloc !60
  %rx_enable.i.i = getelementptr %struct.ipoctal, ptr %call7.i.i, i32 0, i32 2, i32 %i.0229.i, i32 13
  %39 = ptrtoint ptr %rx_enable.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %rx_enable.i.i, align 4
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 4
  %cr2.i.i = getelementptr inbounds %struct.anon.72, ptr %41, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr2.i.i, i8 32) #7, !srcloc !60
  %42 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i, align 4
  %cr4.i.i = getelementptr inbounds %struct.anon.72, ptr %43, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr4.i.i, i8 48) #7, !srcloc !60
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 4
  %cr6.i.i = getelementptr inbounds %struct.anon.72, ptr %45, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr6.i.i, i8 64) #7, !srcloc !60
  %46 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i, align 4
  %cr8.i.i = getelementptr inbounds %struct.anon.72, ptr %47, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr8.i.i, i8 16) #7, !srcloc !60
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 4
  %mr.i = getelementptr inbounds %struct.anon.72, ptr %49, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %mr.i, i8 3) #7, !srcloc !60
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 4
  %mr54.i = getelementptr inbounds %struct.anon.72, ptr %51, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %mr54.i, i8 0) #7, !srcloc !60
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 4
  %csr.i = getelementptr inbounds %struct.anon.72, ptr %53, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %csr.i, i8 -69) #7, !srcloc !60
  %inc.i = add nuw nsw i32 %i.0229.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.body58.preheader.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body58.preheader.i:                           ; preds = %for.body.i
  %acr.i = getelementptr inbounds %struct.anon.74, ptr %call.i, i32 0, i32 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %acr.i, i8 -128) #7, !srcloc !60
  %opcr.i = getelementptr inbounds %struct.anon.74, ptr %call.i, i32 0, i32 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %opcr.i, i8 -128) #7, !srcloc !60
  %imr.i = getelementptr inbounds %struct.anon.74, ptr %call.i, i32 0, i32 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %imr.i, i8 119) #7, !srcloc !60
  %acr.1.i = getelementptr %union.scc2698_block, ptr %call.i, i32 1, i32 0, i32 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %acr.1.i, i8 -128) #7, !srcloc !60
  %opcr.1.i = getelementptr %union.scc2698_block, ptr %call.i, i32 1, i32 0, i32 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %opcr.1.i, i8 -128) #7, !srcloc !60
  %imr.1.i = getelementptr %union.scc2698_block, ptr %call.i, i32 1, i32 0, i32 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %imr.1.i, i8 119) #7, !srcloc !60
  %acr.2.i = getelementptr %union.scc2698_block, ptr %call.i, i32 2, i32 0, i32 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %acr.2.i, i8 -128) #7, !srcloc !60
  %opcr.2.i = getelementptr %union.scc2698_block, ptr %call.i, i32 2, i32 0, i32 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %opcr.2.i, i8 -128) #7, !srcloc !60
  %imr.2.i = getelementptr %union.scc2698_block, ptr %call.i, i32 2, i32 0, i32 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %imr.2.i, i8 119) #7, !srcloc !60
  %acr.3.i = getelementptr %union.scc2698_block, ptr %call.i, i32 3, i32 0, i32 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %acr.3.i, i8 -128) #7, !srcloc !60
  %opcr.3.i = getelementptr %union.scc2698_block, ptr %call.i, i32 3, i32 0, i32 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %opcr.3.i, i8 -128) #7, !srcloc !60
  %imr.3.i = getelementptr %union.scc2698_block, ptr %call.i, i32 3, i32 0, i32 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %imr.3.i, i8 119) #7, !srcloc !60
  %54 = ptrtoint ptr %mem8_space.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mem8_space.i, align 4
  %add.ptr66.i = getelementptr i8, ptr %55, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr66.i, i8 1) #7, !srcloc !60
  %call67.i = tail call ptr @__tty_alloc_driver(i32 noundef 8, ptr noundef null, i32 noundef 12) #7
  %cmp.i.i = icmp ugt ptr %call67.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %ipoctal_inst_slot.exit, label %if.end71.i

if.end71.i:                                       ; preds = %for.body58.preheader.i
  %owner.i = getelementptr inbounds %struct.tty_driver, ptr %call67.i, i32 0, i32 3
  %56 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %owner.i, align 4
  %driver_name.i = getelementptr inbounds %struct.tty_driver, ptr %call67.i, i32 0, i32 4
  %57 = ptrtoint ptr %driver_name.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.11, ptr %driver_name.i, align 4
  %call72.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.12, i32 noundef %5, i32 noundef %7) #7
  %name.i = getelementptr inbounds %struct.tty_driver, ptr %call67.i, i32 0, i32 5
  %58 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call72.i, ptr %name.i, align 4
  %tobool74.not.i = icmp eq ptr %call72.i, null
  br i1 %tobool74.not.i, label %if.end71.i.err_put_driver.i_crit_edge, label %if.end76.i

if.end71.i.err_put_driver.i_crit_edge:            ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_put_driver.i

if.end76.i:                                       ; preds = %if.end71.i
  %major.i = getelementptr inbounds %struct.tty_driver, ptr %call67.i, i32 0, i32 7
  %59 = ptrtoint ptr %major.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %major.i, align 4
  %minor_start.i = getelementptr inbounds %struct.tty_driver, ptr %call67.i, i32 0, i32 8
  %60 = ptrtoint ptr %minor_start.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %minor_start.i, align 4
  %type.i = getelementptr inbounds %struct.tty_driver, ptr %call67.i, i32 0, i32 10
  %61 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 3, ptr %type.i, align 4
  %subtype.i = getelementptr inbounds %struct.tty_driver, ptr %call67.i, i32 0, i32 11
  %62 = ptrtoint ptr %subtype.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 1, ptr %subtype.i, align 2
  %init_termios.i = getelementptr inbounds %struct.tty_driver, ptr %call67.i, i32 0, i32 12
  %63 = call ptr @memcpy(ptr %init_termios.i, ptr @tty_std_termios, i32 36)
  %c_cflag.i = getelementptr inbounds %struct.tty_driver, ptr %call67.i, i32 0, i32 12, i32 2
  %64 = ptrtoint ptr %c_cflag.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 3261, ptr %c_cflag.i, align 4
  %c_ispeed.i = getelementptr inbounds %struct.tty_driver, ptr %call67.i, i32 0, i32 12, i32 6
  %65 = ptrtoint ptr %c_ispeed.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 9600, ptr %c_ispeed.i, align 4
  %c_ospeed.i = getelementptr inbounds %struct.tty_driver, ptr %call67.i, i32 0, i32 12, i32 7
  %66 = ptrtoint ptr %c_ospeed.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 9600, ptr %c_ospeed.i, align 4
  %ops.i.i = getelementptr inbounds %struct.tty_driver, ptr %call67.i, i32 0, i32 20
  %67 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @ipoctal_fops, ptr %ops.i.i, align 4
  %call80.i = tail call i32 @tty_register_driver(ptr noundef %call67.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %tobool81.not.i = icmp eq i32 %call80.i, 0
  br i1 %tobool81.not.i, label %if.end88.i, label %do.end85.i

do.end85.i:                                       ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call7.i.i, align 8
  %dev87.i = getelementptr inbounds %struct.ipack_device, ptr %69, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev87.i, ptr noundef nonnull @.str.14) #11
  %70 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %name.i, align 4
  tail call void @kfree(ptr noundef %71) #7
  br label %err_put_driver.i

if.end88.i:                                       ; preds = %if.end76.i
  %tty_drv.i = getelementptr inbounds %struct.ipoctal, ptr %call7.i.i, i32 0, i32 3
  %72 = ptrtoint ptr %tty_drv.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call67.i, ptr %tty_drv.i, align 8
  br label %for.body91.i

for.body91.i:                                     ; preds = %cleanup.i.for.body91.i_crit_edge, %if.end88.i
  %i.2231.i = phi i32 [ 0, %if.end88.i ], [ %inc117.i, %cleanup.i.for.body91.i_crit_edge ]
  %tty_port.i = getelementptr %struct.ipoctal, ptr %call7.i.i, i32 0, i32 2, i32 %i.2231.i, i32 6
  tail call void @tty_port_init(ptr noundef %tty_port.i) #7
  %call95.i = tail call i32 @tty_port_alloc_xmit_buf(ptr noundef %tty_port.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i)
  %tobool96.not.i = icmp eq i32 %call95.i, 0
  br i1 %tobool96.not.i, label %if.end98.i, label %for.body91.i.cleanup.i_crit_edge

for.body91.i.cleanup.i_crit_edge:                 ; preds = %for.body91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end98.i:                                       ; preds = %for.body91.i
  %arrayidx93.i = getelementptr %struct.ipoctal, ptr %call7.i.i, i32 0, i32 2, i32 %i.2231.i
  %ops.i = getelementptr %struct.ipoctal, ptr %call7.i.i, i32 0, i32 2, i32 %i.2231.i, i32 6, i32 3
  %73 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @ipoctal_tty_port_ops, ptr %ops.i, align 4
  %lock.i = getelementptr %struct.ipoctal, ptr %call7.i.i, i32 0, i32 2, i32 %i.2231.i, i32 3
  %74 = call ptr @memset(ptr %arrayidx93.i, i32 0, i32 28)
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @ipoctal_inst_slot.__key, i16 noundef signext 3) #7
  %pointer_read.i = getelementptr %struct.ipoctal, ptr %call7.i.i, i32 0, i32 2, i32 %i.2231.i, i32 4
  %75 = ptrtoint ptr %pointer_read.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %pointer_read.i, align 4
  %pointer_write.i = getelementptr %struct.ipoctal, ptr %call7.i.i, i32 0, i32 2, i32 %i.2231.i, i32 5
  %76 = ptrtoint ptr %pointer_write.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %pointer_write.i, align 4
  %call105.i = tail call ptr @tty_port_register_device_attr(ptr noundef %tty_port.i, ptr noundef %call67.i, i32 noundef %i.2231.i, ptr noundef null, ptr noundef %arrayidx93.i, ptr noundef null) #7
  %cmp.i228.i = icmp ugt ptr %call105.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i228.i, label %do.end110.i, label %if.end115.i

do.end110.i:                                      ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call7.i.i, align 8
  %dev112.i = getelementptr inbounds %struct.ipack_device, ptr %78, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev112.i, ptr noundef nonnull @.str.18) #11
  tail call void @tty_port_free_xmit_buf(ptr noundef %tty_port.i) #7
  tail call void @tty_port_destroy(ptr noundef %tty_port.i) #7
  br label %cleanup.i

if.end115.i:                                      ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #9
  %tty_registered.i = getelementptr %struct.ipoctal, ptr %call7.i.i, i32 0, i32 2, i32 %i.2231.i, i32 7
  %79 = ptrtoint ptr %tty_registered.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %tty_registered.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end115.i, %do.end110.i, %for.body91.i.cleanup.i_crit_edge
  %inc117.i = add nuw nsw i32 %i.2231.i, 1
  %exitcond234.not.i = icmp eq i32 %inc117.i, 8
  br i1 %exitcond234.not.i, label %ipoctal_inst_slot.exit.thread18, label %cleanup.i.for.body91.i_crit_edge

cleanup.i.for.body91.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body91.i

ipoctal_inst_slot.exit.thread18:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call7.i.i, align 8
  %bus.i = getelementptr inbounds %struct.ipack_device, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bus.i, align 4
  %ops120.i = getelementptr inbounds %struct.ipack_bus_device, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %ops120.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops120.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %call122.i = tail call i32 %87(ptr noundef %81, ptr noundef nonnull @ipoctal_irq_handler, ptr noundef %call7.i.i) #7
  %driver_data.i = getelementptr inbounds %struct.ipack_device, ptr %dev, i32 0, i32 2, i32 8
  %88 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  br label %cleanup

err_put_driver.i:                                 ; preds = %do.end85.i, %if.end71.i.err_put_driver.i_crit_edge
  %res.0.i = phi i32 [ %call80.i, %do.end85.i ], [ -12, %if.end71.i.err_put_driver.i_crit_edge ]
  tail call void @tty_driver_kref_put(ptr noundef %call67.i) #7
  br label %out_uninst

ipoctal_inst_slot.exit:                           ; preds = %for.body58.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %call67.i to i32
  br label %out_uninst

out_uninst:                                       ; preds = %ipoctal_inst_slot.exit, %err_put_driver.i, %do.end36.i, %do.end20.i, %do.end.i
  %retval.0.i17 = phi i32 [ %89, %ipoctal_inst_slot.exit ], [ -99, %do.end.i ], [ -99, %do.end20.i ], [ -99, %do.end36.i ], [ %res.0.i, %err_put_driver.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out_uninst, %ipoctal_inst_slot.exit.thread18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i17, %out_uninst ], [ 0, %ipoctal_inst_slot.exit.thread18 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipoctal_remove(ptr nocapture noundef readonly %idev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.ipack_device, ptr %idev, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bus.i = getelementptr inbounds %struct.ipack_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 4
  %ops.i = getelementptr inbounds %struct.ipack_bus_device, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %free_irq.i = getelementptr inbounds %struct.ipack_bus_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %free_irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %free_irq.i, align 4
  %call.i = tail call i32 %9(ptr noundef %3) #7
  %tty_drv.i = getelementptr inbounds %struct.ipoctal, ptr %1, i32 0, i32 3
  %tty_registered.i = getelementptr %struct.ipoctal, ptr %1, i32 0, i32 2, i32 0, i32 7
  %10 = ptrtoint ptr %tty_registered.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tty_registered.i, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %entry.cleanup.i_crit_edge, label %if.end.i

entry.cleanup.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %tty_drv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tty_drv.i, align 4
  tail call void @tty_unregister_device(ptr noundef %13, i32 noundef 0) #7
  %tty_port.i = getelementptr %struct.ipoctal, ptr %1, i32 0, i32 2, i32 0, i32 6
  tail call void @tty_port_free_xmit_buf(ptr noundef %tty_port.i) #7
  tail call void @tty_port_destroy(ptr noundef %tty_port.i) #7
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %entry.cleanup.i_crit_edge
  %tty_registered.1.i = getelementptr %struct.ipoctal, ptr %1, i32 0, i32 2, i32 1, i32 7
  %14 = ptrtoint ptr %tty_registered.1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tty_registered.1.i, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.1.i = icmp eq i8 %15, 0
  br i1 %tobool.not.1.i, label %cleanup.i.cleanup.1.i_crit_edge, label %if.end.1.i

cleanup.i.cleanup.1.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1.i

if.end.1.i:                                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %tty_drv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tty_drv.i, align 4
  tail call void @tty_unregister_device(ptr noundef %17, i32 noundef 1) #7
  %tty_port.1.i = getelementptr %struct.ipoctal, ptr %1, i32 0, i32 2, i32 1, i32 6
  tail call void @tty_port_free_xmit_buf(ptr noundef %tty_port.1.i) #7
  tail call void @tty_port_destroy(ptr noundef %tty_port.1.i) #7
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %if.end.1.i, %cleanup.i.cleanup.1.i_crit_edge
  %tty_registered.2.i = getelementptr %struct.ipoctal, ptr %1, i32 0, i32 2, i32 2, i32 7
  %18 = ptrtoint ptr %tty_registered.2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tty_registered.2.i, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.2.i = icmp eq i8 %19, 0
  br i1 %tobool.not.2.i, label %cleanup.1.i.cleanup.2.i_crit_edge, label %if.end.2.i

cleanup.1.i.cleanup.2.i_crit_edge:                ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.2.i

if.end.2.i:                                       ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %tty_drv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tty_drv.i, align 4
  tail call void @tty_unregister_device(ptr noundef %21, i32 noundef 2) #7
  %tty_port.2.i = getelementptr %struct.ipoctal, ptr %1, i32 0, i32 2, i32 2, i32 6
  tail call void @tty_port_free_xmit_buf(ptr noundef %tty_port.2.i) #7
  tail call void @tty_port_destroy(ptr noundef %tty_port.2.i) #7
  br label %cleanup.2.i

cleanup.2.i:                                      ; preds = %if.end.2.i, %cleanup.1.i.cleanup.2.i_crit_edge
  %tty_registered.3.i = getelementptr %struct.ipoctal, ptr %1, i32 0, i32 2, i32 3, i32 7
  %22 = ptrtoint ptr %tty_registered.3.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tty_registered.3.i, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.3.i = icmp eq i8 %23, 0
  br i1 %tobool.not.3.i, label %cleanup.2.i.cleanup.3.i_crit_edge, label %if.end.3.i

cleanup.2.i.cleanup.3.i_crit_edge:                ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.3.i

if.end.3.i:                                       ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %tty_drv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tty_drv.i, align 4
  tail call void @tty_unregister_device(ptr noundef %25, i32 noundef 3) #7
  %tty_port.3.i = getelementptr %struct.ipoctal, ptr %1, i32 0, i32 2, i32 3, i32 6
  tail call void @tty_port_free_xmit_buf(ptr noundef %tty_port.3.i) #7
  tail call void @tty_port_destroy(ptr noundef %tty_port.3.i) #7
  br label %cleanup.3.i

cleanup.3.i:                                      ; preds = %if.end.3.i, %cleanup.2.i.cleanup.3.i_crit_edge
  %tty_registered.4.i = getelementptr %struct.ipoctal, ptr %1, i32 0, i32 2, i32 4, i32 7
  %26 = ptrtoint ptr %tty_registered.4.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tty_registered.4.i, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.4.i = icmp eq i8 %27, 0
  br i1 %tobool.not.4.i, label %cleanup.3.i.cleanup.4.i_crit_edge, label %if.end.4.i

cleanup.3.i.cleanup.4.i_crit_edge:                ; preds = %cleanup.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.4.i

if.end.4.i:                                       ; preds = %cleanup.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %tty_drv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tty_drv.i, align 4
  tail call void @tty_unregister_device(ptr noundef %29, i32 noundef 4) #7
  %tty_port.4.i = getelementptr %struct.ipoctal, ptr %1, i32 0, i32 2, i32 4, i32 6
  tail call void @tty_port_free_xmit_buf(ptr noundef %tty_port.4.i) #7
  tail call void @tty_port_destroy(ptr noundef %tty_port.4.i) #7
  br label %cleanup.4.i

cleanup.4.i:                                      ; preds = %if.end.4.i, %cleanup.3.i.cleanup.4.i_crit_edge
  %tty_registered.5.i = getelementptr %struct.ipoctal, ptr %1, i32 0, i32 2, i32 5, i32 7
  %30 = ptrtoint ptr %tty_registered.5.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tty_registered.5.i, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.5.i = icmp eq i8 %31, 0
  br i1 %tobool.not.5.i, label %cleanup.4.i.cleanup.5.i_crit_edge, label %if.end.5.i

cleanup.4.i.cleanup.5.i_crit_edge:                ; preds = %cleanup.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.5.i

if.end.5.i:                                       ; preds = %cleanup.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %tty_drv.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tty_drv.i, align 4
  tail call void @tty_unregister_device(ptr noundef %33, i32 noundef 5) #7
  %tty_port.5.i = getelementptr %struct.ipoctal, ptr %1, i32 0, i32 2, i32 5, i32 6
  tail call void @tty_port_free_xmit_buf(ptr noundef %tty_port.5.i) #7
  tail call void @tty_port_destroy(ptr noundef %tty_port.5.i) #7
  br label %cleanup.5.i

cleanup.5.i:                                      ; preds = %if.end.5.i, %cleanup.4.i.cleanup.5.i_crit_edge
  %tty_registered.6.i = getelementptr %struct.ipoctal, ptr %1, i32 0, i32 2, i32 6, i32 7
  %34 = ptrtoint ptr %tty_registered.6.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tty_registered.6.i, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.6.i = icmp eq i8 %35, 0
  br i1 %tobool.not.6.i, label %cleanup.5.i.cleanup.6.i_crit_edge, label %if.end.6.i

cleanup.5.i.cleanup.6.i_crit_edge:                ; preds = %cleanup.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.6.i

if.end.6.i:                                       ; preds = %cleanup.5.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %tty_drv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tty_drv.i, align 4
  tail call void @tty_unregister_device(ptr noundef %37, i32 noundef 6) #7
  %tty_port.6.i = getelementptr %struct.ipoctal, ptr %1, i32 0, i32 2, i32 6, i32 6
  tail call void @tty_port_free_xmit_buf(ptr noundef %tty_port.6.i) #7
  tail call void @tty_port_destroy(ptr noundef %tty_port.6.i) #7
  br label %cleanup.6.i

cleanup.6.i:                                      ; preds = %if.end.6.i, %cleanup.5.i.cleanup.6.i_crit_edge
  %tty_registered.7.i = getelementptr %struct.ipoctal, ptr %1, i32 0, i32 2, i32 7, i32 7
  %38 = ptrtoint ptr %tty_registered.7.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %tty_registered.7.i, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.7.i = icmp eq i8 %39, 0
  br i1 %tobool.not.7.i, label %cleanup.6.i.__ipoctal_remove.exit_crit_edge, label %if.end.7.i

cleanup.6.i.__ipoctal_remove.exit_crit_edge:      ; preds = %cleanup.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__ipoctal_remove.exit

if.end.7.i:                                       ; preds = %cleanup.6.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %tty_drv.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tty_drv.i, align 4
  tail call void @tty_unregister_device(ptr noundef %41, i32 noundef 7) #7
  %tty_port.7.i = getelementptr %struct.ipoctal, ptr %1, i32 0, i32 2, i32 7, i32 6
  tail call void @tty_port_free_xmit_buf(ptr noundef %tty_port.7.i) #7
  tail call void @tty_port_destroy(ptr noundef %tty_port.7.i) #7
  br label %__ipoctal_remove.exit

__ipoctal_remove.exit:                            ; preds = %if.end.7.i, %cleanup.6.i.__ipoctal_remove.exit_crit_edge
  %42 = ptrtoint ptr %tty_drv.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tty_drv.i, align 4
  tail call void @tty_unregister_driver(ptr noundef %43) #7
  %44 = ptrtoint ptr %tty_drv.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tty_drv.i, align 4
  %name.i = getelementptr inbounds %struct.tty_driver, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name.i, align 4
  tail call void @kfree(ptr noundef %47) #7
  %48 = ptrtoint ptr %tty_drv.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tty_drv.i, align 4
  tail call void @tty_driver_kref_put(ptr noundef %49) #7
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_alloc_xmit_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_register_device_attr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_free_xmit_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoctal_irq_handler(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %int_space = getelementptr inbounds %struct.ipoctal, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %int_space to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %int_space, align 4
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #7, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  %3 = ptrtoint ptr %int_space to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %int_space, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 2
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr5) #7, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  br label %for.body

for.body:                                         ; preds = %ipoctal_irq_channel.exit.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %ipoctal_irq_channel.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ipoctal, ptr %arg, i32 0, i32 2, i32 %i.013
  %block_regs.i = getelementptr %struct.ipoctal, ptr %arg, i32 0, i32 2, i32 %i.013, i32 9
  %6 = ptrtoint ptr %block_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %block_regs.i, align 4
  %isr1.i = getelementptr inbounds %struct.anon.73, ptr %7, i32 0, i32 11
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %isr1.i) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  %regs.i = getelementptr %struct.ipoctal, ptr %arg, i32 0, i32 2, i32 %i.013, i32 8
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %sr2.i = getelementptr inbounds %struct.anon.71, ptr %10, i32 0, i32 3
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %sr2.i) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  %12 = and i8 %8, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %for.body.if.end.i_crit_edge, label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %cr.i = getelementptr inbounds %struct.anon.72, ptr %14, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr.i, i8 80) #7, !srcloc !60
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %conv5.i = zext i8 %11 to i32
  %and6.i = and i32 %conv5.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end20.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %nb_bytes.i = getelementptr %struct.ipoctal, ptr %arg, i32 0, i32 2, i32 %i.013, i32 1
  %15 = ptrtoint ptr %nb_bytes.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nb_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp eq i32 %16, 0
  br i1 %cmp.i, label %if.then9.i, label %land.lhs.true.i.if.end20.i_crit_edge

land.lhs.true.i.if.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %cr11.i = getelementptr inbounds %struct.anon.72, ptr %18, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr11.i, i8 8) #7, !srcloc !60
  %board_id.i = getelementptr %struct.ipoctal, ptr %arg, i32 0, i32 2, i32 %i.013, i32 10
  %19 = ptrtoint ptr %board_id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %board_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %20)
  %cmp12.i = icmp eq i32 %20, 72
  br i1 %cmp12.i, label %if.then14.i, label %if.then9.i.if.end20.i_crit_edge

if.then9.i.if.end20.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.then14.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %cr16.i = getelementptr inbounds %struct.anon.72, ptr %22, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr16.i, i8 -112) #7, !srcloc !60
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %cr18.i = getelementptr inbounds %struct.anon.72, ptr %24, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr18.i, i8 1) #7, !srcloc !60
  %rx_enable.i = getelementptr %struct.ipoctal, ptr %arg, i32 0, i32 2, i32 %i.013, i32 13
  %25 = ptrtoint ptr %rx_enable.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %rx_enable.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then14.i, %if.then9.i.if.end20.i_crit_edge, %land.lhs.true.i.if.end20.i_crit_edge, %if.end.i.if.end20.i_crit_edge
  %isr_rx_rdy_mask.i = getelementptr %struct.ipoctal, ptr %arg, i32 0, i32 2, i32 %i.013, i32 11
  %26 = ptrtoint ptr %isr_rx_rdy_mask.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %isr_rx_rdy_mask.i, align 4
  %and2358.i = and i8 %27, %8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and2358.i)
  %tobool24.not.i = icmp eq i8 %and2358.i, 0
  %and27.i = and i32 %conv5.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  %or.cond.i = select i1 %tobool24.not.i, i1 true, i1 %tobool28.not.i
  br i1 %or.cond.i, label %if.end20.i.if.end30.i_crit_edge, label %if.then29.i

if.end20.i.if.end30.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

if.then29.i:                                      ; preds = %if.end20.i
  %tty_port.i.i = getelementptr %struct.ipoctal, ptr %arg, i32 0, i32 2, i32 %i.013, i32 6
  %overrun_err.i.i = getelementptr inbounds %struct.ipoctal_stats, ptr %arrayidx, i32 0, i32 2
  %tail.i.i.i = getelementptr %struct.ipoctal, ptr %arg, i32 0, i32 2, i32 %i.013, i32 6, i32 0, i32 8
  %parity_err.i.i = getelementptr inbounds %struct.ipoctal_stats, ptr %arrayidx, i32 0, i32 3
  %framing_err.i.i = getelementptr inbounds %struct.ipoctal_stats, ptr %arrayidx, i32 0, i32 4
  %rcv_break.i.i = getelementptr inbounds %struct.ipoctal_stats, ptr %arrayidx, i32 0, i32 5
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %tty_insert_flip_char.exit74.i.i.do.body.i.i_crit_edge, %if.then29.i
  %sr.addr.0.i.i = phi i8 [ %11, %if.then29.i ], [ %76, %tty_insert_flip_char.exit74.i.i.do.body.i.i_crit_edge ]
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %rhr.i.i = getelementptr inbounds %struct.anon.71, ptr %29, i32 0, i32 7
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %rhr.i.i) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  %conv.i.i = zext i8 %sr.addr.0.i.i to i32
  %and.i.i = and i32 %conv.i.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end28.thread.i.i, label %if.then.i.i

if.end28.thread.i.i:                              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i.i.i, align 4
  %flags.i5677.i.i = getelementptr inbounds %struct.tty_buffer, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %flags.i5677.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i5677.i.i, align 4
  %and.i5778.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5778.i.i)
  %tobool.not.i5879.i.i = icmp eq i32 %and.i5778.i.i, 0
  br label %land.lhs.true.i62.i.i

if.then.i.i:                                      ; preds = %do.body.i.i
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  %cr.i.i = getelementptr inbounds %struct.anon.72, ptr %36, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr.i.i, i8 64) #7, !srcloc !60
  %and3.i.i = and i32 %conv.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then.i.i.if.end.i.i_crit_edge, label %if.then5.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  %37 = ptrtoint ptr %overrun_err.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %overrun_err.i.i, align 4
  %inc.i.i = add i32 %38, 1
  store i32 %inc.i.i, ptr %overrun_err.i.i, align 4
  %39 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tail.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %if.then5.i.i.if.end12.i.i.i_crit_edge

if.then5.i.i.if.end12.i.i.i_crit_edge:            ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then5.i.i
  %used.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %used.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %used.i.i.i, align 4
  %size.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %40, i32 0, i32 2
  %45 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp3.i.i.i = icmp slt i32 %44, %46
  br i1 %cmp3.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.end12.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end12.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %data.i.i.i.i.i = getelementptr inbounds %struct.tty_buffer, ptr %40, i32 0, i32 6
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %data.i.i.i.i.i, i32 %44
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %46
  %47 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 4, ptr %add.ptr.i.i.i.i, align 1
  %48 = ptrtoint ptr %used.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %used.i.i.i, align 4
  %inc.i.i.i = add i32 %49, 1
  store i32 %inc.i.i.i, ptr %used.i.i.i, align 4
  %add.ptr.i1.i.i.i = getelementptr i8, ptr %data.i.i.i.i.i, i32 %49
  %50 = ptrtoint ptr %add.ptr.i1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %add.ptr.i1.i.i.i, align 1
  br label %if.end.i.i

if.end12.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.if.end12.i.i.i_crit_edge, %if.then5.i.i.if.end12.i.i.i_crit_edge
  %call13.i.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %tty_port.i.i, i8 noundef zeroext 0, i8 noundef zeroext 4) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end12.i.i.i, %if.end.i.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %and8.i.i = and i32 %conv.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end.i.i.if.end13.i.i_crit_edge, label %if.then10.i.i

if.end.i.i.if.end13.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %parity_err.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %parity_err.i.i, align 4
  %inc12.i.i = add i32 %52, 1
  store i32 %inc12.i.i, ptr %parity_err.i.i, align 4
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then10.i.i, %if.end.i.i.if.end13.i.i_crit_edge
  %flag.0.i.i = phi i8 [ 3, %if.then10.i.i ], [ 0, %if.end.i.i.if.end13.i.i_crit_edge ]
  %and15.i.i = and i32 %conv.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end13.i.i.if.end20.i.i_crit_edge, label %if.then17.i.i

if.end13.i.i.if.end20.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i.i

if.then17.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %framing_err.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %framing_err.i.i, align 4
  %inc19.i.i = add i32 %54, 1
  store i32 %inc19.i.i, ptr %framing_err.i.i, align 4
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then17.i.i, %if.end13.i.i.if.end20.i.i_crit_edge
  %flag.1.i.i = phi i8 [ 2, %if.then17.i.i ], [ %flag.0.i.i, %if.end13.i.i.if.end20.i.i_crit_edge ]
  %and22.i.i = and i32 %conv.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i)
  %tobool23.not.i.i = icmp eq i32 %and22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.end20.i.i.if.end28.i.i_crit_edge, label %if.then24.i.i

if.end20.i.i.if.end28.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i.i

if.then24.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %rcv_break.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rcv_break.i.i, align 4
  %inc26.i.i = add i32 %56, 1
  store i32 %inc26.i.i, ptr %rcv_break.i.i, align 4
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then24.i.i, %if.end20.i.i.if.end28.i.i_crit_edge
  %flag.2.i.i = phi i8 [ 1, %if.then24.i.i ], [ %flag.1.i.i, %if.end20.i.i.if.end28.i.i_crit_edge ]
  %57 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tail.i.i.i, align 4
  %flags.i56.i.i = getelementptr inbounds %struct.tty_buffer, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %flags.i56.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags.i56.i.i, align 4
  %and.i57.i.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57.i.i)
  %tobool.not.i58.i.i = icmp eq i32 %and.i57.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flag.2.i.i)
  %cmp.i.i.i = icmp eq i8 %flag.2.i.i, 0
  %61 = or i1 %cmp.i.i.i, %tobool.not.i58.i.i
  br i1 %61, label %if.end28.i.i.land.lhs.true.i62.i.i_crit_edge, label %if.end28.i.i.if.end12.i73.i.i_crit_edge

if.end28.i.i.if.end12.i73.i.i_crit_edge:          ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i73.i.i

if.end28.i.i.land.lhs.true.i62.i.i_crit_edge:     ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i62.i.i

land.lhs.true.i62.i.i:                            ; preds = %if.end28.i.i.land.lhs.true.i62.i.i_crit_edge, %if.end28.thread.i.i
  %tobool.not.i5883.i.i = phi i1 [ %tobool.not.i5879.i.i, %if.end28.thread.i.i ], [ %tobool.not.i58.i.i, %if.end28.i.i.land.lhs.true.i62.i.i_crit_edge ]
  %62 = phi ptr [ %32, %if.end28.thread.i.i ], [ %58, %if.end28.i.i.land.lhs.true.i62.i.i_crit_edge ]
  %flag.282.i.i = phi i8 [ 0, %if.end28.thread.i.i ], [ %flag.2.i.i, %if.end28.i.i.land.lhs.true.i62.i.i_crit_edge ]
  %used.i59.i.i = getelementptr inbounds %struct.tty_buffer, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %used.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %used.i59.i.i, align 4
  %size.i60.i.i = getelementptr inbounds %struct.tty_buffer, ptr %62, i32 0, i32 2
  %65 = ptrtoint ptr %size.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %size.i60.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp3.i61.i.i = icmp slt i32 %64, %66
  br i1 %cmp3.i61.i.i, label %if.then.i63.i.i, label %land.lhs.true.i62.i.i.if.end12.i73.i.i_crit_edge

land.lhs.true.i62.i.i.if.end12.i73.i.i_crit_edge: ; preds = %land.lhs.true.i62.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i73.i.i

if.then.i63.i.i:                                  ; preds = %land.lhs.true.i62.i.i
  br i1 %tobool.not.i5883.i.i, label %if.then8.i67.i.i, label %if.then.i63.i.i.if.end.i71.i.i_crit_edge

if.then.i63.i.i.if.end.i71.i.i_crit_edge:         ; preds = %if.then.i63.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i71.i.i

if.then8.i67.i.i:                                 ; preds = %if.then.i63.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %data.i.i.i64.i.i = getelementptr inbounds %struct.tty_buffer, ptr %62, i32 0, i32 6
  %add.ptr.i.i.i65.i.i = getelementptr i8, ptr %data.i.i.i64.i.i, i32 %64
  %add.ptr.i.i66.i.i = getelementptr i8, ptr %add.ptr.i.i.i65.i.i, i32 %66
  %67 = ptrtoint ptr %add.ptr.i.i66.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %flag.282.i.i, ptr %add.ptr.i.i66.i.i, align 1
  br label %if.end.i71.i.i

if.end.i71.i.i:                                   ; preds = %if.then8.i67.i.i, %if.then.i63.i.i.if.end.i71.i.i_crit_edge
  %68 = ptrtoint ptr %used.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %used.i59.i.i, align 4
  %inc.i68.i.i = add i32 %69, 1
  store i32 %inc.i68.i.i, ptr %used.i59.i.i, align 4
  %data.i.i69.i.i = getelementptr inbounds %struct.tty_buffer, ptr %62, i32 0, i32 6
  %add.ptr.i1.i70.i.i = getelementptr i8, ptr %data.i.i69.i.i, i32 %69
  %70 = ptrtoint ptr %add.ptr.i1.i70.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %30, ptr %add.ptr.i1.i70.i.i, align 1
  br label %tty_insert_flip_char.exit74.i.i

if.end12.i73.i.i:                                 ; preds = %land.lhs.true.i62.i.i.if.end12.i73.i.i_crit_edge, %if.end28.i.i.if.end12.i73.i.i_crit_edge
  %flag.281.i.i = phi i8 [ %flag.282.i.i, %land.lhs.true.i62.i.i.if.end12.i73.i.i_crit_edge ], [ %flag.2.i.i, %if.end28.i.i.if.end12.i73.i.i_crit_edge ]
  %call13.i72.i.i = tail call i32 @__tty_insert_flip_char(ptr noundef %tty_port.i.i, i8 noundef zeroext %30, i8 noundef zeroext %flag.281.i.i) #7
  br label %tty_insert_flip_char.exit74.i.i

tty_insert_flip_char.exit74.i.i:                  ; preds = %if.end12.i73.i.i, %if.end.i71.i.i
  %71 = ptrtoint ptr %block_regs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %block_regs.i, align 4
  %isr30.i.i = getelementptr inbounds %struct.anon.73, ptr %72, i32 0, i32 11
  %73 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %isr30.i.i) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  %74 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i, align 4
  %sr33.i.i = getelementptr inbounds %struct.anon.71, ptr %75, i32 0, i32 3
  %76 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %sr33.i.i) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  %77 = ptrtoint ptr %isr_rx_rdy_mask.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %isr_rx_rdy_mask.i, align 4
  %and3754.i.i = and i8 %78, %73
  %tobool38.not.i.i = icmp eq i8 %and3754.i.i, 0
  br i1 %tobool38.not.i.i, label %ipoctal_irq_rx.exit.i, label %tty_insert_flip_char.exit74.i.i.do.body.i.i_crit_edge

tty_insert_flip_char.exit74.i.i.do.body.i.i_crit_edge: ; preds = %tty_insert_flip_char.exit74.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

ipoctal_irq_rx.exit.i:                            ; preds = %tty_insert_flip_char.exit74.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @tty_flip_buffer_push(ptr noundef %tty_port.i.i) #7
  br label %if.end30.i

if.end30.i:                                       ; preds = %ipoctal_irq_rx.exit.i, %if.end20.i.if.end30.i_crit_edge
  %isr_tx_rdy_mask.i = getelementptr %struct.ipoctal, ptr %arg, i32 0, i32 2, i32 %i.013, i32 12
  %79 = ptrtoint ptr %isr_tx_rdy_mask.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %isr_tx_rdy_mask.i, align 1
  %and3359.i = and i8 %80, %8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3359.i)
  %tobool34.not.i = icmp eq i8 %and3359.i, 0
  %and37.i = and i32 %conv5.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  %or.cond60.i = select i1 %tobool34.not.i, i1 true, i1 %tobool38.not.i
  br i1 %or.cond60.i, label %if.end30.i.ipoctal_irq_channel.exit_crit_edge, label %if.then39.i

if.end30.i.ipoctal_irq_channel.exit_crit_edge:    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipoctal_irq_channel.exit

if.then39.i:                                      ; preds = %if.end30.i
  %nb_bytes.i.i = getelementptr %struct.ipoctal, ptr %arg, i32 0, i32 2, i32 %i.013, i32 1
  %81 = ptrtoint ptr %nb_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nb_bytes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp.i.i = icmp eq i32 %82, 0
  br i1 %cmp.i.i, label %if.then39.i.ipoctal_irq_channel.exit_crit_edge, label %if.end.i63.i

if.then39.i.ipoctal_irq_channel.exit_crit_edge:   ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipoctal_irq_channel.exit

if.end.i63.i:                                     ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #9
  %pointer_write1.i.i = getelementptr %struct.ipoctal, ptr %arg, i32 0, i32 2, i32 %i.013, i32 5
  %lock.i.i = getelementptr %struct.ipoctal, ptr %arg, i32 0, i32 2, i32 %i.013, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #7
  %xmit_buf.i.i = getelementptr %struct.ipoctal, ptr %arg, i32 0, i32 2, i32 %i.013, i32 6, i32 15
  %83 = ptrtoint ptr %xmit_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %xmit_buf.i.i, align 4
  %85 = ptrtoint ptr %pointer_write1.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pointer_write1.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %84, i32 %86
  %87 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.i.i, align 1
  %89 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i, align 4
  %thr.i.i = getelementptr inbounds %struct.anon.72, ptr %90, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %thr.i.i, i8 %88) #7, !srcloc !60
  %91 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx, align 4
  %inc.i62.i = add i32 %92, 1
  store i32 %inc.i62.i, ptr %arrayidx, align 4
  %93 = ptrtoint ptr %pointer_write1.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pointer_write1.i.i, align 4
  %inc2.i.i = add i32 %94, 1
  %rem.i.i = and i32 %inc2.i.i, 4095
  store i32 %rem.i.i, ptr %pointer_write1.i.i, align 4
  %95 = ptrtoint ptr %nb_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %nb_bytes.i.i, align 4
  %dec.i.i = add i32 %96, -1
  store i32 %dec.i.i, ptr %nb_bytes.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #7
  br label %ipoctal_irq_channel.exit

ipoctal_irq_channel.exit:                         ; preds = %if.end.i63.i, %if.then39.i.ipoctal_irq_channel.exit_crit_edge, %if.end30.i.ipoctal_irq_channel.exit_crit_edge
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %ipoctal_irq_channel.exit.for.body_crit_edge

ipoctal_irq_channel.exit.for.body_crit_edge:      ; preds = %ipoctal_irq_channel.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %ipoctal_irq_channel.exit
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoctal_install(ptr noundef %driver, ptr noundef %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %.neg.i = mul i32 %5, -732
  %idx.neg.i = add i32 %.neg.i, -8
  %add.ptr.i = getelementptr i8, ptr %3, i32 %idx.neg.i
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %bus.i = getelementptr inbounds %struct.ipack_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call.i = tail call zeroext i1 @try_module_get(ptr noundef %11) #7
  br i1 %call.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @tty_standard_install(ptr noundef %driver, ptr noundef %tty) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %err_put_carrier

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %12 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %driver_data, align 4
  br label %cleanup

err_put_carrier:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 4
  %bus.i17 = getelementptr inbounds %struct.ipack_device, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %bus.i17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i17, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  tail call void @module_put(ptr noundef %18) #7
  br label %cleanup

cleanup:                                          ; preds = %err_put_carrier, %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %err_put_carrier ], [ 0, %if.end7 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoctal_open(ptr noundef %tty, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tty_port = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 6
  %call = tail call i32 @tty_port_open(ptr noundef %tty_port, ptr noundef %tty, ptr noundef %file) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipoctal_close(ptr noundef %tty, ptr noundef %filp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %tty_port = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 6
  tail call void @tty_port_close(ptr noundef %tty_port, ptr noundef %tty, ptr noundef %filp) #7
  %pointer_read.i = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pointer_read.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %pointer_read.i, align 4
  %pointer_write.i = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %pointer_write.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %pointer_write.i, align 4
  %4 = call ptr @memset(ptr %1, i32 0, i32 28)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipoctal_shutdown(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regs.i = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %cr.i = getelementptr inbounds %struct.anon.72, ptr %3, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr.i, i8 10) #7, !srcloc !60
  %rx_enable.i = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %rx_enable.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rx_enable.i, align 4
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %cr2.i = getelementptr inbounds %struct.anon.72, ptr %6, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr2.i, i8 32) #7, !srcloc !60
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %cr4.i = getelementptr inbounds %struct.anon.72, ptr %8, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr4.i, i8 48) #7, !srcloc !60
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %cr6.i = getelementptr inbounds %struct.anon.72, ptr %10, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr6.i, i8 64) #7, !srcloc !60
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %cr8.i = getelementptr inbounds %struct.anon.72, ptr %12, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr8.i, i8 16) #7, !srcloc !60
  %iflags.i = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 6, i32 11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %iflags.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipoctal_cleanup(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %.neg.i = mul i32 %3, -732
  %idx.neg.i = add i32 %.neg.i, -8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %idx.neg.i
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %bus.i = getelementptr inbounds %struct.ipack_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void @module_put(ptr noundef %9) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoctal_write_tty(ptr nocapture noundef readonly %tty, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %pointer_read1.i = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 4
  %nb_bytes.i = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp23.i = icmp sgt i32 %count, 0
  br i1 %cmp23.i, label %for.body.lr.ph.i, label %entry.ipoctal_copy_write_buffer.exit_crit_edge

entry.ipoctal_copy_write_buffer.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipoctal_copy_write_buffer.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %lock.i = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 3
  %xmit_buf.i = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 6, i32 15
  br label %for.body.i

for.body.i:                                       ; preds = %do.body3.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc11.i, %do.body3.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %nb_bytes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nb_bytes.i, align 4
  %sub.i = sub i32 4096, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %i.024.i, i32 %sub.i)
  %cmp2.not.i = icmp ugt i32 %i.024.i, %sub.i
  br i1 %cmp2.not.i, label %for.body.i.ipoctal_copy_write_buffer.exit_crit_edge, label %do.body3.i

for.body.i.ipoctal_copy_write_buffer.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipoctal_copy_write_buffer.exit

do.body3.i:                                       ; preds = %for.body.i
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %i.024.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %6 = ptrtoint ptr %xmit_buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xmit_buf.i, align 4
  %8 = ptrtoint ptr %pointer_read1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pointer_read1.i, align 4
  %arrayidx8.i = getelementptr i8, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %5, ptr %arrayidx8.i, align 1
  %11 = load i32, ptr %pointer_read1.i, align 4
  %add.i = add i32 %11, 1
  %rem.i = and i32 %add.i, 4095
  store i32 %rem.i, ptr %pointer_read1.i, align 4
  %12 = ptrtoint ptr %nb_bytes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nb_bytes.i, align 4
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %nb_bytes.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #7
  %inc11.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc11.i, %count
  br i1 %exitcond.not.i, label %do.body3.i.ipoctal_copy_write_buffer.exit_crit_edge, label %do.body3.i.for.body.i_crit_edge

do.body3.i.for.body.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.body3.i.ipoctal_copy_write_buffer.exit_crit_edge: ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ipoctal_copy_write_buffer.exit

ipoctal_copy_write_buffer.exit:                   ; preds = %do.body3.i.ipoctal_copy_write_buffer.exit_crit_edge, %for.body.i.ipoctal_copy_write_buffer.exit_crit_edge, %entry.ipoctal_copy_write_buffer.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %entry.ipoctal_copy_write_buffer.exit_crit_edge ], [ %count, %do.body3.i.ipoctal_copy_write_buffer.exit_crit_edge ], [ %i.024.i, %for.body.i.ipoctal_copy_write_buffer.exit_crit_edge ]
  %board_id = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %board_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %board_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %15)
  %cmp = icmp eq i32 %15, 72
  br i1 %cmp, label %if.then, label %ipoctal_copy_write_buffer.exit.if.end_crit_edge

ipoctal_copy_write_buffer.exit.if.end_crit_edge:  ; preds = %ipoctal_copy_write_buffer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %ipoctal_copy_write_buffer.exit
  call void @__sanitizer_cov_trace_pc() #9
  %regs = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %cr = getelementptr inbounds %struct.anon.72, ptr %17, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr, i8 2) #7, !srcloc !60
  %rx_enable = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %rx_enable to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %rx_enable, align 4
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %cr2 = getelementptr inbounds %struct.anon.72, ptr %20, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr2, i8 -128) #7, !srcloc !60
  br label %if.end

if.end:                                           ; preds = %if.then, %ipoctal_copy_write_buffer.exit.if.end_crit_edge
  %regs3 = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %regs3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs3, align 4
  %cr4 = getelementptr inbounds %struct.anon.72, ptr %22, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr4, i8 4) #7, !srcloc !60
  ret i32 %i.0.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipoctal_write_room(ptr nocapture noundef readonly %tty) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %nb_bytes = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nb_bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nb_bytes, align 4
  %sub = sub i32 4096, %3
  ret i32 %sub
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipoctal_chars_in_buffer(ptr nocapture noundef readonly %tty) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %nb_bytes = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nb_bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nb_bytes, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipoctal_set_termios(ptr noundef %tty, ptr nocapture noundef readnone %old_termios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %termios = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13
  %c_cflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 2
  %2 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c_cflag, align 4
  %regs.i = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %cr.i = getelementptr inbounds %struct.anon.72, ptr %5, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr.i, i8 10) #7, !srcloc !60
  %rx_enable.i = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %rx_enable.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rx_enable.i, align 4
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %cr2.i = getelementptr inbounds %struct.anon.72, ptr %8, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr2.i, i8 32) #7, !srcloc !60
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %cr4.i = getelementptr inbounds %struct.anon.72, ptr %10, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr4.i, i8 48) #7, !srcloc !60
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %cr6.i = getelementptr inbounds %struct.anon.72, ptr %12, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr6.i, i8 64) #7, !srcloc !60
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %cr8.i = getelementptr inbounds %struct.anon.72, ptr %14, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr8.i, i8 16) #7, !srcloc !60
  %and = and i32 %3, 48
  %15 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %sw.default [
    i32 16, label %entry.sw.epilog_crit_edge
    i32 32, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or11 = or i32 %3, 48
  %16 = ptrtoint ptr %c_cflag to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or11, ptr %c_cflag, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %entry.sw.epilog_crit_edge
  %mr1.0 = phi i8 [ 3, %sw.default ], [ 2, %sw.bb2 ], [ 1, %entry.sw.epilog_crit_edge ]
  %and14 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool.not = icmp eq i32 %and14, 0
  br i1 %tobool.not, label %if.else24, label %if.then

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %and15 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %17 = or i8 %mr1.0, 4
  %spec.select = select i1 %tobool16.not, i8 %17, i8 %mr1.0
  br label %if.end28

if.else24:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %18 = or i8 %mr1.0, 16
  br label %if.end28

if.end28:                                         ; preds = %if.else24, %if.then
  %mr1.1 = phi i8 [ %18, %if.else24 ], [ %spec.select, %if.then ]
  %19 = ptrtoint ptr %c_cflag to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %c_cflag, align 4
  %and31 = and i32 %20, -1073741825
  store i32 %and31, ptr %c_cflag, align 4
  %and32 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %. = select i1 %tobool33.not, i8 7, i8 15
  %board_id = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %board_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %board_id, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %22, label %if.end28.cleanup_crit_edge [
    i32 34, label %sw.bb43
    i32 42, label %if.end28.sw.epilog76_crit_edge
    i32 72, label %sw.bb68
  ]

if.end28.sw.epilog76_crit_edge:                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog76

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb43:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool45.not = icmp sgt i32 %3, -1
  br i1 %tobool45.not, label %sw.bb43.sw.epilog76_crit_edge, label %if.then46

sw.bb43.sw.epilog76_crit_edge:                    ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog76

if.then46:                                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #9
  %24 = or i8 %mr1.1, -128
  %25 = or i8 %., 16
  br label %sw.epilog76

sw.bb68:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %26 = or i8 %., 32
  br label %sw.epilog76

sw.epilog76:                                      ; preds = %sw.bb68, %if.then46, %sw.bb43.sw.epilog76_crit_edge, %if.end28.sw.epilog76_crit_edge
  %mr1.2 = phi i8 [ %mr1.1, %sw.bb68 ], [ %24, %if.then46 ], [ %mr1.1, %sw.bb43.sw.epilog76_crit_edge ], [ %mr1.1, %if.end28.sw.epilog76_crit_edge ]
  %mr2.1 = phi i8 [ %26, %sw.bb68 ], [ %25, %if.then46 ], [ %., %sw.bb43.sw.epilog76_crit_edge ], [ %., %if.end28.sw.epilog76_crit_edge ]
  %call.i = tail call i32 @tty_termios_baud_rate(ptr noundef %termios) #7
  tail call void @tty_termios_encode_baud_rate(ptr noundef %termios, i32 noundef %call.i, i32 noundef %call.i) #7
  %27 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %call.i, label %sw.default127 [
    i32 75, label %sw.epilog76.sw.epilog132_crit_edge
    i32 110, label %sw.bb82
    i32 150, label %sw.bb86
    i32 300, label %sw.bb90
    i32 600, label %sw.bb94
    i32 1200, label %sw.bb98
    i32 1800, label %sw.bb102
    i32 2000, label %sw.bb106
    i32 2400, label %sw.bb110
    i32 4800, label %sw.bb114
    i32 9600, label %sw.bb118
    i32 19200, label %sw.bb122
  ]

sw.epilog76.sw.epilog132_crit_edge:               ; preds = %sw.epilog76
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog132

sw.bb82:                                          ; preds = %sw.epilog76
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog132

sw.bb86:                                          ; preds = %sw.epilog76
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog132

sw.bb90:                                          ; preds = %sw.epilog76
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog132

sw.bb94:                                          ; preds = %sw.epilog76
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog132

sw.bb98:                                          ; preds = %sw.epilog76
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog132

sw.bb102:                                         ; preds = %sw.epilog76
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog132

sw.bb106:                                         ; preds = %sw.epilog76
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog132

sw.bb110:                                         ; preds = %sw.epilog76
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog132

sw.bb114:                                         ; preds = %sw.epilog76
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog132

sw.bb118:                                         ; preds = %sw.epilog76
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog132

sw.bb122:                                         ; preds = %sw.epilog76
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog132

sw.default127:                                    ; preds = %sw.epilog76
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @tty_termios_encode_baud_rate(ptr noundef %termios, i32 noundef 38400, i32 noundef 38400) #7
  br label %sw.epilog132

sw.epilog132:                                     ; preds = %sw.default127, %sw.bb122, %sw.bb118, %sw.bb114, %sw.bb110, %sw.bb106, %sw.bb102, %sw.bb98, %sw.bb94, %sw.bb90, %sw.bb86, %sw.bb82, %sw.epilog76.sw.epilog132_crit_edge
  %csr.0 = phi i8 [ 34, %sw.default127 ], [ -52, %sw.bb122 ], [ -69, %sw.bb118 ], [ -103, %sw.bb114 ], [ -120, %sw.bb110 ], [ 119, %sw.bb106 ], [ -86, %sw.bb102 ], [ 102, %sw.bb98 ], [ 85, %sw.bb94 ], [ 68, %sw.bb90 ], [ 51, %sw.bb86 ], [ 17, %sw.bb82 ], [ 0, %sw.epilog76.sw.epilog132_crit_edge ]
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %mr = getelementptr inbounds %struct.anon.72, ptr %29, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %mr, i8 %mr1.2) #7, !srcloc !60
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %mr140 = getelementptr inbounds %struct.anon.72, ptr %31, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %mr140, i8 %mr2.1) #7, !srcloc !60
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %csr142 = getelementptr inbounds %struct.anon.72, ptr %33, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %csr142, i8 %csr.0) #7, !srcloc !60
  %34 = ptrtoint ptr %rx_enable.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool143.not = icmp eq i32 %35, 0
  br i1 %tobool143.not, label %sw.epilog132.cleanup_crit_edge, label %if.then144

sw.epilog132.cleanup_crit_edge:                   ; preds = %sw.epilog132
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then144:                                       ; preds = %sw.epilog132
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 4
  %cr = getelementptr inbounds %struct.anon.72, ptr %37, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr, i8 1) #7, !srcloc !60
  br label %cleanup

cleanup:                                          ; preds = %if.then144, %sw.epilog132.cleanup_crit_edge, %if.end28.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipoctal_hangup(ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %nb_bytes = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nb_bytes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %nb_bytes, align 4
  %pointer_read = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %pointer_read to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %pointer_read, align 4
  %pointer_write = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %pointer_write to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %pointer_write, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  %tty_port = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 6
  tail call void @tty_port_hangup(ptr noundef %tty_port) #7
  %regs.i = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %cr.i = getelementptr inbounds %struct.anon.72, ptr %6, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr.i, i8 10) #7, !srcloc !60
  %rx_enable.i = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %rx_enable.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rx_enable.i, align 4
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %cr2.i = getelementptr inbounds %struct.anon.72, ptr %9, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr2.i, i8 32) #7, !srcloc !60
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %cr4.i = getelementptr inbounds %struct.anon.72, ptr %11, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr4.i, i8 48) #7, !srcloc !60
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %cr6.i = getelementptr inbounds %struct.anon.72, ptr %13, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr6.i, i8 64) #7, !srcloc !60
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %cr8.i = getelementptr inbounds %struct.anon.72, ptr %15, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr8.i, i8 16) #7, !srcloc !60
  %iflags.i = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 6, i32 11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %iflags.i) #7
  %open_wait = getelementptr inbounds %struct.ipoctal_channel, ptr %1, i32 0, i32 6, i32 8
  tail call void @__wake_up(ptr noundef %open_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipoctal_get_icount(ptr nocapture noundef readonly %tty, ptr nocapture noundef writeonly %icount) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 30
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %rx = getelementptr inbounds %struct.ipoctal_stats, ptr %1, i32 0, i32 1
  %2 = call ptr @memset(ptr %icount, i32 0, i32 16)
  %3 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx, align 4
  %rx1 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 4
  %5 = ptrtoint ptr %rx1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rx1, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %tx3 = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 5
  %8 = ptrtoint ptr %tx3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tx3, align 4
  %framing_err = getelementptr inbounds %struct.ipoctal_stats, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %framing_err to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %framing_err, align 4
  %frame = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 6
  %11 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %frame, align 4
  %parity_err = getelementptr inbounds %struct.ipoctal_stats, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %parity_err to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %parity_err, align 4
  %parity = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 8
  %14 = ptrtoint ptr %parity to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %parity, align 4
  %rcv_break = getelementptr inbounds %struct.ipoctal_stats, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %rcv_break to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rcv_break, align 4
  %brk = getelementptr inbounds %struct.serial_icounter_struct, ptr %icount, i32 0, i32 9
  %17 = ptrtoint ptr %brk to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %brk, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_standard_install(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_close(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_hangup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoctal_port_activate(ptr nocapture noundef readnone %port, ptr nocapture noundef readonly %tty) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %regs = getelementptr inbounds %struct.ipoctal_channel, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %cr = getelementptr inbounds %struct.anon.72, ptr %5, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %cr, i8 1) #7, !srcloc !60
  %rx_enable = getelementptr inbounds %struct.ipoctal_channel, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %rx_enable to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %rx_enable, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipack_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35, !37, !38, !39, !41, !42, !44, !45, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__UNIQUE_ID_description227, !1, !"__UNIQUE_ID_description227", i1 false, i1 false}
!1 = !{!"../drivers/ipack/devices/ipoctal.c", i32 771, i32 1}
!2 = !{ptr @__UNIQUE_ID_file228, !3, !"__UNIQUE_ID_file228", i1 false, i1 false}
!3 = !{!"../drivers/ipack/devices/ipoctal.c", i32 772, i32 1}
!4 = !{ptr @__UNIQUE_ID_license229, !3, !"__UNIQUE_ID_license229", i1 false, i1 false}
!5 = !{ptr @__initcall__kmod_ipoctal__230_774_ipoctal_init6, !6, !"__initcall__kmod_ipoctal__230_774_ipoctal_init6", i1 false, i1 false}
!6 = !{!"../drivers/ipack/devices/ipoctal.c", i32 774, i32 1}
!7 = !{ptr @__exitcall_ipoctal_exit, !8, !"__exitcall_ipoctal_exit", i1 false, i1 false}
!8 = !{!"../drivers/ipack/devices/ipoctal.c", i32 775, i32 1}
!9 = !{ptr @driver, !10, !"driver", i1 false, i1 false}
!10 = !{!"../drivers/ipack/devices/ipoctal.c", i32 756, i32 28}
!11 = !{ptr @ipoctal_ids, !12, !"ipoctal_ids", i1 false, i1 false}
!12 = !{!"../drivers/ipack/devices/ipoctal.c", i32 739, i32 8}
!13 = !{ptr @ipoctal_drv_ops, !14, !"ipoctal_drv_ops", i1 false, i1 false}
!14 = !{!"../drivers/ipack/devices/ipoctal.c", i32 751, i32 38}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/ipack/devices/ipoctal.c", i32 292, i32 3}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ipoctal_inst_slot._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @ipoctal_inst_slot._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/ipack/devices/ipoctal.c", i32 308, i32 3}
!25 = !{ptr @ipoctal_inst_slot._entry.5, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ipoctal_inst_slot._entry_ptr.7, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/ipack/devices/ipoctal.c", i32 319, i32 3}
!29 = !{ptr @ipoctal_inst_slot._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ipoctal_inst_slot._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/ipack/devices/ipoctal.c", i32 369, i32 21}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/ipack/devices/ipoctal.c", i32 370, i32 36}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/ipack/devices/ipoctal.c", i32 388, i32 3}
!37 = !{ptr @ipoctal_inst_slot._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ipoctal_inst_slot._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @ipoctal_inst_slot.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/ipack/devices/ipoctal.c", i32 407, i32 3}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/ipack/devices/ipoctal.c", i32 413, i32 4}
!44 = !{ptr @ipoctal_inst_slot._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ipoctal_inst_slot._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @ipoctal_fops, !47, !"ipoctal_fops", i1 false, i1 false}
!47 = !{!"../drivers/ipack/devices/ipoctal.c", i32 674, i32 36}
!48 = !{ptr @ipoctal_tty_port_ops, !49, !"ipoctal_tty_port_ops", i1 false, i1 false}
!49 = !{!"../drivers/ipack/devices/ipoctal.c", i32 269, i32 41}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 2152417472}
!60 = !{i64 4876127}
!61 = !{i8 0, i8 2}
!62 = !{i64 4875904}
!63 = !{i64 2153980467}
!64 = !{i64 2153980975}
!65 = !{i64 4876522}
!66 = !{i64 2152415867}
