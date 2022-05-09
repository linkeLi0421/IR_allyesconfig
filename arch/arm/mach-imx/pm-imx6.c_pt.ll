; ModuleID = '/llk/IR_all_yes/arch/arm/mach-imx/pm-imx6.c_pt.bc'
source_filename = "../arch/arm/mach-imx/pm-imx6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.imx6_pm_socdata = type { i32, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }
%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.imx6_cpu_pm_info = type { i32, i32, i32, i32, %struct.imx6_pm_base, %struct.imx6_pm_base, %struct.imx6_pm_base, %struct.imx6_pm_base, %struct.imx6_pm_base, %struct.imx6_pm_base, i32, [33 x [2 x i32]], [4 x i8] }
%struct.imx6_pm_base = type { i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@ccm_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fsl,pmic-stby-poweroff\00", [41 x i8] zeroinitializer }, align 32
@imx6q_pm_data = internal constant %struct.imx6_pm_socdata { i32 0, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, i32 33, ptr @imx6q_mmdc_io_offset }, section ".init.rodata", align 4
@imx6dl_pm_data = internal constant %struct.imx6_pm_socdata { i32 0, ptr @.str.39, ptr @.str.40, ptr @.str.44, ptr @.str.42, ptr @.str.43, i32 33, ptr @imx6dl_mmdc_io_offset }, section ".init.rodata", align 4
@imx6sl_pm_data = internal constant %struct.imx6_pm_socdata { i32 0, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.43, i32 19, ptr @imx6sl_mmdc_io_offset }, section ".init.rodata", align 4
@imx6sll_pm_data = internal constant %struct.imx6_pm_socdata { i32 0, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.43, i32 14, ptr @imx6sll_mmdc_io_offset }, section ".init.rodata", align 4
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,imx6q-iomuxc-gpr\00", [43 x i8] zeroinitializer }, align 32
@imx6sx_pm_data = internal constant %struct.imx6_pm_socdata { i32 0, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.43, i32 20, ptr @imx6sx_mmdc_io_offset }, section ".init.rodata", align 4
@imx6ul_pm_data = internal constant %struct.imx6_pm_socdata { i32 0, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr null, i32 14, ptr @imx6ul_mmdc_io_offset }, section ".init.rodata", align 4
@__mxc_cpu_type = external dso_local local_unnamed_addr global i32, align 4
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@imx6_pm_stby_poweroff_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s: pm_power_off already claimed  %p %ps!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"imx6_pm_stby_poweroff_probe\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"arch/arm/mach-imx/pm-imx6.c\00", [36 x i8] zeroinitializer }, align 32
@imx6_pm_stby_poweroff_probe._entry_ptr = internal global ptr @imx6_pm_stby_poweroff_probe._entry, section ".printk_index", align 4
@imx6_pm_stby_poweroff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\010Unable to poweroff system\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"imx6_pm_stby_poweroff\00", [42 x i8] zeroinitializer }, align 32
@imx6_pm_stby_poweroff._entry_ptr = internal global ptr @imx6_pm_stby_poweroff._entry, section ".printk_index", align 4
@imx6_suspend_in_ocram_fn = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@suspend_ocram_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@imx6_pm_common_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: No DDR LPM support with suspend %d!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imx6_pm_common_init\00", [44 x i8] zeroinitializer }, align 32
@imx6_pm_common_init._entry_ptr = internal global ptr @imx6_pm_common_init._entry, section ".printk_index", align 4
@imx6q_pm_ops = internal constant { %struct.platform_suspend_ops, [56 x i8] } { %struct.platform_suspend_ops { ptr @imx6q_pm_valid, ptr null, ptr null, ptr null, ptr @imx6q_pm_enter, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@imx6q_suspend_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014%s: invalid argument!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imx6q_suspend_init\00", [45 x i8] zeroinitializer }, align 32
@imx6q_suspend_init._entry_ptr = internal global ptr @imx6q_suspend_init._entry, section ".printk_index", align 4
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmio-sram\00", [22 x i8] zeroinitializer }, align 32
@imx6q_suspend_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.4, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: failed to find ocram node!\0A\00", [62 x i8] zeroinitializer }, align 32
@imx6q_suspend_init._entry_ptr.14 = internal global ptr @imx6q_suspend_init._entry.12, section ".printk_index", align 4
@imx6q_suspend_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.4, i32 489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014%s: failed to find ocram device!\0A\00", [60 x i8] zeroinitializer }, align 32
@imx6q_suspend_init._entry_ptr.17 = internal global ptr @imx6q_suspend_init._entry.15, section ".printk_index", align 4
@imx6q_suspend_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.4, i32 496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: ocram pool unavailable!\0A\00", [33 x i8] zeroinitializer }, align 32
@imx6q_suspend_init._entry_ptr.20 = internal global ptr @imx6q_suspend_init._entry.18, section ".printk_index", align 4
@imx6q_suspend_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.10, ptr @.str.4, i32 503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s: unable to alloc ocram!\0A\00", [34 x i8] zeroinitializer }, align 32
@imx6q_suspend_init._entry_ptr.23 = internal global ptr @imx6q_suspend_init._entry.21, section ".printk_index", align 4
@imx6q_suspend_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.10, ptr @.str.4, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014%s: failed to get mmdc base %d!\0A\00", [61 x i8] zeroinitializer }, align 32
@imx6q_suspend_init._entry_ptr.26 = internal global ptr @imx6q_suspend_init._entry.24, section ".printk_index", align 4
@imx6q_suspend_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.10, ptr @.str.4, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: failed to get src base %d!\0A\00", [62 x i8] zeroinitializer }, align 32
@imx6q_suspend_init._entry_ptr.29 = internal global ptr @imx6q_suspend_init._entry.27, section ".printk_index", align 4
@imx6q_suspend_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.10, ptr @.str.4, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s: failed to get iomuxc base %d!\0A\00", [59 x i8] zeroinitializer }, align 32
@imx6q_suspend_init._entry_ptr.32 = internal global ptr @imx6q_suspend_init._entry.30, section ".printk_index", align 4
@imx6q_suspend_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.10, ptr @.str.4, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: failed to get gpc base %d!\0A\00", [62 x i8] zeroinitializer }, align 32
@imx6q_suspend_init._entry_ptr.35 = internal global ptr @imx6q_suspend_init._entry.33, section ".printk_index", align 4
@imx6q_suspend_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.10, ptr @.str.4, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: failed to get pl310-cache base %d!\0A\00", [54 x i8] zeroinitializer }, align 32
@imx6q_suspend_init._entry_ptr.38 = internal global ptr @imx6q_suspend_init._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,imx6q-mmdc\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,imx6q-src\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,imx6q-iomuxc\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,imx6q-gpc\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arm,pl310-cache\00", [16 x i8] zeroinitializer }, align 32
@imx6q_mmdc_io_offset = internal constant [33 x i32] [i32 1452, i32 1460, i32 1320, i32 1312, i32 1300, i32 1296, i32 1468, i32 1476, i32 1388, i32 1400, i32 1416, i32 1428, i32 1448, i32 1456, i32 1316, i32 1308, i32 1304, i32 1292, i32 1464, i32 1472, i32 1924, i32 1928, i32 1940, i32 1948, i32 1952, i32 1956, i32 1960, i32 1864, i32 1436, i32 1440, i32 1872, i32 1908, i32 1868], section ".init.rodata", align 4
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,imx6dl-iomuxc\00", [46 x i8] zeroinitializer }, align 32
@imx6dl_mmdc_io_offset = internal constant [33 x i32] [i32 1136, i32 1140, i32 1144, i32 1148, i32 1152, i32 1156, i32 1160, i32 1164, i32 1124, i32 1168, i32 1196, i32 1200, i32 1212, i32 1216, i32 1220, i32 1224, i32 1228, i32 1232, i32 1236, i32 1240, i32 1892, i32 1904, i32 1912, i32 1916, i32 1920, i32 1924, i32 1932, i32 1864, i32 1204, i32 1208, i32 1872, i32 1888, i32 1868], section ".init.rodata", align 4
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,imx6sl-mmdc\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,imx6sl-src\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,imx6sl-iomuxc\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,imx6sl-gpc\00", [17 x i8] zeroinitializer }, align 32
@imx6sl_mmdc_io_offset = internal constant [19 x i32] [i32 780, i32 784, i32 788, i32 792, i32 1476, i32 1484, i32 1492, i32 1496, i32 768, i32 796, i32 824, i32 1452, i32 828, i32 832, i32 1456, i32 1472, i32 816, i32 820, i32 800], section ".init.rodata", align 4
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl,imx6sll-mmdc\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,imx6sll-src\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl,imx6sll-iomuxc\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,imx6sll-gpc\00", [16 x i8] zeroinitializer }, align 32
@imx6sll_mmdc_io_offset = internal constant [14 x i32] [i32 660, i32 664, i32 668, i32 672, i32 1348, i32 1356, i32 1364, i32 1368, i32 1328, i32 1344, i32 684, i32 1324, i32 676, i32 680], section ".init.rodata", align 4
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,imx6sx-mmdc\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,imx6sx-src\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,imx6sx-iomuxc\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,imx6sx-gpc\00", [17 x i8] zeroinitializer }, align 32
@imx6sx_mmdc_io_offset = internal constant [20 x i32] [i32 748, i32 752, i32 756, i32 760, i32 1548, i32 1552, i32 1564, i32 1568, i32 768, i32 764, i32 812, i32 1524, i32 784, i32 788, i32 1528, i32 1544, i32 816, i32 820, i32 824, i32 828], section ".init.rodata", align 4
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,imx6ul-mmdc\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,imx6ul-src\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,imx6ul-iomuxc\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,imx6ul-gpc\00", [17 x i8] zeroinitializer }, align 32
@imx6ul_mmdc_io_offset = internal constant [14 x i32] [i32 580, i32 584, i32 588, i32 592, i32 636, i32 1176, i32 1188, i32 1168, i32 640, i32 644, i32 608, i32 612, i32 1172, i32 1200], section ".init.rodata", align 4
@switch.table.imx6q_pm_enter = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 524288, i32 2097152, i32 524288, i32 2097152, i32 524288, i32 524288, i32 2097152, i32 524288, i32 2097152, i32 2097152, i32 2097152, i32 524288], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.61 = internal global [8 x i64] [i64 6, i64 32, i64 96, i64 98, i64 100, i64 101, i64 103, i64 107]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 96, i64 98]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 32, i64 100, i64 101, i64 103, i64 107]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 96, i64 98]
@__sancov_gen_cov_switch_values.65 = internal global [6 x i64] [i64 4, i64 32, i64 100, i64 101, i64 103, i64 107]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 96, i64 98]
@__sancov_gen_cov_switch_values.68 = internal global [6 x i64] [i64 4, i64 32, i64 100, i64 101, i64 103, i64 107]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 97, i64 99]
@___asan_gen_.70 = private unnamed_addr constant [9 x i8] c"ccm_base\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 63, i32 22 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 663, i32 32 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 687, i32 44 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 637, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 631, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [25 x i8] c"imx6_suspend_in_ocram_fn\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 65, i32 15 }
@___asan_gen_.103 = private unnamed_addr constant [19 x i8] c"suspend_ocram_base\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 64, i32 22 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 606, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant [13 x i8] c"imx6q_pm_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 433, i32 42 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 477, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 481, i32 45 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 483, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 489, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 496, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 503, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 527, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 533, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 539, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 545, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 552, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 152, i32 17 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 153, i32 16 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 154, i32 19 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 155, i32 16 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 156, i32 18 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 164, i32 19 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 172, i32 17 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 173, i32 16 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 174, i32 19 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 175, i32 16 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 182, i32 17 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 183, i32 16 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 184, i32 19 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 185, i32 16 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 192, i32 17 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 193, i32 16 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 194, i32 19 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 195, i32 16 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 202, i32 17 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 203, i32 16 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 204, i32 19 }
@___asan_gen_.247 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.248 = private constant [31 x i8] c"../arch/arm/mach-imx/pm-imx6.c\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 205, i32 16 }
@___asan_gen_.250 = private unnamed_addr constant [28 x i8] c"switch.table.imx6q_pm_enter\00", align 1
@llvm.compiler.used = appending global [74 x ptr] [ptr @imx6_pm_common_init._entry, ptr @imx6_pm_common_init._entry_ptr, ptr @imx6_pm_stby_poweroff._entry, ptr @imx6_pm_stby_poweroff._entry_ptr, ptr @imx6_pm_stby_poweroff_probe._entry, ptr @imx6_pm_stby_poweroff_probe._entry_ptr, ptr @imx6q_suspend_init._entry, ptr @imx6q_suspend_init._entry.12, ptr @imx6q_suspend_init._entry.15, ptr @imx6q_suspend_init._entry.18, ptr @imx6q_suspend_init._entry.21, ptr @imx6q_suspend_init._entry.24, ptr @imx6q_suspend_init._entry.27, ptr @imx6q_suspend_init._entry.30, ptr @imx6q_suspend_init._entry.33, ptr @imx6q_suspend_init._entry.36, ptr @imx6q_suspend_init._entry_ptr, ptr @imx6q_suspend_init._entry_ptr.14, ptr @imx6q_suspend_init._entry_ptr.17, ptr @imx6q_suspend_init._entry_ptr.20, ptr @imx6q_suspend_init._entry_ptr.23, ptr @imx6q_suspend_init._entry_ptr.26, ptr @imx6q_suspend_init._entry_ptr.29, ptr @imx6q_suspend_init._entry_ptr.32, ptr @imx6q_suspend_init._entry_ptr.35, ptr @imx6q_suspend_init._entry_ptr.38, ptr @ccm_base, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @imx6_suspend_in_ocram_fn, ptr @suspend_ocram_base, ptr @.str.7, ptr @.str.8, ptr @imx6q_pm_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @switch.table.imx6q_pm_enter], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccm_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pm_stby_poweroff_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pm_stby_poweroff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_suspend_in_ocram_fn to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_ocram_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6_pm_common_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_pm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_suspend_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_suspend_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_suspend_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_suspend_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_suspend_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_suspend_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_suspend_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_suspend_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_suspend_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_suspend_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.imx6q_pm_enter to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx6_set_int_mem_clk_lpm(i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ccm_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 100
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !149
  %2 = and i32 %1, -513
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %or = or i32 %3, 131072
  %spec.select = select i1 %enable, i32 %or, i32 %3
  %4 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %5 = load ptr, ptr @ccm_base, align 4
  %add.ptr1 = getelementptr i8, ptr %5, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %4) #8, !srcloc !150
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx6_enable_rbc(i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @imx_gpc_mask_all() #8
  %0 = load ptr, ptr @ccm_base, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #8, !srcloc !149
  %2 = and i32 %1, -9
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %cond = select i1 %enable, i32 134217728, i32 0
  %or = or i32 %3, %cond
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %5 = load ptr, ptr @ccm_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %4) #8, !srcloc !150
  %6 = load ptr, ptr @ccm_base, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !149
  %8 = and i32 %7, -57352
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %cond8 = select i1 %enable, i32 132120576, i32 0
  %or9 = or i32 %9, %cond8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %or9)
  %11 = load ptr, ptr @ccm_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %10) #8, !srcloc !150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 13958620) #8
  tail call void @imx_gpc_restore_all() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_gpc_mask_all() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_gpc_restore_all() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx6_set_lpm(i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ccm_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 84
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !149
  %2 = and i32 %1, -50331649
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 0, label %if.end58.critedge
    i32 1, label %sw.bb
    i32 3, label %sw.bb2
    i32 2, label %sw.bb22
    i32 4, label %sw.bb26
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or1 = or i32 %3, 33
  br label %if.then53

sw.bb2:                                           ; preds = %entry
  %or3 = and i32 %3, -324
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__mxc_cpu_type to i32))
  %5 = load i32, ptr @__mxc_cpu_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %5)
  %cmp.i = icmp eq i32 %5, 96
  %spec.select.v = select i1 %cmp.i, i32 6, i32 2
  %spec.select = or i32 %spec.select.v, %or3
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %5, label %if.else [
    i32 107, label %sw.bb2.if.then18_crit_edge
    i32 103, label %sw.bb2.if.then18_crit_edge109
    i32 101, label %sw.bb2.if.then18_crit_edge110
    i32 100, label %sw.bb2.if.then18_crit_edge111
    i32 98, label %sw.bb2.if.then18_crit_edge112
    i32 96, label %sw.bb2.if.then18_crit_edge113
  ]

sw.bb2.if.then18_crit_edge113:                    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

sw.bb2.if.then18_crit_edge112:                    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

sw.bb2.if.then18_crit_edge111:                    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

sw.bb2.if.then18_crit_edge110:                    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

sw.bb2.if.then18_crit_edge109:                    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

sw.bb2.if.then18_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

if.then18:                                        ; preds = %sw.bb2.if.then18_crit_edge, %sw.bb2.if.then18_crit_edge109, %sw.bb2.if.then18_crit_edge110, %sw.bb2.if.then18_crit_edge111, %sw.bb2.if.then18_crit_edge112, %sw.bb2.if.then18_crit_edge113
  %or19 = or i32 %spec.select, 524288
  br label %if.then53

if.else:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %or20 = or i32 %spec.select, 2097152
  br label %if.then53

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or23 = and i32 %3, -324
  %and24 = or i32 %or23, 1
  br label %if.then53

sw.bb26:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__mxc_cpu_type to i32))
  %7 = load i32, ptr @__mxc_cpu_type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %7, label %lor.lhs.false40 [
    i32 96, label %if.end36.thread98
    i32 98, label %lor.lhs.false38.thread
  ]

if.end36.thread98:                                ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #10
  %or3599 = or i32 %3, 1862
  br label %if.then48

lor.lhs.false38.thread:                           ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #10
  %or35 = or i32 %3, 1862
  br label %if.then48

lor.lhs.false40:                                  ; preds = %sw.bb26
  %or30 = or i32 %3, 1858
  %9 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %7, label %if.else50 [
    i32 100, label %lor.lhs.false40.if.then48_crit_edge
    i32 101, label %lor.lhs.false40.if.then48_crit_edge114
    i32 103, label %lor.lhs.false40.if.then48_crit_edge115
    i32 107, label %lor.lhs.false40.if.then48_crit_edge116
  ]

lor.lhs.false40.if.then48_crit_edge116:           ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48

lor.lhs.false40.if.then48_crit_edge115:           ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48

lor.lhs.false40.if.then48_crit_edge114:           ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48

lor.lhs.false40.if.then48_crit_edge:              ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48

if.then48:                                        ; preds = %lor.lhs.false40.if.then48_crit_edge, %lor.lhs.false40.if.then48_crit_edge114, %lor.lhs.false40.if.then48_crit_edge115, %lor.lhs.false40.if.then48_crit_edge116, %lor.lhs.false38.thread, %if.end36.thread98
  %val.197 = phi i32 [ %or30, %lor.lhs.false40.if.then48_crit_edge ], [ %or3599, %if.end36.thread98 ], [ %or35, %lor.lhs.false38.thread ], [ %or30, %lor.lhs.false40.if.then48_crit_edge114 ], [ %or30, %lor.lhs.false40.if.then48_crit_edge115 ], [ %or30, %lor.lhs.false40.if.then48_crit_edge116 ]
  %or49 = or i32 %val.197, 524288
  br label %if.then53

if.else50:                                        ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #10
  %or51 = or i32 %3, 2099010
  br label %if.then53

if.then53:                                        ; preds = %if.else50, %if.then48, %sw.bb22, %if.else, %if.then18, %sw.bb
  %val.2.ph = phi i32 [ %or1, %sw.bb ], [ %or20, %if.else ], [ %or19, %if.then18 ], [ %and24, %sw.bb22 ], [ %or51, %if.else50 ], [ %or49, %if.then48 ]
  tail call void @imx_gpc_hwirq_unmask(i32 noundef 0) #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %val.2.ph)
  %11 = load ptr, ptr @ccm_base, align 4
  %add.ptr55.c = getelementptr i8, ptr %11, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.c, i32 %10) #8, !srcloc !150
  tail call void @imx_gpc_hwirq_mask(i32 noundef 0) #8
  br label %cleanup

if.end58.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = load ptr, ptr @ccm_base, align 4
  %add.ptr55.c80 = getelementptr i8, ptr %12, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.c80, i32 %2) #8, !srcloc !150
  br label %cleanup

cleanup:                                          ; preds = %if.end58.critedge, %if.then53, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end58.critedge ], [ 0, %if.then53 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_gpc_hwirq_unmask(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_gpc_hwirq_mask(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @imx6_pm_ccm_init(ptr noundef %ccm_compat) local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef %ccm_compat) #8
  %call1 = tail call ptr @of_iomap(ptr noundef %call, i32 noundef 0) #8
  store ptr %call1, ptr @ccm_base, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !152

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-imx/pm-imx6.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 653, 0\0A.popsection", ""() #8, !srcloc !153
  unreachable

do.end10:                                         ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call1, i32 84
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !149
  %1 = and i32 %0, -50331649
  %2 = load ptr, ptr @ccm_base, align 4
  %add.ptr12 = getelementptr i8, ptr %2, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %1) #8, !srcloc !150
  %call.i = tail call ptr @of_find_property(ptr noundef %call, ptr noundef nonnull @.str, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %do.end10.if.end16_crit_edge, label %if.then14

do.end10.if.end16_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %do.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  %3 = load ptr, ptr @pm_power_off, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %call.i20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %3, ptr noundef nonnull %3) #11
  br label %if.end16

if.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr @imx6_pm_stby_poweroff, ptr @pm_power_off, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end.i, %do.end.i, %do.end10.if.end16_crit_edge
  tail call void @of_node_put(ptr noundef %call) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @imx6q_pm_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @imx6_pm_common_init(ptr noundef nonnull @imx6q_pm_data) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imx6_pm_common_init(ptr noundef %socdata) unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ccm_base, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !152

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 601, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call = tail call fastcc i32 @imx6q_suspend_init(ptr noundef %socdata) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool21.not = icmp eq i32 %call, 0
  br i1 %tobool21.not, label %if.end.if.end28_crit_edge, label %do.end25

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

do.end25:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call) #11
  br label %if.end28

if.end28:                                         ; preds = %do.end25, %if.end.if.end28_crit_edge
  %call29 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.1) #8
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end28.if.end33_crit_edge, label %if.then31

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %call29, i32 noundef 4, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end28.if.end33_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @imx6dl_pm_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @imx6_pm_common_init(ptr noundef nonnull @imx6dl_pm_data) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @imx6sl_pm_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__mxc_cpu_type to i32))
  %0 = load i32, ptr @__mxc_cpu_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %0)
  %cmp.i = icmp eq i32 %0, 96
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @imx6_pm_common_init(ptr noundef nonnull @imx6sl_pm_data) #12
  br label %if.end5

if.else:                                          ; preds = %entry
  tail call fastcc void @imx6_pm_common_init(ptr noundef nonnull @imx6sll_pm_data) #12
  %call1 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.1) #8
  %cmp.i7 = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i7, label %if.else.if.end5_crit_edge, label %if.then3

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %call1, i32 noundef 20, i32 noundef 63488, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.else.if.end5_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @imx6sx_pm_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @imx6_pm_common_init(ptr noundef nonnull @imx6sx_pm_data) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @imx6ul_pm_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @imx6_pm_common_init(ptr noundef nonnull @imx6ul_pm_data) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx6_pm_stby_poweroff() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gic_cpu_if_down(i32 noundef 0) #8
  %0 = load ptr, ptr @ccm_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 84
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !149
  %2 = and i32 %1, -50331649
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__mxc_cpu_type to i32))
  %4 = load i32, ptr @__mxc_cpu_type, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %4, label %lor.lhs.false40.i [
    i32 96, label %if.end36.thread98.i
    i32 98, label %lor.lhs.false38.thread.i
  ]

if.end36.thread98.i:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or3599.i = or i32 %3, 1862
  br label %if.then48.i

lor.lhs.false38.thread.i:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or35.i = or i32 %3, 1862
  br label %if.then48.i

lor.lhs.false40.i:                                ; preds = %entry
  %or30.i = or i32 %3, 1858
  %6 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %4, label %if.else50.i [
    i32 100, label %lor.lhs.false40.i.if.then48.i_crit_edge
    i32 101, label %lor.lhs.false40.i.if.then48.i_crit_edge5
    i32 103, label %lor.lhs.false40.i.if.then48.i_crit_edge6
    i32 107, label %lor.lhs.false40.i.if.then48.i_crit_edge7
  ]

lor.lhs.false40.i.if.then48.i_crit_edge7:         ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48.i

lor.lhs.false40.i.if.then48.i_crit_edge6:         ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48.i

lor.lhs.false40.i.if.then48.i_crit_edge5:         ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48.i

lor.lhs.false40.i.if.then48.i_crit_edge:          ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48.i

if.then48.i:                                      ; preds = %lor.lhs.false40.i.if.then48.i_crit_edge, %lor.lhs.false40.i.if.then48.i_crit_edge5, %lor.lhs.false40.i.if.then48.i_crit_edge6, %lor.lhs.false40.i.if.then48.i_crit_edge7, %lor.lhs.false38.thread.i, %if.end36.thread98.i
  %val.197.i = phi i32 [ %or30.i, %lor.lhs.false40.i.if.then48.i_crit_edge ], [ %or3599.i, %if.end36.thread98.i ], [ %or35.i, %lor.lhs.false38.thread.i ], [ %or30.i, %lor.lhs.false40.i.if.then48.i_crit_edge5 ], [ %or30.i, %lor.lhs.false40.i.if.then48.i_crit_edge6 ], [ %or30.i, %lor.lhs.false40.i.if.then48.i_crit_edge7 ]
  %or49.i = or i32 %val.197.i, 524288
  br label %imx6_set_lpm.exit

if.else50.i:                                      ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #10
  %or51.i = or i32 %3, 2099010
  br label %imx6_set_lpm.exit

imx6_set_lpm.exit:                                ; preds = %if.else50.i, %if.then48.i
  %val.2.ph.i = phi i32 [ %or51.i, %if.else50.i ], [ %or49.i, %if.then48.i ]
  tail call void @imx_gpc_hwirq_unmask(i32 noundef 0) #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %val.2.ph.i) #8
  %8 = load ptr, ptr @ccm_base, align 4
  %add.ptr55.c.i = getelementptr i8, ptr %8, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.c.i, i32 %7) #8, !srcloc !150
  tail call void @imx_gpc_hwirq_mask(i32 noundef 0) #8
  %9 = load ptr, ptr @imx6_suspend_in_ocram_fn, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %imx6_set_lpm.exit
  call void @__sanitizer_cov_trace_pc() #10
  %10 = tail call i32 @llvm.read_register.i32(metadata !139) #8
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %_do_idle.i = getelementptr inbounds %struct.processor, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %_do_idle.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_do_idle.i, align 4
  %call1.i = tail call i32 %17() #8
  br label %while.body.preheader

if.else.i:                                        ; preds = %imx6_set_lpm.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %18 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %19 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %19, i32 4608) #8, !srcloc !155
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 0", "r,r,Ir,~{cc}"(i32 0, i32 %19, i32 9216) #8, !srcloc !156
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 0", "r,r,Ir,~{cc}"(i32 0, i32 %19, i32 18432) #8, !srcloc !157
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %18, i32 2097152) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %20 = load ptr, ptr @suspend_ocram_base, align 4
  %vbase.i = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %20, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vbase.i, align 4
  %tobool2.not.i = icmp eq ptr %22, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.else.i.if.end.i_crit_edge

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %23() #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.else.i.if.end.i_crit_edge
  %24 = load ptr, ptr @imx6_suspend_in_ocram_fn, align 4
  %25 = load ptr, ptr @suspend_ocram_base, align 4
  tail call void %24(ptr noundef %25) #8
  br label %while.body.preheader

while.body.preheader:                             ; preds = %if.end.i, %if.then.i
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %__ms.04 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 1000, %while.body.preheader ]
  %dec = add nsw i32 %__ms.04, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #8
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gic_cpu_if_down(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx6q_suspend_finish(i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @imx6_suspend_in_ocram_fn, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = tail call i32 @llvm.read_register.i32(metadata !139) #8
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %_do_idle = getelementptr inbounds %struct.processor, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %_do_idle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_do_idle, align 4
  %call1 = tail call i32 %8() #8
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %9 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2) to i32))
  %10 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %10, i32 4608) #8, !srcloc !155
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c6, 0", "r,r,Ir,~{cc}"(i32 0, i32 %10, i32 9216) #8, !srcloc !156
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c5, 0", "r,r,Ir,~{cc}"(i32 0, i32 %10, i32 18432) #8, !srcloc !157
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %9, i32 2097152) #8, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  %11 = load ptr, ptr @suspend_ocram_base, align 4
  %vbase = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %11, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vbase, align 4
  %tobool2.not = icmp eq ptr %13, null
  br i1 %tobool2.not, label %if.then3, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %14() #8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else.if.end_crit_edge
  %15 = load ptr, ptr @imx6_suspend_in_ocram_fn, align 4
  %16 = load ptr, ptr @suspend_ocram_base, align 4
  tail call void %15(ptr noundef %16) #8
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx6q_suspend_init(ptr noundef readonly %socdata) unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @suspend_set_ops(ptr noundef nonnull @imx6q_pm_ops) #8
  %tobool.not = icmp eq ptr %socdata, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.11) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @of_find_device_by_node(ptr noundef nonnull %call1) #8
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10) #11
  br label %put_node

if.end18:                                         ; preds = %if.end9
  %dev = getelementptr inbounds %struct.platform_device, ptr %call10, i32 0, i32 3
  %call19 = tail call ptr @gen_pool_get(ptr noundef %dev, ptr noundef null) #8
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %do.end24, label %if.end27

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.10) #11
  br label %put_device

if.end27:                                         ; preds = %if.end18
  %algo.i = getelementptr inbounds %struct.gen_pool, ptr %call19, i32 0, i32 3
  %0 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo.i, align 4
  %data.i = getelementptr inbounds %struct.gen_pool, ptr %call19, i32 0, i32 4
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %call.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %call19, i32 noundef 4096, ptr noundef %1, ptr noundef %3, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool29.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool29.not, label %do.end33, label %if.end36

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.10) #11
  br label %put_device

if.end36:                                         ; preds = %if.end27
  %call37 = tail call i32 @gen_pool_virt_to_phys(ptr noundef nonnull %call19, i32 noundef %call.i.i) #8
  %call38 = tail call ptr @__arm_ioremap_exec(i32 noundef %call37, i32 noundef 4096, i1 noundef zeroext false) #8
  store ptr %call38, ptr @suspend_ocram_base, align 4
  %4 = getelementptr inbounds i8, ptr %call38, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 332)
  %6 = ptrtoint ptr %call38 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call37, ptr %call38, align 8
  %call40 = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @v7_cpu_resume to i32)) #8
  %resume_addr = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %call38, i32 0, i32 1
  %7 = ptrtoint ptr %resume_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call40, ptr %resume_addr, align 4
  %pm_info_size = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %call38, i32 0, i32 3
  %8 = ptrtoint ptr %pm_info_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 336, ptr %pm_info_size, align 4
  %9 = load ptr, ptr @ccm_base, align 4
  %vbase = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %call38, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %vbase to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %vbase, align 4
  %mmdc_base = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %call38, i32 0, i32 4
  %mmdc_compat = getelementptr inbounds %struct.imx6_pm_socdata, ptr %socdata, i32 0, i32 1
  %11 = ptrtoint ptr %mmdc_compat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmdc_compat, align 4
  %call41 = tail call fastcc i32 @imx6_pm_get_base(ptr noundef %mmdc_base, ptr noundef %12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end49, label %do.end46

do.end46:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.10, i32 noundef %call41) #11
  br label %put_device

if.end49:                                         ; preds = %if.end36
  %src_base = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %call38, i32 0, i32 5
  %src_compat = getelementptr inbounds %struct.imx6_pm_socdata, ptr %socdata, i32 0, i32 2
  %13 = ptrtoint ptr %src_compat to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %src_compat, align 4
  %call50 = tail call fastcc i32 @imx6_pm_get_base(ptr noundef %src_base, ptr noundef %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end58, label %do.end55

do.end55:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.10, i32 noundef %call50) #11
  br label %src_map_failed

if.end58:                                         ; preds = %if.end49
  %iomuxc_base = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %call38, i32 0, i32 6
  %iomuxc_compat = getelementptr inbounds %struct.imx6_pm_socdata, ptr %socdata, i32 0, i32 3
  %15 = ptrtoint ptr %iomuxc_compat to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iomuxc_compat, align 4
  %call59 = tail call fastcc i32 @imx6_pm_get_base(ptr noundef %iomuxc_base, ptr noundef %16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end67, label %do.end64

do.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.10, i32 noundef %call59) #11
  br label %iomuxc_map_failed

if.end67:                                         ; preds = %if.end58
  %gpc_base = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %call38, i32 0, i32 8
  %gpc_compat = getelementptr inbounds %struct.imx6_pm_socdata, ptr %socdata, i32 0, i32 4
  %17 = ptrtoint ptr %gpc_compat to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gpc_compat, align 4
  %call68 = tail call fastcc i32 @imx6_pm_get_base(ptr noundef %gpc_base, ptr noundef %18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end76, label %do.end73

do.end73:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.10, i32 noundef %call68) #11
  br label %gpc_map_failed

if.end76:                                         ; preds = %if.end67
  %pl310_compat = getelementptr inbounds %struct.imx6_pm_socdata, ptr %socdata, i32 0, i32 5
  %19 = ptrtoint ptr %pl310_compat to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pl310_compat, align 4
  %tobool77.not = icmp eq ptr %20, null
  br i1 %tobool77.not, label %if.end76.if.end89_crit_edge, label %if.then78

if.end76.if.end89_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then78:                                        ; preds = %if.end76
  %l2_base = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %call38, i32 0, i32 9
  %call80 = tail call fastcc i32 @imx6_pm_get_base(ptr noundef %l2_base, ptr noundef nonnull %20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then78.if.end89_crit_edge, label %do.end85

if.then78.if.end89_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

do.end85:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.10, i32 noundef %call80) #11
  %vbase130 = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %call38, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %vbase130 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vbase130, align 4
  tail call void @iounmap(ptr noundef %22) #8
  br label %gpc_map_failed

if.end89:                                         ; preds = %if.then78.if.end89_crit_edge, %if.end76.if.end89_crit_edge
  %call90 = tail call i32 @imx_mmdc_get_ddr_type() #8
  %ddr_type = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %call38, i32 0, i32 2
  %23 = ptrtoint ptr %ddr_type to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call90, ptr %ddr_type, align 8
  %mmdc_io_num = getelementptr inbounds %struct.imx6_pm_socdata, ptr %socdata, i32 0, i32 6
  %24 = ptrtoint ptr %mmdc_io_num to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mmdc_io_num, align 4
  %mmdc_io_num91 = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %call38, i32 0, i32 10
  %26 = ptrtoint ptr %mmdc_io_num91 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %mmdc_io_num91, align 8
  %mmdc_io_offset = getelementptr inbounds %struct.imx6_pm_socdata, ptr %socdata, i32 0, i32 7
  %27 = ptrtoint ptr %mmdc_io_offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmdc_io_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp198.not = icmp eq i32 %25, 0
  br i1 %cmp198.not, label %if.end89.for.end_crit_edge, label %for.body.lr.ph

if.end89.for.end_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end89
  %vbase96 = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %call38, i32 0, i32 6, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0199 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %28, i32 %i.0199
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %arrayidx93 = getelementptr %struct.imx6_cpu_pm_info, ptr %call38, i32 0, i32 11, i32 %i.0199
  %31 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx93, align 4
  %32 = ptrtoint ptr %vbase96 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vbase96, align 4
  %34 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %33, i32 %34
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !149
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %arrayidx102 = getelementptr %struct.imx6_cpu_pm_info, ptr %call38, i32 0, i32 11, i32 %i.0199, i32 1
  %37 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx102, align 4
  %inc = add nuw i32 %i.0199, 1
  %38 = ptrtoint ptr %mmdc_io_num91 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mmdc_io_num91, align 8
  %cmp = icmp ult i32 %inc, %39
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end89.for.end_crit_edge
  %40 = tail call i32 asm "", "=r,0"(ptr nonnull @imx6_suspend) #13, !srcloc !161
  %41 = load ptr, ptr @suspend_ocram_base, align 4
  %add.ptr104 = getelementptr i8, ptr %41, i32 336
  %42 = ptrtoint ptr %add.ptr104 to i32
  %and = and i32 %42, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool105.not = icmp ne i32 %and, 0
  %and107 = and i32 %40, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108 = icmp ne i32 %and107, 0
  %43 = select i1 %tobool105.not, i1 true, i1 %tobool108
  br i1 %43, label %do.body112, label %do.end120, !prof !152

do.body112:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-imx/pm-imx6.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 573, 0\0A.popsection", ""() #8, !srcloc !162
  unreachable

do.end120:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %and122 = and i32 %40, -2
  %44 = inttoptr i32 %and122 to ptr
  %45 = call ptr @memcpy(ptr %add.ptr104, ptr %44, i32 3760)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %add125 = add i32 %42, 3760
  tail call void %46(i32 noundef %42, i32 noundef %add125) #8
  %47 = load ptr, ptr @suspend_ocram_base, align 4
  %add.ptr126 = getelementptr i8, ptr %47, i32 336
  %48 = ptrtoint ptr %add.ptr126 to i32
  %and127 = and i32 %40, 1
  %or = or i32 %and127, %48
  %49 = tail call ptr asm "", "=r,0"(i32 %or) #13, !srcloc !163
  store ptr %49, ptr @imx6_suspend_in_ocram_fn, align 4
  tail call void @__arm_iomem_set_ro(ptr noundef %47, i32 noundef 4096) #8
  br label %put_device

gpc_map_failed:                                   ; preds = %do.end85, %do.end73
  %ret.1 = phi i32 [ %call68, %do.end73 ], [ %call80, %do.end85 ]
  %vbase132 = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %call38, i32 0, i32 6, i32 1
  %50 = ptrtoint ptr %vbase132 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vbase132, align 4
  tail call void @iounmap(ptr noundef %51) #8
  br label %iomuxc_map_failed

iomuxc_map_failed:                                ; preds = %gpc_map_failed, %do.end64
  %ret.2 = phi i32 [ %call59, %do.end64 ], [ %ret.1, %gpc_map_failed ]
  %vbase134 = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %call38, i32 0, i32 5, i32 1
  %52 = ptrtoint ptr %vbase134 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vbase134, align 4
  tail call void @iounmap(ptr noundef %53) #8
  br label %src_map_failed

src_map_failed:                                   ; preds = %iomuxc_map_failed, %do.end55
  %ret.3 = phi i32 [ %call50, %do.end55 ], [ %ret.2, %iomuxc_map_failed ]
  %vbase136 = getelementptr inbounds %struct.imx6_cpu_pm_info, ptr %call38, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %vbase136 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vbase136, align 4
  tail call void @iounmap(ptr noundef %55) #8
  br label %put_device

put_device:                                       ; preds = %src_map_failed, %do.end120, %do.end46, %do.end33, %do.end24
  %ret.4 = phi i32 [ %call41, %do.end46 ], [ %ret.3, %src_map_failed ], [ 0, %do.end120 ], [ -12, %do.end33 ], [ -19, %do.end24 ]
  tail call void @put_device(ptr noundef %dev) #8
  br label %put_node

put_node:                                         ; preds = %put_device, %do.end15
  %ret.5 = phi i32 [ %ret.4, %put_device ], [ -19, %do.end15 ]
  tail call void @of_node_put(ptr noundef nonnull %call1) #8
  br label %cleanup

cleanup:                                          ; preds = %put_node, %do.end6, %do.end
  %retval.0 = phi i32 [ %ret.5, %put_node ], [ -19, %do.end6 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_set_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_virt_to_phys(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__arm_ioremap_exec(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v7_cpu_resume() #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx6_pm_get_base(ptr nocapture noundef writeonly %base, ptr noundef %compat) unnamed_addr #4 section ".init.text" align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #8
  %0 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %1 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef %compat) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @of_address_to_resource(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %res) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.put_node_crit_edge

if.end.put_node_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_node

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %res, align 4
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %base, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %0, align 4
  %sub.i = sub i32 1, %3
  %add.i = add i32 %sub.i, %6
  %call7 = call ptr @ioremap(i32 noundef %3, i32 noundef %add.i) #8
  %vbase = getelementptr inbounds %struct.imx6_pm_base, ptr %base, i32 0, i32 1
  %7 = ptrtoint ptr %vbase to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7, ptr %vbase, align 4
  %tobool9.not = icmp eq ptr %call7, null
  %spec.select = select i1 %tobool9.not, i32 -12, i32 0
  br label %put_node

put_node:                                         ; preds = %if.end4, %if.end.put_node_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.put_node_crit_edge ], [ %spec.select, %if.end4 ]
  call void @of_node_put(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %put_node, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %put_node ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_mmdc_get_ddr_type() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx6_suspend(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_iomem_set_ro(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx6q_pm_valid(i32 noundef %state) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %state, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %1 = icmp eq i32 %0, 2
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx6q_pm_enter(i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %state, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb8
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr @ccm_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 84
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !149
  %3 = and i32 %2, -1124139009
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__mxc_cpu_type to i32))
  %5 = load i32, ptr @__mxc_cpu_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 96
  %spec.select.v.i = select i1 %cmp.i.i, i32 6, i32 2
  %spec.select.i = or i32 %spec.select.v.i, %4
  %switch.tableidx = add i32 %5, -96
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 12
  br i1 %6, label %switch.lookup, label %sw.bb.imx6_set_lpm.exit_crit_edge

sw.bb.imx6_set_lpm.exit_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx6_set_lpm.exit

switch.lookup:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.imx6q_pm_enter, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %imx6_set_lpm.exit

imx6_set_lpm.exit:                                ; preds = %switch.lookup, %sw.bb.imx6_set_lpm.exit_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 2097152, %sw.bb.imx6_set_lpm.exit_crit_edge ]
  %or19.i = or i32 %spec.select.i, %.sink
  tail call void @imx_gpc_hwirq_unmask(i32 noundef 0) #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %or19.i) #8
  %9 = load ptr, ptr @ccm_base, align 4
  %add.ptr55.c.i = getelementptr i8, ptr %9, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.c.i, i32 %8) #8, !srcloc !150
  tail call void @imx_gpc_hwirq_mask(i32 noundef 0) #8
  %10 = load ptr, ptr @ccm_base, align 4
  %add.ptr.i18 = getelementptr i8, ptr %10, i32 100
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #8, !srcloc !149
  %12 = or i32 %11, 512
  %13 = load ptr, ptr @ccm_base, align 4
  %add.ptr1.i = getelementptr i8, ptr %13, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %12) #8, !srcloc !150
  tail call void @imx_gpc_pre_suspend(i1 noundef zeroext false) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__mxc_cpu_type to i32))
  %14 = load i32, ptr @__mxc_cpu_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %14)
  %cmp.i = icmp eq i32 %14, 96
  br i1 %cmp.i, label %if.then, label %imx6_set_lpm.exit.if.end_crit_edge

imx6_set_lpm.exit.if.end_crit_edge:               ; preds = %imx6_set_lpm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %imx6_set_lpm.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @imx6sl_set_wait_clk(i1 noundef zeroext true) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %imx6_set_lpm.exit.if.end_crit_edge
  %15 = tail call i32 @llvm.read_register.i32(metadata !139) #8
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %_do_idle = getelementptr inbounds %struct.processor, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %_do_idle to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_do_idle, align 4
  %call3 = tail call i32 %22() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__mxc_cpu_type to i32))
  %23 = load i32, ptr @__mxc_cpu_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %23)
  %cmp.i19 = icmp eq i32 %23, 96
  br i1 %cmp.i19, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @imx6sl_set_wait_clk(i1 noundef zeroext false) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  tail call void @imx_gpc_post_resume() #8
  %24 = load ptr, ptr @ccm_base, align 4
  %add.ptr.i20 = getelementptr i8, ptr %24, i32 84
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #8, !srcloc !149
  %26 = and i32 %25, -50331649
  %27 = load ptr, ptr @ccm_base, align 4
  %add.ptr55.c80.i = getelementptr i8, ptr %27, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.c80.i, i32 %26) #8, !srcloc !150
  br label %return

sw.bb8:                                           ; preds = %entry
  %28 = load ptr, ptr @ccm_base, align 4
  %add.ptr.i21 = getelementptr i8, ptr %28, i32 84
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #8, !srcloc !149
  %30 = and i32 %29, -50331649
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__mxc_cpu_type to i32))
  %32 = load i32, ptr @__mxc_cpu_type, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %32, label %lor.lhs.false40.i [
    i32 96, label %if.end36.thread98.i
    i32 98, label %lor.lhs.false38.thread.i
  ]

if.end36.thread98.i:                              ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %or3599.i = or i32 %31, 1862
  br label %if.then48.i

lor.lhs.false38.thread.i:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %or35.i = or i32 %31, 1862
  br label %if.then48.i

lor.lhs.false40.i:                                ; preds = %sw.bb8
  %or30.i = or i32 %31, 1858
  %34 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %32, label %if.else50.i [
    i32 100, label %lor.lhs.false40.i.if.then48.i_crit_edge
    i32 101, label %lor.lhs.false40.i.if.then48.i_crit_edge42
    i32 103, label %lor.lhs.false40.i.if.then48.i_crit_edge43
    i32 107, label %lor.lhs.false40.i.if.then48.i_crit_edge44
  ]

lor.lhs.false40.i.if.then48.i_crit_edge44:        ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48.i

lor.lhs.false40.i.if.then48.i_crit_edge43:        ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48.i

lor.lhs.false40.i.if.then48.i_crit_edge42:        ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48.i

lor.lhs.false40.i.if.then48.i_crit_edge:          ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48.i

if.then48.i:                                      ; preds = %lor.lhs.false40.i.if.then48.i_crit_edge, %lor.lhs.false40.i.if.then48.i_crit_edge42, %lor.lhs.false40.i.if.then48.i_crit_edge43, %lor.lhs.false40.i.if.then48.i_crit_edge44, %lor.lhs.false38.thread.i, %if.end36.thread98.i
  %val.197.i = phi i32 [ %or30.i, %lor.lhs.false40.i.if.then48.i_crit_edge ], [ %or3599.i, %if.end36.thread98.i ], [ %or35.i, %lor.lhs.false38.thread.i ], [ %or30.i, %lor.lhs.false40.i.if.then48.i_crit_edge42 ], [ %or30.i, %lor.lhs.false40.i.if.then48.i_crit_edge43 ], [ %or30.i, %lor.lhs.false40.i.if.then48.i_crit_edge44 ]
  %or49.i = or i32 %val.197.i, 524288
  br label %imx6_set_lpm.exit24

if.else50.i:                                      ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #10
  %or51.i = or i32 %31, 2099010
  br label %imx6_set_lpm.exit24

imx6_set_lpm.exit24:                              ; preds = %if.else50.i, %if.then48.i
  %val.2.ph.i22 = phi i32 [ %or51.i, %if.else50.i ], [ %or49.i, %if.then48.i ]
  tail call void @imx_gpc_hwirq_unmask(i32 noundef 0) #8
  %35 = tail call i32 @llvm.bswap.i32(i32 %val.2.ph.i22) #8
  %36 = load ptr, ptr @ccm_base, align 4
  %add.ptr55.c.i23 = getelementptr i8, ptr %36, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.c.i23, i32 %35) #8, !srcloc !150
  tail call void @imx_gpc_hwirq_mask(i32 noundef 0) #8
  %37 = load ptr, ptr @ccm_base, align 4
  %add.ptr.i25 = getelementptr i8, ptr %37, i32 100
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #8, !srcloc !149
  %39 = and i32 %38, -513
  %40 = load ptr, ptr @ccm_base, align 4
  %add.ptr1.i27 = getelementptr i8, ptr %40, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i27, i32 %39) #8, !srcloc !150
  %41 = load ptr, ptr @ccm_base, align 4
  %add.ptr.i28 = getelementptr i8, ptr %41, i32 84
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #8, !srcloc !149
  %43 = or i32 %42, 256
  %44 = load ptr, ptr @ccm_base, align 4
  %add.ptr1.i30 = getelementptr i8, ptr %44, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i30, i32 %43) #8, !srcloc !150
  %45 = load ptr, ptr @ccm_base, align 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #8, !srcloc !149
  %47 = or i32 %46, 1792
  %48 = load ptr, ptr @ccm_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %47) #8, !srcloc !150
  %49 = load ptr, ptr @imx6_suspend_in_ocram_fn, align 4
  %tobool.not = icmp eq ptr %49, null
  br i1 %tobool.not, label %if.then10, label %imx6_set_lpm.exit24.if.end11_crit_edge

imx6_set_lpm.exit24.if.end11_crit_edge:           ; preds = %imx6_set_lpm.exit24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %imx6_set_lpm.exit24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @imx_gpc_mask_all() #8
  %50 = load ptr, ptr @ccm_base, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #8, !srcloc !149
  %52 = or i32 %51, 8
  %53 = load ptr, ptr @ccm_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %52) #8, !srcloc !150
  %54 = load ptr, ptr @ccm_base, align 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #8, !srcloc !149
  %56 = or i32 %55, 57351
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  tail call void @arm_heavy_mb() #8
  %57 = load ptr, ptr @ccm_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %56) #8, !srcloc !150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 13958620) #8
  tail call void @imx_gpc_restore_all() #8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %imx6_set_lpm.exit24.if.end11_crit_edge
  tail call void @imx_gpc_pre_suspend(i1 noundef zeroext true) #8
  tail call void @imx_anatop_pre_suspend() #8
  %call12 = tail call i32 @cpu_suspend(i32 noundef 0, ptr noundef nonnull @imx6q_suspend_finish) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__mxc_cpu_type to i32))
  %59 = load i32, ptr @__mxc_cpu_type, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %59, label %if.end11.if.end16_crit_edge [
    i32 99, label %if.end11.if.then15_crit_edge
    i32 97, label %if.end11.if.then15_crit_edge45
  ]

if.end11.if.then15_crit_edge45:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

if.end11.if.then15_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then15:                                        ; preds = %if.end11.if.then15_crit_edge, %if.end11.if.then15_crit_edge45
  tail call void @imx_smp_prepare() #8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end11.if.end16_crit_edge
  tail call void @imx_anatop_post_resume() #8
  tail call void @imx_gpc_post_resume() #8
  tail call void @imx_gpc_mask_all() #8
  %61 = load ptr, ptr @ccm_base, align 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #8, !srcloc !149
  %63 = and i32 %62, -9
  %64 = load ptr, ptr @ccm_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %63) #8, !srcloc !150
  %65 = load ptr, ptr @ccm_base, align 4
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #8, !srcloc !149
  %67 = and i32 %66, -57352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  tail call void @arm_heavy_mb() #8
  %68 = load ptr, ptr @ccm_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %67) #8, !srcloc !150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 13958620) #8
  tail call void @imx_gpc_restore_all() #8
  %70 = load ptr, ptr @ccm_base, align 4
  %add.ptr.i35 = getelementptr i8, ptr %70, i32 84
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #8, !srcloc !149
  %72 = and i32 %71, -257
  %73 = load ptr, ptr @ccm_base, align 4
  %add.ptr1.i36 = getelementptr i8, ptr %73, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i36, i32 %72) #8, !srcloc !150
  %74 = load ptr, ptr @ccm_base, align 4
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #8, !srcloc !149
  %76 = and i32 %75, -1793
  %77 = load ptr, ptr @ccm_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %76) #8, !srcloc !150
  %78 = load ptr, ptr @ccm_base, align 4
  %add.ptr.i37 = getelementptr i8, ptr %78, i32 100
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #8, !srcloc !149
  %80 = or i32 %79, 512
  %81 = load ptr, ptr @ccm_base, align 4
  %add.ptr1.i39 = getelementptr i8, ptr %81, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i39, i32 %80) #8, !srcloc !150
  %82 = load ptr, ptr @ccm_base, align 4
  %add.ptr.i40 = getelementptr i8, ptr %82, i32 84
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #8, !srcloc !149
  %84 = and i32 %83, -50331649
  %85 = load ptr, ptr @ccm_base, align 4
  %add.ptr55.c80.i41 = getelementptr i8, ptr %85, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.c80.i41, i32 %84) #8, !srcloc !150
  br label %return

return:                                           ; preds = %if.end16, %if.end6, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %if.end16 ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_gpc_pre_suspend(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx6sl_set_wait_clk(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_gpc_post_resume() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_anatop_pre_suspend() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_smp_prepare() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_anatop_post_resume() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { cold }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137}
!llvm.named.register.sp = !{!139}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 663, i32 32}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 687, i32 44}
!4 = !{ptr @ccm_base, !5, !"ccm_base", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 63, i32 22}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 637, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @imx6_pm_stby_poweroff_probe._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @imx6_pm_stby_poweroff_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 631, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @imx6_pm_stby_poweroff._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @imx6_pm_stby_poweroff._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @imx6_suspend_in_ocram_fn, !18, !"imx6_suspend_in_ocram_fn", i1 false, i1 false}
!18 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 65, i32 15}
!19 = !{ptr @suspend_ocram_base, !20, !"suspend_ocram_base", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 64, i32 22}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 606, i32 4}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @imx6_pm_common_init._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @imx6_pm_common_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 477, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @imx6q_suspend_init._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @imx6q_suspend_init._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 481, i32 45}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 483, i32 3}
!35 = !{ptr @imx6q_suspend_init._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @imx6q_suspend_init._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 489, i32 3}
!39 = !{ptr @imx6q_suspend_init._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @imx6q_suspend_init._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 496, i32 3}
!43 = !{ptr @imx6q_suspend_init._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @imx6q_suspend_init._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 503, i32 3}
!47 = !{ptr @imx6q_suspend_init._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @imx6q_suspend_init._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 527, i32 3}
!51 = !{ptr @imx6q_suspend_init._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @imx6q_suspend_init._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 533, i32 3}
!55 = !{ptr @imx6q_suspend_init._entry.27, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @imx6q_suspend_init._entry_ptr.29, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 539, i32 3}
!59 = !{ptr @imx6q_suspend_init._entry.30, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @imx6q_suspend_init._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 545, i32 3}
!63 = !{ptr @imx6q_suspend_init._entry.33, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @imx6q_suspend_init._entry_ptr.35, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 552, i32 4}
!67 = !{ptr @imx6q_suspend_init._entry.36, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @imx6q_suspend_init._entry_ptr.38, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @imx6q_pm_ops, !70, !"imx6q_pm_ops", i1 false, i1 false}
!70 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 433, i32 42}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 152, i32 17}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 153, i32 16}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 154, i32 19}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 155, i32 16}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 156, i32 18}
!81 = !{ptr @imx6q_pm_data, !82, !"imx6q_pm_data", i1 false, i1 false}
!82 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 151, i32 37}
!83 = !{ptr @imx6q_mmdc_io_offset, !84, !"imx6q_mmdc_io_offset", i1 false, i1 false}
!84 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 97, i32 18}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 164, i32 19}
!87 = !{ptr @imx6dl_pm_data, !88, !"imx6dl_pm_data", i1 false, i1 false}
!88 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 161, i32 37}
!89 = !{ptr @imx6dl_mmdc_io_offset, !90, !"imx6dl_mmdc_io_offset", i1 false, i1 false}
!90 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 109, i32 18}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 172, i32 17}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 173, i32 16}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 174, i32 19}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 175, i32 16}
!99 = !{ptr @imx6sl_pm_data, !100, !"imx6sl_pm_data", i1 false, i1 false}
!100 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 171, i32 37}
!101 = !{ptr @imx6sl_mmdc_io_offset, !102, !"imx6sl_mmdc_io_offset", i1 false, i1 false}
!102 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 121, i32 18}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 182, i32 17}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 183, i32 16}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 184, i32 19}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 185, i32 16}
!111 = !{ptr @imx6sll_pm_data, !112, !"imx6sll_pm_data", i1 false, i1 false}
!112 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 181, i32 37}
!113 = !{ptr @imx6sll_mmdc_io_offset, !114, !"imx6sll_mmdc_io_offset", i1 false, i1 false}
!114 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 129, i32 18}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 192, i32 17}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 193, i32 16}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 194, i32 19}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 195, i32 16}
!123 = !{ptr @imx6sx_pm_data, !124, !"imx6sx_pm_data", i1 false, i1 false}
!124 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 191, i32 37}
!125 = !{ptr @imx6sx_mmdc_io_offset, !126, !"imx6sx_mmdc_io_offset", i1 false, i1 false}
!126 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 136, i32 18}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 202, i32 17}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 203, i32 16}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 204, i32 19}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 205, i32 16}
!135 = !{ptr @imx6ul_pm_data, !136, !"imx6ul_pm_data", i1 false, i1 false}
!136 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 201, i32 37}
!137 = !{ptr @imx6ul_mmdc_io_offset, !138, !"imx6ul_mmdc_io_offset", i1 false, i1 false}
!138 = !{!"../arch/arm/mach-imx/pm-imx6.c", i32 144, i32 18}
!139 = !{!"sp"}
!140 = !{i32 1, !"wchar_size", i32 2}
!141 = !{i32 1, !"min_enum_size", i32 4}
!142 = !{i32 8, !"branch-target-enforcement", i32 0}
!143 = !{i32 8, !"sign-return-address", i32 0}
!144 = !{i32 8, !"sign-return-address-all", i32 0}
!145 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!146 = !{i32 7, !"uwtable", i32 1}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!149 = !{i64 2993873}
!150 = !{i64 2993455}
!151 = !{i64 2155254590}
!152 = !{!"branch_weights", i32 1, i32 2000}
!153 = !{i64 2155286119, i64 2155286611, i64 2155286156, i64 2155286212, i64 2155286246, i64 2155286270, i64 2155286311, i64 2155286332, i64 2155286360, i64 2155286394}
!154 = !{i64 2151990187}
!155 = !{i64 2151981534, i64 2151981547}
!156 = !{i64 2151983812, i64 2151983825}
!157 = !{i64 2151986093, i64 2151986106}
!158 = !{i64 2151990483, i64 2151990496}
!159 = !{i64 2151994354}
!160 = !{i64 2151994439}
!161 = !{i64 2155274922}
!162 = !{i64 2155276315, i64 2155276807, i64 2155276352, i64 2155276408, i64 2155276442, i64 2155276466, i64 2155276507, i64 2155276528, i64 2155276556, i64 2155276590}
!163 = !{i64 2155275417}
