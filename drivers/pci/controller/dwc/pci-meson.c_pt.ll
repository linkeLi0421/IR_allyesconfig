; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/dwc/pci-meson.c_pt.bc'
source_filename = "../drivers/pci/controller/dwc/pci-meson.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dw_pcie_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_pcie_host_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.dw_pcie = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.pcie_port, %struct.dw_pcie_ep, ptr, i32, i32, i32, [2 x i8], i8 }
%struct.pcie_port = type { i8, i64, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i16, i32, ptr, i32, [8 x i32], ptr, %struct.raw_spinlock, [8 x i32] }
%struct.dw_pcie_ep = type { ptr, %struct.list_head, ptr, i32, i32, i32, [6 x i8], ptr, ptr, ptr, ptr, i32, [6 x ptr] }
%struct.meson_pcie = type { %struct.dw_pcie, ptr, %struct.meson_pcie_clk_res, %struct.meson_pcie_rc_reset, ptr, ptr }
%struct.meson_pcie_clk_res = type { ptr, ptr, ptr }
%struct.meson_pcie_rc_reset = type { ptr, ptr }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }

@__initcall__kmod_pci_meson__297_488_meson_pcie_driver_init6 = internal global ptr @meson_pcie_driver_init, section ".initcall6.init", align 4
@meson_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @meson_pcie_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_meson_pcie_driver_exit = internal global ptr @meson_pcie_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author298 = internal constant [49 x i8] c"pci_meson.author=Yue Wang <yue.wang@amlogic.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description299 = internal constant [53 x i8] c"pci_meson.description=Amlogic PCIe Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [52 x i8] c"pci_meson.file=drivers/pci/controller/dwc/pci-meson\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [25 x i8] c"pci_meson.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"meson-pcie\00", [21 x i8] zeroinitializer }, align 32
@meson_pcie_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,axg-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,g12a-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@dw_pcie_ops = internal constant { %struct.dw_pcie_ops, [36 x i8] } { %struct.dw_pcie_ops { ptr null, ptr null, ptr null, ptr null, ptr @meson_pcie_link_up, ptr @meson_pcie_start_link, ptr null }, [36 x i8] zeroinitializer }, align 32
@meson_pcie_host_ops = internal constant { %struct.dw_pcie_host_ops, [24 x i8] } { %struct.dw_pcie_host_ops { ptr @meson_pcie_host_init, ptr null }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pcie\00", [27 x i8] zeroinitializer }, align 32
@meson_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 414, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"get phy failed, %ld\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"meson_pcie_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/pci/controller/dwc/pci-meson.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_pcie_probe._entry_ptr = internal global ptr @meson_pcie_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@meson_pcie_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 420, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"get reset gpio failed\0A\00", [41 x i8] zeroinitializer }, align 32
@meson_pcie_probe._entry_ptr.10 = internal global ptr @meson_pcie_probe._entry.8, section ".printk_index", align 4
@meson_pcie_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 426, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"get reset resource failed, %d\0A\00", [33 x i8] zeroinitializer }, align 32
@meson_pcie_probe._entry_ptr.13 = internal global ptr @meson_pcie_probe._entry.11, section ".printk_index", align 4
@meson_pcie_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 432, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"get memory resource failed, %d\0A\00", [32 x i8] zeroinitializer }, align 32
@meson_pcie_probe._entry_ptr.16 = internal global ptr @meson_pcie_probe._entry.14, section ".printk_index", align 4
@meson_pcie_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 438, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"phy power on failed, %d\0A\00", [39 x i8] zeroinitializer }, align 32
@meson_pcie_probe._entry_ptr.19 = internal global ptr @meson_pcie_probe._entry.17, section ".printk_index", align 4
@meson_pcie_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 444, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reset failed, %d\0A\00", [46 x i8] zeroinitializer }, align 32
@meson_pcie_probe._entry_ptr.22 = internal global ptr @meson_pcie_probe._entry.20, section ".printk_index", align 4
@meson_pcie_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 450, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"init clock resources failed, %d\0A\00", [63 x i8] zeroinitializer }, align 32
@meson_pcie_probe._entry_ptr.25 = internal global ptr @meson_pcie_probe._entry.23, section ".printk_index", align 4
@meson_pcie_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 458, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Add PCIe port failed, %d\0A\00", [38 x i8] zeroinitializer }, align 32
@meson_pcie_probe._entry_ptr.28 = internal global ptr @meson_pcie_probe._entry.26, section ".printk_index", align 4
@meson_pcie_link_up.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.30, ptr @.str.4, ptr @.str.31, i8 0, i8 88, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pci_meson\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"meson_pcie_link_up\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smlh_link_up is on\0A\00", [44 x i8] zeroinitializer }, align 32
@meson_pcie_link_up.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.30, ptr @.str.4, ptr @.str.32, i8 0, i8 88, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rdlh_link_up is on\0A\00", [44 x i8] zeroinitializer }, align 32
@meson_pcie_link_up.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.30, ptr @.str.4, ptr @.str.33, i8 0, i8 89, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ltssm_up is on\0A\00", [16 x i8] zeroinitializer }, align 32
@meson_pcie_link_up.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.30, ptr @.str.4, ptr @.str.34, i8 0, i8 89, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"speed_okay\0A\00", [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@meson_pcie_link_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.4, i32 369, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error: wait linkup timeout\0A\00", [36 x i8] zeroinitializer }, align 32
@meson_pcie_link_up._entry_ptr = internal global ptr @meson_pcie_link_up._entry, section ".printk_index", align 4
@meson_pci_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr @dw_pcie_own_conf_map_bus, ptr @meson_pcie_rd_own_conf, ptr @pci_generic_config_write }, [44 x i8] zeroinitializer }, align 32
@meson_size_to_payload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 253, ptr @.str.38, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"payload size %d, set to default 256\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"meson_size_to_payload\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@meson_size_to_payload._entry_ptr = internal global ptr @meson_size_to_payload._entry, section ".printk_index", align 4
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"apb\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"elbi\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cfg\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"general\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@meson_pcie_probe_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 179, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"set clk rate failed, ret = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"meson_pcie_probe_clock\00", [41 x i8] zeroinitializer }, align 32
@meson_pcie_probe_clock._entry_ptr = internal global ptr @meson_pcie_probe_clock._entry, section ".printk_index", align 4
@meson_pcie_probe_clock._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.4, i32 186, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"couldn't enable clk\0A\00", [43 x i8] zeroinitializer }, align 32
@meson_pcie_probe_clock._entry_ptr.49 = internal global ptr @meson_pcie_probe_clock._entry.47, section ".printk_index", align 4
@___asan_gen_.50 = private unnamed_addr constant [18 x i8] c"meson_pcie_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 480, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 483, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c"meson_pcie_of_match\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 469, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant [12 x i8] c"dw_pcie_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 390, i32 33 }
@___asan_gen_.62 = private unnamed_addr constant [20 x i8] c"meson_pcie_host_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 386, i32 38 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 412, i32 30 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 414, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 418, i32 39 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 420, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 426, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 432, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 438, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 444, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 450, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 458, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 353, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 355, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 357, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 359, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 369, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [14 x i8] c"meson_pci_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 328, i32 23 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 253, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 95, i32 40 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 100, i32 39 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 113, i32 62 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 117, i32 61 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 206, i32 49 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 210, i32 41 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 179, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.201 = private constant [42 x i8] c"../drivers/pci/controller/dwc/pci-meson.c\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 186, i32 3 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_meson_pcie_driver_exit, ptr @__initcall__kmod_pci_meson__297_488_meson_pcie_driver_init6, ptr @meson_pcie_driver_exit, ptr @meson_pcie_link_up._entry, ptr @meson_pcie_link_up._entry_ptr, ptr @meson_pcie_probe._entry, ptr @meson_pcie_probe._entry.11, ptr @meson_pcie_probe._entry.14, ptr @meson_pcie_probe._entry.17, ptr @meson_pcie_probe._entry.20, ptr @meson_pcie_probe._entry.23, ptr @meson_pcie_probe._entry.26, ptr @meson_pcie_probe._entry.8, ptr @meson_pcie_probe._entry_ptr, ptr @meson_pcie_probe._entry_ptr.10, ptr @meson_pcie_probe._entry_ptr.13, ptr @meson_pcie_probe._entry_ptr.16, ptr @meson_pcie_probe._entry_ptr.19, ptr @meson_pcie_probe._entry_ptr.22, ptr @meson_pcie_probe._entry_ptr.25, ptr @meson_pcie_probe._entry_ptr.28, ptr @meson_pcie_probe_clock._entry, ptr @meson_pcie_probe_clock._entry.47, ptr @meson_pcie_probe_clock._entry_ptr, ptr @meson_pcie_probe_clock._entry_ptr.49, ptr @meson_size_to_payload._entry, ptr @meson_size_to_payload._entry_ptr, ptr @meson_pcie_driver, ptr @.str, ptr @meson_pcie_of_match, ptr @dw_pcie_ops, ptr @meson_pcie_host_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @meson_pci_ops, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pcie_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcie_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pcie_host_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pcie_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pcie_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pcie_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pcie_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pcie_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pcie_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pcie_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pcie_link_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pci_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_size_to_payload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pcie_probe_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_pcie_probe_clock._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_pcie_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson_pcie_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_pcie_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 352, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 8
  %ops = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 9
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @dw_pcie_ops, ptr %ops, align 8
  %pp = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 7
  %ops4 = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %ops4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @meson_pcie_host_ops, ptr %ops4, align 8
  %num_lanes = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 11
  %3 = ptrtoint ptr %num_lanes to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %num_lanes, align 8
  %call5 = tail call ptr @devm_phy_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #6
  %phy = getelementptr inbounds %struct.meson_pcie, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %phy, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call5 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %5) #9
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call14 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef 3) #6
  %reset_gpio = getelementptr inbounds %struct.meson_pcie, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call14, ptr %reset_gpio, align 8
  %cmp.i116 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116, label %do.end20, label %if.end23

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #9
  %10 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset_gpio, align 8
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  %mrst1.i = getelementptr inbounds %struct.meson_pcie, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 8
  %call.i.i.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %14, ptr noundef nonnull @.str.39, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %15 = ptrtoint ptr %mrst1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i.i.i, ptr %mrst1.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end23.do.end29_crit_edge, label %if.end.i

if.end23.do.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29

if.end.i:                                         ; preds = %if.end23
  %call7.i = tail call i32 @reset_control_deassert(ptr noundef %call.i.i.i.i) #6
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 8
  %call.i.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %17, ptr noundef nonnull @.str.40, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %apb.i = getelementptr inbounds %struct.meson_pcie, ptr %call.i, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %apb.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i.i.i, ptr %apb.i, align 4
  %cmp.i26.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26.i, label %if.end.i.do.end29_crit_edge, label %meson_pcie_get_resets.exit.thread

if.end.i.do.end29_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29

meson_pcie_get_resets.exit.thread:                ; preds = %if.end.i
  %call16.i = tail call i32 @reset_control_deassert(ptr noundef %call.i.i.i) #6
  %call.i117 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.41) #6
  %dbi_base.i = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %dbi_base.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i117, ptr %dbi_base.i, align 4
  %cmp.i.i118 = icmp ugt ptr %call.i117, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i118, label %meson_pcie_get_resets.exit.thread.meson_pcie_get_mems.exit_crit_edge, label %if.end.i120

meson_pcie_get_resets.exit.thread.meson_pcie_get_mems.exit_crit_edge: ; preds = %meson_pcie_get_resets.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_pcie_get_mems.exit

do.end29:                                         ; preds = %if.end.i.do.end29_crit_edge, %if.end23.do.end29_crit_edge
  %retval.0.i.in = phi ptr [ %call.i.i.i.i, %if.end23.do.end29_crit_edge ], [ %call.i.i.i, %if.end.i.do.end29_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %retval.0.i) #9
  br label %cleanup

if.end.i120:                                      ; preds = %meson_pcie_get_resets.exit.thread
  %call6.i = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.42) #6
  %cfg_base.i = getelementptr inbounds %struct.meson_pcie, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %cfg_base.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call6.i, ptr %cfg_base.i, align 8
  %cmp.i19.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i19.i, label %if.end.i120.meson_pcie_get_mems.exit_crit_edge, label %if.end.i120.if.end37_crit_edge

if.end.i120.if.end37_crit_edge:                   ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.end.i120.meson_pcie_get_mems.exit_crit_edge:   ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_pcie_get_mems.exit

meson_pcie_get_mems.exit:                         ; preds = %if.end.i120.meson_pcie_get_mems.exit_crit_edge, %meson_pcie_get_resets.exit.thread.meson_pcie_get_mems.exit_crit_edge
  %retval.0.i121.in = phi ptr [ %call6.i, %if.end.i120.meson_pcie_get_mems.exit_crit_edge ], [ %call.i117, %meson_pcie_get_resets.exit.thread.meson_pcie_get_mems.exit_crit_edge ]
  %tobool32.not = icmp eq ptr %retval.0.i121.in, null
  br i1 %tobool32.not, label %meson_pcie_get_mems.exit.if.end37_crit_edge, label %do.end36

meson_pcie_get_mems.exit.if.end37_crit_edge:      ; preds = %meson_pcie_get_mems.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.end36:                                         ; preds = %meson_pcie_get_mems.exit
  call void @__sanitizer_cov_trace_pc() #8
  %retval.0.i121 = ptrtoint ptr %retval.0.i121.in to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i121) #9
  br label %cleanup

if.end37:                                         ; preds = %meson_pcie_get_mems.exit.if.end37_crit_edge, %if.end.i120.if.end37_crit_edge
  %21 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy, align 4
  %call.i122 = tail call i32 @phy_init(ptr noundef %22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool.not.i = icmp eq i32 %call.i122, 0
  br i1 %tobool.not.i, label %if.end.i123, label %if.end37.do.end43_crit_edge

if.end37.do.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end43

if.end.i123:                                      ; preds = %if.end37
  %23 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phy, align 4
  %call2.i = tail call i32 @phy_power_on(ptr noundef %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  %25 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phy, align 4
  br i1 %tobool3.not.i, label %if.end44, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i124 = tail call i32 @phy_exit(ptr noundef %26) #6
  br label %do.end43

do.end43:                                         ; preds = %if.then4.i, %if.end37.do.end43_crit_edge
  %retval.0.i125.ph = phi i32 [ %call.i122, %if.end37.do.end43_crit_edge ], [ %call2.i, %if.then4.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i125.ph) #9
  br label %cleanup

if.end44:                                         ; preds = %if.end.i123
  %call.i127 = tail call i32 @phy_reset(ptr noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %tobool.not.i128 = icmp eq i32 %call.i127, 0
  br i1 %tobool.not.i128, label %if.end51, label %do.end50

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %call.i127) #9
  br label %err_phy

if.end51:                                         ; preds = %if.end44
  %27 = ptrtoint ptr %mrst1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mrst1.i, align 4
  %call2.i130 = tail call i32 @reset_control_assert(ptr noundef %28) #6
  %29 = ptrtoint ptr %apb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %apb.i, align 4
  %call3.i = tail call i32 @reset_control_assert(ptr noundef %30) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 107374000) #6
  %call5.i = tail call i32 @reset_control_deassert(ptr noundef %28) #6
  %call7.i132 = tail call i32 @reset_control_deassert(ptr noundef %30) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 107374000) #6
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 8
  %clk_res.i = getelementptr inbounds %struct.meson_pcie, ptr %call.i, i32 0, i32 2
  %call.i144 = tail call ptr @devm_clk_get(ptr noundef %34, ptr noundef nonnull @.str.39) #6
  %cmp.i.i145 = icmp ugt ptr %call.i144, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i145, label %if.end51.meson_pcie_probe_clock.exit_crit_edge, label %if.end.i146

if.end51.meson_pcie_probe_clock.exit_crit_edge:   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_pcie_probe_clock.exit

if.end.i146:                                      ; preds = %if.end51
  %call3.i147 = tail call i32 @clk_set_rate(ptr noundef %call.i144, i32 noundef 100000000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i147)
  %tobool4.not.i = icmp eq i32 %call3.i147, 0
  br i1 %tobool4.not.i, label %if.end8.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.45, i32 noundef %call3.i147) #9
  %35 = inttoptr i32 %call3.i147 to ptr
  br label %meson_pcie_probe_clock.exit

if.end8.i:                                        ; preds = %if.end.i146
  %call.i.i148 = tail call i32 @clk_prepare(ptr noundef %call.i144) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i148)
  %tobool.not.i.i = icmp eq i32 %call.i.i148, 0
  br i1 %tobool.not.i.i, label %if.end.i.i149, label %if.end8.i.do.end14.i_crit_edge

if.end8.i.do.end14.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14.i

if.end.i.i149:                                    ; preds = %if.end8.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %call.i144) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end16.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i149
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call.i144) #6
  br label %do.end14.i

do.end14.i:                                       ; preds = %if.then3.i.i, %if.end8.i.do.end14.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i148, %if.end8.i.do.end14.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.48) #9
  %36 = inttoptr i32 %retval.0.i.ph.i to ptr
  br label %meson_pcie_probe_clock.exit

if.end16.i:                                       ; preds = %if.end.i.i149
  %call.i32.i = tail call i32 @devm_add_action(ptr noundef %34, ptr noundef nonnull @clk_disable_unprepare, ptr noundef %call.i144) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %tobool.not.i33.i = icmp eq i32 %call.i32.i, 0
  br i1 %tobool.not.i33.i, label %if.end16.i.meson_pcie_probe_clock.exit_crit_edge, label %if.then.i.i

if.end16.i.meson_pcie_probe_clock.exit_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_pcie_probe_clock.exit

if.then.i.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %call.i144) #6
  tail call void @clk_unprepare(ptr noundef %call.i144) #6
  br label %meson_pcie_probe_clock.exit

meson_pcie_probe_clock.exit:                      ; preds = %if.then.i.i, %if.end16.i.meson_pcie_probe_clock.exit_crit_edge, %do.end14.i, %do.end.i, %if.end51.meson_pcie_probe_clock.exit_crit_edge
  %retval.0.i150 = phi ptr [ %35, %do.end.i ], [ %36, %do.end14.i ], [ %call.i144, %if.end51.meson_pcie_probe_clock.exit_crit_edge ], [ %call.i144, %if.end16.i.meson_pcie_probe_clock.exit_crit_edge ], [ %call.i144, %if.then.i.i ]
  %port_clk.i = getelementptr inbounds %struct.meson_pcie, ptr %call.i, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %port_clk.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %retval.0.i150, ptr %port_clk.i, align 4
  %cmp.i.i135 = icmp ugt ptr %retval.0.i150, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i135, label %meson_pcie_probe_clock.exit.meson_pcie_probe_clocks.exit_crit_edge, label %if.end.i137

meson_pcie_probe_clock.exit.meson_pcie_probe_clocks.exit_crit_edge: ; preds = %meson_pcie_probe_clock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_pcie_probe_clocks.exit

if.end.i137:                                      ; preds = %meson_pcie_probe_clock.exit
  %call.i.i = tail call ptr @devm_clk_get(ptr noundef %34, ptr noundef nonnull @.str.43) #6
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end.i137.meson_pcie_probe_clock.exit.i_crit_edge, label %if.end.i.i

if.end.i137.meson_pcie_probe_clock.exit.i_crit_edge: ; preds = %if.end.i137
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_pcie_probe_clock.exit.i

if.end.i.i:                                       ; preds = %if.end.i137
  %call.i.i.i138 = tail call i32 @clk_prepare(ptr noundef %call.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i138)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i138, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.i.i.do.end14.i.i_crit_edge

if.end.i.i.do.end14.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @clk_enable(ptr noundef %call.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end16.i.i, label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call.i.i) #6
  br label %do.end14.i.i

do.end14.i.i:                                     ; preds = %if.then3.i.i.i, %if.end.i.i.do.end14.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ %call1.i.i.i, %if.then3.i.i.i ], [ %call.i.i.i138, %if.end.i.i.do.end14.i.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.48) #9
  %38 = inttoptr i32 %retval.0.i.ph.i.i to ptr
  br label %meson_pcie_probe_clock.exit.i

if.end16.i.i:                                     ; preds = %if.end.i.i.i
  %call.i32.i.i = tail call i32 @devm_add_action(ptr noundef %34, ptr noundef nonnull @clk_disable_unprepare, ptr noundef %call.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i.i)
  %tobool.not.i33.i.i = icmp eq i32 %call.i32.i.i, 0
  br i1 %tobool.not.i33.i.i, label %if.end16.i.i.meson_pcie_probe_clock.exit.i_crit_edge, label %if.then.i.i.i

if.end16.i.i.meson_pcie_probe_clock.exit.i_crit_edge: ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_pcie_probe_clock.exit.i

if.then.i.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %call.i.i) #6
  tail call void @clk_unprepare(ptr noundef %call.i.i) #6
  br label %meson_pcie_probe_clock.exit.i

meson_pcie_probe_clock.exit.i:                    ; preds = %if.then.i.i.i, %if.end16.i.i.meson_pcie_probe_clock.exit.i_crit_edge, %do.end14.i.i, %if.end.i137.meson_pcie_probe_clock.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %38, %do.end14.i.i ], [ %call.i.i, %if.end.i137.meson_pcie_probe_clock.exit.i_crit_edge ], [ %call.i.i, %if.end16.i.i.meson_pcie_probe_clock.exit.i_crit_edge ], [ %call.i.i, %if.then.i.i.i ]
  %general_clk.i = getelementptr inbounds %struct.meson_pcie, ptr %call.i, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %general_clk.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %retval.0.i.i, ptr %general_clk.i, align 4
  %cmp.i32.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i32.i, label %meson_pcie_probe_clock.exit.i.meson_pcie_probe_clocks.exit_crit_edge, label %if.end12.i

meson_pcie_probe_clock.exit.i.meson_pcie_probe_clocks.exit_crit_edge: ; preds = %meson_pcie_probe_clock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_pcie_probe_clocks.exit

if.end12.i:                                       ; preds = %meson_pcie_probe_clock.exit.i
  %call.i33.i = tail call ptr @devm_clk_get(ptr noundef %34, ptr noundef nonnull @.str.44) #6
  %cmp.i.i34.i = icmp ugt ptr %call.i33.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i34.i, label %if.end12.i.meson_pcie_probe_clock.exit49.i_crit_edge, label %if.end.i35.i

if.end12.i.meson_pcie_probe_clock.exit49.i_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_pcie_probe_clock.exit49.i

if.end.i35.i:                                     ; preds = %if.end12.i
  %call.i.i36.i = tail call i32 @clk_prepare(ptr noundef %call.i33.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36.i)
  %tobool.not.i.i37.i = icmp eq i32 %call.i.i36.i, 0
  br i1 %tobool.not.i.i37.i, label %if.end.i.i40.i, label %if.end.i35.i.do.end14.i43.i_crit_edge

if.end.i35.i.do.end14.i43.i_crit_edge:            ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14.i43.i

if.end.i.i40.i:                                   ; preds = %if.end.i35.i
  %call1.i.i38.i = tail call i32 @clk_enable(ptr noundef %call.i33.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i38.i)
  %tobool2.not.i.i39.i = icmp eq i32 %call1.i.i38.i, 0
  br i1 %tobool2.not.i.i39.i, label %if.end16.i46.i, label %if.then3.i.i41.i

if.then3.i.i41.i:                                 ; preds = %if.end.i.i40.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call.i33.i) #6
  br label %do.end14.i43.i

do.end14.i43.i:                                   ; preds = %if.then3.i.i41.i, %if.end.i35.i.do.end14.i43.i_crit_edge
  %retval.0.i.ph.i42.i = phi i32 [ %call1.i.i38.i, %if.then3.i.i41.i ], [ %call.i.i36.i, %if.end.i35.i.do.end14.i43.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.48) #9
  %40 = inttoptr i32 %retval.0.i.ph.i42.i to ptr
  br label %meson_pcie_probe_clock.exit49.i

if.end16.i46.i:                                   ; preds = %if.end.i.i40.i
  %call.i32.i44.i = tail call i32 @devm_add_action(ptr noundef %34, ptr noundef nonnull @clk_disable_unprepare, ptr noundef %call.i33.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i44.i)
  %tobool.not.i33.i45.i = icmp eq i32 %call.i32.i44.i, 0
  br i1 %tobool.not.i33.i45.i, label %if.end16.i46.i.meson_pcie_probe_clock.exit49.i_crit_edge, label %if.then.i.i47.i

if.end16.i46.i.meson_pcie_probe_clock.exit49.i_crit_edge: ; preds = %if.end16.i46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_pcie_probe_clock.exit49.i

if.then.i.i47.i:                                  ; preds = %if.end16.i46.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %call.i33.i) #6
  tail call void @clk_unprepare(ptr noundef %call.i33.i) #6
  br label %meson_pcie_probe_clock.exit49.i

meson_pcie_probe_clock.exit49.i:                  ; preds = %if.then.i.i47.i, %if.end16.i46.i.meson_pcie_probe_clock.exit49.i_crit_edge, %do.end14.i43.i, %if.end12.i.meson_pcie_probe_clock.exit49.i_crit_edge
  %retval.0.i48.i = phi ptr [ %40, %do.end14.i43.i ], [ %call.i33.i, %if.end12.i.meson_pcie_probe_clock.exit49.i_crit_edge ], [ %call.i33.i, %if.end16.i46.i.meson_pcie_probe_clock.exit49.i_crit_edge ], [ %call.i33.i, %if.then.i.i47.i ]
  %41 = ptrtoint ptr %clk_res.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %retval.0.i48.i, ptr %clk_res.i, align 4
  %cmp.i50.i = icmp ugt ptr %retval.0.i48.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50.i, label %meson_pcie_probe_clock.exit49.i.meson_pcie_probe_clocks.exit_crit_edge, label %meson_pcie_probe_clock.exit49.i.if.end58_crit_edge

meson_pcie_probe_clock.exit49.i.if.end58_crit_edge: ; preds = %meson_pcie_probe_clock.exit49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

meson_pcie_probe_clock.exit49.i.meson_pcie_probe_clocks.exit_crit_edge: ; preds = %meson_pcie_probe_clock.exit49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %meson_pcie_probe_clocks.exit

meson_pcie_probe_clocks.exit:                     ; preds = %meson_pcie_probe_clock.exit49.i.meson_pcie_probe_clocks.exit_crit_edge, %meson_pcie_probe_clock.exit.i.meson_pcie_probe_clocks.exit_crit_edge, %meson_pcie_probe_clock.exit.meson_pcie_probe_clocks.exit_crit_edge
  %retval.0.i140.in = phi ptr [ %retval.0.i48.i, %meson_pcie_probe_clock.exit49.i.meson_pcie_probe_clocks.exit_crit_edge ], [ %retval.0.i150, %meson_pcie_probe_clock.exit.meson_pcie_probe_clocks.exit_crit_edge ], [ %retval.0.i.i, %meson_pcie_probe_clock.exit.i.meson_pcie_probe_clocks.exit_crit_edge ]
  %tobool53.not = icmp eq ptr %retval.0.i140.in, null
  br i1 %tobool53.not, label %meson_pcie_probe_clocks.exit.if.end58_crit_edge, label %do.end57

meson_pcie_probe_clocks.exit.if.end58_crit_edge:  ; preds = %meson_pcie_probe_clocks.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

do.end57:                                         ; preds = %meson_pcie_probe_clocks.exit
  call void @__sanitizer_cov_trace_pc() #8
  %retval.0.i140 = ptrtoint ptr %retval.0.i140.in to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %retval.0.i140) #9
  br label %err_phy

if.end58:                                         ; preds = %meson_pcie_probe_clocks.exit.if.end58_crit_edge, %meson_pcie_probe_clock.exit49.i.if.end58_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %42 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call60 = tail call i32 @dw_pcie_host_init(ptr noundef %pp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp = icmp slt i32 %call60, 0
  br i1 %cmp, label %do.end64, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %call60) #9
  br label %err_phy

err_phy:                                          ; preds = %do.end64, %do.end57, %do.end50
  %ret.0 = phi i32 [ %call.i127, %do.end50 ], [ %retval.0.i140, %do.end57 ], [ %call60, %do.end64 ]
  %43 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %phy, align 4
  %call.i142 = tail call i32 @phy_power_off(ptr noundef %44) #6
  %45 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %phy, align 4
  %call2.i143 = tail call i32 @phy_exit(ptr noundef %46) #6
  br label %cleanup

cleanup:                                          ; preds = %err_phy, %if.end58.cleanup_crit_edge, %do.end43, %do.end36, %do.end29, %do.end20, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %do.end ], [ %12, %do.end20 ], [ %retval.0.i, %do.end29 ], [ %retval.0.i121, %do.end36 ], [ %retval.0.i125.ph, %do.end43 ], [ %ret.0, %err_phy ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_host_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_pcie_link_up(ptr nocapture noundef readonly %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cfg_base.i = getelementptr inbounds %struct.meson_pcie, ptr %3, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end91.do.body_crit_edge, %entry
  %cnt.0 = phi i32 [ 0, %entry ], [ %inc, %if.end91.do.body_crit_edge ]
  %4 = ptrtoint ptr %cfg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 48
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !116
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  %8 = ptrtoint ptr %cfg_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg_base.i, align 8
  %add.ptr.i131 = getelementptr i8, ptr %9, i32 68
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i131) #6, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  %and = and i32 %7, 64
  %and5 = and i32 %7, 65536
  %11 = and i32 %7, 31744
  call void @__sanitizer_cov_trace_const_cmp4(i32 17408, i32 %11)
  %cmp = icmp eq i32 %11, 17408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.if.end20_crit_edge, label %do.body12

do.body.if.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

do.body12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_pcie_link_up.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@meson_pcie_link_up, %if.end20)) #6
          to label %if.then18 [label %if.end20], !srcloc !118

if.then18:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_pcie_link_up.__UNIQUE_ID_ddebug293, ptr noundef %1, ptr noundef nonnull @.str.31) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %do.body12, %do.body.if.end20_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool21.not = icmp eq i32 %and5, 0
  br i1 %tobool21.not, label %if.end20.if.end41_crit_edge, label %do.body23

if.end20.if.end41_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

do.body23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_pcie_link_up.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@meson_pcie_link_up, %if.end41)) #6
          to label %if.then37 [label %if.end41], !srcloc !118

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_pcie_link_up.__UNIQUE_ID_ddebug294, ptr noundef %1, ptr noundef nonnull @.str.32) #6
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %do.body23, %if.end20.if.end41_crit_edge
  br i1 %cmp, label %do.body44, label %if.end41.do.body65_crit_edge

if.end41.do.body65_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body65

do.body44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_pcie_link_up.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@meson_pcie_link_up, %do.body65)) #6
          to label %if.then58 [label %do.body65], !srcloc !118

if.then58:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_pcie_link_up.__UNIQUE_ID_ddebug295, ptr noundef %1, ptr noundef nonnull @.str.33) #6
  br label %do.body65

do.body65:                                        ; preds = %if.then58, %do.body44, %if.end41.do.body65_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_pcie_link_up.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@meson_pcie_link_up, %if.end83)) #6
          to label %if.then79 [label %if.end83], !srcloc !118

if.then79:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_pcie_link_up.__UNIQUE_ID_ddebug296, ptr noundef %1, ptr noundef nonnull @.str.34) #6
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %do.body65
  %12 = and i32 %7, 65600
  call void @__sanitizer_cov_trace_const_cmp4(i32 65600, i32 %12)
  %13 = icmp ne i32 %12, 65600
  %cmp.not = xor i1 %cmp, true
  %brmerge120 = select i1 %13, i1 true, i1 %cmp.not
  br i1 %brmerge120, label %if.end91, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end91:                                         ; preds = %if.end83
  %inc = add nuw nsw i32 %cnt.0, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #6
  %exitcond.not = icmp eq i32 %inc, 4000
  br i1 %exitcond.not, label %do.end98, label %if.end91.do.body_crit_edge

if.end91.do.body_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end98:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.35) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end98, %if.end83.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end98 ], [ 1, %if.end83.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_pcie_start_link(ptr nocapture noundef readonly %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %cfg_base.i.i = getelementptr inbounds %struct.meson_pcie, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cfg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cfg_base.i.i, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  %7 = or i32 %6, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %cfg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg_base.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #6, !srcloc !120
  %reset_gpio.i = getelementptr inbounds %struct.meson_pcie, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset_gpio.i, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 107374000) #6
  %13 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reset_gpio.i, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %14, i32 noundef 0) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_pcie_host_init(ptr nocapture noundef readonly %pp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pp, i32 -32
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %bridge = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 17
  %4 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bridge, align 8
  %ops = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @meson_pci_ops, ptr %ops, align 4
  %call.i = tail call zeroext i8 @dw_pcie_find_capability(ptr noundef %3, i8 noundef zeroext 16) #6
  %conv3.i = zext i8 %call.i to i32
  %add.i = add nuw nsw i32 %conv3.i, 8
  %call.i.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %3, i32 noundef %add.i, i32 noundef 4) #6
  %and.i = and i32 %call.i.i, -225
  tail call void @dw_pcie_write_dbi(ptr noundef %3, i32 noundef %add.i, i32 noundef 4, i32 noundef %and.i) #6
  %call.i1.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %3, i32 noundef %add.i, i32 noundef 4) #6
  %or.i = or i32 %call.i1.i, 32
  tail call void @dw_pcie_write_dbi(ptr noundef %3, i32 noundef %add.i, i32 noundef 4, i32 noundef %or.i) #6
  %call.i3 = tail call zeroext i8 @dw_pcie_find_capability(ptr noundef %3, i8 noundef zeroext 16) #6
  %conv3.i4 = zext i8 %call.i3 to i32
  %add.i5 = add nuw nsw i32 %conv3.i4, 8
  %call.i.i6 = tail call i32 @dw_pcie_read_dbi(ptr noundef %3, i32 noundef %add.i5, i32 noundef 4) #6
  %and.i7 = and i32 %call.i.i6, -28673
  tail call void @dw_pcie_write_dbi(ptr noundef %3, i32 noundef %add.i5, i32 noundef 4, i32 noundef %and.i7) #6
  %call.i1.i8 = tail call i32 @dw_pcie_read_dbi(ptr noundef %3, i32 noundef %add.i5, i32 noundef 4) #6
  %or.i9 = or i32 %call.i1.i8, 4096
  tail call void @dw_pcie_write_dbi(ptr noundef %3, i32 noundef %add.i5, i32 noundef 4, i32 noundef %or.i9) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dw_pcie_own_conf_map_bus(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_pcie_rd_own_conf(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_generic_config_read(ptr noundef %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %where)
  %cmp1 = icmp eq i32 %where, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp2 = icmp eq i32 %size, 4
  %or.cond = and i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val, align 4
  %and = and i32 %1, 65535
  %or = or i32 %and, 100925440
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %where)
  %cmp4 = icmp eq i32 %where, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %size)
  %cmp6 = icmp eq i32 %size, 2
  %or.cond36 = and i1 %cmp4, %cmp6
  br i1 %or.cond36, label %if.else.cleanup.sink.split_crit_edge, label %if.else8

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size)
  %cmp11 = icmp eq i32 %size, 1
  %or.cond37 = and i1 %cmp4, %cmp11
  br i1 %or.cond37, label %if.else8.cleanup.sink.split_crit_edge, label %if.else13

if.else8.cleanup.sink.split_crit_edge:            ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else13:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %where)
  %cmp14 = icmp eq i32 %where, 11
  %or.cond38 = and i1 %cmp14, %cmp11
  br i1 %or.cond38, label %if.else13.cleanup.sink.split_crit_edge, label %if.else13.cleanup_crit_edge

if.else13.cleanup_crit_edge:                      ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else13.cleanup.sink.split_crit_edge:           ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else13.cleanup.sink.split_crit_edge, %if.else8.cleanup.sink.split_crit_edge, %if.else.cleanup.sink.split_crit_edge, %if.then3
  %or.sink = phi i32 [ %or, %if.then3 ], [ 1540, %if.else.cleanup.sink.split_crit_edge ], [ 4, %if.else8.cleanup.sink.split_crit_edge ], [ 6, %if.else13.cleanup.sink.split_crit_edge ]
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else13.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dw_pcie_find_capability(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_read_dbi(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_write_dbi(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_disable_unprepare(ptr noundef %clk) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %clk) #6
  tail call void @clk_unprepare(ptr noundef %clk) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !59, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !74, !76, !78, !80, !81, !82, !83, !84, !86, !88, !90, !92, !94, !96, !98, !99, !100, !101, !103, !104, !105}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__initcall__kmod_pci_meson__297_488_meson_pcie_driver_init6, !1, !"__initcall__kmod_pci_meson__297_488_meson_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 488, i32 1}
!2 = !{ptr @__exitcall_meson_pcie_driver_exit, !1, !"__exitcall_meson_pcie_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author298, !4, !"__UNIQUE_ID_author298", i1 false, i1 false}
!4 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 490, i32 1}
!5 = !{ptr @__UNIQUE_ID_description299, !6, !"__UNIQUE_ID_description299", i1 false, i1 false}
!6 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 491, i32 1}
!7 = !{ptr @__UNIQUE_ID_file300, !8, !"__UNIQUE_ID_file300", i1 false, i1 false}
!8 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 492, i32 1}
!9 = !{ptr @__UNIQUE_ID_license301, !8, !"__UNIQUE_ID_license301", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 483, i32 11}
!12 = !{ptr @meson_pcie_driver, !13, !"meson_pcie_driver", i1 false, i1 false}
!13 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 480, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 412, i32 30}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 414, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @meson_pcie_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @meson_pcie_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 418, i32 39}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 420, i32 3}
!28 = !{ptr @meson_pcie_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @meson_pcie_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 426, i32 3}
!32 = !{ptr @meson_pcie_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @meson_pcie_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 432, i32 3}
!36 = !{ptr @meson_pcie_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @meson_pcie_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 438, i32 3}
!40 = !{ptr @meson_pcie_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @meson_pcie_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 444, i32 3}
!44 = !{ptr @meson_pcie_probe._entry.20, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @meson_pcie_probe._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 450, i32 3}
!48 = !{ptr @meson_pcie_probe._entry.23, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @meson_pcie_probe._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 458, i32 3}
!52 = !{ptr @meson_pcie_probe._entry.26, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @meson_pcie_probe._entry_ptr.28, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @dw_pcie_ops, !55, !"dw_pcie_ops", i1 false, i1 false}
!55 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 390, i32 33}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 353, i32 4}
!58 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @meson_pcie_link_up.__UNIQUE_ID_ddebug293, !57, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 355, i32 4}
!63 = !{ptr @meson_pcie_link_up.__UNIQUE_ID_ddebug294, !62, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 357, i32 4}
!66 = !{ptr @meson_pcie_link_up.__UNIQUE_ID_ddebug295, !65, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 359, i32 4}
!69 = !{ptr @meson_pcie_link_up.__UNIQUE_ID_ddebug296, !68, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 369, i32 2}
!72 = !{ptr @meson_pcie_link_up._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @meson_pcie_link_up._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @meson_pcie_host_ops, !75, !"meson_pcie_host_ops", i1 false, i1 false}
!75 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 386, i32 38}
!76 = !{ptr @meson_pci_ops, !77, !"meson_pci_ops", i1 false, i1 false}
!77 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 328, i32 23}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 253, i32 3}
!80 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @meson_size_to_payload._entry, !79, !"_entry", i1 false, i1 false}
!83 = !{ptr @meson_size_to_payload._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 95, i32 40}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 100, i32 39}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 113, i32 62}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 117, i32 61}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 206, i32 49}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 210, i32 41}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 179, i32 4}
!98 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @meson_pcie_probe_clock._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @meson_pcie_probe_clock._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 186, i32 3}
!103 = !{ptr @meson_pcie_probe_clock._entry.47, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @meson_pcie_probe_clock._entry_ptr.49, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @meson_pcie_of_match, !106, !"meson_pcie_of_match", i1 false, i1 false}
!106 = !{!"../drivers/pci/controller/dwc/pci-meson.c", i32 469, i32 34}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{i64 5092783}
!117 = !{i64 2155746574}
!118 = !{i64 2148731347, i64 2148731352, i64 2148731365, i64 2148731409, i64 2148731443, i64 2148731464}
!119 = !{i64 2155746958}
!120 = !{i64 5092365}
