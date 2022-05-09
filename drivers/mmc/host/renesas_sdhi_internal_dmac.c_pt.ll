; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/renesas_sdhi_internal_dmac.c_pt.bc'
source_filename = "../drivers/mmc/host/renesas_sdhi_internal_dmac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tmio_mmc_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.renesas_sdhi_quirks = type { i8, i8, i32, ptr }
%struct.renesas_sdhi_of_data_with_quirks = type { ptr, ptr }
%struct.renesas_sdhi_of_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i16, i32 }
%struct.renesas_sdhi_scc = type { i32, i32, i32 }
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
%struct.tmio_mmc_host = type { ptr, ptr, ptr, ptr, ptr, %struct.mmc_host_ops, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, i8, ptr, ptr, %struct.tasklet_struct, %struct.scatterlist, ptr, %struct.delayed_work, %struct.work_struct, i32, i32, i32, i32, i32, %struct.spinlock, i32, %struct.mutex, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@__initcall__kmod_renesas_sdhi_internal_dmac__318_581_renesas_internal_dmac_sdhi_driver_init6 = internal global ptr @renesas_internal_dmac_sdhi_driver_init, section ".initcall6.init", align 4
@renesas_internal_dmac_sdhi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @renesas_sdhi_internal_dmac_probe, ptr @renesas_sdhi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @renesas_sdhi_internal_dmac_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @renesas_sdhi_internal_dmac_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_renesas_internal_dmac_sdhi_driver_exit = internal global ptr @renesas_internal_dmac_sdhi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description319 = internal constant [77 x i8] c"renesas_sdhi_internal_dmac.description=Renesas SDHI driver for internal DMAC\00", section ".modinfo", align 1
@__UNIQUE_ID_author320 = internal constant [52 x i8] c"renesas_sdhi_internal_dmac.author=Yoshihiro Shimoda\00", section ".modinfo", align 1
@__UNIQUE_ID_file321 = internal constant [76 x i8] c"renesas_sdhi_internal_dmac.file=drivers/mmc/host/renesas_sdhi_internal_dmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license322 = internal constant [42 x i8] c"renesas_sdhi_internal_dmac.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"renesas_sdhi_internal_dmac\00", [37 x i8] zeroinitializer }, align 32
@renesas_sdhi_internal_dmac_of_match = internal constant { [11 x %struct.of_device_id], [532 x i8] } { [11 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r7s9210\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rza2_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-mmc-r8a77470\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen3_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a7795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_r8a7795_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a7796\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen3_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a77961\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_r8a77961_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a77965\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_r8a77965_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a77970\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_r8a77970_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a77980\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_r8a77980_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sdhi-r8a77990\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_r8a77990_compatible }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-sdhi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_rcar_gen3_compatible }, %struct.of_device_id zeroinitializer], [532 x i8] zeroinitializer }, align 32
@renesas_sdhi_internal_dmac_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tmio_mmc_host_runtime_suspend, ptr @tmio_mmc_host_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@soc_dma_quirks = internal constant { [4 x %struct.soc_device_attribute], [48 x i8] } { [4 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr inttoptr (i32 4 to ptr), ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr @.str.2, ptr null, ptr @.str.3, ptr inttoptr (i32 1 to ptr), ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr @.str.4, ptr null, ptr @.str.5, ptr inttoptr (i32 1 to ptr), ptr null }, %struct.soc_device_attribute zeroinitializer], [48 x i8] zeroinitializer }, align 32
@global_flags = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sdhi_quirks_match = internal constant { [6 x %struct.soc_device_attribute], [56 x i8] } { [6 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr @.str.6, ptr null, ptr @.str.7, ptr @sdhi_quirks_4tap_nohs400, ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr @.str.2, ptr null, ptr @.str.3, ptr @sdhi_quirks_4tap_nohs400, ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr @.str.8, ptr null, ptr @.str.3, ptr @sdhi_quirks_4tap, ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr @.str.6, ptr null, ptr @.str.5, ptr @sdhi_quirks_4tap_nohs400, ptr null }, %struct.soc_device_attribute { ptr null, ptr null, ptr @.str.2, ptr null, ptr @.str.5, ptr @sdhi_quirks_r8a7796_es13, ptr null }, %struct.soc_device_attribute zeroinitializer], [56 x i8] zeroinitializer }, align 32
@renesas_sdhi_internal_dmac_dma_ops = internal constant { %struct.tmio_mmc_dma_ops, [36 x i8] } { %struct.tmio_mmc_dma_ops { ptr @renesas_sdhi_internal_dmac_start_dma, ptr @renesas_sdhi_internal_dmac_enable_dma, ptr @renesas_sdhi_internal_dmac_request_dma, ptr @renesas_sdhi_internal_dmac_release_dma, ptr @renesas_sdhi_internal_dmac_abort_dma, ptr @renesas_sdhi_internal_dmac_dataend_dma, ptr @renesas_sdhi_internal_dmac_end_dma }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r7s9210\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ES1.*\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8a7795\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ES1.0\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8a7796\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ES1.[012]\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"r8a774a1\00", [23 x i8] zeroinitializer }, align 32
@sdhi_quirks_4tap_nohs400 = internal constant { %struct.renesas_sdhi_quirks, [20 x i8] } { %struct.renesas_sdhi_quirks { i8 1, i8 1, i32 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ES2.0\00", [26 x i8] zeroinitializer }, align 32
@sdhi_quirks_4tap = internal constant { %struct.renesas_sdhi_quirks, [20 x i8] } { %struct.renesas_sdhi_quirks { i8 0, i8 1, i32 204, ptr null }, [20 x i8] zeroinitializer }, align 32
@sdhi_quirks_r8a7796_es13 = internal constant { %struct.renesas_sdhi_quirks, [20 x i8] } { %struct.renesas_sdhi_quirks { i8 0, i8 1, i32 204, ptr @r8a7796_es13_calib_table }, [20 x i8] zeroinitializer }, align 32
@r8a7796_es13_calib_table = internal constant { [2 x [32 x i8]], [32 x i8] } { [2 x [32 x i8]] [[32 x i8] c"\03\03\03\03\03\03\03\04\04\05\06\07\08\09\0A\0F\10\10\10\10\10\10\11\12\12\13\14\15\16\17\18\19", [32 x i8] c"\05\05\05\05\05\05\05\05\05\05\05\05\06\07\08\0B\0C\11\12\12\12\12\12\12\12\13\14\15\16\17\19\19"], [32 x i8] zeroinitializer }, align 32
@of_rza2_compatible = internal constant { %struct.renesas_sdhi_of_data_with_quirks, [24 x i8] } { %struct.renesas_sdhi_of_data_with_quirks { ptr @of_data_rza2, ptr null }, [24 x i8] zeroinitializer }, align 32
@of_rcar_gen3_compatible = internal constant { %struct.renesas_sdhi_of_data_with_quirks, [24 x i8] } { %struct.renesas_sdhi_of_data_with_quirks { ptr @of_data_rcar_gen3, ptr null }, [24 x i8] zeroinitializer }, align 32
@of_r8a7795_compatible = internal constant { %struct.renesas_sdhi_of_data_with_quirks, [24 x i8] } { %struct.renesas_sdhi_of_data_with_quirks { ptr @of_data_rcar_gen3, ptr @sdhi_quirks_bad_taps2367 }, [24 x i8] zeroinitializer }, align 32
@of_r8a77961_compatible = internal constant { %struct.renesas_sdhi_of_data_with_quirks, [24 x i8] } { %struct.renesas_sdhi_of_data_with_quirks { ptr @of_data_rcar_gen3, ptr @sdhi_quirks_bad_taps1357 }, [24 x i8] zeroinitializer }, align 32
@of_r8a77965_compatible = internal constant { %struct.renesas_sdhi_of_data_with_quirks, [24 x i8] } { %struct.renesas_sdhi_of_data_with_quirks { ptr @of_data_rcar_gen3, ptr @sdhi_quirks_r8a77965 }, [24 x i8] zeroinitializer }, align 32
@of_r8a77970_compatible = internal constant { %struct.renesas_sdhi_of_data_with_quirks, [24 x i8] } { %struct.renesas_sdhi_of_data_with_quirks { ptr @of_data_rcar_gen3_no_fallback, ptr null }, [24 x i8] zeroinitializer }, align 32
@of_r8a77980_compatible = internal constant { %struct.renesas_sdhi_of_data_with_quirks, [24 x i8] } { %struct.renesas_sdhi_of_data_with_quirks { ptr @of_data_rcar_gen3, ptr @sdhi_quirks_nohs400 }, [24 x i8] zeroinitializer }, align 32
@of_r8a77990_compatible = internal constant { %struct.renesas_sdhi_of_data_with_quirks, [24 x i8] } { %struct.renesas_sdhi_of_data_with_quirks { ptr @of_data_rcar_gen3, ptr @sdhi_quirks_r8a77990 }, [24 x i8] zeroinitializer }, align 32
@of_data_rza2 = internal constant { %struct.renesas_sdhi_of_data, [44 x i8] } { %struct.renesas_sdhi_of_data { i32 3088, i32 1048576, i32 1073742348, i32 0, i32 0, i32 0, i32 2, i32 -4096, ptr @rcar_gen3_scc_taps, i32 1, i32 8388607, i16 1, i32 0 }, [44 x i8] zeroinitializer }, align 32
@rcar_gen3_scc_taps = internal global { [1 x %struct.renesas_sdhi_scc], [20 x i8] } { [1 x %struct.renesas_sdhi_scc] [%struct.renesas_sdhi_scc { i32 0, i32 768, i32 256 }], [20 x i8] zeroinitializer }, align 32
@of_data_rcar_gen3 = internal constant { %struct.renesas_sdhi_of_data, [44 x i8] } { %struct.renesas_sdhi_of_data { i32 3096, i32 0, i32 1073742348, i32 67371008, i32 0, i32 0, i32 2, i32 4096, ptr @rcar_gen3_scc_taps, i32 1, i32 8388607, i16 1, i32 1 }, [44 x i8] zeroinitializer }, align 32
@sdhi_quirks_bad_taps2367 = internal constant { %struct.renesas_sdhi_quirks, [20 x i8] } { %struct.renesas_sdhi_quirks { i8 0, i8 0, i32 204, ptr null }, [20 x i8] zeroinitializer }, align 32
@sdhi_quirks_bad_taps1357 = internal constant { %struct.renesas_sdhi_quirks, [20 x i8] } { %struct.renesas_sdhi_quirks { i8 0, i8 0, i32 170, ptr null }, [20 x i8] zeroinitializer }, align 32
@sdhi_quirks_r8a77965 = internal constant { %struct.renesas_sdhi_quirks, [20 x i8] } { %struct.renesas_sdhi_quirks { i8 0, i8 0, i32 204, ptr @r8a77965_calib_table }, [20 x i8] zeroinitializer }, align 32
@r8a77965_calib_table = internal constant { [2 x [32 x i8]], [32 x i8] } { [2 x [32 x i8]] [[32 x i8] c"\01\02\06\06\07\08\09\0A\0B\0C\0D\0E\0F\0F\0F\10\11\12\13\14\15\16\17\18\19\19\1A\1B\1C\1D\1E\1F", [32 x i8] c"\02\03\04\04\05\06\07\09\0A\0B\0C\0D\0E\0F\10\11\11\11\14\15\16\17\18\19\1B\1C\1D\1E\1F\1F\1F\1F"], [32 x i8] zeroinitializer }, align 32
@of_data_rcar_gen3_no_fallback = internal constant { %struct.renesas_sdhi_of_data, [44 x i8] } { %struct.renesas_sdhi_of_data { i32 3096, i32 0, i32 1073742348, i32 67371008, i32 0, i32 0, i32 2, i32 4096, ptr @rcar_gen3_scc_taps, i32 1, i32 8388607, i16 1, i32 0 }, [44 x i8] zeroinitializer }, align 32
@sdhi_quirks_nohs400 = internal constant { %struct.renesas_sdhi_quirks, [20 x i8] } { %struct.renesas_sdhi_quirks { i8 1, i8 0, i32 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@sdhi_quirks_r8a77990 = internal constant { %struct.renesas_sdhi_quirks, [20 x i8] } { %struct.renesas_sdhi_quirks { i8 0, i8 0, i32 0, ptr @r8a77990_calib_table }, [20 x i8] zeroinitializer }, align 32
@r8a77990_calib_table = internal constant { [2 x [32 x i8]], [32 x i8] } { [2 x [32 x i8]] [[32 x i8] zeroinitializer, [32 x i8] c"\00\00\00\01\02\03\03\04\04\04\05\05\06\08\09\0A\0B\0C\0D\0F\10\11\11\12\12\13\14\16\18\19\1A\1A"], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [34 x i8] c"renesas_internal_dmac_sdhi_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 570, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 572, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [36 x i8] c"renesas_sdhi_internal_dmac_of_match\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 251, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant [38 x i8] c"renesas_sdhi_internal_dmac_dev_pm_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 562, i32 32 }
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"soc_dma_quirks\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 527, i32 42 }
@___asan_gen_.24 = private unnamed_addr constant [13 x i8] c"global_flags\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 73, i32 22 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"sdhi_quirks_match\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 209, i32 42 }
@___asan_gen_.30 = private unnamed_addr constant [35 x i8] c"renesas_sdhi_internal_dmac_dma_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 513, i32 38 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 528, i32 14 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 530, i32 37 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 530, i32 14 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 532, i32 37 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 532, i32 14 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 210, i32 38 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 210, i32 14 }
@___asan_gen_.54 = private unnamed_addr constant [25 x i8] c"sdhi_quirks_4tap_nohs400\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 167, i32 41 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 212, i32 37 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"sdhi_quirks_4tap\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 172, i32 41 }
@___asan_gen_.63 = private unnamed_addr constant [25 x i8] c"sdhi_quirks_r8a7796_es13\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 189, i32 41 }
@___asan_gen_.66 = private unnamed_addr constant [25 x i8] c"r8a7796_es13_calib_table\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 146, i32 17 }
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c"of_rza2_compatible\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 111, i32 54 }
@___asan_gen_.72 = private unnamed_addr constant [24 x i8] c"of_rcar_gen3_compatible\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 247, i32 54 }
@___asan_gen_.75 = private unnamed_addr constant [22 x i8] c"of_r8a7795_compatible\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 218, i32 54 }
@___asan_gen_.78 = private unnamed_addr constant [23 x i8] c"of_r8a77961_compatible\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 223, i32 54 }
@___asan_gen_.81 = private unnamed_addr constant [23 x i8] c"of_r8a77965_compatible\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 228, i32 54 }
@___asan_gen_.84 = private unnamed_addr constant [23 x i8] c"of_r8a77970_compatible\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 233, i32 54 }
@___asan_gen_.87 = private unnamed_addr constant [23 x i8] c"of_r8a77980_compatible\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 237, i32 54 }
@___asan_gen_.90 = private unnamed_addr constant [23 x i8] c"of_r8a77990_compatible\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 242, i32 54 }
@___asan_gen_.93 = private unnamed_addr constant [13 x i8] c"of_data_rza2\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 96, i32 42 }
@___asan_gen_.96 = private unnamed_addr constant [19 x i8] c"rcar_gen3_scc_taps\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 88, i32 32 }
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"of_data_rcar_gen3\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 115, i32 42 }
@___asan_gen_.102 = private unnamed_addr constant [25 x i8] c"sdhi_quirks_bad_taps2367\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 185, i32 41 }
@___asan_gen_.105 = private unnamed_addr constant [25 x i8] c"sdhi_quirks_bad_taps1357\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 181, i32 41 }
@___asan_gen_.108 = private unnamed_addr constant [21 x i8] c"sdhi_quirks_r8a77965\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 195, i32 41 }
@___asan_gen_.111 = private unnamed_addr constant [21 x i8] c"r8a77965_calib_table\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 153, i32 17 }
@___asan_gen_.114 = private unnamed_addr constant [30 x i8] c"of_data_rcar_gen3_no_fallback\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 131, i32 42 }
@___asan_gen_.117 = private unnamed_addr constant [20 x i8] c"sdhi_quirks_nohs400\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 177, i32 41 }
@___asan_gen_.120 = private unnamed_addr constant [21 x i8] c"sdhi_quirks_r8a77990\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 200, i32 41 }
@___asan_gen_.123 = private unnamed_addr constant [21 x i8] c"r8a77990_calib_table\00", align 1
@___asan_gen_.124 = private constant [49 x i8] c"../drivers/mmc/host/renesas_sdhi_internal_dmac.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 160, i32 17 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author320, ptr @__UNIQUE_ID_description319, ptr @__UNIQUE_ID_file321, ptr @__UNIQUE_ID_license322, ptr @__exitcall_renesas_internal_dmac_sdhi_driver_exit, ptr @__initcall__kmod_renesas_sdhi_internal_dmac__318_581_renesas_internal_dmac_sdhi_driver_init6, ptr @renesas_internal_dmac_sdhi_driver_exit, ptr @renesas_internal_dmac_sdhi_driver, ptr @.str, ptr @renesas_sdhi_internal_dmac_of_match, ptr @renesas_sdhi_internal_dmac_dev_pm_ops, ptr @soc_dma_quirks, ptr @global_flags, ptr @sdhi_quirks_match, ptr @renesas_sdhi_internal_dmac_dma_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @sdhi_quirks_4tap_nohs400, ptr @.str.8, ptr @sdhi_quirks_4tap, ptr @sdhi_quirks_r8a7796_es13, ptr @r8a7796_es13_calib_table, ptr @of_rza2_compatible, ptr @of_rcar_gen3_compatible, ptr @of_r8a7795_compatible, ptr @of_r8a77961_compatible, ptr @of_r8a77965_compatible, ptr @of_r8a77970_compatible, ptr @of_r8a77980_compatible, ptr @of_r8a77990_compatible, ptr @of_data_rza2, ptr @rcar_gen3_scc_taps, ptr @of_data_rcar_gen3, ptr @sdhi_quirks_bad_taps2367, ptr @sdhi_quirks_bad_taps1357, ptr @sdhi_quirks_r8a77965, ptr @r8a77965_calib_table, ptr @of_data_rcar_gen3_no_fallback, ptr @sdhi_quirks_nohs400, ptr @sdhi_quirks_r8a77990, ptr @r8a77990_calib_table], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_internal_dmac_sdhi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_sdhi_internal_dmac_of_match to i32), i32 2156, i32 2688, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_sdhi_internal_dmac_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_dma_quirks to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @global_flags to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhi_quirks_match to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @renesas_sdhi_internal_dmac_dma_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhi_quirks_4tap_nohs400 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhi_quirks_4tap to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhi_quirks_r8a7796_es13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a7796_es13_calib_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_rza2_compatible to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_rcar_gen3_compatible to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_r8a7795_compatible to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_r8a77961_compatible to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_r8a77965_compatible to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_r8a77970_compatible to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_r8a77980_compatible to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_r8a77990_compatible to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_data_rza2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen3_scc_taps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_data_rcar_gen3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhi_quirks_bad_taps2367 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhi_quirks_bad_taps1357 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhi_quirks_r8a77965 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a77965_calib_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_data_rcar_gen3_no_fallback to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhi_quirks_nohs400 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhi_quirks_r8a77990 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8a77990_calib_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_internal_dmac_sdhi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @renesas_internal_dmac_sdhi_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @renesas_internal_dmac_sdhi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @renesas_internal_dmac_sdhi_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @renesas_sdhi_internal_dmac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %quirks3 = getelementptr inbounds %struct.renesas_sdhi_of_data_with_quirks, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %quirks3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %quirks3, align 4
  %call4 = tail call ptr @soc_device_match(ptr noundef nonnull @soc_dma_quirks) #5
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %data = getelementptr inbounds %struct.soc_device_attribute, ptr %call4, i32 0, i32 5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = load i32, ptr @global_flags, align 4
  %or = or i32 %5, %4
  store i32 %or, ptr @global_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call5 = tail call ptr @soc_device_match(ptr noundef nonnull @sdhi_quirks_match) #5
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %data8 = getelementptr inbounds %struct.soc_device_attribute, ptr %call5, i32 0, i32 5
  %6 = ptrtoint ptr %data8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %quirks.0 = phi ptr [ %7, %if.then7 ], [ %1, %if.end.if.end9_crit_edge ]
  %dma_parms.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 22
  %8 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end9.dma_set_max_seg_size.exit_crit_edge, label %if.then.i

if.end9.dma_set_max_seg_size.exit_crit_edge:      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_set_max_seg_size.exit

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i, %if.end9.dma_set_max_seg_size.exit_crit_edge
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 4
  %call11 = tail call i32 @renesas_sdhi_probe(ptr noundef %pdev, ptr noundef nonnull @renesas_sdhi_internal_dmac_dma_ops, ptr noundef %12, ptr noundef %quirks.0) #5
  ret i32 %call11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @renesas_sdhi_remove(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @renesas_sdhi_probe(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_sdhi_internal_dmac_start_dma(ptr noundef %host, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_ptr = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 7
  %0 = ptrtoint ptr %sg_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg_ptr, align 4
  %2 = load volatile i32, ptr @global_flags, align 4
  %3 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %spec.select = select i1 %tobool.not, i32 49, i32 48
  %host_cookie.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 13
  %4 = ptrtoint ptr %host_cookie.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_cookie.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  br i1 %cmp.i, label %entry.if.end3_crit_edge, label %if.end.i

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.end.i:                                         ; preds = %entry
  %pdev.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 12
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %8 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 10
  %10 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sg_len.i, align 4
  %flags.i.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  %call1.i = tail call i32 @dma_map_sg_attrs(ptr noundef %dev.i, ptr noundef %9, i32 noundef %11, i32 noundef %cond.i.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i.force_pio_crit_edge, label %if.end3.i

if.end.i.force_pio_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %force_pio

if.end3.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %host_cookie.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %host_cookie.i, align 4
  %15 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sg.i, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_address.i, align 4
  %and.i = and i32 %18, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp6.i = icmp eq i32 %and.i, 0
  br i1 %cmp6.i, label %if.end3.i.if.end3_crit_edge, label %if.then7.i

if.end3.i.if.end3_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sg_len.i, align 4
  %23 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i.i, align 4
  %and.i.i.i = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev.i.i, ptr noundef %16, i32 noundef %22, i32 noundef %cond.i.i.i, i32 noundef 0) #5
  br label %force_pio.sink.split

if.end3:                                          ; preds = %if.end3.i.if.end3_crit_edge, %entry.if.end3_crit_edge
  %flags = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %and = and i32 %26, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end3.if.end14_crit_edge, label %if.then5

if.end3.if.end14_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then5:                                         ; preds = %if.end3
  %or6 = or i32 %spec.select, 65536
  %27 = load volatile i32, ptr @global_flags, align 4
  %and1.i29 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i29)
  %tobool8.not = icmp eq i32 %and1.i29, 0
  br i1 %tobool8.not, label %if.then5.if.end14_crit_edge, label %land.lhs.true

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

land.lhs.true:                                    ; preds = %if.then5
  %call9 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef nonnull @global_flags) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end14_crit_edge, label %force_pio_with_unmap

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %if.then5.if.end14_crit_edge, %if.end3.if.end14_crit_edge
  %dtran_mode.1 = phi i32 [ %or6, %land.lhs.true.if.end14_crit_edge ], [ %or6, %if.then5.if.end14_crit_edge ], [ %spec.select, %if.end3.if.end14_crit_edge ]
  %pdata.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %28 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdata.i, align 4
  %chan_tx.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 16
  %30 = ptrtoint ptr %chan_tx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chan_tx.i, align 4
  %tobool.not.i30 = icmp eq ptr %31, null
  br i1 %tobool.not.i30, label %if.end14.renesas_sdhi_internal_dmac_enable_dma.exit_crit_edge, label %lor.lhs.false.i

if.end14.renesas_sdhi_internal_dmac_enable_dma.exit_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %renesas_sdhi_internal_dmac_enable_dma.exit

lor.lhs.false.i:                                  ; preds = %if.end14
  %chan_rx.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 15
  %32 = ptrtoint ptr %chan_rx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chan_rx.i, align 4
  %tobool1.not.i = icmp eq ptr %33, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.renesas_sdhi_internal_dmac_enable_dma.exit_crit_edge, label %if.end.i31

lor.lhs.false.i.renesas_sdhi_internal_dmac_enable_dma.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %renesas_sdhi_internal_dmac_enable_dma.exit

if.end.i31:                                       ; preds = %lor.lhs.false.i
  %enable5.i = getelementptr i8, ptr %29, i32 60
  %34 = ptrtoint ptr %enable5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %enable5.i, align 4
  %tobool6.not.i = icmp eq ptr %35, null
  br i1 %tobool6.not.i, label %if.end.i31.renesas_sdhi_internal_dmac_enable_dma.exit_crit_edge, label %if.then7.i32

if.end.i31.renesas_sdhi_internal_dmac_enable_dma.exit_crit_edge: ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #7
  br label %renesas_sdhi_internal_dmac_enable_dma.exit

if.then7.i32:                                     ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %35(ptr noundef %host, i1 noundef zeroext true) #5
  br label %renesas_sdhi_internal_dmac_enable_dma.exit

renesas_sdhi_internal_dmac_enable_dma.exit:       ; preds = %if.then7.i32, %if.end.i31.renesas_sdhi_internal_dmac_enable_dma.exit_crit_edge, %lor.lhs.false.i.renesas_sdhi_internal_dmac_enable_dma.exit_crit_edge, %if.end14.renesas_sdhi_internal_dmac_enable_dma.exit_crit_edge
  %36 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %host, align 4
  %add.ptr.i = getelementptr i8, ptr %37, i32 2080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 2084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #5, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %38 = tail call i32 @llvm.bswap.i32(i32 %dtran_mode.1) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %38) #5, !srcloc !98
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma_address, align 4
  %41 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %host, align 4
  %add.ptr.i33 = getelementptr i8, ptr %42, i32 2176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %add.ptr.i.i34 = getelementptr i8, ptr %42, i32 2180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i34, i32 0) #5, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %43 = tail call i32 @llvm.bswap.i32(i32 %40) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %43) #5, !srcloc !98
  %dma_on = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 14
  %44 = ptrtoint ptr %dma_on to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %dma_on, align 4
  br label %cleanup

force_pio_with_unmap:                             ; preds = %land.lhs.true
  %45 = ptrtoint ptr %host_cookie.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %host_cookie.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp1.not.i = icmp eq i32 %46, 0
  br i1 %cmp1.not.i, label %force_pio_with_unmap.force_pio_crit_edge, label %if.then.i

force_pio_with_unmap.force_pio_crit_edge:         ; preds = %force_pio_with_unmap
  call void @__sanitizer_cov_trace_pc() #7
  br label %force_pio

if.then.i:                                        ; preds = %force_pio_with_unmap
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i36 = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 12
  %47 = ptrtoint ptr %pdev.i36 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev.i36, align 4
  %dev.i37 = getelementptr inbounds %struct.platform_device, ptr %48, i32 0, i32 3
  %sg.i38 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %49 = ptrtoint ptr %sg.i38 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sg.i38, align 4
  %sg_len.i39 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 10
  %51 = ptrtoint ptr %sg_len.i39 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sg_len.i39, align 4
  %53 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags, align 4
  %and.i.i41 = and i32 %54, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i41)
  %tobool.not.i.i42 = icmp eq i32 %and.i.i41, 0
  %cond.i.i43 = select i1 %tobool.not.i.i42, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev.i37, ptr noundef %50, i32 noundef %52, i32 noundef %cond.i.i43, i32 noundef 0) #5
  br label %force_pio.sink.split

force_pio.sink.split:                             ; preds = %if.then.i, %if.then7.i
  %55 = ptrtoint ptr %host_cookie.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %host_cookie.i, align 4
  br label %force_pio

force_pio:                                        ; preds = %force_pio.sink.split, %force_pio_with_unmap.force_pio_crit_edge, %if.end.i.force_pio_crit_edge
  %pdata.i45 = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %56 = ptrtoint ptr %pdata.i45 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdata.i45, align 4
  %chan_tx.i46 = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 16
  %58 = ptrtoint ptr %chan_tx.i46 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %chan_tx.i46, align 4
  %tobool.not.i47 = icmp eq ptr %59, null
  br i1 %tobool.not.i47, label %force_pio.cleanup_crit_edge, label %lor.lhs.false.i50

force_pio.cleanup_crit_edge:                      ; preds = %force_pio
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i50:                                ; preds = %force_pio
  %chan_rx.i48 = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 15
  %60 = ptrtoint ptr %chan_rx.i48 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %chan_rx.i48, align 4
  %tobool1.not.i49 = icmp eq ptr %61, null
  br i1 %tobool1.not.i49, label %lor.lhs.false.i50.cleanup_crit_edge, label %if.end.i51

lor.lhs.false.i50.cleanup_crit_edge:              ; preds = %lor.lhs.false.i50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i51:                                       ; preds = %lor.lhs.false.i50
  %62 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %host, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %63, i32 2112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %add.ptr.i.i.i = getelementptr i8, ptr %63, i32 2116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #5, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i52, i32 0) #5, !srcloc !98
  %enable5.i53 = getelementptr i8, ptr %57, i32 60
  %64 = ptrtoint ptr %enable5.i53 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %enable5.i53, align 4
  %tobool6.not.i54 = icmp eq ptr %65, null
  br i1 %tobool6.not.i54, label %if.end.i51.cleanup_crit_edge, label %if.then7.i55

if.end.i51.cleanup_crit_edge:                     ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7.i55:                                     ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %65(ptr noundef %host, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then7.i55, %if.end.i51.cleanup_crit_edge, %lor.lhs.false.i50.cleanup_crit_edge, %force_pio.cleanup_crit_edge, %renesas_sdhi_internal_dmac_enable_dma.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_sdhi_internal_dmac_enable_dma(ptr noundef %host, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %chan_tx = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 16
  %2 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan_tx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %chan_rx = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 15
  %4 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan_rx, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  br i1 %enable, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 2112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 2116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #5, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !98
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %enable5 = getelementptr i8, ptr %1, i32 60
  %8 = ptrtoint ptr %enable5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable5, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %9(ptr noundef %host, i1 noundef zeroext %enable) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_sdhi_internal_dmac_request_dma(ptr noundef %host, ptr nocapture noundef readnone %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 4
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #5, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #5, !srcloc !98
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %add.ptr.i12 = getelementptr i8, ptr %5, i32 2136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %add.ptr.i.i13 = getelementptr i8, ptr %5, i32 2140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i13, i32 0) #5, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 -1) #5, !srcloc !98
  %chan_tx = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 16
  %6 = ptrtoint ptr %chan_tx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -559038801 to ptr), ptr %chan_tx, align 4
  %chan_rx = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 15
  %7 = ptrtoint ptr %chan_rx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -559038801 to ptr), ptr %chan_rx, align 4
  %dma_complete = getelementptr i8, ptr %1, i32 120
  %8 = ptrtoint ptr %host to i32
  tail call void @tasklet_init(ptr noundef %dma_complete, ptr noundef nonnull @renesas_sdhi_internal_dmac_complete_tasklet_fn, i32 noundef %8) #5
  %dma_issue = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 17
  tail call void @tasklet_init(ptr noundef %dma_issue, ptr noundef nonnull @renesas_sdhi_internal_dmac_issue_tasklet_fn, i32 noundef %8) #5
  %ops = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 5
  %pre_req = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %pre_req to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @renesas_sdhi_internal_dmac_pre_req, ptr %pre_req, align 4
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @renesas_sdhi_internal_dmac_post_req, ptr %ops, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @renesas_sdhi_internal_dmac_release_dma(ptr nocapture noundef writeonly %host) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_tx = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 16
  %0 = ptrtoint ptr %chan_tx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %chan_tx, align 4
  %chan_rx = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 15
  %1 = ptrtoint ptr %chan_rx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %chan_rx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_sdhi_internal_dmac_abort_dma(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %chan_tx.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 16
  %2 = ptrtoint ptr %chan_tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan_tx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.renesas_sdhi_internal_dmac_enable_dma.exit_crit_edge, label %lor.lhs.false.i

entry.renesas_sdhi_internal_dmac_enable_dma.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %renesas_sdhi_internal_dmac_enable_dma.exit

lor.lhs.false.i:                                  ; preds = %entry
  %chan_rx.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 15
  %4 = ptrtoint ptr %chan_rx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan_rx.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.renesas_sdhi_internal_dmac_enable_dma.exit_crit_edge, label %if.end.i

lor.lhs.false.i.renesas_sdhi_internal_dmac_enable_dma.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %renesas_sdhi_internal_dmac_enable_dma.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 2112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 2116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #5, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #5, !srcloc !98
  %enable5.i = getelementptr i8, ptr %1, i32 60
  %8 = ptrtoint ptr %enable5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable5.i, align 4
  %tobool6.not.i = icmp eq ptr %9, null
  br i1 %tobool6.not.i, label %if.end.i.renesas_sdhi_internal_dmac_enable_dma.exit_crit_edge, label %if.then7.i

if.end.i.renesas_sdhi_internal_dmac_enable_dma.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %renesas_sdhi_internal_dmac_enable_dma.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %9(ptr noundef %host, i1 noundef zeroext false) #5
  br label %renesas_sdhi_internal_dmac_enable_dma.exit

renesas_sdhi_internal_dmac_enable_dma.exit:       ; preds = %if.then7.i, %if.end.i.renesas_sdhi_internal_dmac_enable_dma.exit_crit_edge, %lor.lhs.false.i.renesas_sdhi_internal_dmac_enable_dma.exit_crit_edge, %entry.renesas_sdhi_internal_dmac_enable_dma.exit_crit_edge
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 2096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %add.ptr.i.i5 = getelementptr i8, ptr %11, i32 2100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i5, i32 0) #5, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -196609) #5, !srcloc !98
  %12 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host, align 4
  %add.ptr.i6 = getelementptr i8, ptr %13, i32 2096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %add.ptr.i.i7 = getelementptr i8, ptr %13, i32 2100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7, i32 0) #5, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 -1) #5, !srcloc !98
  tail call void @_clear_bit(i32 noundef 1, ptr noundef nonnull @global_flags) #5
  %14 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata.i, align 4
  %16 = ptrtoint ptr %chan_tx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chan_tx.i, align 4
  %tobool.not.i10 = icmp eq ptr %17, null
  br i1 %tobool.not.i10, label %renesas_sdhi_internal_dmac_enable_dma.exit.renesas_sdhi_internal_dmac_enable_dma.exit18_crit_edge, label %lor.lhs.false.i13

renesas_sdhi_internal_dmac_enable_dma.exit.renesas_sdhi_internal_dmac_enable_dma.exit18_crit_edge: ; preds = %renesas_sdhi_internal_dmac_enable_dma.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %renesas_sdhi_internal_dmac_enable_dma.exit18

lor.lhs.false.i13:                                ; preds = %renesas_sdhi_internal_dmac_enable_dma.exit
  %chan_rx.i11 = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 15
  %18 = ptrtoint ptr %chan_rx.i11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chan_rx.i11, align 4
  %tobool1.not.i12 = icmp eq ptr %19, null
  br i1 %tobool1.not.i12, label %lor.lhs.false.i13.renesas_sdhi_internal_dmac_enable_dma.exit18_crit_edge, label %if.end.i14

lor.lhs.false.i13.renesas_sdhi_internal_dmac_enable_dma.exit18_crit_edge: ; preds = %lor.lhs.false.i13
  call void @__sanitizer_cov_trace_pc() #7
  br label %renesas_sdhi_internal_dmac_enable_dma.exit18

if.end.i14:                                       ; preds = %lor.lhs.false.i13
  %enable5.i15 = getelementptr i8, ptr %15, i32 60
  %20 = ptrtoint ptr %enable5.i15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %enable5.i15, align 4
  %tobool6.not.i16 = icmp eq ptr %21, null
  br i1 %tobool6.not.i16, label %if.end.i14.renesas_sdhi_internal_dmac_enable_dma.exit18_crit_edge, label %if.then7.i17

if.end.i14.renesas_sdhi_internal_dmac_enable_dma.exit18_crit_edge: ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #7
  br label %renesas_sdhi_internal_dmac_enable_dma.exit18

if.then7.i17:                                     ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %21(ptr noundef %host, i1 noundef zeroext true) #5
  br label %renesas_sdhi_internal_dmac_enable_dma.exit18

renesas_sdhi_internal_dmac_enable_dma.exit18:     ; preds = %if.then7.i17, %if.end.i14.renesas_sdhi_internal_dmac_enable_dma.exit18_crit_edge, %lor.lhs.false.i13.renesas_sdhi_internal_dmac_enable_dma.exit18_crit_edge, %renesas_sdhi_internal_dmac_enable_dma.exit.renesas_sdhi_internal_dmac_enable_dma.exit18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_sdhi_internal_dmac_dataend_dma(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %state.i = getelementptr i8, ptr %1, i32 124
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dma_complete = getelementptr i8, ptr %1, i32 120
  tail call void @__tasklet_schedule(ptr noundef %dma_complete) #5
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_sdhi_internal_dmac_end_dma(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call fastcc zeroext i1 @renesas_sdhi_internal_dmac_complete(ptr noundef %host)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_sdhi_internal_dmac_complete_tasklet_fn(i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %lock = getelementptr inbounds %struct.tmio_mmc_host, ptr %0, i32 0, i32 27
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %call = tail call fastcc zeroext i1 @renesas_sdhi_internal_dmac_complete(ptr noundef %0)
  br i1 %call, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tmio_mmc_do_data_irq(ptr noundef %0) #5
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_sdhi_internal_dmac_issue_tasklet_fn(i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  tail call void @tmio_mmc_enable_mmc_irqs(ptr noundef %0, i32 noundef 4) #5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 2088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 2092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #5, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #5, !srcloc !98
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_sdhi_internal_dmac_pre_req(ptr nocapture noundef readonly %mmc, ptr nocapture noundef readonly %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %host_cookie = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %host_cookie to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %host_cookie, align 4
  %pdev.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 8
  %3 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sg_len.i, align 4
  %flags.i.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  %call1.i = tail call i32 @dma_map_sg_attrs(ptr noundef %dev.i, ptr noundef %6, i32 noundef %8, i32 noundef %cond.i.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %11 = ptrtoint ptr %host_cookie to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %host_cookie, align 4
  %12 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sg.i, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_address.i, align 4
  %and.i = and i32 %15, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp6.i = icmp eq i32 %and.i, 0
  br i1 %cmp6.i, label %if.end3.i.cleanup_crit_edge, label %if.then7.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sg_len.i, align 4
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i.i, align 4
  %and.i.i.i = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev.i.i, ptr noundef %13, i32 noundef %19, i32 noundef %cond.i.i.i, i32 noundef 0) #5
  %22 = ptrtoint ptr %host_cookie to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %host_cookie, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7.i, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @renesas_sdhi_internal_dmac_post_req(ptr nocapture noundef readonly %mmc, ptr nocapture noundef readonly %mrq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %host_cookie.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %host_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %host_cookie.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not.i = icmp eq i32 %3, 0
  br i1 %cmp1.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 8
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sg_len.i, align 4
  %flags.i.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev.i, ptr noundef %7, i32 noundef %9, i32 noundef %cond.i.i, i32 noundef 0) #5
  %12 = ptrtoint ptr %host_cookie.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %host_cookie.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @renesas_sdhi_internal_dmac_complete(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_on = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 14
  %0 = ptrtoint ptr %dma_on to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dma_on, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %pdata.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 13
  %6 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata.i, align 4
  %chan_tx.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 16
  %8 = ptrtoint ptr %chan_tx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan_tx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end3.renesas_sdhi_internal_dmac_enable_dma.exit_crit_edge, label %lor.lhs.false.i

if.end3.renesas_sdhi_internal_dmac_enable_dma.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %renesas_sdhi_internal_dmac_enable_dma.exit

lor.lhs.false.i:                                  ; preds = %if.end3
  %chan_rx.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 15
  %10 = ptrtoint ptr %chan_rx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan_rx.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.renesas_sdhi_internal_dmac_enable_dma.exit_crit_edge, label %if.end.i

lor.lhs.false.i.renesas_sdhi_internal_dmac_enable_dma.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %renesas_sdhi_internal_dmac_enable_dma.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %12 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 2112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 2116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #5, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #5, !srcloc !98
  %enable5.i = getelementptr i8, ptr %7, i32 60
  %14 = ptrtoint ptr %enable5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enable5.i, align 4
  %tobool6.not.i = icmp eq ptr %15, null
  br i1 %tobool6.not.i, label %if.end.i.renesas_sdhi_internal_dmac_enable_dma.exit_crit_edge, label %if.then7.i

if.end.i.renesas_sdhi_internal_dmac_enable_dma.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %renesas_sdhi_internal_dmac_enable_dma.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %15(ptr noundef %host, i1 noundef zeroext false) #5
  br label %renesas_sdhi_internal_dmac_enable_dma.exit

renesas_sdhi_internal_dmac_enable_dma.exit:       ; preds = %if.then7.i, %if.end.i.renesas_sdhi_internal_dmac_enable_dma.exit_crit_edge, %lor.lhs.false.i.renesas_sdhi_internal_dmac_enable_dma.exit_crit_edge, %if.end3.renesas_sdhi_internal_dmac_enable_dma.exit_crit_edge
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %host_cookie.i = getelementptr inbounds %struct.mmc_data, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %host_cookie.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %host_cookie.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp3.i = icmp eq i32 %19, 2
  br i1 %cmp3.i, label %if.then.i, label %renesas_sdhi_internal_dmac_enable_dma.exit.renesas_sdhi_internal_dmac_unmap.exit_crit_edge

renesas_sdhi_internal_dmac_enable_dma.exit.renesas_sdhi_internal_dmac_unmap.exit_crit_edge: ; preds = %renesas_sdhi_internal_dmac_enable_dma.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %renesas_sdhi_internal_dmac_unmap.exit

if.then.i:                                        ; preds = %renesas_sdhi_internal_dmac_enable_dma.exit
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i = getelementptr inbounds %struct.tmio_mmc_host, ptr %host, i32 0, i32 12
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %17, i32 0, i32 12
  %22 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %17, i32 0, i32 10
  %24 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sg_len.i, align 4
  %flags.i.i = getelementptr inbounds %struct.mmc_data, ptr %17, i32 0, i32 6
  %26 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev.i, ptr noundef %23, i32 noundef %25, i32 noundef %cond.i.i, i32 noundef 0) #5
  %28 = ptrtoint ptr %host_cookie.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %host_cookie.i, align 4
  br label %renesas_sdhi_internal_dmac_unmap.exit

renesas_sdhi_internal_dmac_unmap.exit:            ; preds = %if.then.i, %renesas_sdhi_internal_dmac_enable_dma.exit.renesas_sdhi_internal_dmac_unmap.exit_crit_edge
  br i1 %tobool5.not, label %renesas_sdhi_internal_dmac_unmap.exit.if.end10_crit_edge, label %if.then9

renesas_sdhi_internal_dmac_unmap.exit.if.end10_crit_edge: ; preds = %renesas_sdhi_internal_dmac_unmap.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then9:                                         ; preds = %renesas_sdhi_internal_dmac_unmap.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_clear_bit(i32 noundef 1, ptr noundef nonnull @global_flags) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %renesas_sdhi_internal_dmac_unmap.exit.if.end10_crit_edge
  %29 = ptrtoint ptr %dma_on to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %dma_on, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end10 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_mmc_do_data_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tmio_mmc_enable_mmc_irqs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmio_mmc_host_runtime_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tmio_mmc_host_runtime_resume(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__initcall__kmod_renesas_sdhi_internal_dmac__318_581_renesas_internal_dmac_sdhi_driver_init6, !1, !"__initcall__kmod_renesas_sdhi_internal_dmac__318_581_renesas_internal_dmac_sdhi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 581, i32 1}
!2 = !{ptr @__exitcall_renesas_internal_dmac_sdhi_driver_exit, !1, !"__exitcall_renesas_internal_dmac_sdhi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description319, !4, !"__UNIQUE_ID_description319", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 583, i32 1}
!5 = !{ptr @__UNIQUE_ID_author320, !6, !"__UNIQUE_ID_author320", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 584, i32 1}
!7 = !{ptr @__UNIQUE_ID_file321, !8, !"__UNIQUE_ID_file321", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 585, i32 1}
!9 = !{ptr @__UNIQUE_ID_license322, !8, !"__UNIQUE_ID_license322", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 572, i32 11}
!12 = !{ptr @renesas_internal_dmac_sdhi_driver, !13, !"renesas_internal_dmac_sdhi_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 570, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 528, i32 14}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 530, i32 37}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 530, i32 14}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 532, i32 37}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 532, i32 14}
!24 = !{ptr @soc_dma_quirks, !25, !"soc_dma_quirks", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 527, i32 42}
!26 = !{ptr @global_flags, !27, !"global_flags", i1 false, i1 false}
!27 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 73, i32 22}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 210, i32 38}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 210, i32 14}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 212, i32 37}
!34 = !{ptr @sdhi_quirks_match, !35, !"sdhi_quirks_match", i1 false, i1 false}
!35 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 209, i32 42}
!36 = !{ptr @sdhi_quirks_4tap_nohs400, !37, !"sdhi_quirks_4tap_nohs400", i1 false, i1 false}
!37 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 167, i32 41}
!38 = !{ptr @sdhi_quirks_4tap, !39, !"sdhi_quirks_4tap", i1 false, i1 false}
!39 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 172, i32 41}
!40 = !{ptr @sdhi_quirks_r8a7796_es13, !41, !"sdhi_quirks_r8a7796_es13", i1 false, i1 false}
!41 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 189, i32 41}
!42 = !{ptr @r8a7796_es13_calib_table, !43, !"r8a7796_es13_calib_table", i1 false, i1 false}
!43 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 146, i32 17}
!44 = !{ptr @renesas_sdhi_internal_dmac_dma_ops, !45, !"renesas_sdhi_internal_dmac_dma_ops", i1 false, i1 false}
!45 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 513, i32 38}
!46 = !{ptr @renesas_sdhi_internal_dmac_of_match, !47, !"renesas_sdhi_internal_dmac_of_match", i1 false, i1 false}
!47 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 251, i32 34}
!48 = !{ptr @of_rza2_compatible, !49, !"of_rza2_compatible", i1 false, i1 false}
!49 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 111, i32 54}
!50 = !{ptr @of_data_rza2, !51, !"of_data_rza2", i1 false, i1 false}
!51 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 96, i32 42}
!52 = !{ptr @rcar_gen3_scc_taps, !53, !"rcar_gen3_scc_taps", i1 false, i1 false}
!53 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 88, i32 32}
!54 = !{ptr @of_rcar_gen3_compatible, !55, !"of_rcar_gen3_compatible", i1 false, i1 false}
!55 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 247, i32 54}
!56 = !{ptr @of_data_rcar_gen3, !57, !"of_data_rcar_gen3", i1 false, i1 false}
!57 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 115, i32 42}
!58 = !{ptr @of_r8a7795_compatible, !59, !"of_r8a7795_compatible", i1 false, i1 false}
!59 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 218, i32 54}
!60 = !{ptr @sdhi_quirks_bad_taps2367, !61, !"sdhi_quirks_bad_taps2367", i1 false, i1 false}
!61 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 185, i32 41}
!62 = !{ptr @of_r8a77961_compatible, !63, !"of_r8a77961_compatible", i1 false, i1 false}
!63 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 223, i32 54}
!64 = !{ptr @sdhi_quirks_bad_taps1357, !65, !"sdhi_quirks_bad_taps1357", i1 false, i1 false}
!65 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 181, i32 41}
!66 = !{ptr @of_r8a77965_compatible, !67, !"of_r8a77965_compatible", i1 false, i1 false}
!67 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 228, i32 54}
!68 = !{ptr @sdhi_quirks_r8a77965, !69, !"sdhi_quirks_r8a77965", i1 false, i1 false}
!69 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 195, i32 41}
!70 = !{ptr @r8a77965_calib_table, !71, !"r8a77965_calib_table", i1 false, i1 false}
!71 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 153, i32 17}
!72 = !{ptr @of_r8a77970_compatible, !73, !"of_r8a77970_compatible", i1 false, i1 false}
!73 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 233, i32 54}
!74 = !{ptr @of_data_rcar_gen3_no_fallback, !75, !"of_data_rcar_gen3_no_fallback", i1 false, i1 false}
!75 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 131, i32 42}
!76 = !{ptr @of_r8a77980_compatible, !77, !"of_r8a77980_compatible", i1 false, i1 false}
!77 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 237, i32 54}
!78 = !{ptr @sdhi_quirks_nohs400, !79, !"sdhi_quirks_nohs400", i1 false, i1 false}
!79 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 177, i32 41}
!80 = !{ptr @of_r8a77990_compatible, !81, !"of_r8a77990_compatible", i1 false, i1 false}
!81 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 242, i32 54}
!82 = !{ptr @sdhi_quirks_r8a77990, !83, !"sdhi_quirks_r8a77990", i1 false, i1 false}
!83 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 200, i32 41}
!84 = !{ptr @r8a77990_calib_table, !85, !"r8a77990_calib_table", i1 false, i1 false}
!85 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 160, i32 17}
!86 = !{ptr @renesas_sdhi_internal_dmac_dev_pm_ops, !87, !"renesas_sdhi_internal_dmac_dev_pm_ops", i1 false, i1 false}
!87 = !{!"../drivers/mmc/host/renesas_sdhi_internal_dmac.c", i32 562, i32 32}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i64 2153822993}
!98 = !{i64 6233187}
!99 = !{i64 2153823378}
!100 = !{i8 0, i8 2}
