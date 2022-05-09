; ModuleID = '/llk/IR_all_yes/drivers/remoteproc/imx_dsp_rproc.c_pt.bc'
source_filename = "../drivers/remoteproc/imx_dsp_rproc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rproc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.imx_dsp_rproc_dcfg = type { ptr, ptr }
%struct.imx_rproc_dcfg = type { i32, i32, i32, i32, ptr, i32, i32 }
%struct.imx_rproc_att = type { i32, i32, i32, i32 }
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
%struct.rproc = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.device, %struct.atomic_t, i32, i32, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, %struct.list_head, i64, %struct.list_head, %struct.list_head, %struct.idr, i32, %struct.work_struct, i32, i8, i32, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, i32, i8, i16, %struct.cdev, i8 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.imx_dsp_rproc = type { ptr, ptr, ptr, [5 x %struct.clk_bulk_data], %struct.mbox_client, %struct.mbox_client, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, i32, i32 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.of_phandle_iterator = type { ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.reserved_mem = type { ptr, i32, i32, ptr, i32, i32, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.elf32_hdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf64_hdr = type { [16 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf32_phdr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.elf64_phdr = type { i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.arm_smccc_res = type { i32, i32, i32, i32 }

@__initcall__kmod_imx_dsp_rproc__238_1202_imx_dsp_rproc_driver_init6 = internal global ptr @imx_dsp_rproc_driver_init, section ".initcall6.init", align 4
@imx_dsp_rproc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_dsp_rproc_probe, ptr @imx_dsp_rproc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_dsp_rproc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_dsp_rproc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx_dsp_rproc_driver_exit = internal global ptr @imx_dsp_rproc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file239 = internal constant [52 x i8] c"imx_dsp_rproc.file=drivers/remoteproc/imx_dsp_rproc\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [29 x i8] c"imx_dsp_rproc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [73 x i8] c"imx_dsp_rproc.description=i.MX HiFi Core Remote Processor Control Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [59 x i8] c"imx_dsp_rproc.author=Shengjiu Wang <shengjiu.wang@nxp.com>\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"imx-dsp-rproc\00", [18 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qxp-hifi4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx_dsp_rproc_cfg_imx8qxp }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qm-hifi4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx_dsp_rproc_cfg_imx8qm }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mp-hifi4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx_dsp_rproc_cfg_imx8mp }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8ulp-hifi4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx_dsp_rproc_cfg_imx8ulp }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @imx_dsp_suspend, ptr @imx_dsp_resume, ptr @imx_dsp_suspend, ptr @imx_dsp_resume, ptr @imx_dsp_suspend, ptr @imx_dsp_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_dsp_runtime_suspend, ptr @imx_dsp_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 972, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to parse firmware-name property, ret = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imx_dsp_rproc_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/remoteproc/imx_dsp_rproc.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_probe._entry_ptr = internal global ptr @imx_dsp_rproc_probe._entry, section ".printk_index", align 4
@imx_dsp_rproc_ops = internal constant { %struct.rproc_ops, [60 x i8] } { %struct.rproc_ops { ptr @imx_dsp_rproc_prepare, ptr @imx_dsp_rproc_unprepare, ptr @imx_dsp_rproc_start, ptr @imx_dsp_rproc_stop, ptr null, ptr null, ptr @imx_dsp_rproc_kick, ptr null, ptr @rproc_elf_load_rsc_table, ptr null, ptr null, ptr null, ptr @imx_dsp_rproc_elf_load_segments, ptr @rproc_elf_sanity_check, ptr @rproc_elf_get_boot_addr, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&priv->rproc_work)\00", [59 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 991, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed on imx_dsp_rproc_detect_mode\0A\00", [59 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_probe._entry_ptr.9 = internal global ptr @imx_dsp_rproc_probe._entry.7, section ".printk_index", align 4
@imx_dsp_rproc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 998, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed on imx_dsp_attach_pm_domains\0A\00", [59 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_probe._entry_ptr.12 = internal global ptr @imx_dsp_rproc_probe._entry.10, section ".printk_index", align 4
@imx_dsp_rproc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1004, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed on imx_dsp_rproc_clk_get\0A\00", [63 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_probe._entry_ptr.15 = internal global ptr @imx_dsp_rproc_probe._entry.13, section ".printk_index", align 4
@imx_dsp_rproc_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1012, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rproc_add failed\0A\00", [46 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_probe._entry_ptr.18 = internal global ptr @imx_dsp_rproc_probe._entry.16, section ".printk_index", align 4
@imx_dsp_rproc_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 755, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed on imx_dsp_rproc_add_carveout\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"imx_dsp_rproc_prepare\00", [42 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_prepare._entry_ptr = internal global ptr @imx_dsp_rproc_prepare._entry, section ".printk_index", align 4
@imx_dsp_rproc_add_carveout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 597, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to map memory %p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"imx_dsp_rproc_add_carveout\00", [37 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_add_carveout._entry_ptr = internal global ptr @imx_dsp_rproc_add_carveout._entry, section ".printk_index", align 4
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dsp_mem\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memory-region\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdev0buffer\00", [20 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_add_carveout._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.3, i32 624, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to acquire memory-region\0A\00", [63 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_add_carveout._entry_ptr.28 = internal global ptr @imx_dsp_rproc_add_carveout._entry.26, section ".printk_index", align 4
@imx_dsp_rproc_add_carveout._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 633, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_add_carveout._entry_ptr.30 = internal global ptr @imx_dsp_rproc_add_carveout._entry.29, section ".printk_index", align 4
@imx_dsp_rproc_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 331, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable remote core!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imx_dsp_rproc_start\00", [44 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_start._entry_ptr = internal global ptr @imx_dsp_rproc_start._entry, section ".printk_index", align 4
@imx_dsp_rproc_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 374, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to stop remote core\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imx_dsp_rproc_stop\00", [45 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_stop._entry_ptr = internal global ptr @imx_dsp_rproc_stop._entry, section ".printk_index", align 4
@imx_dsp_rproc_kick._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 790, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No initialized mbox tx channel\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imx_dsp_rproc_kick\00", [45 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_kick._entry_ptr = internal global ptr @imx_dsp_rproc_kick._entry, section ".printk_index", align 4
@imx_dsp_rproc_kick._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.3, i32 802, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: failed (%d, err:%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_kick._entry_ptr.39 = internal global ptr @imx_dsp_rproc_kick._entry.37, section ".printk_index", align 4
@imx_dsp_rproc_elf_load_segments.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 -83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"imx_dsp_rproc\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"imx_dsp_rproc_elf_load_segments\00", [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"phdr: type %d da 0x%llx memsz 0x%llx filesz 0x%llx\0A\00", [44 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_elf_load_segments._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.3, i32 699, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bad phdr filesz 0x%llx memsz 0x%llx\0A\00", [59 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_elf_load_segments._entry_ptr = internal global ptr @imx_dsp_rproc_elf_load_segments._entry, section ".printk_index", align 4
@imx_dsp_rproc_elf_load_segments._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.41, ptr @.str.3, i32 706, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"truncated fw: need 0x%llx avail 0x%zx\0A\00", [57 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_elf_load_segments._entry_ptr.46 = internal global ptr @imx_dsp_rproc_elf_load_segments._entry.44, section ".printk_index", align 4
@imx_dsp_rproc_elf_load_segments._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.41, ptr @.str.3, i32 713, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"size (%llx) does not fit in size_t type\0A\00", [55 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_elf_load_segments._entry_ptr.49 = internal global ptr @imx_dsp_rproc_elf_load_segments._entry.47, section ".printk_index", align 4
@imx_dsp_rproc_elf_load_segments._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.41, ptr @.str.3, i32 722, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bad phdr da 0x%llx mem 0x%llx\0A\00", [33 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_elf_load_segments._entry_ptr.52 = internal global ptr @imx_dsp_rproc_elf_load_segments._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl,dsp-ctrl\00", [19 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_detect_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 925, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to find syscon\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"imx_dsp_rproc_detect_mode\00", [38 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_detect_mode._entry_ptr = internal global ptr @imx_dsp_rproc_detect_mode._entry, section ".printk_index", align 4
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"power-domains\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"#power-domain-cells\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ocram\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mu\00", [29 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_cfg_imx8qxp = internal constant { %struct.imx_dsp_rproc_dcfg, [24 x i8] } { %struct.imx_dsp_rproc_dcfg { ptr @dsp_rproc_cfg_imx8qxp, ptr null }, [24 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_cfg_imx8qm = internal constant { %struct.imx_dsp_rproc_dcfg, [24 x i8] } { %struct.imx_dsp_rproc_dcfg { ptr @dsp_rproc_cfg_imx8qm, ptr null }, [24 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_cfg_imx8mp = internal constant { %struct.imx_dsp_rproc_dcfg, [24 x i8] } { %struct.imx_dsp_rproc_dcfg { ptr @dsp_rproc_cfg_imx8mp, ptr @imx8mp_dsp_reset }, [24 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_cfg_imx8ulp = internal constant { %struct.imx_dsp_rproc_dcfg, [24 x i8] } { %struct.imx_dsp_rproc_dcfg { ptr @dsp_rproc_cfg_imx8ulp, ptr @imx8ulp_dsp_reset }, [24 x i8] zeroinitializer }, align 32
@dsp_rproc_cfg_imx8qxp = internal constant { %struct.imx_rproc_dcfg, [36 x i8] } { %struct.imx_rproc_dcfg { i32 0, i32 0, i32 0, i32 0, ptr @imx_dsp_rproc_att_imx8qxp, i32 5, i32 3 }, [36 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_att_imx8qxp = internal constant { [5 x %struct.imx_rproc_att], [48 x i8] } { [5 x %struct.imx_rproc_att] [%struct.imx_rproc_att { i32 1500413952, i32 1500413952, i32 32768, i32 -2147483648 }, %struct.imx_rproc_att { i32 1500446720, i32 1500446720, i32 32768, i32 -2147483648 }, %struct.imx_rproc_att { i32 1500479488, i32 1500479488, i32 2048, i32 -1073741824 }, %struct.imx_rproc_att { i32 1500512256, i32 1500512256, i32 458752, i32 -2147483648 }, %struct.imx_rproc_att { i32 -2147483648, i32 -2147483648, i32 1610612736, i32 0 }], [48 x i8] zeroinitializer }, align 32
@dsp_rproc_cfg_imx8qm = internal constant { %struct.imx_rproc_dcfg, [36 x i8] } { %struct.imx_rproc_dcfg { i32 0, i32 0, i32 0, i32 0, ptr @imx_dsp_rproc_att_imx8qm, i32 5, i32 3 }, [36 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_att_imx8qm = internal constant { [5 x %struct.imx_rproc_att], [48 x i8] } { [5 x %struct.imx_rproc_att] [%struct.imx_rproc_att { i32 1500413952, i32 1433305088, i32 32768, i32 -2147483648 }, %struct.imx_rproc_att { i32 1500446720, i32 1433337856, i32 32768, i32 -2147483648 }, %struct.imx_rproc_att { i32 1500479488, i32 1433370624, i32 2048, i32 -1073741824 }, %struct.imx_rproc_att { i32 1433403392, i32 1433403392, i32 458752, i32 -2147483648 }, %struct.imx_rproc_att { i32 -2147483648, i32 -2147483648, i32 1610612736, i32 0 }], [48 x i8] zeroinitializer }, align 32
@dsp_rproc_cfg_imx8mp = internal constant { %struct.imx_rproc_dcfg, [36 x i8] } { %struct.imx_rproc_dcfg { i32 264, i32 32, i32 0, i32 32, ptr @imx_dsp_rproc_att_imx8mp, i32 5, i32 1 }, [36 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_att_imx8mp = internal constant { [5 x %struct.imx_rproc_att], [48 x i8] } { [5 x %struct.imx_rproc_att] [%struct.imx_rproc_att { i32 997097472, i32 997097472, i32 32768, i32 -2147483648 }, %struct.imx_rproc_att { i32 997130240, i32 997130240, i32 32768, i32 -2147483648 }, %struct.imx_rproc_att { i32 997163008, i32 997163008, i32 2048, i32 -1073741824 }, %struct.imx_rproc_att { i32 997195776, i32 997195776, i32 262144, i32 -2147483648 }, %struct.imx_rproc_att { i32 1073741824, i32 1073741824, i32 -2147483648, i32 0 }], [48 x i8] zeroinitializer }, align 32
@dsp_rproc_cfg_imx8ulp = internal constant { %struct.imx_rproc_dcfg, [36 x i8] } { %struct.imx_rproc_dcfg { i32 8, i32 8192, i32 0, i32 8192, ptr @imx_dsp_rproc_att_imx8ulp, i32 4, i32 1 }, [36 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_att_imx8ulp = internal constant { [4 x %struct.imx_rproc_att], [32 x i8] } { [4 x %struct.imx_rproc_att] [%struct.imx_rproc_att { i32 555155456, i32 555155456, i32 65536, i32 -1073741824 }, %struct.imx_rproc_att { i32 555220992, i32 555220992, i32 65536, i32 -2147483648 }, %struct.imx_rproc_att { i32 201326592, i32 -2147483648, i32 268435456, i32 0 }, %struct.imx_rproc_att { i32 805306368, i32 -1879048192, i32 268435456, i32 0 }], [32 x i8] zeroinitializer }, align 32
@imx_dsp_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 1125, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PM mbox_send_message failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx_dsp_suspend\00", [16 x i8] zeroinitializer }, align 32
@imx_dsp_suspend._entry_ptr = internal global ptr @imx_dsp_suspend._entry, section ".printk_index", align 4
@imx_dsp_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 1166, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"load firmware failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx_dsp_resume\00", [17 x i8] zeroinitializer }, align 32
@imx_dsp_resume._entry_ptr = internal global ptr @imx_dsp_resume._entry, section ".printk_index", align 4
@imx_dsp_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 1057, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed on imx_dsp_rproc_mbox_init\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imx_dsp_runtime_resume\00", [41 x i8] zeroinitializer }, align 32
@imx_dsp_runtime_resume._entry_ptr = internal global ptr @imx_dsp_runtime_resume._entry, section ".printk_index", align 4
@imx_dsp_runtime_resume._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.3, i32 1063, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed on clk_bulk_prepare_enable\0A\00", [61 x i8] zeroinitializer }, align 32
@imx_dsp_runtime_resume._entry_ptr.72 = internal global ptr @imx_dsp_runtime_resume._entry.70, section ".printk_index", align 4
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mbox-names\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_mbox_init.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.75, ptr @.str.3, ptr @.str.76, i8 0, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"imx_dsp_rproc_mbox_init\00", [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to request tx mailbox channel: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_mbox_init.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.75, ptr @.str.3, ptr @.str.78, i8 0, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to request rx mailbox channel: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rxdb\00", [27 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_mbox_init.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.75, ptr @.str.3, ptr @.str.80, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to request mbox chan rxdb, ret %d\0A\00", [54 x i8] zeroinitializer }, align 32
@imx_dsp_rproc_rx_tx_callback.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.81, ptr @.str.3, ptr @.str.82, i8 0, i8 114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"imx_dsp_rproc_rx_tx_callback\00", [35 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mbox msg: 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 65298, i64 65300]
@___asan_gen_.86 = private unnamed_addr constant [21 x i8] c"imx_dsp_rproc_driver\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1193, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1197, i32 11 }
@___asan_gen_.92 = private unnamed_addr constant [23 x i8] c"imx_dsp_rproc_of_match\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1184, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant [21 x i8] c"imx_dsp_rproc_pm_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1178, i32 32 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 971, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [18 x i8] c"imx_dsp_rproc_ops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 805, i32 31 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 987, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 991, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 998, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1004, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1012, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 755, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 597, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 603, i32 36 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 613, i32 36 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 619, i32 30 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 624, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 633, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 331, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 374, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 790, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 802, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 694, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 698, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 705, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 712, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 721, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 923, i32 58 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 925, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 830, i32 14 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 831, i32 14 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 941, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 941, i32 10 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 941, i32 19 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 941, i32 28 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 941, i32 35 }
@___asan_gen_.284 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 87, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant [26 x i8] c"imx_dsp_rproc_cfg_imx8qxp\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 265, i32 40 }
@___asan_gen_.293 = private unnamed_addr constant [25 x i8] c"imx_dsp_rproc_cfg_imx8qm\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 276, i32 40 }
@___asan_gen_.296 = private unnamed_addr constant [25 x i8] c"imx_dsp_rproc_cfg_imx8mp\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 237, i32 40 }
@___asan_gen_.299 = private unnamed_addr constant [26 x i8] c"imx_dsp_rproc_cfg_imx8ulp\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 253, i32 40 }
@___asan_gen_.302 = private unnamed_addr constant [22 x i8] c"dsp_rproc_cfg_imx8qxp\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 259, i32 36 }
@___asan_gen_.305 = private unnamed_addr constant [26 x i8] c"imx_dsp_rproc_att_imx8qxp\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 146, i32 35 }
@___asan_gen_.308 = private unnamed_addr constant [21 x i8] c"dsp_rproc_cfg_imx8qm\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 270, i32 36 }
@___asan_gen_.311 = private unnamed_addr constant [25 x i8] c"imx_dsp_rproc_att_imx8qm\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 136, i32 35 }
@___asan_gen_.314 = private unnamed_addr constant [21 x i8] c"dsp_rproc_cfg_imx8mp\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 227, i32 36 }
@___asan_gen_.317 = private unnamed_addr constant [25 x i8] c"imx_dsp_rproc_att_imx8mp\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 156, i32 35 }
@___asan_gen_.320 = private unnamed_addr constant [22 x i8] c"dsp_rproc_cfg_imx8ulp\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 243, i32 36 }
@___asan_gen_.323 = private unnamed_addr constant [26 x i8] c"imx_dsp_rproc_att_imx8ulp\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 166, i32 35 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1125, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1166, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1057, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 1063, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 500, i32 37 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 511, i32 48 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 514, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 520, i32 48 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 523, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 536, i32 50 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 539, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.387 = private constant [38 x i8] c"../drivers/remoteproc/imx_dsp_rproc.c\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 456, i32 2 }
@llvm.compiler.used = appending global [130 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_imx_dsp_rproc_driver_exit, ptr @__initcall__kmod_imx_dsp_rproc__238_1202_imx_dsp_rproc_driver_init6, ptr @imx_dsp_resume._entry, ptr @imx_dsp_resume._entry_ptr, ptr @imx_dsp_rproc_add_carveout._entry, ptr @imx_dsp_rproc_add_carveout._entry.26, ptr @imx_dsp_rproc_add_carveout._entry.29, ptr @imx_dsp_rproc_add_carveout._entry_ptr, ptr @imx_dsp_rproc_add_carveout._entry_ptr.28, ptr @imx_dsp_rproc_add_carveout._entry_ptr.30, ptr @imx_dsp_rproc_detect_mode._entry, ptr @imx_dsp_rproc_detect_mode._entry_ptr, ptr @imx_dsp_rproc_driver_exit, ptr @imx_dsp_rproc_elf_load_segments._entry, ptr @imx_dsp_rproc_elf_load_segments._entry.44, ptr @imx_dsp_rproc_elf_load_segments._entry.47, ptr @imx_dsp_rproc_elf_load_segments._entry.50, ptr @imx_dsp_rproc_elf_load_segments._entry_ptr, ptr @imx_dsp_rproc_elf_load_segments._entry_ptr.46, ptr @imx_dsp_rproc_elf_load_segments._entry_ptr.49, ptr @imx_dsp_rproc_elf_load_segments._entry_ptr.52, ptr @imx_dsp_rproc_kick._entry, ptr @imx_dsp_rproc_kick._entry.37, ptr @imx_dsp_rproc_kick._entry_ptr, ptr @imx_dsp_rproc_kick._entry_ptr.39, ptr @imx_dsp_rproc_prepare._entry, ptr @imx_dsp_rproc_prepare._entry_ptr, ptr @imx_dsp_rproc_probe._entry, ptr @imx_dsp_rproc_probe._entry.10, ptr @imx_dsp_rproc_probe._entry.13, ptr @imx_dsp_rproc_probe._entry.16, ptr @imx_dsp_rproc_probe._entry.7, ptr @imx_dsp_rproc_probe._entry_ptr, ptr @imx_dsp_rproc_probe._entry_ptr.12, ptr @imx_dsp_rproc_probe._entry_ptr.15, ptr @imx_dsp_rproc_probe._entry_ptr.18, ptr @imx_dsp_rproc_probe._entry_ptr.9, ptr @imx_dsp_rproc_start._entry, ptr @imx_dsp_rproc_start._entry_ptr, ptr @imx_dsp_rproc_stop._entry, ptr @imx_dsp_rproc_stop._entry_ptr, ptr @imx_dsp_runtime_resume._entry, ptr @imx_dsp_runtime_resume._entry.70, ptr @imx_dsp_runtime_resume._entry_ptr, ptr @imx_dsp_runtime_resume._entry_ptr.72, ptr @imx_dsp_suspend._entry, ptr @imx_dsp_suspend._entry_ptr, ptr @imx_dsp_rproc_driver, ptr @.str, ptr @imx_dsp_rproc_of_match, ptr @imx_dsp_rproc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @imx_dsp_rproc_ops, ptr @imx_dsp_rproc_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @init_completion.__key, ptr @.str.63, ptr @imx_dsp_rproc_cfg_imx8qxp, ptr @imx_dsp_rproc_cfg_imx8qm, ptr @imx_dsp_rproc_cfg_imx8mp, ptr @imx_dsp_rproc_cfg_imx8ulp, ptr @dsp_rproc_cfg_imx8qxp, ptr @imx_dsp_rproc_att_imx8qxp, ptr @dsp_rproc_cfg_imx8qm, ptr @imx_dsp_rproc_att_imx8qm, ptr @dsp_rproc_cfg_imx8mp, ptr @imx_dsp_rproc_att_imx8mp, ptr @dsp_rproc_cfg_imx8ulp, ptr @imx_dsp_rproc_att_imx8ulp, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_add_carveout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_add_carveout._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_add_carveout._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_kick._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_kick._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_elf_load_segments._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_elf_load_segments._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_elf_load_segments._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_elf_load_segments._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_detect_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_cfg_imx8qxp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_cfg_imx8qm to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_cfg_imx8mp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_cfg_imx8ulp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_rproc_cfg_imx8qxp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_att_imx8qxp to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_rproc_cfg_imx8qm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_att_imx8qm to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_rproc_cfg_imx8mp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_att_imx8mp to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_rproc_cfg_imx8ulp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_rproc_att_imx8ulp to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dsp_runtime_resume._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_dsp_rproc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_dsp_rproc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx_dsp_rproc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_dsp_rproc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_dsp_rproc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %fw_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_name) #8
  %0 = ptrtoint ptr %fw_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_name, align 4, !annotation !210
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @rproc_of_parse_firmware(ptr noundef %dev1, i32 noundef 0, ptr noundef nonnull %fw_name) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %call2) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %1 = ptrtoint ptr %fw_name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fw_name, align 4
  %call6 = call ptr @rproc_alloc(ptr noundef %dev1, ptr noundef nonnull @.str, ptr noundef nonnull @imx_dsp_rproc_ops, ptr noundef %2, i32 noundef 240) #8
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %priv10 = getelementptr inbounds %struct.rproc, ptr %call6, i32 0, i32 4
  %3 = ptrtoint ptr %priv10 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv10, align 4
  %rproc11 = getelementptr inbounds %struct.imx_dsp_rproc, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %rproc11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call6, ptr %rproc11, align 4
  %dsp_dcfg12 = getelementptr inbounds %struct.imx_dsp_rproc, ptr %4, i32 0, i32 2
  %6 = ptrtoint ptr %dsp_dcfg12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %dsp_dcfg12, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %driver_data.i, align 4
  %rproc_work = getelementptr inbounds %struct.imx_dsp_rproc, ptr %4, i32 0, i32 12
  call void @__init_work(ptr noundef %rproc_work, i32 noundef 0) #8
  %8 = ptrtoint ptr %rproc_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %rproc_work, align 4
  %lockdep_map = getelementptr inbounds %struct.imx_dsp_rproc, ptr %4, i32 0, i32 12, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @imx_dsp_rproc_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry17 = getelementptr inbounds %struct.imx_dsp_rproc, ptr %4, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry17, ptr %entry17, align 4
  %prev.i = getelementptr inbounds %struct.imx_dsp_rproc, ptr %4, i32 0, i32 12, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry17, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.imx_dsp_rproc, ptr %4, i32 0, i32 12, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @imx_dsp_rproc_vq_work, ptr %func, align 4
  %12 = ptrtoint ptr %dsp_dcfg12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dsp_dcfg12, align 4
  %14 = ptrtoint ptr %rproc11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rproc11, align 4
  %parent.i = getelementptr inbounds %struct.rproc, ptr %15, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i, align 8
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %13, align 4
  %method.i = getelementptr inbounds %struct.imx_rproc_dcfg, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %method.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %method.i, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %if.end9.err_put_rproc.sink.split_crit_edge [
    i32 3, label %sw.bb.i
    i32 1, label %sw.bb3.i
  ]

if.end9.err_put_rproc.sink.split_crit_edge:       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_put_rproc.sink.split

sw.bb.i:                                          ; preds = %if.end9
  %ipc_handle.i = getelementptr inbounds %struct.imx_dsp_rproc, ptr %4, i32 0, i32 11
  %call.i = call i32 @imx_scu_get_handle(ptr noundef %ipc_handle.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb.i.if.end27_crit_edge, label %sw.bb.i.err_put_rproc.sink.split_crit_edge

sw.bb.i.err_put_rproc.sink.split_crit_edge:       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_put_rproc.sink.split

sw.bb.i.if.end27_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

sw.bb3.i:                                         ; preds = %if.end9
  %of_node.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 27
  %23 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node.i, align 8
  %call4.i = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %24, ptr noundef nonnull @.str.53) #8
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %imx_dsp_rproc_detect_mode.exit, label %if.end8.i

if.end8.i:                                        ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call4.i, ptr %4, align 4
  br label %if.end27

imx_dsp_rproc_detect_mode.exit:                   ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.54) #11
  %26 = ptrtoint ptr %call4.i to i32
  br label %err_put_rproc.sink.split

if.end27:                                         ; preds = %if.end8.i, %sw.bb.i.if.end27_crit_edge
  %27 = ptrtoint ptr %rproc11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rproc11, align 4
  %parent.i90 = getelementptr inbounds %struct.rproc, ptr %28, i32 0, i32 6, i32 1
  %29 = ptrtoint ptr %parent.i90 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent.i90, align 8
  %of_node.i91 = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 27
  %31 = ptrtoint ptr %of_node.i91 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node.i91, align 8
  %call.i92 = call i32 @of_count_phandle_with_args(ptr noundef %32, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57) #8
  %num_domains.i = getelementptr inbounds %struct.imx_dsp_rproc, ptr %4, i32 0, i32 14
  %33 = ptrtoint ptr %num_domains.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call.i92, ptr %num_domains.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i92)
  %cmp.i = icmp slt i32 %call.i92, 2
  br i1 %cmp.i, label %if.end27.if.end34_crit_edge, label %if.end.i

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.end.i:                                         ; preds = %if.end27
  %34 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i92, i32 4) #8
  %35 = extractvalue { i32, i1 } %34, 1
  br i1 %35, label %devm_kmalloc_array.exit.thread.i, label %devm_kmalloc_array.exit.i, !prof !211

devm_kmalloc_array.exit.thread.i:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %pd_dev84.i = getelementptr inbounds %struct.imx_dsp_rproc, ptr %4, i32 0, i32 9
  br label %cleanup.sink.split.i

devm_kmalloc_array.exit.i:                        ; preds = %if.end.i
  %36 = extractvalue { i32, i1 } %34, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %30, i32 noundef %36, i32 noundef 3264) #8
  %pd_dev.i = getelementptr inbounds %struct.imx_dsp_rproc, ptr %4, i32 0, i32 9
  %37 = ptrtoint ptr %pd_dev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call5.i.i, ptr %pd_dev.i, align 4
  %tobool.not.i93 = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not.i93, label %devm_kmalloc_array.exit.i.err_put_rproc.sink.split_crit_edge, label %if.end7.i

devm_kmalloc_array.exit.i.err_put_rproc.sink.split_crit_edge: ; preds = %devm_kmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_put_rproc.sink.split

if.end7.i:                                        ; preds = %devm_kmalloc_array.exit.i
  %38 = ptrtoint ptr %num_domains.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_domains.i, align 4
  %40 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %39, i32 4) #8
  %41 = extractvalue { i32, i1 } %40, 1
  br i1 %41, label %devm_kmalloc_array.exit82.thread.i, label %devm_kmalloc_array.exit82.i, !prof !211

devm_kmalloc_array.exit82.thread.i:               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %pd_dev_link88.i = getelementptr inbounds %struct.imx_dsp_rproc, ptr %4, i32 0, i32 10
  br label %cleanup.sink.split.i

devm_kmalloc_array.exit82.i:                      ; preds = %if.end7.i
  %42 = extractvalue { i32, i1 } %40, 0
  %call5.i79.i = call noalias ptr @devm_kmalloc(ptr noundef %30, i32 noundef %42, i32 noundef 3264) #8
  %pd_dev_link.i = getelementptr inbounds %struct.imx_dsp_rproc, ptr %4, i32 0, i32 10
  %43 = ptrtoint ptr %pd_dev_link.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call5.i79.i, ptr %pd_dev_link.i, align 4
  %tobool11.not.i = icmp eq ptr %call5.i79.i, null
  br i1 %tobool11.not.i, label %devm_kmalloc_array.exit82.i.err_put_rproc.sink.split_crit_edge, label %for.cond.preheader.i

devm_kmalloc_array.exit82.i.err_put_rproc.sink.split_crit_edge: ; preds = %devm_kmalloc_array.exit82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_put_rproc.sink.split

for.cond.preheader.i:                             ; preds = %devm_kmalloc_array.exit82.i
  %44 = ptrtoint ptr %num_domains.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_domains.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp1595.i = icmp sgt i32 %45, 0
  br i1 %cmp1595.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end34_crit_edge

for.cond.preheader.i.if.end34_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.096.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call16.i = call ptr @dev_pm_domain_attach_by_id(ptr noundef %30, i32 noundef %i.096.i) #8
  %46 = ptrtoint ptr %pd_dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pd_dev.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %47, i32 %i.096.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call16.i, ptr %arrayidx.i, align 4
  %49 = load ptr, ptr %pd_dev.i, align 4
  %arrayidx19.i = getelementptr ptr, ptr %49, i32 %i.096.i
  %50 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx19.i, align 4
  %cmp.i.i94 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i94, label %if.then21.i, label %if.end25.i

if.then21.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %51 to i32
  br label %detach_pm.i

if.end25.i:                                       ; preds = %for.body.i
  %call28.i = call ptr @device_link_add(ptr noundef %30, ptr noundef %51, i32 noundef 5) #8
  %53 = ptrtoint ptr %pd_dev_link.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pd_dev_link.i, align 4
  %arrayidx30.i = getelementptr ptr, ptr %54, i32 %i.096.i
  %55 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call28.i, ptr %arrayidx30.i, align 4
  %56 = load ptr, ptr %pd_dev_link.i, align 4
  %arrayidx32.i = getelementptr ptr, ptr %56, i32 %i.096.i
  %57 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx32.i, align 4
  %tobool33.not.i = icmp eq ptr %58, null
  br i1 %tobool33.not.i, label %if.then34.i, label %for.inc.i

if.then34.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %pd_dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pd_dev.i, align 4
  %arrayidx36.i = getelementptr ptr, ptr %60, i32 %i.096.i
  %61 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx36.i, align 4
  call void @dev_pm_domain_detach(ptr noundef %62, i1 noundef zeroext false) #8
  br label %detach_pm.i

for.inc.i:                                        ; preds = %if.end25.i
  %inc.i = add nuw nsw i32 %i.096.i, 1
  %63 = ptrtoint ptr %num_domains.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_domains.i, align 4
  %cmp15.i = icmp slt i32 %inc.i, %64
  br i1 %cmp15.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end34_crit_edge

for.inc.i.if.end34_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

detach_pm.i:                                      ; preds = %if.then34.i, %if.then21.i
  %ret.0.i95 = phi i32 [ %52, %if.then21.i ], [ -22, %if.then34.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.096.i)
  %cmp3898.not.i = icmp eq i32 %i.096.i, 0
  br i1 %cmp3898.not.i, label %detach_pm.i.err_put_rproc.sink.split_crit_edge, label %detach_pm.i.while.body.i_crit_edge

detach_pm.i.while.body.i_crit_edge:               ; preds = %detach_pm.i
  br label %while.body.i

detach_pm.i.err_put_rproc.sink.split_crit_edge:   ; preds = %detach_pm.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_put_rproc.sink.split

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %detach_pm.i.while.body.i_crit_edge
  %dec99.in.i = phi i32 [ %dec99.i, %while.body.i.while.body.i_crit_edge ], [ %i.096.i, %detach_pm.i.while.body.i_crit_edge ]
  %dec99.i = add nsw i32 %dec99.in.i, -1
  %65 = ptrtoint ptr %pd_dev_link.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pd_dev_link.i, align 4
  %arrayidx40.i = getelementptr ptr, ptr %66, i32 %dec99.i
  %67 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx40.i, align 4
  call void @device_link_del(ptr noundef %68) #8
  %69 = ptrtoint ptr %pd_dev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pd_dev.i, align 4
  %arrayidx42.i = getelementptr ptr, ptr %70, i32 %dec99.i
  %71 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx42.i, align 4
  call void @dev_pm_domain_detach(ptr noundef %72, i1 noundef zeroext false) #8
  %cmp38.i = icmp sgt i32 %dec99.in.i, 1
  br i1 %cmp38.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.err_put_rproc.sink.split_crit_edge

while.body.i.err_put_rproc.sink.split_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_put_rproc.sink.split

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

cleanup.sink.split.i:                             ; preds = %devm_kmalloc_array.exit82.thread.i, %devm_kmalloc_array.exit.thread.i
  %pd_dev_link88.sink.i = phi ptr [ %pd_dev_link88.i, %devm_kmalloc_array.exit82.thread.i ], [ %pd_dev84.i, %devm_kmalloc_array.exit.thread.i ]
  %73 = ptrtoint ptr %pd_dev_link88.sink.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %pd_dev_link88.sink.i, align 4
  br label %err_put_rproc.sink.split

if.end34:                                         ; preds = %for.inc.i.if.end34_crit_edge, %for.cond.preheader.i.if.end34_crit_edge, %if.end27.if.end34_crit_edge
  %74 = ptrtoint ptr %rproc11 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rproc11, align 4
  %parent.i98 = getelementptr inbounds %struct.rproc, ptr %75, i32 0, i32 6, i32 1
  %76 = ptrtoint ptr %parent.i98 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %parent.i98, align 8
  %clks2.i = getelementptr inbounds %struct.imx_dsp_rproc, ptr %4, i32 0, i32 3
  %78 = ptrtoint ptr %clks2.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.58, ptr %clks2.i, align 4
  %arrayidx3.1.i = getelementptr %struct.imx_dsp_rproc, ptr %4, i32 0, i32 3, i32 1
  %79 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @.str.59, ptr %arrayidx3.1.i, align 4
  %arrayidx3.2.i = getelementptr %struct.imx_dsp_rproc, ptr %4, i32 0, i32 3, i32 2
  %80 = ptrtoint ptr %arrayidx3.2.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @.str.60, ptr %arrayidx3.2.i, align 4
  %arrayidx3.3.i = getelementptr %struct.imx_dsp_rproc, ptr %4, i32 0, i32 3, i32 3
  %81 = ptrtoint ptr %arrayidx3.3.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @.str.61, ptr %arrayidx3.3.i, align 4
  %arrayidx3.4.i = getelementptr %struct.imx_dsp_rproc, ptr %4, i32 0, i32 3, i32 4
  %82 = ptrtoint ptr %arrayidx3.4.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @.str.62, ptr %arrayidx3.4.i, align 4
  %call.i99 = call i32 @devm_clk_bulk_get_optional(ptr noundef %77, i32 noundef 5, ptr noundef %clks2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool36.not = icmp eq i32 %call.i99, 0
  br i1 %tobool36.not, label %if.end41, label %if.end34.err_detach_domains_crit_edge

if.end34.err_detach_domains_crit_edge:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_detach_domains

if.end41:                                         ; preds = %if.end34
  %pm_comp = getelementptr inbounds %struct.imx_dsp_rproc, ptr %4, i32 0, i32 13
  %83 = ptrtoint ptr %pm_comp to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %pm_comp, align 4
  %wait.i = getelementptr inbounds %struct.imx_dsp_rproc, ptr %4, i32 0, i32 13, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.63, ptr noundef nonnull @init_completion.__key) #8
  %auto_boot = getelementptr inbounds %struct.rproc, ptr %call6, i32 0, i32 30
  %84 = ptrtoint ptr %auto_boot to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %auto_boot, align 1
  %call42 = call i32 @rproc_add(ptr noundef nonnull %call6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end48, label %if.end41.err_detach_domains_crit_edge

if.end41.err_detach_domains_crit_edge:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_detach_domains

if.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  call void @pm_runtime_enable(ptr noundef %dev1) #8
  br label %cleanup

err_detach_domains:                               ; preds = %if.end41.err_detach_domains_crit_edge, %if.end34.err_detach_domains_crit_edge
  %.str.17.sink = phi ptr [ @.str.14, %if.end34.err_detach_domains_crit_edge ], [ @.str.17, %if.end41.err_detach_domains_crit_edge ]
  %ret.0 = phi i32 [ %call.i99, %if.end34.err_detach_domains_crit_edge ], [ %call42, %if.end41.err_detach_domains_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.17.sink) #11
  %85 = ptrtoint ptr %num_domains.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_domains.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %86)
  %cmp.i101 = icmp slt i32 %86, 2
  br i1 %cmp.i101, label %err_detach_domains.err_put_rproc_crit_edge, label %for.body.lr.ph.i

err_detach_domains.err_put_rproc_crit_edge:       ; preds = %err_detach_domains
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_put_rproc

for.body.lr.ph.i:                                 ; preds = %err_detach_domains
  %pd_dev_link.i103 = getelementptr inbounds %struct.imx_dsp_rproc, ptr %4, i32 0, i32 10
  %pd_dev.i104 = getelementptr inbounds %struct.imx_dsp_rproc, ptr %4, i32 0, i32 9
  br label %for.body.i107

for.body.i107:                                    ; preds = %for.body.i107.for.body.i107_crit_edge, %for.body.lr.ph.i
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i106, %for.body.i107.for.body.i107_crit_edge ]
  %87 = ptrtoint ptr %pd_dev_link.i103 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pd_dev_link.i103, align 4
  %arrayidx.i105 = getelementptr ptr, ptr %88, i32 %i.02.i
  %89 = ptrtoint ptr %arrayidx.i105 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i105, align 4
  call void @device_link_del(ptr noundef %90) #8
  %91 = ptrtoint ptr %pd_dev.i104 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pd_dev.i104, align 4
  %arrayidx3.i = getelementptr ptr, ptr %92, i32 %i.02.i
  %93 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx3.i, align 4
  call void @dev_pm_domain_detach(ptr noundef %94, i1 noundef zeroext false) #8
  %inc.i106 = add nuw nsw i32 %i.02.i, 1
  %95 = ptrtoint ptr %num_domains.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num_domains.i, align 4
  %cmp2.i = icmp slt i32 %inc.i106, %96
  br i1 %cmp2.i, label %for.body.i107.for.body.i107_crit_edge, label %for.body.i107.err_put_rproc_crit_edge

for.body.i107.err_put_rproc_crit_edge:            ; preds = %for.body.i107
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_put_rproc

for.body.i107.for.body.i107_crit_edge:            ; preds = %for.body.i107
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i107

err_put_rproc.sink.split:                         ; preds = %cleanup.sink.split.i, %while.body.i.err_put_rproc.sink.split_crit_edge, %detach_pm.i.err_put_rproc.sink.split_crit_edge, %devm_kmalloc_array.exit82.i.err_put_rproc.sink.split_crit_edge, %devm_kmalloc_array.exit.i.err_put_rproc.sink.split_crit_edge, %imx_dsp_rproc_detect_mode.exit, %sw.bb.i.err_put_rproc.sink.split_crit_edge, %if.end9.err_put_rproc.sink.split_crit_edge
  %.str.11.sink = phi ptr [ @.str.8, %imx_dsp_rproc_detect_mode.exit ], [ @.str.8, %if.end9.err_put_rproc.sink.split_crit_edge ], [ @.str.8, %sw.bb.i.err_put_rproc.sink.split_crit_edge ], [ @.str.11, %detach_pm.i.err_put_rproc.sink.split_crit_edge ], [ @.str.11, %cleanup.sink.split.i ], [ @.str.11, %devm_kmalloc_array.exit82.i.err_put_rproc.sink.split_crit_edge ], [ @.str.11, %devm_kmalloc_array.exit.i.err_put_rproc.sink.split_crit_edge ], [ @.str.11, %while.body.i.err_put_rproc.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ %26, %imx_dsp_rproc_detect_mode.exit ], [ -95, %if.end9.err_put_rproc.sink.split_crit_edge ], [ %call.i, %sw.bb.i.err_put_rproc.sink.split_crit_edge ], [ %ret.0.i95, %detach_pm.i.err_put_rproc.sink.split_crit_edge ], [ -12, %cleanup.sink.split.i ], [ -12, %devm_kmalloc_array.exit82.i.err_put_rproc.sink.split_crit_edge ], [ -12, %devm_kmalloc_array.exit.i.err_put_rproc.sink.split_crit_edge ], [ %ret.0.i95, %while.body.i.err_put_rproc.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.11.sink) #11
  br label %err_put_rproc

err_put_rproc:                                    ; preds = %err_put_rproc.sink.split, %for.body.i107.err_put_rproc_crit_edge, %err_detach_domains.err_put_rproc_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_detach_domains.err_put_rproc_crit_edge ], [ %ret.1.ph, %err_put_rproc.sink.split ], [ %ret.0, %for.body.i107.err_put_rproc_crit_edge ]
  call void @rproc_free(ptr noundef nonnull %call6) #8
  br label %cleanup

cleanup:                                          ; preds = %err_put_rproc, %if.end48, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ %ret.1, %err_put_rproc ], [ 0, %if.end48 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_name) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_dsp_rproc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv1 = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %call2 = tail call i32 @rproc_del(ptr noundef %1) #8
  %num_domains.i = getelementptr inbounds %struct.imx_dsp_rproc, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %num_domains.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_domains.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp slt i32 %5, 2
  br i1 %cmp.i, label %entry.imx_dsp_detach_pm_domains.exit_crit_edge, label %for.body.lr.ph.i

entry.imx_dsp_detach_pm_domains.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx_dsp_detach_pm_domains.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %pd_dev_link.i = getelementptr inbounds %struct.imx_dsp_rproc, ptr %3, i32 0, i32 10
  %pd_dev.i = getelementptr inbounds %struct.imx_dsp_rproc, ptr %3, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %pd_dev_link.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pd_dev_link.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %7, i32 %i.02.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  tail call void @device_link_del(ptr noundef %9) #8
  %10 = ptrtoint ptr %pd_dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pd_dev.i, align 4
  %arrayidx3.i = getelementptr ptr, ptr %11, i32 %i.02.i
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx3.i, align 4
  tail call void @dev_pm_domain_detach(ptr noundef %13, i1 noundef zeroext false) #8
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %14 = ptrtoint ptr %num_domains.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_domains.i, align 4
  %cmp2.i = icmp slt i32 %inc.i, %15
  br i1 %cmp2.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.imx_dsp_detach_pm_domains.exit_crit_edge

for.body.i.imx_dsp_detach_pm_domains.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx_dsp_detach_pm_domains.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

imx_dsp_detach_pm_domains.exit:                   ; preds = %for.body.i.imx_dsp_detach_pm_domains.exit_crit_edge, %entry.imx_dsp_detach_pm_domains.exit_crit_edge
  tail call void @rproc_free(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_of_parse_firmware(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_dsp_rproc_vq_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rproc = getelementptr i8, ptr %work, i32 -128
  %0 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rproc, align 4
  %call = tail call i32 @rproc_vq_interrupt(ptr noundef %1, i32 noundef 0) #8
  %2 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rproc, align 4
  %call2 = tail call i32 @rproc_vq_interrupt(ptr noundef %3, i32 noundef 1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_dsp_rproc_prepare(ptr noundef readonly %rproc) #2 align 64 {
entry:
  %it.i = alloca %struct.of_phandle_iterator, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %parent = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %dsp_dcfg1.i = getelementptr inbounds %struct.imx_dsp_rproc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dsp_dcfg1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsp_dcfg1.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %rproc3.i = getelementptr inbounds %struct.imx_dsp_rproc, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %rproc3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rproc3.i, align 4
  %parent.i = getelementptr inbounds %struct.rproc, ptr %9, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %it.i) #8
  %14 = call ptr @memset(ptr %it.i, i32 255, i32 36)
  %att_size.i = getelementptr inbounds %struct.imx_rproc_dcfg, ptr %7, i32 0, i32 5
  %15 = ptrtoint ptr %att_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %att_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp172.not.i = icmp eq i32 %16, 0
  br i1 %cmp172.not.i, label %entry.for.end.i_crit_edge, label %for.body.lr.ph.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %att5.i = getelementptr inbounds %struct.imx_rproc_dcfg, ptr %7, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %a.0173.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %att5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %att5.i, align 4
  %flags.i = getelementptr %struct.imx_rproc_att, ptr %18, i32 %a.0173.i, i32 3
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %tobool.not.i = icmp sgt i32 %20, -1
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %sa.i = getelementptr %struct.imx_rproc_att, ptr %18, i32 %a.0173.i, i32 1
  %21 = ptrtoint ptr %sa.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sa.i, align 4
  %size.i = getelementptr %struct.imx_rproc_att, ptr %18, i32 %a.0173.i, i32 2
  %23 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size.i, align 4
  %25 = ptrtoint ptr %dsp_dcfg1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dsp_dcfg1.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %att_size.i.i = getelementptr inbounds %struct.imx_rproc_dcfg, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %att_size.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %att_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp31.not.i.i = icmp eq i32 %30, 0
  br i1 %cmp31.not.i.i, label %if.end.i.do.end_crit_edge, label %for.body.lr.ph.i.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %conv.i = zext i32 %22 to i64
  %att3.i.i = getelementptr inbounds %struct.imx_rproc_dcfg, ptr %28, i32 0, i32 4
  %31 = ptrtoint ptr %att3.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %att3.i.i, align 4
  %conv6.i.i = zext i32 %24 to i64
  %add.i.i = add nuw nsw i64 %conv6.i.i, %conv.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.032.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %sa.i.i = getelementptr %struct.imx_rproc_att, ptr %32, i32 %i.032.i.i, i32 1
  %33 = ptrtoint ptr %sa.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sa.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %34)
  %cmp4.not.i.i = icmp ult i32 %22, %34
  br i1 %cmp4.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %size.i.i = getelementptr %struct.imx_rproc_att, ptr %32, i32 %i.032.i.i, i32 2
  %35 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size.i.i, align 4
  %add8.i.i = add i32 %36, %34
  %conv9.i.i = zext i32 %add8.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %conv9.i.i)
  %cmp10.not.i.i = icmp ugt i64 %add.i.i, %conv9.i.i
  br i1 %cmp10.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %if.end8.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.032.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %30
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.do.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end8.i:                                        ; preds = %land.lhs.true.i.i
  %arrayidx.le.i.i = getelementptr %struct.imx_rproc_att, ptr %32, i32 %i.032.i.i
  %37 = ptrtoint ptr %arrayidx.le.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.le.i.i, align 4
  %call11.i = tail call ptr @devm_ioremap_wc(ptr noundef %11, i32 noundef %22, i32 noundef %24) #8
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %do.end.i, label %if.end15.i

do.end.i:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.21, ptr noundef %sa.i) #11
  br label %do.end

if.end15.i:                                       ; preds = %if.end8.i
  %conv14.i.i = sub i32 %22, %34
  %add16.i.i = add i32 %38, %conv14.i.i
  %39 = ptrtoint ptr %sa.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sa.i, align 4
  %41 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size.i, align 4
  %call19.i = tail call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ...) @rproc_mem_entry_init(ptr noundef %11, ptr noundef nonnull %call11.i, i32 noundef %40, i32 noundef %42, i32 noundef %add16.i.i, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.23) #8
  %tobool20.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool20.not.i, label %if.end15.i.do.end_crit_edge, label %if.then21.i

if.end15.i.do.end_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then21.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size.i, align 4
  %call24.i = tail call i32 @rproc_coredump_add_segment(ptr noundef %9, i32 noundef %add16.i.i, i32 noundef %44) #8
  tail call void @rproc_add_carveout(ptr noundef %9, ptr noundef nonnull %call19.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then21.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %a.0173.i, 1
  %45 = ptrtoint ptr %att_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %att_size.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %46
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %call26.i = call i32 @of_phandle_iterator_init(ptr noundef nonnull %it.i, ptr noundef %13, ptr noundef nonnull @.str.24, ptr noundef null, i32 noundef 0) #8
  %call27175.i = call i32 @of_phandle_iterator_next(ptr noundef nonnull %it.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27175.i)
  %cmp28176.i = icmp eq i32 %call27175.i, 0
  br i1 %cmp28176.i, label %while.body.lr.ph.i, label %for.end.i.if.end_crit_edge

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.body.lr.ph.i:                               ; preds = %for.end.i
  %node.i = getelementptr inbounds %struct.of_phandle_iterator, ptr %it.i, i32 0, i32 8
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %47 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %node.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %call30.i = call i32 @strcmp(ptr noundef %50, ptr noundef nonnull dereferenceable(12) @.str.25) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %while.body.i.while.cond.backedge.i_crit_edge, label %if.end33.i

while.body.i.while.cond.backedge.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i

if.end33.i:                                       ; preds = %while.body.i
  %call35.i = call ptr @of_reserved_mem_lookup(ptr noundef %48) #8
  %tobool36.not.i = icmp eq ptr %call35.i, null
  br i1 %tobool36.not.i, label %do.end40.i, label %if.end41.i

do.end40.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.27) #11
  br label %do.end

if.end41.i:                                       ; preds = %if.end33.i
  %base.i = getelementptr inbounds %struct.reserved_mem, ptr %call35.i, i32 0, i32 4
  %51 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %base.i, align 4
  %size43.i = getelementptr inbounds %struct.reserved_mem, ptr %call35.i, i32 0, i32 5
  %53 = ptrtoint ptr %size43.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size43.i, align 4
  %55 = ptrtoint ptr %dsp_dcfg1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dsp_dcfg1.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %att_size.i122.i = getelementptr inbounds %struct.imx_rproc_dcfg, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %att_size.i122.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %att_size.i122.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp31.not.i123.i = icmp eq i32 %60, 0
  br i1 %cmp31.not.i123.i, label %if.end41.i.do.end_crit_edge, label %for.body.lr.ph.i127.i

if.end41.i.do.end_crit_edge:                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.lr.ph.i127.i:                            ; preds = %if.end41.i
  %conv42.i = zext i32 %52 to i64
  %att3.i124.i = getelementptr inbounds %struct.imx_rproc_dcfg, ptr %58, i32 0, i32 4
  %61 = ptrtoint ptr %att3.i124.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %att3.i124.i, align 4
  %conv6.i125.i = zext i32 %54 to i64
  %add.i126.i = add nuw nsw i64 %conv6.i125.i, %conv42.i
  br label %for.body.i132.i

for.body.i132.i:                                  ; preds = %for.inc.i145.i.for.body.i132.i_crit_edge, %for.body.lr.ph.i127.i
  %i.032.i128.i = phi i32 [ 0, %for.body.lr.ph.i127.i ], [ %inc.i143.i, %for.inc.i145.i.for.body.i132.i_crit_edge ]
  %sa.i129.i = getelementptr %struct.imx_rproc_att, ptr %62, i32 %i.032.i128.i, i32 1
  %63 = ptrtoint ptr %sa.i129.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sa.i129.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %64)
  %cmp4.not.i131.i = icmp ult i32 %52, %64
  br i1 %cmp4.not.i131.i, label %for.body.i132.i.for.inc.i145.i_crit_edge, label %land.lhs.true.i137.i

for.body.i132.i.for.inc.i145.i_crit_edge:         ; preds = %for.body.i132.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i145.i

land.lhs.true.i137.i:                             ; preds = %for.body.i132.i
  %size.i133.i = getelementptr %struct.imx_rproc_att, ptr %62, i32 %i.032.i128.i, i32 2
  %65 = ptrtoint ptr %size.i133.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %size.i133.i, align 4
  %add8.i134.i = add i32 %66, %64
  %conv9.i135.i = zext i32 %add8.i134.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i126.i, i64 %conv9.i135.i)
  %cmp10.not.i136.i = icmp ugt i64 %add.i126.i, %conv9.i135.i
  br i1 %cmp10.not.i136.i, label %land.lhs.true.i137.i.for.inc.i145.i_crit_edge, label %if.end47.i

land.lhs.true.i137.i.for.inc.i145.i_crit_edge:    ; preds = %land.lhs.true.i137.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i145.i

for.inc.i145.i:                                   ; preds = %land.lhs.true.i137.i.for.inc.i145.i_crit_edge, %for.body.i132.i.for.inc.i145.i_crit_edge
  %inc.i143.i = add nuw i32 %i.032.i128.i, 1
  %exitcond.not.i144.i = icmp eq i32 %inc.i143.i, %60
  br i1 %exitcond.not.i144.i, label %for.inc.i145.i.do.end_crit_edge, label %for.inc.i145.i.for.body.i132.i_crit_edge

for.inc.i145.i.for.body.i132.i_crit_edge:         ; preds = %for.inc.i145.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i132.i

for.inc.i145.i.do.end_crit_edge:                  ; preds = %for.inc.i145.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end47.i:                                       ; preds = %land.lhs.true.i137.i
  %arrayidx.le.i138.i = getelementptr %struct.imx_rproc_att, ptr %62, i32 %i.032.i128.i
  %67 = ptrtoint ptr %arrayidx.le.i138.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.le.i138.i, align 4
  %call50.i = call ptr @devm_ioremap_wc(ptr noundef %11, i32 noundef %52, i32 noundef %54) #8
  %tobool51.not.i = icmp eq ptr %call50.i, null
  br i1 %tobool51.not.i, label %do.end55.i, label %if.end57.i

do.end55.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.21, ptr noundef %base.i) #11
  br label %do.end

if.end57.i:                                       ; preds = %if.end47.i
  %conv14.i139.i = sub i32 %52, %64
  %add16.i140.i = add i32 %68, %conv14.i139.i
  %69 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %base.i, align 4
  %71 = ptrtoint ptr %size43.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %size43.i, align 4
  %73 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %node.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %call63.i = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ...) @rproc_mem_entry_init(ptr noundef %11, ptr noundef nonnull %call50.i, i32 noundef %70, i32 noundef %72, i32 noundef %add16.i140.i, ptr noundef null, ptr noundef null, ptr noundef %76) #8
  %tobool64.not.i = icmp eq ptr %call63.i, null
  br i1 %tobool64.not.i, label %if.end57.i.do.end_crit_edge, label %if.then65.i

if.end57.i.do.end_crit_edge:                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then65.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %size43.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %size43.i, align 4
  %call68.i = call i32 @rproc_coredump_add_segment(ptr noundef %9, i32 noundef %add16.i140.i, i32 noundef %78) #8
  call void @rproc_add_carveout(ptr noundef %9, ptr noundef nonnull %call63.i) #8
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.then65.i, %while.body.i.while.cond.backedge.i_crit_edge
  %call27.i = call i32 @of_phandle_iterator_next(ptr noundef nonnull %it.i) #8
  %cmp28.i = icmp eq i32 %call27.i, 0
  br i1 %cmp28.i, label %while.cond.backedge.i.while.body.i_crit_edge, label %while.cond.backedge.i.if.end_crit_edge

while.cond.backedge.i.if.end_crit_edge:           ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

do.end:                                           ; preds = %if.end57.i.do.end_crit_edge, %do.end55.i, %for.inc.i145.i.do.end_crit_edge, %if.end41.i.do.end_crit_edge, %do.end40.i, %if.end15.i.do.end_crit_edge, %do.end.i, %for.inc.i.i.do.end_crit_edge, %if.end.i.do.end_crit_edge
  %retval.2.i.ph = phi i32 [ -12, %do.end.i ], [ -22, %do.end40.i ], [ -12, %do.end55.i ], [ -22, %for.inc.i145.i.do.end_crit_edge ], [ -12, %if.end57.i.do.end_crit_edge ], [ -22, %if.end41.i.do.end_crit_edge ], [ -22, %for.inc.i.i.do.end_crit_edge ], [ -22, %if.end.i.do.end_crit_edge ], [ -12, %if.end15.i.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %it.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.19) #11
  br label %cleanup

if.end:                                           ; preds = %while.cond.backedge.i.if.end_crit_edge, %for.end.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %it.i) #8
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  %carveouts = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 14
  %79 = ptrtoint ptr %carveouts to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pn42 = load ptr, ptr %carveouts, align 4
  %cmp.not43 = icmp eq ptr %.pn42, %carveouts
  br i1 %cmp.not43, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn44 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn42, %if.end.for.body_crit_edge ]
  %carveout.0 = getelementptr i8, ptr %.pn44, i32 -56
  %80 = ptrtoint ptr %carveout.0 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %carveout.0, align 4
  %tobool5.not = icmp eq ptr %81, null
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.then6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %len = getelementptr i8, ptr %.pn44, i32 -44
  %82 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len, align 4
  %84 = call ptr @memset(ptr %81, i32 0, i32 %83)
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %for.body.for.inc_crit_edge
  %85 = ptrtoint ptr %.pn44 to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pn = load ptr, ptr %.pn44, align 4
  %cmp.not = icmp eq ptr %.pn, %carveouts
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.2.i.ph, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_dsp_rproc_unprepare(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 4) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_dsp_rproc_start(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %dsp_dcfg2 = getelementptr inbounds %struct.imx_dsp_rproc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dsp_dcfg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsp_dcfg2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %parent = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %method = getelementptr inbounds %struct.imx_rproc_dcfg, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %method to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %method, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %9, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %5, align 4
  %src_mask = getelementptr inbounds %struct.imx_rproc_dcfg, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %src_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %src_mask, align 4
  %src_start = getelementptr inbounds %struct.imx_rproc_dcfg, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %src_start to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %src_start, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ipc_handle = getelementptr inbounds %struct.imx_dsp_rproc, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %ipc_handle to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ipc_handle, align 4
  %bootaddr = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 16
  %21 = ptrtoint ptr %bootaddr to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %bootaddr, align 8
  %call6 = tail call i32 @imx_sc_pm_cpu_start(ptr noundef %20, i32 noundef 512, i1 noundef zeroext true, i64 noundef %22) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  %ret.0 = phi i32 [ %call6, %sw.bb5 ], [ %call.i, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.31) #11
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  %23 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv1, align 4
  %rxdb_ch.i = getelementptr inbounds %struct.imx_dsp_rproc, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %rxdb_ch.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rxdb_ch.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.else.cleanup_crit_edge, label %for.cond.preheader.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.else
  %flags.i = getelementptr inbounds %struct.imx_dsp_rproc, ptr %24, i32 0, i32 15
  br label %for.body.i

for.body.i:                                       ; preds = %if.end4.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.08.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %if.end4.i.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i:                                        ; preds = %for.body.i
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 500
  br i1 %exitcond.not.i, label %if.end4.i.cleanup_crit_edge, label %if.end4.i.for.body.i_crit_edge

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %ret.0, %do.end ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ], [ -110, %if.end4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_dsp_rproc_stop(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %dsp_dcfg2 = getelementptr inbounds %struct.imx_dsp_rproc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dsp_dcfg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsp_dcfg2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %parent = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %rproc_work = getelementptr inbounds %struct.imx_dsp_rproc, ptr %1, i32 0, i32 12
  %call = tail call zeroext i1 @flush_work(ptr noundef %rproc_work) #8
  %state = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 8
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp eq i32 %9, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.imx_dsp_rproc, ptr %1, i32 0, i32 15
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, -2
  store i32 %and, ptr %flags, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %method = getelementptr inbounds %struct.imx_rproc_dcfg, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %method to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %method, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %13, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %5, align 4
  %src_mask = getelementptr inbounds %struct.imx_rproc_dcfg, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %src_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %src_mask, align 4
  %src_stop = getelementptr inbounds %struct.imx_rproc_dcfg, ptr %5, i32 0, i32 3
  %21 = ptrtoint ptr %src_stop to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %src_stop, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ipc_handle = getelementptr inbounds %struct.imx_dsp_rproc, ptr %1, i32 0, i32 11
  %23 = ptrtoint ptr %ipc_handle to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ipc_handle, align 4
  %bootaddr = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 16
  %25 = ptrtoint ptr %bootaddr to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %bootaddr, align 8
  %call7 = tail call i32 @imx_sc_pm_cpu_start(ptr noundef %24, i32 noundef 512, i1 noundef zeroext false, i64 noundef %26) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb
  %ret.0 = phi i32 [ %call7, %sw.bb6 ], [ %call.i, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.33) #11
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %flags9 = getelementptr inbounds %struct.imx_dsp_rproc, ptr %1, i32 0, i32 15
  %27 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags9, align 4
  %and10 = and i32 %28, -2
  store i32 %and10, ptr %flags9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %if.else ], [ %ret.0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_dsp_rproc_kick(ptr nocapture noundef readonly %rproc, i32 noundef %vqid) #2 align 64 {
entry:
  %mmsg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %parent = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mmsg) #8
  %tx_ch = getelementptr inbounds %struct.imx_dsp_rproc, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %tx_ch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_ch, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.35) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %mmsg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %vqid, ptr %mmsg, align 4
  %call = call i32 @mbox_send_message(ptr noundef nonnull %5, ptr noundef nonnull %mmsg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i32 noundef %vqid, i32 noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mmsg) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_elf_load_rsc_table(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_dsp_rproc_elf_load_segments(ptr noundef %rproc, ptr nocapture noundef readonly %fw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  %data.i = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr [16 x i8], ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i = icmp eq i8 %3, 1
  %..i = select i1 %cmp.i, i32 32, i32 56
  %e_phnum.i = getelementptr inbounds %struct.elf32_hdr, ptr %1, i32 0, i32 10
  %e_phnum2.i = getelementptr inbounds %struct.elf64_hdr, ptr %1, i32 0, i32 10
  %retval.0.in.i = select i1 %cmp.i, ptr %e_phnum.i, ptr %e_phnum2.i
  %4 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %retval.0.i128 = load i16, ptr %retval.0.in.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %e_phoff.i = getelementptr inbounds %struct.elf32_hdr, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %e_phoff.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %e_phoff.i, align 4
  br label %elf_hdr_get_e_phoff.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %e_phoff3.i = getelementptr inbounds %struct.elf64_hdr, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %e_phoff3.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %e_phoff3.i, align 8
  %extract.t176 = trunc i64 %8 to i32
  br label %elf_hdr_get_e_phoff.exit

elf_hdr_get_e_phoff.exit:                         ; preds = %if.else.i, %if.then.i
  %retval.0.i130.off0 = phi i32 [ %6, %if.then.i ], [ %extract.t176, %if.else.i ]
  %conv = zext i16 %retval.0.i128 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i128)
  %cmp190.not = icmp eq i16 %retval.0.i128, 0
  br i1 %cmp190.not, label %elf_hdr_get_e_phoff.exit.for.end_crit_edge, label %for.body.preheader

elf_hdr_get_e_phoff.exit.for.end_crit_edge:       ; preds = %elf_hdr_get_e_phoff.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %elf_hdr_get_e_phoff.exit
  %add.ptr = getelementptr i8, ptr %1, i32 %retval.0.i130.off0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0192 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %phdr.0191 = phi ptr [ %add.ptr68, %for.inc.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  br i1 %cmp.i, label %if.then.i148, label %if.else.i149

if.then.i148:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %p_paddr.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0191, i32 0, i32 3
  %9 = ptrtoint ptr %p_paddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %p_paddr.i, align 4
  %conv2.i132 = zext i32 %10 to i64
  %p_memsz.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0191, i32 0, i32 5
  %11 = ptrtoint ptr %p_memsz.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %p_memsz.i, align 4
  %conv2.i137 = zext i32 %12 to i64
  %p_filesz.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0191, i32 0, i32 4
  %13 = ptrtoint ptr %p_filesz.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %p_filesz.i, align 4
  %conv2.i142 = zext i32 %14 to i64
  %p_offset.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0191, i32 0, i32 1
  %15 = ptrtoint ptr %p_offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %p_offset.i, align 4
  %conv2.i147 = zext i32 %16 to i64
  br label %elf_phdr_get_p_offset.exit

if.else.i149:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %p_paddr3.i = getelementptr inbounds %struct.elf64_phdr, ptr %phdr.0191, i32 0, i32 4
  %17 = ptrtoint ptr %p_paddr3.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %p_paddr3.i, align 8
  %p_memsz3.i = getelementptr inbounds %struct.elf64_phdr, ptr %phdr.0191, i32 0, i32 6
  %19 = ptrtoint ptr %p_memsz3.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %p_memsz3.i, align 8
  %p_filesz3.i = getelementptr inbounds %struct.elf64_phdr, ptr %phdr.0191, i32 0, i32 5
  %21 = ptrtoint ptr %p_filesz3.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %p_filesz3.i, align 8
  %p_offset3.i = getelementptr inbounds %struct.elf64_phdr, ptr %phdr.0191, i32 0, i32 2
  %23 = ptrtoint ptr %p_offset3.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %p_offset3.i, align 8
  br label %elf_phdr_get_p_offset.exit

elf_phdr_get_p_offset.exit:                       ; preds = %if.else.i149, %if.then.i148
  %retval.0.i145169 = phi i64 [ %conv2.i142, %if.then.i148 ], [ %22, %if.else.i149 ]
  %retval.0.i135154158167 = phi i64 [ %conv2.i132, %if.then.i148 ], [ %18, %if.else.i149 ]
  %retval.0.i140160165 = phi i64 [ %conv2.i137, %if.then.i148 ], [ %20, %if.else.i149 ]
  %retval.0.i150 = phi i64 [ %conv2.i147, %if.then.i148 ], [ %24, %if.else.i149 ]
  %25 = ptrtoint ptr %phdr.0191 to i32
  call void @__asan_load4_noabort(i32 %25)
  %retval.0.i151 = load i32, ptr %phdr.0191, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i151)
  %cmp11.not = icmp ne i32 %retval.0.i151, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i140160165)
  %tobool.not = icmp eq i64 %retval.0.i140160165, 0
  %or.cond = select i1 %cmp11.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %elf_phdr_get_p_offset.exit.for.inc_crit_edge, label %do.body

elf_phdr_get_p_offset.exit.for.inc_crit_edge:     ; preds = %elf_phdr_get_p_offset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body:                                          ; preds = %elf_phdr_get_p_offset.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_dsp_rproc_elf_load_segments.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_dsp_rproc_elf_load_segments, %if.then17)) #8
          to label %do.end [label %if.then17], !srcloc !212

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_dsp_rproc_elf_load_segments.__UNIQUE_ID_ddebug237, ptr noundef %dev1, ptr noundef nonnull @.str.42, i32 noundef 1, i64 noundef %retval.0.i135154158167, i64 noundef %retval.0.i140160165, i64 noundef %retval.0.i145169) #8
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i140160165, i64 %retval.0.i145169)
  %cmp19 = icmp ult i64 %retval.0.i140160165, %retval.0.i145169
  br i1 %cmp19, label %do.end24, label %if.end25

do.end24:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43, i64 noundef %retval.0.i145169, i64 noundef %retval.0.i140160165) #11
  br label %for.end

if.end25:                                         ; preds = %do.end
  %add = add i64 %retval.0.i150, %retval.0.i145169
  %26 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fw, align 4
  %conv26 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv26)
  %cmp27 = icmp ugt i64 %add, %conv26
  br i1 %cmp27, label %do.end32, label %if.end35

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.45, i64 noundef %add, i32 noundef %27) #11
  br label %for.end

if.end35:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %retval.0.i140160165)
  %cmp.i152 = icmp ult i64 %retval.0.i140160165, 4294967296
  br i1 %cmp.i152, label %if.end41, label %do.end40

do.end40:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.48, i64 noundef %retval.0.i140160165) #11
  br label %for.end

if.end41:                                         ; preds = %if.end35
  %conv42 = trunc i64 %retval.0.i140160165 to i32
  %call43 = tail call ptr @rproc_da_to_va(ptr noundef %rproc, i64 noundef %retval.0.i135154158167, i32 noundef %conv42, ptr noundef null) #8
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %do.end48, label %if.end49

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.51, i64 noundef %retval.0.i135154158167, i64 noundef %retval.0.i140160165) #11
  br label %for.end

if.end49:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i145169)
  %tobool50.not = icmp eq i64 %retval.0.i145169, 0
  br i1 %tobool50.not, label %if.end49.if.end55_crit_edge, label %if.then51

if.end49.if.end55_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %idx.ext52 = trunc i64 %retval.0.i150 to i32
  %add.ptr53 = getelementptr i8, ptr %1, i32 %idx.ext52
  %conv54 = trunc i64 %retval.0.i145169 to i32
  %28 = call ptr @memcpy(ptr %call43, ptr %add.ptr53, i32 %conv54)
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.end49.if.end55_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i140160165, i64 %retval.0.i145169)
  %cmp56 = icmp ugt i64 %retval.0.i140160165, %retval.0.i145169
  br i1 %cmp56, label %if.then58, label %if.end55.for.inc_crit_edge

if.end55.for.inc_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %idx.ext59 = trunc i64 %retval.0.i145169 to i32
  %add.ptr60 = getelementptr i8, ptr %call43, i32 %idx.ext59
  %sub = sub i64 %retval.0.i140160165, %retval.0.i145169
  %conv61 = trunc i64 %sub to i32
  %29 = call ptr @memset(ptr %add.ptr60, i32 0, i32 %conv61)
  br label %for.inc

for.inc:                                          ; preds = %if.then58, %if.end55.for.inc_crit_edge, %elf_phdr_get_p_offset.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0192, 1
  %add.ptr68 = getelementptr i8, ptr %phdr.0191, i32 %..i
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end48, %do.end40, %do.end32, %do.end24, %elf_hdr_get_e_phoff.exit.for.end_crit_edge
  %ret.2 = phi i32 [ -75, %do.end40 ], [ -22, %do.end48 ], [ -22, %do.end32 ], [ -22, %do.end24 ], [ 0, %elf_hdr_get_e_phoff.exit.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_elf_sanity_check(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rproc_elf_get_boot_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_wc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_mem_entry_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_coredump_add_segment(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_add_carveout(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phandle_iterator_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phandle_iterator_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_reserved_mem_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_sc_pm_cpu_start(ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_da_to_va(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_vq_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_scu_get_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_domain_attach_by_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_optional(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8mp_dsp_reset(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ioremap_wc(i32 noundef 679477248, i32 noundef 65536) #8
  %add.ptr = getelementptr i8, ptr %call, i32 28704
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  %1 = or i32 %0, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !215
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #8, !srcloc !216
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #8
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 264, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !213
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !217
  %5 = and i32 %4, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !218
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #8, !srcloc !216
  tail call void @iounmap(ptr noundef %call) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8ulp_dsp_reset(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  %res = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #8
  %0 = call ptr @memset(ptr %res, i32 255, i32 16)
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 8, i32 noundef 65536, i32 noundef 65536, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %call.i10 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 8, i32 noundef 8192, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__arm_smccc_smc(i32 noundef -1040187378, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res, ptr noundef null) #8
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %call.i11 = call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 8, i32 noundef 65536, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %call.i12 = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 8, i32 noundef 33554432, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_dsp_suspend(ptr noundef %dev) #2 align 64 {
entry:
  %mmsg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv1 = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mmsg) #8
  %4 = ptrtoint ptr %mmsg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65297, ptr %mmsg, align 4
  %state = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.not = icmp eq i32 %6, 2
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %pm_comp = getelementptr inbounds %struct.imx_dsp_rproc, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %pm_comp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %pm_comp, align 4
  %tx_ch = getelementptr inbounds %struct.imx_dsp_rproc, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %tx_ch to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_ch, align 4
  %call2 = call i32 @mbox_send_message(ptr noundef %9, ptr noundef nonnull %mmsg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.64, i32 noundef %call2) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call8 = call i32 @wait_for_completion_timeout(ptr noundef %pm_comp, i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out:                                              ; preds = %if.end5.out_crit_edge, %entry.out_crit_edge
  %call11 = call i32 @pm_runtime_force_suspend(ptr noundef %dev) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call11, %out ], [ %call2, %do.end ], [ -16, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mmsg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_dsp_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %firmware = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %firmware, align 8
  %call4 = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef %5, ptr noundef %dev, i32 noundef 3264, ptr noundef %1, ptr noundef nonnull @imx_dsp_load_firmware) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.66, i32 noundef %call4) #11
  %call8 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_dsp_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv1 = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %clks = getelementptr inbounds %struct.imx_dsp_rproc, ptr %3, i32 0, i32 3
  tail call void @clk_bulk_disable(i32 noundef 5, ptr noundef %clks) #8
  tail call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %clks) #8
  %tx_ch.i = getelementptr inbounds %struct.imx_dsp_rproc, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %tx_ch.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_ch.i, align 4
  tail call void @mbox_free_channel(ptr noundef %5) #8
  %rx_ch.i = getelementptr inbounds %struct.imx_dsp_rproc, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %rx_ch.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_ch.i, align 4
  tail call void @mbox_free_channel(ptr noundef %7) #8
  %rxdb_ch.i = getelementptr inbounds %struct.imx_dsp_rproc, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %rxdb_ch.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rxdb_ch.i, align 4
  tail call void @mbox_free_channel(ptr noundef %9) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_dsp_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv1 = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %dsp_dcfg2 = getelementptr inbounds %struct.imx_dsp_rproc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dsp_dcfg2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsp_dcfg2, align 4
  %call3 = tail call fastcc i32 @imx_dsp_rproc_mbox_init(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.68) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %clks = getelementptr inbounds %struct.imx_dsp_rproc, ptr %3, i32 0, i32 3
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef 5, ptr noundef %clks) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end9_crit_edge

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef 5, ptr noundef %clks) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end10, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %clks) #8
  br label %do.end9

do.end9:                                          ; preds = %if.then3.i, %if.end.do.end9_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end9_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.71) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end.i
  %reset = getelementptr inbounds %struct.imx_dsp_rproc_dcfg, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.then12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 %7(ptr noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end10.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %retval.0.i.ph, %do.end9 ], [ 0, %if.then12 ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_dsp_load_firmware(ptr noundef %fw, ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.rproc, ptr %context, i32 0, i32 5
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 8
  %load.i = getelementptr inbounds %struct.rproc_ops, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %load.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %load.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %rproc_load_segments.exit

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

rproc_load_segments.exit:                         ; preds = %entry
  %call.i = tail call i32 %3(ptr noundef %context, ptr noundef %fw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %rproc_load_segments.exit.out_crit_edge

rproc_load_segments.exit.out_crit_edge:           ; preds = %rproc_load_segments.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %rproc_load_segments.exit
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 8
  %start = getelementptr inbounds %struct.rproc_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %start, align 4
  %call1 = tail call i32 %7(ptr noundef %context) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 8
  %kick = getelementptr inbounds %struct.rproc_ops, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %kick to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kick, align 4
  tail call void %11(ptr noundef %context, i32 noundef 0) #8
  br label %out

out:                                              ; preds = %if.end4, %if.end.out_crit_edge, %rproc_load_segments.exit.out_crit_edge, %entry.out_crit_edge
  tail call void @release_firmware(ptr noundef %fw) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_free_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx_dsp_rproc_mbox_init(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rproc = getelementptr inbounds %struct.imx_dsp_rproc, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %rproc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rproc, align 4
  %parent = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_property(ptr noundef %5, ptr noundef nonnull @.str.73, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cl2 = getelementptr inbounds %struct.imx_dsp_rproc, ptr %priv, i32 0, i32 4
  %6 = ptrtoint ptr %cl2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %cl2, align 4
  %tx_block = getelementptr inbounds %struct.imx_dsp_rproc, ptr %priv, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %tx_block to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %tx_block, align 4
  %tx_tout = getelementptr inbounds %struct.imx_dsp_rproc, ptr %priv, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %tx_tout to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 100, ptr %tx_tout, align 4
  %knows_txdone = getelementptr inbounds %struct.imx_dsp_rproc, ptr %priv, i32 0, i32 4, i32 3
  %9 = ptrtoint ptr %knows_txdone to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %knows_txdone, align 4
  %rx_callback = getelementptr inbounds %struct.imx_dsp_rproc, ptr %priv, i32 0, i32 4, i32 4
  %10 = ptrtoint ptr %rx_callback to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @imx_dsp_rproc_rx_tx_callback, ptr %rx_callback, align 4
  %call4 = tail call ptr @mbox_request_channel_byname(ptr noundef %cl2, ptr noundef nonnull @.str.74) #8
  %tx_ch = getelementptr inbounds %struct.imx_dsp_rproc, ptr %priv, i32 0, i32 6
  %11 = ptrtoint ptr %tx_ch to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call4, ptr %tx_ch, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end17

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %call4 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_dsp_rproc_mbox_init.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_dsp_rproc_mbox_init, %if.then14)) #8
          to label %err_out [label %if.then14], !srcloc !212

if.then14:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %cl2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cl2, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_dsp_rproc_mbox_init.__UNIQUE_ID_ddebug234, ptr noundef %14, ptr noundef nonnull @.str.76, i32 noundef %12) #8
  br label %err_out

if.end17:                                         ; preds = %if.end
  %call18 = tail call ptr @mbox_request_channel_byname(ptr noundef %cl2, ptr noundef nonnull @.str.77) #8
  %rx_ch = getelementptr inbounds %struct.imx_dsp_rproc, ptr %priv, i32 0, i32 7
  %15 = ptrtoint ptr %rx_ch to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call18, ptr %rx_ch, align 4
  %cmp.i125 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125, label %if.then21, label %if.end41

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call18 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_dsp_rproc_mbox_init.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_dsp_rproc_mbox_init, %if.then36)) #8
          to label %err_out [label %if.then36], !srcloc !212

if.then36:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %cl2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cl2, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_dsp_rproc_mbox_init.__UNIQUE_ID_ddebug235, ptr noundef %18, ptr noundef nonnull @.str.78, i32 noundef %16) #8
  br label %err_out

if.end41:                                         ; preds = %if.end17
  %cl_rxdb = getelementptr inbounds %struct.imx_dsp_rproc, ptr %priv, i32 0, i32 5
  %19 = ptrtoint ptr %cl_rxdb to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %3, ptr %cl_rxdb, align 4
  %rx_callback43 = getelementptr inbounds %struct.imx_dsp_rproc, ptr %priv, i32 0, i32 5, i32 4
  %20 = ptrtoint ptr %rx_callback43 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @imx_dsp_rproc_rxdb_callback, ptr %rx_callback43, align 4
  %call44 = tail call ptr @mbox_request_channel_byname(ptr noundef %cl_rxdb, ptr noundef nonnull @.str.79) #8
  %rxdb_ch = getelementptr inbounds %struct.imx_dsp_rproc, ptr %priv, i32 0, i32 8
  %21 = ptrtoint ptr %rxdb_ch to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call44, ptr %rxdb_ch, align 4
  %cmp.i126 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126, label %if.then47, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %call44 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_dsp_rproc_mbox_init.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_dsp_rproc_mbox_init, %if.then62)) #8
          to label %err_out [label %if.then62], !srcloc !212

if.then62:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %cl_rxdb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cl_rxdb, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_dsp_rproc_mbox_init.__UNIQUE_ID_ddebug236, ptr noundef %24, ptr noundef nonnull @.str.80, i32 noundef %22) #8
  br label %err_out

err_out:                                          ; preds = %if.then62, %if.then47, %if.then36, %if.then21, %if.then14, %if.then7
  %ret.0 = phi i32 [ %12, %if.then14 ], [ %16, %if.then36 ], [ %22, %if.then62 ], [ %12, %if.then7 ], [ %16, %if.then21 ], [ %22, %if.then47 ]
  %25 = ptrtoint ptr %tx_ch to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_ch, align 4
  %cmp.i127 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127, label %err_out.if.end72_crit_edge, label %if.then70

err_out.if.end72_crit_edge:                       ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then70:                                        ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mbox_free_channel(ptr noundef %26) #8
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %err_out.if.end72_crit_edge
  %rx_ch73 = getelementptr inbounds %struct.imx_dsp_rproc, ptr %priv, i32 0, i32 7
  %27 = ptrtoint ptr %rx_ch73 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_ch73, align 4
  %cmp.i128 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %if.end72.if.end77_crit_edge, label %if.then75

if.end72.if.end77_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mbox_free_channel(ptr noundef %28) #8
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end72.if.end77_crit_edge
  %rxdb_ch78 = getelementptr inbounds %struct.imx_dsp_rproc, ptr %priv, i32 0, i32 8
  %29 = ptrtoint ptr %rxdb_ch78 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rxdb_ch78, align 4
  %cmp.i129 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i129, label %if.end77.cleanup_crit_edge, label %if.then80

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mbox_free_channel(ptr noundef %30) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then80, %if.end77.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ], [ %ret.0, %if.then80 ], [ %ret.0, %if.end77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_dsp_rproc_rx_tx_callback(ptr nocapture noundef readonly %cl, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %priv1 = getelementptr inbounds %struct.rproc, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 4
  %parent = getelementptr inbounds %struct.rproc, ptr %3, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_dsp_rproc_rx_tx_callback.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_dsp_rproc_rx_tx_callback, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_dsp_rproc_rx_tx_callback.__UNIQUE_ID_ddebug233, ptr noundef %7, ptr noundef nonnull @.str.82, i32 noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %9, label %sw.default [
    i32 65298, label %sw.bb
    i32 65300, label %sw.bb7
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %pm_comp = getelementptr inbounds %struct.imx_dsp_rproc, ptr %5, i32 0, i32 13
  tail call void @complete(ptr noundef %pm_comp) #8
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %pm_comp8 = getelementptr inbounds %struct.imx_dsp_rproc, ptr %5, i32 0, i32 13
  tail call void @complete(ptr noundef %pm_comp8) #8
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %rproc_work = getelementptr inbounds %struct.imx_dsp_rproc, ptr %5, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %rproc_work) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @imx_dsp_rproc_rxdb_callback(ptr nocapture noundef readonly %cl, ptr nocapture noundef readnone %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %priv1 = getelementptr inbounds %struct.rproc, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 4
  %flags = getelementptr inbounds %struct.imx_dsp_rproc, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %or = or i32 %7, 1
  store i32 %or, ptr %flags, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !57, !59, !61, !62, !63, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !110, !111, !112, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !181, !183, !185, !186, !187, !189, !191, !192, !194, !196, !197, !199, !200}
!llvm.module.flags = !{!201, !202, !203, !204, !205, !206, !207, !208}
!llvm.ident = !{!209}

!0 = !{ptr @__initcall__kmod_imx_dsp_rproc__238_1202_imx_dsp_rproc_driver_init6, !1, !"__initcall__kmod_imx_dsp_rproc__238_1202_imx_dsp_rproc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 1202, i32 1}
!2 = !{ptr @__exitcall_imx_dsp_rproc_driver_exit, !1, !"__exitcall_imx_dsp_rproc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file239, !4, !"__UNIQUE_ID_file239", i1 false, i1 false}
!4 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 1204, i32 1}
!5 = !{ptr @__UNIQUE_ID_license240, !4, !"__UNIQUE_ID_license240", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description241, !7, !"__UNIQUE_ID_description241", i1 false, i1 false}
!7 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 1205, i32 1}
!8 = !{ptr @__UNIQUE_ID_author242, !9, !"__UNIQUE_ID_author242", i1 false, i1 false}
!9 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 1206, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 1197, i32 11}
!12 = !{ptr @imx_dsp_rproc_driver, !13, !"imx_dsp_rproc_driver", i1 false, i1 false}
!13 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 1193, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 971, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @imx_dsp_rproc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @imx_dsp_rproc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @imx_dsp_rproc_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 987, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 991, i32 3}
!27 = !{ptr @imx_dsp_rproc_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @imx_dsp_rproc_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 998, i32 3}
!31 = !{ptr @imx_dsp_rproc_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @imx_dsp_rproc_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 1004, i32 3}
!35 = !{ptr @imx_dsp_rproc_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @imx_dsp_rproc_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 1012, i32 3}
!39 = !{ptr @imx_dsp_rproc_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @imx_dsp_rproc_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @imx_dsp_rproc_ops, !42, !"imx_dsp_rproc_ops", i1 false, i1 false}
!42 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 805, i32 31}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 755, i32 3}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @imx_dsp_rproc_prepare._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @imx_dsp_rproc_prepare._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 597, i32 4}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @imx_dsp_rproc_add_carveout._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @imx_dsp_rproc_add_carveout._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 603, i32 36}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 613, i32 36}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 619, i32 30}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 624, i32 4}
!61 = !{ptr @imx_dsp_rproc_add_carveout._entry.26, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @imx_dsp_rproc_add_carveout._entry_ptr.28, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @imx_dsp_rproc_add_carveout._entry.29, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 633, i32 4}
!65 = !{ptr @imx_dsp_rproc_add_carveout._entry_ptr.30, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 331, i32 3}
!68 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @imx_dsp_rproc_start._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @imx_dsp_rproc_start._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 374, i32 3}
!73 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @imx_dsp_rproc_stop._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @imx_dsp_rproc_stop._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 790, i32 3}
!78 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @imx_dsp_rproc_kick._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @imx_dsp_rproc_kick._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 802, i32 3}
!83 = !{ptr @imx_dsp_rproc_kick._entry.37, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @imx_dsp_rproc_kick._entry_ptr.39, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 694, i32 3}
!87 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @imx_dsp_rproc_elf_load_segments.__UNIQUE_ID_ddebug237, !86, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 698, i32 4}
!92 = !{ptr @imx_dsp_rproc_elf_load_segments._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @imx_dsp_rproc_elf_load_segments._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 705, i32 4}
!96 = !{ptr @imx_dsp_rproc_elf_load_segments._entry.44, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @imx_dsp_rproc_elf_load_segments._entry_ptr.46, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 712, i32 4}
!100 = !{ptr @imx_dsp_rproc_elf_load_segments._entry.47, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @imx_dsp_rproc_elf_load_segments._entry_ptr.49, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 721, i32 4}
!104 = !{ptr @imx_dsp_rproc_elf_load_segments._entry.50, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @imx_dsp_rproc_elf_load_segments._entry_ptr.52, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 923, i32 58}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 925, i32 4}
!110 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @imx_dsp_rproc_detect_mode._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @imx_dsp_rproc_detect_mode._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 830, i32 14}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 831, i32 14}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 941, i32 2}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 941, i32 10}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 941, i32 19}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 941, i32 28}
!125 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 941, i32 35}
!127 = distinct !{null, !128, !"imx_dsp_clks_names", i1 false, i1 false}
!128 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 939, i32 20}
!129 = !{ptr @init_completion.__key, !130, !"__key", i1 false, i1 false}
!130 = !{!"../include/linux/completion.h", i32 87, i32 2}
!131 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @imx_dsp_rproc_of_match, !133, !"imx_dsp_rproc_of_match", i1 false, i1 false}
!133 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 1184, i32 34}
!134 = !{ptr @imx_dsp_rproc_cfg_imx8qxp, !135, !"imx_dsp_rproc_cfg_imx8qxp", i1 false, i1 false}
!135 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 265, i32 40}
!136 = !{ptr @dsp_rproc_cfg_imx8qxp, !137, !"dsp_rproc_cfg_imx8qxp", i1 false, i1 false}
!137 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 259, i32 36}
!138 = !{ptr @imx_dsp_rproc_att_imx8qxp, !139, !"imx_dsp_rproc_att_imx8qxp", i1 false, i1 false}
!139 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 146, i32 35}
!140 = !{ptr @imx_dsp_rproc_cfg_imx8qm, !141, !"imx_dsp_rproc_cfg_imx8qm", i1 false, i1 false}
!141 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 276, i32 40}
!142 = !{ptr @dsp_rproc_cfg_imx8qm, !143, !"dsp_rproc_cfg_imx8qm", i1 false, i1 false}
!143 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 270, i32 36}
!144 = !{ptr @imx_dsp_rproc_att_imx8qm, !145, !"imx_dsp_rproc_att_imx8qm", i1 false, i1 false}
!145 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 136, i32 35}
!146 = !{ptr @imx_dsp_rproc_cfg_imx8mp, !147, !"imx_dsp_rproc_cfg_imx8mp", i1 false, i1 false}
!147 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 237, i32 40}
!148 = !{ptr @dsp_rproc_cfg_imx8mp, !149, !"dsp_rproc_cfg_imx8mp", i1 false, i1 false}
!149 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 227, i32 36}
!150 = !{ptr @imx_dsp_rproc_att_imx8mp, !151, !"imx_dsp_rproc_att_imx8mp", i1 false, i1 false}
!151 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 156, i32 35}
!152 = !{ptr @imx_dsp_rproc_cfg_imx8ulp, !153, !"imx_dsp_rproc_cfg_imx8ulp", i1 false, i1 false}
!153 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 253, i32 40}
!154 = !{ptr @dsp_rproc_cfg_imx8ulp, !155, !"dsp_rproc_cfg_imx8ulp", i1 false, i1 false}
!155 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 243, i32 36}
!156 = !{ptr @imx_dsp_rproc_att_imx8ulp, !157, !"imx_dsp_rproc_att_imx8ulp", i1 false, i1 false}
!157 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 166, i32 35}
!158 = !{ptr @imx_dsp_rproc_pm_ops, !159, !"imx_dsp_rproc_pm_ops", i1 false, i1 false}
!159 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 1178, i32 32}
!160 = !{ptr @.str.64, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 1125, i32 3}
!162 = !{ptr @.str.65, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @imx_dsp_suspend._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @imx_dsp_suspend._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.66, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 1166, i32 3}
!167 = !{ptr @.str.67, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @imx_dsp_resume._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @imx_dsp_resume._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.68, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 1057, i32 3}
!172 = !{ptr @.str.69, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @imx_dsp_runtime_resume._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @imx_dsp_runtime_resume._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.71, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 1063, i32 3}
!177 = !{ptr @imx_dsp_runtime_resume._entry.70, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @imx_dsp_runtime_resume._entry_ptr.72, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.73, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 500, i32 37}
!181 = !{ptr @.str.74, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 511, i32 48}
!183 = !{ptr @.str.75, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 514, i32 3}
!185 = !{ptr @.str.76, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @imx_dsp_rproc_mbox_init.__UNIQUE_ID_ddebug234, !184, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!187 = !{ptr @.str.77, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 520, i32 48}
!189 = !{ptr @.str.78, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 523, i32 3}
!191 = !{ptr @imx_dsp_rproc_mbox_init.__UNIQUE_ID_ddebug235, !190, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!192 = !{ptr @.str.79, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 536, i32 50}
!194 = !{ptr @.str.80, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 539, i32 3}
!196 = !{ptr @imx_dsp_rproc_mbox_init.__UNIQUE_ID_ddebug236, !195, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!197 = !{ptr @.str.81, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/remoteproc/imx_dsp_rproc.c", i32 456, i32 2}
!199 = !{ptr @.str.82, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @imx_dsp_rproc_rx_tx_callback.__UNIQUE_ID_ddebug233, !198, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!201 = !{i32 1, !"wchar_size", i32 2}
!202 = !{i32 1, !"min_enum_size", i32 4}
!203 = !{i32 8, !"branch-target-enforcement", i32 0}
!204 = !{i32 8, !"sign-return-address", i32 0}
!205 = !{i32 8, !"sign-return-address-all", i32 0}
!206 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!207 = !{i32 7, !"uwtable", i32 1}
!208 = !{i32 7, !"frame-pointer", i32 2}
!209 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!210 = !{!"auto-init"}
!211 = !{!"branch_weights", i32 1, i32 2000}
!212 = !{i64 2148799577, i64 2148799582, i64 2148799595, i64 2148799639, i64 2148799673, i64 2148799694}
!213 = !{i64 4977517}
!214 = !{i64 2154548273}
!215 = !{i64 2154548598}
!216 = !{i64 4977099}
!217 = !{i64 2154549486}
!218 = !{i64 2154549811}
