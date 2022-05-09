; ModuleID = '/llk/IR_all_yes/drivers/mailbox/rockchip-mailbox.c_pt.bc'
source_filename = "../drivers/mailbox/rockchip-mailbox.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mbox_chan_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rockchip_mbox_data = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rockchip_mbox = type { %struct.mbox_controller, ptr, ptr, i32, ptr }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.list_head }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.rockchip_mbox_chan = type { i32, i32, ptr, ptr }
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }
%struct.rockchip_mbox_msg = type { i32, i32 }

@__initcall__kmod_rockchip_mailbox__189_257_rockchip_mbox_driver_init6 = internal global ptr @rockchip_mbox_driver_init, section ".initcall6.init", align 4
@rockchip_mbox_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rockchip_mbox_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_mbox_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rockchip_mbox_driver_exit = internal global ptr @rockchip_mbox_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file190 = internal constant [55 x i8] c"rockchip_mailbox.file=drivers/mailbox/rockchip-mailbox\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [32 x i8] c"rockchip_mailbox.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description192 = internal constant [85 x i8] c"rockchip_mailbox.description=Rockchip mailbox: communicate between CPU cores and MCU\00", section ".modinfo", align 1
@__UNIQUE_ID_author193 = internal constant [57 x i8] c"rockchip_mailbox.author=Addy Ke <addy.ke@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author194 = internal constant [57 x i8] c"rockchip_mailbox.author=Caesar Wang <wxt@rock-chips.com>\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rockchip-mailbox\00", [47 x i8] zeroinitializer }, align 32
@rockchip_mbox_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3368-mailbox\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3368_drv_data }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rockchip_mbox_chan_ops = internal constant { %struct.mbox_chan_ops, [40 x i8] } { %struct.mbox_chan_ops { ptr @rockchip_mbox_send_data, ptr null, ptr @rockchip_mbox_startup, ptr @rockchip_mbox_shutdown, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pclk_mailbox\00", [19 x i8] zeroinitializer }, align 32
@rockchip_mbox_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 214, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to get pclk_mailbox clock: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rockchip_mbox_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/mailbox/rockchip-mailbox.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rockchip_mbox_probe._entry_ptr = internal global ptr @rockchip_mbox_probe._entry, section ".printk_index", align 4
@rockchip_mbox_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 220, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable pclk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rockchip_mbox_probe._entry_ptr.9 = internal global ptr @rockchip_mbox_probe._entry.7, section ".printk_index", align 4
@rockchip_mbox_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 244, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register mailbox: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@rockchip_mbox_probe._entry_ptr.12 = internal global ptr @rockchip_mbox_probe._entry.10, section ".printk_index", align 4
@rockchip_mbox_send_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 63, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Transmit size over buf size(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rockchip_mbox_send_data\00", [40 x i8] zeroinitializer }, align 32
@rockchip_mbox_send_data._entry_ptr = internal global ptr @rockchip_mbox_send_data._entry, section ".printk_index", align 4
@rockchip_mbox_send_data.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.14, ptr @.str.4, ptr @.str.16, i8 0, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rockchip_mailbox\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Chan[%d]: A2B message, cmd 0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@rockchip_mbox_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 138, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Chan[%d]: B2A message is NULL\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rockchip_mbox_isr\00", [46 x i8] zeroinitializer }, align 32
@rockchip_mbox_isr._entry_ptr = internal global ptr @rockchip_mbox_isr._entry, section ".printk_index", align 4
@rockchip_mbox_isr.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.18, ptr @.str.4, ptr @.str.19, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Chan[%d]: B2A message, cmd 0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@rk3368_drv_data = internal constant { %struct.rockchip_mbox_data, [28 x i8] } { %struct.rockchip_mbox_data { i32 4 }, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [21 x i8] c"rockchip_mbox_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 249, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 252, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [23 x i8] c"rockchip_mbox_of_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 158, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [23 x i8] c"rockchip_mbox_chan_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 101, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 210, i32 38 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 213, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 220, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 244, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 62, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 67, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 137, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 145, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [16 x i8] c"rk3368_drv_data\00", align 1
@___asan_gen_.93 = private constant [38 x i8] c"../drivers/mailbox/rockchip-mailbox.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 154, i32 40 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author193, ptr @__UNIQUE_ID_author194, ptr @__UNIQUE_ID_description192, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_rockchip_mbox_driver_exit, ptr @__initcall__kmod_rockchip_mailbox__189_257_rockchip_mbox_driver_init6, ptr @rockchip_mbox_driver_exit, ptr @rockchip_mbox_isr._entry, ptr @rockchip_mbox_isr._entry_ptr, ptr @rockchip_mbox_probe._entry, ptr @rockchip_mbox_probe._entry.10, ptr @rockchip_mbox_probe._entry.7, ptr @rockchip_mbox_probe._entry_ptr, ptr @rockchip_mbox_probe._entry_ptr.12, ptr @rockchip_mbox_probe._entry_ptr.9, ptr @rockchip_mbox_send_data._entry, ptr @rockchip_mbox_send_data._entry_ptr, ptr @rockchip_mbox_driver, ptr @.str, ptr @rockchip_mbox_of_match, ptr @rockchip_mbox_chan_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @rk3368_drv_data], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_mbox_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_mbox_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_mbox_chan_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_mbox_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_mbox_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_mbox_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_mbox_send_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_mbox_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3368_drv_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_mbox_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_mbox_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_mbox_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_mbox_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_mbox_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_match_node(ptr noundef nonnull @rockchip_mbox_of_match, ptr noundef nonnull %1) #5
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 104, i32 noundef 3520) #5
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 16) #5
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !66

devm_kcalloc.exit.thread:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %chans176 = getelementptr inbounds %struct.rockchip_mbox, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %chans176 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %chans176, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end7
  %9 = extractvalue { i32, i1 } %6, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %9, i32 noundef 3520) #5
  %chans = getelementptr inbounds %struct.rockchip_mbox, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %chans to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5.i.i, ptr %chans, align 4
  %tobool11.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool11.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end13

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %devm_kcalloc.exit
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 4
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 208) #5
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %devm_kcalloc.exit169.thread, label %devm_kcalloc.exit169, !prof !66

devm_kcalloc.exit169.thread:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %chans17179 = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %chans17179 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %chans17179, align 8
  br label %cleanup

devm_kcalloc.exit169:                             ; preds = %if.end13
  %16 = extractvalue { i32, i1 } %13, 0
  %call5.i.i166 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %16, i32 noundef 3520) #5
  %chans17 = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %chans17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i166, ptr %chans17, align 8
  %tobool20.not = icmp eq ptr %call5.i.i166, null
  br i1 %tobool20.not, label %devm_kcalloc.exit169.cleanup_crit_edge, label %if.end22

devm_kcalloc.exit169.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit169
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %devm_kcalloc.exit169
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %call.i, align 8
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 4
  %num_chans28 = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 3
  %22 = ptrtoint ptr %num_chans28 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %num_chans28, align 4
  %ops = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @rockchip_mbox_chan_ops, ptr %ops, align 4
  %txdone_irq = getelementptr inbounds %struct.mbox_controller, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %txdone_irq to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %txdone_irq, align 8
  %call31 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.end22.cleanup_crit_edge, label %if.end34

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34:                                         ; preds = %if.end22
  %call36 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call31) #5
  %mbox_base = getelementptr inbounds %struct.rockchip_mbox, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %mbox_base to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call36, ptr %mbox_base, align 4
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %call36 to i32
  br label %cleanup

if.end42:                                         ; preds = %if.end34
  %end.i = getelementptr inbounds %struct.resource, ptr %call31, i32 0, i32 1
  %27 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %end.i, align 4
  %29 = ptrtoint ptr %call31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call31, align 4
  %sub.i = add i32 %28, 1
  %add.i = sub i32 %sub.i, %30
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %3, align 4
  %mul = shl i32 %32, 1
  %div = udiv i32 %add.i, %mul
  %buf_size = getelementptr inbounds %struct.rockchip_mbox, ptr %call.i, i32 0, i32 3
  %33 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %div, ptr %buf_size, align 8
  %call46 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #5
  %pclk = getelementptr inbounds %struct.rockchip_mbox, ptr %call.i, i32 0, i32 1
  %34 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call46, ptr %pclk, align 8
  %cmp.i170 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170, label %if.then49, label %if.end53

if.then49:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %call46 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %35) #8
  br label %cleanup

if.end53:                                         ; preds = %if.end42
  %call.i171 = tail call i32 @clk_prepare(ptr noundef %call46) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171)
  %tobool.not.i = icmp eq i32 %call.i171, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end53.do.end60_crit_edge

if.end53.do.end60_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end60

if.end.i:                                         ; preds = %if.end53
  %call1.i = tail call i32 @clk_enable(ptr noundef %call46) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.cond.preheader, label %if.then3.i

for.cond.preheader:                               ; preds = %if.end.i
  %36 = ptrtoint ptr %num_chans28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_chans28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp184 = icmp sgt i32 %37, 0
  br i1 %cmp184, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  br label %for.body

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call46) #5
  br label %do.end60

do.end60:                                         ; preds = %if.then3.i, %if.end53.do.end60_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i171, %if.end53.do.end60_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i.ph) #8
  br label %cleanup

for.body:                                         ; preds = %if.end75.for.body_crit_edge, %for.body.lr.ph
  %i.0185 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end75.for.body_crit_edge ]
  %call65 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.0185) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %for.body.cleanup_crit_edge, label %if.end68

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end68:                                         ; preds = %for.body
  %38 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i172 = icmp eq ptr %39, null
  br i1 %tobool.not.i172, label %if.end.i173, label %if.end68.dev_name.exit_crit_edge

if.end68.dev_name.exit_crit_edge:                 ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i173:                                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i173, %if.end68.dev_name.exit_crit_edge
  %retval.0.i174 = phi ptr [ %41, %if.end.i173 ], [ %39, %if.end68.dev_name.exit_crit_edge ]
  %call72 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call65, ptr noundef nonnull @rockchip_mbox_irq, ptr noundef nonnull @rockchip_mbox_isr, i32 noundef 8192, ptr noundef %retval.0.i174, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %dev_name.exit.cleanup_crit_edge, label %if.end75

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end75:                                         ; preds = %dev_name.exit
  %42 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chans, align 4
  %arrayidx = getelementptr %struct.rockchip_mbox_chan, ptr %43, i32 %i.0185
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %i.0185, ptr %arrayidx, align 4
  %45 = load ptr, ptr %chans, align 4
  %irq79 = getelementptr %struct.rockchip_mbox_chan, ptr %45, i32 %i.0185, i32 1
  %46 = ptrtoint ptr %irq79 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call65, ptr %irq79, align 4
  %47 = load ptr, ptr %chans, align 4
  %mb82 = getelementptr %struct.rockchip_mbox_chan, ptr %47, i32 %i.0185, i32 3
  %48 = ptrtoint ptr %mb82 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %mb82, align 4
  %49 = load ptr, ptr %chans, align 4
  %msg = getelementptr %struct.rockchip_mbox_chan, ptr %49, i32 %i.0185, i32 2
  %50 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %msg, align 4
  %inc = add nuw nsw i32 %i.0185, 1
  %51 = ptrtoint ptr %num_chans28 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_chans28, align 4
  %cmp = icmp slt i32 %inc, %52
  br i1 %cmp, label %if.end75.for.body_crit_edge, label %if.end75.for.end_crit_edge

if.end75.for.end_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end75.for.body_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end75.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call87 = tail call i32 @devm_mbox_controller_register(ptr noundef %dev, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %do.end92, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end92:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call87) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end92, %for.end.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end60, %if.then49, %if.then39, %if.end22.cleanup_crit_edge, %devm_kcalloc.exit169.cleanup_crit_edge, %devm_kcalloc.exit169.thread, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %26, %if.then39 ], [ %35, %if.then49 ], [ %retval.0.i.ph, %do.end60 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit169.cleanup_crit_edge ], [ -19, %if.end22.cleanup_crit_edge ], [ %call87, %do.end92 ], [ %call87, %for.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit169.thread ], [ %call72, %dev_name.exit.cleanup_crit_edge ], [ %call65, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_mbox_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_base = getelementptr inbounds %struct.rockchip_mbox, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %mbox_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 44
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !67
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %num_chans = getelementptr inbounds %struct.mbox_controller, ptr %dev_id, i32 0, i32 3
  %4 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp15 = icmp sgt i32 %5, 0
  br i1 %cmp15, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %chans = getelementptr inbounds %struct.rockchip_mbox, ptr %dev_id, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %idx.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %idx.016
  %and = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %6 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chans, align 4
  %irq1 = getelementptr %struct.rockchip_mbox_chan, ptr %7, i32 %idx.016, i32 1
  %8 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %irq)
  %cmp2 = icmp eq i32 %9, %irq
  br i1 %cmp2, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %11 = ptrtoint ptr %mbox_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mbox_base, align 4
  %add.ptr5 = getelementptr i8, ptr %12, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %10) #5, !srcloc !68
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %idx.016, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_mbox_isr(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_chans = getelementptr inbounds %struct.mbox_controller, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp42 = icmp sgt i32 %1, 0
  br i1 %cmp42, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %chans = getelementptr inbounds %struct.rockchip_mbox, ptr %dev_id, i32 0, i32 4
  %2 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chans, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %idx.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %irq1 = getelementptr %struct.rockchip_mbox_chan, ptr %3, i32 %idx.043, i32 1
  %4 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %irq)
  %cmp2.not = icmp eq i32 %5, %irq
  br i1 %cmp2.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %msg5 = getelementptr %struct.rockchip_mbox_chan, ptr %3, i32 %idx.043, i32 2
  %6 = ptrtoint ptr %msg5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msg5, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.17, i32 noundef %idx.043) #8
  br label %for.end

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %chans10 = getelementptr inbounds %struct.mbox_controller, ptr %dev_id, i32 0, i32 2
  %10 = ptrtoint ptr %chans10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chans10, align 8
  %arrayidx11 = getelementptr %struct.mbox_chan, ptr %11, i32 %idx.043
  tail call void @mbox_chan_received_data(ptr noundef %arrayidx11, ptr noundef nonnull %7) #5
  %12 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chans, align 4
  %msg14 = getelementptr %struct.rockchip_mbox_chan, ptr %13, i32 %idx.043, i32 2
  %14 = ptrtoint ptr %msg14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %msg14, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_mbox_isr.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_mbox_isr, %if.then19)) #5
          to label %for.end [label %if.then19], !srcloc !69

if.then19:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_id, align 8
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_mbox_isr.__UNIQUE_ID_ddebug188, ptr noundef %16, ptr noundef nonnull @.str.19, i32 noundef %idx.043, i32 noundef %18) #5
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %idx.043, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then19, %if.end8, %do.end, %entry.for.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mbox_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_mbox_send_data(ptr nocapture noundef readonly %chan, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %chans1 = getelementptr inbounds %struct.rockchip_mbox, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %chans1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chans1, align 4
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_size = getelementptr inbounds %struct.rockchip_mbox_msg, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_size, align 4
  %buf_size = getelementptr inbounds %struct.rockchip_mbox, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp = icmp ugt i32 %9, %11
  br i1 %cmp, label %do.end, label %do.body7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.13, i32 noundef %11) #8
  br label %cleanup

do.body7:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_mbox_send_data.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_mbox_send_data, %if.then12)) #5
          to label %do.end17 [label %if.then12], !srcloc !69

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 8
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %7, align 4
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rockchip_mbox_send_data.__UNIQUE_ID_ddebug187, ptr noundef %15, ptr noundef nonnull @.str.16, i32 noundef %17, i32 noundef %19) #5
  br label %do.end17

do.end17:                                         ; preds = %if.then12, %do.body7
  %20 = ptrtoint ptr %chans1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chans1, align 4
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %7, align 4
  %msg20 = getelementptr %struct.rockchip_mbox_chan, ptr %21, i32 %23, i32 2
  %24 = ptrtoint ptr %msg20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %data, ptr %msg20, align 4
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %mbox_base = getelementptr inbounds %struct.rockchip_mbox, ptr %5, i32 0, i32 2
  %28 = ptrtoint ptr %mbox_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mbox_base, align 4
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %7, align 4
  %mul = shl i32 %31, 3
  %add = add i32 %mul, 8
  %add.ptr = getelementptr i8, ptr %29, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %27) #5, !srcloc !68
  %32 = ptrtoint ptr %rx_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_size, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %mbox_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mbox_base, align 4
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %7, align 4
  %mul26 = shl i32 %38, 3
  %add27 = add i32 %mul26, 12
  %add.ptr28 = getelementptr i8, ptr %36, i32 %add27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %34) #5, !srcloc !68
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end17 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_mbox_startup(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %num_chans = getelementptr inbounds %struct.mbox_controller, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_chans, align 4
  %notmask = shl nsw i32 -1, %7
  %sub = xor i32 %notmask, -1
  %8 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %mbox_base = getelementptr inbounds %struct.rockchip_mbox, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %mbox_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mbox_base, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #5, !srcloc !68
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_mbox_shutdown(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %chans1 = getelementptr inbounds %struct.rockchip_mbox, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %chans1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chans1, align 4
  %mbox_base = getelementptr inbounds %struct.rockchip_mbox, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %mbox_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mbox_base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !68
  %10 = ptrtoint ptr %chans1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chans1, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 4
  %msg = getelementptr %struct.rockchip_mbox_chan, ptr %11, i32 %13, i32 2
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %msg, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_chan_received_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__initcall__kmod_rockchip_mailbox__189_257_rockchip_mbox_driver_init6, !1, !"__initcall__kmod_rockchip_mailbox__189_257_rockchip_mbox_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mailbox/rockchip-mailbox.c", i32 257, i32 1}
!2 = !{ptr @__exitcall_rockchip_mbox_driver_exit, !1, !"__exitcall_rockchip_mbox_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file190, !4, !"__UNIQUE_ID_file190", i1 false, i1 false}
!4 = !{!"../drivers/mailbox/rockchip-mailbox.c", i32 259, i32 1}
!5 = !{ptr @__UNIQUE_ID_license191, !4, !"__UNIQUE_ID_license191", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description192, !7, !"__UNIQUE_ID_description192", i1 false, i1 false}
!7 = !{!"../drivers/mailbox/rockchip-mailbox.c", i32 260, i32 1}
!8 = !{ptr @__UNIQUE_ID_author193, !9, !"__UNIQUE_ID_author193", i1 false, i1 false}
!9 = !{!"../drivers/mailbox/rockchip-mailbox.c", i32 261, i32 1}
!10 = !{ptr @__UNIQUE_ID_author194, !11, !"__UNIQUE_ID_author194", i1 false, i1 false}
!11 = !{!"../drivers/mailbox/rockchip-mailbox.c", i32 262, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mailbox/rockchip-mailbox.c", i32 252, i32 11}
!14 = !{ptr @rockchip_mbox_driver, !15, !"rockchip_mbox_driver", i1 false, i1 false}
!15 = !{!"../drivers/mailbox/rockchip-mailbox.c", i32 249, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mailbox/rockchip-mailbox.c", i32 210, i32 38}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mailbox/rockchip-mailbox.c", i32 213, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rockchip_mbox_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @rockchip_mbox_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mailbox/rockchip-mailbox.c", i32 220, i32 3}
!28 = !{ptr @rockchip_mbox_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @rockchip_mbox_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mailbox/rockchip-mailbox.c", i32 244, i32 3}
!32 = !{ptr @rockchip_mbox_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @rockchip_mbox_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @rockchip_mbox_chan_ops, !35, !"rockchip_mbox_chan_ops", i1 false, i1 false}
!35 = !{!"../drivers/mailbox/rockchip-mailbox.c", i32 101, i32 35}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mailbox/rockchip-mailbox.c", i32 62, i32 3}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @rockchip_mbox_send_data._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @rockchip_mbox_send_data._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mailbox/rockchip-mailbox.c", i32 67, i32 2}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @rockchip_mbox_send_data.__UNIQUE_ID_ddebug187, !42, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mailbox/rockchip-mailbox.c", i32 137, i32 4}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @rockchip_mbox_isr._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @rockchip_mbox_isr._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mailbox/rockchip-mailbox.c", i32 145, i32 3}
!52 = !{ptr @rockchip_mbox_isr.__UNIQUE_ID_ddebug188, !51, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!53 = !{ptr @rockchip_mbox_of_match, !54, !"rockchip_mbox_of_match", i1 false, i1 false}
!54 = !{!"../drivers/mailbox/rockchip-mailbox.c", i32 158, i32 34}
!55 = !{ptr @rk3368_drv_data, !56, !"rk3368_drv_data", i1 false, i1 false}
!56 = !{!"../drivers/mailbox/rockchip-mailbox.c", i32 154, i32 40}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{i64 4234480}
!68 = !{i64 4234062}
!69 = !{i64 2148726349, i64 2148726354, i64 2148726367, i64 2148726411, i64 2148726445, i64 2148726466}
