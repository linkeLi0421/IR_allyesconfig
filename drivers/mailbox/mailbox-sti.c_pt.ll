; ModuleID = '/llk/IR_all_yes/drivers/mailbox/mailbox-sti.c_pt.bc'
source_filename = "../drivers/mailbox/mailbox-sti.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mbox_chan_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sti_mbox_pdata = type { i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sti_mbox_device = type { ptr, ptr, ptr, ptr, [4 x i32], %struct.spinlock }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.list_head }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }
%struct.sti_channel = type { ptr, i32, i32 }

@__initcall__kmod_mailbox_sti__191_492_sti_mbox_driver_init6 = internal global ptr @sti_mbox_driver_init, section ".initcall6.init", align 4
@sti_mbox_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sti_mbox_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sti_mailbox_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sti_mbox_driver_exit = internal global ptr @sti_mbox_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file192 = internal constant [45 x i8] c"mailbox_sti.file=drivers/mailbox/mailbox-sti\00", section ".modinfo", align 1
@__UNIQUE_ID_license193 = internal constant [24 x i8] c"mailbox_sti.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description194 = internal constant [62 x i8] c"mailbox_sti.description=STMicroelectronics Mailbox Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author195 = internal constant [51 x i8] c"mailbox_sti.author=Lee Jones <lee.jones@linaro.org\00", section ".modinfo", align 1
@__UNIQUE_ID_alias196 = internal constant [39 x i8] c"mailbox_sti.alias=platform:mailbox-sti\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sti-mailbox\00", [20 x i8] zeroinitializer }, align 32
@sti_mailbox_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-mailbox\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mbox_stih407_pdata }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sti_mbox_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 416, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No configuration found\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sti_mbox_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/mailbox/mailbox-sti.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sti_mbox_probe._entry_ptr = internal global ptr @sti_mbox_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mbox-name\00", [22 x i8] zeroinitializer }, align 32
@sti_mbox_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&mdev->lock\00", [20 x i8] zeroinitializer }, align 32
@sti_mbox_ops = internal constant { %struct.mbox_chan_ops, [40 x i8] } { %struct.mbox_chan_ops { ptr @sti_mbox_send_data, ptr null, ptr @sti_mbox_startup_chan, ptr @sti_mbox_shutdown_chan, ptr @sti_mbox_tx_is_ready, ptr null }, [40 x i8] zeroinitializer }, align 32
@sti_mbox_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 467, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Registered Tx only Mailbox\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sti_mbox_probe._entry_ptr.11 = internal global ptr @sti_mbox_probe._entry.8, section ".printk_index", align 4
@sti_mbox_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 476, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Can't claim IRQ %d\0A\00", [44 x i8] zeroinitializer }, align 32
@sti_mbox_probe._entry_ptr.14 = internal global ptr @sti_mbox_probe._entry.12, section ".printk_index", align 4
@sti_mbox_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 480, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Registered Tx/Rx Mailbox\0A\00", [34 x i8] zeroinitializer }, align 32
@sti_mbox_probe._entry_ptr.17 = internal global ptr @sti_mbox_probe._entry.15, section ".printk_index", align 4
@sti_mbox_send_data.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mailbox_sti\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sti_mbox_send_data\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Sent via Mailbox %s: instance: %d channel: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@sti_mbox_shutdown_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 311, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Request to free non-existent channel\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sti_mbox_shutdown_chan\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sti_mbox_shutdown_chan._entry_ptr = internal global ptr @sti_mbox_shutdown_chan._entry, section ".printk_index", align 4
@sti_mbox_tx_is_ready.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sti_mbox_tx_is_ready\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Mbox: %s: inst: %d, chan: %d disabled\0A\00", [57 x i8] zeroinitializer }, align 32
@sti_mbox_tx_is_ready.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.24, ptr @.str.3, ptr @.str.26, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Mbox: %s: inst: %d, chan: %d not ready\0A\00", [56 x i8] zeroinitializer }, align 32
@sti_mbox_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 336, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Invalid channel requested instance: %d channel: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sti_mbox_xlate\00", [17 x i8] zeroinitializer }, align 32
@sti_mbox_xlate._entry_ptr = internal global ptr @sti_mbox_xlate._entry, section ".printk_index", align 4
@sti_mbox_xlate._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 349, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Channel in use\0A\00", [16 x i8] zeroinitializer }, align 32
@sti_mbox_xlate._entry_ptr.31 = internal global ptr @sti_mbox_xlate._entry.29, section ".printk_index", align 4
@sti_mbox_xlate._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.3, i32 362, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No free channels left\0A\00", [41 x i8] zeroinitializer }, align 32
@sti_mbox_xlate._entry_ptr.34 = internal global ptr @sti_mbox_xlate._entry.32, section ".printk_index", align 4
@sti_mbox_xlate._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.3, i32 378, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Mbox: %s: Created channel: instance: %d channel: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@sti_mbox_xlate._entry_ptr.37 = internal global ptr @sti_mbox_xlate._entry.35, section ".printk_index", align 4
@sti_mbox_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 233, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Unexpected IRQ: %s\0A  instance: %d: channel: %d [enabled: %x]\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sti_mbox_irq_handler\00", [43 x i8] zeroinitializer }, align 32
@sti_mbox_irq_handler._entry_ptr = internal global ptr @sti_mbox_irq_handler._entry, section ".printk_index", align 4
@sti_mbox_irq_handler._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.3, i32 246, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Spurious IRQ - was a channel requested?\0A\00", [55 x i8] zeroinitializer }, align 32
@sti_mbox_irq_handler._entry_ptr.42 = internal global ptr @sti_mbox_irq_handler._entry.40, section ".printk_index", align 4
@sti_mbox_irq_to_channel.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 0, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sti_mbox_irq_to_channel\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"IRQ fired on instance: %d channel: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@sti_mbox_to_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 114, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Channel not registered: instance: %d channel: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sti_mbox_to_channel\00", [44 x i8] zeroinitializer }, align 32
@sti_mbox_to_channel._entry_ptr = internal global ptr @sti_mbox_to_channel._entry, section ".printk_index", align 4
@mbox_stih407_pdata = internal constant { %struct.sti_mbox_pdata, [24 x i8] } { %struct.sti_mbox_pdata { i32 4, i32 32 }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"sti_mbox_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 485, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 488, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"sti_mailbox_match\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 395, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 416, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 431, i32 36 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 447, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [13 x i8] c"sti_mbox_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 383, i32 35 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 466, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 476, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 480, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 285, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 311, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 260, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 266, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 334, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 349, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 362, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 376, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 229, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 246, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 181, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 112, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [19 x i8] c"mbox_stih407_pdata\00", align 1
@___asan_gen_.195 = private constant [33 x i8] c"../drivers/mailbox/mailbox-sti.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 390, i32 36 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_alias196, ptr @__UNIQUE_ID_author195, ptr @__UNIQUE_ID_description194, ptr @__UNIQUE_ID_file192, ptr @__UNIQUE_ID_license193, ptr @__exitcall_sti_mbox_driver_exit, ptr @__initcall__kmod_mailbox_sti__191_492_sti_mbox_driver_init6, ptr @sti_mbox_driver_exit, ptr @sti_mbox_irq_handler._entry, ptr @sti_mbox_irq_handler._entry.40, ptr @sti_mbox_irq_handler._entry_ptr, ptr @sti_mbox_irq_handler._entry_ptr.42, ptr @sti_mbox_probe._entry, ptr @sti_mbox_probe._entry.12, ptr @sti_mbox_probe._entry.15, ptr @sti_mbox_probe._entry.8, ptr @sti_mbox_probe._entry_ptr, ptr @sti_mbox_probe._entry_ptr.11, ptr @sti_mbox_probe._entry_ptr.14, ptr @sti_mbox_probe._entry_ptr.17, ptr @sti_mbox_shutdown_chan._entry, ptr @sti_mbox_shutdown_chan._entry_ptr, ptr @sti_mbox_to_channel._entry, ptr @sti_mbox_to_channel._entry_ptr, ptr @sti_mbox_xlate._entry, ptr @sti_mbox_xlate._entry.29, ptr @sti_mbox_xlate._entry.32, ptr @sti_mbox_xlate._entry.35, ptr @sti_mbox_xlate._entry_ptr, ptr @sti_mbox_xlate._entry_ptr.31, ptr @sti_mbox_xlate._entry_ptr.34, ptr @sti_mbox_xlate._entry_ptr.37, ptr @sti_mbox_driver, ptr @.str, ptr @sti_mailbox_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @sti_mbox_probe.__key, ptr @.str.7, ptr @sti_mbox_ops, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @mbox_stih407_pdata], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_mbox_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_mailbox_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_mbox_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_mbox_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_mbox_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_mbox_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_mbox_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_mbox_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_mbox_shutdown_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_mbox_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_mbox_xlate._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_mbox_xlate._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_mbox_xlate._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_mbox_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_mbox_irq_handler._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_mbox_to_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_stih407_pdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_mbox_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sti_mbox_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sti_mbox_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sti_mbox_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_mbox_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_device(ptr noundef nonnull @sti_mailbox_match, ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %platform_data, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 76, i32 noundef 3520) #6
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call9 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.sti_mbox_device, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %name = getelementptr inbounds %struct.sti_mbox_device, ptr %call.i, i32 0, i32 3
  %call16 = tail call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef %name) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end15.if.end20_crit_edge, label %if.then18

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %full_name = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %full_name, align 4
  %10 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %name, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15.if.end20_crit_edge
  %call.i122 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 88, i32 noundef 3520) #6
  %tobool23.not = icmp eq ptr %call.i122, null
  br i1 %tobool23.not, label %if.end20.cleanup_crit_edge, label %if.end25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4160, i32 noundef 3520) #6
  %tobool28.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool28.not, label %if.end25.cleanup_crit_edge, label %if.end30

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %call.i, align 4
  %mbox33 = getelementptr inbounds %struct.sti_mbox_device, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %mbox33 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i122, ptr %mbox33, align 4
  %lock = getelementptr inbounds %struct.sti_mbox_device, ptr %call.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @sti_mbox_probe.__key, i16 noundef signext 3) #6
  %txdone_irq = getelementptr inbounds %struct.mbox_controller, ptr %call.i122, i32 0, i32 4
  %13 = ptrtoint ptr %txdone_irq to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %txdone_irq, align 8
  %txdone_poll = getelementptr inbounds %struct.mbox_controller, ptr %call.i122, i32 0, i32 5
  %14 = ptrtoint ptr %txdone_poll to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %txdone_poll, align 1
  %txpoll_period = getelementptr inbounds %struct.mbox_controller, ptr %call.i122, i32 0, i32 6
  %15 = ptrtoint ptr %txpoll_period to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 100, ptr %txpoll_period, align 4
  %ops = getelementptr inbounds %struct.mbox_controller, ptr %call.i122, i32 0, i32 1
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @sti_mbox_ops, ptr %ops, align 4
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %19 = ptrtoint ptr %call.i122 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %call.i122, align 8
  %of_xlate = getelementptr inbounds %struct.mbox_controller, ptr %call.i122, i32 0, i32 7
  %20 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @sti_mbox_xlate, ptr %of_xlate, align 8
  %chans40 = getelementptr inbounds %struct.mbox_controller, ptr %call.i122, i32 0, i32 2
  %21 = ptrtoint ptr %chans40 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call5.i.i, ptr %chans40, align 8
  %num_chans = getelementptr inbounds %struct.mbox_controller, ptr %call.i122, i32 0, i32 3
  %22 = ptrtoint ptr %num_chans to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 20, ptr %num_chans, align 4
  %call42 = tail call i32 @devm_mbox_controller_register(ptr noundef %dev, ptr noundef nonnull %call.i122) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end45:                                         ; preds = %if.end30
  %call46 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp = icmp slt i32 %call46, 0
  %23 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name, align 4
  br i1 %cmp, label %do.end50, label %if.end53

do.end50:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %24) #9
  br label %cleanup

if.end53:                                         ; preds = %if.end45
  %call56 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call46, ptr noundef nonnull @sti_mbox_irq_handler, ptr noundef nonnull @sti_mbox_thread_handler, i32 noundef 8192, ptr noundef %24, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %do.end66, label %do.end61

do.end61:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call46) #9
  br label %cleanup

do.end66:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef %26) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %do.end61, %do.end50, %if.end30.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.then12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %7, %if.then12 ], [ 0, %do.end50 ], [ -22, %do.end61 ], [ 0, %do.end66 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end20.cleanup_crit_edge ], [ -12, %if.end25.cleanup_crit_edge ], [ %call42, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sti_mbox_xlate(ptr nocapture noundef readonly %mbox, ptr nocapture noundef readonly %spec) #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %spec, i32 0, i32 2
  %8 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %args, align 4
  %arrayidx4 = getelementptr %struct.of_phandle_args, ptr %spec, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp.not = icmp ult i32 %9, %13
  br i1 %cmp.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %num_chan = getelementptr inbounds %struct.sti_mbox_pdata, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %num_chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_chan, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp5.not = icmp ult i32 %11, %15
  br i1 %cmp5.not, label %for.cond.preheader, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.preheader:                               ; preds = %lor.lhs.false
  %num_chans = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 3
  %16 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp8107 = icmp sgt i32 %17, 0
  br i1 %cmp8107, label %for.body.lr.ph, label %for.cond.preheader.do.end38_crit_edge

for.cond.preheader.do.end38_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end38

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %chans = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 2
  %18 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chans, align 8
  br label %for.body

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %9, i32 noundef %11) #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0109 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %chan.0108 = phi ptr [ null, %for.body.lr.ph ], [ %chan.1, %for.inc.for.body_crit_edge ]
  %con_priv = getelementptr %struct.mbox_chan, ptr %19, i32 %i.0109, i32 9
  %20 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %con_priv, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %if.end26, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %cmp13 = icmp eq ptr %1, %25
  br i1 %cmp13, label %land.lhs.true14, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true14:                                  ; preds = %land.lhs.true
  %instance15 = getelementptr inbounds %struct.sti_channel, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %instance15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %instance15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %27)
  %cmp16 = icmp eq i32 %9, %27
  br i1 %cmp16, label %land.lhs.true17, label %land.lhs.true14.for.inc_crit_edge

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true17:                                  ; preds = %land.lhs.true14
  %channel18 = getelementptr inbounds %struct.sti_channel, ptr %21, i32 0, i32 2
  %28 = ptrtoint ptr %channel18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channel18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %29)
  %cmp19 = icmp eq i32 %11, %29
  br i1 %cmp19, label %do.end23, label %land.lhs.true17.for.inc_crit_edge

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end23:                                         ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.30) #9
  br label %cleanup

if.end26:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %tobool27.not.not = icmp eq ptr %chan.0108, null
  %arrayidx32 = getelementptr %struct.mbox_chan, ptr %19, i32 %i.0109
  %spec.select = select i1 %tobool27.not.not, ptr %arrayidx32, ptr %chan.0108
  br label %for.inc

for.inc:                                          ; preds = %if.end26, %land.lhs.true17.for.inc_crit_edge, %land.lhs.true14.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %chan.1 = phi ptr [ %spec.select, %if.end26 ], [ %chan.0108, %land.lhs.true17.for.inc_crit_edge ], [ %chan.0108, %land.lhs.true14.for.inc_crit_edge ], [ %chan.0108, %land.lhs.true.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0109, 1
  %exitcond.not = icmp eq i32 %inc, %17
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool34.not = icmp eq ptr %chan.1, null
  br i1 %tobool34.not, label %for.end.do.end38_crit_edge, label %if.end41

for.end.do.end38_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end38

do.end38:                                         ; preds = %for.end.do.end38_crit_edge, %for.cond.preheader.do.end38_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.33) #9
  br label %cleanup

if.end41:                                         ; preds = %for.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 12, i32 noundef 3520) #6
  %tobool44.not = icmp eq ptr %call.i, null
  br i1 %tobool44.not, label %if.end41.cleanup_crit_edge, label %if.end47

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %3, ptr %call.i, align 4
  %instance49 = getelementptr inbounds %struct.sti_channel, ptr %call.i, i32 0, i32 1
  %31 = ptrtoint ptr %instance49 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %9, ptr %instance49, align 4
  %channel50 = getelementptr inbounds %struct.sti_channel, ptr %call.i, i32 0, i32 2
  %32 = ptrtoint ptr %channel50 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %11, ptr %channel50, align 4
  %con_priv51 = getelementptr inbounds %struct.mbox_chan, ptr %chan.1, i32 0, i32 9
  %33 = ptrtoint ptr %con_priv51 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %con_priv51, align 4
  %34 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mbox, align 8
  %name = getelementptr inbounds %struct.sti_mbox_device, ptr %3, i32 0, i32 3
  %36 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.36, ptr noundef %37, i32 noundef %9, i32 noundef %11) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end41.cleanup_crit_edge, %do.end38, %do.end23, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -16 to ptr), %do.end23 ], [ %chan.1, %if.end47 ], [ inttoptr (i32 -16 to ptr), %do.end38 ], [ inttoptr (i32 -12 to ptr), %if.end41.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mbox_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_mbox_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp37.not = icmp eq i32 %5, 0
  br i1 %cmp37.not, label %entry.do.end14_crit_edge, label %for.body.lr.ph

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

for.body.lr.ph:                                   ; preds = %entry
  %name = getelementptr inbounds %struct.sti_mbox_device, ptr %data, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ret.040 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %instance.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call1 = tail call fastcc ptr @sti_mbox_irq_to_channel(ptr noundef %data, i32 noundef %instance.038)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %con_priv = getelementptr inbounds %struct.mbox_chan, ptr %call1, i32 0, i32 9
  %6 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %con_priv, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %instance2.i = getelementptr inbounds %struct.sti_channel, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %instance2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %instance2.i, align 4
  %channel3.i = getelementptr inbounds %struct.sti_channel, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %channel3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel3.i, align 4
  %arrayidx.i = getelementptr %struct.sti_mbox_device, ptr %9, i32 0, i32 4, i32 %11
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %shl.i = shl nuw i32 1, %13
  %and.i = and i32 %15, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name, align 4
  %arrayidx = getelementptr %struct.sti_mbox_device, ptr %data, i32 0, i32 4, i32 %instance.038
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.38, ptr noundef %19, i32 noundef %11, i32 noundef %13, i32 noundef %21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.040)
  %cmp6 = icmp eq i32 %ret.040, 0
  %spec.store.select = select i1 %cmp6, i32 1, i32 %ret.040
  br label %for.inc

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %base4.i = getelementptr inbounds %struct.sti_mbox_device, ptr %9, i32 0, i32 2
  %22 = ptrtoint ptr %base4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base4.i, align 4
  %mul.i = shl i32 %11, 2
  %add.ptr.i = getelementptr i8, ptr %23, i32 164
  %lock.i = getelementptr inbounds %struct.sti_mbox_device, ptr %9, i32 0, i32 5
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %neg.i = xor i32 %shl.i, -1
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %and.i36 = and i32 %25, %neg.i
  store i32 %and.i36, ptr %arrayidx.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #6
  %add.ptr10.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %26) #6, !srcloc !110
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call6.i) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end9, %do.end, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ 2, %if.end9 ], [ %spec.store.select, %do.end ], [ %ret.040, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %instance.038, 1
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %3, align 4
  %cmp = icmp ult i32 %inc, %28
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp10 = icmp eq i32 %ret.1, 0
  br i1 %cmp10, label %for.end.do.end14_crit_edge, label %for.end.if.end16_crit_edge

for.end.if.end16_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

for.end.do.end14_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.end14:                                         ; preds = %for.end.do.end14_crit_edge, %entry.do.end14_crit_edge
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.41) #9
  br label %if.end16

if.end16:                                         ; preds = %do.end14, %for.end.if.end16_crit_edge
  %ret.0.lcssa43 = phi i32 [ 0, %do.end14 ], [ %ret.1, %for.end.if.end16_crit_edge ]
  ret i32 %ret.0.lcssa43
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_mbox_thread_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp18.not = icmp eq i32 %5, 0
  br i1 %cmp18.not, label %entry.for.end_crit_edge, label %entry.keep_looking.preheader_crit_edge

entry.keep_looking.preheader_crit_edge:           ; preds = %entry
  br label %keep_looking.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

keep_looking.preheader:                           ; preds = %for.inc.keep_looking.preheader_crit_edge, %entry.keep_looking.preheader_crit_edge
  %instance.019 = phi i32 [ %inc, %for.inc.keep_looking.preheader_crit_edge ], [ 0, %entry.keep_looking.preheader_crit_edge ]
  %call115 = tail call fastcc ptr @sti_mbox_irq_to_channel(ptr noundef %data, i32 noundef %instance.019)
  %tobool.not16 = icmp eq ptr %call115, null
  br i1 %tobool.not16, label %keep_looking.preheader.for.inc_crit_edge, label %keep_looking.preheader.if.end_crit_edge

keep_looking.preheader.if.end_crit_edge:          ; preds = %keep_looking.preheader
  br label %if.end

keep_looking.preheader.for.inc_crit_edge:         ; preds = %keep_looking.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %if.end.if.end_crit_edge, %keep_looking.preheader.if.end_crit_edge
  %call117 = phi ptr [ %call1, %if.end.if.end_crit_edge ], [ %call115, %keep_looking.preheader.if.end_crit_edge ]
  tail call void @mbox_chan_received_data(ptr noundef nonnull %call117, ptr noundef null) #6
  %con_priv.i = getelementptr inbounds %struct.mbox_chan, ptr %call117, i32 0, i32 9
  %6 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %con_priv.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %instance2.i = getelementptr inbounds %struct.sti_channel, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %instance2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %instance2.i, align 4
  %channel3.i = getelementptr inbounds %struct.sti_channel, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %channel3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel3.i, align 4
  %base4.i = getelementptr inbounds %struct.sti_mbox_device, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %base4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base4.i, align 4
  %mul.i = shl i32 %11, 2
  %add.ptr.i = getelementptr i8, ptr %15, i32 68
  %shl.i = shl nuw i32 1, %13
  %16 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #6
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %16) #6, !srcloc !110
  %17 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %con_priv.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %instance2.i9 = getelementptr inbounds %struct.sti_channel, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %instance2.i9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %instance2.i9, align 4
  %channel3.i10 = getelementptr inbounds %struct.sti_channel, ptr %18, i32 0, i32 2
  %23 = ptrtoint ptr %channel3.i10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channel3.i10, align 4
  %base4.i11 = getelementptr inbounds %struct.sti_mbox_device, ptr %20, i32 0, i32 2
  %25 = ptrtoint ptr %base4.i11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base4.i11, align 4
  %mul.i12 = shl i32 %22, 2
  %add.ptr.i13 = getelementptr i8, ptr %26, i32 132
  %lock.i = getelementptr inbounds %struct.sti_mbox_device, ptr %20, i32 0, i32 5
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %shl.i14 = shl nuw i32 1, %24
  %arrayidx.i = getelementptr %struct.sti_mbox_device, ptr %20, i32 0, i32 4, i32 %22
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %28, %shl.i14
  store i32 %or.i, ptr %arrayidx.i, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %shl.i14) #6
  %add.ptr10.i = getelementptr i8, ptr %add.ptr.i13, i32 %mul.i12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %29) #6, !srcloc !110
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call6.i) #6
  %call1 = tail call fastcc ptr @sti_mbox_irq_to_channel(ptr noundef %data, i32 noundef %instance.019)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.end.if.end_crit_edge

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %keep_looking.preheader.for.inc_crit_edge
  %inc = add nuw i32 %instance.019, 1
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %3, align 4
  %cmp = icmp ult i32 %inc, %31
  br i1 %cmp, label %for.inc.keep_looking.preheader_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.keep_looking.preheader_crit_edge:         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %keep_looking.preheader

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_mbox_send_data(ptr nocapture noundef readonly %chan, ptr nocapture noundef readnone %data) #2 align 64 {
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
  %instance2 = getelementptr inbounds %struct.sti_channel, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %instance2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %instance2, align 4
  %channel3 = getelementptr inbounds %struct.sti_channel, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %channel3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel3, align 4
  %base4 = getelementptr inbounds %struct.sti_mbox_device, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %base4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base4, align 4
  %mul = shl i32 %5, 2
  %add.ptr = getelementptr i8, ptr %9, i32 %mul
  %shl = shl nuw i32 1, %7
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %10) #6, !srcloc !110
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sti_mbox_send_data.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sti_mbox_send_data, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !111

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %name = getelementptr inbounds %struct.sti_mbox_device, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sti_mbox_send_data.__UNIQUE_ID_ddebug190, ptr noundef %12, ptr noundef nonnull @.str.20, ptr noundef %14, i32 noundef %5, i32 noundef %7) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_mbox_startup_chan(ptr nocapture noundef readonly %chan) #2 align 64 {
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
  %instance2.i = getelementptr inbounds %struct.sti_channel, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %instance2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %instance2.i, align 4
  %channel3.i = getelementptr inbounds %struct.sti_channel, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %channel3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel3.i, align 4
  %base4.i = getelementptr inbounds %struct.sti_mbox_device, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %base4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base4.i, align 4
  %mul.i = shl i32 %5, 2
  %add.ptr.i = getelementptr i8, ptr %9, i32 %mul.i
  %shl.i = shl nuw i32 1, %7
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #6
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %10) #6, !srcloc !110
  %11 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %con_priv.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %instance2.i3 = getelementptr inbounds %struct.sti_channel, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %instance2.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %instance2.i3, align 4
  %channel3.i4 = getelementptr inbounds %struct.sti_channel, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %channel3.i4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel3.i4, align 4
  %base4.i5 = getelementptr inbounds %struct.sti_mbox_device, ptr %14, i32 0, i32 2
  %19 = ptrtoint ptr %base4.i5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base4.i5, align 4
  %mul.i6 = shl i32 %16, 2
  %add.ptr.i7 = getelementptr i8, ptr %20, i32 %mul.i6
  %lock.i = getelementptr inbounds %struct.sti_mbox_device, ptr %14, i32 0, i32 5
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %shl.i8 = shl nuw i32 1, %18
  %arrayidx.i = getelementptr %struct.sti_mbox_device, ptr %14, i32 0, i32 4, i32 %16
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %22, %shl.i8
  store i32 %or.i, ptr %arrayidx.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %shl.i8) #6
  %add.ptr10.i = getelementptr i8, ptr %add.ptr.i7, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %23) #6, !srcloc !110
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call6.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sti_mbox_shutdown_chan(ptr noundef %chan) #2 align 64 {
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
  %mbox1 = getelementptr inbounds %struct.sti_mbox_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mbox1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mbox1, align 4
  %num_chans = getelementptr inbounds %struct.mbox_controller, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp27 = icmp sgt i32 %7, 0
  br i1 %cmp27, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %chans = getelementptr inbounds %struct.mbox_controller, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chans, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mbox_chan, ptr %9, i32 %i.028
  %cmp2 = icmp eq ptr %arrayidx, %chan
  br i1 %cmp2, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.028, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %i.0.lcssa)
  %cmp4 = icmp eq i32 %7, %i.0.lcssa
  br i1 %cmp4, label %for.end.do.end_crit_edge, label %if.end6

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.inc.do.end_crit_edge
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.21) #9
  br label %cleanup

if.end6:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %instance2.i = getelementptr inbounds %struct.sti_channel, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %instance2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %instance2.i, align 4
  %channel3.i = getelementptr inbounds %struct.sti_channel, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %channel3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel3.i, align 4
  %base4.i = getelementptr inbounds %struct.sti_mbox_device, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %base4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base4.i, align 4
  %mul.i = shl i32 %13, 2
  %add.ptr.i = getelementptr i8, ptr %17, i32 %mul.i
  %lock.i = getelementptr inbounds %struct.sti_mbox_device, ptr %3, i32 0, i32 5
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %shl.i = shl nuw i32 1, %15
  %neg.i = xor i32 %shl.i, -1
  %arrayidx.i = getelementptr %struct.sti_mbox_device, ptr %3, i32 0, i32 4, i32 %13
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %19, %neg.i
  store i32 %and.i, ptr %arrayidx.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #6
  %add.ptr10.i = getelementptr i8, ptr %add.ptr.i, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %20) #6, !srcloc !110
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call6.i) #6
  %21 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %con_priv, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %instance2.i21 = getelementptr inbounds %struct.sti_channel, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %instance2.i21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %instance2.i21, align 4
  %channel3.i22 = getelementptr inbounds %struct.sti_channel, ptr %22, i32 0, i32 2
  %27 = ptrtoint ptr %channel3.i22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %channel3.i22, align 4
  %base4.i23 = getelementptr inbounds %struct.sti_mbox_device, ptr %24, i32 0, i32 2
  %29 = ptrtoint ptr %base4.i23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base4.i23, align 4
  %mul.i24 = shl i32 %26, 2
  %add.ptr.i25 = getelementptr i8, ptr %30, i32 %mul.i24
  %shl.i26 = shl nuw i32 1, %28
  %31 = tail call i32 @llvm.bswap.i32(i32 %shl.i26) #6
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i25, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %31) #6, !srcloc !110
  %32 = ptrtoint ptr %con_priv to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %con_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @sti_mbox_tx_is_ready(ptr nocapture noundef readonly %chan) #2 align 64 {
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
  %instance2 = getelementptr inbounds %struct.sti_channel, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %instance2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %instance2, align 4
  %channel3 = getelementptr inbounds %struct.sti_channel, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %channel3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel3, align 4
  %base4 = getelementptr inbounds %struct.sti_mbox_device, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %base4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base4, align 4
  %mul = shl i32 %5, 2
  %add.ptr = getelementptr i8, ptr %9, i32 %mul
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 100
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !112
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %shl = shl nuw i32 1, %7
  %and = and i32 %11, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end12

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sti_mbox_tx_is_ready.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sti_mbox_tx_is_ready, %if.then11)) #6
          to label %cleanup [label %if.then11], !srcloc !111

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %name = getelementptr inbounds %struct.sti_mbox_device, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sti_mbox_tx_is_ready.__UNIQUE_ID_ddebug188, ptr noundef %13, ptr noundef nonnull @.str.25, ptr noundef %15, i32 noundef %5, i32 noundef %7) #6
  br label %cleanup

if.end12:                                         ; preds = %entry
  %add.ptr14 = getelementptr i8, ptr %add.ptr, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #6, !srcloc !112
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %and18 = and i32 %17, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end12.cleanup_crit_edge, label %do.body21

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body21:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sti_mbox_tx_is_ready.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sti_mbox_tx_is_ready, %if.then33)) #6
          to label %cleanup [label %if.then33], !srcloc !111

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %name35 = getelementptr inbounds %struct.sti_mbox_device, ptr %3, i32 0, i32 3
  %20 = ptrtoint ptr %name35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sti_mbox_tx_is_ready.__UNIQUE_ID_ddebug189, ptr noundef %19, ptr noundef nonnull @.str.26, ptr noundef %21, i32 noundef %5, i32 noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %do.body21, %if.end12.cleanup_crit_edge, %if.then11, %do.body
  %retval.0 = phi i1 [ false, %if.then11 ], [ false, %if.then33 ], [ true, %if.end12.cleanup_crit_edge ], [ false, %do.body ], [ false, %do.body21 ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sti_mbox_irq_to_channel(ptr nocapture noundef readonly %mdev, i32 noundef %instance) unnamed_addr #2 align 64 {
entry:
  %bits = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox1 = getelementptr inbounds %struct.sti_mbox_device, ptr %mdev, i32 0, i32 1
  %0 = ptrtoint ptr %mbox1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #6
  %base2 = getelementptr inbounds %struct.sti_mbox_device, ptr %mdev, i32 0, i32 2
  %2 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base2, align 4
  %mul = shl i32 %instance, 2
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #6, !srcloc !112
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not38 = icmp eq i32 %4, 0
  br i1 %tobool4.not38, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %num_chans.i = getelementptr inbounds %struct.mbox_controller, ptr %1, i32 0, i32 3
  %chans.i = getelementptr inbounds %struct.mbox_controller, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %channel.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call5 = call i32 @_test_and_clear_bit(i32 noundef %channel.039, ptr noundef nonnull %bits) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %for.body.for.inc_crit_edge, label %if.end8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %7 = ptrtoint ptr %num_chans.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_chans.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp19.i = icmp sgt i32 %8, 0
  br i1 %cmp19.i, label %for.body.lr.ph.i, label %if.end8.sti_mbox_to_channel.exit.thread_crit_edge

if.end8.sti_mbox_to_channel.exit.thread_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_mbox_to_channel.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end8
  %9 = ptrtoint ptr %chans.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chans.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.020.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %con_priv.i = getelementptr %struct.mbox_chan, ptr %10, i32 %i.020.i, i32 9
  %11 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %con_priv.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %instance1.i = getelementptr inbounds %struct.sti_channel, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %instance1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %instance1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %instance)
  %cmp2.i = icmp eq i32 %14, %instance
  br i1 %cmp2.i, label %land.lhs.true3.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %channel4.i = getelementptr inbounds %struct.sti_channel, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %channel4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channel4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %channel.039)
  %cmp5.i = icmp eq i32 %16, %channel.039
  br i1 %cmp5.i, label %sti_mbox_to_channel.exit, label %land.lhs.true3.i.for.inc.i_crit_edge

land.lhs.true3.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true3.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %8
  br i1 %exitcond.not.i, label %for.inc.i.sti_mbox_to_channel.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.sti_mbox_to_channel.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sti_mbox_to_channel.exit.thread

sti_mbox_to_channel.exit.thread:                  ; preds = %for.inc.i.sti_mbox_to_channel.exit.thread_crit_edge, %if.end8.sti_mbox_to_channel.exit.thread_crit_edge
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.45, i32 noundef %instance, i32 noundef %channel.039) #9
  br label %for.inc

sti_mbox_to_channel.exit:                         ; preds = %land.lhs.true3.i
  %arrayidx.le.i = getelementptr %struct.mbox_chan, ptr %10, i32 %i.020.i
  %tobool10.not = icmp eq ptr %arrayidx.le.i, null
  br i1 %tobool10.not, label %sti_mbox_to_channel.exit.for.inc_crit_edge, label %do.body

sti_mbox_to_channel.exit.for.inc_crit_edge:       ; preds = %sti_mbox_to_channel.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body:                                          ; preds = %sti_mbox_to_channel.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sti_mbox_irq_to_channel.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sti_mbox_irq_to_channel, %if.then17)) #6
          to label %cleanup [label %if.then17], !srcloc !111

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sti_mbox_irq_to_channel.__UNIQUE_ID_ddebug187, ptr noundef %20, ptr noundef nonnull @.str.44, i32 noundef %instance, i32 noundef %channel.039) #6
  br label %cleanup

for.inc:                                          ; preds = %sti_mbox_to_channel.exit.for.inc_crit_edge, %sti_mbox_to_channel.exit.thread, %for.body.for.inc_crit_edge
  %inc = add i32 %channel.039, 1
  %21 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %bits, align 4
  %tobool4.not = icmp eq i32 %.pr, 0
  br i1 %tobool4.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then17, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %arrayidx.le.i, %if.then17 ], [ %arrayidx.le.i, %do.body ], [ null, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_received_data(ptr noundef, ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !54, !55, !57, !58, !59, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__initcall__kmod_mailbox_sti__191_492_sti_mbox_driver_init6, !1, !"__initcall__kmod_mailbox_sti__191_492_sti_mbox_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mailbox/mailbox-sti.c", i32 492, i32 1}
!2 = !{ptr @__exitcall_sti_mbox_driver_exit, !1, !"__exitcall_sti_mbox_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file192, !4, !"__UNIQUE_ID_file192", i1 false, i1 false}
!4 = !{!"../drivers/mailbox/mailbox-sti.c", i32 494, i32 1}
!5 = !{ptr @__UNIQUE_ID_license193, !4, !"__UNIQUE_ID_license193", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description194, !7, !"__UNIQUE_ID_description194", i1 false, i1 false}
!7 = !{!"../drivers/mailbox/mailbox-sti.c", i32 495, i32 1}
!8 = !{ptr @__UNIQUE_ID_author195, !9, !"__UNIQUE_ID_author195", i1 false, i1 false}
!9 = !{!"../drivers/mailbox/mailbox-sti.c", i32 496, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias196, !11, !"__UNIQUE_ID_alias196", i1 false, i1 false}
!11 = !{!"../drivers/mailbox/mailbox-sti.c", i32 497, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mailbox/mailbox-sti.c", i32 488, i32 11}
!14 = !{ptr @sti_mbox_driver, !15, !"sti_mbox_driver", i1 false, i1 false}
!15 = !{!"../drivers/mailbox/mailbox-sti.c", i32 485, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mailbox/mailbox-sti.c", i32 416, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sti_mbox_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @sti_mbox_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mailbox/mailbox-sti.c", i32 431, i32 36}
!26 = !{ptr @sti_mbox_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/mailbox/mailbox-sti.c", i32 447, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mailbox/mailbox-sti.c", i32 466, i32 3}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @sti_mbox_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @sti_mbox_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mailbox/mailbox-sti.c", i32 476, i32 3}
!36 = !{ptr @sti_mbox_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @sti_mbox_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mailbox/mailbox-sti.c", i32 480, i32 2}
!40 = !{ptr @sti_mbox_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sti_mbox_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @sti_mbox_ops, !43, !"sti_mbox_ops", i1 false, i1 false}
!43 = !{!"../drivers/mailbox/mailbox-sti.c", i32 383, i32 35}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mailbox/mailbox-sti.c", i32 285, i32 2}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @sti_mbox_send_data.__UNIQUE_ID_ddebug190, !45, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mailbox/mailbox-sti.c", i32 311, i32 3}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @sti_mbox_shutdown_chan._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @sti_mbox_shutdown_chan._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mailbox/mailbox-sti.c", i32 260, i32 3}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sti_mbox_tx_is_ready.__UNIQUE_ID_ddebug188, !56, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mailbox/mailbox-sti.c", i32 266, i32 3}
!61 = !{ptr @sti_mbox_tx_is_ready.__UNIQUE_ID_ddebug189, !60, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mailbox/mailbox-sti.c", i32 334, i32 3}
!64 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @sti_mbox_xlate._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @sti_mbox_xlate._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mailbox/mailbox-sti.c", i32 349, i32 4}
!69 = !{ptr @sti_mbox_xlate._entry.29, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @sti_mbox_xlate._entry_ptr.31, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mailbox/mailbox-sti.c", i32 362, i32 3}
!73 = !{ptr @sti_mbox_xlate._entry.32, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @sti_mbox_xlate._entry_ptr.34, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mailbox/mailbox-sti.c", i32 376, i32 2}
!77 = !{ptr @sti_mbox_xlate._entry.35, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @sti_mbox_xlate._entry_ptr.37, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mailbox/mailbox-sti.c", i32 229, i32 4}
!81 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @sti_mbox_irq_handler._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @sti_mbox_irq_handler._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mailbox/mailbox-sti.c", i32 246, i32 3}
!86 = !{ptr @sti_mbox_irq_handler._entry.40, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @sti_mbox_irq_handler._entry_ptr.42, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mailbox/mailbox-sti.c", i32 181, i32 4}
!90 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @sti_mbox_irq_to_channel.__UNIQUE_ID_ddebug187, !89, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mailbox/mailbox-sti.c", i32 112, i32 2}
!94 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @sti_mbox_to_channel._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @sti_mbox_to_channel._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @sti_mailbox_match, !98, !"sti_mailbox_match", i1 false, i1 false}
!98 = !{!"../drivers/mailbox/mailbox-sti.c", i32 395, i32 34}
!99 = !{ptr @mbox_stih407_pdata, !100, !"mbox_stih407_pdata", i1 false, i1 false}
!100 = !{!"../drivers/mailbox/mailbox-sti.c", i32 390, i32 36}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{i64 4209296}
!111 = !{i64 2148728488, i64 2148728493, i64 2148728506, i64 2148728550, i64 2148728584, i64 2148728605}
!112 = !{i64 4209714}
