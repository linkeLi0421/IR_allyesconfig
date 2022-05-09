; ModuleID = '/llk/IR_all_yes/drivers/usb/host/ohci-nxp.c_pt.bc'
source_filename = "../drivers/usb/host/ohci-nxp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__UNIQUE_ID_alias296 = internal constant [33 x i8] c"ohci_nxp.alias=platform:usb-ohci\00", section ".modinfo", align 1
@__initcall__kmod_ohci_nxp__297_282_ohci_nxp_init6 = internal global ptr @ohci_nxp_init, section ".initcall6.init", align 4
@ohci_hcd_nxp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ohci_hcd_nxp_probe, ptr @ohci_hcd_nxp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ohci_hcd_nxp_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ohci_nxp_cleanup = internal global ptr @ohci_nxp_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description298 = internal constant [37 x i8] c"ohci_nxp.description=OHCI NXP driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [40 x i8] c"ohci_nxp.file=drivers/usb/host/ohci-nxp\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [24 x i8] c"ohci_nxp.license=GPL v2\00", section ".modinfo", align 1
@ohci_nxp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: OHCI NXP driver\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ohci_nxp_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/host/ohci-nxp.c\00", [36 x i8] zeroinitializer }, align 32
@ohci_nxp_init._entry_ptr = internal global ptr @ohci_nxp_init._entry, section ".printk_index", align 4
@hcd_name = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ohci-nxp\00", [23 x i8] zeroinitializer }, align 32
@ohci_nxp_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb-ohci\00", [23 x i8] zeroinitializer }, align 32
@ohci_hcd_nxp_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,ohci-nxp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"transceiver\00", [20 x i8] zeroinitializer }, align 32
@isp1301_i2c_client = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ohci_hcd_nxp_probe.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ohci_nxp\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ohci_hcd_nxp_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: OHCI NXP driver (nxp)\0A\00", [37 x i8] zeroinitializer }, align 32
@ohci_hcd_nxp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 176, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"USB is disabled\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ohci_hcd_nxp_probe._entry_ptr = internal global ptr @ohci_hcd_nxp_probe._entry, section ".printk_index", align 4
@usb_host_clk = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ohci_hcd_nxp_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.2, i32 184, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to acquire USB OHCI clock\0A\00", [62 x i8] zeroinitializer }, align 32
@ohci_hcd_nxp_probe._entry_ptr.13 = internal global ptr @ohci_hcd_nxp_probe._entry.11, section ".printk_index", align 4
@ohci_hcd_nxp_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.2, i32 191, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to start USB OHCI clock\0A\00", [32 x i8] zeroinitializer }, align 32
@ohci_hcd_nxp_probe._entry_ptr.16 = internal global ptr @ohci_hcd_nxp_probe._entry.14, section ".printk_index", align 4
@ohci_hcd_nxp_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.6, ptr @.str.2, i32 199, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to allocate HC buffer\0A\00", [34 x i8] zeroinitializer }, align 32
@ohci_hcd_nxp_probe._entry_ptr.19 = internal global ptr @ohci_hcd_nxp_probe._entry.17, section ".printk_index", align 4
@ohci_hcd_nxp_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.6, ptr @.str.2, i32 222, ptr @.str.22, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"at 0x%p, irq %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ohci_hcd_nxp_probe._entry_ptr.23 = internal global ptr @ohci_hcd_nxp_probe._entry.20, section ".printk_index", align 4
@isp1301_configure_lpc32xx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016ISP1301 Vendor ID  : 0x%04x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"isp1301_configure_lpc32xx\00", [38 x i8] zeroinitializer }, align 32
@isp1301_configure_lpc32xx._entry_ptr = internal global ptr @isp1301_configure_lpc32xx._entry, section ".printk_index", align 4
@isp1301_configure_lpc32xx._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016ISP1301 Product ID : 0x%04x\0A\00", [33 x i8] zeroinitializer }, align 32
@isp1301_configure_lpc32xx._entry_ptr.28 = internal global ptr @isp1301_configure_lpc32xx._entry.26, section ".printk_index", align 4
@isp1301_configure_lpc32xx._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016ISP1301 Version ID : 0x%04x\0A\00", [33 x i8] zeroinitializer }, align 32
@isp1301_configure_lpc32xx._entry_ptr.31 = internal global ptr @isp1301_configure_lpc32xx._entry.29, section ".printk_index", align 4
@___asan_gen_.32 = private unnamed_addr constant [20 x i8] c"ohci_hcd_nxp_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 263, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 277, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [9 x i8] c"hcd_name\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 49, i32 19 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 265, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [19 x i8] c"ohci_hcd_nxp_match\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 256, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 161, i32 7 }
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"isp1301_i2c_client\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 52, i32 27 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 174, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 176, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [13 x i8] c"usb_host_clk\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 54, i32 20 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 184, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 191, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 199, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 222, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 94, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 96, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private constant [31 x i8] c"../drivers/usb/host/ohci-nxp.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 98, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_alias296, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_ohci_nxp_cleanup, ptr @__initcall__kmod_ohci_nxp__297_282_ohci_nxp_init6, ptr @isp1301_configure_lpc32xx._entry, ptr @isp1301_configure_lpc32xx._entry.26, ptr @isp1301_configure_lpc32xx._entry.29, ptr @isp1301_configure_lpc32xx._entry_ptr, ptr @isp1301_configure_lpc32xx._entry_ptr.28, ptr @isp1301_configure_lpc32xx._entry_ptr.31, ptr @ohci_hcd_nxp_probe._entry, ptr @ohci_hcd_nxp_probe._entry.11, ptr @ohci_hcd_nxp_probe._entry.14, ptr @ohci_hcd_nxp_probe._entry.17, ptr @ohci_hcd_nxp_probe._entry.20, ptr @ohci_hcd_nxp_probe._entry_ptr, ptr @ohci_hcd_nxp_probe._entry_ptr.13, ptr @ohci_hcd_nxp_probe._entry_ptr.16, ptr @ohci_hcd_nxp_probe._entry_ptr.19, ptr @ohci_hcd_nxp_probe._entry_ptr.23, ptr @ohci_nxp_cleanup, ptr @ohci_nxp_init._entry, ptr @ohci_nxp_init._entry_ptr, ptr @ohci_hcd_nxp_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @hcd_name, ptr @.str.3, ptr @ohci_hcd_nxp_match, ptr @.str.4, ptr @isp1301_i2c_client, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @usb_host_clk, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_hcd_nxp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_nxp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcd_name to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_hcd_nxp_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1301_i2c_client to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_hcd_nxp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_host_clk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_hcd_nxp_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_hcd_nxp_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_hcd_nxp_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ohci_hcd_nxp_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1301_configure_lpc32xx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1301_configure_lpc32xx._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1301_configure_lpc32xx._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_nxp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_disabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @hcd_name) #8
  tail call void @ohci_init_driver(ptr noundef nonnull @ohci_nxp_hc_driver, ptr noundef null) #5
  %call2 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ohci_hcd_nxp_driver, ptr noundef null) #5
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ohci_nxp_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @ohci_hcd_nxp_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ohci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_hcd_nxp_probe(ptr noundef %pdev) #3 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %1, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.of_parse_phandle.exit_crit_edge

if.then.of_parse_phandle.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %if.then.of_parse_phandle.exit_crit_edge
  %retval.0.i118 = phi ptr [ %4, %if.end.i ], [ null, %if.then.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  br label %if.end

if.end:                                           ; preds = %of_parse_phandle.exit, %entry.if.end_crit_edge
  %isp1301_node.0 = phi ptr [ %retval.0.i118, %of_parse_phandle.exit ], [ null, %entry.if.end_crit_edge ]
  %call3 = call ptr @isp1301_get_client(ptr noundef %isp1301_node.0) #5
  store ptr %call3, ptr @isp1301_i2c_client, align 4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %5 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.body, label %if.end6.fail_disable_crit_edge

if.end6.fail_disable_crit_edge:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_disable

do.body:                                          ; preds = %if.end6
  %call1.i.i = call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ohci_hcd_nxp_probe.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ohci_hcd_nxp_probe, %if.then16)) #5
          to label %do.end [label %if.then16], !srcloc !83

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ohci_hcd_nxp_probe.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @hcd_name) #5
  br label %do.end

do.end:                                           ; preds = %if.then16, %do.body
  %call19 = call i32 @usb_disabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end26, label %do.end24

do.end24:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  br label %fail_disable

if.end26:                                         ; preds = %do.end
  %call28 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #5
  store ptr %call28, ptr @usb_host_clk, align 4
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end33, label %if.end36

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  %6 = load ptr, ptr @usb_host_clk, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %fail_disable

if.end36:                                         ; preds = %if.end26
  %call.i119 = call i32 @clk_prepare(ptr noundef %call28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool.not.i120 = icmp eq i32 %call.i119, 0
  br i1 %tobool.not.i120, label %if.end.i121, label %if.end36.clk_prepare_enable.exit_crit_edge

if.end36.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i121:                                      ; preds = %if.end36
  %call1.i = call i32 @clk_enable(ptr noundef %call28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i121.if.end43_crit_edge, label %if.then3.i

if.end.i121.if.end43_crit_edge:                   ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then3.i:                                       ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #7
  call void @clk_unprepare(ptr noundef %call28) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end36.clk_prepare_enable.exit_crit_edge
  %retval.0.i122 = phi i32 [ %call.i119, %if.end36.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i122)
  %cmp = icmp slt i32 %retval.0.i122, 0
  br i1 %cmp, label %do.end41, label %clk_prepare_enable.exit.if.end43_crit_edge

clk_prepare_enable.exit.if.end43_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

do.end41:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  br label %fail_disable

if.end43:                                         ; preds = %clk_prepare_enable.exit.if.end43_crit_edge, %if.end.i121.if.end43_crit_edge
  %8 = load ptr, ptr @isp1301_i2c_client, align 4
  %call.i.i123 = call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 5, i8 noundef zeroext 64) #5
  %9 = load ptr, ptr @isp1301_i2c_client, align 4
  %call1.i.i124 = call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 5, i8 noundef zeroext -2) #5
  %10 = load ptr, ptr @isp1301_i2c_client, align 4
  %call2.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 4, i8 noundef zeroext 1) #5
  %11 = load ptr, ptr @isp1301_i2c_client, align 4
  %call3.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 19, i8 noundef zeroext -1) #5
  %12 = load ptr, ptr @isp1301_i2c_client, align 4
  %call4.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 18, i8 noundef zeroext 70) #5
  %13 = load ptr, ptr @isp1301_i2c_client, align 4
  %call5.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 7, i8 noundef zeroext -1) #5
  %14 = load ptr, ptr @isp1301_i2c_client, align 4
  %call6.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 4, i8 noundef zeroext 4) #5
  %15 = load ptr, ptr @isp1301_i2c_client, align 4
  %call7.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 6, i8 noundef zeroext 12) #5
  %16 = load ptr, ptr @isp1301_i2c_client, align 4
  %call8.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 7, i8 noundef zeroext 3) #5
  %17 = load ptr, ptr @isp1301_i2c_client, align 4
  %call9.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 11, i8 noundef zeroext -1) #5
  %18 = load ptr, ptr @isp1301_i2c_client, align 4
  %call10.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 13, i8 noundef zeroext -1) #5
  %19 = load ptr, ptr @isp1301_i2c_client, align 4
  %call11.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 15, i8 noundef zeroext -1) #5
  %20 = load ptr, ptr @isp1301_i2c_client, align 4
  %call12.i.i = call i32 @i2c_smbus_read_word_data(ptr noundef %20, i8 noundef zeroext 0) #5
  %call13.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %call12.i.i) #8
  %21 = load ptr, ptr @isp1301_i2c_client, align 4
  %call17.i.i = call i32 @i2c_smbus_read_word_data(ptr noundef %21, i8 noundef zeroext 2) #5
  %call18.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %call17.i.i) #8
  %22 = load ptr, ptr @isp1301_i2c_client, align 4
  %call22.i.i = call i32 @i2c_smbus_read_word_data(ptr noundef %22, i8 noundef zeroext 20) #5
  %call23.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %call22.i.i) #8
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i125 = icmp eq ptr %24, null
  br i1 %tobool.not.i125, label %if.end.i126, label %if.end43.dev_name.exit_crit_edge

if.end43.dev_name.exit_crit_edge:                 ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i126:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i126, %if.end43.dev_name.exit_crit_edge
  %retval.0.i127 = phi ptr [ %26, %if.end.i126 ], [ %24, %if.end43.dev_name.exit_crit_edge ]
  %call47 = call ptr @usb_create_hcd(ptr noundef nonnull @ohci_nxp_hc_driver, ptr noundef %dev, ptr noundef %retval.0.i127) #5
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %do.end52, label %if.end54

do.end52:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  br label %fail_hcd

if.end54:                                         ; preds = %dev_name.exit
  %call55 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %call57 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call55) #5
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %call47, i32 0, i32 16
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call57, ptr %regs, align 4
  %cmp.i128 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %if.then60, label %if.end63

if.then60:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %call57 to i32
  br label %fail_resource

if.end63:                                         ; preds = %if.end54
  %29 = ptrtoint ptr %call55 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call55, align 4
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %call47, i32 0, i32 17
  %31 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %rsrc_start, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %call55, i32 0, i32 1
  %32 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %end.i, align 4
  %34 = load i32, ptr %call55, align 4
  %sub.i = add i32 %33, 1
  %add.i = sub i32 %sub.i, %34
  %rsrc_len = getelementptr inbounds %struct.usb_hcd, ptr %call47, i32 0, i32 18
  %35 = ptrtoint ptr %rsrc_len to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add.i, ptr %rsrc_len, align 4
  %call65 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %if.end63.fail_resource_crit_edge, label %if.end68

if.end63.fail_resource_crit_edge:                 ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_resource

if.end68:                                         ; preds = %if.end63
  call fastcc void @ohci_nxp_start_hc()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call47, ptr %driver_data.i.i, align 4
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %irq74 = getelementptr inbounds %struct.usb_hcd, ptr %call47, i32 0, i32 15
  %39 = ptrtoint ptr %irq74 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq74, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef %38, i32 noundef %40) #8
  %call75 = call i32 @usb_add_hcd(ptr noundef nonnull %call47, i32 noundef %call65, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %if.then77, label %if.end79

if.then77:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %call47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call47, align 8
  %call78 = call i32 @device_wakeup_enable(ptr noundef %42) #5
  br label %cleanup

if.end79:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @ohci_nxp_stop_hc()
  br label %fail_resource

fail_resource:                                    ; preds = %if.end79, %if.end63.fail_resource_crit_edge, %if.then60
  %ret.0 = phi i32 [ %28, %if.then60 ], [ %call75, %if.end79 ], [ -6, %if.end63.fail_resource_crit_edge ]
  call void @usb_put_hcd(ptr noundef nonnull %call47) #5
  br label %fail_hcd

fail_hcd:                                         ; preds = %fail_resource, %do.end52
  %ret.1 = phi i32 [ %ret.0, %fail_resource ], [ -12, %do.end52 ]
  %43 = load ptr, ptr @usb_host_clk, align 4
  call void @clk_disable(ptr noundef %43) #5
  call void @clk_unprepare(ptr noundef %43) #5
  br label %fail_disable

fail_disable:                                     ; preds = %fail_hcd, %do.end41, %do.end33, %do.end24, %if.end6.fail_disable_crit_edge
  %ret.2 = phi i32 [ -19, %do.end24 ], [ %7, %do.end33 ], [ %retval.0.i122, %do.end41 ], [ %ret.1, %fail_hcd ], [ %call.i.i, %if.end6.fail_disable_crit_edge ]
  store ptr null, ptr @isp1301_i2c_client, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail_disable, %if.then77, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %fail_disable ], [ 0, %if.then77 ], [ -517, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ohci_hcd_nxp_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @usb_remove_hcd(ptr noundef %1) #5
  %call.i = tail call ptr @ioremap(i32 noundef 822214928, i32 noundef 4) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end24.i, !prof !84

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 141, i32 noundef 9, ptr noundef null) #5
  br label %ohci_nxp_stop_hc.exit

if.end24.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = load ptr, ptr @isp1301_i2c_client, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 7, i8 noundef zeroext 32) #5
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call.i) #5, !srcloc !85
  %and.i = and i32 %3, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call.i, i32 %and.i) #5, !srcloc !86
  tail call void @iounmap(ptr noundef nonnull %call.i) #5
  br label %ohci_nxp_stop_hc.exit

ohci_nxp_stop_hc.exit:                            ; preds = %if.end24.i, %do.end.i
  tail call void @usb_put_hcd(ptr noundef %1) #5
  %4 = load ptr, ptr @usb_host_clk, align 4
  tail call void @clk_disable(ptr noundef %4) #5
  tail call void @clk_unprepare(ptr noundef %4) #5
  store ptr null, ptr @isp1301_i2c_client, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @isp1301_get_client(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ohci_nxp_start_hc() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ioremap(i32 noundef 822214928, i32 noundef 4) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !84

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 125, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call) #5, !srcloc !85
  %or = or i32 %0, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call, i32 %or) #5, !srcloc !86
  %1 = load ptr, ptr @isp1301_i2c_client, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext 32) #5
  tail call void @iounmap(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ohci_nxp_stop_hc() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ioremap(i32 noundef 822214928, i32 noundef 4) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !84

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 141, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load ptr, ptr @isp1301_i2c_client, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %0, i8 noundef zeroext 7, i8 noundef zeroext 32) #5
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call) #5, !srcloc !85
  %and = and i32 %1, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call, i32 %and) #5, !srcloc !86
  tail call void @iounmap(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !34, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__UNIQUE_ID_alias296, !1, !"__UNIQUE_ID_alias296", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/ohci-nxp.c", i32 253, i32 1}
!2 = !{ptr @__initcall__kmod_ohci_nxp__297_282_ohci_nxp_init6, !3, !"__initcall__kmod_ohci_nxp__297_282_ohci_nxp_init6", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/ohci-nxp.c", i32 282, i32 1}
!4 = !{ptr @__exitcall_ohci_nxp_cleanup, !5, !"__exitcall_ohci_nxp_cleanup", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/ohci-nxp.c", i32 288, i32 1}
!6 = !{ptr @__UNIQUE_ID_description298, !7, !"__UNIQUE_ID_description298", i1 false, i1 false}
!7 = !{!"../drivers/usb/host/ohci-nxp.c", i32 290, i32 1}
!8 = !{ptr @__UNIQUE_ID_file299, !9, !"__UNIQUE_ID_file299", i1 false, i1 false}
!9 = !{!"../drivers/usb/host/ohci-nxp.c", i32 291, i32 1}
!10 = !{ptr @__UNIQUE_ID_license300, !9, !"__UNIQUE_ID_license300", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/usb/host/ohci-nxp.c", i32 277, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ohci_nxp_init._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @ohci_nxp_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @hcd_name, !18, !"hcd_name", i1 false, i1 false}
!18 = !{!"../drivers/usb/host/ohci-nxp.c", i32 49, i32 19}
!19 = !{ptr @ohci_nxp_hc_driver, !20, !"ohci_nxp_hc_driver", i1 false, i1 false}
!20 = !{!"../drivers/usb/host/ohci-nxp.c", i32 50, i32 39}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/host/ohci-nxp.c", i32 265, i32 11}
!23 = !{ptr @ohci_hcd_nxp_driver, !24, !"ohci_hcd_nxp_driver", i1 false, i1 false}
!24 = !{!"../drivers/usb/host/ohci-nxp.c", i32 263, i32 31}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/host/ohci-nxp.c", i32 161, i32 7}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/host/ohci-nxp.c", i32 174, i32 2}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ohci_hcd_nxp_probe.__UNIQUE_ID_ddebug295, !28, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/host/ohci-nxp.c", i32 176, i32 3}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ohci_hcd_nxp_probe._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @ohci_hcd_nxp_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/host/ohci-nxp.c", i32 184, i32 3}
!40 = !{ptr @ohci_hcd_nxp_probe._entry.11, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ohci_hcd_nxp_probe._entry_ptr.13, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/host/ohci-nxp.c", i32 191, i32 3}
!44 = !{ptr @ohci_hcd_nxp_probe._entry.14, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ohci_hcd_nxp_probe._entry_ptr.16, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/host/ohci-nxp.c", i32 199, i32 3}
!48 = !{ptr @ohci_hcd_nxp_probe._entry.17, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ohci_hcd_nxp_probe._entry_ptr.19, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/host/ohci-nxp.c", i32 222, i32 2}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ohci_hcd_nxp_probe._entry.20, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @ohci_hcd_nxp_probe._entry_ptr.23, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @isp1301_i2c_client, !56, !"isp1301_i2c_client", i1 false, i1 false}
!56 = !{!"../drivers/usb/host/ohci-nxp.c", i32 52, i32 27}
!57 = !{ptr @usb_host_clk, !58, !"usb_host_clk", i1 false, i1 false}
!58 = !{!"../drivers/usb/host/ohci-nxp.c", i32 54, i32 20}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/usb/host/ohci-nxp.c", i32 94, i32 2}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @isp1301_configure_lpc32xx._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @isp1301_configure_lpc32xx._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/host/ohci-nxp.c", i32 96, i32 2}
!66 = !{ptr @isp1301_configure_lpc32xx._entry.26, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @isp1301_configure_lpc32xx._entry_ptr.28, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/host/ohci-nxp.c", i32 98, i32 2}
!70 = !{ptr @isp1301_configure_lpc32xx._entry.29, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @isp1301_configure_lpc32xx._entry_ptr.31, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @ohci_hcd_nxp_match, !73, !"ohci_hcd_nxp_match", i1 false, i1 false}
!73 = !{!"../drivers/usb/host/ohci-nxp.c", i32 256, i32 34}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i64 2148727496, i64 2148727501, i64 2148727514, i64 2148727558, i64 2148727592, i64 2148727613}
!84 = !{!"branch_weights", i32 1, i32 2000}
!85 = !{i64 6254314}
!86 = !{i64 6253896}
