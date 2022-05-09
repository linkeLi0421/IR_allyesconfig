; ModuleID = '/llk/IR_all_yes/drivers/mailbox/sun6i-msgbox.c_pt.bc'
source_filename = "../drivers/mailbox/sun6i-msgbox.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mbox_chan_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }
%struct.sun6i_msgbox = type { %struct.mbox_controller, ptr, %struct.spinlock, ptr }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.list_head }

@__initcall__kmod_sun6i_msgbox__191_315_sun6i_msgbox_driver_init6 = internal global ptr @sun6i_msgbox_driver_init, section ".initcall6.init", align 4
@sun6i_msgbox_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun6i_msgbox_probe, ptr @sun6i_msgbox_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun6i_msgbox_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun6i_msgbox_driver_exit = internal global ptr @sun6i_msgbox_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author192 = internal constant [57 x i8] c"sun6i_msgbox.author=Samuel Holland <samuel@sholland.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description193 = internal constant [72 x i8] c"sun6i_msgbox.description=Allwinner sun6i/sun8i/sun9i/sun50i Message Box\00", section ".modinfo", align 1
@__UNIQUE_ID_file194 = internal constant [47 x i8] c"sun6i_msgbox.file=drivers/mailbox/sun6i-msgbox\00", section ".modinfo", align 1
@__UNIQUE_ID_license195 = internal constant [28 x i8] c"sun6i_msgbox.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sun6i-msgbox\00", [19 x i8] zeroinitializer }, align 32
@sun6i_msgbox_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-msgbox\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sun6i_msgbox_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 217, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get clock: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sun6i_msgbox_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/mailbox/sun6i-msgbox.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun6i_msgbox_probe._entry_ptr = internal global ptr @sun6i_msgbox_probe._entry, section ".printk_index", align 4
@sun6i_msgbox_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 223, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@sun6i_msgbox_probe._entry_ptr.8 = internal global ptr @sun6i_msgbox_probe._entry.6, section ".printk_index", align 4
@sun6i_msgbox_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 230, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get reset control: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@sun6i_msgbox_probe._entry_ptr.11 = internal global ptr @sun6i_msgbox_probe._entry.9, section ".printk_index", align 4
@sun6i_msgbox_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 244, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to deassert reset: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@sun6i_msgbox_probe._entry_ptr.14 = internal global ptr @sun6i_msgbox_probe._entry.12, section ".printk_index", align 4
@sun6i_msgbox_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 251, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to map MMIO resource: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@sun6i_msgbox_probe._entry_ptr.17 = internal global ptr @sun6i_msgbox_probe._entry.15, section ".printk_index", align 4
@sun6i_msgbox_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 261, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register IRQ handler: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@sun6i_msgbox_probe._entry_ptr.20 = internal global ptr @sun6i_msgbox_probe._entry.18, section ".printk_index", align 4
@sun6i_msgbox_chan_ops = internal constant { %struct.mbox_chan_ops, [40 x i8] } { %struct.mbox_chan_ops { ptr @sun6i_msgbox_send_data, ptr null, ptr @sun6i_msgbox_startup, ptr @sun6i_msgbox_shutdown, ptr @sun6i_msgbox_last_tx_done, ptr @sun6i_msgbox_peek_data }, [40 x i8] zeroinitializer }, align 32
@sun6i_msgbox_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&mbox->lock\00", [20 x i8] zeroinitializer }, align 32
@sun6i_msgbox_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 278, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register controller: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@sun6i_msgbox_probe._entry_ptr.24 = internal global ptr @sun6i_msgbox_probe._entry.22, section ".printk_index", align 4
@sun6i_msgbox_irq.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sun6i_msgbox\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sun6i_msgbox_irq\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Channel %d received 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@sun6i_msgbox_send_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sun6i_msgbox_send_data.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sun6i_msgbox_send_data\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Channel %d sent 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@sun6i_msgbox_startup.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sun6i_msgbox_startup\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Channel %d startup complete\0A\00", [35 x i8] zeroinitializer }, align 32
@sun6i_msgbox_shutdown.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sun6i_msgbox_shutdown\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Channel %d shutdown complete\0A\00", [34 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant [20 x i8] c"sun6i_msgbox_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 307, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 309, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [22 x i8] c"sun6i_msgbox_of_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 301, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 217, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 223, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 230, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 244, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 251, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 261, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [22 x i8] c"sun6i_msgbox_chan_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 187, i32 35 }
@___asan_gen_.94 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 273, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 278, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 88, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 110, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 134, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private constant [34 x i8] c"../drivers/mailbox/sun6i-msgbox.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 159, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author192, ptr @__UNIQUE_ID_description193, ptr @__UNIQUE_ID_file194, ptr @__UNIQUE_ID_license195, ptr @__exitcall_sun6i_msgbox_driver_exit, ptr @__initcall__kmod_sun6i_msgbox__191_315_sun6i_msgbox_driver_init6, ptr @sun6i_msgbox_driver_exit, ptr @sun6i_msgbox_probe._entry, ptr @sun6i_msgbox_probe._entry.12, ptr @sun6i_msgbox_probe._entry.15, ptr @sun6i_msgbox_probe._entry.18, ptr @sun6i_msgbox_probe._entry.22, ptr @sun6i_msgbox_probe._entry.6, ptr @sun6i_msgbox_probe._entry.9, ptr @sun6i_msgbox_probe._entry_ptr, ptr @sun6i_msgbox_probe._entry_ptr.11, ptr @sun6i_msgbox_probe._entry_ptr.14, ptr @sun6i_msgbox_probe._entry_ptr.17, ptr @sun6i_msgbox_probe._entry_ptr.20, ptr @sun6i_msgbox_probe._entry_ptr.24, ptr @sun6i_msgbox_probe._entry_ptr.8, ptr @sun6i_msgbox_driver, ptr @.str, ptr @sun6i_msgbox_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @sun6i_msgbox_chan_ops, ptr @sun6i_msgbox_probe.__key, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_msgbox_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_msgbox_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_msgbox_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_msgbox_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_msgbox_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_msgbox_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_msgbox_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_msgbox_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_msgbox_chan_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_msgbox_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_msgbox_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_msgbox_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun6i_msgbox_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_msgbox_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun6i_msgbox_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_msgbox_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 144, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1664, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %con_priv = getelementptr %struct.mbox_chan, ptr %call5.i.i, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %con_priv, align 4
  %con_priv.1 = getelementptr %struct.mbox_chan, ptr %call5.i.i, i32 1, i32 9
  %1 = ptrtoint ptr %con_priv.1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %con_priv.1, align 4
  %con_priv.2 = getelementptr %struct.mbox_chan, ptr %call5.i.i, i32 2, i32 9
  %2 = ptrtoint ptr %con_priv.2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %con_priv.2, align 4
  %con_priv.3 = getelementptr %struct.mbox_chan, ptr %call5.i.i, i32 3, i32 9
  %3 = ptrtoint ptr %con_priv.3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %con_priv.3, align 4
  %con_priv.4 = getelementptr %struct.mbox_chan, ptr %call5.i.i, i32 4, i32 9
  %4 = ptrtoint ptr %con_priv.4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %con_priv.4, align 4
  %con_priv.5 = getelementptr %struct.mbox_chan, ptr %call5.i.i, i32 5, i32 9
  %5 = ptrtoint ptr %con_priv.5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %con_priv.5, align 4
  %con_priv.6 = getelementptr %struct.mbox_chan, ptr %call5.i.i, i32 6, i32 9
  %6 = ptrtoint ptr %con_priv.6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %con_priv.6, align 4
  %con_priv.7 = getelementptr %struct.mbox_chan, ptr %call5.i.i, i32 7, i32 9
  %7 = ptrtoint ptr %con_priv.7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %con_priv.7, align 4
  %call6 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.sun6i_msgbox, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %clk, align 8
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %9) #9
  br label %cleanup

if.end12:                                         ; preds = %for.body.preheader
  %call.i141 = tail call i32 @clk_prepare(ptr noundef %call6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %tobool.not.i = icmp eq i32 %call.i141, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end12.do.end19_crit_edge

if.end12.do.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

if.end.i:                                         ; preds = %if.end12
  %call1.i = tail call i32 @clk_enable(ptr noundef %call6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end20, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call6) #6
  br label %do.end19

do.end19:                                         ; preds = %if.then3.i, %if.end12.do.end19_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i141, %if.end12.do.end19_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end.i
  %call.i142 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %cmp.i143 = icmp ugt ptr %call.i142, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i143, label %if.then23, label %if.end28

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call.i142 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %10) #9
  br label %err_disable_unprepare

if.end28:                                         ; preds = %if.end20
  %call29 = tail call i32 @reset_control_deassert(ptr noundef %call.i142) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end35, label %do.end34

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %call29) #9
  br label %err_disable_unprepare

if.end35:                                         ; preds = %if.end28
  %call36 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %regs = getelementptr inbounds %struct.sun6i_msgbox, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call36, ptr %regs, align 8
  %cmp.i144 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144, label %if.then39, label %do.body46

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call36 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %12) #9
  br label %err_disable_unprepare

do.body46:                                        ; preds = %if.end35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %14, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !82
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %call50 = tail call i32 @irq_of_parse_and_map(ptr noundef %16, i32 noundef 0) #6
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i145 = icmp eq ptr %18, null
  br i1 %tobool.not.i145, label %if.end.i146, label %do.body46.dev_name.exit_crit_edge

do.body46.dev_name.exit_crit_edge:                ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i146:                                      ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i146, %do.body46.dev_name.exit_crit_edge
  %retval.0.i147 = phi ptr [ %20, %if.end.i146 ], [ %18, %do.body46.dev_name.exit_crit_edge ]
  %call.i148 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call50, ptr noundef nonnull @sun6i_msgbox_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i147, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %tobool53.not = icmp eq i32 %call.i148, 0
  br i1 %tobool53.not, label %if.end58, label %do.end57

do.end57:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %call.i148) #9
  br label %err_disable_unprepare

if.end58:                                         ; preds = %dev_name.exit
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev1, ptr %call.i, align 8
  %ops = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @sun6i_msgbox_chan_ops, ptr %ops, align 4
  %chans62 = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %chans62 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call5.i.i, ptr %chans62, align 8
  %num_chans = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 3
  %24 = ptrtoint ptr %num_chans to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8, ptr %num_chans, align 4
  %txdone_irq = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %txdone_irq to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %txdone_irq, align 8
  %txdone_poll = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %txdone_poll to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %txdone_poll, align 1
  %txpoll_period = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 6
  %27 = ptrtoint ptr %txpoll_period to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 5, ptr %txpoll_period, align 4
  %lock = getelementptr inbounds %struct.sun6i_msgbox, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @sun6i_msgbox_probe.__key, i16 noundef signext 3) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call72 = tail call i32 @mbox_controller_register(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end58.cleanup_crit_edge, label %do.end77

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end77:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %call72) #9
  br label %err_disable_unprepare

err_disable_unprepare:                            ; preds = %do.end77, %do.end57, %if.then39, %do.end34, %if.then23
  %ret.0 = phi i32 [ %10, %if.then23 ], [ %call29, %do.end34 ], [ %12, %if.then39 ], [ %call.i148, %do.end57 ], [ %call72, %do.end77 ]
  %29 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %30) #6
  tail call void @clk_unprepare(ptr noundef %30) #6
  br label %cleanup

cleanup:                                          ; preds = %err_disable_unprepare, %if.end58.cleanup_crit_edge, %do.end19, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then9 ], [ %retval.0.i.ph, %do.end19 ], [ %ret.0, %err_disable_unprepare ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_msgbox_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mbox_controller_unregister(ptr noundef %1) #6
  %clk = getelementptr inbounds %struct.sun6i_msgbox, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_msgbox_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %msg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.sun6i_msgbox, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 8
  %add.ptr5 = getelementptr i8, ptr %4, i32 112
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %6 = and i32 %5, %2
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %and9 = and i32 %7, 21845
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %entry.cleanup40_crit_edge, label %for.cond.preheader

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup40

for.cond.preheader:                               ; preds = %entry
  %chans = getelementptr inbounds %struct.mbox_controller, ptr %dev_id, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader
  %n.066 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %cleanup.for.body_crit_edge ]
  %8 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chans, align 8
  %arrayidx = getelementptr %struct.mbox_chan, ptr %9, i32 %n.066
  %mul = shl nuw i32 %n.066, 1
  %shl = shl nuw i32 1, %mul
  %and10 = and i32 %shl, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %for.body.cleanup_crit_edge, label %while.cond.preheader

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.preheader:                             ; preds = %for.body
  %con_priv.i.i = getelementptr %struct.mbox_chan, ptr %9, i32 %n.066, i32 9
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %arrayidx to i32
  %10 = ptrtoint ptr %con_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %con_priv.i.i, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %chans.i.i57 = getelementptr inbounds %struct.mbox_controller, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %chans.i.i57 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chans.i.i57, align 8
  %sub.ptr.rhs.cast.i.i58 = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i59 = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i58
  %sub.ptr.div.i.i60 = sdiv exact i32 %sub.ptr.sub.i.i59, 208
  %regs.i61 = getelementptr inbounds %struct.sun6i_msgbox, ptr %11, i32 0, i32 3
  %16 = ptrtoint ptr %regs.i61 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i61, align 8
  %mul.i62 = shl nsw i32 %sub.ptr.div.i.i60, 2
  %add.i63 = add nsw i32 %mul.i62, 320
  %add.ptr.i64 = getelementptr i8, ptr %17, i32 %add.i63
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #6, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %19 = and i32 %18, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not65 = icmp eq i32 %19, 0
  br i1 %tobool.i.not65, label %while.cond.preheader.do.body32_crit_edge, label %while.body.lr.ph

while.cond.preheader.do.body32_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body32

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %mul18 = shl i32 %n.066, 2
  %add19 = add nuw nsw i32 %mul18, 384
  br label %while.body

while.body:                                       ; preds = %do.end.while.body_crit_edge, %while.body.lr.ph
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg) #6
  %20 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %msg, align 4, !annotation !87
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 8
  %add.ptr20 = getelementptr i8, ptr %22, i32 %add19
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #6, !srcloc !83
  %24 = call i32 @llvm.bswap.i32(i32 %23)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  %25 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %msg, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_msgbox_irq.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun6i_msgbox_irq, %if.then29)) #6
          to label %do.end [label %if.then29], !srcloc !89

if.then29:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_id, align 8
  %28 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msg, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_msgbox_irq.__UNIQUE_ID_ddebug187, ptr noundef %27, ptr noundef nonnull @.str.27, i32 noundef %n.066, i32 noundef %29) #6
  br label %do.end

do.end:                                           ; preds = %if.then29, %while.body
  call void @mbox_chan_received_data(ptr noundef %arrayidx, ptr noundef nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg) #6
  %30 = ptrtoint ptr %con_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %con_priv.i.i, align 4
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %chans.i.i = getelementptr inbounds %struct.mbox_controller, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %chans.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chans.i.i, align 8
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 208
  %regs.i = getelementptr inbounds %struct.sun6i_msgbox, ptr %31, i32 0, i32 3
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 8
  %mul.i = shl nsw i32 %sub.ptr.div.i.i, 2
  %add.i = add nsw i32 %mul.i, 320
  %add.ptr.i = getelementptr i8, ptr %37, i32 %add.i
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %39 = and i32 %38, 117440512
  %tobool.i.not = icmp eq i32 %39, 0
  br i1 %tobool.i.not, label %do.end.do.body32_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

do.end.do.body32_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body32

do.body32:                                        ; preds = %do.end.do.body32_crit_edge, %while.cond.preheader.do.body32_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  call void @arm_heavy_mb() #6
  %40 = call i32 @llvm.bswap.i32(i32 %shl)
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 8
  %add.ptr39 = getelementptr i8, ptr %42, i32 112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %40) #6, !srcloc !82
  br label %cleanup

cleanup:                                          ; preds = %do.body32, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %n.066, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %cleanup.cleanup40_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.cleanup40_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup40

cleanup40:                                        ; preds = %cleanup.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup40_crit_edge ], [ 1, %cleanup.cleanup40_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_controller_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @sun6i_msgbox_peek_data(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv.i, align 4
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %chans.i = getelementptr inbounds %struct.mbox_controller, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %chans.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chans.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %chan to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 208
  %regs = getelementptr inbounds %struct.sun6i_msgbox, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %mul = shl nsw i32 %sub.ptr.div.i, 2
  %add = add nsw i32 %mul, 320
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %9 = and i32 %8, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool = icmp ne i32 %9, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_received_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_msgbox_send_data(ptr noundef %chan, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv.i, align 4
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %chans.i = getelementptr inbounds %struct.mbox_controller, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %chans.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chans.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %chan to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 208
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  %regs = getelementptr inbounds %struct.sun6i_msgbox, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %div = sdiv i32 %sub.ptr.sub.i, 832
  %mul = shl nsw i32 %div, 2
  %add.ptr = getelementptr i8, ptr %9, i32 %mul
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !83
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  %rem = srem i32 %sub.ptr.div.i, 4
  %mul4 = shl nsw i32 %rem, 3
  %add5 = or i32 %mul4, 4
  %shl = shl nuw i32 1, %add5
  %and = and i32 %shl, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs, label %do.body46

land.rhs:                                         ; preds = %entry
  %.b79 = load i1, ptr @sun6i_msgbox_send_data.__already_done, align 1
  br i1 %.b79, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !92

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @sun6i_msgbox_send_data.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 106, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

do.body46:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %7)
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  %mul50 = shl nsw i32 %sub.ptr.div.i, 2
  %add51 = add nsw i32 %mul50, 384
  %add.ptr52 = getelementptr i8, ptr %14, i32 %add51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %12) #6, !srcloc !82
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_msgbox_send_data.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun6i_msgbox_send_data, %if.then64)) #6
          to label %cleanup [label %if.then64], !srcloc !89

if.then64:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_msgbox_send_data.__UNIQUE_ID_ddebug188, ptr noundef %16, ptr noundef nonnull @.str.29, i32 noundef %sub.ptr.div.i, i32 noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %do.body46, %if.then, %land.rhs.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_msgbox_startup(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv.i, align 4
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %chans.i = getelementptr inbounds %struct.mbox_controller, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %chans.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chans.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %chan to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 208
  %regs = getelementptr inbounds %struct.sun6i_msgbox, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %div = sdiv i32 %sub.ptr.sub.i, 832
  %mul = shl nsw i32 %div, 2
  %add.ptr = getelementptr i8, ptr %7, i32 %mul
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !83
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %rem = srem i32 %sub.ptr.div.i, 4
  %mul4 = shl nsw i32 %rem, 3
  %shl = shl nuw i32 1, %mul4
  %and = and i32 %shl, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body37_crit_edge, label %while.cond.preheader

entry.do.body37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body37

while.cond.preheader:                             ; preds = %entry
  %10 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %con_priv.i, align 4
  %12 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chan, align 4
  %chans.i.i62 = getelementptr inbounds %struct.mbox_controller, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %chans.i.i62 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chans.i.i62, align 8
  %sub.ptr.rhs.cast.i.i63 = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i64 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i.i63
  %sub.ptr.div.i.i65 = sdiv exact i32 %sub.ptr.sub.i.i64, 208
  %regs.i66 = getelementptr inbounds %struct.sun6i_msgbox, ptr %11, i32 0, i32 3
  %16 = ptrtoint ptr %regs.i66 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i66, align 8
  %mul.i67 = shl nsw i32 %sub.ptr.div.i.i65, 2
  %add.i68 = add nsw i32 %mul.i67, 320
  %add.ptr.i69 = getelementptr i8, ptr %17, i32 %add.i68
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %19 = and i32 %18, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not70 = icmp eq i32 %19, 0
  br i1 %tobool.i.not70, label %while.cond.preheader.do.body_crit_edge, label %while.body.lr.ph

while.cond.preheader.do.body_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %mul10 = shl nsw i32 %sub.ptr.div.i, 2
  %add11 = add nsw i32 %mul10, 384
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 8
  %add.ptr12 = getelementptr i8, ptr %21, i32 %add11
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %23 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %con_priv.i, align 4
  %25 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chan, align 4
  %chans.i.i = getelementptr inbounds %struct.mbox_controller, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %chans.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chans.i.i, align 8
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 208
  %regs.i = getelementptr inbounds %struct.sun6i_msgbox, ptr %24, i32 0, i32 3
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 8
  %mul.i = shl nsw i32 %sub.ptr.div.i.i, 2
  %add.i = add nsw i32 %mul.i, 320
  %add.ptr.i = getelementptr i8, ptr %30, i32 %add.i
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %32 = and i32 %31, 117440512
  %tobool.i.not = icmp eq i32 %32, 0
  br i1 %tobool.i.not, label %while.body.do.body_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.do.body_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %while.body.do.body_crit_edge, %while.cond.preheader.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %mul16 = shl nsw i32 %sub.ptr.div.i, 1
  %shl18 = shl nuw i32 1, %mul16
  %33 = tail call i32 @llvm.bswap.i32(i32 %shl18)
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 8
  %add.ptr20 = getelementptr i8, ptr %35, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %33) #6, !srcloc !82
  %lock = getelementptr inbounds %struct.sun6i_msgbox, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 8
  %add.ptr27 = getelementptr i8, ptr %37, i32 96
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #6, !srcloc !83
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %or = or i32 %39, %shl18
  %40 = tail call i32 @llvm.bswap.i32(i32 %or)
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 8
  %add.ptr35 = getelementptr i8, ptr %42, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %40) #6, !srcloc !82
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %do.body37

do.body37:                                        ; preds = %do.body, %entry.do.body37_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_msgbox_startup.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun6i_msgbox_startup, %if.then43)) #6
          to label %do.end46 [label %if.then43], !srcloc !89

if.then43:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_msgbox_startup.__UNIQUE_ID_ddebug189, ptr noundef %44, ptr noundef nonnull @.str.31, i32 noundef %sub.ptr.div.i) #6
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %do.body37
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_msgbox_shutdown(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv.i, align 4
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %chans.i = getelementptr inbounds %struct.mbox_controller, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %chans.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chans.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %chan to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 208
  %regs = getelementptr inbounds %struct.sun6i_msgbox, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %div = sdiv i32 %sub.ptr.sub.i, 832
  %mul = shl nsw i32 %div, 2
  %add.ptr = getelementptr i8, ptr %7, i32 %mul
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !83
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  %rem = srem i32 %sub.ptr.div.i, 4
  %mul4 = shl nsw i32 %rem, 3
  %shl = shl nuw i32 1, %mul4
  %and = and i32 %shl, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body53_crit_edge, label %if.then

entry.do.body53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body53

if.then:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.sun6i_msgbox, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr9 = getelementptr i8, ptr %11, i32 96
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #6, !srcloc !83
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %mul13 = shl nsw i32 %sub.ptr.div.i, 1
  %shl15 = shl nuw i32 1, %mul13
  %neg = xor i32 %shl15, -1
  %and16 = and i32 %13, %neg
  %14 = tail call i32 @llvm.bswap.i32(i32 %and16)
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 8
  %add.ptr18 = getelementptr i8, ptr %16, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %14) #6, !srcloc !82
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %mul25 = shl nsw i32 %sub.ptr.div.i, 2
  %add26 = add nsw i32 %mul25, 384
  %17 = tail call i32 @llvm.bswap.i32(i32 %shl15)
  br label %do.body20

do.body20:                                        ; preds = %do.body31.do.body20_crit_edge, %if.then
  %18 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %con_priv.i, align 4
  %20 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chan, align 4
  %chans.i.i80 = getelementptr inbounds %struct.mbox_controller, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %chans.i.i80 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chans.i.i80, align 8
  %sub.ptr.rhs.cast.i.i81 = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i.i82 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i.i81
  %sub.ptr.div.i.i83 = sdiv exact i32 %sub.ptr.sub.i.i82, 208
  %regs.i84 = getelementptr inbounds %struct.sun6i_msgbox, ptr %19, i32 0, i32 3
  %24 = ptrtoint ptr %regs.i84 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i84, align 8
  %mul.i85 = shl nsw i32 %sub.ptr.div.i.i83, 2
  %add.i86 = add nsw i32 %mul.i85, 320
  %add.ptr.i87 = getelementptr i8, ptr %25, i32 %add.i86
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %27 = and i32 %26, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not88 = icmp eq i32 %27, 0
  br i1 %tobool.i.not88, label %do.body20.do.body31_crit_edge, label %do.body20.while.body_crit_edge

do.body20.while.body_crit_edge:                   ; preds = %do.body20
  br label %while.body

do.body20.do.body31_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.body20.while.body_crit_edge
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 8
  %add.ptr27 = getelementptr i8, ptr %29, i32 %add26
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  %31 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %con_priv.i, align 4
  %33 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chan, align 4
  %chans.i.i = getelementptr inbounds %struct.mbox_controller, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %chans.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chans.i.i, align 8
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 208
  %regs.i = getelementptr inbounds %struct.sun6i_msgbox, ptr %32, i32 0, i32 3
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 8
  %mul.i = shl nsw i32 %sub.ptr.div.i.i, 2
  %add.i = add nsw i32 %mul.i, 320
  %add.ptr.i = getelementptr i8, ptr %38, i32 %add.i
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %40 = and i32 %39, 117440512
  %tobool.i.not = icmp eq i32 %40, 0
  br i1 %tobool.i.not, label %while.body.do.body31_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.do.body31_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31

do.body31:                                        ; preds = %while.body.do.body31_crit_edge, %do.body20.do.body31_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 8
  %add.ptr38 = getelementptr i8, ptr %42, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %17) #6, !srcloc !82
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 8
  %add.ptr43 = getelementptr i8, ptr %44, i32 112
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #6, !srcloc !83
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %and50 = and i32 %46, %shl15
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.body31.do.body53_crit_edge, label %do.body31.do.body20_crit_edge

do.body31.do.body20_crit_edge:                    ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body20

do.body31.do.body53_crit_edge:                    ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body53

do.body53:                                        ; preds = %do.body31.do.body53_crit_edge, %entry.do.body53_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_msgbox_shutdown.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun6i_msgbox_shutdown, %if.then59)) #6
          to label %do.end62 [label %if.then59], !srcloc !89

if.then59:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_msgbox_shutdown.__UNIQUE_ID_ddebug190, ptr noundef %48, ptr noundef nonnull @.str.33, i32 noundef %sub.ptr.div.i) #6
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %do.body53
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @sun6i_msgbox_last_tx_done(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %con_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv.i, align 4
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %chans.i = getelementptr inbounds %struct.mbox_controller, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %chans.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chans.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %chan to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 208
  %regs = getelementptr inbounds %struct.sun6i_msgbox, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 80
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !83
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  %mul = shl nsw i32 %sub.ptr.div.i, 1
  %shl = shl nuw i32 1, %mul
  %and = and i32 %shl, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_controller_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_sun6i_msgbox__191_315_sun6i_msgbox_driver_init6, !1, !"__initcall__kmod_sun6i_msgbox__191_315_sun6i_msgbox_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mailbox/sun6i-msgbox.c", i32 315, i32 1}
!2 = !{ptr @__exitcall_sun6i_msgbox_driver_exit, !1, !"__exitcall_sun6i_msgbox_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author192, !4, !"__UNIQUE_ID_author192", i1 false, i1 false}
!4 = !{!"../drivers/mailbox/sun6i-msgbox.c", i32 317, i32 1}
!5 = !{ptr @__UNIQUE_ID_description193, !6, !"__UNIQUE_ID_description193", i1 false, i1 false}
!6 = !{!"../drivers/mailbox/sun6i-msgbox.c", i32 318, i32 1}
!7 = !{ptr @__UNIQUE_ID_file194, !8, !"__UNIQUE_ID_file194", i1 false, i1 false}
!8 = !{!"../drivers/mailbox/sun6i-msgbox.c", i32 319, i32 1}
!9 = !{ptr @__UNIQUE_ID_license195, !8, !"__UNIQUE_ID_license195", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mailbox/sun6i-msgbox.c", i32 309, i32 11}
!12 = !{ptr @sun6i_msgbox_driver, !13, !"sun6i_msgbox_driver", i1 false, i1 false}
!13 = !{!"../drivers/mailbox/sun6i-msgbox.c", i32 307, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mailbox/sun6i-msgbox.c", i32 217, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sun6i_msgbox_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sun6i_msgbox_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mailbox/sun6i-msgbox.c", i32 223, i32 3}
!24 = !{ptr @sun6i_msgbox_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sun6i_msgbox_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mailbox/sun6i-msgbox.c", i32 230, i32 3}
!28 = !{ptr @sun6i_msgbox_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @sun6i_msgbox_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mailbox/sun6i-msgbox.c", i32 244, i32 3}
!32 = !{ptr @sun6i_msgbox_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @sun6i_msgbox_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mailbox/sun6i-msgbox.c", i32 251, i32 3}
!36 = !{ptr @sun6i_msgbox_probe._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @sun6i_msgbox_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mailbox/sun6i-msgbox.c", i32 261, i32 3}
!40 = !{ptr @sun6i_msgbox_probe._entry.18, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sun6i_msgbox_probe._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @sun6i_msgbox_probe.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/mailbox/sun6i-msgbox.c", i32 273, i32 2}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mailbox/sun6i-msgbox.c", i32 278, i32 3}
!47 = !{ptr @sun6i_msgbox_probe._entry.22, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @sun6i_msgbox_probe._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mailbox/sun6i-msgbox.c", i32 88, i32 4}
!51 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @sun6i_msgbox_irq.__UNIQUE_ID_ddebug187, !50, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!54 = !{ptr @sun6i_msgbox_chan_ops, !55, !"sun6i_msgbox_chan_ops", i1 false, i1 false}
!55 = !{!"../drivers/mailbox/sun6i-msgbox.c", i32 187, i32 35}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../drivers/mailbox/sun6i-msgbox.c", i32 106, i32 6}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mailbox/sun6i-msgbox.c", i32 110, i32 2}
!60 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @sun6i_msgbox_send_data.__UNIQUE_ID_ddebug188, !59, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mailbox/sun6i-msgbox.c", i32 134, i32 2}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @sun6i_msgbox_startup.__UNIQUE_ID_ddebug189, !63, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mailbox/sun6i-msgbox.c", i32 159, i32 2}
!68 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @sun6i_msgbox_shutdown.__UNIQUE_ID_ddebug190, !67, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!70 = !{ptr @sun6i_msgbox_of_match, !71, !"sun6i_msgbox_of_match", i1 false, i1 false}
!71 = !{!"../drivers/mailbox/sun6i-msgbox.c", i32 301, i32 34}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i64 2153226517}
!82 = !{i64 4897087}
!83 = !{i64 4897505}
!84 = !{i64 2153192474}
!85 = !{i64 2153192975}
!86 = !{i64 2153217005}
!87 = !{!"auto-init"}
!88 = !{i64 2153193671}
!89 = !{i64 2148728706, i64 2148728711, i64 2148728724, i64 2148728768, i64 2148728802, i64 2148728823}
!90 = !{i64 2153196510}
!91 = !{i64 2153198434}
!92 = !{!"branch_weights", i32 2000, i32 1}
!93 = !{i64 2153199406}
!94 = !{i64 2153202645}
!95 = !{i64 2153203344}
!96 = !{i64 2153203709}
!97 = !{i64 2153205112}
!98 = !{i64 2153206099}
!99 = !{i64 2153209224}
!100 = !{i64 2153210462}
!101 = !{i64 2153211453}
!102 = !{i64 2153212090}
!103 = !{i64 2153212455}
!104 = !{i64 2153213241}
!105 = !{i64 2153216318}
