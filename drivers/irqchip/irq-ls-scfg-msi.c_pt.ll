; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-ls-scfg-msi.c_pt.bc'
source_filename = "../drivers/irqchip/irq-ls-scfg-msi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ls_scfg_msi_cfg = type { i32, i32, i32 }
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
%struct.ls_scfg_msi = type { %struct.spinlock, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.ls_scfg_msir = type { ptr, i32, i32, i32, i32, i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.msi_msg = type { %union.anon.43, %union.anon.44, %union.anon.45 }
%union.anon.43 = type { i32 }
%union.anon.44 = type { i32 }
%union.anon.45 = type { i32 }

@__setup_str_early_parse_ls_scfg_msi = internal constant [6 x i8] c"lsmsi\00", section ".init.rodata", align 1
@__setup_early_parse_ls_scfg_msi = internal global %struct.obs_kernel_param { ptr @__setup_str_early_parse_ls_scfg_msi, ptr @early_parse_ls_scfg_msi, i32 1 }, section ".init.setup", align 4
@__initcall__kmod_irq_ls_scfg_msi__187_429_ls_scfg_msi_driver_init6 = internal global ptr @ls_scfg_msi_driver_init, section ".initcall6.init", align 4
@ls_scfg_msi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ls_scfg_msi_probe, ptr @ls_scfg_msi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ls_scfg_msi_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ls_scfg_msi_driver_exit = internal global ptr @ls_scfg_msi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [61 x i8] c"irq_ls_scfg_msi.author=Minghuan Lian <Minghuan.Lian@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [76 x i8] c"irq_ls_scfg_msi.description=Freescale Layerscape SCFG MSI controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [53 x i8] c"irq_ls_scfg_msi.file=drivers/irqchip/irq-ls-scfg-msi\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [31 x i8] c"irq_ls_scfg_msi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"no-affinity\00", [20 x i8] zeroinitializer }, align 32
@msi_affinity_flag = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ls-scfg-msi\00", [20 x i8] zeroinitializer }, align 32
@ls_scfg_msi_id = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,1s1021a-msi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1021_msi_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,1s1043a-msi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1021_msi_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1012a-msi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1021_msi_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1021a-msi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1021_msi_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1043a-msi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1021_msi_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1043a-v1.1-msi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1043_v1_1_msi_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1046a-msi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1046_msi_cfg }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@ls_scfg_msi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 355, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to initialize 'regs'\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ls_scfg_msi_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/irqchip/irq-ls-scfg-msi.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ls_scfg_msi_probe._entry_ptr = internal global ptr @ls_scfg_msi_probe._entry, section ".printk_index", align 4
@ls_scfg_msi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&msi_data->lock\00", [16 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@ls_scfg_msi_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ls_scfg_msi_domain_irq_alloc, ptr @ls_scfg_msi_domain_irq_free, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ls_scfg_msi_domains_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 223, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create IRQ domain\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ls_scfg_msi_domains_init\00", [39 x i8] zeroinitializer }, align 32
@ls_scfg_msi_domains_init._entry_ptr = internal global ptr @ls_scfg_msi_domains_init._entry, section ".printk_index", align 4
@ls_scfg_msi_domain_info = internal global { %struct.msi_domain_info, [32 x i8] } { %struct.msi_domain_info { i32 11, ptr null, ptr @ls_scfg_msi_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ls_scfg_msi_domains_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.4, i32 232, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create MSI domain\0A\00", [35 x i8] zeroinitializer }, align 32
@ls_scfg_msi_domains_init._entry_ptr.12 = internal global ptr @ls_scfg_msi_domains_init._entry.10, section ".printk_index", align 4
@ls_scfg_msi_parent_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.13, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ls_scfg_msi_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ls_scfg_msi_compose_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SCFG\00", [27 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@ls_scfg_msi_set_affinity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014cannot bind the irq to cpu%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ls_scfg_msi_set_affinity\00", [39 x i8] zeroinitializer }, align 32
@ls_scfg_msi_set_affinity._entry_ptr = internal global ptr @ls_scfg_msi_set_affinity._entry, section ".printk_index", align 4
@ls_scfg_msi_domain_irq_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013failed to teardown msi. Invalid hwirq %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ls_scfg_msi_domain_irq_free\00", [36 x i8] zeroinitializer }, align 32
@ls_scfg_msi_domain_irq_free._entry_ptr = internal global ptr @ls_scfg_msi_domain_irq_free._entry, section ".printk_index", align 4
@ls_scfg_msi_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.18, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pci_msi_mask_irq, ptr null, ptr @pci_msi_unmask_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MSI\00", [28 x i8] zeroinitializer }, align 32
@ls1021_msi_cfg = internal global { %struct.ls_scfg_msi_cfg, [20 x i8] } { %struct.ls_scfg_msi_cfg { i32 3, i32 32, i32 4 }, [20 x i8] zeroinitializer }, align 32
@ls1043_v1_1_msi_cfg = internal global { %struct.ls_scfg_msi_cfg, [20 x i8] } { %struct.ls_scfg_msi_cfg { i32 2, i32 8, i32 16 }, [20 x i8] zeroinitializer }, align 32
@ls1046_msi_cfg = internal global { %struct.ls_scfg_msi_cfg, [20 x i8] } { %struct.ls_scfg_msi_cfg { i32 2, i32 32, i32 4 }, [20 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant [19 x i8] c"ls_scfg_msi_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 420, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 76, i32 22 }
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"msi_affinity_flag\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 422, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"ls_scfg_msi_id\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 321, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 355, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 361, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [23 x i8] c"ls_scfg_msi_domain_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 187, i32 36 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 223, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [24 x i8] c"ls_scfg_msi_domain_info\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 65, i32 31 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 232, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [24 x i8] c"ls_scfg_msi_parent_chip\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 130, i32 24 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 131, i32 12 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 121, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 178, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [21 x i8] c"ls_scfg_msi_irq_chip\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 59, i32 24 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 60, i32 10 }
@___asan_gen_.107 = private unnamed_addr constant [15 x i8] c"ls1021_msi_cfg\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 303, i32 31 }
@___asan_gen_.110 = private unnamed_addr constant [20 x i8] c"ls1043_v1_1_msi_cfg\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 315, i32 31 }
@___asan_gen_.113 = private unnamed_addr constant [15 x i8] c"ls1046_msi_cfg\00", align 1
@___asan_gen_.114 = private constant [37 x i8] c"../drivers/irqchip/irq-ls-scfg-msi.c\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 309, i32 31 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_ls_scfg_msi_driver_exit, ptr @__initcall__kmod_irq_ls_scfg_msi__187_429_ls_scfg_msi_driver_init6, ptr @__setup_early_parse_ls_scfg_msi, ptr @ls_scfg_msi_domain_irq_free._entry, ptr @ls_scfg_msi_domain_irq_free._entry_ptr, ptr @ls_scfg_msi_domains_init._entry, ptr @ls_scfg_msi_domains_init._entry.10, ptr @ls_scfg_msi_domains_init._entry_ptr, ptr @ls_scfg_msi_domains_init._entry_ptr.12, ptr @ls_scfg_msi_driver_exit, ptr @ls_scfg_msi_probe._entry, ptr @ls_scfg_msi_probe._entry_ptr, ptr @ls_scfg_msi_set_affinity._entry, ptr @ls_scfg_msi_set_affinity._entry_ptr, ptr @ls_scfg_msi_driver, ptr @.str, ptr @msi_affinity_flag, ptr @.str.1, ptr @ls_scfg_msi_id, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ls_scfg_msi_probe.__key, ptr @.str.7, ptr @ls_scfg_msi_domain_ops, ptr @.str.8, ptr @.str.9, ptr @ls_scfg_msi_domain_info, ptr @.str.11, ptr @ls_scfg_msi_parent_chip, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @ls_scfg_msi_irq_chip, ptr @.str.18, ptr @ls1021_msi_cfg, ptr @ls1043_v1_1_msi_cfg, ptr @ls1046_msi_cfg], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_scfg_msi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_affinity_flag to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_scfg_msi_id to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_scfg_msi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_scfg_msi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_scfg_msi_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_scfg_msi_domains_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_scfg_msi_domain_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_scfg_msi_domains_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_scfg_msi_parent_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_scfg_msi_set_affinity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_scfg_msi_domain_irq_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls_scfg_msi_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls1021_msi_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls1043_v1_1_msi_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls1046_msi_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @early_parse_ls_scfg_msi(ptr noundef readonly %p) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @strncmp(ptr noundef nonnull %p, ptr noundef nonnull dereferenceable(12) @.str, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %storemerge = phi i1 [ false, %if.else ], [ true, %land.lhs.true.if.end_crit_edge ]
  store i1 %storemerge, ptr @msi_affinity_flag, align 4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ls_scfg_msi_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ls_scfg_msi_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ls_scfg_msi_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @ls_scfg_msi_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ls_scfg_msi_probe(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @ls_scfg_msi_id, ptr noundef %dev) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 84, i32 noundef 3520) #8
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %cfg = getelementptr inbounds %struct.ls_scfg_msi, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %cfg, align 4
  %call6 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call8 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call6) #8
  %regs = getelementptr inbounds %struct.ls_scfg_msi, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8, ptr %regs, align 4
  %cmp.i98 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i98, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end5
  %7 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call6, align 4
  %msiir_addr = getelementptr inbounds %struct.ls_scfg_msi, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %msiir_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %msiir_addr, align 4
  %pdev16 = getelementptr inbounds %struct.ls_scfg_msi, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %pdev16 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pdev, ptr %pdev16, align 4
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @ls_scfg_msi_probe.__key, i16 noundef signext 3) #8
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %mul = shl i32 32, %14
  %irqs_num = getelementptr inbounds %struct.ls_scfg_msi, ptr %call.i, i32 0, i32 9
  %15 = ptrtoint ptr %irqs_num to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul, ptr %irqs_num, align 4
  %call24 = tail call ptr @devm_bitmap_zalloc(ptr noundef %dev, i32 noundef %mul, i32 noundef 3264) #8
  %used = getelementptr inbounds %struct.ls_scfg_msi, ptr %call.i, i32 0, i32 10
  %16 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call24, ptr %used, align 4
  %tobool26.not = icmp eq ptr %call24, null
  br i1 %tobool26.not, label %if.end15.cleanup_crit_edge, label %if.end28

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end15
  %17 = ptrtoint ptr %irqs_num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irqs_num, align 4
  tail call void @__bitmap_set(ptr noundef nonnull %call24, i32 noundef 0, i32 noundef %18) #8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %call32 = tail call i32 @of_irq_count(ptr noundef %20) #8
  %msir_num = getelementptr inbounds %struct.ls_scfg_msi, ptr %call.i, i32 0, i32 7
  %21 = ptrtoint ptr %msir_num to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call32, ptr %msir_num, align 4
  %.b = load i1, ptr @msi_affinity_flag, align 4
  br i1 %.b, label %if.end28.if.end40_crit_edge, label %if.end.i.i

if.end28.if.end40_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.end.i.i:                                       ; preds = %if.end28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %22) #8
  %23 = ptrtoint ptr %msir_num to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msir_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %call4.i.i)
  %cmp.not = icmp ult i32 %24, %call4.i.i
  br i1 %cmp.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %msir_num to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call4.i.i, ptr %msir_num, align 4
  br label %if.end40

if.else:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @msi_affinity_flag, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then37, %if.end28.if.end40_crit_edge
  %26 = ptrtoint ptr %msir_num to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msir_num, align 4
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %27, i32 28) #8
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !80

devm_kcalloc.exit.thread:                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %msir108 = getelementptr inbounds %struct.ls_scfg_msi, ptr %call.i, i32 0, i32 8
  %30 = ptrtoint ptr %msir108 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %msir108, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end40
  %31 = extractvalue { i32, i1 } %28, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %31, i32 noundef 3520) #8
  %msir = getelementptr inbounds %struct.ls_scfg_msi, ptr %call.i, i32 0, i32 8
  %32 = ptrtoint ptr %msir to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call5.i.i, ptr %msir, align 4
  %tobool45.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool45.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %33 = ptrtoint ptr %msir_num to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %msir_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp49112.not = icmp eq i32 %34, 0
  br i1 %cmp49112.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %ls_scfg_msi_setup_hwirq.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0113 = phi i32 [ %inc, %ls_scfg_msi_setup_hwirq.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %35 = ptrtoint ptr %pdev16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev16, align 4
  %call.i101 = tail call i32 @platform_get_irq(ptr noundef %36, i32 noundef %i.0113) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i101)
  %cmp.i102 = icmp slt i32 %call.i101, 1
  br i1 %cmp.i102, label %for.body.ls_scfg_msi_setup_hwirq.exit_crit_edge, label %if.end.i

for.body.ls_scfg_msi_setup_hwirq.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %ls_scfg_msi_setup_hwirq.exit

if.end.i:                                         ; preds = %for.body
  %37 = ptrtoint ptr %msir to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %msir, align 4
  %arrayidx.i = getelementptr %struct.ls_scfg_msir, ptr %38, i32 %i.0113
  %index2.i = getelementptr %struct.ls_scfg_msir, ptr %38, i32 %i.0113, i32 1
  %39 = ptrtoint ptr %index2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %i.0113, ptr %index2.i, align 4
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %arrayidx.i, align 4
  %gic_irq.i = getelementptr %struct.ls_scfg_msir, ptr %38, i32 %i.0113, i32 2
  %41 = ptrtoint ptr %gic_irq.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %call.i101, ptr %gic_irq.i, align 4
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %44 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cfg, align 4
  %msir_base.i = getelementptr inbounds %struct.ls_scfg_msi_cfg, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %msir_base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %msir_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %43, i32 %47
  %mul.i = shl i32 %i.0113, 2
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %reg.i = getelementptr %struct.ls_scfg_msir, ptr %38, i32 %i.0113, i32 6
  %48 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr4.i, ptr %reg.i, align 4
  %49 = load ptr, ptr %cfg, align 4
  %msir_irqs.i = getelementptr inbounds %struct.ls_scfg_msi_cfg, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %msir_irqs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %msir_irqs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %51)
  %cmp6.i = icmp eq i32 %51, 8
  br i1 %cmp6.i, label %if.then7.i, label %if.else.i103

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.neg.i = mul i32 %i.0113, -8
  %sub.i = add i32 %add.neg.i, 24
  %bit_start.i = getelementptr %struct.ls_scfg_msir, ptr %38, i32 %i.0113, i32 3
  %52 = ptrtoint ptr %bit_start.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub.i, ptr %bit_start.i, align 4
  %sub12.i = add i32 %add.neg.i, 31
  br label %if.end18.i

if.else.i103:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %bit_start13.i = getelementptr %struct.ls_scfg_msir, ptr %38, i32 %i.0113, i32 3
  %53 = ptrtoint ptr %bit_start13.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %bit_start13.i, align 4
  %54 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cfg, align 4
  %msir_irqs15.i = getelementptr inbounds %struct.ls_scfg_msi_cfg, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %msir_irqs15.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %msir_irqs15.i, align 4
  %sub16.i = add i32 %57, -1
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i103, %if.then7.i
  %sub16.sink.i = phi i32 [ %sub12.i, %if.then7.i ], [ %sub16.i, %if.else.i103 ]
  %58 = getelementptr %struct.ls_scfg_msir, ptr %38, i32 %i.0113, i32 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %sub16.sink.i, ptr %58, align 4
  %60 = ptrtoint ptr %gic_irq.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %gic_irq.i, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %61, ptr noundef nonnull @ls_scfg_msi_irq_handler, ptr noundef %arrayidx.i) #8
  %.b73.i = load i1, ptr @msi_affinity_flag, align 4
  br i1 %.b73.i, label %if.end26.thread.i, label %if.end26.i

if.end26.thread.i:                                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %srs25.i = getelementptr %struct.ls_scfg_msir, ptr %38, i32 %i.0113, i32 5
  %62 = ptrtoint ptr %srs25.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %i.0113, ptr %srs25.i, align 4
  br label %if.then30.i

if.end26.i:                                       ; preds = %if.end18.i
  %63 = ptrtoint ptr %gic_irq.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %gic_irq.i, align 4
  %rem.i.i = and i32 %i.0113, 31
  %add.i.i = add nuw nsw i32 %rem.i.i, 1
  %arrayidx.i.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i.i
  %div3.i.i = lshr i32 %i.0113, 5
  %idx.neg.i.i = sub nsw i32 0, %div3.i.i
  %add.ptr.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 %idx.neg.i.i
  %call23.i = tail call i32 @irq_set_affinity(i32 noundef %64, ptr noundef %add.ptr.i.i) #8
  %srs.i = getelementptr %struct.ls_scfg_msir, ptr %38, i32 %i.0113, i32 5
  %65 = ptrtoint ptr %srs.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %srs.i, align 4
  %.b.pr.i = load i1, ptr @msi_affinity_flag, align 4
  br i1 %.b.pr.i, label %if.end26.i.if.then30.i_crit_edge, label %lor.lhs.false.i

if.end26.i.if.then30.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30.i

lor.lhs.false.i:                                  ; preds = %if.end26.i
  %66 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %index2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp29.i = icmp eq i32 %67, 0
  br i1 %cmp29.i, label %lor.lhs.false.i.if.then30.i_crit_edge, label %lor.lhs.false.i.ls_scfg_msi_setup_hwirq.exit_crit_edge

lor.lhs.false.i.ls_scfg_msi_setup_hwirq.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ls_scfg_msi_setup_hwirq.exit

lor.lhs.false.i.if.then30.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30.i

if.then30.i:                                      ; preds = %lor.lhs.false.i.if.then30.i_crit_edge, %if.end26.i.if.then30.i_crit_edge, %if.end26.thread.i
  %68 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cfg, align 4
  %msir_irqs322.i = getelementptr inbounds %struct.ls_scfg_msi_cfg, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %msir_irqs322.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %msir_irqs322.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp333.not.i = icmp eq i32 %71, 0
  br i1 %cmp333.not.i, label %if.then30.i.ls_scfg_msi_setup_hwirq.exit_crit_edge, label %if.then30.i.for.body.i_crit_edge

if.then30.i.for.body.i_crit_edge:                 ; preds = %if.then30.i
  br label %for.body.i

if.then30.i.ls_scfg_msi_setup_hwirq.exit_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ls_scfg_msi_setup_hwirq.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then30.i.for.body.i_crit_edge
  %72 = phi ptr [ %82, %for.body.i.for.body.i_crit_edge ], [ %69, %if.then30.i.for.body.i_crit_edge ]
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then30.i.for.body.i_crit_edge ]
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %shl.i = shl i32 %i.04.i, %74
  %75 = ptrtoint ptr %index2.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %index2.i, align 4
  %or.i = or i32 %shl.i, %76
  %77 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %used, align 4
  %rem.i.i.i = and i32 %or.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %or.i, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %78, i32 %div2.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %79 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i104 = and i32 %80, %neg.i.i.i
  store i32 %and.i.i.i104, ptr %add.ptr.i.i.i, align 4
  %inc.i = add nuw i32 %i.04.i, 1
  %81 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cfg, align 4
  %msir_irqs32.i = getelementptr inbounds %struct.ls_scfg_msi_cfg, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %msir_irqs32.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %msir_irqs32.i, align 4
  %cmp33.i = icmp ult i32 %inc.i, %84
  br i1 %cmp33.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ls_scfg_msi_setup_hwirq.exit_crit_edge

for.body.i.ls_scfg_msi_setup_hwirq.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ls_scfg_msi_setup_hwirq.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

ls_scfg_msi_setup_hwirq.exit:                     ; preds = %for.body.i.ls_scfg_msi_setup_hwirq.exit_crit_edge, %if.then30.i.ls_scfg_msi_setup_hwirq.exit_crit_edge, %lor.lhs.false.i.ls_scfg_msi_setup_hwirq.exit_crit_edge, %for.body.ls_scfg_msi_setup_hwirq.exit_crit_edge
  %inc = add nuw i32 %i.0113, 1
  %85 = ptrtoint ptr %msir_num to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %msir_num, align 4
  %cmp49 = icmp ult i32 %inc, %86
  br i1 %cmp49, label %ls_scfg_msi_setup_hwirq.exit.for.body_crit_edge, label %ls_scfg_msi_setup_hwirq.exit.for.end_crit_edge

ls_scfg_msi_setup_hwirq.exit.for.end_crit_edge:   ; preds = %ls_scfg_msi_setup_hwirq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

ls_scfg_msi_setup_hwirq.exit.for.body_crit_edge:  ; preds = %ls_scfg_msi_setup_hwirq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %ls_scfg_msi_setup_hwirq.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %87 = ptrtoint ptr %irqs_num to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %irqs_num, align 4
  %call1.i.i = tail call ptr @__irq_domain_add(ptr noundef null, i32 noundef %88, i32 noundef %88, i32 noundef 0, ptr noundef nonnull @ls_scfg_msi_domain_ops, ptr noundef nonnull %call.i) #8
  %parent.i = getelementptr inbounds %struct.ls_scfg_msi, ptr %call.i, i32 0, i32 2
  %89 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call1.i.i, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %call1.i.i, null
  %90 = ptrtoint ptr %pdev16 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pdev16, align 4
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i106

do.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %91, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end.i106:                                      ; preds = %for.end
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %91, i32 0, i32 3, i32 27
  %92 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i.i = icmp eq ptr %93, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %93, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call6.i = tail call ptr @pci_msi_create_irq_domain(ptr noundef %spec.select.i.i, ptr noundef nonnull @ls_scfg_msi_domain_info, ptr noundef nonnull %call1.i.i) #8
  %msi_domain.i = getelementptr inbounds %struct.ls_scfg_msi, ptr %call.i, i32 0, i32 3
  %94 = ptrtoint ptr %msi_domain.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call6.i, ptr %msi_domain.i, align 4
  %tobool8.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool8.not.i, label %do.end11.i, label %if.end54

do.end11.i:                                       ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %pdev16 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pdev16, align 4
  %dev13.i = getelementptr inbounds %struct.platform_device, ptr %96, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.11) #11
  %97 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %parent.i, align 4
  tail call void @irq_domain_remove(ptr noundef %98) #8
  br label %cleanup

if.end54:                                         ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %99 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %do.end11.i, %do.end.i, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.end15.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %do.end ], [ 0, %if.end54 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %do.end11.i ], [ -12, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ls_scfg_msi_remove(ptr nocapture noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %msir_num = getelementptr inbounds %struct.ls_scfg_msi, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %msir_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msir_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9.not = icmp eq i32 %3, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %msir = getelementptr inbounds %struct.ls_scfg_msi, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %ls_scfg_msi_teardown_hwirq.exit.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ls_scfg_msi_teardown_hwirq.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %msir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msir, align 4
  %arrayidx = getelementptr %struct.ls_scfg_msir, ptr %5, i32 %i.010
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %gic_irq.i = getelementptr %struct.ls_scfg_msir, ptr %5, i32 %i.010, i32 2
  %8 = ptrtoint ptr %gic_irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gic_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %for.body.if.end.i_crit_edge, label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_set_chained_handler_and_data(i32 noundef %9, ptr noundef null, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %cfg.i = getelementptr inbounds %struct.ls_scfg_msi, ptr %7, i32 0, i32 6
  %10 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg.i, align 4
  %msir_irqs1.i = getelementptr inbounds %struct.ls_scfg_msi_cfg, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %msir_irqs1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msir_irqs1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp32.not.i = icmp eq i32 %13, 0
  br i1 %cmp32.not.i, label %if.end.i.ls_scfg_msi_teardown_hwirq.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.ls_scfg_msi_teardown_hwirq.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ls_scfg_msi_teardown_hwirq.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %index.i = getelementptr %struct.ls_scfg_msir, ptr %5, i32 %i.010, i32 1
  %used.i = getelementptr inbounds %struct.ls_scfg_msi, ptr %7, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %14 = phi ptr [ %11, %for.body.lr.ph.i ], [ %24, %for.body.i.for.body.i_crit_edge ]
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %shl.i = shl i32 %i.03.i, %16
  %17 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index.i, align 4
  %or.i = or i32 %shl.i, %18
  %19 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %used.i, align 4
  %rem.i.i.i = and i32 %or.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %or.i, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %20, i32 %div2.i.i.i
  %21 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i.i = or i32 %shl.i.i.i, %22
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  %inc.i = add nuw i32 %i.03.i, 1
  %23 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfg.i, align 4
  %msir_irqs.i = getelementptr inbounds %struct.ls_scfg_msi_cfg, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %msir_irqs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msir_irqs.i, align 4
  %cmp3.i = icmp ult i32 %inc.i, %26
  br i1 %cmp3.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ls_scfg_msi_teardown_hwirq.exit_crit_edge

for.body.i.ls_scfg_msi_teardown_hwirq.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ls_scfg_msi_teardown_hwirq.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

ls_scfg_msi_teardown_hwirq.exit:                  ; preds = %for.body.i.ls_scfg_msi_teardown_hwirq.exit_crit_edge, %if.end.i.ls_scfg_msi_teardown_hwirq.exit_crit_edge
  %inc = add nuw i32 %i.010, 1
  %27 = ptrtoint ptr %msir_num to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msir_num, align 4
  %cmp = icmp ult i32 %inc, %28
  br i1 %cmp, label %ls_scfg_msi_teardown_hwirq.exit.for.body_crit_edge, label %ls_scfg_msi_teardown_hwirq.exit.for.end_crit_edge

ls_scfg_msi_teardown_hwirq.exit.for.end_crit_edge: ; preds = %ls_scfg_msi_teardown_hwirq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

ls_scfg_msi_teardown_hwirq.exit.for.body_crit_edge: ; preds = %ls_scfg_msi_teardown_hwirq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %ls_scfg_msi_teardown_hwirq.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %msi_domain = getelementptr inbounds %struct.ls_scfg_msi, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %msi_domain to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %msi_domain, align 4
  tail call void @irq_domain_remove(ptr noundef %30) #8
  %parent = getelementptr inbounds %struct.ls_scfg_msi, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent, align 4
  tail call void @irq_domain_remove(ptr noundef %32) #8
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %driver_data.i.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_bitmap_zalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ls_scfg_msi_irq_handler(ptr noundef %desc) #4 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip.i, align 8
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data.i) #8
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %11(ptr noundef %irq_data4.i) #8
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %13, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %13(ptr noundef %irq_data4.i) #8
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %reg = getelementptr inbounds %struct.ls_scfg_msir, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #8, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %val, align 4
  %bit_start = getelementptr inbounds %struct.ls_scfg_msir, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %bit_start to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bit_start, align 4
  %bit_end = getelementptr inbounds %struct.ls_scfg_msir, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %bit_end to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bit_end, align 4
  %add = add i32 %21, 1
  %call4 = call i32 @_find_next_bit_be(ptr noundef nonnull %val, i32 noundef %add, i32 noundef %19) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %add)
  %cmp30 = icmp slt i32 %call4, %add
  br i1 %cmp30, label %for.body.lr.ph, label %chained_irq_enter.exit.for.end_crit_edge

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %cfg = getelementptr inbounds %struct.ls_scfg_msi, ptr %3, i32 0, i32 6
  %srs = getelementptr inbounds %struct.ls_scfg_msir, ptr %1, i32 0, i32 5
  %parent = getelementptr inbounds %struct.ls_scfg_msi, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %pos.031 = phi i32 [ %call4, %for.body.lr.ph ], [ %call8, %for.body.for.body_crit_edge ]
  %22 = ptrtoint ptr %bit_end to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bit_end, align 4
  %sub = sub i32 %23, %pos.031
  %24 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %shl = shl i32 %sub, %27
  %28 = ptrtoint ptr %srs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %srs, align 4
  %or = or i32 %shl, %29
  %30 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent, align 4
  %call6 = call i32 @generic_handle_domain_irq(ptr noundef %31, i32 noundef %or) #8
  %add7 = add nsw i32 %pos.031, 1
  %call8 = call i32 @_find_next_bit_be(ptr noundef nonnull %val, i32 noundef %add, i32 noundef %add7) #8
  %cmp = icmp slt i32 %call8, %add
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %32 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chip.i, align 8
  %irq_eoi.i26 = getelementptr inbounds %struct.irq_chip, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %irq_eoi.i26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %irq_eoi.i26, align 4
  %tobool.not.i27 = icmp eq ptr %35, null
  br i1 %tobool.not.i27, label %if.else.i28, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_exit.exit

if.else.i28:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %33, i32 0, i32 9
  %36 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i28, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %37, %if.else.i28 ], [ %35, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_affinity(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ls_scfg_msi_domain_irq_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readnone %args) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_irqs)
  %cmp.not = icmp eq i32 %nr_irqs, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !83

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 145, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %1) #8
  %used = getelementptr inbounds %struct.ls_scfg_msi, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %used, align 4
  %irqs_num = getelementptr inbounds %struct.ls_scfg_msi, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %irqs_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irqs_num, align 4
  %call = tail call i32 @_find_first_zero_bit_be(ptr noundef %3, i32 noundef %5) #8
  %6 = ptrtoint ptr %irqs_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irqs_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %7)
  %cmp20 = icmp ult i32 %call, %7
  br i1 %cmp20, label %if.end27, label %if.end23

if.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %1) #8
  br label %cleanup

if.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %used, align 4
  %rem.i = and i32 %call, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %call, 5
  %add.ptr.i = getelementptr i32, ptr %9, i32 %div2.i
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %11, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %1) #8
  tail call void @irq_domain_set_info(ptr noundef %domain, i32 noundef %virq, i32 noundef %call, ptr noundef nonnull @ls_scfg_msi_parent_chip, ptr noundef %1, ptr noundef nonnull @handle_simple_irq, ptr noundef null, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end23
  %retval.0 = phi i32 [ 0, %if.end27 ], [ -28, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ls_scfg_msi_domain_irq_free(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %domain, i32 noundef %virq) #8
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %irqs_num = getelementptr inbounds %struct.ls_scfg_msi, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %irqs_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irqs_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp2.not = icmp ult i32 %3, %5
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %3) #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_lock(ptr noundef %1) #8
  %used = getelementptr inbounds %struct.ls_scfg_msi, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %used, align 4
  %rem.i = and i32 %3, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %3, 5
  %add.ptr.i = getelementptr i32, ptr %7, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %9, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ls_scfg_msi_set_affinity(ptr nocapture noundef readonly %irq_data, ptr noundef %mask, i1 noundef zeroext %force) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %.b = load i1, ptr @msi_affinity_flag, align 4
  br i1 %.b, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  br i1 %force, label %if.else, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i = tail call i32 @_find_first_and_bit(ptr noundef %mask, ptr noundef nonnull @__cpu_online_mask, i32 noundef %2) #8
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %mask, i32 noundef %2) #8
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end.i.i
  %cpu.0 = phi i32 [ %call.i, %if.else ], [ %call6.i.i, %if.end.i.i ]
  %msir_num = getelementptr inbounds %struct.ls_scfg_msi, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %msir_num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msir_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cpu.0, i32 %4)
  %cmp.not = icmp ult i32 %cpu.0, %4
  br i1 %cmp.not, label %if.end7, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end5
  %msir = getelementptr inbounds %struct.ls_scfg_msi, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %msir to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %msir, align 4
  %gic_irq = getelementptr %struct.ls_scfg_msir, ptr %6, i32 %cpu.0, i32 2
  %7 = ptrtoint ptr %gic_irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gic_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8 = icmp eq i32 %8, 0
  br i1 %cmp8, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %cpu.0) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %rem.i = and i32 %cpu.0, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu.0, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %common.i = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 3
  %9 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %common.i, align 4
  %effective_affinity.i = getelementptr inbounds %struct.irq_common_data, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %effective_affinity.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %effective_affinity.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i.i = add i32 %13, 31
  %14 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %14, 536870908
  %15 = call ptr @memcpy(ptr %12, ptr %add.ptr.i, i32 %mul.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end11 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ls_scfg_msi_compose_msg(ptr nocapture noundef readonly %data, ptr nocapture noundef %msg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %msiir_addr = getelementptr inbounds %struct.ls_scfg_msi, ptr %1, i32 0, i32 5
  %2 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %2, align 4
  %4 = ptrtoint ptr %msiir_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msiir_addr, align 4
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %msg, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hwirq, align 4
  %9 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %9, align 4
  %.b = load i1, ptr @msi_affinity_flag, align 4
  br i1 %.b, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %common.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %11 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %common.i, align 4
  %effective_affinity.i = getelementptr inbounds %struct.irq_common_data, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %effective_affinity.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %effective_affinity.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %14, i32 noundef %15) #8
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %9, align 4
  %or = or i32 %17, %call.i
  store i32 %or, ptr %9, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_and_bit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !61, !63, !65, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__setup_early_parse_ls_scfg_msi, !1, !"__setup_early_parse_ls_scfg_msi", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-ls-scfg-msi.c", i32 83, i32 1}
!2 = !{ptr @__initcall__kmod_irq_ls_scfg_msi__187_429_ls_scfg_msi_driver_init6, !3, !"__initcall__kmod_irq_ls_scfg_msi__187_429_ls_scfg_msi_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-ls-scfg-msi.c", i32 429, i32 1}
!4 = !{ptr @__exitcall_ls_scfg_msi_driver_exit, !3, !"__exitcall_ls_scfg_msi_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author188, !6, !"__UNIQUE_ID_author188", i1 false, i1 false}
!6 = !{!"../drivers/irqchip/irq-ls-scfg-msi.c", i32 431, i32 1}
!7 = !{ptr @__UNIQUE_ID_description189, !8, !"__UNIQUE_ID_description189", i1 false, i1 false}
!8 = !{!"../drivers/irqchip/irq-ls-scfg-msi.c", i32 432, i32 1}
!9 = !{ptr @__UNIQUE_ID_file190, !10, !"__UNIQUE_ID_file190", i1 false, i1 false}
!10 = !{!"../drivers/irqchip/irq-ls-scfg-msi.c", i32 433, i32 1}
!11 = !{ptr @__UNIQUE_ID_license191, !10, !"__UNIQUE_ID_license191", i1 false, i1 false}
!12 = !{ptr @__setup_str_early_parse_ls_scfg_msi, !1, !"__setup_str_early_parse_ls_scfg_msi", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/irqchip/irq-ls-scfg-msi.c", i32 76, i32 22}
!15 = distinct !{null, !16, !"msi_affinity_flag", i1 false, i1 false}
!16 = !{!"../drivers/irqchip/irq-ls-scfg-msi.c", i32 72, i32 12}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/irqchip/irq-ls-scfg-msi.c", i32 422, i32 11}
!19 = !{ptr @ls_scfg_msi_driver, !20, !"ls_scfg_msi_driver", i1 false, i1 false}
!20 = !{!"../drivers/irqchip/irq-ls-scfg-msi.c", i32 420, i32 31}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/irqchip/irq-ls-scfg-msi.c", i32 355, i32 3}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ls_scfg_msi_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @ls_scfg_msi_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @ls_scfg_msi_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/irqchip/irq-ls-scfg-msi.c", i32 361, i32 2}
!31 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/irqchip/irq-ls-scfg-msi.c", i32 223, i32 3}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ls_scfg_msi_domains_init._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @ls_scfg_msi_domains_init._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/irqchip/irq-ls-scfg-msi.c", i32 232, i32 3}
!39 = !{ptr @ls_scfg_msi_domains_init._entry.10, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ls_scfg_msi_domains_init._entry_ptr.12, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @ls_scfg_msi_domain_ops, !42, !"ls_scfg_msi_domain_ops", i1 false, i1 false}
!42 = !{!"../drivers/irqchip/irq-ls-scfg-msi.c", i32 187, i32 36}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/irqchip/irq-ls-scfg-msi.c", i32 131, i32 12}
!45 = !{ptr @ls_scfg_msi_parent_chip, !46, !"ls_scfg_msi_parent_chip", i1 false, i1 false}
!46 = !{!"../drivers/irqchip/irq-ls-scfg-msi.c", i32 130, i32 24}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/irqchip/irq-ls-scfg-msi.c", i32 121, i32 3}
!49 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ls_scfg_msi_set_affinity._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @ls_scfg_msi_set_affinity._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/irqchip/irq-ls-scfg-msi.c", i32 178, i32 3}
!54 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ls_scfg_msi_domain_irq_free._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @ls_scfg_msi_domain_irq_free._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @ls_scfg_msi_domain_info, !58, !"ls_scfg_msi_domain_info", i1 false, i1 false}
!58 = !{!"../drivers/irqchip/irq-ls-scfg-msi.c", i32 65, i32 31}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/irqchip/irq-ls-scfg-msi.c", i32 60, i32 10}
!61 = !{ptr @ls_scfg_msi_irq_chip, !62, !"ls_scfg_msi_irq_chip", i1 false, i1 false}
!62 = !{!"../drivers/irqchip/irq-ls-scfg-msi.c", i32 59, i32 24}
!63 = !{ptr @ls_scfg_msi_id, !64, !"ls_scfg_msi_id", i1 false, i1 false}
!64 = !{!"../drivers/irqchip/irq-ls-scfg-msi.c", i32 321, i32 34}
!65 = !{ptr @ls1021_msi_cfg, !66, !"ls1021_msi_cfg", i1 false, i1 false}
!66 = !{!"../drivers/irqchip/irq-ls-scfg-msi.c", i32 303, i32 31}
!67 = !{ptr @ls1043_v1_1_msi_cfg, !68, !"ls1043_v1_1_msi_cfg", i1 false, i1 false}
!68 = !{!"../drivers/irqchip/irq-ls-scfg-msi.c", i32 315, i32 31}
!69 = !{ptr @ls1046_msi_cfg, !70, !"ls1046_msi_cfg", i1 false, i1 false}
!70 = !{!"../drivers/irqchip/irq-ls-scfg-msi.c", i32 309, i32 31}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{i64 4643253}
!82 = !{i64 2153194066}
!83 = !{!"branch_weights", i32 2000, i32 1}
