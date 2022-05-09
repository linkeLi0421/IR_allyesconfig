; ModuleID = '/llk/IR_all_yes/drivers/platform/olpc/olpc-xo175-ec.c_pt.bc'
source_filename = "../drivers/platform/olpc/olpc-xo175-ec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.olpc_ec_driver = type { ptr, ptr, ptr, i8 }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ec_cmd_t = type { i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.anon.74 = type <{ i8, i32 }>
%struct.olpc_xo175_ec = type { i8, ptr, %struct.spi_transfer, %struct.spi_message, %union.anon.71, %union.anon.71, ptr, %struct.spinlock, i32, i8, %struct.completion, %struct.olpc_xo175_ec_cmd, [16 x i8], i32, i32, ptr, [128 x i8], i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%union.anon.71 = type { %struct.olpc_xo175_ec_cmd }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.olpc_xo175_ec_cmd = type { i8, i8, i8, [5 x i8] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }

@__initcall__kmod_olpc_xo175_ec__236_754_olpc_xo175_ec_spi_driver_init6 = internal global ptr @olpc_xo175_ec_spi_driver_init, section ".initcall6.init", align 4
@olpc_xo175_ec_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @olpc_xo175_ec_probe, ptr @olpc_xo175_ec_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @olpc_xo175_ec_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @olpc_xo175_ec_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_olpc_xo175_ec_spi_driver_exit = internal global ptr @olpc_xo175_ec_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description237 = internal constant [66 x i8] c"olpc_xo175_ec.description=OLPC XO-1.75 Embedded Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [64 x i8] c"olpc_xo175_ec.author=Lennert Buytenhek <buytenh@wantstofly.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [53 x i8] c"olpc_xo175_ec.author=Lubomir Rintel <lkundrak@v3.sk>\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [55 x i8] c"olpc_xo175_ec.file=drivers/platform/olpc/olpc-xo175-ec\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [26 x i8] c"olpc_xo175_ec.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"olpc-xo175-ec\00", [18 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"olpc,xo1.75-ec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @olpc_xo175_ec_resume_noirq, ptr null, ptr @olpc_xo175_ec_resume_noirq, ptr null, ptr @olpc_xo175_ec_resume_noirq, ptr @olpc_xo175_ec_suspend, ptr @olpc_xo175_ec_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@olpc_ec = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@olpc_xo175_ec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 670, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"OLPC EC already registered.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"olpc_xo175_ec_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/platform/olpc/olpc-xo175-ec.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_probe._entry_ptr = internal global ptr @olpc_xo175_ec_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cmd\00", [28 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 681, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get cmd gpio: %ld\0A\00", [35 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_probe._entry_ptr.9 = internal global ptr @olpc_xo175_ec_probe._entry.7, section ".printk_index", align 4
@olpc_xo175_ec_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&priv->cmd_state_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Power Button\00", [19 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 702, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error registering input device: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_probe._entry_ptr.14 = internal global ptr @olpc_xo175_ec_probe._entry.12, section ".printk_index", align 4
@olpc_xo175_ec_driver = internal global { %struct.olpc_ec_driver, [16 x i8] } { %struct.olpc_ec_driver { ptr null, ptr null, ptr @olpc_xo175_ec_cmd, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"olpc-ec\00", [24 x i8] zeroinitializer }, align 32
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@olpc_xo175_ec_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 723, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"OLPC XO-1.75 Embedded Controller driver\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_probe._entry_ptr.19 = internal global ptr @olpc_xo175_ec_probe._entry.16, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_send_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 290, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"spi_async() failed %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"olpc_xo175_ec_send_command\00", [37 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_send_command._entry_ptr = internal global ptr @olpc_xo175_ec_send_command._entry, section ".printk_index", align 4
@olpc_xo175_ec_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 312, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SPI transfer failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"olpc_xo175_ec_complete\00", [41 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_complete._entry_ptr = internal global ptr @olpc_xo175_ec_complete._entry, section ".printk_index", align 4
@olpc_xo175_ec_complete._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 337, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"spurious FIFO read packet\0A\00", [37 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_complete._entry_ptr.27 = internal global ptr @olpc_xo175_ec_complete._entry.25, section ".printk_index", align 4
@olpc_xo175_ec_complete._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.3, i32 355, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"spurious SWITCH packet\0A\00", [40 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_complete._entry_ptr.30 = internal global ptr @olpc_xo175_ec_complete._entry.28, section ".printk_index", align 4
@olpc_xo175_ec_complete._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.3, i32 373, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"spurious response packet\0A\00", [38 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_complete._entry_ptr.33 = internal global ptr @olpc_xo175_ec_complete._entry.31, section ".printk_index", align 4
@olpc_xo175_ec_complete._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.24, ptr @.str.3, i32 375, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"too many response packets\0A\00", [37 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_complete._entry_ptr.36 = internal global ptr @olpc_xo175_ec_complete._entry.34, section ".printk_index", align 4
@olpc_xo175_ec_complete._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.24, ptr @.str.3, i32 391, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"spurious cmd error packet\0A\00", [37 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_complete._entry_ptr.39 = internal global ptr @olpc_xo175_ec_complete._entry.37, section ".printk_index", align 4
@olpc_xo175_ec_complete._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.24, ptr @.str.3, i32 402, ptr @.str.42, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"keyboard is not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_complete._entry_ptr.43 = internal global ptr @olpc_xo175_ec_complete._entry.40, section ".printk_index", align 4
@olpc_xo175_ec_complete._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.24, ptr @.str.3, i32 406, ptr @.str.42, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"touchpad is not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_complete._entry_ptr.46 = internal global ptr @olpc_xo175_ec_complete._entry.44, section ".printk_index", align 4
@olpc_xo175_ec_complete.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.24, ptr @.str.3, ptr @.str.48, i8 0, i8 102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"olpc_xo175_ec\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"got event %.2x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"olpc_ac\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"olpc_battery\00", [19 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_complete.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.24, ptr @.str.3, ptr @.str.51, i8 0, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ignored unknown event %.2x\0A\00", [36 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@olpc_xo175_ec_complete._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.24, ptr @.str.3, i32 457, ptr @.str.42, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unknown channel: %d, %.2x\0A\00", [37 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_complete._entry_ptr.54 = internal global ptr @olpc_xo175_ec_complete._entry.52, section ".printk_index", align 4
@olpc_xo175_ec_flush_logbuf.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.55, ptr @.str.3, ptr @.str.56, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"olpc_xo175_ec_flush_logbuf\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"got debug string [%*pE]\0A\00", [39 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_cmd.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.57, ptr @.str.3, ptr @.str.58, i8 0, i8 120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"olpc_xo175_ec_cmd\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CMD %x, %zd bytes expected\0A\00", [36 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.3, i32 485, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"command len %zd too big!\0A\00", [38 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_cmd._entry_ptr = internal global ptr @olpc_xo175_ec_cmd._entry, section ".printk_index", align 4
@olpc_xo175_ec_cmd._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.60, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_cmd._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.3, i32 496, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unknown command 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_cmd._entry_ptr.63 = internal global ptr @olpc_xo175_ec_cmd._entry.61, section ".printk_index", align 4
@olpc_xo175_ec_cmd._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.57, ptr @.str.3, i32 504, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"response too big: %zd!\0A\00", [40 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_cmd._entry_ptr.66 = internal global ptr @olpc_xo175_ec_cmd._entry.64, section ".printk_index", align 4
@olpc_xo175_ec_cmd._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.57, ptr @.str.3, i32 537, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"EC cmd error: timeout in STATE %d\0A\00", [61 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_cmd._entry_ptr.69 = internal global ptr @olpc_xo175_ec_cmd._entry.67, section ".printk_index", align 4
@olpc_xo175_ec_cmd._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.57, ptr @.str.3, i32 550, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"command 0x%x returned error 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_cmd._entry_ptr.72 = internal global ptr @olpc_xo175_ec_cmd._entry.70, section ".printk_index", align 4
@olpc_xo175_ec_cmd._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.57, ptr @.str.3, i32 554, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"command 0x%x returned %d bytes, expected %zd bytes\0A\00", [44 x i8] zeroinitializer }, align 32
@olpc_xo175_ec_cmd._entry_ptr.75 = internal global ptr @olpc_xo175_ec_cmd._entry.73, section ".printk_index", align 4
@olpc_xo175_ec_cmds = internal constant { [54 x %struct.ec_cmd_t], [52 x i8] } { [54 x %struct.ec_cmd_t] [%struct.ec_cmd_t { i8 8, i8 1 }, %struct.ec_cmd_t { i8 16, i8 2 }, %struct.ec_cmd_t { i8 17, i8 2 }, %struct.ec_cmd_t { i8 18, i8 2 }, %struct.ec_cmd_t { i8 19, i8 2 }, %struct.ec_cmd_t { i8 21, i8 1 }, %struct.ec_cmd_t { i8 22, i8 1 }, %struct.ec_cmd_t { i8 23, i8 8 }, %struct.ec_cmd_t { i8 24, i8 1 }, %struct.ec_cmd_t { i8 25, i8 2 }, %struct.ec_cmd_t { i8 31, i8 1 }, %struct.ec_cmd_t { i8 38, i8 0 }, %struct.ec_cmd_t { i8 40, i8 0 }, %struct.ec_cmd_t { i8 44, i8 1 }, %struct.ec_cmd_t { i8 59, i8 0 }, %struct.ec_cmd_t { i8 60, i8 0 }, %struct.ec_cmd_t { i8 61, i8 1 }, %struct.ec_cmd_t { i8 62, i8 1 }, %struct.ec_cmd_t { i8 63, i8 0 }, %struct.ec_cmd_t { i8 64, i8 0 }, %struct.ec_cmd_t { i8 65, i8 0 }, %struct.ec_cmd_t { i8 66, i8 2 }, %struct.ec_cmd_t { i8 74, i8 16 }, %struct.ec_cmd_t { i8 75, i8 0 }, %struct.ec_cmd_t { i8 76, i8 0 }, %struct.ec_cmd_t { i8 77, i8 0 }, %struct.ec_cmd_t { i8 82, i8 5 }, %struct.ec_cmd_t { i8 83, i8 16 }, %struct.ec_cmd_t { i8 84, i8 16 }, %struct.ec_cmd_t { i8 85, i8 0 }, %struct.ec_cmd_t { i8 86, i8 2 }, %struct.ec_cmd_t { i8 87, i8 0 }, %struct.ec_cmd_t { i8 88, i8 0 }, %struct.ec_cmd_t { i8 89, i8 0 }, %struct.ec_cmd_t { i8 90, i8 0 }, %struct.ec_cmd_t { i8 91, i8 0 }, %struct.ec_cmd_t { i8 92, i8 2 }, %struct.ec_cmd_t { i8 93, i8 2 }, %struct.ec_cmd_t { i8 94, i8 2 }, %struct.ec_cmd_t { i8 95, i8 0 }, %struct.ec_cmd_t { i8 96, i8 1 }, %struct.ec_cmd_t { i8 97, i8 0 }, %struct.ec_cmd_t { i8 100, i8 16 }, %struct.ec_cmd_t { i8 101, i8 0 }, %struct.ec_cmd_t { i8 102, i8 0 }, %struct.ec_cmd_t { i8 103, i8 0 }, %struct.ec_cmd_t { i8 104, i8 0 }, %struct.ec_cmd_t { i8 105, i8 0 }, %struct.ec_cmd_t { i8 106, i8 4 }, %struct.ec_cmd_t { i8 107, i8 0 }, %struct.ec_cmd_t { i8 108, i8 2 }, %struct.ec_cmd_t { i8 55, i8 2 }, %struct.ec_cmd_t { i8 56, i8 0 }, %struct.ec_cmd_t zeroinitializer], [52 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@olpc_xo175_ec_suspend.hintargs = internal global { %struct.anon.74, [27 x i8] } zeroinitializer, align 32
@olpc_xo175_ec_suspend.suspend_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.76 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_.77 = private unnamed_addr constant [25 x i8] c"olpc_xo175_ec_spi_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 745, i32 26 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 747, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant [23 x i8] c"olpc_xo175_ec_of_match\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 733, i32 34 }
@___asan_gen_.86 = private unnamed_addr constant [21 x i8] c"olpc_xo175_ec_pm_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 728, i32 32 }
@___asan_gen_.89 = private unnamed_addr constant [8 x i8] c"olpc_ec\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 252, i32 32 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 670, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 678, i32 45 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 680, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 687, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 697, i32 23 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 702, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [21 x i8] c"olpc_xo175_ec_driver\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 647, i32 30 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 714, i32 57 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 723, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 87, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 290, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 312, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 337, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 355, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 373, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 375, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 391, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 402, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 406, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 410, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 413, i32 35 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 423, i32 35 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 441, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 457, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 268, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 482, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 485, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 496, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 504, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 536, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 549, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 553, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant [19 x i8] c"olpc_xo175_ec_cmds\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 131, i32 30 }
@___asan_gen_.296 = private unnamed_addr constant [9 x i8] c"hintargs\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 598, i32 13 }
@___asan_gen_.299 = private unnamed_addr constant [14 x i8] c"suspend_count\00", align 1
@___asan_gen_.300 = private constant [41 x i8] c"../drivers/platform/olpc/olpc-xo175-ec.c\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.300, i32 599, i32 22 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_olpc_xo175_ec_spi_driver_exit, ptr @__initcall__kmod_olpc_xo175_ec__236_754_olpc_xo175_ec_spi_driver_init6, ptr @olpc_xo175_ec_cmd._entry, ptr @olpc_xo175_ec_cmd._entry.61, ptr @olpc_xo175_ec_cmd._entry.64, ptr @olpc_xo175_ec_cmd._entry.67, ptr @olpc_xo175_ec_cmd._entry.70, ptr @olpc_xo175_ec_cmd._entry.73, ptr @olpc_xo175_ec_cmd._entry_ptr, ptr @olpc_xo175_ec_cmd._entry_ptr.63, ptr @olpc_xo175_ec_cmd._entry_ptr.66, ptr @olpc_xo175_ec_cmd._entry_ptr.69, ptr @olpc_xo175_ec_cmd._entry_ptr.72, ptr @olpc_xo175_ec_cmd._entry_ptr.75, ptr @olpc_xo175_ec_complete._entry, ptr @olpc_xo175_ec_complete._entry.25, ptr @olpc_xo175_ec_complete._entry.28, ptr @olpc_xo175_ec_complete._entry.31, ptr @olpc_xo175_ec_complete._entry.34, ptr @olpc_xo175_ec_complete._entry.37, ptr @olpc_xo175_ec_complete._entry.40, ptr @olpc_xo175_ec_complete._entry.44, ptr @olpc_xo175_ec_complete._entry.52, ptr @olpc_xo175_ec_complete._entry_ptr, ptr @olpc_xo175_ec_complete._entry_ptr.27, ptr @olpc_xo175_ec_complete._entry_ptr.30, ptr @olpc_xo175_ec_complete._entry_ptr.33, ptr @olpc_xo175_ec_complete._entry_ptr.36, ptr @olpc_xo175_ec_complete._entry_ptr.39, ptr @olpc_xo175_ec_complete._entry_ptr.43, ptr @olpc_xo175_ec_complete._entry_ptr.46, ptr @olpc_xo175_ec_complete._entry_ptr.54, ptr @olpc_xo175_ec_probe._entry, ptr @olpc_xo175_ec_probe._entry.12, ptr @olpc_xo175_ec_probe._entry.16, ptr @olpc_xo175_ec_probe._entry.7, ptr @olpc_xo175_ec_probe._entry_ptr, ptr @olpc_xo175_ec_probe._entry_ptr.14, ptr @olpc_xo175_ec_probe._entry_ptr.19, ptr @olpc_xo175_ec_probe._entry_ptr.9, ptr @olpc_xo175_ec_send_command._entry, ptr @olpc_xo175_ec_send_command._entry_ptr, ptr @olpc_xo175_ec_spi_driver_exit, ptr @olpc_xo175_ec_spi_driver, ptr @.str, ptr @olpc_xo175_ec_of_match, ptr @olpc_xo175_ec_pm_ops, ptr @olpc_ec, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @olpc_xo175_ec_probe.__key, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @olpc_xo175_ec_driver, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @init_completion.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @olpc_xo175_ec_cmd._rs, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @olpc_xo175_ec_cmds, ptr @olpc_xo175_ec_suspend.hintargs, ptr @olpc_xo175_ec_suspend.suspend_count], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_ec to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_driver to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_send_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_complete._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_complete._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_complete._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_complete._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_complete._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_complete._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_complete._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_complete._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_cmd._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_cmd._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_cmd._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_cmd._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_cmd._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_cmd._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_cmds to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_suspend.hintargs to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @olpc_xo175_ec_suspend.suspend_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @olpc_xo175_ec_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @olpc_xo175_ec_spi_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @olpc_xo175_ec_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @olpc_xo175_ec_spi_driver, i32 0, i32 4)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @olpc_xo175_ec_probe(ptr noundef %spi) #2 align 64 {
entry:
  %args.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @olpc_ec, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 456, i32 noundef 3520) #9
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call6 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.6, i32 noundef 3) #9
  %gpio_cmd = getelementptr inbounds %struct.olpc_xo175_ec, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %gpio_cmd to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call6, ptr %gpio_cmd, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end12, label %if.end18

do.end12:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.8, i32 noundef %2) #12
  %3 = ptrtoint ptr %gpio_cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gpio_cmd, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end4
  %spi19 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %spi19 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spi, ptr %spi19, align 4
  %cmd_state_lock = getelementptr inbounds %struct.olpc_xo175_ec, ptr %call.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %cmd_state_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @olpc_xo175_ec_probe.__key, i16 noundef signext 3) #9
  %cmd_state = getelementptr inbounds %struct.olpc_xo175_ec, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %cmd_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %cmd_state, align 4
  %cmd_done = getelementptr inbounds %struct.olpc_xo175_ec, ptr %call.i, i32 0, i32 10
  %8 = ptrtoint ptr %cmd_done to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %cmd_done, align 4
  %wait.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %call.i, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_completion.__key) #9
  %logbuf_len = getelementptr inbounds %struct.olpc_xo175_ec, ptr %call.i, i32 0, i32 17
  %9 = ptrtoint ptr %logbuf_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %logbuf_len, align 4
  %call25 = tail call ptr @devm_input_allocate_device(ptr noundef %spi) #9
  %pwrbtn = getelementptr inbounds %struct.olpc_xo175_ec, ptr %call.i, i32 0, i32 15
  %10 = ptrtoint ptr %pwrbtn to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call25, ptr %pwrbtn, align 4
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %if.end18.cleanup_crit_edge, label %if.end29

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.end18
  %11 = ptrtoint ptr %call25 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.11, ptr %call25, align 8
  %12 = ptrtoint ptr %pwrbtn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pwrbtn, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 40, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %spi, ptr %parent, align 8
  %15 = load ptr, ptr %pwrbtn, align 4
  tail call void @input_set_capability(ptr noundef %15, i32 noundef 1, i32 noundef 116) #9
  %16 = ptrtoint ptr %pwrbtn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pwrbtn, align 4
  %call36 = tail call i32 @input_register_device(ptr noundef %17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.13, i32 noundef %call36) #12
  br label %cleanup

if.end43:                                         ; preds = %if.end29
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %rx_buf = getelementptr inbounds %struct.olpc_xo175_ec, ptr %call.i, i32 0, i32 5
  %xfer = getelementptr inbounds %struct.olpc_xo175_ec, ptr %call.i, i32 0, i32 2
  %rx_buf44 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %call.i, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %rx_buf44 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %rx_buf, ptr %rx_buf44, align 4
  %tx_buf = getelementptr inbounds %struct.olpc_xo175_ec, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %tx_buf, ptr %xfer, align 4
  tail call fastcc void @olpc_xo175_ec_read_packet(ptr noundef nonnull %call.i)
  tail call void @olpc_ec_driver_register(ptr noundef nonnull @olpc_xo175_ec_driver, ptr noundef nonnull %call.i) #9
  %call48 = tail call fastcc ptr @platform_device_register_resndata(ptr noundef %spi)
  store ptr %call48, ptr @olpc_ec, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %args.i) #9
  %21 = ptrtoint ptr %args.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %args.i, align 2
  %call.i91 = call i32 @olpc_ec_cmd(i8 noundef zeroext 56, ptr noundef nonnull %args.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %args.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  %22 = load ptr, ptr @pm_power_off, align 4
  %cmp = icmp eq ptr %22, null
  br i1 %cmp, label %if.then50, label %if.end43.do.end54_crit_edge

if.end43.do.end54_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54

if.then50:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr @olpc_xo175_ec_power_off, ptr @pm_power_off, align 4
  br label %do.end54

do.end54:                                         ; preds = %if.then50, %if.end43.do.end54_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.17) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end54, %do.end41, %if.end18.cleanup_crit_edge, %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ %5, %do.end12 ], [ %call36, %do.end41 ], [ 0, %do.end54 ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @olpc_xo175_ec_remove(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  %0 = load ptr, ptr @pm_power_off, align 4
  %cmp = icmp eq ptr %0, @olpc_xo175_ec_power_off
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr null, ptr @pm_power_off, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @spi_slave_abort(ptr noundef %spi) #9
  %1 = load ptr, ptr @olpc_ec, align 4
  tail call void @platform_device_unregister(ptr noundef %1) #9
  store ptr null, ptr @olpc_ec, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @olpc_xo175_ec_read_packet(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_buf.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -23206, ptr %tx_buf.i, align 4
  %len.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %priv, i32 0, i32 2, i32 2
  %1 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %len.i, align 4
  %msg.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %priv, i32 0, i32 3
  %2 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %priv, i32 0, i32 3, i32 1
  %3 = call ptr @memset(ptr %2, i32 0, i32 40)
  %4 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %priv, i32 0, i32 3, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %priv, i32 0, i32 3, i32 10
  %6 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %priv, i32 0, i32 3, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %priv, i32 0, i32 2, i32 18
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef %msg.i, ptr noundef %msg.i) #9
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_init_with_transfers.exit.i_crit_edge

entry.spi_message_init_with_transfers.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_init_with_transfers.exit.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %9 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %priv, i32 0, i32 2, i32 18, i32 1
  %10 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_init_with_transfers.exit.i

spi_message_init_with_transfers.exit.i:           ; preds = %if.end.i.i.i.i.i, %entry.spi_message_init_with_transfers.exit.i_crit_edge
  %complete.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %priv, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @olpc_xo175_ec_complete, ptr %complete.i, align 4
  %context.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %priv, i32 0, i32 3, i32 4
  %13 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %priv, ptr %context.i, align 4
  %spi.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %priv, i32 0, i32 1
  %14 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spi.i, align 4
  %call.i = tail call i32 @spi_async(ptr noundef %15, ptr noundef %msg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %spi_message_init_with_transfers.exit.i.olpc_xo175_ec_send_command.exit_crit_edge, label %do.end.i

spi_message_init_with_transfers.exit.i.olpc_xo175_ec_send_command.exit_crit_edge: ; preds = %spi_message_init_with_transfers.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %olpc_xo175_ec_send_command.exit

do.end.i:                                         ; preds = %spi_message_init_with_transfers.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spi.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.21, i32 noundef %call.i) #12
  br label %olpc_xo175_ec_send_command.exit

olpc_xo175_ec_send_command.exit:                  ; preds = %do.end.i, %spi_message_init_with_transfers.exit.i.olpc_xo175_ec_send_command.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @olpc_ec_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @platform_device_register_resndata(ptr noundef %parent) unnamed_addr #5 align 64 {
entry:
  %pdevinfo = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo) #9
  %0 = getelementptr inbounds i8, ptr %pdevinfo, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %2 = ptrtoint ptr %pdevinfo to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %parent, ptr %pdevinfo, align 8
  %fwnode = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 1
  %3 = ptrtoint ptr %fwnode to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fwnode, align 4
  %of_node_reused = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 2
  %4 = ptrtoint ptr %of_node_reused to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %of_node_reused, align 8
  %name2 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 3
  %5 = ptrtoint ptr %name2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.15, ptr %name2, align 4
  %res4 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 5
  %dma_mask = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 9
  %6 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %dma_mask, align 8
  %properties = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 10
  %7 = ptrtoint ptr %properties to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %properties, align 8
  %8 = call ptr @memset(ptr %res4, i32 0, i32 16)
  %call = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo) #9
  ret ptr %call
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @olpc_xo175_ec_power_off() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.body

while.body:                                       ; preds = %while.body2.while.body_crit_edge, %entry
  %call = tail call i32 @olpc_ec_cmd(i8 noundef zeroext 76, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #9
  br label %while.body2

while.body2:                                      ; preds = %while.body2.while.body2_crit_edge, %while.body
  %__ms.03 = phi i32 [ 1000, %while.body ], [ %dec, %while.body2.while.body2_crit_edge ]
  %dec = add nsw i32 %__ms.03, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #9
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body2.while.body_crit_edge, label %while.body2.while.body2_crit_edge

while.body2.while.body2_crit_edge:                ; preds = %while.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body2

while.body2.while.body_crit_edge:                 ; preds = %while.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @olpc_xo175_ec_complete(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %spi = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  %status = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end16, label %do.end

do.end:                                           ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %3) #12
  %cmd_state_lock = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_state_lock) #9
  %cmd_running = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 9
  %4 = ptrtoint ptr %cmd_running to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cmd_running, align 4, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %do.end.if.end_crit_edge, label %if.then10

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %resp_len = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 14
  %6 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %resp_len, align 4
  %cmd_state = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 8
  %7 = ptrtoint ptr %cmd_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 5, ptr %cmd_state, align 4
  %cmd_done = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 10
  tail call void @complete(ptr noundef %cmd_done) #9
  br label %if.end

if.end:                                           ; preds = %if.then10, %do.end.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_state_lock, i32 noundef %call4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %3)
  %cmp12.not = icmp eq i32 %3, -4
  br i1 %cmp12.not, label %if.end.cleanup_crit_edge, label %if.then14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %if.end
  %tx_buf.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 4
  %8 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -23206, ptr %tx_buf.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %len.i.i, align 4
  %msg.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3
  %10 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3, i32 1
  %11 = call ptr @memset(ptr %10, i32 0, i32 40)
  %12 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3, i32 10
  %14 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3, i32 10, i32 1
  %15 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 2, i32 18
  %call.i.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef %msg.i.i, ptr noundef %msg.i.i) #9
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.then14.spi_message_init_with_transfers.exit.i.i_crit_edge

if.then14.spi_message_init_with_transfers.exit.i.i_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_init_with_transfers.exit.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 2, i32 18, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_message_init_with_transfers.exit.i.i

spi_message_init_with_transfers.exit.i.i:         ; preds = %if.end.i.i.i.i.i.i, %if.then14.spi_message_init_with_transfers.exit.i.i_crit_edge
  %complete.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @olpc_xo175_ec_complete, ptr %complete.i.i, align 4
  %context.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3, i32 4
  %21 = ptrtoint ptr %context.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arg, ptr %context.i.i, align 4
  %22 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spi, align 4
  %call.i.i = tail call i32 @spi_async(ptr noundef %23, ptr noundef %msg.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %spi_message_init_with_transfers.exit.i.i.cleanup_crit_edge, label %do.end.i.i

spi_message_init_with_transfers.exit.i.i.cleanup_crit_edge: ; preds = %spi_message_init_with_transfers.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i.i:                                       ; preds = %spi_message_init_with_transfers.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.21, i32 noundef %call.i.i) #12
  br label %cleanup

if.end16:                                         ; preds = %entry
  %rx_buf = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 5
  %26 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rx_buf, align 4
  %byte19 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 5, i32 0, i32 1
  %28 = ptrtoint ptr %byte19 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %byte19, align 1
  %30 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i8 %27, label %do.end225 [
    i8 0, label %do.body22
    i8 1, label %do.body51
    i8 2, label %do.body77
    i8 7, label %do.body119
    i8 3, label %do.end149
    i8 4, label %do.end153
    i8 5, label %do.body155
    i8 6, label %sw.bb201
  ]

do.body22:                                        ; preds = %if.end16
  %cmd_state_lock28 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 7
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_state_lock28) #9
  %cmd_running35 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 9
  %31 = ptrtoint ptr %cmd_running35 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %cmd_running35, align 4, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool36.not = icmp eq i8 %32, 0
  br i1 %tobool36.not, label %do.end40, label %if.end42

do.end40:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.26) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_state_lock28, i32 noundef %call30) #9
  br label %cleanup

if.end42:                                         ; preds = %do.body22
  %cmd_state43 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 8
  %33 = ptrtoint ptr %cmd_state43 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3, ptr %cmd_state43, align 4
  %expected_resp_len = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 13
  %34 = ptrtoint ptr %expected_resp_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %expected_resp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool44.not = icmp eq i32 %35, 0
  br i1 %tobool44.not, label %if.then45, label %if.end42.if.end47_crit_edge

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %cmd_done46 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 10
  tail call void @complete(ptr noundef %cmd_done46) #9
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end42.if.end47_crit_edge
  %tx_buf.i.i326 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 4
  %36 = ptrtoint ptr %tx_buf.i.i326 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -23206, ptr %tx_buf.i.i326, align 4
  %len.i.i327 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 2, i32 2
  %37 = ptrtoint ptr %len.i.i327 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %len.i.i327, align 4
  %msg.i.i328 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3
  %38 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3, i32 1
  %39 = call ptr @memset(ptr %38, i32 0, i32 40)
  %40 = ptrtoint ptr %msg.i.i328 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %msg.i.i328, ptr %msg.i.i328, align 4
  %prev.i.i.i.i.i.i329 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i.i.i.i.i329 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %msg.i.i328, ptr %prev.i.i.i.i.i.i329, align 4
  %resources.i.i.i.i.i330 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3, i32 10
  %42 = ptrtoint ptr %resources.i.i.i.i.i330 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %resources.i.i.i.i.i330, ptr %resources.i.i.i.i.i330, align 4
  %prev.i2.i.i.i.i.i331 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3, i32 10, i32 1
  %43 = ptrtoint ptr %prev.i2.i.i.i.i.i331 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %resources.i.i.i.i.i330, ptr %prev.i2.i.i.i.i.i331, align 4
  %transfer_list.i.i.i.i332 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 2, i32 18
  %call.i.i.i.i.i.i333 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i332, ptr noundef %msg.i.i328, ptr noundef %msg.i.i328) #9
  br i1 %call.i.i.i.i.i.i333, label %if.end.i.i.i.i.i.i335, label %if.end47.spi_message_init_with_transfers.exit.i.i341_crit_edge

if.end47.spi_message_init_with_transfers.exit.i.i341_crit_edge: ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_init_with_transfers.exit.i.i341

if.end.i.i.i.i.i.i335:                            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %prev.i.i.i.i.i.i329 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %transfer_list.i.i.i.i332, ptr %prev.i.i.i.i.i.i329, align 4
  %45 = ptrtoint ptr %transfer_list.i.i.i.i332 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %msg.i.i328, ptr %transfer_list.i.i.i.i332, align 4
  %prev3.i.i.i.i.i.i334 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 2, i32 18, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i.i.i.i334 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msg.i.i328, ptr %prev3.i.i.i.i.i.i334, align 4
  %47 = ptrtoint ptr %msg.i.i328 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %transfer_list.i.i.i.i332, ptr %msg.i.i328, align 4
  br label %spi_message_init_with_transfers.exit.i.i341

spi_message_init_with_transfers.exit.i.i341:      ; preds = %if.end.i.i.i.i.i.i335, %if.end47.spi_message_init_with_transfers.exit.i.i341_crit_edge
  %complete.i.i336 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3, i32 3
  %48 = ptrtoint ptr %complete.i.i336 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @olpc_xo175_ec_complete, ptr %complete.i.i336, align 4
  %context.i.i337 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3, i32 4
  %49 = ptrtoint ptr %context.i.i337 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %arg, ptr %context.i.i337, align 4
  %50 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %spi, align 4
  %call.i.i339 = tail call i32 @spi_async(ptr noundef %51, ptr noundef %msg.i.i328) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i339)
  %tobool.not.i.i340 = icmp eq i32 %call.i.i339, 0
  br i1 %tobool.not.i.i340, label %spi_message_init_with_transfers.exit.i.i341.olpc_xo175_ec_read_packet.exit343_crit_edge, label %do.end.i.i342

spi_message_init_with_transfers.exit.i.i341.olpc_xo175_ec_read_packet.exit343_crit_edge: ; preds = %spi_message_init_with_transfers.exit.i.i341
  call void @__sanitizer_cov_trace_pc() #11
  br label %olpc_xo175_ec_read_packet.exit343

do.end.i.i342:                                    ; preds = %spi_message_init_with_transfers.exit.i.i341
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.21, i32 noundef %call.i.i339) #12
  br label %olpc_xo175_ec_read_packet.exit343

olpc_xo175_ec_read_packet.exit343:                ; preds = %do.end.i.i342, %spi_message_init_with_transfers.exit.i.i341.olpc_xo175_ec_read_packet.exit343_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_state_lock28, i32 noundef %call30) #9
  br label %cleanup

do.body51:                                        ; preds = %if.end16
  %cmd_state_lock57 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 7
  %call59 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_state_lock57) #9
  %cmd_running64 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 9
  %54 = ptrtoint ptr %cmd_running64 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %cmd_running64, align 4, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool65.not = icmp eq i8 %55, 0
  br i1 %tobool65.not, label %do.end69, label %do.body51.if.end71_crit_edge

do.body51.if.end71_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

do.end69:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.29) #12
  %cmd = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 11
  %56 = ptrtoint ptr %cmd to i32
  call void @__asan_storeN_noabort(i32 %56, i32 8)
  store i64 5908722711110090752, ptr %cmd, align 4
  br label %if.end71

if.end71:                                         ; preds = %do.end69, %do.body51.if.end71_crit_edge
  %cmd_state72 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 8
  %57 = ptrtoint ptr %cmd_state72 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %cmd_state72, align 4
  %gpio_cmd = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 6
  %58 = ptrtoint ptr %gpio_cmd to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %gpio_cmd, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %59, i32 noundef 0) #9
  %cmd73 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 11
  %tx_buf.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 4
  %60 = ptrtoint ptr %cmd73 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 8)
  %61 = load i64, ptr %cmd73, align 1
  %62 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 8)
  store i64 %61, ptr %tx_buf.i, align 4
  %len.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 2, i32 2
  %63 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 8, ptr %len.i, align 4
  %msg.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3
  %64 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3, i32 1
  %65 = call ptr @memset(ptr %64, i32 0, i32 40)
  %66 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3, i32 10
  %68 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3, i32 10, i32 1
  %69 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 2, i32 18
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef %msg.i, ptr noundef %msg.i) #9
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end71.spi_message_init_with_transfers.exit.i_crit_edge

if.end71.spi_message_init_with_transfers.exit.i_crit_edge: ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_init_with_transfers.exit.i

if.end.i.i.i.i.i:                                 ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %71 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 2, i32 18, i32 1
  %72 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %73 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_init_with_transfers.exit.i

spi_message_init_with_transfers.exit.i:           ; preds = %if.end.i.i.i.i.i, %if.end71.spi_message_init_with_transfers.exit.i_crit_edge
  %complete.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3, i32 3
  %74 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @olpc_xo175_ec_complete, ptr %complete.i, align 4
  %context.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3, i32 4
  %75 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %arg, ptr %context.i, align 4
  %76 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %spi, align 4
  %call.i = tail call i32 @spi_async(ptr noundef %77, ptr noundef %msg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %spi_message_init_with_transfers.exit.i.olpc_xo175_ec_send_command.exit_crit_edge, label %do.end.i

spi_message_init_with_transfers.exit.i.olpc_xo175_ec_send_command.exit_crit_edge: ; preds = %spi_message_init_with_transfers.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %olpc_xo175_ec_send_command.exit

do.end.i:                                         ; preds = %spi_message_init_with_transfers.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.21, i32 noundef %call.i) #12
  br label %olpc_xo175_ec_send_command.exit

olpc_xo175_ec_send_command.exit:                  ; preds = %do.end.i, %spi_message_init_with_transfers.exit.i.olpc_xo175_ec_send_command.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_state_lock57, i32 noundef %call59) #9
  br label %cleanup

do.body77:                                        ; preds = %if.end16
  %cmd_state_lock83 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 7
  %call85 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_state_lock83) #9
  %cmd_running90 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 9
  %80 = ptrtoint ptr %cmd_running90 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %cmd_running90, align 4, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool91.not = icmp eq i8 %81, 0
  br i1 %tobool91.not, label %do.end95, label %if.else

do.end95:                                         ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.32) #12
  br label %if.end115

if.else:                                          ; preds = %do.body77
  %resp_len96 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 14
  %82 = ptrtoint ptr %resp_len96 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %resp_len96, align 4
  %expected_resp_len97 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 13
  %84 = ptrtoint ptr %expected_resp_len97 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %expected_resp_len97, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %85)
  %cmp98.not = icmp slt i32 %83, %85
  br i1 %cmp98.not, label %if.else104, label %do.end103

do.end103:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.35) #12
  br label %if.end115

if.else104:                                       ; preds = %if.else
  %inc = add nsw i32 %83, 1
  %86 = ptrtoint ptr %resp_len96 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %inc, ptr %resp_len96, align 4
  %arrayidx = getelementptr %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 12, i32 %83
  %87 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %29, ptr %arrayidx, align 1
  %88 = load i32, ptr %resp_len96, align 4
  %89 = ptrtoint ptr %expected_resp_len97 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %expected_resp_len97, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %90)
  %cmp108 = icmp eq i32 %88, %90
  br i1 %cmp108, label %if.then110, label %if.else104.if.end115_crit_edge

if.else104.if.end115_crit_edge:                   ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

if.then110:                                       ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #11
  %cmd_state111 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 8
  %91 = ptrtoint ptr %cmd_state111 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 4, ptr %cmd_state111, align 4
  %cmd_done112 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 10
  tail call void @complete(ptr noundef %cmd_done112) #9
  br label %if.end115

if.end115:                                        ; preds = %if.then110, %if.else104.if.end115_crit_edge, %do.end103, %do.end95
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_state_lock83, i32 noundef %call85) #9
  br label %sw.epilog228

do.body119:                                       ; preds = %if.end16
  %cmd_state_lock125 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 7
  %call127 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_state_lock125) #9
  %cmd_running132 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 9
  %92 = ptrtoint ptr %cmd_running132 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %cmd_running132, align 4, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool133.not = icmp eq i8 %93, 0
  br i1 %tobool133.not, label %do.end137, label %if.else138

do.end137:                                        ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.38) #12
  br label %if.end144

if.else138:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #11
  %resp_data139 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 12
  %94 = ptrtoint ptr %resp_data139 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %29, ptr %resp_data139, align 4
  %resp_len141 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 14
  %95 = ptrtoint ptr %resp_len141 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1, ptr %resp_len141, align 4
  %cmd_state142 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 8
  %96 = ptrtoint ptr %cmd_state142 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 5, ptr %cmd_state142, align 4
  %cmd_done143 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 10
  tail call void @complete(ptr noundef %cmd_done143) #9
  br label %if.end144

if.end144:                                        ; preds = %if.else138, %do.end137
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_state_lock125, i32 noundef %call127) #9
  br label %sw.epilog228

do.end149:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.41) #12
  br label %sw.epilog228

do.end153:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.45) #12
  br label %sw.epilog228

do.body155:                                       ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @olpc_xo175_ec_complete.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@olpc_xo175_ec_complete, %if.then161)) #9
          to label %do.end165 [label %if.then161], !srcloc !161

if.then161:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #11
  %conv162 = zext i8 %29 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @olpc_xo175_ec_complete.__UNIQUE_ID_ddebug231, ptr noundef %1, ptr noundef nonnull @.str.48, i32 noundef %conv162) #9
  br label %do.end165

do.end165:                                        ; preds = %if.then161, %do.body155
  %conv166 = zext i8 %29 to i32
  %97 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %29, label %do.body184 [
    i8 1, label %sw.bb167
    i8 2, label %do.end165.sw.bb172_crit_edge
    i8 3, label %do.end165.sw.bb172_crit_edge373
    i8 4, label %do.end165.sw.bb172_crit_edge374
    i8 5, label %do.end165.sw.bb172_crit_edge375
    i8 6, label %sw.bb177
    i8 7, label %do.end165.sw.bb181_crit_edge
    i8 8, label %do.end165.sw.bb181_crit_edge376
  ]

do.end165.sw.bb181_crit_edge376:                  ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb181

do.end165.sw.bb181_crit_edge:                     ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb181

do.end165.sw.bb172_crit_edge375:                  ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb172

do.end165.sw.bb172_crit_edge374:                  ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb172

do.end165.sw.bb172_crit_edge373:                  ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb172

do.end165.sw.bb172_crit_edge:                     ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb172

sw.bb167:                                         ; preds = %do.end165
  %call168 = tail call ptr @power_supply_get_by_name(ptr noundef nonnull @.str.49) #9
  %tobool169.not = icmp eq ptr %call168, null
  br i1 %tobool169.not, label %sw.bb167.sw.epilog228_crit_edge, label %if.then170

sw.bb167.sw.epilog228_crit_edge:                  ; preds = %sw.bb167
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog228

if.then170:                                       ; preds = %sw.bb167
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @power_supply_changed(ptr noundef nonnull %call168) #9
  tail call void @power_supply_put(ptr noundef nonnull %call168) #9
  br label %sw.epilog228

sw.bb172:                                         ; preds = %do.end165.sw.bb172_crit_edge, %do.end165.sw.bb172_crit_edge373, %do.end165.sw.bb172_crit_edge374, %do.end165.sw.bb172_crit_edge375
  %call173 = tail call ptr @power_supply_get_by_name(ptr noundef nonnull @.str.50) #9
  %tobool174.not = icmp eq ptr %call173, null
  br i1 %tobool174.not, label %sw.bb172.sw.epilog228_crit_edge, label %if.then175

sw.bb172.sw.epilog228_crit_edge:                  ; preds = %sw.bb172
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog228

if.then175:                                       ; preds = %sw.bb172
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @power_supply_changed(ptr noundef nonnull %call173) #9
  tail call void @power_supply_put(ptr noundef nonnull %call173) #9
  br label %sw.epilog228

sw.bb177:                                         ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #11
  %pwrbtn = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 15
  %98 = ptrtoint ptr %pwrbtn to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pwrbtn, align 4
  tail call void @input_event(ptr noundef %99, i32 noundef 1, i32 noundef 116, i32 noundef 1) #9
  %100 = ptrtoint ptr %pwrbtn to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pwrbtn, align 4
  tail call void @input_event(ptr noundef %101, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %102 = ptrtoint ptr %pwrbtn to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pwrbtn, align 4
  tail call void @input_event(ptr noundef %103, i32 noundef 1, i32 noundef 116, i32 noundef 0) #9
  %104 = ptrtoint ptr %pwrbtn to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pwrbtn, align 4
  tail call void @input_event(ptr noundef %105, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  br label %sw.bb181

sw.bb181:                                         ; preds = %sw.bb177, %do.end165.sw.bb181_crit_edge, %do.end165.sw.bb181_crit_edge376
  %pwrbtn182 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 15
  %106 = ptrtoint ptr %pwrbtn182 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pwrbtn182, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %107, i32 0, i32 40, i32 1
  %108 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %parent, align 8
  tail call void @pm_wakeup_dev_event(ptr noundef %109, i32 noundef 1000, i1 noundef zeroext false) #9
  br label %sw.epilog228

do.body184:                                       ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @olpc_xo175_ec_complete.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@olpc_xo175_ec_complete, %if.then196)) #9
          to label %sw.epilog228 [label %if.then196], !srcloc !161

if.then196:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @olpc_xo175_ec_complete.__UNIQUE_ID_ddebug232, ptr noundef %1, ptr noundef nonnull @.str.51, i32 noundef %conv166) #9
  br label %sw.epilog228

sw.bb201:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %29)
  %cmp203 = icmp eq i8 %29, 10
  br i1 %cmp203, label %if.then205, label %if.else206

if.then205:                                       ; preds = %sw.bb201
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @olpc_xo175_ec_flush_logbuf.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@olpc_xo175_ec_complete, %if.then.i)) #9
          to label %olpc_xo175_ec_flush_logbuf.exit [label %if.then.i], !srcloc !161

if.then.i:                                        ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %spi, align 4
  %logbuf_len.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 17
  %112 = ptrtoint ptr %logbuf_len.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %logbuf_len.i, align 4
  %logbuf.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @olpc_xo175_ec_flush_logbuf.__UNIQUE_ID_ddebug230, ptr noundef %111, ptr noundef nonnull @.str.56, i32 noundef %113, ptr noundef %logbuf.i) #9
  br label %olpc_xo175_ec_flush_logbuf.exit

olpc_xo175_ec_flush_logbuf.exit:                  ; preds = %if.then.i, %if.then205
  %logbuf_len3.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 17
  %114 = ptrtoint ptr %logbuf_len3.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %logbuf_len3.i, align 4
  br label %sw.epilog228

if.else206:                                       ; preds = %sw.bb201
  %conv202 = zext i8 %29 to i32
  %arrayidx208 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv202
  %115 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx208, align 1
  %117 = and i8 %116, -105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %cmp210.not = icmp eq i8 %117, 0
  br i1 %cmp210.not, label %if.else206.sw.epilog228_crit_edge, label %if.then212

if.else206.sw.epilog228_crit_edge:                ; preds = %if.else206
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog228

if.then212:                                       ; preds = %if.else206
  %logbuf_len = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 17
  %118 = ptrtoint ptr %logbuf_len to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %logbuf_len, align 4
  %inc213 = add i32 %119, 1
  store i32 %inc213, ptr %logbuf_len, align 4
  %arrayidx214 = getelementptr %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 16, i32 %119
  %120 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %29, ptr %arrayidx214, align 1
  %121 = load i32, ptr %logbuf_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %121)
  %cmp216 = icmp eq i32 %121, 128
  br i1 %cmp216, label %if.then218, label %if.then212.sw.epilog228_crit_edge

if.then212.sw.epilog228_crit_edge:                ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog228

if.then218:                                       ; preds = %if.then212
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @olpc_xo175_ec_flush_logbuf.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@olpc_xo175_ec_complete, %if.then.i349)) #9
          to label %olpc_xo175_ec_flush_logbuf.exit352 [label %if.then.i349], !srcloc !161

if.then.i349:                                     ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %spi, align 4
  %124 = ptrtoint ptr %logbuf_len to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %logbuf_len, align 4
  %logbuf.i348 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @olpc_xo175_ec_flush_logbuf.__UNIQUE_ID_ddebug230, ptr noundef %123, ptr noundef nonnull @.str.56, i32 noundef %125, ptr noundef %logbuf.i348) #9
  br label %olpc_xo175_ec_flush_logbuf.exit352

olpc_xo175_ec_flush_logbuf.exit352:               ; preds = %if.then.i349, %if.then218
  %126 = ptrtoint ptr %logbuf_len to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %logbuf_len, align 4
  br label %sw.epilog228

do.end225:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %conv20 = zext i8 %27 to i32
  %conv227 = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.53, i32 noundef %conv20, i32 noundef %conv227) #12
  br label %sw.epilog228

sw.epilog228:                                     ; preds = %do.end225, %olpc_xo175_ec_flush_logbuf.exit352, %if.then212.sw.epilog228_crit_edge, %if.else206.sw.epilog228_crit_edge, %olpc_xo175_ec_flush_logbuf.exit, %if.then196, %do.body184, %sw.bb181, %if.then175, %sw.bb172.sw.epilog228_crit_edge, %if.then170, %sw.bb167.sw.epilog228_crit_edge, %do.end153, %do.end149, %if.end144, %if.end115
  %tx_buf.i.i353 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 4
  %127 = ptrtoint ptr %tx_buf.i.i353 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 -23206, ptr %tx_buf.i.i353, align 4
  %len.i.i354 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 2, i32 2
  %128 = ptrtoint ptr %len.i.i354 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 2, ptr %len.i.i354, align 4
  %msg.i.i355 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3
  %129 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3, i32 1
  %130 = call ptr @memset(ptr %129, i32 0, i32 40)
  %131 = ptrtoint ptr %msg.i.i355 to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %msg.i.i355, ptr %msg.i.i355, align 4
  %prev.i.i.i.i.i.i356 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3, i32 0, i32 1
  %132 = ptrtoint ptr %prev.i.i.i.i.i.i356 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %msg.i.i355, ptr %prev.i.i.i.i.i.i356, align 4
  %resources.i.i.i.i.i357 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3, i32 10
  %133 = ptrtoint ptr %resources.i.i.i.i.i357 to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %resources.i.i.i.i.i357, ptr %resources.i.i.i.i.i357, align 4
  %prev.i2.i.i.i.i.i358 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3, i32 10, i32 1
  %134 = ptrtoint ptr %prev.i2.i.i.i.i.i358 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %resources.i.i.i.i.i357, ptr %prev.i2.i.i.i.i.i358, align 4
  %transfer_list.i.i.i.i359 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 2, i32 18
  %call.i.i.i.i.i.i360 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i359, ptr noundef %msg.i.i355, ptr noundef %msg.i.i355) #9
  br i1 %call.i.i.i.i.i.i360, label %if.end.i.i.i.i.i.i362, label %sw.epilog228.spi_message_init_with_transfers.exit.i.i368_crit_edge

sw.epilog228.spi_message_init_with_transfers.exit.i.i368_crit_edge: ; preds = %sw.epilog228
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_init_with_transfers.exit.i.i368

if.end.i.i.i.i.i.i362:                            ; preds = %sw.epilog228
  call void @__sanitizer_cov_trace_pc() #11
  %135 = ptrtoint ptr %prev.i.i.i.i.i.i356 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %transfer_list.i.i.i.i359, ptr %prev.i.i.i.i.i.i356, align 4
  %136 = ptrtoint ptr %transfer_list.i.i.i.i359 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %msg.i.i355, ptr %transfer_list.i.i.i.i359, align 4
  %prev3.i.i.i.i.i.i361 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 2, i32 18, i32 1
  %137 = ptrtoint ptr %prev3.i.i.i.i.i.i361 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %msg.i.i355, ptr %prev3.i.i.i.i.i.i361, align 4
  %138 = ptrtoint ptr %msg.i.i355 to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %transfer_list.i.i.i.i359, ptr %msg.i.i355, align 4
  br label %spi_message_init_with_transfers.exit.i.i368

spi_message_init_with_transfers.exit.i.i368:      ; preds = %if.end.i.i.i.i.i.i362, %sw.epilog228.spi_message_init_with_transfers.exit.i.i368_crit_edge
  %complete.i.i363 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3, i32 3
  %139 = ptrtoint ptr %complete.i.i363 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @olpc_xo175_ec_complete, ptr %complete.i.i363, align 4
  %context.i.i364 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %arg, i32 0, i32 3, i32 4
  %140 = ptrtoint ptr %context.i.i364 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %arg, ptr %context.i.i364, align 4
  %141 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %spi, align 4
  %call.i.i366 = tail call i32 @spi_async(ptr noundef %142, ptr noundef %msg.i.i355) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i366)
  %tobool.not.i.i367 = icmp eq i32 %call.i.i366, 0
  br i1 %tobool.not.i.i367, label %spi_message_init_with_transfers.exit.i.i368.cleanup_crit_edge, label %do.end.i.i369

spi_message_init_with_transfers.exit.i.i368.cleanup_crit_edge: ; preds = %spi_message_init_with_transfers.exit.i.i368
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i.i369:                                    ; preds = %spi_message_init_with_transfers.exit.i.i368
  call void @__sanitizer_cov_trace_pc() #11
  %143 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.21, i32 noundef %call.i.i366) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end.i.i369, %spi_message_init_with_transfers.exit.i.i368.cleanup_crit_edge, %olpc_xo175_ec_send_command.exit, %olpc_xo175_ec_read_packet.exit343, %do.end40, %do.end.i.i, %spi_message_init_with_transfers.exit.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_async(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_by_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @olpc_xo175_ec_cmd(i8 noundef zeroext %cmd, ptr nocapture noundef readonly %inbuf, i32 noundef %inlen, ptr nocapture noundef writeonly %resp, i32 noundef %resp_len, ptr noundef %ec_cb_arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %spi = getelementptr inbounds %struct.olpc_xo175_ec, ptr %ec_cb_arg, i32 0, i32 1
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @olpc_xo175_ec_cmd.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@olpc_xo175_ec_cmd, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %cmd to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @olpc_xo175_ec_cmd.__UNIQUE_ID_ddebug233, ptr noundef %1, ptr noundef nonnull @.str.58, i32 noundef %conv, i32 noundef %resp_len) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inlen)
  %cmp = icmp ugt i32 %inlen, 5
  br i1 %cmp, label %do.end8, label %if.end9

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.59, i32 noundef %resp_len) #12
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %2 = ptrtoint ptr %ec_cb_arg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ec_cb_arg, align 4, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool10.not = icmp eq i8 %3, 0
  br i1 %tobool10.not, label %if.end9.for.body.i_crit_edge, label %do.end26, !prof !162

if.end9.for.body.i_crit_edge:                     ; preds = %if.end9
  br label %for.body.i

do.end26:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 490, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end9.for.body.i_crit_edge
  %4 = phi i8 [ %6, %for.inc.i.for.body.i_crit_edge ], [ 8, %if.end9.for.body.i_crit_edge ]
  %p.010.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ @olpc_xo175_ec_cmds, %if.end9.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %cmd)
  %cmp.i = icmp eq i8 %4, %cmd
  br i1 %cmp.i, label %olpc_xo175_ec_resp_len.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.ec_cmd_t, ptr %p.010.i, i32 1
  %5 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %incdec.ptr.i, align 1
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %do.body47, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

olpc_xo175_ec_resp_len.exit:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %bytes_returned.i = getelementptr inbounds %struct.ec_cmd_t, ptr %p.010.i, i32 0, i32 1
  %7 = ptrtoint ptr %bytes_returned.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bytes_returned.i, align 1
  %conv5.i = zext i8 %8 to i32
  br label %if.end65

do.body47:                                        ; preds = %for.inc.i
  %call48 = tail call i32 @___ratelimit(ptr noundef nonnull @olpc_xo175_ec_cmd._rs, ptr noundef nonnull @.str.57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %do.body47.do.end57_crit_edge, label %do.end53

do.body47.do.end57_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end57

do.end53:                                         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #11
  %conv54 = zext i8 %cmd to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.62, i32 noundef %conv54) #12
  br label %do.end57

do.end57:                                         ; preds = %do.end53, %do.body47.do.end57_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %resp_len)
  %cmp58 = icmp ugt i32 %resp_len, 16
  br i1 %cmp58, label %do.end63, label %do.end57.if.end65_crit_edge

do.end57.if.end65_crit_edge:                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

do.end63:                                         ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.65, i32 noundef %resp_len) #12
  br label %cleanup

if.end65:                                         ; preds = %do.end57.if.end65_crit_edge, %olpc_xo175_ec_resp_len.exit
  %ret.0 = phi i32 [ -22, %do.end57.if.end65_crit_edge ], [ 0, %olpc_xo175_ec_resp_len.exit ]
  %nr_bytes.0 = phi i32 [ %resp_len, %do.end57.if.end65_crit_edge ], [ %conv5.i, %olpc_xo175_ec_resp_len.exit ]
  %9 = tail call i32 @llvm.umin.i32(i32 %nr_bytes.0, i32 %resp_len)
  %cmd_state_lock = getelementptr inbounds %struct.olpc_xo175_ec, ptr %ec_cb_arg, i32 0, i32 7
  %call75 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_state_lock) #9
  %cmd_done = getelementptr inbounds %struct.olpc_xo175_ec, ptr %ec_cb_arg, i32 0, i32 10
  %10 = ptrtoint ptr %cmd_done to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %cmd_done, align 4
  %wait.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %ec_cb_arg, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_completion.__key) #9
  %cmd_running = getelementptr inbounds %struct.olpc_xo175_ec, ptr %ec_cb_arg, i32 0, i32 9
  %11 = ptrtoint ptr %cmd_running to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %cmd_running, align 4
  %cmd_state = getelementptr inbounds %struct.olpc_xo175_ec, ptr %ec_cb_arg, i32 0, i32 8
  %12 = ptrtoint ptr %cmd_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %cmd_state, align 4
  %cmd80 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %ec_cb_arg, i32 0, i32 11
  %13 = ptrtoint ptr %cmd80 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 0, ptr %cmd80, align 4
  store i8 %cmd, ptr %cmd80, align 4
  %conv82 = trunc i32 %inlen to i8
  %nr_args = getelementptr inbounds %struct.olpc_xo175_ec, ptr %ec_cb_arg, i32 0, i32 11, i32 1
  %14 = ptrtoint ptr %nr_args to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv82, ptr %nr_args, align 1
  %args = getelementptr inbounds %struct.olpc_xo175_ec, ptr %ec_cb_arg, i32 0, i32 11, i32 3
  %15 = call ptr @memcpy(ptr %args, ptr %inbuf, i32 %inlen)
  %expected_resp_len = getelementptr inbounds %struct.olpc_xo175_ec, ptr %ec_cb_arg, i32 0, i32 13
  %16 = ptrtoint ptr %expected_resp_len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %nr_bytes.0, ptr %expected_resp_len, align 4
  %resp_len86 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %ec_cb_arg, i32 0, i32 14
  %17 = ptrtoint ptr %resp_len86 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %resp_len86, align 4
  %gpio_cmd = getelementptr inbounds %struct.olpc_xo175_ec, ptr %ec_cb_arg, i32 0, i32 6
  %18 = ptrtoint ptr %gpio_cmd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gpio_cmd, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %19, i32 noundef 1) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_state_lock, i32 noundef %call75) #9
  %call90 = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_done, i32 noundef 400) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %do.end95, label %do.body102

do.end95:                                         ; preds = %if.end65
  %20 = ptrtoint ptr %cmd_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmd_state, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.68, i32 noundef %21) #12
  %22 = ptrtoint ptr %gpio_cmd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gpio_cmd, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %23, i32 noundef 0) #9
  %24 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %spi, align 4
  %call99 = tail call i32 @spi_slave_abort(ptr noundef %25) #9
  %tx_buf.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %ec_cb_arg, i32 0, i32 4
  %26 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -23206, ptr %tx_buf.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %ec_cb_arg, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %len.i.i, align 4
  %msg.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %ec_cb_arg, i32 0, i32 3
  %28 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %ec_cb_arg, i32 0, i32 3, i32 1
  %29 = call ptr @memset(ptr %28, i32 0, i32 40)
  %30 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %ec_cb_arg, i32 0, i32 3, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %ec_cb_arg, i32 0, i32 3, i32 10
  %32 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %ec_cb_arg, i32 0, i32 3, i32 10, i32 1
  %33 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %ec_cb_arg, i32 0, i32 2, i32 18
  %call.i.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef %msg.i.i, ptr noundef %msg.i.i) #9
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %do.end95.spi_message_init_with_transfers.exit.i.i_crit_edge

do.end95.spi_message_init_with_transfers.exit.i.i_crit_edge: ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_init_with_transfers.exit.i.i

if.end.i.i.i.i.i.i:                               ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %35 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %ec_cb_arg, i32 0, i32 2, i32 18, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %37 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_message_init_with_transfers.exit.i.i

spi_message_init_with_transfers.exit.i.i:         ; preds = %if.end.i.i.i.i.i.i, %do.end95.spi_message_init_with_transfers.exit.i.i_crit_edge
  %complete.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %ec_cb_arg, i32 0, i32 3, i32 3
  %38 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @olpc_xo175_ec_complete, ptr %complete.i.i, align 4
  %context.i.i = getelementptr inbounds %struct.olpc_xo175_ec, ptr %ec_cb_arg, i32 0, i32 3, i32 4
  %39 = ptrtoint ptr %context.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %ec_cb_arg, ptr %context.i.i, align 4
  %40 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %spi, align 4
  %call.i.i = tail call i32 @spi_async(ptr noundef %41, ptr noundef %msg.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %spi_message_init_with_transfers.exit.i.i.cleanup_crit_edge, label %do.end.i.i

spi_message_init_with_transfers.exit.i.i.cleanup_crit_edge: ; preds = %spi_message_init_with_transfers.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i.i:                                       ; preds = %spi_message_init_with_transfers.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.21, i32 noundef %call.i.i) #12
  br label %cleanup

do.body102:                                       ; preds = %if.end65
  %call110 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_state_lock) #9
  %44 = ptrtoint ptr %cmd_state to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cmd_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %45)
  %cmp116 = icmp eq i32 %45, 5
  br i1 %cmp116, label %do.end121, label %if.else124

do.end121:                                        ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #11
  %conv122 = zext i8 %cmd to i32
  %resp_data = getelementptr inbounds %struct.olpc_xo175_ec, ptr %ec_cb_arg, i32 0, i32 12
  %46 = ptrtoint ptr %resp_data to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %resp_data, align 4
  %conv123 = zext i8 %47 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.71, i32 noundef %conv122, i32 noundef %conv123) #12
  br label %if.end138

if.else124:                                       ; preds = %do.body102
  %48 = ptrtoint ptr %resp_len86 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %resp_len86, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %nr_bytes.0)
  %cmp126.not = icmp eq i32 %49, %nr_bytes.0
  br i1 %cmp126.not, label %if.else134, label %do.end131

do.end131:                                        ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #11
  %conv132 = zext i8 %cmd to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.74, i32 noundef %conv132, i32 noundef %49, i32 noundef %nr_bytes.0) #12
  br label %if.end138

if.else134:                                       ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #11
  %resp_data135 = getelementptr inbounds %struct.olpc_xo175_ec, ptr %ec_cb_arg, i32 0, i32 12
  %50 = call ptr @memcpy(ptr %resp, ptr %resp_data135, i32 %9)
  br label %if.end138

if.end138:                                        ; preds = %if.else134, %do.end131, %do.end121
  %ret.1 = phi i32 [ -121, %do.end121 ], [ -121, %do.end131 ], [ %ret.0, %if.else134 ]
  %51 = ptrtoint ptr %gpio_cmd to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %gpio_cmd, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %52, i32 noundef 0) #9
  %53 = ptrtoint ptr %cmd_running to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %cmd_running, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_state_lock, i32 noundef %call110) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end138, %do.end.i.i, %spi_message_init_with_transfers.exit.i.i.cleanup_crit_edge, %do.end63, %do.end26, %do.end8
  %retval.0 = phi i32 [ -75, %do.end8 ], [ -16, %do.end26 ], [ -75, %do.end63 ], [ %ret.1, %if.end138 ], [ -110, %spi_message_init_with_transfers.exit.i.i.cleanup_crit_edge ], [ -110, %do.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_slave_abort(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @olpc_ec_cmd(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @olpc_xo175_ec_resume_noirq(ptr nocapture noundef readonly %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @olpc_xo175_ec_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  store i8 1, ptr @olpc_xo175_ec_suspend.hintargs, align 1
  %2 = load i32, ptr @olpc_xo175_ec_suspend.suspend_count, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr @olpc_xo175_ec_suspend.suspend_count, align 4
  store i32 %2, ptr getelementptr inbounds (%struct.anon.74, ptr @olpc_xo175_ec_suspend.hintargs, i32 0, i32 1), align 1
  %call1 = tail call i32 @olpc_ec_cmd(i8 noundef zeroext 101, ptr noundef nonnull @olpc_xo175_ec_suspend.hintargs, i32 noundef 5, ptr noundef null, i32 noundef 0) #9
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @olpc_xo175_ec_resume(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  %args.i = alloca [2 x i8], align 2
  %x = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %x) #9
  %0 = ptrtoint ptr %x to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %x, align 1
  %call = call i32 @olpc_ec_cmd(i8 noundef zeroext 101, ptr noundef nonnull %x, i32 noundef 1, ptr noundef null, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %args.i) #9
  %1 = ptrtoint ptr %args.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %args.i, align 2
  %call.i = call i32 @olpc_ec_cmd(i8 noundef zeroext 56, ptr noundef nonnull %args.i, i32 noundef 2, ptr noundef null, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %args.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %x) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !35, !37, !38, !39, !41, !43, !44, !45, !46, !48, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !98, !100, !101, !103, !104, !105, !107, !108, !109, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !145, !147, !149}
!llvm.module.flags = !{!151, !152, !153, !154, !155, !156, !157, !158}
!llvm.ident = !{!159}

!0 = !{ptr @__initcall__kmod_olpc_xo175_ec__236_754_olpc_xo175_ec_spi_driver_init6, !1, !"__initcall__kmod_olpc_xo175_ec__236_754_olpc_xo175_ec_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 754, i32 1}
!2 = !{ptr @__exitcall_olpc_xo175_ec_spi_driver_exit, !1, !"__exitcall_olpc_xo175_ec_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description237, !4, !"__UNIQUE_ID_description237", i1 false, i1 false}
!4 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 756, i32 1}
!5 = !{ptr @__UNIQUE_ID_author238, !6, !"__UNIQUE_ID_author238", i1 false, i1 false}
!6 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 757, i32 1}
!7 = !{ptr @__UNIQUE_ID_author239, !8, !"__UNIQUE_ID_author239", i1 false, i1 false}
!8 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 758, i32 1}
!9 = !{ptr @__UNIQUE_ID_file240, !10, !"__UNIQUE_ID_file240", i1 false, i1 false}
!10 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 759, i32 1}
!11 = !{ptr @__UNIQUE_ID_license241, !10, !"__UNIQUE_ID_license241", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 747, i32 11}
!14 = !{ptr @olpc_xo175_ec_spi_driver, !15, !"olpc_xo175_ec_spi_driver", i1 false, i1 false}
!15 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 745, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 670, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @olpc_xo175_ec_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @olpc_xo175_ec_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 678, i32 45}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 680, i32 3}
!28 = !{ptr @olpc_xo175_ec_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @olpc_xo175_ec_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @olpc_xo175_ec_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 687, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 697, i32 23}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 702, i32 3}
!37 = !{ptr @olpc_xo175_ec_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @olpc_xo175_ec_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 714, i32 57}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 723, i32 2}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @olpc_xo175_ec_probe._entry.16, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @olpc_xo175_ec_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @olpc_ec, !47, !"olpc_ec", i1 false, i1 false}
!47 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 252, i32 32}
!48 = !{ptr @init_completion.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../include/linux/completion.h", i32 87, i32 2}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 290, i32 3}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @olpc_xo175_ec_send_command._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @olpc_xo175_ec_send_command._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 312, i32 3}
!58 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @olpc_xo175_ec_complete._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @olpc_xo175_ec_complete._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 337, i32 4}
!63 = !{ptr @olpc_xo175_ec_complete._entry.25, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @olpc_xo175_ec_complete._entry_ptr.27, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 355, i32 4}
!67 = !{ptr @olpc_xo175_ec_complete._entry.28, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @olpc_xo175_ec_complete._entry_ptr.30, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 373, i32 4}
!71 = !{ptr @olpc_xo175_ec_complete._entry.31, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @olpc_xo175_ec_complete._entry_ptr.33, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 375, i32 4}
!75 = !{ptr @olpc_xo175_ec_complete._entry.34, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @olpc_xo175_ec_complete._entry_ptr.36, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 391, i32 4}
!79 = !{ptr @olpc_xo175_ec_complete._entry.37, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @olpc_xo175_ec_complete._entry_ptr.39, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 402, i32 3}
!83 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @olpc_xo175_ec_complete._entry.40, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @olpc_xo175_ec_complete._entry_ptr.43, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 406, i32 3}
!88 = !{ptr @olpc_xo175_ec_complete._entry.44, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @olpc_xo175_ec_complete._entry_ptr.46, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 410, i32 3}
!92 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @olpc_xo175_ec_complete.__UNIQUE_ID_ddebug231, !91, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 413, i32 35}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 423, i32 35}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 441, i32 4}
!100 = !{ptr @olpc_xo175_ec_complete.__UNIQUE_ID_ddebug232, !99, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!101 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 457, i32 3}
!103 = !{ptr @olpc_xo175_ec_complete._entry.52, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @olpc_xo175_ec_complete._entry_ptr.54, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 268, i32 2}
!107 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @olpc_xo175_ec_flush_logbuf.__UNIQUE_ID_ddebug230, !106, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!109 = !{ptr @olpc_xo175_ec_driver, !110, !"olpc_xo175_ec_driver", i1 false, i1 false}
!110 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 647, i32 30}
!111 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 482, i32 2}
!113 = !{ptr @.str.58, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @olpc_xo175_ec_cmd.__UNIQUE_ID_ddebug233, !112, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!115 = !{ptr @.str.59, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 485, i32 3}
!117 = !{ptr @olpc_xo175_ec_cmd._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @olpc_xo175_ec_cmd._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 496, i32 3}
!121 = !{ptr @olpc_xo175_ec_cmd._rs, !120, !"_rs", i1 false, i1 false}
!122 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @olpc_xo175_ec_cmd._entry.61, !120, !"_entry", i1 false, i1 false}
!124 = !{ptr @olpc_xo175_ec_cmd._entry_ptr.63, !120, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 504, i32 4}
!127 = !{ptr @olpc_xo175_ec_cmd._entry.64, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @olpc_xo175_ec_cmd._entry_ptr.66, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.68, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 536, i32 3}
!131 = !{ptr @olpc_xo175_ec_cmd._entry.67, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @olpc_xo175_ec_cmd._entry_ptr.69, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.71, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 549, i32 3}
!135 = !{ptr @olpc_xo175_ec_cmd._entry.70, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @olpc_xo175_ec_cmd._entry_ptr.72, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.74, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 553, i32 3}
!139 = !{ptr @olpc_xo175_ec_cmd._entry.73, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @olpc_xo175_ec_cmd._entry_ptr.75, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @olpc_xo175_ec_cmds, !142, !"olpc_xo175_ec_cmds", i1 false, i1 false}
!142 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 131, i32 30}
!143 = !{ptr @olpc_xo175_ec_of_match, !144, !"olpc_xo175_ec_of_match", i1 false, i1 false}
!144 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 733, i32 34}
!145 = !{ptr @olpc_xo175_ec_pm_ops, !146, !"olpc_xo175_ec_pm_ops", i1 false, i1 false}
!146 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 728, i32 32}
!147 = !{ptr @olpc_xo175_ec_suspend.hintargs, !148, !"hintargs", i1 false, i1 false}
!148 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 598, i32 13}
!149 = !{ptr @olpc_xo175_ec_suspend.suspend_count, !150, !"suspend_count", i1 false, i1 false}
!150 = !{!"../drivers/platform/olpc/olpc-xo175-ec.c", i32 599, i32 22}
!151 = !{i32 1, !"wchar_size", i32 2}
!152 = !{i32 1, !"min_enum_size", i32 4}
!153 = !{i32 8, !"branch-target-enforcement", i32 0}
!154 = !{i32 8, !"sign-return-address", i32 0}
!155 = !{i32 8, !"sign-return-address-all", i32 0}
!156 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!157 = !{i32 7, !"uwtable", i32 1}
!158 = !{i32 7, !"frame-pointer", i32 2}
!159 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!160 = !{i8 0, i8 2}
!161 = !{i64 2148334709, i64 2148334714, i64 2148334727, i64 2148334771, i64 2148334805, i64 2148334826}
!162 = !{!"branch_weights", i32 2000, i32 1}
