; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/fsl_pq_mdio.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/fsl_pq_mdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.fsl_pq_mdio_data = type { i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.fsl_pq_mdio_priv = type { ptr, ptr }
%struct.fsl_pq_mii = type { i32, i32, i32, i32, i32, i32 }
%struct.gfar = type { i32, i32, [8 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, [28 x i8], i32, i32, i32, i32, [44 x i8], i32, [8 x i8], i32, i32, [96 x i8], i32, i32, i32, i32, i32, i32, [40 x i8], i32, i32, [52 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [64 x i8], i32, i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [192 x i8], i32, i32, [8 x i8], i32, i32, i32, i32, i32, i32, [8 x i8], i32, i32, i32, i32, i32, [56 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [64 x i8], i32, i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [192 x i8], i32, i32, i32, i32, i32, [12 x i8], [24 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [192 x i8], %struct.rmon_mib, i32, [188 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [96 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [352 x i8], i32, [252 x i8], [248 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [36 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], i32, [4 x i8], [556 x i8], i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [208 x i8] }
%struct.rmon_mib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_fsl_pq_mdio__352_537_fsl_pq_mdio_driver_init6 = internal global ptr @fsl_pq_mdio_driver_init, section ".initcall6.init", align 4
@fsl_pq_mdio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fsl_pq_mdio_probe, ptr @fsl_pq_mdio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_pq_mdio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fsl_pq_mdio_driver_exit = internal global ptr @fsl_pq_mdio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file353 = internal constant [60 x i8] c"fsl_pq_mdio.file=drivers/net/ethernet/freescale/fsl_pq_mdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license354 = internal constant [24 x i8] c"fsl_pq_mdio.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsl-pq_mdio\00", [20 x i8] zeroinitializer }, align 32
@fsl_pq_mdio_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,gianfar-tbi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.compoundliteral }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,gianfar-mdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.compoundliteral.32 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] c"mdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"gianfar\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.compoundliteral.33 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,etsec2-tbi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.compoundliteral.34 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,etsec2-mdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.compoundliteral.35 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,fman-mdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.compoundliteral.36 }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@fsl_pq_mdio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 420, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to match device\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl_pq_mdio_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/freescale/fsl_pq_mdio.c\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsl_pq_mdio_probe._entry_ptr = internal global ptr @fsl_pq_mdio_probe._entry, section ".printk_index", align 4
@fsl_pq_mdio_probe.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsl_pq_mdio\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"found %s compatible node\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Freescale PowerQUICC MII Bus\00", [35 x i8] zeroinitializer }, align 32
@fsl_pq_mdio_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 440, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"could not obtain address information\0A\00", [58 x i8] zeroinitializer }, align 32
@fsl_pq_mdio_probe._entry_ptr.11 = internal global ptr @fsl_pq_mdio_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%pOFn@%llx\00", [21 x i8] zeroinitializer }, align 32
@fsl_pq_mdio_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 460, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid register map\0A\00", [42 x i8] zeroinitializer }, align 32
@fsl_pq_mdio_probe._entry_ptr.15 = internal global ptr @fsl_pq_mdio_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tbi-phy\00", [24 x i8] zeroinitializer }, align 32
@fsl_pq_mdio_probe.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.17, i8 0, i8 118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"found TBI PHY node %pOFP\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@fsl_pq_mdio_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 483, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"missing 'reg' property in node %pOF\0A\00", [59 x i8] zeroinitializer }, align 32
@fsl_pq_mdio_probe._entry_ptr.21 = internal global ptr @fsl_pq_mdio_probe._entry.19, section ".printk_index", align 4
@fsl_pq_mdio_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 498, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cannot register %s as MDIO bus\0A\00", [32 x i8] zeroinitializer }, align 32
@fsl_pq_mdio_probe._entry_ptr.24 = internal global ptr @fsl_pq_mdio_probe._entry.22, section ".printk_index", align 4
@fsl_pq_mdio_read.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl_pq_mdio_read\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"read %04x from address %x/%x\0A\00", [34 x i8] zeroinitializer }, align 32
@fsl_pq_mdio_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 186, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"timeout waiting for MII bus\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl_pq_mdio_reset\00", [46 x i8] zeroinitializer }, align 32
@fsl_pq_mdio_reset._entry_ptr = internal global ptr @fsl_pq_mdio_reset._entry, section ".printk_index", align 4
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"device_type\00", [20 x i8] zeroinitializer }, align 32
@set_tbipa._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 398, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"invalid register map (should be at least 0x%04zx to contain TBI address)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"set_tbipa\00", [22 x i8] zeroinitializer }, align 32
@set_tbipa._entry_ptr = internal global ptr @set_tbipa._entry, section ".printk_index", align 4
@.compoundliteral = internal global { %struct.fsl_pq_mdio_data, [20 x i8] } { %struct.fsl_pq_mdio_data { i32 0, ptr @get_gfar_tbipa_from_mii, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.fsl_pq_mdio_data, [20 x i8] } { %struct.fsl_pq_mdio_data { i32 0, ptr @get_gfar_tbipa_from_mii, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { %struct.fsl_pq_mdio_data, [20 x i8] } { %struct.fsl_pq_mdio_data { i32 1312, ptr @get_gfar_tbipa_from_mdio, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.fsl_pq_mdio_data, [20 x i8] } { %struct.fsl_pq_mdio_data { i32 1312, ptr @get_etsec_tbipa, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { %struct.fsl_pq_mdio_data, [20 x i8] } { %struct.fsl_pq_mdio_data { i32 1312, ptr @get_etsec_tbipa, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.fsl_pq_mdio_data, [20 x i8] } zeroinitializer, align 32
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"fsl_pq_mdio_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 528, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 530, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"fsl_pq_mdio_match\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 303, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 420, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 426, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 433, i32 18 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 440, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 444, i32 41 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 460, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 471, i32 29 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 472, i32 5 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 479, i32 43 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 481, i32 5 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 497, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 157, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 186, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 901, i32 29 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [48 x i8] c"../drivers/net/ethernet/freescale/fsl_pq_mdio.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 397, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_file353, ptr @__UNIQUE_ID_license354, ptr @__exitcall_fsl_pq_mdio_driver_exit, ptr @__initcall__kmod_fsl_pq_mdio__352_537_fsl_pq_mdio_driver_init6, ptr @fsl_pq_mdio_driver_exit, ptr @fsl_pq_mdio_probe._entry, ptr @fsl_pq_mdio_probe._entry.13, ptr @fsl_pq_mdio_probe._entry.19, ptr @fsl_pq_mdio_probe._entry.22, ptr @fsl_pq_mdio_probe._entry.9, ptr @fsl_pq_mdio_probe._entry_ptr, ptr @fsl_pq_mdio_probe._entry_ptr.11, ptr @fsl_pq_mdio_probe._entry_ptr.15, ptr @fsl_pq_mdio_probe._entry_ptr.21, ptr @fsl_pq_mdio_probe._entry_ptr.24, ptr @fsl_pq_mdio_reset._entry, ptr @fsl_pq_mdio_reset._entry_ptr, ptr @set_tbipa._entry, ptr @set_tbipa._entry_ptr, ptr @fsl_pq_mdio_driver, ptr @.str, ptr @fsl_pq_mdio_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.compoundliteral, ptr @.compoundliteral.32, ptr @.compoundliteral.33, ptr @.compoundliteral.34, ptr @.compoundliteral.35, ptr @.compoundliteral.36], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_pq_mdio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_pq_mdio_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_pq_mdio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_pq_mdio_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_pq_mdio_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_pq_mdio_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_pq_mdio_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_pq_mdio_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_tbipa._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_pq_mdio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_pq_mdio_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsl_pq_mdio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_pq_mdio_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_pq_mdio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @fsl_pq_mdio_match, ptr noundef %dev) #8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #8
  %2 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %tobool.not = icmp eq ptr %call, null
  %3 = call ptr @memset(ptr %res, i32 255, i32 32)
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup105

if.end:                                           ; preds = %entry
  %data3 = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_pq_mdio_probe.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_pq_mdio_probe, %if.then9)) #8
          to label %do.end13 [label %if.then9], !srcloc !76

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %compatible = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_pq_mdio_probe.__UNIQUE_ID_ddebug350, ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %compatible) #8
  br label %do.end13

do.end13:                                         ; preds = %if.then9, %if.end
  %call14 = tail call ptr @mdiobus_alloc_size(i32 noundef 8) #8
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end13.cleanup105_crit_edge, label %if.end17

do.end13.cleanup105_crit_edge:                    ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup105

if.end17:                                         ; preds = %do.end13
  %priv18 = getelementptr inbounds %struct.mii_bus, ptr %call14, i32 0, i32 3
  %6 = ptrtoint ptr %priv18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv18, align 8
  %name = getelementptr inbounds %struct.mii_bus, ptr %call14, i32 0, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.8, ptr %name, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %call14, i32 0, i32 4
  %9 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @fsl_pq_mdio_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %call14, i32 0, i32 5
  %10 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @fsl_pq_mdio_write, ptr %write, align 8
  %reset = getelementptr inbounds %struct.mii_bus, ptr %call14, i32 0, i32 6
  %11 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @fsl_pq_mdio_reset, ptr %reset, align 4
  %call19 = call i32 @of_address_to_resource(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %res) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %do.end23, label %if.end25

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #11
  br label %error

if.end25:                                         ; preds = %if.end17
  %id26 = getelementptr inbounds %struct.mii_bus, ptr %call14, i32 0, i32 2
  %12 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %res, align 4
  %conv = zext i32 %13 to i64
  %call28 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id26, i32 noundef 61, ptr noundef nonnull @.str.12, ptr noundef %1, i64 noundef %conv)
  %call29 = call ptr @of_iomap(ptr noundef %1, i32 noundef 0) #8
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call29, ptr %7, align 4
  %tobool31.not = icmp eq ptr %call29, null
  br i1 %tobool31.not, label %if.end25.if.end104_crit_edge, label %if.end33

if.end25.if.end104_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

if.end33:                                         ; preds = %if.end25
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %5, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %2, align 4
  %19 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %res, align 4
  %sub.i = add i32 %18, 1
  %add.i = sub i32 %sub.i, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add.i)
  %cmp35 = icmp ugt i32 %16, %add.i
  br i1 %cmp35, label %do.end40, label %if.end42

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #11
  br label %error

if.end42:                                         ; preds = %if.end33
  %add.ptr = getelementptr i8, ptr %call29, i32 %16
  %regs = getelementptr inbounds %struct.fsl_pq_mdio_priv, ptr %7, i32 0, i32 1
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr, ptr %regs, align 4
  %parent = getelementptr inbounds %struct.mii_bus, ptr %call14, i32 0, i32 9
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %parent, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call14, ptr %driver_data.i.i, align 4
  %get_tbipa = getelementptr inbounds %struct.fsl_pq_mdio_data, ptr %5, i32 0, i32 1
  %24 = ptrtoint ptr %get_tbipa to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_tbipa, align 4
  %tobool46.not = icmp eq ptr %25, null
  br i1 %tobool46.not, label %if.end42.if.end85_crit_edge, label %if.then47

if.end42.if.end85_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then47:                                        ; preds = %if.end42
  %call48 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #8
  %cmp49.not180 = icmp eq ptr %call48, null
  br i1 %cmp49.not180, label %if.then47.if.end85_crit_edge, label %if.then47.for.body_crit_edge

if.then47.for.body_crit_edge:                     ; preds = %if.then47
  br label %for.body

if.then47.if.end85_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then47.for.body_crit_edge
  %tbi.0181 = phi ptr [ %call71, %for.inc.for.body_crit_edge ], [ %call48, %if.then47.for.body_crit_edge ]
  %call.i.i = call ptr @of_get_property(ptr noundef nonnull %tbi.0181, ptr noundef nonnull @.str.29, ptr noundef null) #8
  %tobool1.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool1.not.i, label %for.body.for.inc_crit_edge, label %of_node_is_type.exit

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

of_node_is_type.exit:                             ; preds = %for.body
  %call4.i = call i32 @strcmp(ptr noundef nonnull %call.i.i, ptr noundef nonnull dereferenceable(8) @.str.16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %do.body53, label %of_node_is_type.exit.for.inc_crit_edge

of_node_is_type.exit.for.inc_crit_edge:           ; preds = %of_node_is_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body53:                                        ; preds = %of_node_is_type.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_pq_mdio_probe.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_pq_mdio_probe, %if.then65)) #8
          to label %if.then73 [label %if.then65], !srcloc !76

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_pq_mdio_probe.__UNIQUE_ID_ddebug351, ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull %tbi.0181) #8
  br label %if.then73

for.inc:                                          ; preds = %of_node_is_type.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call71 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %tbi.0181) #8
  %cmp49.not = icmp eq ptr %call71, null
  br i1 %cmp49.not, label %for.inc.if.end85_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end85_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then73:                                        ; preds = %if.then65, %do.body53
  %call74 = call ptr @of_get_property(ptr noundef nonnull %tbi.0181, ptr noundef nonnull @.str.18, ptr noundef null) #8
  %tobool75.not = icmp eq ptr %call74, null
  br i1 %tobool75.not, label %cleanup, label %if.end81

if.end81:                                         ; preds = %if.then73
  %26 = ptrtoint ptr %call74 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call74, align 4
  %28 = ptrtoint ptr %get_tbipa to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %get_tbipa, align 4
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %7, align 4
  %32 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node, align 8
  %call.i = call ptr @of_iomap(ptr noundef %33, i32 noundef 1) #8
  %tobool.not.i168 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i168, label %if.else.i, label %if.end81.do.body7.i_crit_edge

if.end81.do.body7.i_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7.i

if.else.i:                                        ; preds = %if.end81
  %call1.i = call ptr %29(ptr noundef %31) #8
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %2, align 4
  %36 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %res, align 4
  %sub.i.i = add i32 %35, 1
  %add.i.i = sub i32 %sub.i.i, %37
  %add.ptr.i = getelementptr i8, ptr %31, i32 %add.i.i
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 -4
  %cmp.i = icmp ugt ptr %call1.i, %add.ptr3.i
  br i1 %cmp.i, label %do.end.i, label %if.else.i.do.body7.i_crit_edge

if.else.i.do.body7.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7.i

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call1.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i = sub i32 4, %sub.ptr.rhs.cast.i
  %add.i169 = add i32 %sub.ptr.sub.i, %sub.ptr.lhs.cast.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %add.i169) #11
  br label %do.body7.i

do.body7.i:                                       ; preds = %do.end.i, %if.else.i.do.body7.i_crit_edge, %if.end81.do.body7.i_crit_edge
  %tbipa.0.i = phi ptr [ %call1.i, %do.end.i ], [ %call1.i, %if.else.i.do.body7.i_crit_edge ], [ %call.i, %if.end81.do.body7.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tbipa.0.i, i32 %27) #8, !srcloc !78
  br i1 %tobool.not.i168, label %do.body7.i.if.end85_crit_edge, label %if.then11.i

do.body7.i.if.end85_crit_edge:                    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then11.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @iounmap(ptr noundef %tbipa.0.i) #8
  br label %if.end85

cleanup:                                          ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull %tbi.0181) #11
  br label %error

if.end85:                                         ; preds = %if.then11.i, %do.body7.i.if.end85_crit_edge, %for.inc.if.end85_crit_edge, %if.then47.if.end85_crit_edge, %if.end42.if.end85_crit_edge
  %ucc_configure = getelementptr inbounds %struct.fsl_pq_mdio_data, ptr %5, i32 0, i32 2
  %38 = ptrtoint ptr %ucc_configure to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ucc_configure, align 4
  %tobool86.not = icmp eq ptr %39, null
  br i1 %tobool86.not, label %if.end85.if.end90_crit_edge, label %if.then87

if.end85.if.end90_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then87:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %res, align 4
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %2, align 4
  call void %39(i32 noundef %41, i32 noundef %43) #8
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %if.end85.if.end90_crit_edge
  %call91 = call i32 @of_mdiobus_register(ptr noundef nonnull %call14, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end90.cleanup105_crit_edge, label %do.end96

if.end90.cleanup105_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup105

do.end96:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef %45) #11
  br label %error

error:                                            ; preds = %do.end96, %cleanup, %do.end40, %do.end23
  %err.1.ph = phi i32 [ %call91, %do.end96 ], [ -16, %cleanup ], [ -22, %do.end40 ], [ %call19, %do.end23 ]
  %46 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr = load ptr, ptr %7, align 4
  %tobool101.not = icmp eq ptr %.pr, null
  br i1 %tobool101.not, label %error.if.end104_crit_edge, label %if.then102

error.if.end104_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

if.then102:                                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #10
  call void @iounmap(ptr noundef nonnull %.pr) #8
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %error.if.end104_crit_edge, %if.end25.if.end104_crit_edge
  %err.1177 = phi i32 [ %err.1.ph, %if.then102 ], [ %err.1.ph, %error.if.end104_crit_edge ], [ -12, %if.end25.if.end104_crit_edge ]
  call void @kfree(ptr noundef nonnull %call14) #8
  br label %cleanup105

cleanup105:                                       ; preds = %if.end104, %if.end90.cleanup105_crit_edge, %do.end13.cleanup105_crit_edge, %do.end
  %retval.0 = phi i32 [ %err.1177, %if.end104 ], [ -19, %do.end ], [ -12, %do.end13.cleanup105_crit_edge ], [ 0, %if.end90.cleanup105_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_pq_mdio_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  tail call void @mdiobus_unregister(ptr noundef %1) #8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @iounmap(ptr noundef %5) #8
  tail call void @mdiobus_free(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_pq_mdio_read(ptr noundef %bus, i32 noundef %mii_id, i32 noundef %regnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %regs2 = getelementptr inbounds %struct.fsl_pq_mdio_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  %shl = shl i32 %mii_id, 8
  %or = or i32 %shl, %regnum
  %miimadd = getelementptr inbounds %struct.fsl_pq_mii, ptr %3, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %miimadd, i32 %or) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void @arm_heavy_mb() #8
  %miimcom = getelementptr inbounds %struct.fsl_pq_mii, ptr %3, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %miimcom, i32 0) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %miimcom, i32 1) #8, !srcloc !78
  %miimind = getelementptr inbounds %struct.fsl_pq_mii, ptr %3, i32 0, i32 5
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %miimind) #8, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  %and50 = and i32 %4, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool.not51 = icmp eq i32 %and50, 0
  br i1 %tobool.not51, label %entry.if.end_crit_edge, label %entry.do.end15_crit_edge

entry.do.end15_crit_edge:                         ; preds = %entry
  br label %do.end15

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end15:                                         ; preds = %do.end15.do.end15_crit_edge, %entry.do.end15_crit_edge
  %timeout.052 = phi i32 [ %dec, %do.end15.do.end15_crit_edge ], [ 1000, %entry.do.end15_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !84
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !85
  %dec = add nsw i32 %timeout.052, -1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %miimind) #8, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  %and = and i32 %5, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool10.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %while.end, label %do.end15.do.end15_crit_edge

do.end15.do.end15_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

while.end:                                        ; preds = %do.end15
  br i1 %tobool10.not, label %while.end.cleanup_crit_edge, label %while.end.if.end_crit_edge

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %while.end.if.end_crit_edge, %entry.if.end_crit_edge
  %miimstat = getelementptr inbounds %struct.fsl_pq_mii, ptr %3, i32 0, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %miimstat) #8, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_pq_mdio_read.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_pq_mdio_read, %if.then30)) #8
          to label %do.end34 [label %if.then30], !srcloc !76

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  %conv31 = and i32 %6, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_pq_mdio_read.__UNIQUE_ID_ddebug349, ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %conv31, i32 noundef %mii_id, i32 noundef %regnum) #8
  br label %do.end34

do.end34:                                         ; preds = %if.then30, %if.end
  %conv35 = and i32 %6, 65535
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv35, %do.end34 ], [ -110, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_pq_mdio_write(ptr nocapture noundef readonly %bus, i32 noundef %mii_id, i32 noundef %regnum, i16 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %regs2 = getelementptr inbounds %struct.fsl_pq_mdio_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @arm_heavy_mb() #8
  %shl = shl i32 %mii_id, 8
  %or = or i32 %shl, %regnum
  %miimadd = getelementptr inbounds %struct.fsl_pq_mii, ptr %3, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %miimadd, i32 %or) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %conv = zext i16 %value to i32
  %miimcon = getelementptr inbounds %struct.fsl_pq_mii, ptr %3, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %miimcon, i32 %conv) #8, !srcloc !78
  %miimind = getelementptr inbounds %struct.fsl_pq_mii, ptr %3, i32 0, i32 5
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %miimind) #8, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %and21 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool.not22 = icmp eq i32 %and21, 0
  br i1 %tobool.not22, label %entry.while.end_crit_edge, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  br label %do.end11

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end11:                                         ; preds = %do.end11.do.end11_crit_edge, %entry.do.end11_crit_edge
  %timeout.023 = phi i32 [ %dec, %do.end11.do.end11_crit_edge ], [ 1000, %entry.do.end11_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !91
  %dec = add nsw i32 %timeout.023, -1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %miimind) #8, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool6.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %while.end.loopexit, label %do.end11.do.end11_crit_edge

do.end11.do.end11_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

while.end.loopexit:                               ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  %phi.sel = select i1 %tobool6.not, i32 -110, i32 0
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry.while.end_crit_edge
  %tobool6.not.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %phi.sel, %while.end.loopexit ]
  ret i32 %tobool6.not.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_pq_mdio_reset(ptr noundef %bus) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %regs2 = getelementptr inbounds %struct.fsl_pq_mdio_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs2, align 4
  %mdio_lock = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock, i32 noundef 0) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 -2147483648) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 7) #8, !srcloc !78
  %miimind = getelementptr inbounds %struct.fsl_pq_mii, ptr %3, i32 0, i32 5
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %miimind) #8, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  %and31 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool.not32 = icmp eq i32 %and31, 0
  br i1 %tobool.not32, label %cleanup.critedge, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  br label %do.end12

do.end12:                                         ; preds = %do.end12.do.end12_crit_edge, %entry.do.end12_crit_edge
  %timeout.033 = phi i32 [ %dec, %do.end12.do.end12_crit_edge ], [ 1000, %entry.do.end12_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !96
  %dec = add nsw i32 %timeout.033, -1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %miimind) #8, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool7.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %while.end, label %do.end12.do.end12_crit_edge

do.end12.do.end12_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

while.end:                                        ; preds = %do.end12
  tail call void @mutex_unlock(ptr noundef %mdio_lock) #8
  br i1 %tobool7.not, label %do.end21, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end21:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #11
  br label %cleanup

cleanup.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %mdio_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %do.end21, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end21 ], [ 0, %while.end.cleanup_crit_edge ], [ 0, %cleanup.critedge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @get_gfar_tbipa_from_mii(ptr noundef readnone %p) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tbipa.i = getelementptr i8, ptr %p, i32 -1264
  ret ptr %tbipa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @get_gfar_tbipa_from_mdio(ptr noundef readnone %p) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tbipa = getelementptr inbounds %struct.gfar, ptr %p, i32 0, i32 11
  ret ptr %tbipa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @get_etsec_tbipa(ptr noundef readnone returned %p) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr %p
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !62, !63, !64, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_fsl_pq_mdio__352_537_fsl_pq_mdio_driver_init6, !1, !"__initcall__kmod_fsl_pq_mdio__352_537_fsl_pq_mdio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/freescale/fsl_pq_mdio.c", i32 537, i32 1}
!2 = !{ptr @__exitcall_fsl_pq_mdio_driver_exit, !1, !"__exitcall_fsl_pq_mdio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file353, !4, !"__UNIQUE_ID_file353", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/freescale/fsl_pq_mdio.c", i32 539, i32 1}
!5 = !{ptr @__UNIQUE_ID_license354, !4, !"__UNIQUE_ID_license354", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/freescale/fsl_pq_mdio.c", i32 530, i32 11}
!8 = !{ptr @fsl_pq_mdio_driver, !9, !"fsl_pq_mdio_driver", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/freescale/fsl_pq_mdio.c", i32 528, i32 31}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/freescale/fsl_pq_mdio.c", i32 420, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @fsl_pq_mdio_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @fsl_pq_mdio_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/freescale/fsl_pq_mdio.c", i32 426, i32 2}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @fsl_pq_mdio_probe.__UNIQUE_ID_ddebug350, !19, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/freescale/fsl_pq_mdio.c", i32 433, i32 18}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/freescale/fsl_pq_mdio.c", i32 440, i32 3}
!26 = !{ptr @fsl_pq_mdio_probe._entry.9, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @fsl_pq_mdio_probe._entry_ptr.11, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/freescale/fsl_pq_mdio.c", i32 444, i32 41}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/freescale/fsl_pq_mdio.c", i32 460, i32 3}
!32 = !{ptr @fsl_pq_mdio_probe._entry.13, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @fsl_pq_mdio_probe._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/freescale/fsl_pq_mdio.c", i32 471, i32 29}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/freescale/fsl_pq_mdio.c", i32 472, i32 5}
!38 = !{ptr @fsl_pq_mdio_probe.__UNIQUE_ID_ddebug351, !37, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/freescale/fsl_pq_mdio.c", i32 479, i32 43}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/freescale/fsl_pq_mdio.c", i32 481, i32 5}
!43 = !{ptr @fsl_pq_mdio_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @fsl_pq_mdio_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/freescale/fsl_pq_mdio.c", i32 497, i32 3}
!47 = !{ptr @fsl_pq_mdio_probe._entry.22, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @fsl_pq_mdio_probe._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/freescale/fsl_pq_mdio.c", i32 157, i32 2}
!51 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @fsl_pq_mdio_read.__UNIQUE_ID_ddebug349, !50, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/freescale/fsl_pq_mdio.c", i32 186, i32 3}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @fsl_pq_mdio_reset._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @fsl_pq_mdio_reset._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/of.h", i32 901, i32 29}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/freescale/fsl_pq_mdio.c", i32 397, i32 4}
!62 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @set_tbipa._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @set_tbipa._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @fsl_pq_mdio_match, !66, !"fsl_pq_mdio_match", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/freescale/fsl_pq_mdio.c", i32 303, i32 34}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i64 2148703566, i64 2148703571, i64 2148703584, i64 2148703628, i64 2148703662, i64 2148703683}
!77 = !{i64 2156651973}
!78 = !{i64 6457918}
!79 = !{i64 2156634499}
!80 = !{i64 2156634814}
!81 = !{i64 2156635128}
!82 = !{i64 6458336}
!83 = !{i64 2156635494}
!84 = !{i64 2156635791}
!85 = !{i64 2156635633}
!86 = !{i64 2156636091}
!87 = !{i64 2156633272}
!88 = !{i64 2156633591}
!89 = !{i64 2156633952}
!90 = !{i64 2156634238}
!91 = !{i64 2156634080}
!92 = !{i64 2156638807}
!93 = !{i64 2156639130}
!94 = !{i64 2156639496}
!95 = !{i64 2156639782}
!96 = !{i64 2156639624}
