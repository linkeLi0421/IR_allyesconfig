; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/i2c.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mlxsw_i2c_driver_register\22, \22a\22\09"
module asm "\09.weak\09__crc_mlxsw_i2c_driver_register\09\09\09\09"
module asm "\09.long\09__crc_mlxsw_i2c_driver_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlxsw_i2c_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22mlxsw_i2c_driver_register\22\09\09\09\09\09"
module asm "__kstrtabns_mlxsw_i2c_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mlxsw_i2c_driver_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_mlxsw_i2c_driver_unregister\09\09\09\09"
module asm "\09.long\09__crc_mlxsw_i2c_driver_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlxsw_i2c_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22mlxsw_i2c_driver_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_mlxsw_i2c_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlxsw_bus = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.mlxsw_i2c = type { %struct.anon.129, ptr, ptr, %struct.mlxsw_bus_info, i16 }
%struct.anon.129 = type { i32, i32, i32, i32, %struct.mutex }
%struct.mlxsw_bus_info = type { ptr, ptr, ptr, %struct.mlxsw_fw_rev, [208 x i8], [16 x i8], i8, i8, [4 x i8] }
%struct.mlxsw_fw_rev = type { i16, i16, i16, i16 }

@__kstrtab_mlxsw_i2c_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlxsw_i2c_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab_mlxsw_i2c_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlxsw_i2c_driver_register to i32), ptr @__kstrtab_mlxsw_i2c_driver_register, ptr @__kstrtabns_mlxsw_i2c_driver_register }, section "___ksymtab+mlxsw_i2c_driver_register", align 4
@__kstrtab_mlxsw_i2c_driver_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlxsw_i2c_driver_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_mlxsw_i2c_driver_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlxsw_i2c_driver_unregister to i32), ptr @__kstrtab_mlxsw_i2c_driver_unregister, ptr @__kstrtabns_mlxsw_i2c_driver_unregister }, section "___ksymtab+mlxsw_i2c_driver_unregister", align 4
@__UNIQUE_ID_author378 = internal constant [55 x i8] c"mlxsw_i2c.author=Vadim Pasternak <vadimp@mellanox.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description379 = internal constant [59 x i8] c"mlxsw_i2c.description=Mellanox switch I2C interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file380 = internal constant [61 x i8] c"mlxsw_i2c.file=drivers/net/ethernet/mellanox/mlxsw/mlxsw_i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license381 = internal constant [31 x i8] c"mlxsw_i2c.license=Dual BSD/GPL\00", section ".modinfo", align 1
@mlxsw_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 575, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Insufficient transaction buffer length\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mlxsw_i2c_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/mellanox/mlxsw/i2c.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlxsw_i2c_probe._entry_ptr = internal global ptr @mlxsw_i2c_probe._entry, section ".printk_index", align 4
@mlxsw_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&mlxsw_i2c->cmd.lock\00", [43 x i8] zeroinitializer }, align 32
@mlxsw_i2c_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 604, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not start transaction\00", [36 x i8] zeroinitializer }, align 32
@mlxsw_i2c_probe._entry_ptr.8 = internal global ptr @mlxsw_i2c_probe._entry.6, section ".printk_index", align 4
@mlxsw_i2c_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 611, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HW semaphore is not released\00", [35 x i8] zeroinitializer }, align 32
@mlxsw_i2c_probe._entry_ptr.11 = internal global ptr @mlxsw_i2c_probe._entry.9, section ".printk_index", align 4
@mlxsw_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 618, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Bad transaction completion status %x\0A\00", [58 x i8] zeroinitializer }, align 32
@mlxsw_i2c_probe._entry_ptr.14 = internal global ptr @mlxsw_i2c_probe._entry.12, section ".printk_index", align 4
@mlxsw_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 626, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Fail to get mailboxes\0A\00", [41 x i8] zeroinitializer }, align 32
@mlxsw_i2c_probe._entry_ptr.17 = internal global ptr @mlxsw_i2c_probe._entry.15, section ".printk_index", align 4
@mlxsw_i2c_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 633, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s mb size=%x off=0x%08x out mb size=%x off=0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mlxsw_i2c_probe._entry_ptr.21 = internal global ptr @mlxsw_i2c_probe._entry.18, section ".printk_index", align 4
@mlxsw_i2c_bus = internal constant { %struct.mlxsw_bus, [60 x i8] } { %struct.mlxsw_bus { ptr @.str.27, ptr @mlxsw_i2c_init, ptr @mlxsw_i2c_fini, ptr @mlxsw_i2c_skb_transmit_busy, ptr @mlxsw_i2c_skb_transmit, ptr @mlxsw_i2c_cmd_exec, ptr null, ptr null, i8 0 }, [60 x i8] zeroinitializer }, align 32
@mlxsw_i2c_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 646, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Fail to register core bus\0A\00", [37 x i8] zeroinitializer }, align 32
@mlxsw_i2c_probe._entry_ptr.24 = internal global ptr @mlxsw_i2c_probe._entry.22, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mlxsw_i2c_get_mbox._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 299, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not obtain mail boxes\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlxsw_i2c_get_mbox\00", [45 x i8] zeroinitializer }, align 32
@mlxsw_i2c_get_mbox._entry_ptr = internal global ptr @mlxsw_i2c_get_mbox._entry, section ".printk_index", align 4
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.30, i32 35, ptr null, ptr null }, align 1
@.str.28 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cmd_mbox_query_fw_fw_rev_major\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cmd_mbox_query_fw_fw_rev_minor\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cmd_mbox_query_fw_fw_rev_subminor\00", [62 x i8] zeroinitializer }, align 32
@mlxsw_i2c_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 415, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Could not acquire lock\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mlxsw_i2c_cmd\00", [18 x i8] zeroinitializer }, align 32
@mlxsw_i2c_cmd._entry_ptr = internal global ptr @mlxsw_i2c_cmd._entry, section ".printk_index", align 4
@mlxsw_i2c_cmd._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 434, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxsw_i2c_cmd._entry_ptr.40 = internal global ptr @mlxsw_i2c_cmd._entry.39, section ".printk_index", align 4
@mlxsw_i2c_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.41, ptr @.str.2, i32 366, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mlxsw_i2c_write\00", [16 x i8] zeroinitializer }, align 32
@mlxsw_i2c_write._entry_ptr = internal global ptr @mlxsw_i2c_write._entry, section ".printk_index", align 4
@mlxsw_i2c_write._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.41, ptr @.str.2, i32 374, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxsw_i2c_write._entry_ptr.43 = internal global ptr @mlxsw_i2c_write._entry.42, section ".printk_index", align 4
@mlxsw_i2c_write._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.41, ptr @.str.2, i32 381, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxsw_i2c_write._entry_ptr.45 = internal global ptr @mlxsw_i2c_write._entry.44, section ".printk_index", align 4
@mlxsw_i2c_write_init_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.46, ptr @.str.2, i32 271, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlxsw_i2c_write_init_cmd\00", [39 x i8] zeroinitializer }, align 32
@mlxsw_i2c_write_init_cmd._entry_ptr = internal global ptr @mlxsw_i2c_write_init_cmd._entry, section ".printk_index", align 4
@mlxsw_i2c_write_init_cmd._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.46, ptr @.str.2, i32 278, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxsw_i2c_write_init_cmd._entry_ptr.48 = internal global ptr @mlxsw_i2c_write_init_cmd._entry.47, section ".printk_index", align 4
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 575, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 587, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 604, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 611, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 617, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 626, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 630, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [14 x i8] c"mlxsw_i2c_bus\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 549, i32 31 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 646, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 299, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 550, i32 12 }
@___asan_gen_.134 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 33, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 214, i32 1 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 224, i32 1 }
@___asan_gen_.143 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/cmd.h\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 219, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 415, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 434, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 366, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 374, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 380, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 271, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.176 = private constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/i2c.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 277, i32 3 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_author378, ptr @__UNIQUE_ID_description379, ptr @__UNIQUE_ID_file380, ptr @__UNIQUE_ID_license381, ptr @__ksymtab_mlxsw_i2c_driver_register, ptr @__ksymtab_mlxsw_i2c_driver_unregister, ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_i2c_cmd._entry, ptr @mlxsw_i2c_cmd._entry.39, ptr @mlxsw_i2c_cmd._entry_ptr, ptr @mlxsw_i2c_cmd._entry_ptr.40, ptr @mlxsw_i2c_get_mbox._entry, ptr @mlxsw_i2c_get_mbox._entry_ptr, ptr @mlxsw_i2c_probe._entry, ptr @mlxsw_i2c_probe._entry.12, ptr @mlxsw_i2c_probe._entry.15, ptr @mlxsw_i2c_probe._entry.18, ptr @mlxsw_i2c_probe._entry.22, ptr @mlxsw_i2c_probe._entry.6, ptr @mlxsw_i2c_probe._entry.9, ptr @mlxsw_i2c_probe._entry_ptr, ptr @mlxsw_i2c_probe._entry_ptr.11, ptr @mlxsw_i2c_probe._entry_ptr.14, ptr @mlxsw_i2c_probe._entry_ptr.17, ptr @mlxsw_i2c_probe._entry_ptr.21, ptr @mlxsw_i2c_probe._entry_ptr.24, ptr @mlxsw_i2c_probe._entry_ptr.8, ptr @mlxsw_i2c_write._entry, ptr @mlxsw_i2c_write._entry.42, ptr @mlxsw_i2c_write._entry.44, ptr @mlxsw_i2c_write._entry_ptr, ptr @mlxsw_i2c_write._entry_ptr.43, ptr @mlxsw_i2c_write._entry_ptr.45, ptr @mlxsw_i2c_write_init_cmd._entry, ptr @mlxsw_i2c_write_init_cmd._entry.47, ptr @mlxsw_i2c_write_init_cmd._entry_ptr, ptr @mlxsw_i2c_write_init_cmd._entry_ptr.48, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mlxsw_i2c_probe.__key, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @mlxsw_i2c_bus, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.41, ptr @.str.46], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_i2c_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_i2c_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_i2c_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_i2c_bus to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_i2c_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_i2c_get_mbox._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_i2c_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_i2c_cmd._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_i2c_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_i2c_write._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_i2c_write._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_i2c_write_init_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_i2c_write_init_cmd._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_i2c_driver_register(ptr noundef %i2c_driver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %probe = getelementptr inbounds %struct.i2c_driver, ptr %i2c_driver, i32 0, i32 1
  %0 = ptrtoint ptr %probe to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mlxsw_i2c_probe, ptr %probe, align 4
  %remove = getelementptr inbounds %struct.i2c_driver, ptr %i2c_driver, i32 0, i32 2
  %1 = ptrtoint ptr %remove to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @mlxsw_i2c_remove, ptr %remove, align 4
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef %i2c_driver) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_i2c_probe(ptr noundef %client, ptr noundef %id) #0 align 64 {
entry:
  %push_cmd_buf.i = alloca [2 x i32], align 8
  %prep_cmd_buf.i = alloca [8 x i32], align 4
  %push_cmd.i = alloca %struct.i2c_msg, align 4
  %prep_cmd.i = alloca %struct.i2c_msg, align 4
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %quirks1 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %quirks1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %quirks1, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #9
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %status, align 1, !annotation !105
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 372, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end40_crit_edge, label %if.then3

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then3:                                         ; preds = %if.end
  %max_read_len = getelementptr inbounds %struct.i2c_adapter_quirks, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %max_read_len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %max_read_len, align 2
  %7 = add i16 %6, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %7)
  %8 = icmp ult i16 %7, 31
  br i1 %8, label %if.then3.do.end_crit_edge, label %lor.lhs.false

if.then3.do.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %if.then3
  %max_write_len = getelementptr inbounds %struct.i2c_adapter_quirks, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %max_write_len to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %max_write_len, align 4
  %11 = add i16 %10, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %11)
  %12 = icmp ult i16 %11, 31
  br i1 %12, label %lor.lhs.false.do.end_crit_edge, label %if.end17

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.then3.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #12
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %13 = tail call i16 @llvm.umin.i16(i16 %6, i16 %10)
  %14 = tail call i16 @llvm.umax.i16(i16 %13, i16 32)
  br label %if.end40

if.end40:                                         ; preds = %if.end17, %if.end.if.end40_crit_edge
  %.sink = phi i16 [ %14, %if.end17 ], [ 32, %if.end.if.end40_crit_edge ]
  %block_size39 = getelementptr inbounds %struct.mlxsw_i2c, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %block_size39 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %.sink, ptr %block_size39, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.anon.129, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @mlxsw_i2c_probe.__key) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %push_cmd_buf.i) #9
  %17 = ptrtoint ptr %push_cmd_buf.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 2005612296671236, ptr %push_cmd_buf.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %prep_cmd_buf.i) #9
  %18 = getelementptr inbounds [8 x i32], ptr %prep_cmd_buf.i, i32 0, i32 6
  %19 = getelementptr inbounds [8 x i32], ptr %prep_cmd_buf.i, i32 0, i32 7
  %20 = getelementptr inbounds i8, ptr %prep_cmd_buf.i, i32 4
  %21 = call ptr @memset(ptr %20, i32 0, i32 20)
  %22 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr.i, align 4
  %and.i = and i32 %25, 65535
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and.i, ptr %18, align 4
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4100, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %push_cmd.i) #9
  %28 = getelementptr inbounds i8, ptr %push_cmd.i, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 589823, ptr %28, align 4
  %addr7.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %30 = ptrtoint ptr %addr7.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %addr7.i, align 2
  %32 = ptrtoint ptr %push_cmd.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %push_cmd.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %push_cmd.i, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %push_cmd.i, i32 0, i32 3
  %34 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %push_cmd_buf.i, ptr %buf.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %prep_cmd.i) #9
  %35 = getelementptr inbounds i8, ptr %prep_cmd.i, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2162687, ptr %35, align 4
  %37 = ptrtoint ptr %prep_cmd.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %31, ptr %prep_cmd.i, align 4
  %flags10.i = getelementptr inbounds %struct.i2c_msg, ptr %prep_cmd.i, i32 0, i32 1
  %38 = ptrtoint ptr %flags10.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags10.i, align 2
  %buf12.i = getelementptr inbounds %struct.i2c_msg, ptr %prep_cmd.i, i32 0, i32 3
  %39 = ptrtoint ptr %buf12.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %prep_cmd_buf.i, ptr %buf12.i, align 4
  %40 = ptrtoint ptr %prep_cmd_buf.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 466944, ptr %prep_cmd_buf.i, align 4
  %call.i160 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %prep_cmd.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160)
  %cmp.i = icmp slt i32 %call.i160, 0
  br i1 %cmp.i, label %if.end40.do.end49_crit_edge, label %if.else.i

if.end40.do.end49_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end49

if.else.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i160)
  %cmp19.not.i = icmp eq i32 %call.i160, 1
  br i1 %cmp19.not.i, label %if.end22.i, label %if.else.i.do.end49_crit_edge

if.else.i.do.end49_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end49

if.end22.i:                                       ; preds = %if.else.i
  %41 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adapter, align 8
  %call24.i = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %push_cmd.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp slt i32 %call24.i, 0
  br i1 %cmp25.i, label %if.end22.i.do.end49_crit_edge, label %if.else27.i

if.end22.i.do.end49_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end49

if.else27.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call24.i)
  %cmp28.not.i = icmp eq i32 %call24.i, 1
  br i1 %cmp28.not.i, label %if.end51, label %if.else27.i.do.end49_crit_edge

if.else27.i.do.end49_crit_edge:                   ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end49

do.end49:                                         ; preds = %if.else27.i.do.end49_crit_edge, %if.end22.i.do.end49_crit_edge, %if.else.i.do.end49_crit_edge, %if.end40.do.end49_crit_edge
  %retval.0.i.ph = phi i32 [ -5, %if.else27.i.do.end49_crit_edge ], [ %call24.i, %if.end22.i.do.end49_crit_edge ], [ -5, %if.else.i.do.end49_crit_edge ], [ %call.i160, %if.end40.do.end49_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %prep_cmd.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %push_cmd.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %prep_cmd_buf.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %push_cmd_buf.i) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #12
  br label %errout

if.end51:                                         ; preds = %if.else27.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %prep_cmd.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %push_cmd.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %prep_cmd_buf.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %push_cmd_buf.i) #9
  %call52 = call fastcc i32 @mlxsw_i2c_wait_go_bit(ptr noundef %client, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end59, label %do.end57

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #12
  br label %errout

if.end59:                                         ; preds = %if.end51
  %43 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool60.not = icmp eq i8 %44, 0
  br i1 %tobool60.not, label %if.end67, label %do.end64

do.end64:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %conv66 = zext i8 %44 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %conv66) #12
  br label %errout

if.end67:                                         ; preds = %if.end59
  %call68 = call fastcc i32 @mlxsw_i2c_get_mbox(ptr noundef %client, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %do.end74, label %do.end79

do.end74:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #12
  br label %errout

do.end79:                                         ; preds = %if.end67
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %call.i, align 4
  %mb_off_in = getelementptr inbounds %struct.anon.129, ptr %call.i, i32 0, i32 1
  %47 = ptrtoint ptr %mb_off_in to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mb_off_in, align 4
  %mb_size_out = getelementptr inbounds %struct.anon.129, ptr %call.i, i32 0, i32 2
  %49 = ptrtoint ptr %mb_size_out to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mb_size_out, align 4
  %mb_off_out = getelementptr inbounds %struct.anon.129, ptr %call.i, i32 0, i32 3
  %51 = ptrtoint ptr %mb_off_out to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mb_off_out, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef %id, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52) #12
  %bus_info = getelementptr inbounds %struct.mlxsw_i2c, ptr %call.i, i32 0, i32 3
  %53 = ptrtoint ptr %bus_info to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %id, ptr %bus_info, align 4
  %name87 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %device_name = getelementptr inbounds %struct.mlxsw_i2c, ptr %call.i, i32 0, i32 3, i32 1
  %54 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %name87, ptr %device_name, align 4
  %dev92 = getelementptr inbounds %struct.mlxsw_i2c, ptr %call.i, i32 0, i32 3, i32 2
  %55 = ptrtoint ptr %dev92 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %dev, ptr %dev92, align 4
  %low_frequency = getelementptr inbounds %struct.mlxsw_i2c, ptr %call.i, i32 0, i32 3, i32 6
  %56 = ptrtoint ptr %low_frequency to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load = load i8, ptr %low_frequency, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %low_frequency, align 4
  %dev95 = getelementptr inbounds %struct.mlxsw_i2c, ptr %call.i, i32 0, i32 1
  %57 = ptrtoint ptr %dev95 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %dev, ptr %dev95, align 4
  %call97 = call i32 @mlxsw_core_bus_device_register(ptr noundef %bus_info, ptr noundef nonnull @mlxsw_i2c_bus, ptr noundef nonnull %call.i, i1 noundef zeroext false, ptr noundef null, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %do.end79.cleanup_crit_edge, label %do.end102

do.end79.cleanup_crit_edge:                       ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end102:                                        ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #12
  br label %cleanup

errout:                                           ; preds = %do.end74, %do.end64, %do.end57, %do.end49
  %err.0 = phi i32 [ %retval.0.i.ph, %do.end49 ], [ %call52, %do.end57 ], [ -5, %do.end64 ], [ %call68, %do.end74 ]
  %58 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %errout, %do.end102, %do.end79.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end ], [ %err.0, %errout ], [ %call97, %do.end102 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end79.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_i2c_remove(ptr nocapture noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_i2c, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  tail call void @mlxsw_core_bus_device_unregister(ptr noundef %3, i1 noundef zeroext false) #9
  %lock = getelementptr inbounds %struct.anon.129, ptr %1, i32 0, i32 4
  tail call void @mutex_destroy(ptr noundef %lock) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_i2c_driver_unregister(ptr noundef %i2c_driver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @i2c_del_driver(ptr noundef %i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_i2c_write_cmd(ptr nocapture noundef readonly %client, i32 noundef %immediate) unnamed_addr #0 align 64 {
entry:
  %push_cmd_buf = alloca [2 x i32], align 8
  %prep_cmd_buf = alloca [8 x i32], align 4
  %push_cmd = alloca %struct.i2c_msg, align 4
  %prep_cmd = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %push_cmd_buf) #9
  %0 = ptrtoint ptr %push_cmd_buf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 8392708, ptr %push_cmd_buf, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %prep_cmd_buf) #9
  %1 = getelementptr inbounds [8 x i32], ptr %prep_cmd_buf, i32 0, i32 6
  %2 = getelementptr inbounds [8 x i32], ptr %prep_cmd_buf, i32 0, i32 7
  %3 = getelementptr inbounds i8, ptr %prep_cmd_buf, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 20)
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 8
  %nr = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr, align 4
  %and = and i32 %8, 65535
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %1, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4100, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %push_cmd) #9
  %11 = getelementptr inbounds i8, ptr %push_cmd, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4
  %addr7 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %13 = ptrtoint ptr %addr7 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr7, align 2
  %15 = ptrtoint ptr %push_cmd to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %push_cmd, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %push_cmd, i32 0, i32 1
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %push_cmd, i32 0, i32 2
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 8, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %push_cmd, i32 0, i32 3
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %push_cmd_buf, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %prep_cmd) #9
  %19 = getelementptr inbounds i8, ptr %prep_cmd, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %19, align 4
  %21 = ptrtoint ptr %prep_cmd to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %14, ptr %prep_cmd, align 4
  %flags10 = getelementptr inbounds %struct.i2c_msg, ptr %prep_cmd, i32 0, i32 1
  %22 = ptrtoint ptr %flags10 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %flags10, align 2
  %len11 = getelementptr inbounds %struct.i2c_msg, ptr %prep_cmd, i32 0, i32 2
  %23 = ptrtoint ptr %len11 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 32, ptr %len11, align 4
  %buf12 = getelementptr inbounds %struct.i2c_msg, ptr %prep_cmd, i32 0, i32 3
  %24 = ptrtoint ptr %buf12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %prep_cmd_buf, ptr %buf12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %immediate)
  %tobool.not = icmp eq i32 %immediate, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr inbounds [2 x i32], ptr %push_cmd_buf, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8388672, ptr %arrayidx, align 4
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 64, ptr %2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %27 = ptrtoint ptr %prep_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 466944, ptr %prep_cmd_buf, align 4
  %28 = ptrtoint ptr %push_cmd_buf to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 466968, ptr %push_cmd_buf, align 8
  %call = call i32 @i2c_transfer(ptr noundef %6, ptr noundef nonnull %prep_cmd, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp19.not = icmp eq i32 %call, 1
  br i1 %cmp19.not, label %if.end22, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.else
  %29 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter, align 8
  %call24 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %push_cmd, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end22.cleanup_crit_edge, label %if.else27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call24)
  %cmp28.not = icmp eq i32 %call24, 1
  %. = select i1 %cmp28.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.else27, %if.end22.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end.cleanup_crit_edge ], [ -5, %if.else.cleanup_crit_edge ], [ %call24, %if.end22.cleanup_crit_edge ], [ %., %if.else27 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %prep_cmd) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %push_cmd) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %prep_cmd_buf) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %push_cmd_buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_i2c_wait_go_bit(ptr nocapture noundef readonly %client, ptr nocapture noundef %p_status) unnamed_addr #0 align 64 {
entry:
  %addr_buf = alloca [4 x i8], align 4
  %buf = alloca [4 x i8], align 4
  %read_sema = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr_buf) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #9
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %read_sema) #9
  %1 = getelementptr inbounds i8, ptr %read_sema, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %3 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr1, align 2
  %5 = ptrtoint ptr %read_sema to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %read_sema, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %read_sema, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags, align 2
  %len2 = getelementptr inbounds %struct.i2c_msg, ptr %read_sema, i32 0, i32 2
  %7 = ptrtoint ptr %len2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 4, ptr %len2, align 4
  %buf3 = getelementptr inbounds %struct.i2c_msg, ptr %read_sema, i32 0, i32 3
  %8 = ptrtoint ptr %buf3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %addr_buf, ptr %buf3, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %read_sema, i32 1
  %9 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %4, ptr %arrayinit.element, align 4
  %flags6 = getelementptr inbounds %struct.i2c_msg, ptr %read_sema, i32 1, i32 1
  %10 = ptrtoint ptr %flags6 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags6, align 2
  %len7 = getelementptr inbounds %struct.i2c_msg, ptr %read_sema, i32 1, i32 2
  %11 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4, ptr %len7, align 4
  %buf8 = getelementptr inbounds %struct.i2c_msg, ptr %read_sema, i32 1, i32 3
  %12 = ptrtoint ptr %buf8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %buf8, align 4
  %13 = ptrtoint ptr %addr_buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 466968, ptr %addr_buf, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %add.neg = sub i32 -500, %14
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %15 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter, align 8
  %call12 = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %read_sema, i32 noundef 2) #9
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call12)
  %cmp = icmp eq i32 %call12, 2
  %and = and i32 %18, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %or.cond, label %do.body.do.end.thread_crit_edge, label %do.cond

do.body.do.end.thread_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.thread

do.end.thread:                                    ; preds = %do.body.5.do.end.thread_crit_edge, %do.body.4.do.end.thread_crit_edge, %do.body.3.do.end.thread_crit_edge, %do.body.2.do.end.thread_crit_edge, %do.body.1.do.end.thread_crit_edge, %do.body.do.end.thread_crit_edge
  %.lcssa = phi i32 [ %45, %do.body.5.do.end.thread_crit_edge ], [ %40, %do.body.4.do.end.thread_crit_edge ], [ %35, %do.body.3.do.end.thread_crit_edge ], [ %30, %do.body.2.do.end.thread_crit_edge ], [ %25, %do.body.1.do.end.thread_crit_edge ], [ %18, %do.body.do.end.thread_crit_edge ]
  %shr = lshr i32 %.lcssa, 24
  %conv16 = trunc i32 %shr to i8
  %19 = ptrtoint ptr %p_status to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv16, ptr %p_status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv16)
  %tobool25.not = icmp eq i8 %conv16, 0
  %20 = select i1 %tobool25.not, i32 0, i32 -5
  br label %cleanup31

do.cond:                                          ; preds = %do.body
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 166, i32 noundef 0) #9
  %call.i = call i32 @__cond_resched() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %21
  %cmp19 = icmp slt i32 %sub, 0
  br i1 %cmp19, label %do.cond.do.body_crit_edge, label %do.cond.do.body.1_crit_edge

do.cond.do.body.1_crit_edge:                      ; preds = %do.cond
  br label %do.body.1

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body.1:                                        ; preds = %do.cond.1.do.body.1_crit_edge, %do.cond.do.body.1_crit_edge
  %22 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter, align 8
  %call12.1 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %read_sema, i32 noundef 2) #9
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call12.1)
  %cmp.1 = icmp eq i32 %call12.1, 2
  %and.1 = and i32 %25, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  %or.cond.1 = select i1 %cmp.1, i1 %tobool.not.1, i1 false
  br i1 %or.cond.1, label %do.body.1.do.end.thread_crit_edge, label %do.cond.1

do.body.1.do.end.thread_crit_edge:                ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.thread

do.cond.1:                                        ; preds = %do.body.1
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 166, i32 noundef 0) #9
  %call.i.1 = call i32 @__cond_resched() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub.1 = add i32 %add.neg, %26
  %cmp19.1 = icmp slt i32 %sub.1, 0
  br i1 %cmp19.1, label %do.cond.1.do.body.1_crit_edge, label %do.cond.1.do.body.2_crit_edge

do.cond.1.do.body.2_crit_edge:                    ; preds = %do.cond.1
  br label %do.body.2

do.cond.1.do.body.1_crit_edge:                    ; preds = %do.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.1

do.body.2:                                        ; preds = %do.cond.2.do.body.2_crit_edge, %do.cond.1.do.body.2_crit_edge
  %27 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter, align 8
  %call12.2 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %read_sema, i32 noundef 2) #9
  %29 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call12.2)
  %cmp.2 = icmp eq i32 %call12.2, 2
  %and.2 = and i32 %30, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  %or.cond.2 = select i1 %cmp.2, i1 %tobool.not.2, i1 false
  br i1 %or.cond.2, label %do.body.2.do.end.thread_crit_edge, label %do.cond.2

do.body.2.do.end.thread_crit_edge:                ; preds = %do.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.thread

do.cond.2:                                        ; preds = %do.body.2
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 166, i32 noundef 0) #9
  %call.i.2 = call i32 @__cond_resched() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %sub.2 = add i32 %add.neg, %31
  %cmp19.2 = icmp slt i32 %sub.2, 0
  br i1 %cmp19.2, label %do.cond.2.do.body.2_crit_edge, label %do.cond.2.do.body.3_crit_edge

do.cond.2.do.body.3_crit_edge:                    ; preds = %do.cond.2
  br label %do.body.3

do.cond.2.do.body.2_crit_edge:                    ; preds = %do.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.2

do.body.3:                                        ; preds = %do.cond.3.do.body.3_crit_edge, %do.cond.2.do.body.3_crit_edge
  %32 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adapter, align 8
  %call12.3 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %read_sema, i32 noundef 2) #9
  %34 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call12.3)
  %cmp.3 = icmp eq i32 %call12.3, 2
  %and.3 = and i32 %35, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  %or.cond.3 = select i1 %cmp.3, i1 %tobool.not.3, i1 false
  br i1 %or.cond.3, label %do.body.3.do.end.thread_crit_edge, label %do.cond.3

do.body.3.do.end.thread_crit_edge:                ; preds = %do.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.thread

do.cond.3:                                        ; preds = %do.body.3
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 166, i32 noundef 0) #9
  %call.i.3 = call i32 @__cond_resched() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %sub.3 = add i32 %add.neg, %36
  %cmp19.3 = icmp slt i32 %sub.3, 0
  br i1 %cmp19.3, label %do.cond.3.do.body.3_crit_edge, label %do.cond.3.do.body.4_crit_edge

do.cond.3.do.body.4_crit_edge:                    ; preds = %do.cond.3
  br label %do.body.4

do.cond.3.do.body.3_crit_edge:                    ; preds = %do.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.3

do.body.4:                                        ; preds = %do.cond.4.do.body.4_crit_edge, %do.cond.3.do.body.4_crit_edge
  %37 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adapter, align 8
  %call12.4 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %read_sema, i32 noundef 2) #9
  %39 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call12.4)
  %cmp.4 = icmp eq i32 %call12.4, 2
  %and.4 = and i32 %40, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  %or.cond.4 = select i1 %cmp.4, i1 %tobool.not.4, i1 false
  br i1 %or.cond.4, label %do.body.4.do.end.thread_crit_edge, label %do.cond.4

do.body.4.do.end.thread_crit_edge:                ; preds = %do.body.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.thread

do.cond.4:                                        ; preds = %do.body.4
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 166, i32 noundef 0) #9
  %call.i.4 = call i32 @__cond_resched() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %sub.4 = add i32 %add.neg, %41
  %cmp19.4 = icmp slt i32 %sub.4, 0
  br i1 %cmp19.4, label %do.cond.4.do.body.4_crit_edge, label %do.cond.4.do.body.5_crit_edge

do.cond.4.do.body.5_crit_edge:                    ; preds = %do.cond.4
  br label %do.body.5

do.cond.4.do.body.4_crit_edge:                    ; preds = %do.cond.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.4

do.body.5:                                        ; preds = %do.cond.5.do.body.5_crit_edge, %do.cond.4.do.body.5_crit_edge
  %42 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adapter, align 8
  %call12.5 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %read_sema, i32 noundef 2) #9
  %44 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call12.5)
  %cmp.5 = icmp eq i32 %call12.5, 2
  %and.5 = and i32 %45, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  %or.cond.5 = select i1 %cmp.5, i1 %tobool.not.5, i1 false
  br i1 %or.cond.5, label %do.body.5.do.end.thread_crit_edge, label %do.cond.5

do.body.5.do.end.thread_crit_edge:                ; preds = %do.body.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.thread

do.cond.5:                                        ; preds = %do.body.5
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 166, i32 noundef 0) #9
  %call.i.5 = call i32 @__cond_resched() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %sub.5 = add i32 %add.neg, %46
  %cmp19.5 = icmp slt i32 %sub.5, 0
  br i1 %cmp19.5, label %do.cond.5.do.body.5_crit_edge, label %do.cond.5.cleanup31_crit_edge

do.cond.5.cleanup31_crit_edge:                    ; preds = %do.cond.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup31

do.cond.5.do.body.5_crit_edge:                    ; preds = %do.cond.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.5

cleanup31:                                        ; preds = %do.cond.5.cleanup31_crit_edge, %do.end.thread
  %retval.0 = phi i32 [ %20, %do.end.thread ], [ -110, %do.cond.5.cleanup31_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %read_sema) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_i2c_get_mbox(ptr noundef %client, ptr nocapture noundef writeonly %mlxsw_i2c) unnamed_addr #0 align 64 {
entry:
  %addr_buf = alloca [4 x i8], align 4
  %buf = alloca [20 x i8], align 1
  %mbox_cmd = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr_buf) #9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #9
  %0 = call ptr @memset(ptr %buf, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mbox_cmd) #9
  %1 = getelementptr inbounds i8, ptr %mbox_cmd, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %3 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr1, align 2
  %5 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %mbox_cmd, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %mbox_cmd, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %mbox_cmd, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 4, ptr %len, align 4
  %buf2 = getelementptr inbounds %struct.i2c_msg, ptr %mbox_cmd, i32 0, i32 3
  %8 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %addr_buf, ptr %buf2, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %mbox_cmd, i32 1
  %9 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %4, ptr %arrayinit.element, align 4
  %flags5 = getelementptr inbounds %struct.i2c_msg, ptr %mbox_cmd, i32 1, i32 1
  %10 = ptrtoint ptr %flags5 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags5, align 2
  %len6 = getelementptr inbounds %struct.i2c_msg, ptr %mbox_cmd, i32 1, i32 2
  %11 = ptrtoint ptr %len6 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 20, ptr %len6, align 4
  %buf7 = getelementptr inbounds %struct.i2c_msg, ptr %mbox_cmd, i32 1, i32 3
  %12 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %buf7, align 4
  %13 = ptrtoint ptr %addr_buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 466944, ptr %addr_buf, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %mbox_cmd, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %.call = select i1 %tobool.not, i32 -5, i32 %call
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %16 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i32 16
  %17 = getelementptr inbounds [20 x i8], ptr %buf, i32 0, i32 12
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %and.i = and i32 %19, 1048575
  %mb_off_in.i = getelementptr inbounds %struct.anon.129, ptr %mlxsw_i2c, i32 0, i32 1
  %20 = ptrtoint ptr %mb_off_in.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and.i, ptr %mb_off_in.i, align 4
  %shr.i = lshr i32 %19, 20
  %21 = ptrtoint ptr %mlxsw_i2c to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr.i, ptr %mlxsw_i2c, align 4
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %16, align 4
  %and4.i = and i32 %23, 1048575
  %mb_off_out.i = getelementptr inbounds %struct.anon.129, ptr %mlxsw_i2c, i32 0, i32 3
  %24 = ptrtoint ptr %mb_off_out.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and4.i, ptr %mb_off_out.i, align 4
  %shr7.i = lshr i32 %23, 20
  %mb_size_out.i = getelementptr inbounds %struct.anon.129, ptr %mlxsw_i2c, i32 0, i32 2
  %25 = ptrtoint ptr %mb_size_out.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shr7.i, ptr %mb_size_out.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 2, %if.end ], [ %.call, %do.end ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mbox_cmd) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_buf) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_core_bus_device_register(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_i2c_init(ptr nocapture noundef writeonly %bus_priv, ptr noundef %mlxsw_core, ptr nocapture noundef readnone %profile, ptr noundef %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlxsw_i2c, ptr %bus_priv, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mlxsw_core, ptr %core, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 4096) #13
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call i32 @mlxsw_cmd_exec(ptr noundef %mlxsw_core, i16 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call7.i.i.i, i32 noundef 4096) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not, label %mlxsw_cmd_mbox_query_fw_fw_rev_major_get.exit, label %if.end.mbox_put_crit_edge

if.end.mbox_put_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %mbox_put

mlxsw_cmd_mbox_query_fw_fw_rev_major_get.exit:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call7.i.i.i, align 8
  %conv = trunc i32 %3 to i16
  %fw_rev = getelementptr inbounds %struct.mlxsw_i2c, ptr %bus_priv, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %fw_rev to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %fw_rev, align 4
  %arrayidx.i.i44 = getelementptr i32, ptr %call7.i.i.i, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i44 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i44, align 4
  %conv7 = trunc i32 %6 to i16
  %minor = getelementptr inbounds %struct.mlxsw_i2c, ptr %bus_priv, i32 0, i32 3, i32 3, i32 1
  %7 = ptrtoint ptr %minor to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv7, ptr %minor, align 2
  %shr.i.i71 = lshr i32 %6, 16
  %conv11 = trunc i32 %shr.i.i71 to i16
  %subminor = getelementptr inbounds %struct.mlxsw_i2c, ptr %bus_priv, i32 0, i32 3, i32 3, i32 2
  %8 = ptrtoint ptr %subminor to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv11, ptr %subminor, align 4
  %call14 = tail call i32 @mlxsw_core_resources_query(ptr noundef %mlxsw_core, ptr noundef nonnull %call7.i.i.i, ptr noundef %res) #9
  br label %mbox_put

mbox_put:                                         ; preds = %mlxsw_cmd_mbox_query_fw_fw_rev_major_get.exit, %if.end.mbox_put_crit_edge
  %err.0 = phi i32 [ %call.i.i, %if.end.mbox_put_crit_edge ], [ %call14, %mlxsw_cmd_mbox_query_fw_fw_rev_major_get.exit ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %mbox_put, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %mbox_put ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @mlxsw_i2c_fini(ptr nocapture noundef writeonly %bus_priv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlxsw_i2c, ptr %bus_priv, i32 0, i32 2
  %0 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %core, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlxsw_i2c_skb_transmit_busy(ptr nocapture noundef readnone %bus_priv, ptr nocapture noundef readnone %tx_info) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_i2c_skb_transmit(ptr nocapture noundef readnone %bus_priv, ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %tx_info) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_i2c_cmd_exec(ptr nocapture noundef readonly %bus_priv, i16 noundef zeroext %opcode, i8 noundef zeroext %opcode_mod, i32 noundef %in_mod, i1 noundef zeroext %out_mbox_direct, ptr noundef readonly %in_mbox, i32 noundef %in_mbox_size, ptr noundef %out_mbox, i32 noundef %out_mbox_size, ptr nocapture noundef %status) #0 align 64 {
entry:
  %push_cmd_buf.i.i = alloca [2 x i32], align 8
  %prep_cmd_buf.i.i = alloca [8 x i32], align 4
  %push_cmd.i.i = alloca %struct.i2c_msg, align 4
  %prep_cmd.i.i = alloca %struct.i2c_msg, align 4
  %status.i.i = alloca i8, align 1
  %write_tran.i.i = alloca %struct.i2c_msg, align 4
  %tran_buf.i = alloca [4 x i8], align 4
  %read_tran.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mlxsw_i2c, ptr %bus_priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -32
  %driver_data.i.i.i = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tran_buf.i) #9
  %mb_off_out.i = getelementptr inbounds %struct.anon.129, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %tran_buf.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tran_buf.i, align 4
  %5 = ptrtoint ptr %mb_off_out.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mb_off_out.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %read_tran.i) #9
  %7 = getelementptr inbounds i8, ptr %read_tran.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %addr2.i = getelementptr i8, ptr %1, i32 -30
  %9 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr2.i, align 2
  %11 = ptrtoint ptr %read_tran.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %read_tran.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %read_tran.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 4, ptr %7, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %read_tran.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %tran_buf.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %read_tran.i, i32 1
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %10, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %read_tran.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %read_tran.i, i32 1, i32 2
  %17 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %read_tran.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %buf7.i, align 4
  %19 = or i32 %out_mbox_size, %in_mbox_size
  %20 = and i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %.not.i = icmp eq i32 %20, 0
  br i1 %.not.i, label %entry.if.end.i_crit_edge, label %do.end.i, !prof !106

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 406, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %tobool30.not.i = icmp eq ptr %in_mbox, null
  br i1 %tobool30.not.i, label %if.else.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.end.i
  %add.ptr.i.i = getelementptr i8, ptr %in_mbox, i32 16
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i.i, align 2
  %23 = shl i16 %22, 2
  %24 = and i16 %23, 8188
  %narrow.i.i = add nuw nsw i16 %24, 16
  %add.i.i = zext i16 %narrow.i.i to i32
  %block_size.i = getelementptr inbounds %struct.mlxsw_i2c, ptr %3, i32 0, i32 4
  %25 = ptrtoint ptr %block_size.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %block_size.i, align 4
  %narrow.i.i.frozen = freeze i16 %narrow.i.i
  %.frozen = freeze i16 %26
  %div195196.i = udiv i16 %narrow.i.i.frozen, %.frozen
  %div195.zext.i = zext i16 %div195196.i to i32
  %27 = mul i16 %div195196.i, %.frozen
  %rem35197198.i.decomposed = sub i16 %narrow.i.i.frozen, %27
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem35197198.i.decomposed)
  %tobool36.not.i = icmp ne i16 %rem35197198.i.decomposed, 0
  %inc.i = zext i1 %tobool36.not.i to i32
  %spec.select.i = add nuw nsw i32 %inc.i, %div195.zext.i
  %lock.i = getelementptr inbounds %struct.anon.129, ptr %3, i32 0, i32 4
  %call40.i = call i32 @mutex_lock_interruptible_nested(ptr noundef %lock.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %cmp.i = icmp slt i32 %call40.i, 0
  br i1 %cmp.i, label %do.end45.i, label %if.end47.i

do.end45.i:                                       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.37) #12
  br label %mlxsw_i2c_cmd.exit

if.end47.i:                                       ; preds = %if.then31.i
  %28 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i.i, align 4
  %mb_off_in.i.i = getelementptr inbounds %struct.anon.129, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %mb_off_in.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mb_off_in.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %write_tran.i.i) #9
  %32 = getelementptr inbounds i8, ptr %write_tran.i.i, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 589823, ptr %32, align 4
  %34 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %addr2.i, align 2
  %36 = ptrtoint ptr %write_tran.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %write_tran.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %write_tran.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i.i, align 2
  %block_size.i.i = getelementptr inbounds %struct.mlxsw_i2c, ptr %29, i32 0, i32 4
  %38 = ptrtoint ptr %block_size.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %block_size.i.i, align 4
  %conv.i.i = zext i16 %39 to i32
  %add.i177.i = add nuw nsw i32 %conv.i.i, 4
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i177.i, i32 noundef 3264) #14
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %mlxsw_i2c_write.exit.thread.i, label %if.end.i.i

mlxsw_i2c_write.exit.thread.i:                    ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %write_tran.i.i) #9
  br label %cmd_fail.i

if.end.i.i:                                       ; preds = %if.end47.i
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %write_tran.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call9.i.i.i, ptr %buf.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp108.i.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %cmp108.i.not.i, label %if.end.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %arrayidx.i.i = getelementptr i8, ptr %call9.i.i.i, i32 4
  %adapter.i.i = getelementptr i8, ptr %1, i32 -8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end36.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0111.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc39.i.i, %if.end36.i.i.for.body.i.i_crit_edge ]
  %off.0110.i.i = phi i32 [ %31, %for.body.lr.ph.i.i ], [ %add37.i.i, %if.end36.i.i.for.body.i.i_crit_edge ]
  %in_mbox_size.addr.0109.i.i = phi i32 [ %add.i.i, %for.body.lr.ph.i.i ], [ %sub38.i.i, %if.end36.i.i.for.body.i.i_crit_edge ]
  %41 = ptrtoint ptr %block_size.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %block_size.i.i, align 4
  %conv7.i.i = zext i16 %42 to i32
  %43 = call i32 @llvm.umin.i32(i32 %in_mbox_size.addr.0109.i.i, i32 %conv7.i.i) #9
  %44 = trunc i32 %43 to i16
  %conv13.i.i = add i16 %44, 4
  %45 = ptrtoint ptr %32 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv13.i.i, ptr %32, align 4
  %46 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %off.0110.i.i, ptr %call9.i.i.i, align 128
  %47 = ptrtoint ptr %block_size.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %block_size.i.i, align 4
  %conv16.i.i = zext i16 %48 to i32
  %mul.i.i = mul i32 %i.0111.i.i, %conv16.i.i
  %add.ptr17.i.i = getelementptr i8, ptr %in_mbox, i32 %mul.i.i
  %49 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %add.ptr17.i.i, i32 %43)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %add18.neg.i.i = sub i32 -500, %50
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end23.i.i.do.body.i.i_crit_edge, %for.body.i.i
  %51 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %adapter.i.i, align 8
  %call19.i.i = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %write_tran.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19.i.i)
  %cond.i.i = icmp eq i32 %call19.i.i, 1
  br i1 %cond.i.i, label %do.body.i.i.if.end36.i.i_crit_edge, label %if.end23.i.i

do.body.i.i.if.end36.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i.i

if.end23.i.i:                                     ; preds = %do.body.i.i
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 348, i32 noundef 0) #9
  %call.i.i.i = call i32 @__cond_resched() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %53, %add18.neg.i.i
  %cmp26.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp26.i.i, label %if.end23.i.i.do.body.i.i_crit_edge, label %if.end23.i.i.do.body.1.i.i_crit_edge

if.end23.i.i.do.body.1.i.i_crit_edge:             ; preds = %if.end23.i.i
  br label %do.body.1.i.i

if.end23.i.i.do.body.i.i_crit_edge:               ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

do.body.1.i.i:                                    ; preds = %if.end23.1.i.i.do.body.1.i.i_crit_edge, %if.end23.i.i.do.body.1.i.i_crit_edge
  %54 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %adapter.i.i, align 8
  %call19.1.i.i = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %write_tran.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19.1.i.i)
  %cond.1.i.i = icmp eq i32 %call19.1.i.i, 1
  br i1 %cond.1.i.i, label %do.body.1.i.i.if.end36.i.i_crit_edge, label %if.end23.1.i.i

do.body.1.i.i.if.end36.i.i_crit_edge:             ; preds = %do.body.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i.i

if.end23.1.i.i:                                   ; preds = %do.body.1.i.i
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 348, i32 noundef 0) #9
  %call.i.1.i.i = call i32 @__cond_resched() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %sub.1.i.i = add i32 %56, %add18.neg.i.i
  %cmp26.1.i.i = icmp slt i32 %sub.1.i.i, 0
  br i1 %cmp26.1.i.i, label %if.end23.1.i.i.do.body.1.i.i_crit_edge, label %if.end23.1.i.i.do.body.2.i.i_crit_edge

if.end23.1.i.i.do.body.2.i.i_crit_edge:           ; preds = %if.end23.1.i.i
  br label %do.body.2.i.i

if.end23.1.i.i.do.body.1.i.i_crit_edge:           ; preds = %if.end23.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.1.i.i

do.body.2.i.i:                                    ; preds = %if.end23.2.i.i.do.body.2.i.i_crit_edge, %if.end23.1.i.i.do.body.2.i.i_crit_edge
  %57 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adapter.i.i, align 8
  %call19.2.i.i = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %write_tran.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19.2.i.i)
  %cond.2.i.i = icmp eq i32 %call19.2.i.i, 1
  br i1 %cond.2.i.i, label %do.body.2.i.i.if.end36.i.i_crit_edge, label %if.end23.2.i.i

do.body.2.i.i.if.end36.i.i_crit_edge:             ; preds = %do.body.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i.i

if.end23.2.i.i:                                   ; preds = %do.body.2.i.i
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 348, i32 noundef 0) #9
  %call.i.2.i.i = call i32 @__cond_resched() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %sub.2.i.i = add i32 %59, %add18.neg.i.i
  %cmp26.2.i.i = icmp slt i32 %sub.2.i.i, 0
  br i1 %cmp26.2.i.i, label %if.end23.2.i.i.do.body.2.i.i_crit_edge, label %if.end23.2.i.i.do.body.3.i.i_crit_edge

if.end23.2.i.i.do.body.3.i.i_crit_edge:           ; preds = %if.end23.2.i.i
  br label %do.body.3.i.i

if.end23.2.i.i.do.body.2.i.i_crit_edge:           ; preds = %if.end23.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.2.i.i

do.body.3.i.i:                                    ; preds = %if.end23.3.i.i.do.body.3.i.i_crit_edge, %if.end23.2.i.i.do.body.3.i.i_crit_edge
  %60 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %adapter.i.i, align 8
  %call19.3.i.i = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %write_tran.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19.3.i.i)
  %cond.3.i.i = icmp eq i32 %call19.3.i.i, 1
  br i1 %cond.3.i.i, label %do.body.3.i.i.if.end36.i.i_crit_edge, label %if.end23.3.i.i

do.body.3.i.i.if.end36.i.i_crit_edge:             ; preds = %do.body.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i.i

if.end23.3.i.i:                                   ; preds = %do.body.3.i.i
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 348, i32 noundef 0) #9
  %call.i.3.i.i = call i32 @__cond_resched() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %sub.3.i.i = add i32 %62, %add18.neg.i.i
  %cmp26.3.i.i = icmp slt i32 %sub.3.i.i, 0
  br i1 %cmp26.3.i.i, label %if.end23.3.i.i.do.body.3.i.i_crit_edge, label %if.end23.3.i.i.do.body.4.i.i_crit_edge

if.end23.3.i.i.do.body.4.i.i_crit_edge:           ; preds = %if.end23.3.i.i
  br label %do.body.4.i.i

if.end23.3.i.i.do.body.3.i.i_crit_edge:           ; preds = %if.end23.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.3.i.i

do.body.4.i.i:                                    ; preds = %if.end23.4.i.i.do.body.4.i.i_crit_edge, %if.end23.3.i.i.do.body.4.i.i_crit_edge
  %63 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %adapter.i.i, align 8
  %call19.4.i.i = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %write_tran.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19.4.i.i)
  %cond.4.i.i = icmp eq i32 %call19.4.i.i, 1
  br i1 %cond.4.i.i, label %do.body.4.i.i.if.end36.i.i_crit_edge, label %if.end23.4.i.i

do.body.4.i.i.if.end36.i.i_crit_edge:             ; preds = %do.body.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i.i

if.end23.4.i.i:                                   ; preds = %do.body.4.i.i
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 348, i32 noundef 0) #9
  %call.i.4.i.i = call i32 @__cond_resched() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %sub.4.i.i = add i32 %65, %add18.neg.i.i
  %cmp26.4.i.i = icmp slt i32 %sub.4.i.i, 0
  br i1 %cmp26.4.i.i, label %if.end23.4.i.i.do.body.4.i.i_crit_edge, label %if.end23.4.i.i.do.body.5.i.i_crit_edge

if.end23.4.i.i.do.body.5.i.i_crit_edge:           ; preds = %if.end23.4.i.i
  br label %do.body.5.i.i

if.end23.4.i.i.do.body.4.i.i_crit_edge:           ; preds = %if.end23.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.4.i.i

do.body.5.i.i:                                    ; preds = %if.end23.5.i.i.do.body.5.i.i_crit_edge, %if.end23.4.i.i.do.body.5.i.i_crit_edge
  %66 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adapter.i.i, align 8
  %call19.5.i.i = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %write_tran.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call19.5.i.i)
  %cond.5.i.i = icmp eq i32 %call19.5.i.i, 1
  br i1 %cond.5.i.i, label %do.body.5.i.i.if.end36.i.i_crit_edge, label %if.end23.5.i.i

do.body.5.i.i.if.end36.i.i_crit_edge:             ; preds = %do.body.5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i.i

if.end23.5.i.i:                                   ; preds = %do.body.5.i.i
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 348, i32 noundef 0) #9
  %call.i.5.i.i = call i32 @__cond_resched() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %68 = load volatile i32, ptr @jiffies, align 128
  %sub.5.i.i = add i32 %68, %add18.neg.i.i
  %cmp26.5.i.i = icmp slt i32 %sub.5.i.i, 0
  br i1 %cmp26.5.i.i, label %if.end23.5.i.i.do.body.5.i.i_crit_edge, label %lor.rhs.5.i.i

if.end23.5.i.i.do.body.5.i.i_crit_edge:           ; preds = %if.end23.5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.5.i.i

lor.rhs.5.i.i:                                    ; preds = %if.end23.5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.5.i.i)
  %cond106.i.i = icmp eq i32 %call19.5.i.i, 0
  br i1 %cond106.i.i, label %lor.rhs.5.i.i.mlxsw_i2c_write.exit.thread190.i_crit_edge, label %lor.rhs.5.i.i.if.end36.i.i_crit_edge

lor.rhs.5.i.i.if.end36.i.i_crit_edge:             ; preds = %lor.rhs.5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i.i

lor.rhs.5.i.i.mlxsw_i2c_write.exit.thread190.i_crit_edge: ; preds = %lor.rhs.5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlxsw_i2c_write.exit.thread190.i

if.end36.i.i:                                     ; preds = %lor.rhs.5.i.i.if.end36.i.i_crit_edge, %do.body.5.i.i.if.end36.i.i_crit_edge, %do.body.4.i.i.if.end36.i.i_crit_edge, %do.body.3.i.i.if.end36.i.i_crit_edge, %do.body.2.i.i.if.end36.i.i_crit_edge, %do.body.1.i.i.if.end36.i.i_crit_edge, %do.body.i.i.if.end36.i.i_crit_edge
  %add37.i.i = add i32 %43, %off.0110.i.i
  %sub38.i.i = sub i32 %in_mbox_size.addr.0109.i.i, %43
  %inc39.i.i = add nuw nsw i32 %i.0111.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc39.i.i, %spec.select.i
  br i1 %exitcond.not.i.i, label %if.end36.i.i.for.end.i.i_crit_edge, label %if.end36.i.i.for.body.i.i_crit_edge

if.end36.i.i.for.body.i.i_crit_edge:              ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.end36.i.i.for.end.i.i_crit_edge:               ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end36.i.i.for.end.i.i_crit_edge, %if.end.i.i.for.end.i.i_crit_edge
  %call40.i.i = call fastcc i32 @mlxsw_i2c_write_cmd(ptr noundef %add.ptr.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i.i)
  %tobool41.not.i.i = icmp eq i32 %call40.i.i, 0
  br i1 %tobool41.not.i.i, label %if.end47.i.i, label %do.end45.i.i

do.end45.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.7) #12
  br label %mlxsw_i2c_write.exit.thread190.i

if.end47.i.i:                                     ; preds = %for.end.i.i
  %call48.i.i = call fastcc i32 @mlxsw_i2c_wait_go_bit(ptr noundef %add.ptr.i, ptr noundef %status) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i.i)
  %tobool49.not.i.i = icmp eq i32 %call48.i.i, 0
  br i1 %tobool49.not.i.i, label %if.end55.i.i, label %do.end53.i.i

do.end53.i.i:                                     ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10) #12
  br label %mlxsw_i2c_write.exit.thread190.i

if.end55.i.i:                                     ; preds = %if.end47.i.i
  %69 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool56.not.i.i = icmp eq i8 %70, 0
  br i1 %tobool56.not.i.i, label %if.end51.i, label %do.end60.i.i

do.end60.i.i:                                     ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv62.i.i = zext i8 %70 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %conv62.i.i) #12
  br label %mlxsw_i2c_write.exit.thread190.i

mlxsw_i2c_write.exit.thread190.i:                 ; preds = %do.end60.i.i, %do.end53.i.i, %do.end45.i.i, %lor.rhs.5.i.i.mlxsw_i2c_write.exit.thread190.i_crit_edge
  %err.0.i.ph.i = phi i32 [ -5, %do.end60.i.i ], [ %call48.i.i, %do.end53.i.i ], [ -5, %do.end45.i.i ], [ -5, %lor.rhs.5.i.i.mlxsw_i2c_write.exit.thread190.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %write_tran.i.i) #9
  br label %cmd_fail.i

if.end51.i:                                       ; preds = %if.end55.i.i
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %write_tran.i.i) #9
  %tobool52.not.i = icmp eq ptr %out_mbox, null
  br i1 %tobool52.not.i, label %if.then53.i, label %if.end51.i.if.end75.i_crit_edge

if.end51.i.if.end75.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75.i

if.then53.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %mlxsw_i2c_cmd.exit

if.else.i:                                        ; preds = %if.end.i
  %block_size57.i = getelementptr inbounds %struct.mlxsw_i2c, ptr %3, i32 0, i32 4
  %71 = ptrtoint ptr %block_size57.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %block_size57.i, align 4
  %lock61.i = getelementptr inbounds %struct.anon.129, ptr %3, i32 0, i32 4
  %call62.i = call i32 @mutex_lock_interruptible_nested(ptr noundef %lock61.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %cmp63.i = icmp slt i32 %call62.i, 0
  br i1 %cmp63.i, label %do.end68.i, label %if.end70.i

do.end68.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.37) #12
  br label %mlxsw_i2c_cmd.exit

if.end70.i:                                       ; preds = %if.else.i
  %73 = udiv i16 256, %72
  %div59.i = zext i16 %73 to i32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %push_cmd_buf.i.i) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %prep_cmd_buf.i.i) #9
  %74 = getelementptr inbounds [8 x i32], ptr %prep_cmd_buf.i.i, i32 0, i32 3
  %75 = getelementptr inbounds [8 x i32], ptr %prep_cmd_buf.i.i, i32 0, i32 6
  %76 = getelementptr inbounds [8 x i32], ptr %prep_cmd_buf.i.i, i32 0, i32 7
  %77 = getelementptr inbounds i8, ptr %prep_cmd_buf.i.i, i32 4
  %78 = call ptr @memset(ptr %77, i32 0, i32 20)
  %adapter.i178.i = getelementptr i8, ptr %1, i32 -8
  %79 = ptrtoint ptr %adapter.i178.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %adapter.i178.i, align 8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %80, i32 0, i32 11
  %81 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nr.i.i, align 4
  %and.i.i = and i32 %82, 65535
  %83 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %and.i.i, ptr %75, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %push_cmd.i.i) #9
  %84 = getelementptr inbounds i8, ptr %push_cmd.i.i, i32 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 589823, ptr %84, align 4
  %86 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %addr2.i, align 2
  %88 = ptrtoint ptr %push_cmd.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %push_cmd.i.i, align 4
  %flags.i179.i = getelementptr inbounds %struct.i2c_msg, ptr %push_cmd.i.i, i32 0, i32 1
  %89 = ptrtoint ptr %flags.i179.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 0, ptr %flags.i179.i, align 2
  %buf.i181.i = getelementptr inbounds %struct.i2c_msg, ptr %push_cmd.i.i, i32 0, i32 3
  %90 = ptrtoint ptr %buf.i181.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %push_cmd_buf.i.i, ptr %buf.i181.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %prep_cmd.i.i) #9
  %91 = getelementptr inbounds i8, ptr %prep_cmd.i.i, i32 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 2162687, ptr %91, align 4
  %93 = ptrtoint ptr %prep_cmd.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %87, ptr %prep_cmd.i.i, align 4
  %flags10.i.i = getelementptr inbounds %struct.i2c_msg, ptr %prep_cmd.i.i, i32 0, i32 1
  %94 = ptrtoint ptr %flags10.i.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 0, ptr %flags10.i.i, align 2
  %buf12.i.i = getelementptr inbounds %struct.i2c_msg, ptr %prep_cmd.i.i, i32 0, i32 3
  %95 = ptrtoint ptr %buf12.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %prep_cmd_buf.i.i, ptr %buf12.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i.i) #9
  %96 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 -1, ptr %status.i.i, align 1, !annotation !105
  %conv.i182.i = zext i16 %opcode to i32
  %or.i.i = or i32 %conv.i182.i, 12582912
  %arrayidx.i183.i = getelementptr inbounds [2 x i32], ptr %push_cmd_buf.i.i, i32 0, i32 1
  %97 = ptrtoint ptr %arrayidx.i183.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %or.i.i, ptr %arrayidx.i183.i, align 4
  %98 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %in_mod, ptr %74, align 4
  %or16.i.i = or i32 %conv.i182.i, 8388608
  %99 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %or16.i.i, ptr %76, align 4
  %100 = ptrtoint ptr %prep_cmd_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 466944, ptr %prep_cmd_buf.i.i, align 4
  %101 = ptrtoint ptr %push_cmd_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 466968, ptr %push_cmd_buf.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %80, ptr noundef nonnull %prep_cmd.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end70.i.mlxsw_i2c_write_init_cmd.exit.thread.i_crit_edge, label %if.else.i.i

if.end70.i.mlxsw_i2c_write_init_cmd.exit.thread.i_crit_edge: ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlxsw_i2c_write_init_cmd.exit.thread.i

if.else.i.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp22.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp22.not.i.i, label %if.end25.i.i, label %if.else.i.i.mlxsw_i2c_write_init_cmd.exit.thread.i_crit_edge

if.else.i.i.mlxsw_i2c_write_init_cmd.exit.thread.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlxsw_i2c_write_init_cmd.exit.thread.i

if.end25.i.i:                                     ; preds = %if.else.i.i
  %102 = ptrtoint ptr %adapter.i178.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %adapter.i178.i, align 8
  %call27.i.i = call i32 @i2c_transfer(ptr noundef %103, ptr noundef nonnull %push_cmd.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %cmp28.i.i = icmp slt i32 %call27.i.i, 0
  br i1 %cmp28.i.i, label %if.end25.i.i.mlxsw_i2c_write_init_cmd.exit.thread.i_crit_edge, label %if.else31.i.i

if.end25.i.i.mlxsw_i2c_write_init_cmd.exit.thread.i_crit_edge: ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlxsw_i2c_write_init_cmd.exit.thread.i

if.else31.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call27.i.i)
  %cmp32.not.i.i = icmp eq i32 %call27.i.i, 1
  br i1 %cmp32.not.i.i, label %if.end36.i185.i, label %if.else31.i.i.mlxsw_i2c_write_init_cmd.exit.thread.i_crit_edge

if.else31.i.i.mlxsw_i2c_write_init_cmd.exit.thread.i_crit_edge: ; preds = %if.else31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlxsw_i2c_write_init_cmd.exit.thread.i

if.end36.i185.i:                                  ; preds = %if.else31.i.i
  %call37.i.i = call fastcc i32 @mlxsw_i2c_wait_go_bit(ptr noundef %add.ptr.i, ptr noundef nonnull %status.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i.i)
  %tobool.not.i184.i = icmp eq i32 %call37.i.i, 0
  br i1 %tobool.not.i184.i, label %if.end39.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end36.i185.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10) #12
  br label %mlxsw_i2c_write_init_cmd.exit.thread.i

if.end39.i.i:                                     ; preds = %if.end36.i185.i
  %104 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %status.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool40.not.i.i = icmp eq i8 %105, 0
  br i1 %tobool40.not.i.i, label %mlxsw_i2c_write_init_cmd.exit.i, label %do.end44.i.i

do.end44.i.i:                                     ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv46.i.i = zext i8 %105 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %conv46.i.i) #12
  br label %mlxsw_i2c_write_init_cmd.exit.thread.i

mlxsw_i2c_write_init_cmd.exit.thread.i:           ; preds = %do.end44.i.i, %do.end.i.i, %if.else31.i.i.mlxsw_i2c_write_init_cmd.exit.thread.i_crit_edge, %if.end25.i.i.mlxsw_i2c_write_init_cmd.exit.thread.i_crit_edge, %if.else.i.i.mlxsw_i2c_write_init_cmd.exit.thread.i_crit_edge, %if.end70.i.mlxsw_i2c_write_init_cmd.exit.thread.i_crit_edge
  %retval.0.i186.ph.i = phi i32 [ -5, %if.else31.i.i.mlxsw_i2c_write_init_cmd.exit.thread.i_crit_edge ], [ %call27.i.i, %if.end25.i.i.mlxsw_i2c_write_init_cmd.exit.thread.i_crit_edge ], [ -5, %if.else.i.i.mlxsw_i2c_write_init_cmd.exit.thread.i_crit_edge ], [ %call.i.i, %if.end70.i.mlxsw_i2c_write_init_cmd.exit.thread.i_crit_edge ], [ -5, %do.end44.i.i ], [ %call37.i.i, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %prep_cmd.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %push_cmd.i.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %prep_cmd_buf.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %push_cmd_buf.i.i) #9
  br label %cmd_fail.i

mlxsw_i2c_write_init_cmd.exit.i:                  ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %prep_cmd.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %push_cmd.i.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %prep_cmd_buf.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %push_cmd_buf.i.i) #9
  br label %if.end75.i

if.end75.i:                                       ; preds = %mlxsw_i2c_write_init_cmd.exit.i, %if.end51.i.if.end75.i_crit_edge
  %num.1.i = phi i32 [ %spec.select.i, %if.end51.i.if.end75.i_crit_edge ], [ %div59.i, %mlxsw_i2c_write_init_cmd.exit.i ]
  %reg_size.0.i = phi i32 [ %add.i.i, %if.end51.i.if.end75.i_crit_edge ], [ 256, %mlxsw_i2c_write_init_cmd.exit.i ]
  %106 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %out_mbox, ptr %buf7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.1.i)
  %cmp77206.i = icmp sgt i32 %num.1.i, 0
  br i1 %cmp77206.i, label %for.body.lr.ph.i, label %if.end75.i.for.end.i_crit_edge

if.end75.i.for.end.i_crit_edge:                   ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end75.i
  %block_size79.i = getelementptr inbounds %struct.mlxsw_i2c, ptr %3, i32 0, i32 4
  %adapter.i = getelementptr i8, ptr %1, i32 -8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end113.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %off.0209.i = phi i32 [ %6, %for.body.lr.ph.i ], [ %add114.i, %if.end113.i.for.body.i_crit_edge ]
  %i.0208.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc119.i, %if.end113.i.for.body.i_crit_edge ]
  %reg_size.1207.i = phi i32 [ %reg_size.0.i, %for.body.lr.ph.i ], [ %sub115.i, %if.end113.i.for.body.i_crit_edge ]
  %107 = ptrtoint ptr %block_size79.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %block_size79.i, align 4
  %conv80.i = zext i16 %108 to i32
  %109 = call i32 @llvm.smin.i32(i32 %reg_size.1207.i, i32 %conv80.i) #9
  %conv85.i = trunc i32 %109 to i16
  %110 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv85.i, ptr %len6.i, align 4
  %111 = ptrtoint ptr %tran_buf.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %off.0209.i, ptr %tran_buf.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %112 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -500, %112
  br label %do.body89.i

do.body89.i:                                      ; preds = %if.end95.i.do.body89.i_crit_edge, %for.body.i
  %113 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %adapter.i, align 8
  %call91.i = call i32 @i2c_transfer(ptr noundef %114, ptr noundef nonnull %read_tran.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call91.i)
  %cond.i = icmp eq i32 %call91.i, 2
  br i1 %cond.i, label %do.body89.i.if.end113.i_crit_edge, label %if.end95.i

do.body89.i.if.end113.i_crit_edge:                ; preds = %do.body89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113.i

if.end95.i:                                       ; preds = %do.body89.i
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 460, i32 noundef 0) #9
  %call.i187.i = call i32 @__cond_resched() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %115 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %115, %add.neg.i
  %cmp99.i = icmp slt i32 %sub.i, 0
  br i1 %cmp99.i, label %if.end95.i.do.body89.i_crit_edge, label %if.end95.i.do.body89.1.i_crit_edge

if.end95.i.do.body89.1.i_crit_edge:               ; preds = %if.end95.i
  br label %do.body89.1.i

if.end95.i.do.body89.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body89.i

do.body89.1.i:                                    ; preds = %if.end95.1.i.do.body89.1.i_crit_edge, %if.end95.i.do.body89.1.i_crit_edge
  %116 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %adapter.i, align 8
  %call91.1.i = call i32 @i2c_transfer(ptr noundef %117, ptr noundef nonnull %read_tran.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call91.1.i)
  %cond.1.i = icmp eq i32 %call91.1.i, 2
  br i1 %cond.1.i, label %do.body89.1.i.if.end113.i_crit_edge, label %if.end95.1.i

do.body89.1.i.if.end113.i_crit_edge:              ; preds = %do.body89.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113.i

if.end95.1.i:                                     ; preds = %do.body89.1.i
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 460, i32 noundef 0) #9
  %call.i187.1.i = call i32 @__cond_resched() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %118 = load volatile i32, ptr @jiffies, align 128
  %sub.1.i = add i32 %118, %add.neg.i
  %cmp99.1.i = icmp slt i32 %sub.1.i, 0
  br i1 %cmp99.1.i, label %if.end95.1.i.do.body89.1.i_crit_edge, label %if.end95.1.i.do.body89.2.i_crit_edge

if.end95.1.i.do.body89.2.i_crit_edge:             ; preds = %if.end95.1.i
  br label %do.body89.2.i

if.end95.1.i.do.body89.1.i_crit_edge:             ; preds = %if.end95.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body89.1.i

do.body89.2.i:                                    ; preds = %if.end95.2.i.do.body89.2.i_crit_edge, %if.end95.1.i.do.body89.2.i_crit_edge
  %119 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %adapter.i, align 8
  %call91.2.i = call i32 @i2c_transfer(ptr noundef %120, ptr noundef nonnull %read_tran.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call91.2.i)
  %cond.2.i = icmp eq i32 %call91.2.i, 2
  br i1 %cond.2.i, label %do.body89.2.i.if.end113.i_crit_edge, label %if.end95.2.i

do.body89.2.i.if.end113.i_crit_edge:              ; preds = %do.body89.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113.i

if.end95.2.i:                                     ; preds = %do.body89.2.i
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 460, i32 noundef 0) #9
  %call.i187.2.i = call i32 @__cond_resched() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %121 = load volatile i32, ptr @jiffies, align 128
  %sub.2.i = add i32 %121, %add.neg.i
  %cmp99.2.i = icmp slt i32 %sub.2.i, 0
  br i1 %cmp99.2.i, label %if.end95.2.i.do.body89.2.i_crit_edge, label %if.end95.2.i.do.body89.3.i_crit_edge

if.end95.2.i.do.body89.3.i_crit_edge:             ; preds = %if.end95.2.i
  br label %do.body89.3.i

if.end95.2.i.do.body89.2.i_crit_edge:             ; preds = %if.end95.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body89.2.i

do.body89.3.i:                                    ; preds = %if.end95.3.i.do.body89.3.i_crit_edge, %if.end95.2.i.do.body89.3.i_crit_edge
  %122 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %adapter.i, align 8
  %call91.3.i = call i32 @i2c_transfer(ptr noundef %123, ptr noundef nonnull %read_tran.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call91.3.i)
  %cond.3.i = icmp eq i32 %call91.3.i, 2
  br i1 %cond.3.i, label %do.body89.3.i.if.end113.i_crit_edge, label %if.end95.3.i

do.body89.3.i.if.end113.i_crit_edge:              ; preds = %do.body89.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113.i

if.end95.3.i:                                     ; preds = %do.body89.3.i
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 460, i32 noundef 0) #9
  %call.i187.3.i = call i32 @__cond_resched() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %124 = load volatile i32, ptr @jiffies, align 128
  %sub.3.i = add i32 %124, %add.neg.i
  %cmp99.3.i = icmp slt i32 %sub.3.i, 0
  br i1 %cmp99.3.i, label %if.end95.3.i.do.body89.3.i_crit_edge, label %if.end95.3.i.do.body89.4.i_crit_edge

if.end95.3.i.do.body89.4.i_crit_edge:             ; preds = %if.end95.3.i
  br label %do.body89.4.i

if.end95.3.i.do.body89.3.i_crit_edge:             ; preds = %if.end95.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body89.3.i

do.body89.4.i:                                    ; preds = %if.end95.4.i.do.body89.4.i_crit_edge, %if.end95.3.i.do.body89.4.i_crit_edge
  %125 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %adapter.i, align 8
  %call91.4.i = call i32 @i2c_transfer(ptr noundef %126, ptr noundef nonnull %read_tran.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call91.4.i)
  %cond.4.i = icmp eq i32 %call91.4.i, 2
  br i1 %cond.4.i, label %do.body89.4.i.if.end113.i_crit_edge, label %if.end95.4.i

do.body89.4.i.if.end113.i_crit_edge:              ; preds = %do.body89.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113.i

if.end95.4.i:                                     ; preds = %do.body89.4.i
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 460, i32 noundef 0) #9
  %call.i187.4.i = call i32 @__cond_resched() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %127 = load volatile i32, ptr @jiffies, align 128
  %sub.4.i = add i32 %127, %add.neg.i
  %cmp99.4.i = icmp slt i32 %sub.4.i, 0
  br i1 %cmp99.4.i, label %if.end95.4.i.do.body89.4.i_crit_edge, label %if.end95.4.i.do.body89.5.i_crit_edge

if.end95.4.i.do.body89.5.i_crit_edge:             ; preds = %if.end95.4.i
  br label %do.body89.5.i

if.end95.4.i.do.body89.4.i_crit_edge:             ; preds = %if.end95.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body89.4.i

do.body89.5.i:                                    ; preds = %if.end95.5.i.do.body89.5.i_crit_edge, %if.end95.4.i.do.body89.5.i_crit_edge
  %128 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %adapter.i, align 8
  %call91.5.i = call i32 @i2c_transfer(ptr noundef %129, ptr noundef nonnull %read_tran.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call91.5.i)
  %cond.5.i = icmp eq i32 %call91.5.i, 2
  br i1 %cond.5.i, label %do.body89.5.i.if.end113.i_crit_edge, label %if.end95.5.i

do.body89.5.i.if.end113.i_crit_edge:              ; preds = %do.body89.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113.i

if.end95.5.i:                                     ; preds = %do.body89.5.i
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 460, i32 noundef 0) #9
  %call.i187.5.i = call i32 @__cond_resched() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %130 = load volatile i32, ptr @jiffies, align 128
  %sub.5.i = add i32 %130, %add.neg.i
  %cmp99.5.i = icmp slt i32 %sub.5.i, 0
  br i1 %cmp99.5.i, label %if.end95.5.i.do.body89.5.i_crit_edge, label %lor.rhs101.5.i

if.end95.5.i.do.body89.5.i_crit_edge:             ; preds = %if.end95.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body89.5.i

lor.rhs101.5.i:                                   ; preds = %if.end95.5.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.5.i)
  %tobool110.not.i = icmp eq i32 %call91.5.i, 0
  %spec.store.select.i = select i1 %tobool110.not.i, i32 -5, i32 %call91.5.i
  br label %cmd_fail.i

if.end113.i:                                      ; preds = %do.body89.5.i.if.end113.i_crit_edge, %do.body89.4.i.if.end113.i_crit_edge, %do.body89.3.i.if.end113.i_crit_edge, %do.body89.2.i.if.end113.i_crit_edge, %do.body89.1.i.if.end113.i_crit_edge, %do.body89.i.if.end113.i_crit_edge
  %add114.i = add i32 %109, %off.0209.i
  %sub115.i = sub i32 %reg_size.1207.i, %109
  %131 = ptrtoint ptr %buf7.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %buf7.i, align 4
  %add.ptr118.i = getelementptr i8, ptr %132, i32 %109
  store ptr %add.ptr118.i, ptr %buf7.i, align 4
  %inc119.i = add nuw nsw i32 %i.0208.i, 1
  %exitcond.not.i = icmp eq i32 %inc119.i, %num.1.i
  br i1 %exitcond.not.i, label %if.end113.i.for.end.i_crit_edge, label %if.end113.i.for.body.i_crit_edge

if.end113.i.for.body.i_crit_edge:                 ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end113.i.for.end.i_crit_edge:                  ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %if.end113.i.for.end.i_crit_edge, %if.end75.i.for.end.i_crit_edge
  %lock121.i = getelementptr inbounds %struct.anon.129, ptr %3, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %lock121.i) #9
  br label %mlxsw_i2c_cmd.exit

cmd_fail.i:                                       ; preds = %lor.rhs101.5.i, %mlxsw_i2c_write_init_cmd.exit.thread.i, %mlxsw_i2c_write.exit.thread190.i, %mlxsw_i2c_write.exit.thread.i
  %err.0.i = phi i32 [ %spec.store.select.i, %lor.rhs101.5.i ], [ -12, %mlxsw_i2c_write.exit.thread.i ], [ %err.0.i.ph.i, %mlxsw_i2c_write.exit.thread190.i ], [ %retval.0.i186.ph.i, %mlxsw_i2c_write_init_cmd.exit.thread.i ]
  %lock123.i = getelementptr inbounds %struct.anon.129, ptr %3, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %lock123.i) #9
  br label %mlxsw_i2c_cmd.exit

mlxsw_i2c_cmd.exit:                               ; preds = %cmd_fail.i, %for.end.i, %do.end68.i, %if.then53.i, %do.end45.i
  %retval.0.i = phi i32 [ -22, %do.end45.i ], [ %err.0.i, %cmd_fail.i ], [ 0, %for.end.i ], [ 0, %if.then53.i ], [ -22, %do.end68.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %read_tran.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tran_buf.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_core_resources_query(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_cmd_exec(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_core_bus_device_unregister(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !18, !19, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !56, !58, !59, !60, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !75, !76, !78, !79, !81, !82, !83, !85, !86, !88, !89, !91, !92, !93, !95}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @__ksymtab_mlxsw_i2c_driver_register, !1, !"__ksymtab_mlxsw_i2c_driver_register", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/i2c.c", i32 674, i32 1}
!2 = !{ptr @__ksymtab_mlxsw_i2c_driver_unregister, !3, !"__ksymtab_mlxsw_i2c_driver_unregister", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/i2c.c", i32 680, i32 1}
!4 = !{ptr @__UNIQUE_ID_author378, !5, !"__UNIQUE_ID_author378", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlxsw/i2c.c", i32 682, i32 1}
!6 = !{ptr @__UNIQUE_ID_description379, !7, !"__UNIQUE_ID_description379", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlxsw/i2c.c", i32 683, i32 1}
!8 = !{ptr @__UNIQUE_ID_file380, !9, !"__UNIQUE_ID_file380", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlxsw/i2c.c", i32 684, i32 1}
!10 = !{ptr @__UNIQUE_ID_license381, !9, !"__UNIQUE_ID_license381", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/mellanox/mlxsw/i2c.c", i32 575, i32 4}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mlxsw_i2c_probe._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @mlxsw_i2c_probe._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @mlxsw_i2c_probe.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlxsw/i2c.c", i32 587, i32 2}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlxsw/i2c.c", i32 604, i32 3}
!24 = !{ptr @mlxsw_i2c_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @mlxsw_i2c_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlxsw/i2c.c", i32 611, i32 3}
!28 = !{ptr @mlxsw_i2c_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mlxsw_i2c_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlxsw/i2c.c", i32 617, i32 3}
!32 = !{ptr @mlxsw_i2c_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mlxsw_i2c_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlxsw/i2c.c", i32 626, i32 3}
!36 = !{ptr @mlxsw_i2c_probe._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mlxsw_i2c_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlxsw/i2c.c", i32 630, i32 2}
!40 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mlxsw_i2c_probe._entry.18, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @mlxsw_i2c_probe._entry_ptr.21, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/mellanox/mlxsw/i2c.c", i32 646, i32 3}
!45 = !{ptr @mlxsw_i2c_probe._entry.22, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mlxsw_i2c_probe._entry_ptr.24, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlxsw/i2c.c", i32 299, i32 3}
!49 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mlxsw_i2c_get_mbox._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @mlxsw_i2c_get_mbox._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mellanox/mlxsw/i2c.c", i32 550, i32 12}
!54 = !{ptr @mlxsw_i2c_bus, !55, !"mlxsw_i2c_bus", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlxsw/i2c.c", i32 549, i32 31}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!58 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @__mlxsw_item_offset._entry, !57, !"_entry", i1 false, i1 false}
!61 = !{ptr @__mlxsw_item_offset._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 214, i32 1}
!64 = distinct !{null, !63, !"mlxsw_cmd_mbox_query_fw_fw_rev_major_item", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 224, i32 1}
!67 = distinct !{null, !66, !"mlxsw_cmd_mbox_query_fw_fw_rev_minor_item", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlxsw/cmd.h", i32 219, i32 1}
!70 = distinct !{null, !69, !"mlxsw_cmd_mbox_query_fw_fw_rev_subminor_item", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/mellanox/mlxsw/i2c.c", i32 415, i32 4}
!73 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @mlxsw_i2c_cmd._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @mlxsw_i2c_cmd._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @mlxsw_i2c_cmd._entry.39, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/mellanox/mlxsw/i2c.c", i32 434, i32 4}
!78 = !{ptr @mlxsw_i2c_cmd._entry_ptr.40, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/mellanox/mlxsw/i2c.c", i32 366, i32 3}
!81 = !{ptr @mlxsw_i2c_write._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @mlxsw_i2c_write._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @mlxsw_i2c_write._entry.42, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/mellanox/mlxsw/i2c.c", i32 374, i32 3}
!85 = !{ptr @mlxsw_i2c_write._entry_ptr.43, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @mlxsw_i2c_write._entry.44, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/mellanox/mlxsw/i2c.c", i32 380, i32 3}
!88 = !{ptr @mlxsw_i2c_write._entry_ptr.45, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/mellanox/mlxsw/i2c.c", i32 271, i32 3}
!91 = !{ptr @mlxsw_i2c_write_init_cmd._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @mlxsw_i2c_write_init_cmd._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @mlxsw_i2c_write_init_cmd._entry.47, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/mellanox/mlxsw/i2c.c", i32 277, i32 3}
!95 = !{ptr @mlxsw_i2c_write_init_cmd._entry_ptr.48, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{!"auto-init"}
!106 = !{!"branch_weights", i32 2000, i32 1}
