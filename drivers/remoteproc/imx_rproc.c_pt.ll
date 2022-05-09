; ModuleID = '/llk/IR_all_yes/drivers/remoteproc/imx_rproc.c_pt.bc'
source_filename = "../drivers/remoteproc/imx_rproc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rproc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.imx_rproc_dcfg = type { i32, i32, i32, i32, ptr, i32, i32 }
%struct.imx_rproc_att = type { i32, i32, i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.arm_smccc_res = type { i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.imx_rproc = type { ptr, ptr, ptr, ptr, [32 x %struct.imx_rproc_mem], ptr, %struct.mbox_client, ptr, ptr, %struct.work_struct, ptr, ptr }
%struct.imx_rproc_mem = type { ptr, i32, i32 }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.of_phandle_iterator = type { ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.reserved_mem = type { ptr, i32, i32, ptr, i32, i32, ptr }
%struct.rproc_mem_entry = type { ptr, i8, i32, i32, i32, ptr, [32 x i8], %struct.list_head, i32, i32, i32, ptr, ptr }

@__initcall__kmod_imx_rproc__235_837_imx_rproc_driver_init6 = internal global ptr @imx_rproc_driver_init, section ".initcall6.init", align 4
@imx_rproc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_rproc_probe, ptr @imx_rproc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_rproc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx_rproc_driver_exit = internal global ptr @imx_rproc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file236 = internal constant [44 x i8] c"imx_rproc.file=drivers/remoteproc/imx_rproc\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [25 x i8] c"imx_rproc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [59 x i8] c"imx_rproc.description=i.MX remote processor control driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [58 x i8] c"imx_rproc.author=Oleksij Rempel <o.rempel@pengutronix.de>\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"imx-rproc\00", [22 x i8] zeroinitializer }, align 32
@imx_rproc_of_match = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-cm4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx_rproc_cfg_imx7ulp }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-cm4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx_rproc_cfg_imx7d }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-cm4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx_rproc_cfg_imx6sx }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mq-cm4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx_rproc_cfg_imx8mq }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mm-cm4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx_rproc_cfg_imx8mq }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mn-cm7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx_rproc_cfg_imx8mn }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mp-cm7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx_rproc_cfg_imx8mn }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8ulp-cm33\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx_rproc_cfg_imx8ulp }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@imx_rproc_ops = internal constant { %struct.rproc_ops, [60 x i8] } { %struct.rproc_ops { ptr @imx_rproc_prepare, ptr null, ptr @imx_rproc_start, ptr @imx_rproc_stop, ptr @imx_rproc_attach, ptr null, ptr @imx_rproc_kick, ptr @imx_rproc_da_to_va, ptr @imx_rproc_parse_fw, ptr null, ptr @rproc_elf_find_loaded_rsc_table, ptr @imx_rproc_get_loaded_rsc_table, ptr @rproc_elf_load_segments, ptr @rproc_elf_sanity_check, ptr @rproc_elf_get_boot_addr, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@imx_rproc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 753, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot create workqueue\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx_rproc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/remoteproc/imx_rproc.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_rproc_probe._entry_ptr = internal global ptr @imx_rproc_probe._entry, section ".printk_index", align 4
@imx_rproc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 764, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed on imx_rproc_addr_init\0A\00", [33 x i8] zeroinitializer }, align 32
@imx_rproc_probe._entry_ptr.9 = internal global ptr @imx_rproc_probe._entry.7, section ".printk_index", align 4
@imx_rproc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&priv->rproc_work)\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,auto-boot\00", [18 x i8] zeroinitializer }, align 32
@imx_rproc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 783, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rproc_add failed\0A\00", [46 x i8] zeroinitializer }, align 32
@imx_rproc_probe._entry_ptr.14 = internal global ptr @imx_rproc_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memory-region\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdev0buffer\00", [20 x i8] zeroinitializer }, align 32
@imx_rproc_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 428, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to acquire memory-region\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"imx_rproc_prepare\00", [46 x i8] zeroinitializer }, align 32
@imx_rproc_prepare._entry_ptr = internal global ptr @imx_rproc_prepare._entry, section ".printk_index", align 4
@imx_rproc_mem_alloc.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 0, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"imx_rproc\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imx_rproc_mem_alloc\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"map memory: %p+%zx\0A\00", [44 x i8] zeroinitializer }, align 32
@imx_rproc_mem_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 388, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to map memory region: %p+%zx\0A\00", [59 x i8] zeroinitializer }, align 32
@imx_rproc_mem_alloc._entry_ptr = internal global ptr @imx_rproc_mem_alloc._entry, section ".printk_index", align 4
@imx_rproc_mem_release.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.23, ptr @.str.4, ptr @.str.24, i8 0, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"imx_rproc_mem_release\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unmap memory: %pa\0A\00", [45 x i8] zeroinitializer }, align 32
@imx_rproc_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 286, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable remote core!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx_rproc_start\00", [16 x i8] zeroinitializer }, align 32
@imx_rproc_start._entry_ptr = internal global ptr @imx_rproc_start._entry, section ".printk_index", align 4
@imx_rproc_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 308, ptr @.str.29, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Not in wfi, force stopped\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx_rproc_stop\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@imx_rproc_stop._entry_ptr = internal global ptr @imx_rproc_stop._entry, section ".printk_index", align 4
@imx_rproc_stop._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.4, i32 315, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to stop remote core\0A\00", [36 x i8] zeroinitializer }, align 32
@imx_rproc_stop._entry_ptr.32 = internal global ptr @imx_rproc_stop._entry.30, section ".printk_index", align 4
@imx_rproc_kick._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 469, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No initialized mbox tx channel\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx_rproc_kick\00", [17 x i8] zeroinitializer }, align 32
@imx_rproc_kick._entry_ptr = internal global ptr @imx_rproc_kick._entry, section ".printk_index", align 4
@imx_rproc_kick._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.4, i32 482, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: failed (%d, err:%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@imx_rproc_kick._entry_ptr.37 = internal global ptr @imx_rproc_kick._entry.35, section ".printk_index", align 4
@imx_rproc_da_to_va.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.38, ptr @.str.4, ptr @.str.39, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imx_rproc_da_to_va\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"da = 0x%llx len = 0x%zx va = 0x%p\0A\00", [61 x i8] zeroinitializer }, align 32
@imx_rproc_da_to_sys._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 341, ptr @.str.42, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Translation failed: da = 0x%llx len = 0x%zx\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imx_rproc_da_to_sys\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@imx_rproc_da_to_sys._entry_ptr = internal global ptr @imx_rproc_da_to_sys._entry, section ".printk_index", align 4
@imx_rproc_parse_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 457, ptr @.str.29, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No resource table in elf\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imx_rproc_parse_fw\00", [45 x i8] zeroinitializer }, align 32
@imx_rproc_parse_fw._entry_ptr = internal global ptr @imx_rproc_parse_fw._entry, section ".printk_index", align 4
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mbox-names\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to request tx mailbox channel: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to request rx mailbox channel: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@imx_rproc_addr_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 542, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to remap %#x bytes from %#x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imx_rproc_addr_init\00", [44 x i8] zeroinitializer }, align 32
@imx_rproc_addr_init._entry_ptr = internal global ptr @imx_rproc_addr_init._entry, section ".printk_index", align 4
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdev\00", [27 x i8] zeroinitializer }, align 32
@imx_rproc_addr_init._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.51, ptr @.str.4, i32 566, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to resolve memory region\0A\00", [63 x i8] zeroinitializer }, align 32
@imx_rproc_addr_init._entry_ptr.55 = internal global ptr @imx_rproc_addr_init._entry.53, section ".printk_index", align 4
@imx_rproc_addr_init._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.51, ptr @.str.4, i32 578, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to remap %pr\0A\00", [43 x i8] zeroinitializer }, align 32
@imx_rproc_addr_init._entry_ptr.58 = internal global ptr @imx_rproc_addr_init._entry.56, section ".printk_index", align 4
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rsc-table\00", [22 x i8] zeroinitializer }, align 32
@__const.imx_rproc_detect_mode.config = private unnamed_addr constant { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] } { ptr @.str, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, [3 x i8] zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i8 0, [3 x i8] zeroinitializer }, align 4
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"syscon\00", [25 x i8] zeroinitializer }, align 32
@imx_rproc_detect_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.4, i32 676, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to find syscon\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"imx_rproc_detect_mode\00", [42 x i8] zeroinitializer }, align 32
@imx_rproc_detect_mode._entry_ptr = internal global ptr @imx_rproc_detect_mode._entry, section ".printk_index", align 4
@imx_rproc_detect_mode._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.4, i32 685, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to read src\0A\00", [44 x i8] zeroinitializer }, align 32
@imx_rproc_detect_mode._entry_ptr.65 = internal global ptr @imx_rproc_detect_mode._entry.63, section ".printk_index", align 4
@imx_rproc_clk_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.4, i32 707, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imx_rproc_clk_enable\00", [43 x i8] zeroinitializer }, align 32
@imx_rproc_clk_enable._entry_ptr = internal global ptr @imx_rproc_clk_enable._entry, section ".printk_index", align 4
@imx_rproc_clk_enable._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.4, i32 717, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@imx_rproc_clk_enable._entry_ptr.70 = internal global ptr @imx_rproc_clk_enable._entry.68, section ".printk_index", align 4
@imx_rproc_cfg_imx7ulp = internal constant { %struct.imx_rproc_dcfg, [36 x i8] } { %struct.imx_rproc_dcfg { i32 0, i32 0, i32 0, i32 0, ptr @imx_rproc_att_imx7ulp, i32 5, i32 0 }, [36 x i8] zeroinitializer }, align 32
@imx_rproc_cfg_imx7d = internal constant { %struct.imx_rproc_dcfg, [36 x i8] } { %struct.imx_rproc_dcfg { i32 12, i32 15, i32 14, i32 11, ptr @imx_rproc_att_imx7d, i32 12, i32 1 }, [36 x i8] zeroinitializer }, align 32
@imx_rproc_cfg_imx6sx = internal constant { %struct.imx_rproc_dcfg, [36 x i8] } { %struct.imx_rproc_dcfg { i32 0, i32 4198424, i32 4198408, i32 4194328, ptr @imx_rproc_att_imx6sx, i32 8, i32 1 }, [36 x i8] zeroinitializer }, align 32
@imx_rproc_cfg_imx8mq = internal constant { %struct.imx_rproc_dcfg, [36 x i8] } { %struct.imx_rproc_dcfg { i32 12, i32 15, i32 14, i32 11, ptr @imx_rproc_att_imx8mq, i32 12, i32 1 }, [36 x i8] zeroinitializer }, align 32
@imx_rproc_cfg_imx8mn = internal constant { %struct.imx_rproc_dcfg, [36 x i8] } { %struct.imx_rproc_dcfg { i32 0, i32 0, i32 0, i32 0, ptr @imx_rproc_att_imx8mn, i32 13, i32 2 }, [36 x i8] zeroinitializer }, align 32
@imx_rproc_cfg_imx8ulp = internal constant { %struct.imx_rproc_dcfg, [36 x i8] } { %struct.imx_rproc_dcfg { i32 0, i32 0, i32 0, i32 0, ptr @imx_rproc_att_imx8ulp, i32 3, i32 0 }, [36 x i8] zeroinitializer }, align 32
@imx_rproc_att_imx7ulp = internal constant { [5 x %struct.imx_rproc_att], [48 x i8] } { [5 x %struct.imx_rproc_att] [%struct.imx_rproc_att { i32 536674304, i32 536674304, i32 196608, i32 2 }, %struct.imx_rproc_att { i32 536870912, i32 536870912, i32 65536, i32 2 }, %struct.imx_rproc_att { i32 788529152, i32 788529152, i32 131072, i32 2 }, %struct.imx_rproc_att { i32 788660224, i32 788660224, i32 131072, i32 2 }, %struct.imx_rproc_att { i32 1610612736, i32 1610612736, i32 1073741824, i32 0 }], [48 x i8] zeroinitializer }, align 32
@imx_rproc_att_imx7d = internal constant { [12 x %struct.imx_rproc_att], [32 x i8] } { [12 x %struct.imx_rproc_att] [%struct.imx_rproc_att { i32 0, i32 1572864, i32 32768, i32 0 }, %struct.imx_rproc_att { i32 1572864, i32 1572864, i32 32768, i32 2 }, %struct.imx_rproc_att { i32 9437184, i32 9437184, i32 131072, i32 0 }, %struct.imx_rproc_att { i32 9568256, i32 9568256, i32 131072, i32 0 }, %struct.imx_rproc_att { i32 9699328, i32 9699328, i32 32768, i32 0 }, %struct.imx_rproc_att { i32 536838144, i32 8355840, i32 32768, i32 6 }, %struct.imx_rproc_att { i32 268435456, i32 -2147483648, i32 268369920, i32 0 }, %struct.imx_rproc_att { i32 536870912, i32 8388608, i32 32768, i32 6 }, %struct.imx_rproc_att { i32 538968064, i32 9437184, i32 131072, i32 0 }, %struct.imx_rproc_att { i32 539099136, i32 9568256, i32 131072, i32 0 }, %struct.imx_rproc_att { i32 539230208, i32 9699328, i32 32768, i32 0 }, %struct.imx_rproc_att { i32 -2147483648, i32 -2147483648, i32 1610612736, i32 0 }], [32 x i8] zeroinitializer }, align 32
@imx_rproc_att_imx6sx = internal constant { [8 x %struct.imx_rproc_att], [32 x i8] } { [8 x %struct.imx_rproc_att] [%struct.imx_rproc_att { i32 0, i32 8355840, i32 32768, i32 4 }, %struct.imx_rproc_att { i32 1572864, i32 9404416, i32 16384, i32 0 }, %struct.imx_rproc_att { i32 1572864, i32 9420800, i32 16384, i32 0 }, %struct.imx_rproc_att { i32 536838144, i32 8355840, i32 32768, i32 6 }, %struct.imx_rproc_att { i32 268435456, i32 -2147483648, i32 268402688, i32 0 }, %struct.imx_rproc_att { i32 536870912, i32 8388608, i32 32768, i32 6 }, %struct.imx_rproc_att { i32 546275328, i32 9404416, i32 16384, i32 0 }, %struct.imx_rproc_att { i32 -2147483648, i32 -2147483648, i32 1610612736, i32 0 }], [32 x i8] zeroinitializer }, align 32
@imx_rproc_att_imx8mq = internal constant { [12 x %struct.imx_rproc_att], [32 x i8] } { [12 x %struct.imx_rproc_att] [%struct.imx_rproc_att { i32 0, i32 8257536, i32 131072, i32 4 }, %struct.imx_rproc_att { i32 1572864, i32 1572864, i32 32768, i32 0 }, %struct.imx_rproc_att { i32 9437184, i32 9437184, i32 131072, i32 0 }, %struct.imx_rproc_att { i32 9568256, i32 9568256, i32 131072, i32 0 }, %struct.imx_rproc_att { i32 134217728, i32 134217728, i32 134217728, i32 0 }, %struct.imx_rproc_att { i32 268435456, i32 -2147483648, i32 268304384, i32 0 }, %struct.imx_rproc_att { i32 536739840, i32 8257536, i32 131072, i32 6 }, %struct.imx_rproc_att { i32 536870912, i32 8388608, i32 131072, i32 6 }, %struct.imx_rproc_att { i32 538443776, i32 1572864, i32 32768, i32 2 }, %struct.imx_rproc_att { i32 538968064, i32 9437184, i32 131072, i32 2 }, %struct.imx_rproc_att { i32 539099136, i32 9568256, i32 131072, i32 2 }, %struct.imx_rproc_att { i32 1073741824, i32 1073741824, i32 -2147483648, i32 0 }], [32 x i8] zeroinitializer }, align 32
@imx_rproc_att_imx8mn = internal constant { [13 x %struct.imx_rproc_att], [48 x i8] } { [13 x %struct.imx_rproc_att] [%struct.imx_rproc_att { i32 0, i32 8257536, i32 131072, i32 6 }, %struct.imx_rproc_att { i32 1572864, i32 1572864, i32 36864, i32 0 }, %struct.imx_rproc_att { i32 9437184, i32 9437184, i32 131072, i32 0 }, %struct.imx_rproc_att { i32 9568256, i32 9568256, i32 131072, i32 0 }, %struct.imx_rproc_att { i32 9699328, i32 9699328, i32 327680, i32 0 }, %struct.imx_rproc_att { i32 134217728, i32 134217728, i32 134217728, i32 0 }, %struct.imx_rproc_att { i32 268435456, i32 1073741824, i32 268304384, i32 0 }, %struct.imx_rproc_att { i32 536870912, i32 8388608, i32 131072, i32 6 }, %struct.imx_rproc_att { i32 538443776, i32 1572864, i32 32768, i32 2 }, %struct.imx_rproc_att { i32 538968064, i32 9437184, i32 131072, i32 2 }, %struct.imx_rproc_att { i32 539099136, i32 9568256, i32 131072, i32 2 }, %struct.imx_rproc_att { i32 539230208, i32 9699328, i32 262144, i32 2 }, %struct.imx_rproc_att { i32 1073741824, i32 1073741824, i32 -2147483648, i32 0 }], [48 x i8] zeroinitializer }, align 32
@imx_rproc_att_imx8ulp = internal constant { [3 x %struct.imx_rproc_att], [48 x i8] } { [3 x %struct.imx_rproc_att] [%struct.imx_rproc_att { i32 536608768, i32 536608768, i32 786432, i32 2 }, %struct.imx_rproc_att { i32 553648128, i32 553648128, i32 65536, i32 2 }, %struct.imx_rproc_att { i32 -2147483648, i32 -2147483648, i32 1610612736, i32 0 }], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"imx_rproc_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 828, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 832, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [19 x i8] c"imx_rproc_of_match\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 815, i32 34 }
@___asan_gen_.82 = private unnamed_addr constant [14 x i8] c"imx_rproc_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 502, i32 31 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 751, i32 20 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 753, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 764, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 776, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 779, i32 48 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 783, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 417, i32 36 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 423, i32 30 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 428, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 384, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 387, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 401, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 286, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 308, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 315, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 469, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 481, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 372, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 340, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 457, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 615, i32 37 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 625, i32 48 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 629, i32 10 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 632, i32 48 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 637, i32 10 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 542, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 562, i32 28 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 566, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 578, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 583, i32 27 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 674, i32 57 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 676, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 685, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 707, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 717, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant [22 x i8] c"imx_rproc_cfg_imx7ulp\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 238, i32 36 }
@___asan_gen_.310 = private unnamed_addr constant [20 x i8] c"imx_rproc_cfg_imx7d\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 244, i32 36 }
@___asan_gen_.313 = private unnamed_addr constant [21 x i8] c"imx_rproc_cfg_imx6sx\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 254, i32 36 }
@___asan_gen_.316 = private unnamed_addr constant [21 x i8] c"imx_rproc_cfg_imx8mq\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 222, i32 36 }
@___asan_gen_.319 = private unnamed_addr constant [21 x i8] c"imx_rproc_cfg_imx8mn\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 216, i32 36 }
@___asan_gen_.322 = private unnamed_addr constant [22 x i8] c"imx_rproc_cfg_imx8ulp\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 232, i32 36 }
@___asan_gen_.325 = private unnamed_addr constant [22 x i8] c"imx_rproc_att_imx7ulp\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 158, i32 35 }
@___asan_gen_.328 = private unnamed_addr constant [20 x i8] c"imx_rproc_att_imx7d\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 166, i32 35 }
@___asan_gen_.331 = private unnamed_addr constant [21 x i8] c"imx_rproc_att_imx6sx\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 195, i32 35 }
@___asan_gen_.334 = private unnamed_addr constant [21 x i8] c"imx_rproc_att_imx8mq\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 124, i32 35 }
@___asan_gen_.337 = private unnamed_addr constant [21 x i8] c"imx_rproc_att_imx8mn\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 94, i32 35 }
@___asan_gen_.340 = private unnamed_addr constant [22 x i8] c"imx_rproc_att_imx8ulp\00", align 1
@___asan_gen_.341 = private constant [34 x i8] c"../drivers/remoteproc/imx_rproc.c\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 152, i32 35 }
@llvm.compiler.used = appending global [116 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__exitcall_imx_rproc_driver_exit, ptr @__initcall__kmod_imx_rproc__235_837_imx_rproc_driver_init6, ptr @imx_rproc_addr_init._entry, ptr @imx_rproc_addr_init._entry.53, ptr @imx_rproc_addr_init._entry.56, ptr @imx_rproc_addr_init._entry_ptr, ptr @imx_rproc_addr_init._entry_ptr.55, ptr @imx_rproc_addr_init._entry_ptr.58, ptr @imx_rproc_clk_enable._entry, ptr @imx_rproc_clk_enable._entry.68, ptr @imx_rproc_clk_enable._entry_ptr, ptr @imx_rproc_clk_enable._entry_ptr.70, ptr @imx_rproc_da_to_sys._entry, ptr @imx_rproc_da_to_sys._entry_ptr, ptr @imx_rproc_detect_mode._entry, ptr @imx_rproc_detect_mode._entry.63, ptr @imx_rproc_detect_mode._entry_ptr, ptr @imx_rproc_detect_mode._entry_ptr.65, ptr @imx_rproc_driver_exit, ptr @imx_rproc_kick._entry, ptr @imx_rproc_kick._entry.35, ptr @imx_rproc_kick._entry_ptr, ptr @imx_rproc_kick._entry_ptr.37, ptr @imx_rproc_mem_alloc._entry, ptr @imx_rproc_mem_alloc._entry_ptr, ptr @imx_rproc_parse_fw._entry, ptr @imx_rproc_parse_fw._entry_ptr, ptr @imx_rproc_prepare._entry, ptr @imx_rproc_prepare._entry_ptr, ptr @imx_rproc_probe._entry, ptr @imx_rproc_probe._entry.12, ptr @imx_rproc_probe._entry.7, ptr @imx_rproc_probe._entry_ptr, ptr @imx_rproc_probe._entry_ptr.14, ptr @imx_rproc_probe._entry_ptr.9, ptr @imx_rproc_start._entry, ptr @imx_rproc_start._entry_ptr, ptr @imx_rproc_stop._entry, ptr @imx_rproc_stop._entry.30, ptr @imx_rproc_stop._entry_ptr, ptr @imx_rproc_stop._entry_ptr.32, ptr @imx_rproc_driver, ptr @.str, ptr @imx_rproc_of_match, ptr @imx_rproc_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @imx_rproc_probe.__key, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @imx_rproc_cfg_imx7ulp, ptr @imx_rproc_cfg_imx7d, ptr @imx_rproc_cfg_imx6sx, ptr @imx_rproc_cfg_imx8mq, ptr @imx_rproc_cfg_imx8mn, ptr @imx_rproc_cfg_imx8ulp, ptr @imx_rproc_att_imx7ulp, ptr @imx_rproc_att_imx7d, ptr @imx_rproc_att_imx6sx, ptr @imx_rproc_att_imx8mq, ptr @imx_rproc_att_imx8mn, ptr @imx_rproc_att_imx8ulp], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_of_match to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_mem_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_stop._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_kick._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_kick._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_da_to_sys._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_parse_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_addr_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_addr_init._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_addr_init._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_detect_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_detect_mode._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_clk_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_clk_enable._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_cfg_imx7ulp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_cfg_imx7d to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_cfg_imx6sx to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_cfg_imx8mq to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_cfg_imx8mn to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_cfg_imx8ulp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_att_imx7ulp to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_att_imx7d to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_att_imx6sx to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_att_imx8mq to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_att_imx8mn to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_rproc_att_imx8ulp to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_rproc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_rproc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx_rproc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_rproc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_rproc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config.i = alloca %struct.regmap_config, align 4
  %res.i104 = alloca %struct.arm_smccc_res, align 4
  %val.i = alloca i32, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %res.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @rproc_alloc(ptr noundef %dev1, ptr noundef nonnull @.str, ptr noundef nonnull @imx_rproc_ops, ptr noundef null, i32 noundef 492) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.err_put_rproc_crit_edge, label %if.end5

if.end.err_put_rproc_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_put_rproc

if.end5:                                          ; preds = %if.end
  %priv6 = getelementptr inbounds %struct.rproc, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %priv6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv6, align 4
  %rproc7 = getelementptr inbounds %struct.imx_rproc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %rproc7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %rproc7, align 4
  %dcfg8 = getelementptr inbounds %struct.imx_rproc, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %dcfg8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %dcfg8, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %3, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %driver_data.i, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end5.dev_name.exit_crit_edge

if.end5.dev_name.exit_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end5.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %if.end5.dev_name.exit_crit_edge ]
  %call11 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.1, i32 noundef 262152, i32 noundef 1, ptr noundef %retval.0.i) #8
  %workqueue = getelementptr inbounds %struct.imx_rproc, ptr %3, i32 0, i32 10
  %12 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call11, ptr %workqueue, align 4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %do.end, label %if.end15

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #11
  br label %err_put_rproc

if.end15:                                         ; preds = %dev_name.exit
  %13 = ptrtoint ptr %priv6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv6, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @of_get_property(ptr noundef %18, ptr noundef nonnull @.str.45, ptr noundef null) #8
  %tobool.not.i97 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i97, label %if.end15.if.end19_crit_edge, label %if.end.i98

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end.i98:                                       ; preds = %if.end15
  %cl3.i = getelementptr inbounds %struct.imx_rproc, ptr %14, i32 0, i32 6
  %19 = ptrtoint ptr %cl3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %cl3.i, align 4
  %tx_block.i = getelementptr inbounds %struct.imx_rproc, ptr %14, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %tx_block.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %tx_block.i, align 4
  %tx_tout.i = getelementptr inbounds %struct.imx_rproc, ptr %14, i32 0, i32 6, i32 2
  %21 = ptrtoint ptr %tx_tout.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 100, ptr %tx_tout.i, align 4
  %knows_txdone.i = getelementptr inbounds %struct.imx_rproc, ptr %14, i32 0, i32 6, i32 3
  %22 = ptrtoint ptr %knows_txdone.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %knows_txdone.i, align 4
  %rx_callback.i = getelementptr inbounds %struct.imx_rproc, ptr %14, i32 0, i32 6, i32 4
  %23 = ptrtoint ptr %rx_callback.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @imx_rproc_rx_callback, ptr %rx_callback.i, align 4
  %call5.i = tail call ptr @mbox_request_channel_byname(ptr noundef %cl3.i, ptr noundef nonnull @.str.46) #8
  %tx_ch.i = getelementptr inbounds %struct.imx_rproc, ptr %14, i32 0, i32 7
  %24 = ptrtoint ptr %tx_ch.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call5.i, ptr %tx_ch.i, align 4
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then8.i, label %if.end13.i

if.then8.i:                                       ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %call5.i to i32
  %26 = ptrtoint ptr %cl3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cl3.i, align 4
  %call12.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %27, i32 noundef %25, ptr noundef nonnull @.str.47, i32 noundef %25) #8
  br label %imx_rproc_xtr_mbox_init.exit

if.end13.i:                                       ; preds = %if.end.i98
  %call14.i = tail call ptr @mbox_request_channel_byname(ptr noundef %cl3.i, ptr noundef nonnull @.str.48) #8
  %rx_ch.i = getelementptr inbounds %struct.imx_rproc, ptr %14, i32 0, i32 8
  %28 = ptrtoint ptr %rx_ch.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call14.i, ptr %rx_ch.i, align 4
  %cmp.i47.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i47.i, label %if.then17.i, label %if.end13.i.if.end19_crit_edge

if.end13.i.if.end19_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %tx_ch.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_ch.i, align 4
  tail call void @mbox_free_channel(ptr noundef %30) #8
  %31 = ptrtoint ptr %rx_ch.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_ch.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %34 = ptrtoint ptr %cl3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cl3.i, align 4
  %call22.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %35, i32 noundef %33, ptr noundef nonnull @.str.49, i32 noundef %33) #8
  br label %imx_rproc_xtr_mbox_init.exit

imx_rproc_xtr_mbox_init.exit:                     ; preds = %if.then17.i, %if.then8.i
  %retval.0.i99 = phi i32 [ %call12.i, %if.then8.i ], [ %call22.i, %if.then17.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i99)
  %tobool17.not = icmp eq i32 %retval.0.i99, 0
  br i1 %tobool17.not, label %imx_rproc_xtr_mbox_init.exit.if.end19_crit_edge, label %imx_rproc_xtr_mbox_init.exit.err_put_wkq_crit_edge

imx_rproc_xtr_mbox_init.exit.err_put_wkq_crit_edge: ; preds = %imx_rproc_xtr_mbox_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_put_wkq

imx_rproc_xtr_mbox_init.exit.if.end19_crit_edge:  ; preds = %imx_rproc_xtr_mbox_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end19:                                         ; preds = %imx_rproc_xtr_mbox_init.exit.if.end19_crit_edge, %if.end13.i.if.end19_crit_edge, %if.end15.if.end19_crit_edge
  %36 = ptrtoint ptr %dcfg8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dcfg8, align 4
  %38 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %of_node, align 8
  %att_size.i = getelementptr inbounds %struct.imx_rproc_dcfg, ptr %37, i32 0, i32 5
  %40 = ptrtoint ptr %att_size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %att_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp181.not.i = icmp eq i32 %41, 0
  br i1 %cmp181.not.i, label %if.end19.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end19.for.end.i_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end19
  %att3.i = getelementptr inbounds %struct.imx_rproc_dcfg, ptr %37, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %b.0184.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %b.1.ph.i, %for.inc.i.for.body.i_crit_edge ]
  %a.0182.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc36.i, %for.inc.i.for.body.i_crit_edge ]
  %42 = ptrtoint ptr %att3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %att3.i, align 4
  %flags.i = getelementptr %struct.imx_rproc_att, ptr %43, i32 %a.0182.i, i32 3
  %44 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i101 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i101, label %for.body.i.for.inc.i_crit_edge, label %if.end.i102

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i102:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %b.0184.i)
  %cmp4.i = icmp sgt i32 %b.0184.i, 31
  br i1 %cmp4.i, label %if.end.i102.for.end.i_crit_edge, label %if.end6.i

if.end.i102.for.end.i_crit_edge:                  ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end6.i:                                        ; preds = %if.end.i102
  %and8.i = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %sa14.i = getelementptr %struct.imx_rproc_att, ptr %43, i32 %a.0182.i, i32 1
  %46 = ptrtoint ptr %sa14.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sa14.i, align 4
  %size15.i = getelementptr %struct.imx_rproc_att, ptr %43, i32 %a.0182.i, i32 2
  %48 = ptrtoint ptr %size15.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size15.i, align 4
  br i1 %tobool9.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i103 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %47, i32 noundef %49) #8
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %call16.i = tail call ptr @devm_ioremap_wc(ptr noundef %dev1, i32 noundef %47, i32 noundef %49) #8
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %if.then10.i
  %call.sink.i = phi ptr [ %call16.i, %if.else.i ], [ %call.i103, %if.then10.i ]
  %50 = getelementptr %struct.imx_rproc, ptr %3, i32 0, i32 4, i32 %b.0184.i
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.sink.i, ptr %50, align 4
  %tobool24.not.i = icmp eq ptr %call.sink.i, null
  br i1 %tobool24.not.i, label %cleanup.thread163.i, label %if.end28.i

cleanup.thread163.i:                              ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %size15.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size15.i, align 4
  %54 = ptrtoint ptr %sa14.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sa14.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.50, i32 noundef %53, i32 noundef %55) #11
  br label %do.end25

if.end28.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %sa14.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sa14.i, align 4
  %sys_addr.i = getelementptr %struct.imx_rproc, ptr %3, i32 0, i32 4, i32 %b.0184.i, i32 1
  %58 = ptrtoint ptr %sys_addr.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %sys_addr.i, align 4
  %59 = ptrtoint ptr %size15.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %size15.i, align 4
  %size35.i = getelementptr %struct.imx_rproc, ptr %3, i32 0, i32 4, i32 %b.0184.i, i32 2
  %61 = ptrtoint ptr %size35.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %size35.i, align 4
  %inc.i = add nsw i32 %b.0184.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end28.i, %for.body.i.for.inc.i_crit_edge
  %b.1.ph.i = phi i32 [ %b.0184.i, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.end28.i ]
  %inc36.i = add nuw i32 %a.0182.i, 1
  %62 = ptrtoint ptr %att_size.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %att_size.i, align 4
  %cmp.i = icmp ult i32 %inc36.i, %63
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i102.for.end.i_crit_edge, %if.end19.for.end.i_crit_edge
  %b.0.lcssa.i = phi i32 [ 0, %if.end19.for.end.i_crit_edge ], [ %b.1.ph.i, %for.inc.i.for.end.i_crit_edge ], [ %b.0184.i, %if.end.i102.for.end.i_crit_edge ]
  %call37.i = tail call i32 @of_count_phandle_with_args(ptr noundef %39, ptr noundef nonnull @.str.15, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp sgt i32 %call37.i, 0
  br i1 %cmp38.i, label %for.body43.lr.ph.i, label %for.end.i.if.end26_crit_edge

for.end.i.if.end26_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

for.body43.lr.ph.i:                               ; preds = %for.end.i
  %64 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 1
  %rsc_table.i = getelementptr inbounds %struct.imx_rproc, ptr %3, i32 0, i32 11
  br label %for.body43.i

for.body43.i:                                     ; preds = %for.inc95.i.for.body43.i_crit_edge, %for.body43.lr.ph.i
  %b.3189.i = phi i32 [ %b.0.lcssa.i, %for.body43.lr.ph.i ], [ %b.4.ph.i, %for.inc95.i.for.body43.i_crit_edge ]
  %a.1188.i = phi i32 [ 0, %for.body43.lr.ph.i ], [ %inc96.i, %for.inc95.i.for.body43.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #8
  %65 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #8
  %66 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %39, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 0, i32 noundef %a.1188.i, ptr noundef nonnull %args.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body43.i.of_parse_phandle.exit.i_crit_edge

for.body43.i.of_parse_phandle.exit.i_crit_edge:   ; preds = %for.body43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_parse_phandle.exit.i

if.end.i.i:                                       ; preds = %for.body43.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %args.i.i, align 4
  br label %of_parse_phandle.exit.i

of_parse_phandle.exit.i:                          ; preds = %if.end.i.i, %for.body43.i.of_parse_phandle.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %68, %if.end.i.i ], [ null, %for.body43.i.of_parse_phandle.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #8
  %69 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %retval.0.i.i, align 4
  %call45.i = call i32 @strncmp(ptr noundef %70, ptr noundef nonnull dereferenceable(5) @.str.52, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %of_parse_phandle.exit.i.for.inc95.i_crit_edge, label %if.end48.i

of_parse_phandle.exit.i.for.inc95.i_crit_edge:    ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc95.i

if.end48.i:                                       ; preds = %of_parse_phandle.exit.i
  %call49.i = call i32 @of_address_to_resource(ptr noundef %retval.0.i.i, i32 noundef 0, ptr noundef nonnull %res.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.end55.i, label %do.end54.i

do.end54.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.54) #11
  br label %cleanup91.thread.i

if.end55.i:                                       ; preds = %if.end48.i
  call void @of_node_put(ptr noundef %retval.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %b.3189.i)
  %cmp56.i = icmp sgt i32 %b.3189.i, 31
  br i1 %cmp56.i, label %cleanup91.i, label %if.end58.i

if.end58.i:                                       ; preds = %if.end55.i
  %71 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %res.i, align 4
  %73 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %64, align 4
  %sub.i.i = sub i32 1, %72
  %add.i.i = add i32 %sub.i.i, %74
  %call61.i = call ptr @devm_ioremap_wc(ptr noundef %dev1, i32 noundef %72, i32 noundef %add.i.i) #8
  %arrayidx63.i = getelementptr %struct.imx_rproc, ptr %3, i32 0, i32 4, i32 %b.3189.i
  %75 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call61.i, ptr %arrayidx63.i, align 4
  %tobool68.not.i = icmp eq ptr %call61.i, null
  br i1 %tobool68.not.i, label %do.end72.i, label %if.end73.i

do.end72.i:                                       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.57, ptr noundef nonnull %res.i) #11
  br label %cleanup91.thread.i

if.end73.i:                                       ; preds = %if.end58.i
  %76 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %res.i, align 4
  %sys_addr77.i = getelementptr %struct.imx_rproc, ptr %3, i32 0, i32 4, i32 %b.3189.i, i32 1
  %78 = ptrtoint ptr %sys_addr77.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %sys_addr77.i, align 4
  %79 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %64, align 4
  %sub.i158.i = sub i32 1, %77
  %add.i159.i = add i32 %sub.i158.i, %80
  %size81.i = getelementptr %struct.imx_rproc, ptr %3, i32 0, i32 4, i32 %b.3189.i, i32 2
  %81 = ptrtoint ptr %size81.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add.i159.i, ptr %size81.i, align 4
  %82 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %retval.0.i.i, align 4
  %call83.i = call i32 @strcmp(ptr noundef %83, ptr noundef nonnull dereferenceable(10) @.str.59) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %tobool84.not.i = icmp eq i32 %call83.i, 0
  br i1 %tobool84.not.i, label %if.then85.i, label %if.end73.i.if.end89.i_crit_edge

if.end73.i.if.end89.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

if.then85.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %rsc_table.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call61.i, ptr %rsc_table.i, align 4
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then85.i, %if.end73.i.if.end89.i_crit_edge
  %inc90.i = add nsw i32 %b.3189.i, 1
  br label %for.inc95.i

cleanup91.thread.i:                               ; preds = %do.end72.i, %do.end54.i
  %retval.4.ph.i = phi i32 [ -12, %do.end72.i ], [ %call49.i, %do.end54.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #8
  br label %do.end25

cleanup91.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #8
  br label %if.end26

for.inc95.i:                                      ; preds = %if.end89.i, %of_parse_phandle.exit.i.for.inc95.i_crit_edge
  %b.4.ph.i = phi i32 [ %b.3189.i, %of_parse_phandle.exit.i.for.inc95.i_crit_edge ], [ %inc90.i, %if.end89.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #8
  %inc96.i = add nuw nsw i32 %a.1188.i, 1
  %exitcond.not.i = icmp eq i32 %inc96.i, %call37.i
  br i1 %exitcond.not.i, label %for.inc95.i.if.end26_crit_edge, label %for.inc95.i.for.body43.i_crit_edge

for.inc95.i.for.body43.i_crit_edge:               ; preds = %for.inc95.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body43.i

for.inc95.i.if.end26_crit_edge:                   ; preds = %for.inc95.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

do.end25:                                         ; preds = %cleanup91.thread.i, %cleanup.thread163.i
  %retval.5.i = phi i32 [ -12, %cleanup.thread163.i ], [ %retval.4.ph.i, %cleanup91.thread.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #11
  br label %err_put_mbox

if.end26:                                         ; preds = %for.inc95.i.if.end26_crit_edge, %cleanup91.i, %for.end.i.if.end26_crit_edge
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %config.i) #8
  %85 = call ptr @memcpy(ptr %config.i, ptr @__const.imx_rproc_detect_mode.config, i32 172)
  %86 = ptrtoint ptr %dcfg8 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dcfg8, align 4
  %88 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res.i104) #8
  %90 = call ptr @memset(ptr %res.i104, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %91 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %val.i, align 4, !annotation !182
  %method.i = getelementptr inbounds %struct.imx_rproc_dcfg, ptr %87, i32 0, i32 6
  %92 = ptrtoint ptr %method.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %method.i, align 4
  %94 = zext i32 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values)
  switch i32 %93, label %sw.epilog.i [
    i32 0, label %if.end26.imx_rproc_detect_mode.exit.thread.sink.split_crit_edge
    i32 2, label %sw.bb3.i
  ]

if.end26.imx_rproc_detect_mode.exit.thread.sink.split_crit_edge: ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx_rproc_detect_mode.exit.thread.sink.split

sw.bb3.i:                                         ; preds = %if.end26
  call void @__arm_smccc_smc(i32 noundef -1040187387, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res.i104, ptr noundef null) #8
  %95 = ptrtoint ptr %res.i104 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %res.i104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i106 = icmp eq i32 %96, 0
  br i1 %tobool.not.i106, label %sw.bb3.i.imx_rproc_detect_mode.exit.thread_crit_edge, label %sw.bb3.i.imx_rproc_detect_mode.exit.thread.sink.split_crit_edge

sw.bb3.i.imx_rproc_detect_mode.exit.thread.sink.split_crit_edge: ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx_rproc_detect_mode.exit.thread.sink.split

sw.bb3.i.imx_rproc_detect_mode.exit.thread_crit_edge: ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx_rproc_detect_mode.exit.thread

sw.epilog.i:                                      ; preds = %if.end26
  %of_node.i107 = getelementptr inbounds %struct.device, ptr %89, i32 0, i32 27
  %97 = ptrtoint ptr %of_node.i107 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %of_node.i107, align 8
  %call.i108 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %98, ptr noundef nonnull @.str.60) #8
  %cmp.i.i109 = icmp ugt ptr %call.i108, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i109, label %imx_rproc_detect_mode.exit, label %if.end9.i

if.end9.i:                                        ; preds = %sw.epilog.i
  %regmap10.i = getelementptr inbounds %struct.imx_rproc, ptr %3, i32 0, i32 1
  %99 = ptrtoint ptr %regmap10.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call.i108, ptr %regmap10.i, align 4
  %call11.i = call i32 @regmap_attach_dev(ptr noundef %89, ptr noundef %call.i108, ptr noundef nonnull %config.i) #8
  %100 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %87, align 4
  %call12.i110 = call i32 @regmap_read(ptr noundef %call.i108, i32 noundef %101, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i110)
  %tobool13.not.i = icmp eq i32 %call12.i110, 0
  br i1 %tobool13.not.i, label %if.end18.i, label %imx_rproc_detect_mode.exit.thread134

imx_rproc_detect_mode.exit.thread134:             ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.64) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i104) #8
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %config.i) #8
  br label %err_put_mbox

if.end18.i:                                       ; preds = %if.end9.i
  %102 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %val.i, align 4
  %src_mask.i = getelementptr inbounds %struct.imx_rproc_dcfg, ptr %87, i32 0, i32 1
  %104 = ptrtoint ptr %src_mask.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %src_mask.i, align 4
  %and.i111 = and i32 %105, %103
  %src_stop.i = getelementptr inbounds %struct.imx_rproc_dcfg, ptr %87, i32 0, i32 3
  %106 = ptrtoint ptr %src_stop.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %src_stop.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i111, i32 %107)
  %cmp.not.i = icmp eq i32 %and.i111, %107
  br i1 %cmp.not.i, label %if.end18.i.imx_rproc_detect_mode.exit.thread_crit_edge, label %if.end18.i.imx_rproc_detect_mode.exit.thread.sink.split_crit_edge

if.end18.i.imx_rproc_detect_mode.exit.thread.sink.split_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx_rproc_detect_mode.exit.thread.sink.split

if.end18.i.imx_rproc_detect_mode.exit.thread_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx_rproc_detect_mode.exit.thread

imx_rproc_detect_mode.exit.thread.sink.split:     ; preds = %if.end18.i.imx_rproc_detect_mode.exit.thread.sink.split_crit_edge, %sw.bb3.i.imx_rproc_detect_mode.exit.thread.sink.split_crit_edge, %if.end26.imx_rproc_detect_mode.exit.thread.sink.split_crit_edge
  %108 = ptrtoint ptr %rproc7 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rproc7, align 4
  %state.i = getelementptr inbounds %struct.rproc, ptr %109, i32 0, i32 8
  %110 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 6, ptr %state.i, align 4
  br label %imx_rproc_detect_mode.exit.thread

imx_rproc_detect_mode.exit.thread:                ; preds = %imx_rproc_detect_mode.exit.thread.sink.split, %if.end18.i.imx_rproc_detect_mode.exit.thread_crit_edge, %sw.bb3.i.imx_rproc_detect_mode.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i104) #8
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %config.i) #8
  %111 = ptrtoint ptr %dcfg8 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dcfg8, align 4
  %113 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %3, align 4
  %method.i114 = getelementptr inbounds %struct.imx_rproc_dcfg, ptr %112, i32 0, i32 6
  %115 = ptrtoint ptr %method.i114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %method.i114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp.i115 = icmp eq i32 %116, 0
  br i1 %cmp.i115, label %imx_rproc_detect_mode.exit.thread.do.body35_crit_edge, label %if.end.i118

imx_rproc_detect_mode.exit.thread.do.body35_crit_edge: ; preds = %imx_rproc_detect_mode.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body35

imx_rproc_detect_mode.exit:                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.61) #11
  %117 = ptrtoint ptr %call.i108 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i104) #8
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %config.i) #8
  br label %err_put_mbox

if.end.i118:                                      ; preds = %imx_rproc_detect_mode.exit.thread
  %call.i116 = call ptr @devm_clk_get(ptr noundef %114, ptr noundef null) #8
  %clk.i = getelementptr inbounds %struct.imx_rproc, ptr %3, i32 0, i32 5
  %118 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call.i116, ptr %clk.i, align 4
  %cmp.i.i117 = icmp ugt ptr %call.i116, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i117, label %imx_rproc_clk_enable.exit, label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i118
  %call.i.i120 = call i32 @clk_prepare(ptr noundef %call.i116) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i120)
  %tobool.not.i.i121 = icmp eq i32 %call.i.i120, 0
  br i1 %tobool.not.i.i121, label %if.end.i.i122, label %if.end8.i.imx_rproc_clk_enable.exit.thread139_crit_edge

if.end8.i.imx_rproc_clk_enable.exit.thread139_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx_rproc_clk_enable.exit.thread139

if.end.i.i122:                                    ; preds = %if.end8.i
  %call1.i.i = call i32 @clk_enable(ptr noundef %call.i116) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i122.do.body35_crit_edge, label %if.then3.i.i

if.end.i.i122.do.body35_crit_edge:                ; preds = %if.end.i.i122
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body35

if.then3.i.i:                                     ; preds = %if.end.i.i122
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %call.i116) #8
  br label %imx_rproc_clk_enable.exit.thread139

imx_rproc_clk_enable.exit.thread139:              ; preds = %if.then3.i.i, %if.end8.i.imx_rproc_clk_enable.exit.thread139_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i120, %if.end8.i.imx_rproc_clk_enable.exit.thread139_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.69) #11
  br label %err_put_mbox

imx_rproc_clk_enable.exit:                        ; preds = %if.end.i118
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.66) #11
  %119 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %clk.i, align 4
  %121 = ptrtoint ptr %120 to i32
  %tobool32.not = icmp eq ptr %120, null
  br i1 %tobool32.not, label %imx_rproc_clk_enable.exit.do.body35_crit_edge, label %imx_rproc_clk_enable.exit.err_put_mbox_crit_edge

imx_rproc_clk_enable.exit.err_put_mbox_crit_edge: ; preds = %imx_rproc_clk_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_put_mbox

imx_rproc_clk_enable.exit.do.body35_crit_edge:    ; preds = %imx_rproc_clk_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body35

do.body35:                                        ; preds = %imx_rproc_clk_enable.exit.do.body35_crit_edge, %if.end.i.i122.do.body35_crit_edge, %imx_rproc_detect_mode.exit.thread.do.body35_crit_edge
  %rproc_work = getelementptr inbounds %struct.imx_rproc, ptr %3, i32 0, i32 9
  call void @__init_work(ptr noundef %rproc_work, i32 noundef 0) #8
  %122 = ptrtoint ptr %rproc_work to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 -64, ptr %rproc_work, align 4
  %lockdep_map = getelementptr inbounds %struct.imx_rproc, ptr %3, i32 0, i32 9, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @imx_rproc_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry39 = getelementptr inbounds %struct.imx_rproc, ptr %3, i32 0, i32 9, i32 1
  %123 = ptrtoint ptr %entry39 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %entry39, ptr %entry39, align 4
  %prev.i = getelementptr inbounds %struct.imx_rproc, ptr %3, i32 0, i32 9, i32 1, i32 1
  %124 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %entry39, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.imx_rproc, ptr %3, i32 0, i32 9, i32 2
  %125 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @imx_rproc_vq_work, ptr %func, align 4
  %state = getelementptr inbounds %struct.rproc, ptr %call, i32 0, i32 8
  %126 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %127)
  %cmp.not = icmp eq i32 %127, 6
  br i1 %cmp.not, label %do.body35.if.end45_crit_edge, label %if.then43

do.body35.if.end45_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then43:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  %call.i124 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef null) #8
  %tobool.i = icmp ne ptr %call.i124, null
  %auto_boot = getelementptr inbounds %struct.rproc, ptr %call, i32 0, i32 30
  %frombool = zext i1 %tobool.i to i8
  %128 = ptrtoint ptr %auto_boot to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %frombool, ptr %auto_boot, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %do.body35.if.end45_crit_edge
  %call46 = call i32 @rproc_add(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end45.cleanup_crit_edge, label %do.end51

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #11
  %clk = getelementptr inbounds %struct.imx_rproc, ptr %3, i32 0, i32 5
  %129 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %130) #8
  call void @clk_unprepare(ptr noundef %130) #8
  br label %err_put_mbox

err_put_mbox:                                     ; preds = %do.end51, %imx_rproc_clk_enable.exit.err_put_mbox_crit_edge, %imx_rproc_clk_enable.exit.thread139, %imx_rproc_detect_mode.exit, %imx_rproc_detect_mode.exit.thread134, %do.end25
  %ret.0 = phi i32 [ %retval.5.i, %do.end25 ], [ %117, %imx_rproc_detect_mode.exit ], [ %121, %imx_rproc_clk_enable.exit.err_put_mbox_crit_edge ], [ %call46, %do.end51 ], [ %call12.i110, %imx_rproc_detect_mode.exit.thread134 ], [ %retval.0.i.ph.i, %imx_rproc_clk_enable.exit.thread139 ]
  %131 = ptrtoint ptr %priv6 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %priv6, align 4
  %tx_ch.i126 = getelementptr inbounds %struct.imx_rproc, ptr %132, i32 0, i32 7
  %133 = ptrtoint ptr %tx_ch.i126 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %tx_ch.i126, align 4
  call void @mbox_free_channel(ptr noundef %134) #8
  %rx_ch.i127 = getelementptr inbounds %struct.imx_rproc, ptr %132, i32 0, i32 8
  %135 = ptrtoint ptr %rx_ch.i127 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %rx_ch.i127, align 4
  call void @mbox_free_channel(ptr noundef %136) #8
  br label %err_put_wkq

err_put_wkq:                                      ; preds = %err_put_mbox, %imx_rproc_xtr_mbox_init.exit.err_put_wkq_crit_edge
  %ret.1 = phi i32 [ %retval.0.i99, %imx_rproc_xtr_mbox_init.exit.err_put_wkq_crit_edge ], [ %ret.0, %err_put_mbox ]
  %137 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %workqueue, align 4
  call void @destroy_workqueue(ptr noundef %138) #8
  br label %err_put_rproc

err_put_rproc:                                    ; preds = %err_put_wkq, %do.end, %if.end.err_put_rproc_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_put_wkq ], [ -12, %do.end ], [ -22, %if.end.err_put_rproc_crit_edge ]
  call void @rproc_free(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %err_put_rproc, %if.end45.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_put_rproc ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_rproc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
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
  %clk = getelementptr inbounds %struct.imx_rproc, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %call2 = tail call i32 @rproc_del(ptr noundef %1) #8
  %6 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv1, align 4
  %tx_ch.i = getelementptr inbounds %struct.imx_rproc, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %tx_ch.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_ch.i, align 4
  tail call void @mbox_free_channel(ptr noundef %9) #8
  %rx_ch.i = getelementptr inbounds %struct.imx_rproc, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %rx_ch.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_ch.i, align 4
  tail call void @mbox_free_channel(ptr noundef %11) #8
  %workqueue = getelementptr inbounds %struct.imx_rproc, ptr %3, i32 0, i32 10
  %12 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %13) #8
  tail call void @rproc_free(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_rproc_vq_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rproc = getelementptr i8, ptr %work, i32 -432
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
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_rproc_prepare(ptr noundef %rproc) #2 align 64 {
entry:
  %it = alloca %struct.of_phandle_iterator, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %it) #8
  %6 = call ptr @memset(ptr %it, i32 255, i32 36)
  %call = call i32 @of_phandle_iterator_init(ptr noundef nonnull %it, ptr noundef %5, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 0) #8
  %call235 = call i32 @of_phandle_iterator_next(ptr noundef nonnull %it) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %cmp36 = icmp eq i32 %call235, 0
  br i1 %cmp36, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %node = getelementptr inbounds %struct.of_phandle_iterator, ptr %it, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %7 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %node, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call3 = call i32 @strcmp(ptr noundef %10, ptr noundef nonnull dereferenceable(12) @.str.16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %while.body.while.cond.backedge_crit_edge, label %if.end

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  %call5 = call ptr @of_reserved_mem_lookup(ptr noundef %8) #8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.17) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %base = getelementptr inbounds %struct.reserved_mem, ptr %call5, i32 0, i32 4
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %size = getelementptr inbounds %struct.reserved_mem, ptr %call5, i32 0, i32 5
  %17 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size, align 4
  %19 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %node, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %call14 = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ...) @rproc_mem_entry_init(ptr noundef %16, ptr noundef null, i32 noundef %14, i32 noundef %18, i32 noundef %14, ptr noundef nonnull @imx_rproc_mem_alloc, ptr noundef nonnull @imx_rproc_mem_release, ptr noundef %22) #8
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end9.cleanup_crit_edge, label %if.then16

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 4
  %call18 = call i32 @rproc_coredump_add_segment(ptr noundef %rproc, i32 noundef %14, i32 noundef %24) #8
  call void @rproc_add_carveout(ptr noundef %rproc, ptr noundef nonnull %call14) #8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then16, %while.body.while.cond.backedge_crit_edge
  %call2 = call i32 @of_phandle_iterator_next(ptr noundef nonnull %it) #8
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.cleanup_crit_edge

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ], [ 0, %while.cond.backedge.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %it) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_rproc_start(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  %res = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %dcfg2 = getelementptr inbounds %struct.imx_rproc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dcfg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcfg2, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #8
  %method = getelementptr inbounds %struct.imx_rproc_dcfg, ptr %3, i32 0, i32 6
  %6 = call ptr @memset(ptr %res, i32 255, i32 16)
  %7 = ptrtoint ptr %method to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %method, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %8, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.imx_rproc, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 4
  %src_mask = getelementptr inbounds %struct.imx_rproc_dcfg, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %src_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %src_mask, align 4
  %src_start = getelementptr inbounds %struct.imx_rproc_dcfg, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %src_start to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %src_start, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__arm_smccc_smc(i32 noundef -1040187387, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res, ptr noundef null) #8
  %18 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %res, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  %ret.0 = phi i32 [ %19, %sw.bb4 ], [ %call.i, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %do.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.25) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %ret.0, %do.end ], [ 0, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_rproc_stop(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  %res = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %dcfg2 = getelementptr inbounds %struct.imx_rproc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dcfg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcfg2, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res) #8
  %method = getelementptr inbounds %struct.imx_rproc_dcfg, ptr %3, i32 0, i32 6
  %6 = call ptr @memset(ptr %res, i32 255, i32 16)
  %7 = ptrtoint ptr %method to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %method, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %8, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.imx_rproc, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %3, align 4
  %src_mask = getelementptr inbounds %struct.imx_rproc_dcfg, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %src_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %src_mask, align 4
  %src_stop = getelementptr inbounds %struct.imx_rproc_dcfg, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %src_stop to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %src_stop, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %18 = getelementptr inbounds %struct.arm_smccc_res, ptr %res, i32 0, i32 1
  call void @__arm_smccc_smc(i32 noundef -1040187387, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res, ptr noundef null) #8
  %19 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %res, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %sw.bb4.sw.epilog_crit_edge, label %do.end

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.27) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb4.sw.epilog_crit_edge, %sw.bb
  %ret.0 = phi i32 [ %20, %do.end ], [ %20, %sw.bb4.sw.epilog_crit_edge ], [ %call.i, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool5.not = icmp eq i32 %ret.0, 0
  br i1 %tobool5.not, label %sw.epilog.cleanup_crit_edge, label %do.end9

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end9:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.31) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %ret.0, %do.end9 ], [ 0, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx_rproc_attach(ptr nocapture noundef readnone %rproc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_rproc_kick(ptr nocapture noundef readonly %rproc, i32 noundef %vqid) #2 align 64 {
entry:
  %mmsg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mmsg) #8
  %tx_ch = getelementptr inbounds %struct.imx_rproc, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %tx_ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ch, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.33) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl = shl i32 %vqid, 16
  %6 = ptrtoint ptr %mmsg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shl, ptr %mmsg, align 4
  %call = call i32 @mbox_send_message(ptr noundef nonnull %3, ptr noundef nonnull %mmsg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i32 noundef %vqid, i32 noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %if.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mmsg) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @imx_rproc_da_to_va(ptr noundef %rproc, i64 noundef %da, i32 noundef %len, ptr noundef writeonly %is_iomem) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dcfg1.i = getelementptr inbounds %struct.imx_rproc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dcfg1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dcfg1.i, align 4
  %att_size.i = getelementptr inbounds %struct.imx_rproc_dcfg, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %att_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %att_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp39.not.i = icmp eq i32 %5, 0
  br i1 %cmp39.not.i, label %if.end.imx_rproc_da_to_sys.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end.imx_rproc_da_to_sys.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx_rproc_da_to_sys.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end
  %att2.i = getelementptr inbounds %struct.imx_rproc_dcfg, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %att2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %att2.i, align 4
  %conv6.i = zext i32 %len to i64
  %add.i = add i64 %conv6.i, %da
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.040.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.imx_rproc_att, ptr %7, i32 %i.040.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %conv.i = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i, i64 %da)
  %cmp4.not.i = icmp ugt i64 %conv.i, %da
  br i1 %cmp4.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %size.i = getelementptr %struct.imx_rproc_att, ptr %7, i32 %i.040.i, i32 2
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i, align 4
  %add8.i = add i32 %11, %9
  %conv9.i = zext i32 %add8.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv9.i)
  %cmp10.i = icmp ult i64 %add.i, %conv9.i
  br i1 %cmp10.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %12 = trunc i64 %da to i32
  %conv14.i = sub i32 %12, %9
  %sa.i = getelementptr %struct.imx_rproc_att, ptr %7, i32 %i.040.i, i32 1
  %13 = ptrtoint ptr %sa.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sa.i, align 4
  %add15.i = add i32 %14, %conv14.i
  %conv16.i = zext i32 %add15.i to i64
  %tobool.not.i = icmp eq ptr %is_iomem, null
  br i1 %tobool.not.i, label %if.then.i.imx_rproc_da_to_sys.exit_crit_edge, label %if.then17.i

if.then.i.imx_rproc_da_to_sys.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx_rproc_da_to_sys.exit

if.then17.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr %struct.imx_rproc_att, ptr %7, i32 %i.040.i, i32 3
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i, align 4
  %17 = trunc i32 %16 to i8
  %18 = lshr i8 %17, 2
  %19 = and i8 %18, 1
  %20 = ptrtoint ptr %is_iomem to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %is_iomem, align 1
  br label %imx_rproc_da_to_sys.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.040.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.imx_rproc_da_to_sys.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.imx_rproc_da_to_sys.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx_rproc_da_to_sys.exit.thread

imx_rproc_da_to_sys.exit.thread:                  ; preds = %for.inc.i.imx_rproc_da_to_sys.exit.thread_crit_edge, %if.end.imx_rproc_da_to_sys.exit.thread_crit_edge
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.40, i64 noundef %da, i32 noundef %len) #11
  br label %cleanup

imx_rproc_da_to_sys.exit:                         ; preds = %if.then17.i, %if.then.i.imx_rproc_da_to_sys.exit_crit_edge
  %add = add nuw nsw i64 %conv16.i, %conv6.i
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %imx_rproc_da_to_sys.exit
  %i.059 = phi i32 [ 0, %imx_rproc_da_to_sys.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %sys_addr = getelementptr %struct.imx_rproc, ptr %1, i32 0, i32 4, i32 %i.059, i32 1
  %23 = ptrtoint ptr %sys_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sys_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i, i32 %24)
  %cmp5.not = icmp ult i32 %add15.i, %24
  br i1 %cmp5.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %size = getelementptr %struct.imx_rproc, ptr %1, i32 0, i32 4, i32 %i.059, i32 2
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size, align 4
  %add13 = add i32 %26, %24
  %conv14 = zext i32 %add13 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv14)
  %cmp15 = icmp ult i64 %add, %conv14
  br i1 %cmp15, label %if.then17, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.le = getelementptr %struct.imx_rproc, ptr %1, i32 0, i32 4, i32 %i.059
  %conv22 = sub i32 %add15.i, %24
  %27 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.le, align 4
  %add.ptr = getelementptr i8, ptr %28, i32 %conv22
  br label %do.body

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %if.then17
  %va.0 = phi ptr [ %add.ptr, %if.then17 ], [ null, %for.inc.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_rproc_da_to_va.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_rproc_da_to_va, %if.then30)) #8
          to label %cleanup [label %if.then30], !srcloc !183

if.then30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_rproc_da_to_va.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.39, i64 noundef %da, i32 noundef %len, ptr noundef %va.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %do.body, %imx_rproc_da_to_sys.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %va.0, %if.then30 ], [ null, %imx_rproc_da_to_sys.exit.thread ], [ %va.0, %do.body ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_rproc_parse_fw(ptr noundef %rproc, ptr noundef %fw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rproc_elf_load_rsc_table(ptr noundef %rproc, ptr noundef %fw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.43) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_elf_find_loaded_rsc_table(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @imx_rproc_get_loaded_rsc_table(ptr nocapture noundef readonly %rproc, ptr nocapture noundef writeonly %table_sz) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %rsc_table = getelementptr inbounds %struct.imx_rproc, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %rsc_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rsc_table, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %table_sz to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1024, ptr %table_sz, align 4
  %5 = ptrtoint ptr %rsc_table to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rsc_table, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %6, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_elf_load_segments(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_elf_sanity_check(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rproc_elf_get_boot_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phandle_iterator_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phandle_iterator_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_reserved_mem_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_mem_entry_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_rproc_mem_alloc(ptr nocapture noundef readonly %rproc, ptr noundef %mem) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_rproc_mem_alloc.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_rproc_mem_alloc, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !183

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dma = getelementptr inbounds %struct.rproc_mem_entry, ptr %mem, i32 0, i32 2
  %len = getelementptr inbounds %struct.rproc_mem_entry, ptr %mem, i32 0, i32 3
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_rproc_mem_alloc.__UNIQUE_ID_ddebug233, ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef %dma, i32 noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dma4 = getelementptr inbounds %struct.rproc_mem_entry, ptr %mem, i32 0, i32 2
  %4 = ptrtoint ptr %dma4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma4, align 4
  %len5 = getelementptr inbounds %struct.rproc_mem_entry, ptr %mem, i32 0, i32 3
  %6 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len5, align 4
  %call6 = tail call ptr @ioremap_wc(i32 noundef %5, i32 noundef %7) #8
  %tobool.not.i = icmp eq ptr %call6, null
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %do.end11, label %if.end14

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef %dma4, i32 noundef %9) #11
  br label %cleanup

if.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6, ptr %mem, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end11
  %retval.0 = phi i32 [ -12, %do.end11 ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_rproc_mem_release(ptr nocapture noundef readonly %rproc, ptr noundef %mem) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_rproc_mem_release.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_rproc_mem_release, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !183

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %dma = getelementptr inbounds %struct.rproc_mem_entry, ptr %mem, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_rproc_mem_release.__UNIQUE_ID_ddebug234, ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef %dma) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem, align 4
  tail call void @iounmap(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_coredump_add_segment(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rproc_add_carveout(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_elf_load_rsc_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_rproc_rx_callback(ptr nocapture noundef readonly %cl, ptr nocapture noundef readnone %msg) #2 align 64 {
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
  %workqueue = getelementptr inbounds %struct.imx_rproc, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %workqueue, align 4
  %rproc_work = getelementptr inbounds %struct.imx_rproc, ptr %5, i32 0, i32 9
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %rproc_work) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_free_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_wc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_attach_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_vq_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !35, !36, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !95, !97, !98, !99, !100, !102, !104, !106, !108, !110, !112, !113, !114, !115, !117, !119, !120, !121, !123, !124, !125, !127, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179, !180}
!llvm.ident = !{!181}

!0 = !{ptr @__initcall__kmod_imx_rproc__235_837_imx_rproc_driver_init6, !1, !"__initcall__kmod_imx_rproc__235_837_imx_rproc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/remoteproc/imx_rproc.c", i32 837, i32 1}
!2 = !{ptr @__exitcall_imx_rproc_driver_exit, !1, !"__exitcall_imx_rproc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file236, !4, !"__UNIQUE_ID_file236", i1 false, i1 false}
!4 = !{!"../drivers/remoteproc/imx_rproc.c", i32 839, i32 1}
!5 = !{ptr @__UNIQUE_ID_license237, !4, !"__UNIQUE_ID_license237", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description238, !7, !"__UNIQUE_ID_description238", i1 false, i1 false}
!7 = !{!"../drivers/remoteproc/imx_rproc.c", i32 840, i32 1}
!8 = !{ptr @__UNIQUE_ID_author239, !9, !"__UNIQUE_ID_author239", i1 false, i1 false}
!9 = !{!"../drivers/remoteproc/imx_rproc.c", i32 841, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/remoteproc/imx_rproc.c", i32 832, i32 11}
!12 = !{ptr @imx_rproc_driver, !13, !"imx_rproc_driver", i1 false, i1 false}
!13 = !{!"../drivers/remoteproc/imx_rproc.c", i32 828, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/remoteproc/imx_rproc.c", i32 751, i32 20}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/remoteproc/imx_rproc.c", i32 753, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @imx_rproc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @imx_rproc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/remoteproc/imx_rproc.c", i32 764, i32 3}
!26 = !{ptr @imx_rproc_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @imx_rproc_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @imx_rproc_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/remoteproc/imx_rproc.c", i32 776, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/remoteproc/imx_rproc.c", i32 779, i32 48}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/remoteproc/imx_rproc.c", i32 783, i32 3}
!35 = !{ptr @imx_rproc_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @imx_rproc_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @imx_rproc_ops, !38, !"imx_rproc_ops", i1 false, i1 false}
!38 = !{!"../drivers/remoteproc/imx_rproc.c", i32 502, i32 31}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/remoteproc/imx_rproc.c", i32 417, i32 36}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/remoteproc/imx_rproc.c", i32 423, i32 30}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/remoteproc/imx_rproc.c", i32 428, i32 4}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @imx_rproc_prepare._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @imx_rproc_prepare._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/remoteproc/imx_rproc.c", i32 384, i32 2}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @imx_rproc_mem_alloc.__UNIQUE_ID_ddebug233, !49, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/remoteproc/imx_rproc.c", i32 387, i32 3}
!55 = !{ptr @imx_rproc_mem_alloc._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @imx_rproc_mem_alloc._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/remoteproc/imx_rproc.c", i32 401, i32 2}
!59 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @imx_rproc_mem_release.__UNIQUE_ID_ddebug234, !58, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/remoteproc/imx_rproc.c", i32 286, i32 3}
!63 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @imx_rproc_start._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @imx_rproc_start._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/remoteproc/imx_rproc.c", i32 308, i32 4}
!68 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @imx_rproc_stop._entry, !67, !"_entry", i1 false, i1 false}
!71 = !{ptr @imx_rproc_stop._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/remoteproc/imx_rproc.c", i32 315, i32 3}
!74 = !{ptr @imx_rproc_stop._entry.30, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @imx_rproc_stop._entry_ptr.32, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/remoteproc/imx_rproc.c", i32 469, i32 3}
!78 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @imx_rproc_kick._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @imx_rproc_kick._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/remoteproc/imx_rproc.c", i32 481, i32 3}
!83 = !{ptr @imx_rproc_kick._entry.35, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @imx_rproc_kick._entry_ptr.37, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/remoteproc/imx_rproc.c", i32 372, i32 2}
!87 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @imx_rproc_da_to_va.__UNIQUE_ID_ddebug232, !86, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/remoteproc/imx_rproc.c", i32 340, i32 2}
!91 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @imx_rproc_da_to_sys._entry, !90, !"_entry", i1 false, i1 false}
!94 = !{ptr @imx_rproc_da_to_sys._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/remoteproc/imx_rproc.c", i32 457, i32 3}
!97 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @imx_rproc_parse_fw._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @imx_rproc_parse_fw._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/remoteproc/imx_rproc.c", i32 615, i32 37}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/remoteproc/imx_rproc.c", i32 625, i32 48}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/remoteproc/imx_rproc.c", i32 629, i32 10}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/remoteproc/imx_rproc.c", i32 632, i32 48}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/remoteproc/imx_rproc.c", i32 637, i32 10}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/remoteproc/imx_rproc.c", i32 542, i32 4}
!112 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @imx_rproc_addr_init._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @imx_rproc_addr_init._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/remoteproc/imx_rproc.c", i32 562, i32 28}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/remoteproc/imx_rproc.c", i32 566, i32 4}
!119 = !{ptr @imx_rproc_addr_init._entry.53, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @imx_rproc_addr_init._entry_ptr.55, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/remoteproc/imx_rproc.c", i32 578, i32 4}
!123 = !{ptr @imx_rproc_addr_init._entry.56, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @imx_rproc_addr_init._entry_ptr.58, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/remoteproc/imx_rproc.c", i32 583, i32 27}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/remoteproc/imx_rproc.c", i32 674, i32 57}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/remoteproc/imx_rproc.c", i32 676, i32 3}
!131 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @imx_rproc_detect_mode._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @imx_rproc_detect_mode._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/remoteproc/imx_rproc.c", i32 685, i32 3}
!136 = !{ptr @imx_rproc_detect_mode._entry.63, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @imx_rproc_detect_mode._entry_ptr.65, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/remoteproc/imx_rproc.c", i32 707, i32 3}
!140 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @imx_rproc_clk_enable._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @imx_rproc_clk_enable._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/remoteproc/imx_rproc.c", i32 717, i32 3}
!145 = !{ptr @imx_rproc_clk_enable._entry.68, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @imx_rproc_clk_enable._entry_ptr.70, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @imx_rproc_of_match, !148, !"imx_rproc_of_match", i1 false, i1 false}
!148 = !{!"../drivers/remoteproc/imx_rproc.c", i32 815, i32 34}
!149 = !{ptr @imx_rproc_cfg_imx7ulp, !150, !"imx_rproc_cfg_imx7ulp", i1 false, i1 false}
!150 = !{!"../drivers/remoteproc/imx_rproc.c", i32 238, i32 36}
!151 = !{ptr @imx_rproc_att_imx7ulp, !152, !"imx_rproc_att_imx7ulp", i1 false, i1 false}
!152 = !{!"../drivers/remoteproc/imx_rproc.c", i32 158, i32 35}
!153 = !{ptr @imx_rproc_cfg_imx7d, !154, !"imx_rproc_cfg_imx7d", i1 false, i1 false}
!154 = !{!"../drivers/remoteproc/imx_rproc.c", i32 244, i32 36}
!155 = !{ptr @imx_rproc_att_imx7d, !156, !"imx_rproc_att_imx7d", i1 false, i1 false}
!156 = !{!"../drivers/remoteproc/imx_rproc.c", i32 166, i32 35}
!157 = !{ptr @imx_rproc_cfg_imx6sx, !158, !"imx_rproc_cfg_imx6sx", i1 false, i1 false}
!158 = !{!"../drivers/remoteproc/imx_rproc.c", i32 254, i32 36}
!159 = !{ptr @imx_rproc_att_imx6sx, !160, !"imx_rproc_att_imx6sx", i1 false, i1 false}
!160 = !{!"../drivers/remoteproc/imx_rproc.c", i32 195, i32 35}
!161 = !{ptr @imx_rproc_cfg_imx8mq, !162, !"imx_rproc_cfg_imx8mq", i1 false, i1 false}
!162 = !{!"../drivers/remoteproc/imx_rproc.c", i32 222, i32 36}
!163 = !{ptr @imx_rproc_att_imx8mq, !164, !"imx_rproc_att_imx8mq", i1 false, i1 false}
!164 = !{!"../drivers/remoteproc/imx_rproc.c", i32 124, i32 35}
!165 = !{ptr @imx_rproc_cfg_imx8mn, !166, !"imx_rproc_cfg_imx8mn", i1 false, i1 false}
!166 = !{!"../drivers/remoteproc/imx_rproc.c", i32 216, i32 36}
!167 = !{ptr @imx_rproc_att_imx8mn, !168, !"imx_rproc_att_imx8mn", i1 false, i1 false}
!168 = !{!"../drivers/remoteproc/imx_rproc.c", i32 94, i32 35}
!169 = !{ptr @imx_rproc_cfg_imx8ulp, !170, !"imx_rproc_cfg_imx8ulp", i1 false, i1 false}
!170 = !{!"../drivers/remoteproc/imx_rproc.c", i32 232, i32 36}
!171 = !{ptr @imx_rproc_att_imx8ulp, !172, !"imx_rproc_att_imx8ulp", i1 false, i1 false}
!172 = !{!"../drivers/remoteproc/imx_rproc.c", i32 152, i32 35}
!173 = !{i32 1, !"wchar_size", i32 2}
!174 = !{i32 1, !"min_enum_size", i32 4}
!175 = !{i32 8, !"branch-target-enforcement", i32 0}
!176 = !{i32 8, !"sign-return-address", i32 0}
!177 = !{i32 8, !"sign-return-address-all", i32 0}
!178 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!179 = !{i32 7, !"uwtable", i32 1}
!180 = !{i32 7, !"frame-pointer", i32 2}
!181 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!182 = !{!"auto-init"}
!183 = !{i64 2148769585, i64 2148769590, i64 2148769603, i64 2148769647, i64 2148769681, i64 2148769702}
