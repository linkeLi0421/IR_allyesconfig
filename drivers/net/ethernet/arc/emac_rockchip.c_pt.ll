; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/arc/emac_rockchip.c_pt.bc'
source_filename = "../drivers/net/ethernet/arc/emac_rockchip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.emac_rockchip_soc_data = type { i32, i32, i32, i8 }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.109, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.126, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.109 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.126 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.rockchip_priv_data = type { %struct.arc_emac_priv, ptr, ptr, ptr, ptr, ptr }
%struct.arc_emac_priv = type { ptr, ptr, ptr, ptr, %struct.arc_emac_mdio_bus_data, ptr, ptr, %struct.napi_struct, ptr, ptr, i32, i32, [128 x %struct.buffer_state], [128 x %struct.buffer_state], i32, i32, i32, i32, i32, i32, i32 }
%struct.arc_emac_mdio_bus_data = type { ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.buffer_state = type { ptr, i32, i32 }

@__initcall__kmod_emac_rockchip__379_276_emac_rockchip_driver_init6 = internal global ptr @emac_rockchip_driver_init, section ".initcall6.init", align 4
@emac_rockchip_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @emac_rockchip_probe, ptr @emac_rockchip_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @emac_rockchip_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_emac_rockchip_driver_exit = internal global ptr @emac_rockchip_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author380 = internal constant [61 x i8] c"emac_rockchip.author=Romain Perier <romain.perier@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description381 = internal constant [56 x i8] c"emac_rockchip.description=Rockchip EMAC platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file382 = internal constant [58 x i8] c"emac_rockchip.file=drivers/net/ethernet/arc/emac_rockchip\00", section ".modinfo", align 1
@__UNIQUE_ID_license383 = internal constant [26 x i8] c"emac_rockchip.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rockchip_emac\00", [18 x i8] zeroinitializer }, align 32
@emac_rockchip_dt_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3036-emac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @emac_rk3036_emac_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3066-emac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @emac_rk3066_emac_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3188-emac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @emac_rk3188_emac_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@emac_rockchip_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 122, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unsupported phy interface mode %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"emac_rockchip_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/arc/emac_rockchip.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@emac_rockchip_probe._entry_ptr = internal global ptr @emac_rockchip_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rockchip,grf\00", [19 x i8] zeroinitializer }, align 32
@emac_rockchip_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to retrieve global register file (%ld)\0A\00", [49 x i8] zeroinitializer }, align 32
@emac_rockchip_probe._entry_ptr.9 = internal global ptr @emac_rockchip_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hclk\00", [27 x i8] zeroinitializer }, align 32
@emac_rockchip_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 142, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to retrieve host clock (%ld)\0A\00", [59 x i8] zeroinitializer }, align 32
@emac_rockchip_probe._entry_ptr.13 = internal global ptr @emac_rockchip_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"macref\00", [25 x i8] zeroinitializer }, align 32
@emac_rockchip_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 150, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to retrieve reference clock (%ld)\0A\00", [54 x i8] zeroinitializer }, align 32
@emac_rockchip_probe._entry_ptr.17 = internal global ptr @emac_rockchip_probe._entry.15, section ".printk_index", align 4
@emac_rockchip_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 157, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to enable reference clock (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@emac_rockchip_probe._entry_ptr.20 = internal global ptr @emac_rockchip_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@emac_rockchip_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 168, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no regulator found\0A\00", [44 x i8] zeroinitializer }, align 32
@emac_rockchip_probe._entry_ptr.24 = internal global ptr @emac_rockchip_probe._entry.22, section ".printk_index", align 4
@emac_rockchip_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 175, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to enable phy-supply (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@emac_rockchip_probe._entry_ptr.27 = internal global ptr @emac_rockchip_probe._entry.25, section ".printk_index", align 4
@emac_rockchip_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 190, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"unable to apply initial settings to grf (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@emac_rockchip_probe._entry_ptr.30 = internal global ptr @emac_rockchip_probe._entry.28, section ".printk_index", align 4
@emac_rockchip_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 198, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to change reference clock rate (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@emac_rockchip_probe._entry_ptr.33 = internal global ptr @emac_rockchip_probe._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"macclk\00", [25 x i8] zeroinitializer }, align 32
@emac_rockchip_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.2, ptr @.str.3, i32 206, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to retrieve mac clock (%ld)\0A\00", [60 x i8] zeroinitializer }, align 32
@emac_rockchip_probe._entry_ptr.37 = internal global ptr @emac_rockchip_probe._entry.35, section ".printk_index", align 4
@emac_rockchip_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.2, ptr @.str.3, i32 213, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable mac clock (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@emac_rockchip_probe._entry_ptr.40 = internal global ptr @emac_rockchip_probe._entry.38, section ".printk_index", align 4
@emac_rockchip_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.2, ptr @.str.3, i32 221, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to change mac clock rate (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@emac_rockchip_probe._entry_ptr.43 = internal global ptr @emac_rockchip_probe._entry.41, section ".printk_index", align 4
@emac_rockchip_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.2, ptr @.str.3, i32 228, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to probe arc emac (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@emac_rockchip_probe._entry_ptr.46 = internal global ptr @emac_rockchip_probe._entry.44, section ".printk_index", align 4
@emac_rockchip_set_mac_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013speed %u not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"emac_rockchip_set_mac_speed\00", [36 x i8] zeroinitializer }, align 32
@emac_rockchip_set_mac_speed._entry_ptr = internal global ptr @emac_rockchip_set_mac_speed._entry, section ".printk_index", align 4
@emac_rockchip_set_mac_speed._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.3, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013unable to apply speed %u to grf (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@emac_rockchip_set_mac_speed._entry_ptr.51 = internal global ptr @emac_rockchip_set_mac_speed._entry.49, section ".printk_index", align 4
@emac_rk3036_emac_data = internal constant { %struct.emac_rockchip_soc_data, [16 x i8] } { %struct.emac_rockchip_soc_data { i32 320, i32 8, i32 9, i8 1 }, [16 x i8] zeroinitializer }, align 32
@emac_rk3066_emac_data = internal constant { %struct.emac_rockchip_soc_data, [16 x i8] } { %struct.emac_rockchip_soc_data { i32 340, i32 0, i32 1, i8 0 }, [16 x i8] zeroinitializer }, align 32
@emac_rk3188_emac_data = internal constant { %struct.emac_rockchip_soc_data, [16 x i8] } { %struct.emac_rockchip_soc_data { i32 164, i32 0, i32 1, i8 0 }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@___asan_gen_.52 = private unnamed_addr constant [21 x i8] c"emac_rockchip_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 267, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 271, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [21 x i8] c"emac_rockchip_dt_ids\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 75, i32 34 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 122, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 128, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 130, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 139, i32 37 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 141, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 147, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 149, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 157, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 162, i32 53 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 168, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 175, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 189, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 197, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 203, i32 36 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 205, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 213, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 220, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 228, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 51, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 57, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [22 x i8] c"emac_rk3036_emac_data\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 60, i32 44 }
@___asan_gen_.184 = private unnamed_addr constant [22 x i8] c"emac_rk3066_emac_data\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 65, i32 44 }
@___asan_gen_.187 = private unnamed_addr constant [22 x i8] c"emac_rk3188_emac_data\00", align 1
@___asan_gen_.188 = private constant [44 x i8] c"../drivers/net/ethernet/arc/emac_rockchip.c\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 70, i32 44 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author380, ptr @__UNIQUE_ID_description381, ptr @__UNIQUE_ID_file382, ptr @__UNIQUE_ID_license383, ptr @__exitcall_emac_rockchip_driver_exit, ptr @__initcall__kmod_emac_rockchip__379_276_emac_rockchip_driver_init6, ptr @emac_rockchip_driver_exit, ptr @emac_rockchip_probe._entry, ptr @emac_rockchip_probe._entry.11, ptr @emac_rockchip_probe._entry.15, ptr @emac_rockchip_probe._entry.18, ptr @emac_rockchip_probe._entry.22, ptr @emac_rockchip_probe._entry.25, ptr @emac_rockchip_probe._entry.28, ptr @emac_rockchip_probe._entry.31, ptr @emac_rockchip_probe._entry.35, ptr @emac_rockchip_probe._entry.38, ptr @emac_rockchip_probe._entry.41, ptr @emac_rockchip_probe._entry.44, ptr @emac_rockchip_probe._entry.7, ptr @emac_rockchip_probe._entry_ptr, ptr @emac_rockchip_probe._entry_ptr.13, ptr @emac_rockchip_probe._entry_ptr.17, ptr @emac_rockchip_probe._entry_ptr.20, ptr @emac_rockchip_probe._entry_ptr.24, ptr @emac_rockchip_probe._entry_ptr.27, ptr @emac_rockchip_probe._entry_ptr.30, ptr @emac_rockchip_probe._entry_ptr.33, ptr @emac_rockchip_probe._entry_ptr.37, ptr @emac_rockchip_probe._entry_ptr.40, ptr @emac_rockchip_probe._entry_ptr.43, ptr @emac_rockchip_probe._entry_ptr.46, ptr @emac_rockchip_probe._entry_ptr.9, ptr @emac_rockchip_set_mac_speed._entry, ptr @emac_rockchip_set_mac_speed._entry.49, ptr @emac_rockchip_set_mac_speed._entry_ptr, ptr @emac_rockchip_set_mac_speed._entry_ptr.51, ptr @emac_rockchip_driver, ptr @.str, ptr @emac_rockchip_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @emac_rk3036_emac_data, ptr @emac_rk3066_emac_data, ptr @emac_rk3188_emac_data], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_rockchip_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_rockchip_dt_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_rockchip_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_rockchip_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_rockchip_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_rockchip_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_rockchip_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_rockchip_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_rockchip_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_rockchip_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_rockchip_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_rockchip_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_rockchip_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_rockchip_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_rockchip_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_rockchip_set_mac_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_rockchip_set_mac_speed._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_rk3036_emac_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_rk3066_emac_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_rk3188_emac_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_rockchip_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @emac_rockchip_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @emac_rockchip_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @emac_rockchip_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_rockchip_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %interface = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %interface) #5
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %interface, align 4, !annotation !106
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 3400, i32 noundef 1, i32 noundef 1) #5
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str, ptr %add.ptr.i, align 8
  %set_mac_speed = getelementptr i8, ptr %call, i32 2308
  %6 = ptrtoint ptr %set_mac_speed to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @emac_rockchip_set_mac_speed, ptr %set_mac_speed, align 4
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call10 = call i32 @of_get_phy_mode(ptr noundef %8, ptr noundef nonnull %interface) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end5.out_netdev_crit_edge

if.end5.out_netdev_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_netdev

if.end13:                                         ; preds = %if.end5
  %9 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %10)
  %cmp.not = icmp eq i32 %10, 7
  br i1 %cmp.not, label %if.end15, label %do.end

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %10) #8
  br label %out_netdev

if.end15:                                         ; preds = %if.end13
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call17 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %12, ptr noundef nonnull @.str.6) #5
  %grf = getelementptr i8, ptr %call, i32 5680
  %13 = ptrtoint ptr %grf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call17, ptr %grf, align 8
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end23, label %if.end28

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call17 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %14) #8
  %15 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %grf, align 8
  %17 = ptrtoint ptr %16 to i32
  br label %out_netdev

if.end28:                                         ; preds = %if.end15
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %call30 = call ptr @of_match_node(ptr noundef nonnull @emac_rockchip_dt_ids, ptr noundef %19) #5
  %data31 = getelementptr inbounds %struct.of_device_id, ptr %call30, i32 0, i32 3
  %20 = ptrtoint ptr %data31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data31, align 4
  %soc_data = getelementptr i8, ptr %call, i32 5684
  %22 = ptrtoint ptr %soc_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %soc_data, align 4
  %call32 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.10) #5
  %clk = getelementptr i8, ptr %call, i32 2332
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call32, ptr %clk, align 4
  %cmp.i266 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i266, label %do.end40, label %if.end47

do.end40:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %call32 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %24) #8
  %25 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %out_netdev

if.end47:                                         ; preds = %if.end28
  %call48 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.14) #5
  %refclk = getelementptr i8, ptr %call, i32 5692
  %28 = ptrtoint ptr %refclk to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call48, ptr %refclk, align 4
  %cmp.i267 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i267, label %do.end54, label %if.end59

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %call48 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %29) #8
  %30 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %refclk, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %out_netdev

if.end59:                                         ; preds = %if.end47
  %call.i = call i32 @clk_prepare(ptr noundef %call48) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end59.do.end66_crit_edge

if.end59.do.end66_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end66

if.end.i:                                         ; preds = %if.end59
  %call1.i = call i32 @clk_enable(ptr noundef %call48) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end67, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @clk_unprepare(ptr noundef %call48) #5
  br label %do.end66

do.end66:                                         ; preds = %if.then3.i, %if.end59.do.end66_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end59.do.end66_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %retval.0.i.ph) #8
  br label %out_netdev

if.end67:                                         ; preds = %if.end.i
  %call68 = call ptr @devm_regulator_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.21) #5
  %regulator = getelementptr i8, ptr %call, i32 5688
  %33 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call68, ptr %regulator, align 8
  %cmp.i268 = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i268, label %if.then71, label %if.end81

if.then71:                                        ; preds = %if.end67
  %cmp74 = icmp eq ptr %call68, inttoptr (i32 -517 to ptr)
  br i1 %cmp74, label %if.then71.out_clk_disable_crit_edge, label %if.end81.thread

if.then71.out_clk_disable_crit_edge:              ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_clk_disable

if.end81.thread:                                  ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #8
  %34 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %regulator, align 8
  br label %if.end93

if.end81:                                         ; preds = %if.end67
  %tobool83.not = icmp eq ptr %call68, null
  br i1 %tobool83.not, label %if.end81.if.end93_crit_edge, label %if.then84

if.end81.if.end93_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

if.then84:                                        ; preds = %if.end81
  %call86 = call i32 @regulator_enable(ptr noundef nonnull %call68) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then84.if.end93_crit_edge, label %do.end91

if.then84.if.end93_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

do.end91:                                         ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %call86) #8
  br label %out_clk_disable

if.end93:                                         ; preds = %if.then84.if.end93_crit_edge, %if.end81.if.end93_crit_edge, %if.end81.thread
  %35 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %soc_data, align 4
  %grf_speed_offset = getelementptr inbounds %struct.emac_rockchip_soc_data, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %grf_speed_offset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %grf_speed_offset, align 4
  %add = add i32 %38, 16
  %shl = shl nuw i32 1, %add
  %shl97 = shl nuw i32 1, %38
  %or = or i32 %shl, %shl97
  %grf_mode_offset = getelementptr inbounds %struct.emac_rockchip_soc_data, ptr %36, i32 0, i32 1
  %39 = ptrtoint ptr %grf_mode_offset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %grf_mode_offset, align 4
  %add99 = add i32 %40, 16
  %shl100 = shl nuw i32 1, %add99
  %or105 = or i32 %or, %shl100
  %41 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %grf, align 8
  %43 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %36, align 4
  %call108 = call i32 @regmap_write(ptr noundef %42, i32 noundef %44, i32 noundef %or105) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end114, label %do.end113

do.end113:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %call108) #8
  br label %out_regulator_disable

if.end114:                                        ; preds = %if.end93
  %45 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %refclk, align 4
  %call116 = call i32 @clk_set_rate(ptr noundef %46, i32 noundef 50000000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end122, label %do.end121

do.end121:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef %call116) #8
  br label %out_regulator_disable

if.end122:                                        ; preds = %if.end114
  %47 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %soc_data, align 4
  %need_div_macclk = getelementptr inbounds %struct.emac_rockchip_soc_data, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %need_div_macclk to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %need_div_macclk, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool124.not = icmp eq i8 %50, 0
  br i1 %tobool124.not, label %if.end122.if.end154_crit_edge, label %if.then125

if.end122.if.end154_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end154

if.then125:                                       ; preds = %if.end122
  %call126 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.34) #5
  %macclk = getelementptr i8, ptr %call, i32 5696
  %51 = ptrtoint ptr %macclk to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call126, ptr %macclk, align 8
  %cmp.i269 = icmp ugt ptr %call126, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i269, label %do.end132, label %if.end137

do.end132:                                        ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %call126 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36, i32 noundef %52) #8
  %53 = ptrtoint ptr %macclk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %macclk, align 8
  %55 = ptrtoint ptr %54 to i32
  br label %out_regulator_disable

if.end137:                                        ; preds = %if.then125
  %call.i270 = call i32 @clk_prepare(ptr noundef %call126) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i270)
  %tobool.not.i271 = icmp eq i32 %call.i270, 0
  br i1 %tobool.not.i271, label %if.end.i274, label %if.end137.do.end144_crit_edge

if.end137.do.end144_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end144

if.end.i274:                                      ; preds = %if.end137
  %call1.i272 = call i32 @clk_enable(ptr noundef %call126) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i272)
  %tobool2.not.i273 = icmp eq i32 %call1.i272, 0
  br i1 %tobool2.not.i273, label %if.end145, label %if.then3.i275

if.then3.i275:                                    ; preds = %if.end.i274
  call void @__sanitizer_cov_trace_pc() #7
  call void @clk_unprepare(ptr noundef %call126) #5
  br label %do.end144

do.end144:                                        ; preds = %if.then3.i275, %if.end137.do.end144_crit_edge
  %retval.0.i276.ph = phi i32 [ %call1.i272, %if.then3.i275 ], [ %call.i270, %if.end137.do.end144_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39, i32 noundef %retval.0.i276.ph) #8
  br label %out_regulator_disable

if.end145:                                        ; preds = %if.end.i274
  %56 = ptrtoint ptr %macclk to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %macclk, align 8
  %call147 = call i32 @clk_set_rate(ptr noundef %57, i32 noundef 25000000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end145.if.end154_crit_edge, label %do.end152

if.end145.if.end154_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end154

do.end152:                                        ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.42, i32 noundef %call147) #8
  br label %out_clk_disable_macclk

if.end154:                                        ; preds = %if.end145.if.end154_crit_edge, %if.end122.if.end154_crit_edge
  %58 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %interface, align 4
  %call155 = call i32 @arc_emac_probe(ptr noundef nonnull %call, i32 noundef %59) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.end154.cleanup_crit_edge, label %do.end160

if.end154.cleanup_crit_edge:                      ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end160:                                        ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.45, i32 noundef %call155) #8
  br label %out_clk_disable_macclk

out_clk_disable_macclk:                           ; preds = %do.end160, %do.end152
  %err.0 = phi i32 [ %call147, %do.end152 ], [ %call155, %do.end160 ]
  %60 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %soc_data, align 4
  %need_div_macclk163 = getelementptr inbounds %struct.emac_rockchip_soc_data, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %need_div_macclk163 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %need_div_macclk163, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool164.not = icmp eq i8 %63, 0
  br i1 %tobool164.not, label %out_clk_disable_macclk.out_regulator_disable_crit_edge, label %if.then165

out_clk_disable_macclk.out_regulator_disable_crit_edge: ; preds = %out_clk_disable_macclk
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_regulator_disable

if.then165:                                       ; preds = %out_clk_disable_macclk
  call void @__sanitizer_cov_trace_pc() #7
  %macclk166 = getelementptr i8, ptr %call, i32 5696
  %64 = ptrtoint ptr %macclk166 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %macclk166, align 8
  call void @clk_disable(ptr noundef %65) #5
  call void @clk_unprepare(ptr noundef %65) #5
  br label %out_regulator_disable

out_regulator_disable:                            ; preds = %if.then165, %out_clk_disable_macclk.out_regulator_disable_crit_edge, %do.end144, %do.end132, %do.end121, %do.end113
  %err.1 = phi i32 [ %call108, %do.end113 ], [ %call116, %do.end121 ], [ %55, %do.end132 ], [ %retval.0.i276.ph, %do.end144 ], [ %err.0, %if.then165 ], [ %err.0, %out_clk_disable_macclk.out_regulator_disable_crit_edge ]
  %66 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regulator, align 8
  %tobool169.not = icmp eq ptr %67, null
  br i1 %tobool169.not, label %out_regulator_disable.out_clk_disable_crit_edge, label %if.then170

out_regulator_disable.out_clk_disable_crit_edge:  ; preds = %out_regulator_disable
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_clk_disable

if.then170:                                       ; preds = %out_regulator_disable
  call void @__sanitizer_cov_trace_pc() #7
  %call172 = call i32 @regulator_disable(ptr noundef nonnull %67) #5
  br label %out_clk_disable

out_clk_disable:                                  ; preds = %if.then170, %out_regulator_disable.out_clk_disable_crit_edge, %do.end91, %if.then71.out_clk_disable_crit_edge
  %err.2 = phi i32 [ %call86, %do.end91 ], [ %err.1, %if.then170 ], [ %err.1, %out_regulator_disable.out_clk_disable_crit_edge ], [ -517, %if.then71.out_clk_disable_crit_edge ]
  %68 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %refclk, align 4
  call void @clk_disable(ptr noundef %69) #5
  call void @clk_unprepare(ptr noundef %69) #5
  br label %out_netdev

out_netdev:                                       ; preds = %out_clk_disable, %do.end66, %do.end54, %do.end40, %do.end23, %do.end, %if.end5.out_netdev_crit_edge
  %err.3 = phi i32 [ %call10, %if.end5.out_netdev_crit_edge ], [ -524, %do.end ], [ %17, %do.end23 ], [ %27, %do.end40 ], [ %32, %do.end54 ], [ %retval.0.i.ph, %do.end66 ], [ %err.2, %out_clk_disable ]
  call void @free_netdev(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %out_netdev, %if.end154.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %out_netdev ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end154.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %interface) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_rockchip_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @arc_emac_remove(ptr noundef %1) #5
  %refclk = getelementptr i8, ptr %1, i32 5692
  %2 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %refclk, align 4
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  %regulator = getelementptr i8, ptr %1, i32 5688
  %4 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regulator, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @regulator_disable(ptr noundef nonnull %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %soc_data = getelementptr i8, ptr %1, i32 5684
  %6 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soc_data, align 4
  %need_div_macclk = getelementptr inbounds %struct.emac_rockchip_soc_data, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %need_div_macclk to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %need_div_macclk, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %macclk = getelementptr i8, ptr %1, i32 5696
  %10 = ptrtoint ptr %macclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %macclk, align 8
  tail call void @clk_disable(ptr noundef %11) #5
  tail call void @clk_unprepare(ptr noundef %11) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  tail call void @free_netdev(ptr noundef %1) #5
  ret i32 %call2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emac_rockchip_set_mac_speed(ptr nocapture noundef readonly %priv, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %soc_data = getelementptr inbounds %struct.rockchip_priv_data, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc_data, align 4
  %grf_speed_offset = getelementptr inbounds %struct.emac_rockchip_soc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %grf_speed_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %grf_speed_offset, align 4
  %4 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %speed, label %do.end [
    i32 10, label %sw.bb
    i32 100, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add = add i32 %3, 16
  %shl = shl nuw i32 1, %add
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add3 = add i32 %3, 16
  %shl4 = shl nuw i32 1, %add3
  %shl5 = shl nuw i32 1, %3
  %or6 = or i32 %shl4, %shl5
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %speed) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %data.0 = phi i32 [ %or6, %sw.bb2 ], [ %shl, %sw.bb ]
  %grf = getelementptr inbounds %struct.rockchip_priv_data, ptr %priv, i32 0, i32 1
  %5 = ptrtoint ptr %grf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %grf, align 8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef %8, i32 noundef %data.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %do.end11

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end11:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %speed, i32 noundef %call8) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %sw.epilog.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arc_emac_probe(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arc_emac_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !93, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__initcall__kmod_emac_rockchip__379_276_emac_rockchip_driver_init6, !1, !"__initcall__kmod_emac_rockchip__379_276_emac_rockchip_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 276, i32 1}
!2 = !{ptr @__exitcall_emac_rockchip_driver_exit, !1, !"__exitcall_emac_rockchip_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author380, !4, !"__UNIQUE_ID_author380", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 278, i32 1}
!5 = !{ptr @__UNIQUE_ID_description381, !6, !"__UNIQUE_ID_description381", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 279, i32 1}
!7 = !{ptr @__UNIQUE_ID_file382, !8, !"__UNIQUE_ID_file382", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 280, i32 1}
!9 = !{ptr @__UNIQUE_ID_license383, !8, !"__UNIQUE_ID_license383", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 271, i32 11}
!12 = !{ptr @emac_rockchip_driver, !13, !"emac_rockchip_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 267, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 122, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @emac_rockchip_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @emac_rockchip_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 128, i32 11}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 130, i32 3}
!26 = !{ptr @emac_rockchip_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @emac_rockchip_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 139, i32 37}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 141, i32 3}
!32 = !{ptr @emac_rockchip_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @emac_rockchip_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 147, i32 35}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 149, i32 3}
!38 = !{ptr @emac_rockchip_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @emac_rockchip_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 157, i32 3}
!42 = !{ptr @emac_rockchip_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @emac_rockchip_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 162, i32 53}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 168, i32 3}
!48 = !{ptr @emac_rockchip_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @emac_rockchip_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 175, i32 4}
!52 = !{ptr @emac_rockchip_probe._entry.25, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @emac_rockchip_probe._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 189, i32 3}
!56 = !{ptr @emac_rockchip_probe._entry.28, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @emac_rockchip_probe._entry_ptr.30, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 197, i32 3}
!60 = !{ptr @emac_rockchip_probe._entry.31, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @emac_rockchip_probe._entry_ptr.33, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 203, i32 36}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 205, i32 4}
!66 = !{ptr @emac_rockchip_probe._entry.35, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @emac_rockchip_probe._entry_ptr.37, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 213, i32 4}
!70 = !{ptr @emac_rockchip_probe._entry.38, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @emac_rockchip_probe._entry_ptr.40, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.42, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 220, i32 4}
!74 = !{ptr @emac_rockchip_probe._entry.41, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @emac_rockchip_probe._entry_ptr.43, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.45, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 228, i32 3}
!78 = !{ptr @emac_rockchip_probe._entry.44, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @emac_rockchip_probe._entry_ptr.46, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.47, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 51, i32 3}
!82 = !{ptr @.str.48, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @emac_rockchip_set_mac_speed._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @emac_rockchip_set_mac_speed._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.50, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 57, i32 3}
!87 = !{ptr @emac_rockchip_set_mac_speed._entry.49, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @emac_rockchip_set_mac_speed._entry_ptr.51, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @emac_rockchip_dt_ids, !90, !"emac_rockchip_dt_ids", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 75, i32 34}
!91 = !{ptr @emac_rk3036_emac_data, !92, !"emac_rk3036_emac_data", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 60, i32 44}
!93 = !{ptr @emac_rk3066_emac_data, !94, !"emac_rk3066_emac_data", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 65, i32 44}
!95 = !{ptr @emac_rk3188_emac_data, !96, !"emac_rk3188_emac_data", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/arc/emac_rockchip.c", i32 70, i32 44}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"auto-init"}
!107 = !{i8 0, i8 2}
