; ModuleID = '/llk/IR_all_yes/drivers/mailbox/arm_mhu_db.c_pt.bc'
source_filename = "../drivers/mailbox/arm_mhu_db.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mbox_chan_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.arm_mhu = type { ptr, [3 x %struct.mhu_db_link], %struct.mbox_controller, ptr }
%struct.mhu_db_link = type { i32, ptr, ptr }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.list_head }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }
%struct.mhu_db_channel = type { ptr, i32, i32 }

@__initcall__kmod_arm_mhu_db__290_348_arm_mhu_db_driver_init6 = internal global ptr @arm_mhu_db_driver_init, section ".initcall6.init", align 4
@arm_mhu_db_driver = internal global { %struct.amba_driver, [36 x i8] } { %struct.amba_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mhu_db_probe, ptr null, ptr null, ptr @mhu_ids }, [36 x i8] zeroinitializer }, align 32
@__exitcall_arm_mhu_db_driver_exit = internal global ptr @arm_mhu_db_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file291 = internal constant [43 x i8] c"arm_mhu_db.file=drivers/mailbox/arm_mhu_db\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [26 x i8] c"arm_mhu_db.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [47 x i8] c"arm_mhu_db.description=ARM MHU Doorbell Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [54 x i8] c"arm_mhu_db.author=Sudeep Holla <sudeep.holla@arm.com>\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mhu-doorbell\00", [19 x i8] zeroinitializer }, align 32
@mhu_ids = internal global { [2 x %struct.amba_id], [40 x i8] } { [2 x %struct.amba_id] [%struct.amba_id { i32 1814680, i32 16777215, ptr null }, %struct.amba_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@__const.mhu_db_probe.mhu_reg = private unnamed_addr constant [3 x i32] [i32 0, i32 32, i32 512], align 4
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arm,mhu-doorbell\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"#mbox-cells\00", [20 x i8] zeroinitializer }, align 32
@mhu_db_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 265, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to read #mbox-cells in '%pOF'\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mhu_db_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mailbox/arm_mhu_db.c\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mhu_db_probe._entry_ptr = internal global ptr @mhu_db_probe._entry, section ".printk_index", align 4
@mhu_db_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 272, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"incorrect value of #mbox-cells in '%pOF'\0A\00", [54 x i8] zeroinitializer }, align 32
@mhu_db_probe._entry_ptr.10 = internal global ptr @mhu_db_probe._entry.8, section ".printk_index", align 4
@mhu_db_ops = internal constant { %struct.mbox_chan_ops, [40 x i8] } { %struct.mbox_chan_ops { ptr @mhu_db_send_data, ptr null, ptr @mhu_db_startup, ptr @mhu_db_shutdown, ptr @mhu_db_last_tx_done, ptr null }, [40 x i8] zeroinitializer }, align 32
@mhu_db_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 303, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register mailboxes %d\0A\00", [63 x i8] zeroinitializer }, align 32
@mhu_db_probe._entry_ptr.13 = internal global ptr @mhu_db_probe._entry.11, section ".printk_index", align 4
@mhu_db_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.4, ptr @.str.5, ptr @.str.15, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"arm_mhu_db\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No IRQ found for Channel %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mhu_db_link\00", [20 x i8] zeroinitializer }, align 32
@mhu_db_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 322, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Can't claim IRQ %d\0A\00", [44 x i8] zeroinitializer }, align 32
@mhu_db_probe._entry_ptr.19 = internal global ptr @mhu_db_probe._entry.17, section ".printk_index", align 4
@mhu_db_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 328, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ARM MHU Doorbell mailbox registered\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mhu_db_probe._entry_ptr.23 = internal global ptr @mhu_db_probe._entry.20, section ".printk_index", align 4
@mhu_db_mbox_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 201, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Invalid channel requested pchan: %d doorbell: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mhu_db_mbox_xlate\00", [46 x i8] zeroinitializer }, align 32
@mhu_db_mbox_xlate._entry_ptr = internal global ptr @mhu_db_mbox_xlate._entry, section ".printk_index", align 4
@mhu_db_mbox_xlate._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.5, i32 209, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Channel in use: pchan: %d doorbell: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@mhu_db_mbox_xlate._entry_ptr.28 = internal global ptr @mhu_db_mbox_xlate._entry.26, section ".printk_index", align 4
@mhu_db_mbox_xlate._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.5, i32 219, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No free channels left\0A\00", [41 x i8] zeroinitializer }, align 32
@mhu_db_mbox_xlate._entry_ptr.31 = internal global ptr @mhu_db_mbox_xlate._entry.29, section ".printk_index", align 4
@mhu_db_mbox_xlate.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.25, ptr @.str.5, ptr @.str.32, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"mbox: created channel phys: %d doorbell: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@mhu_db_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.5, i32 177, ptr @.str.35, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Request to free non-existent channel\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mhu_db_shutdown\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mhu_db_shutdown._entry_ptr = internal global ptr @mhu_db_shutdown._entry, section ".printk_index", align 4
@mhu_db_mbox_irq_to_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.5, i32 118, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Channel not registered: pchan: %d doorbell: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mhu_db_mbox_irq_to_channel\00", [37 x i8] zeroinitializer }, align 32
@mhu_db_mbox_irq_to_channel._entry_ptr = internal global ptr @mhu_db_mbox_irq_to_channel._entry, section ".printk_index", align 4
@___asan_gen_.38 = private unnamed_addr constant [18 x i8] c"arm_mhu_db_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 341, i32 27 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 343, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [8 x i8] c"mhu_ids\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 332, i32 23 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 260, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 263, i32 33 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 265, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 272, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [11 x i8] c"mhu_db_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 241, i32 35 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 303, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 311, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 320, i32 21 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 322, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 328, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 199, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 208, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 219, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 235, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 177, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.153 = private constant [32 x i8] c"../drivers/mailbox/arm_mhu_db.c\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 116, i32 3 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_arm_mhu_db_driver_exit, ptr @__initcall__kmod_arm_mhu_db__290_348_arm_mhu_db_driver_init6, ptr @arm_mhu_db_driver_exit, ptr @mhu_db_mbox_irq_to_channel._entry, ptr @mhu_db_mbox_irq_to_channel._entry_ptr, ptr @mhu_db_mbox_xlate._entry, ptr @mhu_db_mbox_xlate._entry.26, ptr @mhu_db_mbox_xlate._entry.29, ptr @mhu_db_mbox_xlate._entry_ptr, ptr @mhu_db_mbox_xlate._entry_ptr.28, ptr @mhu_db_mbox_xlate._entry_ptr.31, ptr @mhu_db_probe._entry, ptr @mhu_db_probe._entry.11, ptr @mhu_db_probe._entry.17, ptr @mhu_db_probe._entry.20, ptr @mhu_db_probe._entry.8, ptr @mhu_db_probe._entry_ptr, ptr @mhu_db_probe._entry_ptr.10, ptr @mhu_db_probe._entry_ptr.13, ptr @mhu_db_probe._entry_ptr.19, ptr @mhu_db_probe._entry_ptr.23, ptr @mhu_db_shutdown._entry, ptr @mhu_db_shutdown._entry_ptr, ptr @arm_mhu_db_driver, ptr @.str, ptr @mhu_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @mhu_db_ops, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_mhu_db_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhu_ids to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhu_db_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhu_db_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhu_db_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhu_db_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhu_db_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhu_db_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhu_db_mbox_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhu_db_mbox_xlate._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhu_db_mbox_xlate._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhu_db_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mhu_db_mbox_irq_to_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_mhu_db_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amba_driver_register(ptr noundef nonnull @arm_mhu_db_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @arm_mhu_db_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @amba_driver_unregister(ptr noundef nonnull @arm_mhu_db_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhu_db_probe(ptr noundef %adev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %cell_count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cell_count) #6
  %0 = ptrtoint ptr %cell_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cell_count, align 4, !annotation !89
  %of_node = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_device_is_compatible(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup82_crit_edge, label %if.end

entry.cleanup82_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup82

if.end:                                           ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef nonnull %cell_count, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool3.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool3.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.3, ptr noundef %2) #9
  br label %cleanup82

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %cell_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cell_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %if.then6, label %do.end9

if.then6:                                         ; preds = %if.end5
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %adev, i32 noundef 136, i32 noundef 3520) #6
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %if.then6.cleanup82_crit_edge, label %if.end14

if.then6.cleanup82_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup82

do.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.9, ptr noundef %2) #9
  br label %cleanup82

if.end14:                                         ; preds = %if.then6
  %res = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 1
  %call15 = call ptr @devm_ioremap_resource(ptr noundef %adev, ptr noundef %res) #6
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call15, ptr %call.i, align 8
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call15 to i32
  br label %cleanup82

if.end21:                                         ; preds = %if.end14
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %adev, i32 noundef 4160, i32 noundef 3520) #6
  %tobool23.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool23.not, label %if.end21.cleanup82_crit_edge, label %if.end25

if.end21.cleanup82_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup82

if.end25:                                         ; preds = %if.end21
  %dev26 = getelementptr inbounds %struct.arm_mhu, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %dev26 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %adev, ptr %dev26, align 8
  %mbox = getelementptr inbounds %struct.arm_mhu, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %mbox to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %adev, ptr %mbox, align 8
  %chans29 = getelementptr inbounds %struct.arm_mhu, ptr %call.i, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %chans29 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5.i.i, ptr %chans29, align 8
  %num_chans = getelementptr inbounds %struct.arm_mhu, ptr %call.i, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %num_chans to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 20, ptr %num_chans, align 4
  %txdone_irq = getelementptr inbounds %struct.arm_mhu, ptr %call.i, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %txdone_irq to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %txdone_irq, align 8
  %txdone_poll = getelementptr inbounds %struct.arm_mhu, ptr %call.i, i32 0, i32 2, i32 5
  %12 = ptrtoint ptr %txdone_poll to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %txdone_poll, align 1
  %txpoll_period = getelementptr inbounds %struct.arm_mhu, ptr %call.i, i32 0, i32 2, i32 6
  %13 = ptrtoint ptr %txpoll_period to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %txpoll_period, align 4
  %of_xlate = getelementptr inbounds %struct.arm_mhu, ptr %call.i, i32 0, i32 2, i32 7
  %14 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mhu_db_mbox_xlate, ptr %of_xlate, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %15 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i, align 4
  %ops = getelementptr inbounds %struct.arm_mhu, ptr %call.i, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mhu_db_ops, ptr %ops, align 4
  %call38 = call i32 @devm_mbox_controller_register(ptr noundef %adev, ptr noundef %mbox) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end25.for.body_crit_edge, label %do.end43

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  br label %for.body

do.end43:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.12, i32 noundef %call38) #9
  br label %cleanup82

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end25.for.body_crit_edge
  %i.0156 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end25.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.amba_device, ptr %adev, i32 0, i32 7, i32 %i.0156
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %arrayidx47 = getelementptr %struct.arm_mhu, ptr %call.i, i32 0, i32 1, i32 %i.0156
  %19 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp49 = icmp slt i32 %18, 1
  br i1 %cmp49, label %do.body51, label %if.end60

do.body51:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mhu_db_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mhu_db_probe, %if.then56)) #6
          to label %for.inc [label %if.then56], !srcloc !90

if.then56:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mhu_db_probe.__UNIQUE_ID_ddebug289, ptr noundef %adev, ptr noundef nonnull @.str.15, i32 noundef %i.0156) #6
  br label %for.inc

if.end60:                                         ; preds = %for.body
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 8
  %arrayidx62 = getelementptr [3 x i32], ptr @__const.mhu_db_probe.mhu_reg, i32 0, i32 %i.0156
  %22 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx62, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 %23
  %rx_reg = getelementptr %struct.arm_mhu, ptr %call.i, i32 0, i32 1, i32 %i.0156, i32 2
  %24 = ptrtoint ptr %rx_reg to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr, ptr %rx_reg, align 4
  %add.ptr68 = getelementptr i8, ptr %add.ptr, i32 256
  %tx_reg = getelementptr %struct.arm_mhu, ptr %call.i, i32 0, i32 1, i32 %i.0156, i32 1
  %25 = ptrtoint ptr %tx_reg to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr68, ptr %tx_reg, align 4
  %call71 = call i32 @devm_request_threaded_irq(ptr noundef %adev, i32 noundef %18, ptr noundef null, ptr noundef nonnull @mhu_db_mbox_rx_handler, i32 noundef 8192, ptr noundef nonnull @.str.16, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end60.for.inc_crit_edge, label %cleanup.thread153

if.end60.for.inc_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cleanup.thread153:                                ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.18, i32 noundef %18) #9
  call void @mbox_controller_unregister(ptr noundef %mbox) #6
  br label %cleanup82

for.inc:                                          ; preds = %if.end60.for.inc_crit_edge, %if.then56, %do.body51
  %inc = add nuw nsw i32 %i.0156, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %do.end81, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end81:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %adev, ptr noundef nonnull @.str.21) #9
  br label %cleanup82

cleanup82:                                        ; preds = %do.end81, %cleanup.thread153, %do.end43, %if.end21.cleanup82_crit_edge, %if.then18, %do.end9, %if.then6.cleanup82_crit_edge, %do.end, %entry.cleanup82_crit_edge
  %retval.2 = phi i32 [ %call.i.i, %do.end ], [ %6, %if.then18 ], [ %call38, %do.end43 ], [ 0, %do.end81 ], [ -22, %do.end9 ], [ -19, %entry.cleanup82_crit_edge ], [ -12, %if.then6.cleanup82_crit_edge ], [ -12, %if.end21.cleanup82_crit_edge ], [ %call71, %cleanup.thread153 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cell_count) #6
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mhu_db_mbox_xlate(ptr nocapture noundef readonly %mbox, ptr nocapture noundef readonly %spec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %spec, i32 0, i32 2
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args, align 4
  %arrayidx2 = getelementptr %struct.of_phandle_args, ptr %spec, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ugt i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %7)
  %cmp3 = icmp ugt i32 %7, 31
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef %5, i32 noundef %7) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_chans.i = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 3
  %8 = ptrtoint ptr %num_chans.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_chans.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp18.i = icmp sgt i32 %9, 0
  br i1 %cmp18.i, label %for.body.lr.ph.i, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph.i:                                 ; preds = %if.end
  %chans.i = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 2
  %10 = ptrtoint ptr %chans.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chans.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.019.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %con_priv.i = getelementptr %struct.mbox_chan, ptr %11, i32 %i.019.i, i32 9
  %12 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %con_priv.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %pchan1.i = getelementptr inbounds %struct.mhu_db_channel, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %pchan1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pchan1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %5)
  %cmp2.i = icmp eq i32 %15, %5
  br i1 %cmp2.i, label %land.lhs.true3.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %doorbell4.i = getelementptr inbounds %struct.mhu_db_channel, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %doorbell4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %doorbell4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %7)
  %cmp5.i = icmp eq i32 %17, %7
  br i1 %cmp5.i, label %cleanup.split.loop.exit16.i, label %land.lhs.true3.i.for.inc.i_crit_edge

land.lhs.true3.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true3.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.inc.i.for.cond.preheader_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.cond.preheader_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %cleanup.split.loop.exit16.i.for.cond.preheader_crit_edge, %for.inc.i.for.cond.preheader_crit_edge
  br i1 %cmp18.i, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %chans = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 2
  %18 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chans, align 8
  br label %for.body

cleanup.split.loop.exit16.i:                      ; preds = %land.lhs.true3.i
  %arrayidx.le.i = getelementptr %struct.mbox_chan, ptr %11, i32 %i.019.i
  %phi.cmp = icmp eq ptr %arrayidx.le.i, null
  br i1 %phi.cmp, label %cleanup.split.loop.exit16.i.for.cond.preheader_crit_edge, label %do.end10

cleanup.split.loop.exit16.i.for.cond.preheader_crit_edge: ; preds = %cleanup.split.loop.exit16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

do.end10:                                         ; preds = %cleanup.split.loop.exit16.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %5, i32 noundef %7) #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.092 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %con_priv = getelementptr %struct.mbox_chan, ptr %19, i32 %i.092, i32 9
  %20 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %con_priv, align 4
  %tobool16.not = icmp eq ptr %21, null
  br i1 %tobool16.not, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.inc.do.end24_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.do.end24_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge, %if.end.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ 0, %if.end.for.end_crit_edge ], [ %i.092, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %i.0.lcssa)
  %cmp20 = icmp eq i32 %9, %i.0.lcssa
  br i1 %cmp20, label %for.end.do.end24_crit_edge, label %if.end27

for.end.do.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

do.end24:                                         ; preds = %for.end.do.end24_crit_edge, %for.inc.do.end24_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.30) #9
  br label %cleanup

if.end27:                                         ; preds = %for.end
  %chans28 = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 2
  %22 = ptrtoint ptr %chans28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chans28, align 8
  %arrayidx29 = getelementptr %struct.mbox_chan, ptr %23, i32 %i.0.lcssa
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 12, i32 noundef 3520) #6
  %tobool32.not = icmp eq ptr %call.i, null
  br i1 %tobool32.not, label %if.end27.cleanup_crit_edge, label %if.end35

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %3, ptr %call.i, align 4
  %pchan37 = getelementptr inbounds %struct.mhu_db_channel, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %pchan37 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %5, ptr %pchan37, align 4
  %doorbell38 = getelementptr inbounds %struct.mhu_db_channel, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %doorbell38 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %7, ptr %doorbell38, align 4
  %con_priv39 = getelementptr %struct.mbox_chan, ptr %23, i32 %i.0.lcssa, i32 9
  %27 = ptrtoint ptr %con_priv39 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %con_priv39, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mhu_db_mbox_xlate.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mhu_db_mbox_xlate, %if.then45)) #6
          to label %cleanup [label %if.then45], !srcloc !90

if.then45:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mbox, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mhu_db_mbox_xlate.__UNIQUE_ID_ddebug288, ptr noundef %29, ptr noundef nonnull @.str.32, i32 noundef %5, i32 noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end35, %if.end27.cleanup_crit_edge, %do.end24, %do.end10, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -16 to ptr), %do.end10 ], [ inttoptr (i32 -16 to ptr), %do.end24 ], [ %arrayidx29, %if.then45 ], [ inttoptr (i32 -12 to ptr), %if.end27.cleanup_crit_edge ], [ %arrayidx29, %if.end35 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mbox_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhu_db_mbox_rx_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %bits.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.arm_mhu, ptr %data, i32 0, i32 1, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %irq)
  %cmp2.i = icmp eq i32 %1, %irq
  br i1 %cmp2.i, label %entry.mhu_db_mbox_irq_to_pchan_num.exit_crit_edge, label %for.inc.i

entry.mhu_db_mbox_irq_to_pchan_num.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %mhu_db_mbox_irq_to_pchan_num.exit

for.inc.i:                                        ; preds = %entry
  %arrayidx.1.i = getelementptr %struct.arm_mhu, ptr %data, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %irq)
  %cmp2.1.i = icmp eq i32 %3, %irq
  br i1 %cmp2.1.i, label %for.inc.i.mhu_db_mbox_irq_to_pchan_num.exit_crit_edge, label %for.inc.1.i

for.inc.i.mhu_db_mbox_irq_to_pchan_num.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mhu_db_mbox_irq_to_pchan_num.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.2.i = getelementptr %struct.arm_mhu, ptr %data, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %irq)
  %cmp2.2.i = icmp eq i32 %5, %irq
  %spec.select.i = select i1 %cmp2.2.i, i32 2, i32 3
  br label %mhu_db_mbox_irq_to_pchan_num.exit

mhu_db_mbox_irq_to_pchan_num.exit:                ; preds = %for.inc.1.i, %for.inc.i.mhu_db_mbox_irq_to_pchan_num.exit_crit_edge, %entry.mhu_db_mbox_irq_to_pchan_num.exit_crit_edge
  %pchan.0.lcssa.i = phi i32 [ 0, %entry.mhu_db_mbox_irq_to_pchan_num.exit_crit_edge ], [ 1, %for.inc.i.mhu_db_mbox_irq_to_pchan_num.exit_crit_edge ], [ %spec.select.i, %for.inc.1.i ]
  %mbox1.i = getelementptr inbounds %struct.arm_mhu, ptr %data, i32 0, i32 2
  %rx_reg.i = getelementptr %struct.arm_mhu, ptr %data, i32 0, i32 1, i32 %pchan.0.lcssa.i, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits.i) #6
  %6 = ptrtoint ptr %rx_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_reg.i, align 4
  %8 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !91
  %9 = call i32 @llvm.bswap.i32(i32 %8) #6
  %10 = ptrtoint ptr %bits.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not26.i10 = icmp eq i32 %8, 0
  br i1 %tobool2.not26.i10, label %mhu_db_mbox_irq_to_pchan_num.exit.while.end_crit_edge, label %for.body.lr.ph.i.lr.ph

mhu_db_mbox_irq_to_pchan_num.exit.while.end_crit_edge: ; preds = %mhu_db_mbox_irq_to_pchan_num.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

for.body.lr.ph.i.lr.ph:                           ; preds = %mhu_db_mbox_irq_to_pchan_num.exit
  %num_chans.i.i = getelementptr inbounds %struct.arm_mhu, ptr %data, i32 0, i32 2, i32 3
  %chans.i.i = getelementptr inbounds %struct.arm_mhu, ptr %data, i32 0, i32 2, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %for.body.lr.ph.i.lr.ph
  %doorbell.027.i = phi i32 [ 0, %for.body.lr.ph.i.lr.ph ], [ %doorbell.027.i.be, %for.body.i.backedge ]
  %call3.i = call i32 @_test_and_clear_bit(i32 noundef %doorbell.027.i, ptr noundef nonnull %bits.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %for.body.i.for.inc.i4_crit_edge, label %if.end6.i

for.body.i.for.inc.i4_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i4

if.end6.i:                                        ; preds = %for.body.i
  %11 = ptrtoint ptr %num_chans.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_chans.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp18.i.i = icmp sgt i32 %12, 0
  br i1 %cmp18.i.i, label %for.body.lr.ph.i.i, label %if.end6.i.do.end.i_crit_edge

if.end6.i.do.end.i_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.body.lr.ph.i.i:                               ; preds = %if.end6.i
  %13 = ptrtoint ptr %chans.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chans.i.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.019.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %con_priv.i.i = getelementptr %struct.mbox_chan, ptr %14, i32 %i.019.i.i, i32 9
  %15 = ptrtoint ptr %con_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %con_priv.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %pchan1.i.i = getelementptr inbounds %struct.mhu_db_channel, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %pchan1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pchan1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %pchan.0.lcssa.i)
  %cmp2.i.i = icmp eq i32 %18, %pchan.0.lcssa.i
  br i1 %cmp2.i.i, label %land.lhs.true3.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %doorbell4.i.i = getelementptr inbounds %struct.mhu_db_channel, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %doorbell4.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %doorbell4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %doorbell.027.i)
  %cmp5.i.i = icmp eq i32 %20, %doorbell.027.i
  br i1 %cmp5.i.i, label %mhu_db_mbox_to_channel.exit.i, label %land.lhs.true3.i.i.for.inc.i.i_crit_edge

land.lhs.true3.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true3.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.019.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %12
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

mhu_db_mbox_to_channel.exit.i:                    ; preds = %land.lhs.true3.i.i
  %arrayidx.le.i.i = getelementptr %struct.mbox_chan, ptr %14, i32 %i.019.i.i
  %tobool8.not.i = icmp eq ptr %arrayidx.le.i.i, null
  br i1 %tobool8.not.i, label %mhu_db_mbox_to_channel.exit.i.do.end.i_crit_edge, label %while.body

mhu_db_mbox_to_channel.exit.i.do.end.i_crit_edge: ; preds = %mhu_db_mbox_to_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %mhu_db_mbox_to_channel.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %if.end6.i.do.end.i_crit_edge
  %21 = ptrtoint ptr %mbox1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mbox1.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.36, i32 noundef %pchan.0.lcssa.i, i32 noundef %doorbell.027.i) #9
  br label %for.inc.i4

for.inc.i4:                                       ; preds = %do.end.i, %for.body.i.for.inc.i4_crit_edge
  %inc.i = add i32 %doorbell.027.i, 1
  %23 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr.i = load i32, ptr %bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool2.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool2.not.i, label %for.inc.i4.while.end_crit_edge, label %for.inc.i4.for.body.i.backedge_crit_edge

for.inc.i4.for.body.i.backedge_crit_edge:         ; preds = %for.inc.i4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.backedge

for.inc.i4.while.end_crit_edge:                   ; preds = %for.inc.i4
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

for.body.i.backedge:                              ; preds = %while.body.for.body.i.backedge_crit_edge, %for.inc.i4.for.body.i.backedge_crit_edge
  %doorbell.027.i.be = phi i32 [ %inc.i, %for.inc.i4.for.body.i.backedge_crit_edge ], [ 0, %while.body.for.body.i.backedge_crit_edge ]
  br label %for.body.i

while.body:                                       ; preds = %mhu_db_mbox_to_channel.exit.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits.i) #6
  call void @mbox_chan_received_data(ptr noundef nonnull %arrayidx.le.i.i, ptr noundef null) #6
  %24 = ptrtoint ptr %con_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %con_priv.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %pchan.i = getelementptr inbounds %struct.mhu_db_channel, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %pchan.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pchan.i, align 4
  %rx_reg.i5 = getelementptr %struct.arm_mhu, ptr %27, i32 0, i32 1, i32 %29, i32 2
  %30 = ptrtoint ptr %rx_reg.i5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx_reg.i5, align 4
  %doorbell.i = getelementptr inbounds %struct.mhu_db_channel, ptr %25, i32 0, i32 2
  %32 = ptrtoint ptr %doorbell.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %doorbell.i, align 4
  %shl.i = shl nuw i32 1, %33
  %34 = call i32 @llvm.bswap.i32(i32 %shl.i) #6
  %add.ptr.i = getelementptr i8, ptr %31, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %34) #6, !srcloc !92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits.i) #6
  %35 = ptrtoint ptr %rx_reg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx_reg.i, align 4
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #6, !srcloc !91
  %38 = call i32 @llvm.bswap.i32(i32 %37) #6
  %39 = ptrtoint ptr %bits.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool2.not26.i = icmp eq i32 %37, 0
  br i1 %tobool2.not26.i, label %while.body.while.end_crit_edge, label %while.body.for.body.i.backedge_crit_edge

while.body.for.body.i.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.backedge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.inc.i4.while.end_crit_edge, %mhu_db_mbox_irq_to_pchan_num.exit.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits.i) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_controller_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhu_db_send_data(ptr nocapture noundef readonly %chan, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %pchan = getelementptr inbounds %struct.mhu_db_channel, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pchan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pchan, align 4
  %tx_reg = getelementptr %struct.arm_mhu, ptr %3, i32 0, i32 1, i32 %5, i32 1
  %6 = ptrtoint ptr %tx_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_reg, align 4
  %doorbell = getelementptr inbounds %struct.mhu_db_channel, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %doorbell to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %doorbell, align 4
  %shl = shl nuw i32 1, %9
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #6, !srcloc !92
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mhu_db_startup(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %pchan.i = getelementptr inbounds %struct.mhu_db_channel, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pchan.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pchan.i, align 4
  %rx_reg.i = getelementptr %struct.arm_mhu, ptr %3, i32 0, i32 1, i32 %5, i32 2
  %6 = ptrtoint ptr %rx_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_reg.i, align 4
  %doorbell.i = getelementptr inbounds %struct.mhu_db_channel, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %doorbell.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %doorbell.i, align 4
  %shl.i = shl nuw i32 1, %9
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #6
  %add.ptr.i = getelementptr i8, ptr %7, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #6, !srcloc !92
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mhu_db_shutdown(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mbox1 = getelementptr inbounds %struct.arm_mhu, ptr %3, i32 0, i32 2
  %num_chans = getelementptr inbounds %struct.arm_mhu, ptr %3, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp23 = icmp sgt i32 %5, 0
  br i1 %cmp23, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %chans = getelementptr inbounds %struct.arm_mhu, ptr %3, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chans, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mbox_chan, ptr %7, i32 %i.024
  %cmp2 = icmp eq ptr %arrayidx, %chan
  br i1 %cmp2, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.024, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %i.0.lcssa)
  %cmp4 = icmp eq i32 %5, %i.0.lcssa
  br i1 %cmp4, label %for.end.do.end_crit_edge, label %if.end6

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.inc.do.end_crit_edge
  %8 = ptrtoint ptr %mbox1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mbox1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.33) #9
  br label %cleanup

if.end6:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %pchan.i = getelementptr inbounds %struct.mhu_db_channel, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %pchan.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pchan.i, align 4
  %rx_reg.i = getelementptr %struct.arm_mhu, ptr %3, i32 0, i32 1, i32 %11, i32 2
  %12 = ptrtoint ptr %rx_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_reg.i, align 4
  %doorbell.i = getelementptr inbounds %struct.mhu_db_channel, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %doorbell.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %doorbell.i, align 4
  %shl.i = shl nuw i32 1, %15
  %16 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #6
  %add.ptr.i = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #6, !srcloc !92
  %17 = ptrtoint ptr %mbox1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mbox1, align 8
  %19 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %con_priv, align 4
  tail call void @devm_kfree(ptr noundef %18, ptr noundef %20) #6
  %21 = ptrtoint ptr %con_priv to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %con_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mhu_db_last_tx_done(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %pchan = getelementptr inbounds %struct.mhu_db_channel, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pchan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pchan, align 4
  %tx_reg = getelementptr %struct.arm_mhu, ptr %3, i32 0, i32 1, i32 %5, i32 1
  %6 = ptrtoint ptr %tx_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_reg, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !91
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %doorbell = getelementptr inbounds %struct.mhu_db_channel, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %doorbell to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %doorbell, align 4
  %shl = shl nuw i32 1, %11
  %and = and i32 %shl, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_received_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !67, !69, !70, !71, !72, !73, !75, !76, !77, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__initcall__kmod_arm_mhu_db__290_348_arm_mhu_db_driver_init6, !1, !"__initcall__kmod_arm_mhu_db__290_348_arm_mhu_db_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mailbox/arm_mhu_db.c", i32 348, i32 1}
!2 = !{ptr @__exitcall_arm_mhu_db_driver_exit, !1, !"__exitcall_arm_mhu_db_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file291, !4, !"__UNIQUE_ID_file291", i1 false, i1 false}
!4 = !{!"../drivers/mailbox/arm_mhu_db.c", i32 350, i32 1}
!5 = !{ptr @__UNIQUE_ID_license292, !4, !"__UNIQUE_ID_license292", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description293, !7, !"__UNIQUE_ID_description293", i1 false, i1 false}
!7 = !{!"../drivers/mailbox/arm_mhu_db.c", i32 351, i32 1}
!8 = !{ptr @__UNIQUE_ID_author294, !9, !"__UNIQUE_ID_author294", i1 false, i1 false}
!9 = !{!"../drivers/mailbox/arm_mhu_db.c", i32 352, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mailbox/arm_mhu_db.c", i32 343, i32 11}
!12 = !{ptr @arm_mhu_db_driver, !13, !"arm_mhu_db_driver", i1 false, i1 false}
!13 = !{!"../drivers/mailbox/arm_mhu_db.c", i32 341, i32 27}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mailbox/arm_mhu_db.c", i32 260, i32 35}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mailbox/arm_mhu_db.c", i32 263, i32 33}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mailbox/arm_mhu_db.c", i32 265, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mhu_db_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @mhu_db_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mailbox/arm_mhu_db.c", i32 272, i32 3}
!28 = !{ptr @mhu_db_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mhu_db_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mailbox/arm_mhu_db.c", i32 303, i32 3}
!32 = !{ptr @mhu_db_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mhu_db_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mailbox/arm_mhu_db.c", i32 311, i32 4}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @mhu_db_probe.__UNIQUE_ID_ddebug289, !35, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mailbox/arm_mhu_db.c", i32 320, i32 21}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mailbox/arm_mhu_db.c", i32 322, i32 4}
!42 = !{ptr @mhu_db_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mhu_db_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mailbox/arm_mhu_db.c", i32 328, i32 2}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mhu_db_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @mhu_db_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mailbox/arm_mhu_db.c", i32 199, i32 3}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mhu_db_mbox_xlate._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @mhu_db_mbox_xlate._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mailbox/arm_mhu_db.c", i32 208, i32 3}
!56 = !{ptr @mhu_db_mbox_xlate._entry.26, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @mhu_db_mbox_xlate._entry_ptr.28, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mailbox/arm_mhu_db.c", i32 219, i32 3}
!60 = !{ptr @mhu_db_mbox_xlate._entry.29, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @mhu_db_mbox_xlate._entry_ptr.31, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mailbox/arm_mhu_db.c", i32 235, i32 2}
!64 = !{ptr @mhu_db_mbox_xlate.__UNIQUE_ID_ddebug288, !63, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!65 = !{ptr @mhu_db_ops, !66, !"mhu_db_ops", i1 false, i1 false}
!66 = !{!"../drivers/mailbox/arm_mhu_db.c", i32 241, i32 35}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mailbox/arm_mhu_db.c", i32 177, i32 3}
!69 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mhu_db_shutdown._entry, !68, !"_entry", i1 false, i1 false}
!72 = !{ptr @mhu_db_shutdown._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mailbox/arm_mhu_db.c", i32 116, i32 3}
!75 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @mhu_db_mbox_irq_to_channel._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @mhu_db_mbox_irq_to_channel._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @mhu_ids, !79, !"mhu_ids", i1 false, i1 false}
!79 = !{!"../drivers/mailbox/arm_mhu_db.c", i32 332, i32 23}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{!"auto-init"}
!90 = !{i64 2148734629, i64 2148734634, i64 2148734647, i64 2148734691, i64 2148734725, i64 2148734746}
!91 = !{i64 5846903}
!92 = !{i64 5846485}
