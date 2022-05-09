; ModuleID = '/llk/IR_all_yes/drivers/scsi/aic94xx/aic94xx_hwi.c_pt.bc'
source_filename = "../drivers/scsi/aic94xx/aic94xx_hwi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.asd_ha_struct = type { ptr, ptr, %struct.sas_ha_struct, i8, i32, %struct.spinlock, [2 x %struct.asd_ha_addrspace], %struct.hw_profile, [8 x %struct.asd_phy], %struct.spinlock, [8 x %struct.asd_port], [8 x %struct.asd_sas_port], ptr, %struct.asd_seq_data, i32, ptr }
%struct.sas_ha_struct = type { %struct.list_head, %struct.mutex, i32, %struct.spinlock, i32, %struct.wait_queue_head, %struct.list_head, %struct.mutex, %struct.scsi_core, ptr, ptr, ptr, ptr, ptr, ptr, [3 x i8], %struct.spinlock, ptr, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, i32 }
%struct.scsi_core = type { ptr }
%struct.asd_ha_addrspace = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.hw_profile = type { %struct.bios_struct, %struct.unit_element_struct, %struct.flash_struct, [8 x i8], [13 x i8], i8, [8 x %struct.asd_phy_desc], i32, ptr, i32, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32 }
%struct.bios_struct = type { i32, i8, i8, i32 }
%struct.unit_element_struct = type { i16, i16, ptr }
%struct.flash_struct = type { i32, i32, i32, i8, i8, i8, i8, i32 }
%struct.asd_phy_desc = type { [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asd_phy = type { %struct.asd_sas_phy, ptr, ptr, ptr, ptr, [1068 x i8] }
%struct.asd_sas_phy = type { %struct.atomic_t, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [8 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, %struct.list_head, ptr, ptr, ptr }
%struct.asd_port = type { [8 x i8], [8 x i8], i32, i32 }
%struct.asd_sas_port = type { %struct.sas_discovery, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.sas_work, i32, i32, i32, [8 x i8], [8 x i8], i32, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, ptr, ptr, ptr }
%struct.sas_discovery = type { [4 x %struct.sas_discovery_event], i32, [8 x i8], [8 x i8], [8 x i8], i32 }
%struct.sas_discovery_event = type { %struct.sas_work, ptr }
%struct.sas_work = type { %struct.list_head, %struct.work_struct }
%struct.asd_seq_data = type { %struct.spinlock, i16, i32, %struct.list_head, i32, %struct.asd_dma_tok, %struct.spinlock, ptr, ptr, i32, %struct.tasklet_struct, ptr, ptr, i32, i32, i32, ptr, i32, ptr }
%struct.asd_dma_tok = type { ptr, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.94, i32 }
%union.anon.94 = type { ptr }
%struct.sas_identify_frame = type { i8, i8, %union.anon.90, %union.anon.92, [8 x i8], [8 x i8], i8, [7 x i8], i32 }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { i8 }
%union.anon.92 = type { %struct.anon.93 }
%struct.anon.93 = type { i8 }
%struct.asd_ascb = type { %struct.list_head, ptr, ptr, %struct.asd_dma_tok, ptr, ptr, i8, %struct.timer_list, ptr, i8, i16, i32, i32, ptr }
%struct.scb_header = type <{ i64, i16, i8 }>
%struct.scb = type { %struct.scb_header, %union.anon.95 }
%union.anon.95 = type { %struct.initiate_ssp_task }
%struct.initiate_ssp_task = type <{ i8, i32, %struct.ssp_frame_hdr, %struct.ssp_command_iu, i16, i16, i8, i8, i8, [5 x i8], [3 x %struct.sg_el] }>
%struct.ssp_frame_hdr = type { i8, [3 x i8], i8, [3 x i8], i16, i16, i32, i16, i16, i32 }
%struct.ssp_command_iu = type { [8 x i8], i8, %union.anon.96, i8, i8, [16 x i8], [0 x i8] }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { i8 }
%struct.sg_el = type { i64, i32, i16, i8, i8 }
%struct.done_list_struct = type { i16, i8, [4 x i8], i8 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__param_str_max_devs = internal constant [17 x i8] c"aic94xx.max_devs\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@max_devs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_max_devs = internal constant %struct.kernel_param { ptr @__param_str_max_devs, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @max_devs } }, section "__param", align 4
@__UNIQUE_ID_max_devstype290 = internal constant [30 x i8] c"aic94xx.parmtype=max_devs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_devs291 = internal constant [109 x i8] c"aic94xx.parm=max_devs:\0A\09Maximum number of SAS devices to support (not LUs).\0A\09Default: 2176, Maximum: 65663.\0A\00", section ".modinfo", align 1
@__param_str_max_cmnds = internal constant [18 x i8] c"aic94xx.max_cmnds\00", align 1
@max_cmnds = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_max_cmnds = internal constant %struct.kernel_param { ptr @__param_str_max_cmnds, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @max_cmnds } }, section "__param", align 4
@__UNIQUE_ID_max_cmndstype292 = internal constant [31 x i8] c"aic94xx.parmtype=max_cmnds:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_cmnds293 = internal constant [94 x i8] c"aic94xx.parm=max_cmnds:\0A\09Maximum number of commands queuable.\0A\09Default: 512, Maximum: 66047.\0A\00", section ".modinfo", align 1
@asd_init_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015aic94xx: couldn't read PCIC_HSTPCIX_CNTRL of %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"asd_init_hw\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/aic94xx/aic94xx_hwi.c\00", [61 x i8] zeroinitializer }, align 32
@asd_init_hw._entry_ptr = internal global ptr @asd_init_hw._entry, section ".printk_index", align 4
@asd_init_hw._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\015aic94xx: couldn't disable split completion timer of %s\0A\00", [38 x i8] zeroinitializer }, align 32
@asd_init_hw._entry_ptr.5 = internal global ptr @asd_init_hw._entry.3, section ".printk_index", align 4
@asd_init_hw._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015aic94xx: couldn't read ocm(%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@asd_init_hw._entry_ptr.8 = internal global ptr @asd_init_hw._entry.6, section ".printk_index", align 4
@asd_init_hw._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015aic94xx: couldn't read flash(%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@asd_init_hw._entry_ptr.11 = internal global ptr @asd_init_hw._entry.9, section ".printk_index", align 4
@asd_init_hw._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015aic94xx: No SAS Address provided for %s\0A\00", [53 x i8] zeroinitializer }, align 32
@asd_init_hw._entry_ptr.14 = internal global ptr @asd_init_hw._entry.12, section ".printk_index", align 4
@asd_init_hw._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015aic94xx: couldn't initialize phys for %s\0A\00", [52 x i8] zeroinitializer }, align 32
@asd_init_hw._entry_ptr.17 = internal global ptr @asd_init_hw._entry.15, section ".printk_index", align 4
@asd_init_hw._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015aic94xx: couldn't initialize scbs for %s\0A\00", [52 x i8] zeroinitializer }, align 32
@asd_init_hw._entry_ptr.20 = internal global ptr @asd_init_hw._entry.18, section ".printk_index", align 4
@asd_init_hw._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015aic94xx: couldn't initialize the done list:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@asd_init_hw._entry_ptr.23 = internal global ptr @asd_init_hw._entry.21, section ".printk_index", align 4
@asd_init_hw._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015aic94xx: couldn't initialize escbs\0A\00", [58 x i8] zeroinitializer }, align 32
@asd_init_hw._entry_ptr.26 = internal global ptr @asd_init_hw._entry.24, section ".printk_index", align 4
@asd_init_hw._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015aic94xx: couldn't init the chip\0A\00", [61 x i8] zeroinitializer }, align 32
@asd_init_hw._entry_ptr.29 = internal global ptr @asd_init_hw._entry.27, section ".printk_index", align 4
@asd_post_ascb_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 1202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015aic94xx: %s: scb queue full\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"asd_post_ascb_list\00", [45 x i8] zeroinitializer }, align 32
@asd_post_ascb_list._entry_ptr = internal global ptr @asd_post_ascb_list._entry, section ".printk_index", align 4
@asd_enable_phys._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 1343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015aic94xx: %s called with phy_mask of 0!?\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"asd_enable_phys\00", [16 x i8] zeroinitializer }, align 32
@asd_enable_phys._entry_ptr = internal global ptr @asd_enable_phys._entry, section ".printk_index", align 4
@asd_enable_phys._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 1355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015aic94xx: no memory for control phy ascb list\0A\00", [48 x i8] zeroinitializer }, align 32
@asd_enable_phys._entry_ptr.36 = internal global ptr @asd_enable_phys._entry.34, section ".printk_index", align 4
@asd_enable_phys._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.2, i32 1365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015aic94xx: posting %d control phy scbs\0A\00", [56 x i8] zeroinitializer }, align 32
@asd_enable_phys._entry_ptr.39 = internal global ptr @asd_enable_phys._entry.37, section ".printk_index", align 4
@MBAR0_SWB_SIZE = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@asd_init_sw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015aic94xx: couldn't access conf. space of %s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"asd_init_sw\00", [20 x i8] zeroinitializer }, align 32
@asd_init_sw._entry_ptr = internal global ptr @asd_init_sw._entry, section ".printk_index", align 4
@asd_init_sw._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015aic94xx: couldn't write to MBAR_KEY of %s\0A\00", [51 x i8] zeroinitializer }, align 32
@asd_init_sw._entry_ptr.44 = internal global ptr @asd_init_sw._entry.42, section ".printk_index", align 4
@asd_init_sw.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&asd_ha->iolock\00", [16 x i8] zeroinitializer }, align 32
@asd_init_ctxmem.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&asd_ha->hw_prof.ddb_lock\00", [38 x i8] zeroinitializer }, align 32
@asd_get_max_scb_ddb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015aic94xx: max_scbs:%d, max_ddbs:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"asd_get_max_scb_ddb\00", [44 x i8] zeroinitializer }, align 32
@asd_get_max_scb_ddb._entry_ptr = internal global ptr @asd_get_max_scb_ddb._entry, section ".printk_index", align 4
@asd_extend_devctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\015aic94xx: couldn't allocate memory for %d devices\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"asd_extend_devctx\00", [46 x i8] zeroinitializer }, align 32
@asd_extend_devctx._entry_ptr = internal global ptr @asd_extend_devctx._entry, section ".printk_index", align 4
@asd_dma_token_cache = external dso_local local_unnamed_addr global ptr, align 4
@asd_extend_cmdctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015aic94xx: couldn't allocate memory for %d commands\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"asd_extend_cmdctx\00", [46 x i8] zeroinitializer }, align 32
@asd_extend_cmdctx._entry_ptr = internal global ptr @asd_extend_cmdctx._entry, section ".printk_index", align 4
@asd_propagate_sas_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015aic94xx: setting phy%d addr to %llx\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"asd_propagate_sas_addr\00", [41 x i8] zeroinitializer }, align 32
@asd_propagate_sas_addr._entry_ptr = internal global ptr @asd_propagate_sas_addr._entry, section ".printk_index", align 4
@asd_init_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015aic94xx: no mem for IDENTIFY for phy%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"asd_init_phy\00", [19 x i8] zeroinitializer }, align 32
@asd_init_phy._entry_ptr = internal global ptr @asd_init_phy._entry, section ".printk_index", align 4
@asd_init_ports.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&asd_ha->asd_ports_lock\00", [40 x i8] zeroinitializer }, align 32
@asd_init_scbs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&seq->tc_index_lock\00", [44 x i8] zeroinitializer }, align 32
@asd_init_scbs.__key.59 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&seq->pend_q_lock\00", [46 x i8] zeroinitializer }, align 32
@asd_dl_tasklet_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 732, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015aic94xx: BUG:sequencer:dl:no ascb?!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"asd_dl_tasklet_handler\00", [41 x i8] zeroinitializer }, align 32
@asd_dl_tasklet_handler._entry_ptr = internal global ptr @asd_dl_tasklet_handler._entry, section ".printk_index", align 4
@asd_init_escbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015aic94xx: couldn't allocate edbs\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"asd_init_escbs\00", [17 x i8] zeroinitializer }, align 32
@asd_init_escbs._entry_ptr = internal global ptr @asd_init_escbs._entry, section ".printk_index", align 4
@asd_init_escbs._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015aic94xx: couldn't allocate escbs\0A\00", [60 x i8] zeroinitializer }, align 32
@asd_init_escbs._entry_ptr.67 = internal global ptr @asd_init_escbs._entry.65, section ".printk_index", align 4
@asd_alloc_edbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\015aic94xx: num_edbs:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"asd_alloc_edbs\00", [17 x i8] zeroinitializer }, align 32
@asd_alloc_edbs._entry_ptr = internal global ptr @asd_alloc_edbs._entry, section ".printk_index", align 4
@asd_alloc_escbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015aic94xx: couldn't allocate list of escbs\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"asd_alloc_escbs\00", [16 x i8] zeroinitializer }, align 32
@asd_alloc_escbs._entry_ptr = internal global ptr @asd_alloc_escbs._entry, section ".printk_index", align 4
@asd_alloc_escbs._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\015aic94xx: num_escbs:%d\0A\00", [39 x i8] zeroinitializer }, align 32
@asd_alloc_escbs._entry_ptr.74 = internal global ptr @asd_alloc_escbs._entry.72, section ".printk_index", align 4
@asd_init_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015aic94xx: couldn't hard reset %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"asd_init_chip\00", [18 x i8] zeroinitializer }, align 32
@asd_init_chip._entry_ptr = internal global ptr @asd_init_chip._entry, section ".printk_index", align 4
@asd_init_chip._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.2, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015aic94xx: couldn't init seqs for %s\0A\00", [58 x i8] zeroinitializer }, align 32
@asd_init_chip._entry_ptr.79 = internal global ptr @asd_init_chip._entry.77, section ".printk_index", align 4
@asd_init_chip._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.76, ptr @.str.2, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015aic94xx: couldn't start seqs for %s\0A\00", [57 x i8] zeroinitializer }, align 32
@asd_init_chip._entry_ptr.82 = internal global ptr @asd_init_chip._entry.80, section ".printk_index", align 4
@asd_com_sas_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.2, i32 777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015aic94xx: %s: command/status buffer dma parity error\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"asd_com_sas_isr\00", [16 x i8] zeroinitializer }, align 32
@asd_com_sas_isr._entry_ptr = internal global ptr @asd_com_sas_isr._entry, section ".printk_index", align 4
@asd_com_sas_isr._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.2, i32 787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\015aic94xx: %s: command/status dma error, DMAERR: 0x%02x, CSDMAADR: 0x%04x, CSDMAADR+4: 0x%04x\0A\00", [33 x i8] zeroinitializer }, align 32
@asd_com_sas_isr._entry_ptr.87 = internal global ptr @asd_com_sas_isr._entry.85, section ".printk_index", align 4
@asd_com_sas_isr._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.84, ptr @.str.2, i32 788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\015aic94xx: CSBUFFER:\0A\00", [42 x i8] zeroinitializer }, align 32
@asd_com_sas_isr._entry_ptr.90 = internal global ptr @asd_com_sas_isr._entry.88, section ".printk_index", align 4
@asd_com_sas_isr._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.84, ptr @.str.2, i32 794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015aic94xx: %08x %08x %08x %08x\0A\00", [32 x i8] zeroinitializer }, align 32
@asd_com_sas_isr._entry_ptr.93 = internal global ptr @asd_com_sas_isr._entry.91, section ".printk_index", align 4
@asd_com_sas_isr._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.84, ptr @.str.2, i32 802, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015aic94xx: %s: overlay dma error:0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@asd_com_sas_isr._entry_ptr.96 = internal global ptr @asd_com_sas_isr._entry.94, section ".printk_index", align 4
@asd_chip_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015aic94xx: chip reset for %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"asd_chip_reset\00", [17 x i8] zeroinitializer }, align 32
@asd_chip_reset._entry_ptr = internal global ptr @asd_chip_reset._entry, section ".printk_index", align 4
@asd_dch_sas_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 899, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\015aic94xx: %s: CFIFTOERR\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"asd_dch_sas_isr\00", [16 x i8] zeroinitializer }, align 32
@asd_dch_sas_isr._entry_ptr = internal global ptr @asd_dch_sas_isr._entry, section ".printk_index", align 4
@asd_arp2_err.halt_code = internal constant { [256 x ptr], [256 x i8] } { [256 x ptr] [ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.112, ptr @.str.112, ptr @.str.112, ptr @.str.112, ptr @.str.112, ptr @.str.112, ptr @.str.112, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136, ptr @.str.136], [256 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"UNEXPECTED_INTERRUPT0\00", [42 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"UNEXPECTED_INTERRUPT1\00", [42 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"UNEXPECTED_INTERRUPT2\00", [42 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"UNEXPECTED_INTERRUPT3\00", [42 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"UNEXPECTED_INTERRUPT4\00", [42 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"UNEXPECTED_INTERRUPT5\00", [42 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"UNEXPECTED_INTERRUPT6\00", [42 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"UNEXPECTED_INTERRUPT7\00", [42 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"UNEXPECTED_INTERRUPT8\00", [42 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"UNEXPECTED_INTERRUPT9\00", [42 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"UNEXPECTED_INTERRUPT10\00", [41 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unknown[11,19]\00", [17 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NO_FREE_SCB_AVAILABLE\00", [42 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"INVALID_SCB_OPCODE\00", [45 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"INVALID_MBX_OPCODE\00", [45 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"INVALID_ATA_STATE\00", [46 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ATA_QUEUE_FULL\00", [17 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ATA_TAG_TABLE_FAULT\00", [44 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ATA_TAG_MASK_FAULT\00", [45 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"BAD_LINK_QUEUE_STATE\00", [43 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DMA2CHIM_QUEUE_ERROR\00", [43 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EMPTY_SCB_LIST_FULL\00", [44 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"unknown[30]\00", [20 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IN_USE_SCB_ON_FREE_LIST\00", [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BAD_OPEN_WAIT_STATE\00", [44 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"INVALID_STP_AFFILIATION\00", [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"unknown[34]\00", [20 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EXEC_QUEUE_ERROR\00", [47 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TOO_MANY_EMPTIES_NEEDED\00", [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EMPTY_REQ_QUEUE_ERROR\00", [42 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Q_MONIRTT_MGMT_ERROR\00", [43 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TARGET_MODE_FLOW_ERROR\00", [41 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DEVICE_QUEUE_NOT_FOUND\00", [41 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"START_IRTT_TIMER_ERROR\00", [41 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ABORT_TASK_ILLEGAL_REQ\00", [41 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"unknown[43,255]\00", [16 x i8] zeroinitializer }, align 32
@asd_arp2_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.2, i32 854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015aic94xx: %s: CSEQ arp2int:0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"asd_arp2_err\00", [19 x i8] zeroinitializer }, align 32
@asd_arp2_err._entry_ptr = internal global ptr @asd_arp2_err._entry, section ".printk_index", align 4
@asd_arp2_err._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.138, ptr @.str.2, i32 858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015aic94xx: %s: CSEQ halted: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@asd_arp2_err._entry_ptr.141 = internal global ptr @asd_arp2_err._entry.139, section ".printk_index", align 4
@asd_arp2_err._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.138, ptr @.str.2, i32 862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015aic94xx: %s: CARP2INT:0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@asd_arp2_err._entry_ptr.144 = internal global ptr @asd_arp2_err._entry.142, section ".printk_index", align 4
@asd_arp2_err._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.138, ptr @.str.2, i32 875, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015aic94xx: %s: LSEQ%d arp2int:0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@asd_arp2_err._entry_ptr.147 = internal global ptr @asd_arp2_err._entry.145, section ".printk_index", align 4
@asd_arp2_err._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.138, ptr @.str.2, i32 880, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015aic94xx: %s: LSEQ%d halted: %s\0A\00", [62 x i8] zeroinitializer }, align 32
@asd_arp2_err._entry_ptr.150 = internal global ptr @asd_arp2_err._entry.148, section ".printk_index", align 4
@asd_arp2_err._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.138, ptr @.str.2, i32 884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015aic94xx: %s: LSEQ%d ARP2INT:0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@asd_arp2_err._entry_ptr.153 = internal global ptr @asd_arp2_err._entry.151, section ".printk_index", align 4
@asd_rbi_exsi_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.2, i32 914, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015aic94xx: hmm, EXSI interrupted but no error?\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"asd_rbi_exsi_isr\00", [47 x i8] zeroinitializer }, align 32
@asd_rbi_exsi_isr._entry_ptr = internal global ptr @asd_rbi_exsi_isr._entry, section ".printk_index", align 4
@asd_rbi_exsi_isr._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.155, ptr @.str.2, i32 920, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015aic94xx: ASI SEEPROM format error for %s\0A\00", [52 x i8] zeroinitializer }, align 32
@asd_rbi_exsi_isr._entry_ptr.158 = internal global ptr @asd_rbi_exsi_isr._entry.156, section ".printk_index", align 4
@asd_rbi_exsi_isr._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.155, ptr @.str.2, i32 925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015aic94xx: ASI SEEPROM checksum 0x%x error for %s\0A\00", [45 x i8] zeroinitializer }, align 32
@asd_rbi_exsi_isr._entry_ptr.161 = internal global ptr @asd_rbi_exsi_isr._entry.159, section ".printk_index", align 4
@asd_rbi_exsi_isr._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.155, ptr @.str.2, i32 930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\015aic94xx: hmm, ASIERR?\0A\00", [39 x i8] zeroinitializer }, align 32
@asd_rbi_exsi_isr._entry_ptr.164 = internal global ptr @asd_rbi_exsi_isr._entry.162, section ".printk_index", align 4
@asd_rbi_exsi_isr._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.155, ptr @.str.2, i32 945, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [131 x i8], [61 x i8] } { [131 x i8] c"\015aic94xx: %s: CPI2 xfer err: addr: 0x%x, wdata: 0x%x, count: 0x%x, byteen: 0x%x, targerr: 0x%x master id: 0x%x, master err: 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@asd_rbi_exsi_isr._entry_ptr.167 = internal global ptr @asd_rbi_exsi_isr._entry.165, section ".printk_index", align 4
@asd_hst_pcix_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str.2, i32 968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015aic94xx: parity error for %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"asd_hst_pcix_isr\00", [47 x i8] zeroinitializer }, align 32
@asd_hst_pcix_isr._entry_ptr = internal global ptr @asd_hst_pcix_isr._entry, section ".printk_index", align 4
@asd_hst_pcix_isr._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.169, ptr @.str.2, i32 970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015aic94xx: master abort for %s\0A\00", [32 x i8] zeroinitializer }, align 32
@asd_hst_pcix_isr._entry_ptr.172 = internal global ptr @asd_hst_pcix_isr._entry.170, section ".printk_index", align 4
@asd_hst_pcix_isr._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.169, ptr @.str.2, i32 972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015aic94xx: target abort for %s\0A\00", [32 x i8] zeroinitializer }, align 32
@asd_hst_pcix_isr._entry_ptr.175 = internal global ptr @asd_hst_pcix_isr._entry.173, section ".printk_index", align 4
@asd_hst_pcix_isr._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.169, ptr @.str.2, i32 974, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015aic94xx: data parity for %s\0A\00", [33 x i8] zeroinitializer }, align 32
@asd_hst_pcix_isr._entry_ptr.178 = internal global ptr @asd_hst_pcix_isr._entry.176, section ".printk_index", align 4
@asd_hst_pcix_isr._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.169, ptr @.str.2, i32 977, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015aic94xx: received split completion error for %s\0A\00", [45 x i8] zeroinitializer }, align 32
@asd_hst_pcix_isr._entry_ptr.181 = internal global ptr @asd_hst_pcix_isr._entry.179, section ".printk_index", align 4
@asd_hst_pcix_isr._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.169, ptr @.str.2, i32 983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015aic94xx: unexpected split completion for %s\0A\00", [49 x i8] zeroinitializer }, align 32
@asd_hst_pcix_isr._entry_ptr.184 = internal global ptr @asd_hst_pcix_isr._entry.182, section ".printk_index", align 4
@asd_hst_pcix_isr._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.169, ptr @.str.2, i32 989, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015aic94xx: split completion discarded for %s\0A\00", [50 x i8] zeroinitializer }, align 32
@asd_hst_pcix_isr._entry_ptr.187 = internal global ptr @asd_hst_pcix_isr._entry.185, section ".printk_index", align 4
@asd_hst_pcix_isr._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.169, ptr @.str.2, i32 992, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015aic94xx: uncorrectable ECC error for %s\0A\00", [53 x i8] zeroinitializer }, align 32
@asd_hst_pcix_isr._entry_ptr.190 = internal global ptr @asd_hst_pcix_isr._entry.188, section ".printk_index", align 4
@asd_ascb_cache = external dso_local local_unnamed_addr global ptr, align 4
@asd_ascb_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.192, ptr @.str.2, i32 1065, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015aic94xx: no index for ascb\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"asd_ascb_alloc\00", [17 x i8] zeroinitializer }, align 32
@asd_ascb_alloc._entry_ptr = internal global ptr @asd_ascb_alloc._entry, section ".printk_index", align 4
@asd_init_ascb.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.193 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&ascb->timer)\00", [17 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.194 = private unnamed_addr constant [9 x i8] c"max_devs\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 477, i32 12 }
@___asan_gen_.197 = private unnamed_addr constant [10 x i8] c"max_cmnds\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 483, i32 12 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 618, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 625, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 632, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 639, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 648, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 658, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 667, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 674, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 681, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 687, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1202, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1343, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1355, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1365, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant [15 x i8] c"MBAR0_SWB_SIZE\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 21, i32 5 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 152, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 159, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 180, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 602, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 244, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 521, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 557, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 44, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 87, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 101, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 220, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 234, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 732, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 383, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 389, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 290, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 318, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 322, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 451, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 460, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 467, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 776, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 782, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 788, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 790, i32 4 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 800, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 708, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 899, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant [10 x i8] c"halt_code\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 809, i32 21 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 810, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 811, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 812, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 813, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 814, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 815, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 816, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 817, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 818, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 819, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 820, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 821, i32 17 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 822, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 823, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 824, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 825, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 826, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 827, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 828, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 829, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 830, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 831, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 832, i32 3 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 833, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 834, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 835, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 836, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 837, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 838, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 839, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 840, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 841, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 842, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 843, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 844, i32 3 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 845, i32 18 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 852, i32 4 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 856, i32 4 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 860, i32 4 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 873, i32 5 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 878, i32 5 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 882, i32 5 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 914, i32 3 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 919, i32 3 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 923, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 930, i32 4 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 936, i32 4 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 968, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 970, i32 3 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 972, i32 3 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 974, i32 3 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 976, i32 3 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 982, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 988, i32 3 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 991, i32 3 }
@___asan_gen_.743 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.750 = private constant [38 x i8] c"../drivers/scsi/aic94xx/aic94xx_hwi.c\00", align 1
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.750, i32 1065, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.755 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.756 = private unnamed_addr constant [38 x i8] c"../drivers/scsi/aic94xx/aic94xx_hwi.h\00", align 1
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 276, i32 2 }
@llvm.compiler.used = appending global [251 x ptr] [ptr @__UNIQUE_ID_max_cmnds293, ptr @__UNIQUE_ID_max_cmndstype292, ptr @__UNIQUE_ID_max_devs291, ptr @__UNIQUE_ID_max_devstype290, ptr @__param_max_cmnds, ptr @__param_max_devs, ptr @asd_alloc_edbs._entry, ptr @asd_alloc_edbs._entry_ptr, ptr @asd_alloc_escbs._entry, ptr @asd_alloc_escbs._entry.72, ptr @asd_alloc_escbs._entry_ptr, ptr @asd_alloc_escbs._entry_ptr.74, ptr @asd_arp2_err._entry, ptr @asd_arp2_err._entry.139, ptr @asd_arp2_err._entry.142, ptr @asd_arp2_err._entry.145, ptr @asd_arp2_err._entry.148, ptr @asd_arp2_err._entry.151, ptr @asd_arp2_err._entry_ptr, ptr @asd_arp2_err._entry_ptr.141, ptr @asd_arp2_err._entry_ptr.144, ptr @asd_arp2_err._entry_ptr.147, ptr @asd_arp2_err._entry_ptr.150, ptr @asd_arp2_err._entry_ptr.153, ptr @asd_ascb_alloc._entry, ptr @asd_ascb_alloc._entry_ptr, ptr @asd_chip_reset._entry, ptr @asd_chip_reset._entry_ptr, ptr @asd_com_sas_isr._entry, ptr @asd_com_sas_isr._entry.85, ptr @asd_com_sas_isr._entry.88, ptr @asd_com_sas_isr._entry.91, ptr @asd_com_sas_isr._entry.94, ptr @asd_com_sas_isr._entry_ptr, ptr @asd_com_sas_isr._entry_ptr.87, ptr @asd_com_sas_isr._entry_ptr.90, ptr @asd_com_sas_isr._entry_ptr.93, ptr @asd_com_sas_isr._entry_ptr.96, ptr @asd_dch_sas_isr._entry, ptr @asd_dch_sas_isr._entry_ptr, ptr @asd_dl_tasklet_handler._entry, ptr @asd_dl_tasklet_handler._entry_ptr, ptr @asd_enable_phys._entry, ptr @asd_enable_phys._entry.34, ptr @asd_enable_phys._entry.37, ptr @asd_enable_phys._entry_ptr, ptr @asd_enable_phys._entry_ptr.36, ptr @asd_enable_phys._entry_ptr.39, ptr @asd_extend_cmdctx._entry, ptr @asd_extend_cmdctx._entry_ptr, ptr @asd_extend_devctx._entry, ptr @asd_extend_devctx._entry_ptr, ptr @asd_get_max_scb_ddb._entry, ptr @asd_get_max_scb_ddb._entry_ptr, ptr @asd_hst_pcix_isr._entry, ptr @asd_hst_pcix_isr._entry.170, ptr @asd_hst_pcix_isr._entry.173, ptr @asd_hst_pcix_isr._entry.176, ptr @asd_hst_pcix_isr._entry.179, ptr @asd_hst_pcix_isr._entry.182, ptr @asd_hst_pcix_isr._entry.185, ptr @asd_hst_pcix_isr._entry.188, ptr @asd_hst_pcix_isr._entry_ptr, ptr @asd_hst_pcix_isr._entry_ptr.172, ptr @asd_hst_pcix_isr._entry_ptr.175, ptr @asd_hst_pcix_isr._entry_ptr.178, ptr @asd_hst_pcix_isr._entry_ptr.181, ptr @asd_hst_pcix_isr._entry_ptr.184, ptr @asd_hst_pcix_isr._entry_ptr.187, ptr @asd_hst_pcix_isr._entry_ptr.190, ptr @asd_init_chip._entry, ptr @asd_init_chip._entry.77, ptr @asd_init_chip._entry.80, ptr @asd_init_chip._entry_ptr, ptr @asd_init_chip._entry_ptr.79, ptr @asd_init_chip._entry_ptr.82, ptr @asd_init_escbs._entry, ptr @asd_init_escbs._entry.65, ptr @asd_init_escbs._entry_ptr, ptr @asd_init_escbs._entry_ptr.67, ptr @asd_init_hw._entry, ptr @asd_init_hw._entry.12, ptr @asd_init_hw._entry.15, ptr @asd_init_hw._entry.18, ptr @asd_init_hw._entry.21, ptr @asd_init_hw._entry.24, ptr @asd_init_hw._entry.27, ptr @asd_init_hw._entry.3, ptr @asd_init_hw._entry.6, ptr @asd_init_hw._entry.9, ptr @asd_init_hw._entry_ptr, ptr @asd_init_hw._entry_ptr.11, ptr @asd_init_hw._entry_ptr.14, ptr @asd_init_hw._entry_ptr.17, ptr @asd_init_hw._entry_ptr.20, ptr @asd_init_hw._entry_ptr.23, ptr @asd_init_hw._entry_ptr.26, ptr @asd_init_hw._entry_ptr.29, ptr @asd_init_hw._entry_ptr.5, ptr @asd_init_hw._entry_ptr.8, ptr @asd_init_phy._entry, ptr @asd_init_phy._entry_ptr, ptr @asd_init_sw._entry, ptr @asd_init_sw._entry.42, ptr @asd_init_sw._entry_ptr, ptr @asd_init_sw._entry_ptr.44, ptr @asd_post_ascb_list._entry, ptr @asd_post_ascb_list._entry_ptr, ptr @asd_propagate_sas_addr._entry, ptr @asd_propagate_sas_addr._entry_ptr, ptr @asd_rbi_exsi_isr._entry, ptr @asd_rbi_exsi_isr._entry.156, ptr @asd_rbi_exsi_isr._entry.159, ptr @asd_rbi_exsi_isr._entry.162, ptr @asd_rbi_exsi_isr._entry.165, ptr @asd_rbi_exsi_isr._entry_ptr, ptr @asd_rbi_exsi_isr._entry_ptr.158, ptr @asd_rbi_exsi_isr._entry_ptr.161, ptr @asd_rbi_exsi_isr._entry_ptr.164, ptr @asd_rbi_exsi_isr._entry_ptr.167, ptr @max_devs, ptr @max_cmnds, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @MBAR0_SWB_SIZE, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @asd_init_sw.__key, ptr @.str.45, ptr @asd_init_ctxmem.__key, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @asd_init_ports.__key, ptr @.str.57, ptr @asd_init_scbs.__key, ptr @.str.58, ptr @asd_init_scbs.__key.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @asd_arp2_err.halt_code, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.149, ptr @.str.152, ptr @.str.154, ptr @.str.155, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.168, ptr @.str.169, ptr @.str.171, ptr @.str.174, ptr @.str.177, ptr @.str.180, ptr @.str.183, ptr @.str.186, ptr @.str.189, ptr @.str.191, ptr @.str.192, ptr @asd_init_ascb.__key, ptr @.str.193], section "llvm.metadata"
@0 = internal global [188 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_devs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_cmnds to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_hw._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_hw._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_hw._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_hw._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_hw._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_hw._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_hw._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_hw._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_hw._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_post_ascb_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_enable_phys._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_enable_phys._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_enable_phys._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MBAR0_SWB_SIZE to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_sw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_sw._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_sw.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_ctxmem.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_get_max_scb_ddb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_extend_devctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_extend_cmdctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_propagate_sas_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_ports.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_scbs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_scbs.__key.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_dl_tasklet_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_escbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_escbs._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_alloc_edbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_alloc_escbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_alloc_escbs._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_chip._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_chip._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_com_sas_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_com_sas_isr._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_com_sas_isr._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_com_sas_isr._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_com_sas_isr._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_chip_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_dch_sas_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_arp2_err.halt_code to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_arp2_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_arp2_err._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_arp2_err._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_arp2_err._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_arp2_err._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_arp2_err._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_rbi_exsi_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_rbi_exsi_isr._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_rbi_exsi_isr._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_rbi_exsi_isr._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_rbi_exsi_isr._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 131, i32 192, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_hst_pcix_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_hst_pcix_isr._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_hst_pcix_isr._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_hst_pcix_isr._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_hst_pcix_isr._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_hst_pcix_isr._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_hst_pcix_isr._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_hst_pcix_isr._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_ascb_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_ascb.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_chip_hardrst(ptr noundef %asd_ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207959552, i32 noundef 512) #6
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207959552, i32 noundef 512) #6
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207959552, i32 noundef 512) #6
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207959552, i32 noundef 512) #6
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %count.0 = phi i32 [ %dec, %do.cond.do.body_crit_edge ], [ 100, %entry ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748) #6
  %call = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207959528) #6
  %and = and i32 %call, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.cond, label %if.then

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207959528, i32 noundef 768) #6
  br label %cleanup

do.cond:                                          ; preds = %do.body
  %dec = add nsw i32 %count.0, -1
  %cmp1.not = icmp eq i32 %dec, 0
  br i1 %cmp1.not, label %do.cond.cleanup_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -19, %do.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asd_write_reg_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_read_reg_dword(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_init_hw(ptr noundef %asd_ha) local_unnamed_addr #0 align 64 {
entry:
  %escbs.i.i = alloca i32, align 4
  %v.i = alloca i32, align 4
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #6
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %v, align 4, !annotation !369
  %1 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %asd_ha, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #6
  %3 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %v.i, align 4, !annotation !369
  %call.i = call i32 @pci_read_config_dword(ptr noundef %2, i32 noundef 124, ptr noundef nonnull %v.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %7, %if.end.i.i.i ], [ %5, %do.end.i.pci_name.exit.i_crit_edge ]
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %retval.0.i.i.i) #9
  br label %asd_init_sw.exit.thread

if.end.i:                                         ; preds = %entry
  %8 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %v.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not.i = icmp eq i32 %9, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end16.i_crit_edge, label %if.end7.i

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.end7.i:                                        ; preds = %if.end.i
  %call6.i = call i32 @pci_write_config_dword(ptr noundef %2, i32 noundef 124, i32 noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool8.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool8.not.i, label %if.end7.i.if.end16.i_crit_edge, label %do.end12.i

if.end7.i.if.end16.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

do.end12.i:                                       ; preds = %if.end7.i
  %init_name.i.i53.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44, i32 3
  %10 = ptrtoint ptr %init_name.i.i53.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i53.i, align 8
  %tobool.not.i.i54.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i54.i, label %if.end.i.i56.i, label %do.end12.i.pci_name.exit58.i_crit_edge

do.end12.i.pci_name.exit58.i_crit_edge:           ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit58.i

if.end.i.i56.i:                                   ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i55.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %12 = ptrtoint ptr %dev.i55.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i55.i, align 4
  br label %pci_name.exit58.i

pci_name.exit58.i:                                ; preds = %if.end.i.i56.i, %do.end12.i.pci_name.exit58.i_crit_edge
  %retval.0.i.i57.i = phi ptr [ %13, %if.end.i.i56.i ], [ %11, %do.end12.i.pci_name.exit58.i_crit_edge ]
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %retval.0.i.i57.i) #9
  br label %asd_init_sw.exit.thread

if.end16.i:                                       ; preds = %if.end7.i.if.end16.i_crit_edge, %if.end.i.if.end16.i_crit_edge
  %call17.i = call i32 @pci_write_config_dword(ptr noundef %2, i32 noundef 112, i32 noundef -1207959552) #6
  %call18.i = call i32 @pci_write_config_dword(ptr noundef %2, i32 noundef 116, i32 noundef -1207951360) #6
  %call19.i = call i32 @pci_write_config_dword(ptr noundef %2, i32 noundef 120, i32 noundef -1207687168) #6
  %swa_base.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 4
  %14 = ptrtoint ptr %swa_base.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1207959552, ptr %swa_base.i, align 4
  %swb_base.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 5
  %15 = ptrtoint ptr %swb_base.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1207951360, ptr %swb_base.i, align 4
  %swc_base.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 6
  %16 = ptrtoint ptr %swc_base.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1207687168, ptr %swc_base.i, align 4
  %len.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 0, i32 2
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i, align 4
  %sub.i = add i32 %18, -128
  store i32 %sub.i, ptr @MBAR0_SWB_SIZE, align 4
  %iospace.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %19 = ptrtoint ptr %iospace.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iospace.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool26.not.i = icmp eq i32 %20, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %if.end16.i.if.end_crit_edge

if.end16.i.if.end_crit_edge:                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then27.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %call28.i = call i32 @pci_write_config_dword(ptr noundef %2, i32 noundef 108, i32 noundef -1610612736) #6
  %swa_base31.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 1, i32 4
  %21 = ptrtoint ptr %swa_base31.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1610612736, ptr %swa_base31.i, align 4
  br label %if.end

asd_init_sw.exit.thread:                          ; preds = %pci_name.exit58.i, %pci_name.exit.i
  %err.1.i.ph = phi i32 [ %call6.i, %pci_name.exit58.i ], [ %call.i, %pci_name.exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.then27.i, %if.end16.i.if.end_crit_edge
  %iolock.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %iolock.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @asd_init_sw.__key, i16 noundef signext 3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #6
  %22 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %asd_ha, align 4
  %call1 = call i32 @pci_read_config_dword(ptr noundef %23, i32 noundef 160, ptr noundef nonnull %v) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %24 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %asd_ha, align 4
  br i1 %tobool2.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44, i32 3
  %26 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %29, %if.end.i.i ], [ %27, %do.end.pci_name.exit_crit_edge ]
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %retval.0.i.i) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %30 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %v, align 4
  %or = or i32 %31, 67108864
  %call9 = call i32 @pci_write_config_dword(ptr noundef %25, i32 noundef 160, i32 noundef %or) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end19, label %do.end14

do.end14:                                         ; preds = %if.end7
  %32 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %asd_ha, align 4
  %init_name.i.i134 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44, i32 3
  %34 = ptrtoint ptr %init_name.i.i134 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_name.i.i134, align 8
  %tobool.not.i.i135 = icmp eq ptr %35, null
  br i1 %tobool.not.i.i135, label %if.end.i.i137, label %do.end14.pci_name.exit139_crit_edge

do.end14.pci_name.exit139_crit_edge:              ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit139

if.end.i.i137:                                    ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i136 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %36 = ptrtoint ptr %dev.i136 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i136, align 4
  br label %pci_name.exit139

pci_name.exit139:                                 ; preds = %if.end.i.i137, %do.end14.pci_name.exit139_crit_edge
  %retval.0.i.i138 = phi ptr [ %37, %if.end.i.i137 ], [ %35, %do.end14.pci_name.exit139_crit_edge ]
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %retval.0.i.i138) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end7
  %call20 = call i32 @asd_read_ocm(ptr noundef %asd_ha) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end19.if.end28_crit_edge, label %do.end25

if.end19.if.end28_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %call20) #9
  br label %if.end28

if.end28:                                         ; preds = %do.end25, %if.end19.if.end28_crit_edge
  %call29 = call i32 @asd_read_flash(ptr noundef %asd_ha) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end28.if.end37_crit_edge, label %do.end34

if.end28.if.end37_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call29) #9
  br label %if.end37

if.end37:                                         ; preds = %do.end34, %if.end28.if.end37_crit_edge
  %call.i.i.i = call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207820232) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i.i.i140 = icmp sgt i32 %call.i.i.i, -1
  %cond.i.i.i = select i1 %tobool.not.i.i.i140, i32 256, i32 512
  %max_scbs.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 7
  %38 = ptrtoint ptr %max_scbs.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cond.i.i.i, ptr %max_scbs.i.i, align 4
  %call.i16.i.i = call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207820232) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i16.i.i)
  %tobool.not.i17.i.i = icmp sgt i32 %call.i16.i.i, -1
  %cond.i18.i.i = select i1 %tobool.not.i17.i.i, i32 64, i32 128
  %max_ddbs.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 9
  %39 = ptrtoint ptr %max_ddbs.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %cond.i18.i.i, ptr %max_ddbs.i.i, align 4
  %40 = ptrtoint ptr %max_scbs.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %max_scbs.i.i, align 4
  %call8.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %41, i32 noundef %cond.i18.i.i) #9
  %42 = ptrtoint ptr %max_ddbs.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_ddbs.i.i, align 4
  %mul.neg.i.i.i = mul i32 %43, -64
  %sub.i.i.i = add i32 %mul.neg.i.i.i, -1610612736
  call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207957496, i32 noundef %sub.i.i.i) #6
  call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207957492, i32 noundef 0) #6
  %call.i.i3.i = call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207957488) #6
  %or.i.i.i = or i32 %call.i.i3.i, 4
  call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207957488, i32 noundef %or.i.i.i) #6
  %44 = ptrtoint ptr %max_ddbs.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_ddbs.i.i, align 4
  %add.i.i.i = add i32 %45, 2048
  store i32 %add.i.i.i, ptr %max_ddbs.i.i, align 4
  %ddb_ext.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 10
  %46 = ptrtoint ptr %ddb_ext.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %ddb_ext.i.i, align 4
  %47 = load i32, ptr @max_devs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %add.i.i.i)
  %cmp.not.i.i = icmp ule i32 %47, %add.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %47)
  %cmp2.i.i = icmp sgt i32 %47, 65535
  %or.cond.i.i = or i1 %cmp.not.i.i, %cmp2.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.end.i.i141

if.then.i.i:                                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  store i32 %add.i.i.i, ptr @max_devs, align 4
  br label %asd_extend_devctx.exit.i

if.end.i.i141:                                    ; preds = %if.end37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_dma_token_cache to i32))
  %48 = load ptr, ptr @asd_dma_token_cache, align 4
  %call.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %48, i32 noundef 3264) #6
  %tobool.not.i.i4.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i4.i, label %if.end.i.i141.do.end.i.i_crit_edge, label %if.then.i.i.i

if.end.i.i141.do.end.i.i_crit_edge:               ; preds = %if.end.i.i141
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i141
  %sub.i.i = sub i32 %47, %add.i.i.i
  %add.i.i = shl i32 %sub.i.i, 6
  %mul.i.i = add i32 %add.i.i, 64
  %size1.i.i.i = getelementptr inbounds %struct.asd_dma_tok, ptr %call.i.i.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %size1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %mul.i.i, ptr %size1.i.i.i, align 8
  %50 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %asd_ha, align 4
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %dma_handle.i.i.i = getelementptr inbounds %struct.asd_dma_tok, ptr %call.i.i.i.i, i32 0, i32 1
  %call.i1.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i.i, i32 noundef %mul.i.i, ptr noundef %dma_handle.i.i.i, i32 noundef 3264, i32 noundef 0) #6
  %52 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i1.i.i.i, ptr %call.i.i.i.i, align 8
  %tobool5.not.i.i.i = icmp eq ptr %call.i1.i.i.i, null
  br i1 %tobool5.not.i.i.i, label %if.then6.i.i.i, label %if.end15.i.i

if.then6.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_dma_token_cache to i32))
  %53 = load ptr, ptr @asd_dma_token_cache, align 4
  call void @kmem_cache_free(ptr noundef %53, ptr noundef nonnull %call.i.i.i.i) #6
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then6.i.i.i, %if.end.i.i141.do.end.i.i_crit_edge
  %54 = ptrtoint ptr %ddb_ext.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %ddb_ext.i.i, align 4
  %55 = load i32, ptr @max_devs, align 4
  %call12.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %55) #9
  %56 = ptrtoint ptr %max_ddbs.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %max_ddbs.i.i, align 4
  store i32 %57, ptr @max_devs, align 4
  br label %asd_extend_devctx.exit.i

if.end15.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %ddb_ext.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i.i.i.i, ptr %ddb_ext.i.i, align 4
  %59 = ptrtoint ptr %dma_handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dma_handle.i.i.i, align 4
  %add19.i.i = add i32 %60, 63
  %and.i.i = and i32 %add19.i.i, -64
  %61 = ptrtoint ptr %max_ddbs.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_ddbs.i.i, align 4
  %mul22.neg.i.i = mul i32 %62, -64
  %sub23.i.i = add i32 %mul22.neg.i.i, %and.i.i
  call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207957496, i32 noundef %sub23.i.i) #6
  call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207957492, i32 noundef 0) #6
  %call24.i.i = call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207957488) #6
  %and25.i.i = and i32 %call24.i.i, -5
  call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207957488, i32 noundef %and25.i.i) #6
  %63 = load i32, ptr @max_devs, align 4
  %64 = ptrtoint ptr %max_ddbs.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %max_ddbs.i.i, align 4
  br label %asd_extend_devctx.exit.i

asd_extend_devctx.exit.i:                         ; preds = %if.end15.i.i, %do.end.i.i, %if.then.i.i
  %scb_ext.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 8
  %65 = ptrtoint ptr %scb_ext.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %scb_ext.i.i, align 4
  %66 = load i32, ptr @max_cmnds, align 4
  %67 = ptrtoint ptr %max_scbs.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %max_scbs.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp.not.i6.i = icmp ule i32 %66, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %66)
  %cmp2.i7.i = icmp sgt i32 %66, 65535
  %or.cond.i8.i = or i1 %cmp2.i7.i, %cmp.not.i6.i
  br i1 %or.cond.i8.i, label %if.then.i9.i, label %if.end.i12.i

if.then.i9.i:                                     ; preds = %asd_extend_devctx.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  store i32 %68, ptr @max_cmnds, align 4
  br label %if.end8.i.i.i

if.end.i12.i:                                     ; preds = %asd_extend_devctx.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_dma_token_cache to i32))
  %69 = load ptr, ptr @asd_dma_token_cache, align 4
  %call.i.i.i10.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %69, i32 noundef 3264) #6
  %tobool.not.i.i11.i = icmp eq ptr %call.i.i.i10.i, null
  br i1 %tobool.not.i.i11.i, label %if.end.i12.i.do.end.i24.i_crit_edge, label %if.then.i.i21.i

if.end.i12.i.do.end.i24.i_crit_edge:              ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i24.i

if.then.i.i21.i:                                  ; preds = %if.end.i12.i
  %sub.i13.i = sub i32 %66, %68
  %add.i14.i = shl i32 %sub.i13.i, 7
  %mul.i15.i = add i32 %add.i14.i, 128
  %size1.i.i16.i = getelementptr inbounds %struct.asd_dma_tok, ptr %call.i.i.i10.i, i32 0, i32 2
  %70 = ptrtoint ptr %size1.i.i16.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %mul.i15.i, ptr %size1.i.i16.i, align 8
  %71 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %asd_ha, align 4
  %dev.i.i17.i = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  %dma_handle.i.i18.i = getelementptr inbounds %struct.asd_dma_tok, ptr %call.i.i.i10.i, i32 0, i32 1
  %call.i1.i.i19.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i17.i, i32 noundef %mul.i15.i, ptr noundef %dma_handle.i.i18.i, i32 noundef 3264, i32 noundef 0) #6
  %73 = ptrtoint ptr %call.i.i.i10.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call.i1.i.i19.i, ptr %call.i.i.i10.i, align 8
  %tobool5.not.i.i20.i = icmp eq ptr %call.i1.i.i19.i, null
  br i1 %tobool5.not.i.i20.i, label %if.then6.i.i22.i, label %if.end15.i31.i

if.then6.i.i22.i:                                 ; preds = %if.then.i.i21.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_dma_token_cache to i32))
  %74 = load ptr, ptr @asd_dma_token_cache, align 4
  call void @kmem_cache_free(ptr noundef %74, ptr noundef nonnull %call.i.i.i10.i) #6
  br label %do.end.i24.i

do.end.i24.i:                                     ; preds = %if.then6.i.i22.i, %if.end.i12.i.do.end.i24.i_crit_edge
  %75 = ptrtoint ptr %scb_ext.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %scb_ext.i.i, align 4
  %76 = load i32, ptr @max_cmnds, align 4
  %call12.i23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %76) #9
  %77 = ptrtoint ptr %max_scbs.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %max_scbs.i.i, align 4
  store i32 %78, ptr @max_cmnds, align 4
  br label %if.end8.i.i.i

if.end15.i31.i:                                   ; preds = %if.then.i.i21.i
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %scb_ext.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call.i.i.i10.i, ptr %scb_ext.i.i, align 4
  %80 = ptrtoint ptr %dma_handle.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dma_handle.i.i18.i, align 4
  %add19.i25.i = add i32 %81, 127
  %and.i26.i = and i32 %add19.i25.i, -128
  %82 = ptrtoint ptr %max_scbs.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %max_scbs.i.i, align 4
  %mul22.neg.i27.i = mul i32 %83, -128
  %sub23.i28.i = add i32 %mul22.neg.i27.i, %and.i26.i
  call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207957504, i32 noundef %sub23.i28.i) #6
  call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207957500, i32 noundef 0) #6
  %call24.i29.i = call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207957488) #6
  %and25.i30.i = and i32 %call24.i29.i, -2
  call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207957488, i32 noundef %and25.i30.i) #6
  %84 = load i32, ptr @max_cmnds, align 4
  %85 = ptrtoint ptr %max_scbs.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %max_scbs.i.i, align 4
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %if.end15.i31.i, %do.end.i24.i, %if.then.i9.i
  %86 = ptrtoint ptr %max_ddbs.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %max_ddbs.i.i, align 4
  %88 = add i32 %87, 39
  %add2.i = and i32 %88, -8
  %sub.i142 = add i32 %add2.i, -1
  %89 = lshr i32 %sub.i142, 3
  %mul4.i = and i32 %89, 536870908
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul4.i, i32 noundef 3520) #10
  %ddb_bitmap.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 12
  %90 = ptrtoint ptr %ddb_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call9.i.i.i, ptr %ddb_bitmap.i, align 4
  %tobool.not.i144 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i144, label %if.end8.i.i.i.asd_init_ctxmem.exit_crit_edge, label %do.body.i

if.end8.i.i.i.asd_init_ctxmem.exit_crit_edge:     ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %asd_init_ctxmem.exit

do.body.i:                                        ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %ddb_lock.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 11
  call void @__raw_spin_lock_init(ptr noundef %ddb_lock.i, ptr noundef nonnull @.str.46, ptr noundef nonnull @asd_init_ctxmem.__key, i16 noundef signext 3) #6
  br label %asd_init_ctxmem.exit

asd_init_ctxmem.exit:                             ; preds = %do.body.i, %if.end8.i.i.i.asd_init_ctxmem.exit_crit_edge
  %sas_addr.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 3
  %91 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %sas_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i145 = icmp eq i8 %92, 0
  br i1 %tobool.not.i145, label %asd_get_user_sas_addr.exit, label %asd_init_ctxmem.exit.if.end49_crit_edge

asd_init_ctxmem.exit.if.end49_crit_edge:          ; preds = %asd_init_ctxmem.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

asd_get_user_sas_addr.exit:                       ; preds = %asd_init_ctxmem.exit
  %core.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 2, i32 8
  %93 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %core.i, align 4
  %call.i146 = call i32 @sas_request_addr(ptr noundef %94, ptr noundef %sas_addr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool40.not = icmp eq i32 %call.i146, 0
  br i1 %tobool40.not, label %asd_get_user_sas_addr.exit.if.end49_crit_edge, label %do.end44

asd_get_user_sas_addr.exit.if.end49_crit_edge:    ; preds = %asd_get_user_sas_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

do.end44:                                         ; preds = %asd_get_user_sas_addr.exit
  %95 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %asd_ha, align 4
  %init_name.i.i148 = getelementptr inbounds %struct.pci_dev, ptr %96, i32 0, i32 44, i32 3
  %97 = ptrtoint ptr %init_name.i.i148 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %init_name.i.i148, align 8
  %tobool.not.i.i149 = icmp eq ptr %98, null
  br i1 %tobool.not.i.i149, label %if.end.i.i151, label %do.end44.pci_name.exit153_crit_edge

do.end44.pci_name.exit153_crit_edge:              ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit153

if.end.i.i151:                                    ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i150 = getelementptr inbounds %struct.pci_dev, ptr %96, i32 0, i32 44
  %99 = ptrtoint ptr %dev.i150 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev.i150, align 4
  br label %pci_name.exit153

pci_name.exit153:                                 ; preds = %if.end.i.i151, %do.end44.pci_name.exit153_crit_edge
  %retval.0.i.i152 = phi ptr [ %100, %if.end.i.i151 ], [ %98, %do.end44.pci_name.exit153_crit_edge ]
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %retval.0.i.i152) #9
  br label %cleanup

if.end49:                                         ; preds = %asd_get_user_sas_addr.exit.if.end49_crit_edge, %asd_init_ctxmem.exit.if.end49_crit_edge
  %arrayidx.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 0
  %101 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %cmp2.i = icmp eq i8 %102, 0
  br i1 %cmp2.i, label %if.end49.for.inc.i_crit_edge, label %do.end.i155

if.end49.for.inc.i_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

do.end.i155:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %103 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 8)
  %104 = load i64, ptr %sas_addr.i, align 4
  %call.i154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef 0, i64 noundef %104) #9
  %105 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 8)
  %106 = load i64, ptr %sas_addr.i, align 4
  %107 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %107, i32 8)
  store i64 %106, ptr %arrayidx.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i155, %if.end49.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 1
  %108 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %cmp2.1.i = icmp eq i8 %109, 0
  br i1 %cmp2.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %do.end.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

do.end.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %110 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_loadN_noabort(i32 %110, i32 8)
  %111 = load i64, ptr %sas_addr.i, align 4
  %call.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef 1, i64 noundef %111) #9
  %112 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 8)
  %113 = load i64, ptr %sas_addr.i, align 4
  %114 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_storeN_noabort(i32 %114, i32 8)
  store i64 %113, ptr %arrayidx.1.i, align 1
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %do.end.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 2
  %115 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %cmp2.2.i = icmp eq i8 %116, 0
  br i1 %cmp2.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %do.end.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

do.end.2.i:                                       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %117 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_loadN_noabort(i32 %117, i32 8)
  %118 = load i64, ptr %sas_addr.i, align 4
  %call.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef 2, i64 noundef %118) #9
  %119 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_loadN_noabort(i32 %119, i32 8)
  %120 = load i64, ptr %sas_addr.i, align 4
  %121 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_storeN_noabort(i32 %121, i32 8)
  store i64 %120, ptr %arrayidx.2.i, align 1
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %do.end.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 3
  %122 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %cmp2.3.i = icmp eq i8 %123, 0
  br i1 %cmp2.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %do.end.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i

do.end.3.i:                                       ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %124 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_loadN_noabort(i32 %124, i32 8)
  %125 = load i64, ptr %sas_addr.i, align 4
  %call.3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef 3, i64 noundef %125) #9
  %126 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_loadN_noabort(i32 %126, i32 8)
  %127 = load i64, ptr %sas_addr.i, align 4
  %128 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_storeN_noabort(i32 %128, i32 8)
  store i64 %127, ptr %arrayidx.3.i, align 1
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %do.end.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %arrayidx.4.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 4
  %129 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %cmp2.4.i = icmp eq i8 %130, 0
  br i1 %cmp2.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %do.end.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4.i

do.end.4.i:                                       ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %131 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_loadN_noabort(i32 %131, i32 8)
  %132 = load i64, ptr %sas_addr.i, align 4
  %call.4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef 4, i64 noundef %132) #9
  %133 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_loadN_noabort(i32 %133, i32 8)
  %134 = load i64, ptr %sas_addr.i, align 4
  %135 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_storeN_noabort(i32 %135, i32 8)
  store i64 %134, ptr %arrayidx.4.i, align 1
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %do.end.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %arrayidx.5.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 5
  %136 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %cmp2.5.i = icmp eq i8 %137, 0
  br i1 %cmp2.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %do.end.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5.i

do.end.5.i:                                       ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %138 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 8)
  %139 = load i64, ptr %sas_addr.i, align 4
  %call.5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef 5, i64 noundef %139) #9
  %140 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_loadN_noabort(i32 %140, i32 8)
  %141 = load i64, ptr %sas_addr.i, align 4
  %142 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_storeN_noabort(i32 %142, i32 8)
  store i64 %141, ptr %arrayidx.5.i, align 1
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %do.end.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %arrayidx.6.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 6
  %143 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %cmp2.6.i = icmp eq i8 %144, 0
  br i1 %cmp2.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %do.end.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6.i

do.end.6.i:                                       ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #8
  %145 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_loadN_noabort(i32 %145, i32 8)
  %146 = load i64, ptr %sas_addr.i, align 4
  %call.6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef 6, i64 noundef %146) #9
  %147 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_loadN_noabort(i32 %147, i32 8)
  %148 = load i64, ptr %sas_addr.i, align 4
  %149 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_storeN_noabort(i32 %149, i32 8)
  store i64 %148, ptr %arrayidx.6.i, align 1
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %do.end.6.i, %for.inc.5.i.for.inc.6.i_crit_edge
  %arrayidx.7.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 7
  %150 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %cmp2.7.i = icmp eq i8 %151, 0
  br i1 %cmp2.7.i, label %for.inc.6.i.asd_propagate_sas_addr.exit_crit_edge, label %do.end.7.i

for.inc.6.i.asd_propagate_sas_addr.exit_crit_edge: ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %asd_propagate_sas_addr.exit

do.end.7.i:                                       ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #8
  %152 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_loadN_noabort(i32 %152, i32 8)
  %153 = load i64, ptr %sas_addr.i, align 4
  %call.7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef 7, i64 noundef %153) #9
  %154 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_loadN_noabort(i32 %154, i32 8)
  %155 = load i64, ptr %sas_addr.i, align 4
  %156 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_storeN_noabort(i32 %156, i32 8)
  store i64 %155, ptr %arrayidx.7.i, align 1
  br label %asd_propagate_sas_addr.exit

asd_propagate_sas_addr.exit:                      ; preds = %do.end.7.i, %for.inc.6.i.asd_propagate_sas_addr.exit_crit_edge
  %enabled_phys.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 5
  %157 = ptrtoint ptr %enabled_phys.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %enabled_phys.i, align 1
  %sas_ha.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 2
  %arrayidx.i156 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 0
  %phy_desc5.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 0, i32 1
  %159 = ptrtoint ptr %phy_desc5.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %arrayidx.i, ptr %phy_desc5.i, align 4
  %asd_port.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 0, i32 4
  %160 = ptrtoint ptr %asd_port.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %asd_port.i, align 4
  %enabled.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 0, i32 0, i32 5
  %161 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %enabled.i, align 4
  %id.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 0, i32 0, i32 6
  %162 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %id.i, align 4
  %sas_addr11.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 0, i32 0, i32 14
  %163 = ptrtoint ptr %sas_addr11.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %arrayidx.i, ptr %sas_addr11.i, align 4
  %frame_rcvd.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 0, i32 5
  %frame_rcvd14.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 0, i32 0, i32 17
  %164 = ptrtoint ptr %frame_rcvd14.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %frame_rcvd.i, ptr %frame_rcvd14.i, align 4
  %ha.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 0, i32 0, i32 23
  %165 = ptrtoint ptr %ha.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %sas_ha.i, ptr %ha.i, align 4
  %lldd_phy.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 0, i32 0, i32 24
  %166 = ptrtoint ptr %lldd_phy.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %arrayidx.i156, ptr %lldd_phy.i, align 4
  %arrayidx.1.i157 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 1
  %phy_desc5.1.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 1, i32 1
  %167 = ptrtoint ptr %phy_desc5.1.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %arrayidx.1.i, ptr %phy_desc5.1.i, align 4
  %asd_port.1.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 1, i32 4
  %168 = ptrtoint ptr %asd_port.1.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %asd_port.1.i, align 4
  %enabled.1.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 1, i32 0, i32 5
  %169 = ptrtoint ptr %enabled.1.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %enabled.1.i, align 4
  %id.1.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 1, i32 0, i32 6
  %170 = ptrtoint ptr %id.1.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 1, ptr %id.1.i, align 4
  %sas_addr11.1.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 1, i32 0, i32 14
  %171 = ptrtoint ptr %sas_addr11.1.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %arrayidx.1.i, ptr %sas_addr11.1.i, align 4
  %frame_rcvd.1.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 1, i32 5
  %frame_rcvd14.1.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 1, i32 0, i32 17
  %172 = ptrtoint ptr %frame_rcvd14.1.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %frame_rcvd.1.i, ptr %frame_rcvd14.1.i, align 4
  %ha.1.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 1, i32 0, i32 23
  %173 = ptrtoint ptr %ha.1.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %sas_ha.i, ptr %ha.1.i, align 4
  %lldd_phy.1.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 1, i32 0, i32 24
  %174 = ptrtoint ptr %lldd_phy.1.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %arrayidx.1.i157, ptr %lldd_phy.1.i, align 4
  %arrayidx.2.i158 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 2
  %phy_desc5.2.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 2, i32 1
  %175 = ptrtoint ptr %phy_desc5.2.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %arrayidx.2.i, ptr %phy_desc5.2.i, align 4
  %asd_port.2.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 2, i32 4
  %176 = ptrtoint ptr %asd_port.2.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr null, ptr %asd_port.2.i, align 4
  %enabled.2.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 2, i32 0, i32 5
  %177 = ptrtoint ptr %enabled.2.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 0, ptr %enabled.2.i, align 4
  %id.2.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 2, i32 0, i32 6
  %178 = ptrtoint ptr %id.2.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 2, ptr %id.2.i, align 4
  %sas_addr11.2.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 2, i32 0, i32 14
  %179 = ptrtoint ptr %sas_addr11.2.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %arrayidx.2.i, ptr %sas_addr11.2.i, align 4
  %frame_rcvd.2.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 2, i32 5
  %frame_rcvd14.2.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 2, i32 0, i32 17
  %180 = ptrtoint ptr %frame_rcvd14.2.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %frame_rcvd.2.i, ptr %frame_rcvd14.2.i, align 4
  %ha.2.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 2, i32 0, i32 23
  %181 = ptrtoint ptr %ha.2.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %sas_ha.i, ptr %ha.2.i, align 4
  %lldd_phy.2.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 2, i32 0, i32 24
  %182 = ptrtoint ptr %lldd_phy.2.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %arrayidx.2.i158, ptr %lldd_phy.2.i, align 4
  %arrayidx.3.i159 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 3
  %phy_desc5.3.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 3, i32 1
  %183 = ptrtoint ptr %phy_desc5.3.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %arrayidx.3.i, ptr %phy_desc5.3.i, align 4
  %asd_port.3.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 3, i32 4
  %184 = ptrtoint ptr %asd_port.3.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr null, ptr %asd_port.3.i, align 4
  %enabled.3.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 3, i32 0, i32 5
  %185 = ptrtoint ptr %enabled.3.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 0, ptr %enabled.3.i, align 4
  %id.3.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 3, i32 0, i32 6
  %186 = ptrtoint ptr %id.3.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 3, ptr %id.3.i, align 4
  %sas_addr11.3.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 3, i32 0, i32 14
  %187 = ptrtoint ptr %sas_addr11.3.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %arrayidx.3.i, ptr %sas_addr11.3.i, align 4
  %frame_rcvd.3.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 3, i32 5
  %frame_rcvd14.3.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 3, i32 0, i32 17
  %188 = ptrtoint ptr %frame_rcvd14.3.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %frame_rcvd.3.i, ptr %frame_rcvd14.3.i, align 4
  %ha.3.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 3, i32 0, i32 23
  %189 = ptrtoint ptr %ha.3.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %sas_ha.i, ptr %ha.3.i, align 4
  %lldd_phy.3.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 3, i32 0, i32 24
  %190 = ptrtoint ptr %lldd_phy.3.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %arrayidx.3.i159, ptr %lldd_phy.3.i, align 4
  %arrayidx.4.i160 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 4
  %phy_desc5.4.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 4, i32 1
  %191 = ptrtoint ptr %phy_desc5.4.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %arrayidx.4.i, ptr %phy_desc5.4.i, align 4
  %asd_port.4.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 4, i32 4
  %192 = ptrtoint ptr %asd_port.4.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr null, ptr %asd_port.4.i, align 4
  %enabled.4.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 4, i32 0, i32 5
  %193 = ptrtoint ptr %enabled.4.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 0, ptr %enabled.4.i, align 4
  %id.4.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 4, i32 0, i32 6
  %194 = ptrtoint ptr %id.4.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 4, ptr %id.4.i, align 4
  %sas_addr11.4.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 4, i32 0, i32 14
  %195 = ptrtoint ptr %sas_addr11.4.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %arrayidx.4.i, ptr %sas_addr11.4.i, align 4
  %frame_rcvd.4.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 4, i32 5
  %frame_rcvd14.4.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 4, i32 0, i32 17
  %196 = ptrtoint ptr %frame_rcvd14.4.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %frame_rcvd.4.i, ptr %frame_rcvd14.4.i, align 4
  %ha.4.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 4, i32 0, i32 23
  %197 = ptrtoint ptr %ha.4.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %sas_ha.i, ptr %ha.4.i, align 4
  %lldd_phy.4.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 4, i32 0, i32 24
  %198 = ptrtoint ptr %lldd_phy.4.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %arrayidx.4.i160, ptr %lldd_phy.4.i, align 4
  %arrayidx.5.i161 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 5
  %phy_desc5.5.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 5, i32 1
  %199 = ptrtoint ptr %phy_desc5.5.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %arrayidx.5.i, ptr %phy_desc5.5.i, align 4
  %asd_port.5.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 5, i32 4
  %200 = ptrtoint ptr %asd_port.5.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr null, ptr %asd_port.5.i, align 4
  %enabled.5.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 5, i32 0, i32 5
  %201 = ptrtoint ptr %enabled.5.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 0, ptr %enabled.5.i, align 4
  %id.5.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 5, i32 0, i32 6
  %202 = ptrtoint ptr %id.5.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 5, ptr %id.5.i, align 4
  %sas_addr11.5.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 5, i32 0, i32 14
  %203 = ptrtoint ptr %sas_addr11.5.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %arrayidx.5.i, ptr %sas_addr11.5.i, align 4
  %frame_rcvd.5.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 5, i32 5
  %frame_rcvd14.5.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 5, i32 0, i32 17
  %204 = ptrtoint ptr %frame_rcvd14.5.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %frame_rcvd.5.i, ptr %frame_rcvd14.5.i, align 4
  %ha.5.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 5, i32 0, i32 23
  %205 = ptrtoint ptr %ha.5.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %sas_ha.i, ptr %ha.5.i, align 4
  %lldd_phy.5.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 5, i32 0, i32 24
  %206 = ptrtoint ptr %lldd_phy.5.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %arrayidx.5.i161, ptr %lldd_phy.5.i, align 4
  %arrayidx.6.i162 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 6
  %phy_desc5.6.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 6, i32 1
  %207 = ptrtoint ptr %phy_desc5.6.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %arrayidx.6.i, ptr %phy_desc5.6.i, align 4
  %asd_port.6.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 6, i32 4
  %208 = ptrtoint ptr %asd_port.6.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr null, ptr %asd_port.6.i, align 4
  %enabled.6.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 6, i32 0, i32 5
  %209 = ptrtoint ptr %enabled.6.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 0, ptr %enabled.6.i, align 4
  %id.6.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 6, i32 0, i32 6
  %210 = ptrtoint ptr %id.6.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 6, ptr %id.6.i, align 4
  %sas_addr11.6.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 6, i32 0, i32 14
  %211 = ptrtoint ptr %sas_addr11.6.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %arrayidx.6.i, ptr %sas_addr11.6.i, align 4
  %frame_rcvd.6.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 6, i32 5
  %frame_rcvd14.6.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 6, i32 0, i32 17
  %212 = ptrtoint ptr %frame_rcvd14.6.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %frame_rcvd.6.i, ptr %frame_rcvd14.6.i, align 4
  %ha.6.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 6, i32 0, i32 23
  %213 = ptrtoint ptr %ha.6.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %sas_ha.i, ptr %ha.6.i, align 4
  %lldd_phy.6.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 6, i32 0, i32 24
  %214 = ptrtoint ptr %lldd_phy.6.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %arrayidx.6.i162, ptr %lldd_phy.6.i, align 4
  %arrayidx.7.i163 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 7
  %phy_desc5.7.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 7, i32 1
  %215 = ptrtoint ptr %phy_desc5.7.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %arrayidx.7.i, ptr %phy_desc5.7.i, align 4
  %asd_port.7.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 7, i32 4
  %216 = ptrtoint ptr %asd_port.7.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr null, ptr %asd_port.7.i, align 4
  %enabled.7.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 7, i32 0, i32 5
  %217 = ptrtoint ptr %enabled.7.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 0, ptr %enabled.7.i, align 4
  %id.7.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 7, i32 0, i32 6
  %218 = ptrtoint ptr %id.7.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 7, ptr %id.7.i, align 4
  %sas_addr11.7.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 7, i32 0, i32 14
  %219 = ptrtoint ptr %sas_addr11.7.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %arrayidx.7.i, ptr %sas_addr11.7.i, align 4
  %frame_rcvd.7.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 7, i32 5
  %frame_rcvd14.7.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 7, i32 0, i32 17
  %220 = ptrtoint ptr %frame_rcvd14.7.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %frame_rcvd.7.i, ptr %frame_rcvd14.7.i, align 4
  %ha.7.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 7, i32 0, i32 23
  %221 = ptrtoint ptr %ha.7.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %sas_ha.i, ptr %ha.7.i, align 4
  %lldd_phy.7.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 7, i32 0, i32 24
  %222 = ptrtoint ptr %lldd_phy.7.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %arrayidx.7.i163, ptr %lldd_phy.7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %cmp19.not69.i = icmp eq i8 %158, 0
  br i1 %cmp19.not69.i, label %asd_propagate_sas_addr.exit.if.end60_crit_edge, label %asd_propagate_sas_addr.exit.for.body21.i_crit_edge

asd_propagate_sas_addr.exit.for.body21.i_crit_edge: ; preds = %asd_propagate_sas_addr.exit
  br label %for.body21.i

asd_propagate_sas_addr.exit.if.end60_crit_edge:   ; preds = %asd_propagate_sas_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

for.body21.i:                                     ; preds = %for.inc29.i.for.body21.i_crit_edge, %asd_propagate_sas_addr.exit.for.body21.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.inc29.i.for.body21.i_crit_edge ], [ 0, %asd_propagate_sas_addr.exit.for.body21.i_crit_edge ]
  %phy_mask.071.i = phi i8 [ %275, %for.inc29.i.for.body21.i_crit_edge ], [ %158, %asd_propagate_sas_addr.exit.for.body21.i_crit_edge ]
  %223 = and i8 %phy_mask.071.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %tobool.not.i164 = icmp eq i8 %223, 0
  br i1 %tobool.not.i164, label %for.body21.i.for.inc29.i_crit_edge, label %if.then.i

for.body21.i.for.inc29.i_crit_edge:               ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc29.i

if.then.i:                                        ; preds = %for.body21.i
  %arrayidx25.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 %indvars.iv.i
  %ha.i.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx25.i, i32 0, i32 23
  %224 = ptrtoint ptr %ha.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %ha.i.i, align 4
  %lldd_ha.i.i = getelementptr inbounds %struct.sas_ha_struct, ptr %225, i32 0, i32 21
  %226 = ptrtoint ptr %lldd_ha.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %lldd_ha.i.i, align 4
  %enabled.i.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx25.i, i32 0, i32 5
  %228 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 1, ptr %enabled.i.i, align 4
  %class.i.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx25.i, i32 0, i32 7
  %229 = ptrtoint ptr %class.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 0, ptr %class.i.i, align 4
  %iproto.i.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx25.i, i32 0, i32 8
  %230 = ptrtoint ptr %iproto.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 14, ptr %iproto.i.i, align 4
  %tproto.i.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx25.i, i32 0, i32 9
  %231 = ptrtoint ptr %tproto.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 0, ptr %tproto.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx25.i, i32 0, i32 10
  %232 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 0, ptr %type.i.i, align 4
  %role.i.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx25.i, i32 0, i32 11
  %233 = ptrtoint ptr %role.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 128, ptr %role.i.i, align 4
  %oob_mode.i.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx25.i, i32 0, i32 12
  %234 = ptrtoint ptr %oob_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 0, ptr %oob_mode.i.i, align 4
  %linkrate.i.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx25.i, i32 0, i32 13
  %235 = ptrtoint ptr %linkrate.i.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 0, ptr %linkrate.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_dma_token_cache to i32))
  %236 = load ptr, ptr @asd_dma_token_cache, align 4
  %call.i.i.i.i165 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %236, i32 noundef 3264) #6
  %tobool.not.i.i.i166 = icmp eq ptr %call.i.i.i.i165, null
  br i1 %tobool.not.i.i.i166, label %if.then.i.do.end55_crit_edge, label %if.then.i.i.i172

if.then.i.do.end55_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end55

if.then.i.i.i172:                                 ; preds = %if.then.i
  %size1.i.i.i167 = getelementptr inbounds %struct.asd_dma_tok, ptr %call.i.i.i.i165, i32 0, i32 2
  %237 = ptrtoint ptr %size1.i.i.i167 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 32, ptr %size1.i.i.i167, align 8
  %238 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %227, align 4
  %dev.i.i.i168 = getelementptr inbounds %struct.pci_dev, ptr %239, i32 0, i32 44
  %dma_handle.i.i.i169 = getelementptr inbounds %struct.asd_dma_tok, ptr %call.i.i.i.i165, i32 0, i32 1
  %call.i1.i.i.i170 = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i.i168, i32 noundef 32, ptr noundef %dma_handle.i.i.i169, i32 noundef 3264, i32 noundef 0) #6
  %240 = ptrtoint ptr %call.i.i.i.i165 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %call.i1.i.i.i170, ptr %call.i.i.i.i165, align 8
  %tobool5.not.i.i.i171 = icmp eq ptr %call.i1.i.i.i170, null
  br i1 %tobool5.not.i.i.i171, label %if.then6.i.i.i173, label %if.else.i.i

if.then6.i.i.i173:                                ; preds = %if.then.i.i.i172
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_dma_token_cache to i32))
  %241 = load ptr, ptr @asd_dma_token_cache, align 4
  call void @kmem_cache_free(ptr noundef %241, ptr noundef nonnull %call.i.i.i.i165) #6
  br label %do.end55

if.else.i.i:                                      ; preds = %if.then.i.i.i172
  %id_frm_tok.i.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 %indvars.iv.i, i32 3
  %242 = ptrtoint ptr %id_frm_tok.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %call.i.i.i.i165, ptr %id_frm_tok.i.i, align 4
  %identify_frame.i.i.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 %indvars.iv.i, i32 2
  %243 = ptrtoint ptr %identify_frame.i.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %call.i1.i.i.i170, ptr %identify_frame.i.i.i, align 4
  %244 = call ptr @memset(ptr %call.i1.i.i.i170, i32 0, i32 32)
  %245 = load ptr, ptr %identify_frame.i.i.i, align 4
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_load1_noabort(i32 %246)
  %bf.load.i.i.i = load i8, ptr %245, align 1
  %bf.clear.i.i.i = and i8 %bf.load.i.i.i, -113
  %bf.set.i.i.i = or i8 %bf.clear.i.i.i, 16
  store i8 %bf.set.i.i.i, ptr %245, align 1
  %247 = ptrtoint ptr %role.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %role.i.i, align 4
  %and.i.i.i = and i32 %248, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i19.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i19.i.i, label %if.else.i.i.if.end.i.i.i174_crit_edge, label %if.then.i20.i.i

if.else.i.i.if.end.i.i.i174_crit_edge:            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i174

if.then.i20.i.i:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %249 = ptrtoint ptr %iproto.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %iproto.i.i, align 4
  %conv.i.i.i = trunc i32 %250 to i8
  %251 = ptrtoint ptr %identify_frame.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %identify_frame.i.i.i, align 4
  %253 = getelementptr inbounds %struct.sas_identify_frame, ptr %252, i32 0, i32 2
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %conv.i.i.i, ptr %253, align 1
  br label %if.end.i.i.i174

if.end.i.i.i174:                                  ; preds = %if.then.i20.i.i, %if.else.i.i.if.end.i.i.i174_crit_edge
  %255 = ptrtoint ptr %role.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %role.i.i, align 4
  %and7.i.i.i = and i32 %256, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %and7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %if.end.i.i.i174.asd_init_phy.exit.thread.i_crit_edge, label %if.then9.i.i.i

if.end.i.i.i174.asd_init_phy.exit.thread.i_crit_edge: ; preds = %if.end.i.i.i174
  call void @__sanitizer_cov_trace_pc() #8
  br label %asd_init_phy.exit.thread.i

if.then9.i.i.i:                                   ; preds = %if.end.i.i.i174
  call void @__sanitizer_cov_trace_pc() #8
  %257 = ptrtoint ptr %tproto.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %tproto.i.i, align 4
  %conv11.i.i.i = trunc i32 %258 to i8
  %259 = ptrtoint ptr %identify_frame.i.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %identify_frame.i.i.i, align 4
  %261 = getelementptr inbounds %struct.sas_identify_frame, ptr %260, i32 0, i32 3
  %262 = ptrtoint ptr %261 to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 %conv11.i.i.i, ptr %261, align 1
  br label %asd_init_phy.exit.thread.i

asd_init_phy.exit.thread.i:                       ; preds = %if.then9.i.i.i, %if.end.i.i.i174.asd_init_phy.exit.thread.i_crit_edge
  %263 = ptrtoint ptr %identify_frame.i.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %identify_frame.i.i.i, align 4
  %sas_addr.i.i.i = getelementptr inbounds %struct.sas_identify_frame, ptr %264, i32 0, i32 5
  %phy_desc.i.i.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 %indvars.iv.i, i32 1
  %265 = ptrtoint ptr %phy_desc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %phy_desc.i.i.i, align 4
  %267 = ptrtoint ptr %266 to i32
  call void @__asan_loadN_noabort(i32 %267, i32 8)
  %268 = load i64, ptr %266, align 1
  %269 = ptrtoint ptr %sas_addr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %269, i32 8)
  store i64 %268, ptr %sas_addr.i.i.i, align 1
  %id.i.i.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx25.i, i32 0, i32 6
  %270 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %id.i.i.i, align 4
  %conv18.i.i.i = trunc i32 %271 to i8
  %272 = load ptr, ptr %identify_frame.i.i.i, align 4
  %phy_id.i.i.i = getelementptr inbounds %struct.sas_identify_frame, ptr %272, i32 0, i32 6
  %273 = ptrtoint ptr %phy_id.i.i.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 %conv18.i.i.i, ptr %phy_id.i.i.i, align 1
  %frame_rcvd.i.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 %indvars.iv.i, i32 5
  %274 = call ptr @memset(ptr %frame_rcvd.i.i, i32 0, i32 1068)
  br label %for.inc29.i

for.inc29.i:                                      ; preds = %asd_init_phy.exit.thread.i, %for.body21.i.for.inc29.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %275 = lshr i8 %phy_mask.071.i, 1
  %cmp19.not.i = icmp ult i8 %phy_mask.071.i, 2
  br i1 %cmp19.not.i, label %for.inc29.i.if.end60_crit_edge, label %for.inc29.i.for.body21.i_crit_edge

for.inc29.i.for.body21.i_crit_edge:               ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body21.i

for.inc29.i.if.end60_crit_edge:                   ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

do.end55:                                         ; preds = %if.then6.i.i.i173, %if.then.i.do.end55_crit_edge
  %id_frm_tok22.i.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 %indvars.iv.i, i32 3
  %276 = ptrtoint ptr %id_frm_tok22.i.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr null, ptr %id_frm_tok22.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx25.i, i32 0, i32 6
  %277 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %id.i.i, align 4
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %278) #9
  %279 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %asd_ha, align 4
  %init_name.i.i175 = getelementptr inbounds %struct.pci_dev, ptr %280, i32 0, i32 44, i32 3
  %281 = ptrtoint ptr %init_name.i.i175 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %init_name.i.i175, align 8
  %tobool.not.i.i176 = icmp eq ptr %282, null
  br i1 %tobool.not.i.i176, label %if.end.i.i178, label %do.end55.pci_name.exit180_crit_edge

do.end55.pci_name.exit180_crit_edge:              ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit180

if.end.i.i178:                                    ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i177 = getelementptr inbounds %struct.pci_dev, ptr %280, i32 0, i32 44
  %283 = ptrtoint ptr %dev.i177 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %dev.i177, align 4
  br label %pci_name.exit180

pci_name.exit180:                                 ; preds = %if.end.i.i178, %do.end55.pci_name.exit180_crit_edge
  %retval.0.i.i179 = phi ptr [ %284, %if.end.i.i178 ], [ %282, %do.end55.pci_name.exit180_crit_edge ]
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %retval.0.i.i179) #9
  br label %cleanup

if.end60:                                         ; preds = %for.inc29.i.if.end60_crit_edge, %asd_propagate_sas_addr.exit.if.end60_crit_edge
  %asd_ports_lock.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 9
  call void @__raw_spin_lock_init(ptr noundef %asd_ports_lock.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @asd_init_ports.__key, i16 noundef signext 3) #6
  %uglygep.i = getelementptr i8, ptr %asd_ha, i32 11044
  %285 = call ptr @memset(ptr %uglygep.i, i32 0, i32 192)
  %seq1.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13
  %286 = ptrtoint ptr %max_scbs.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %max_scbs.i.i, align 4
  %tc_index_bitmap_bits.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 9
  %288 = ptrtoint ptr %tc_index_bitmap_bits.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %287, ptr %tc_index_bitmap_bits.i, align 4
  %289 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %287, i32 4) #6
  %290 = extractvalue { i32, i1 } %289, 1
  br i1 %290, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !370

kcalloc.exit.thread.i:                            ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %tc_index_array75.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 7
  br label %do.end66.sink.split

if.end7.i.i.i:                                    ; preds = %if.end60
  %291 = extractvalue { i32, i1 } %289, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %291, i32 noundef 3520) #10
  %tc_index_array.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 7
  %292 = ptrtoint ptr %tc_index_array.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr %call8.i.i.i, ptr %tc_index_array.i, align 4
  %tobool.not.i186 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i186, label %if.end7.i.i.i.do.end66_crit_edge, label %if.end8.i.i.i211

if.end7.i.i.i.do.end66_crit_edge:                 ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end66

if.end8.i.i.i211:                                 ; preds = %if.end7.i.i.i
  %293 = ptrtoint ptr %tc_index_bitmap_bits.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %tc_index_bitmap_bits.i, align 4
  %add.i = add i32 %294, 7
  %div.i = sdiv i32 %add.i, 8
  %295 = add nsw i32 %div.i, 3
  %mul12.i = and i32 %295, 536870908
  %call9.i.i.i210 = call noalias align 128 ptr @__kmalloc(i32 noundef %mul12.i, i32 noundef 3520) #10
  %tc_index_bitmap.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 8
  %296 = ptrtoint ptr %tc_index_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr %call9.i.i.i210, ptr %tc_index_bitmap.i, align 4
  %tobool17.not.i = icmp eq ptr %call9.i.i.i210, null
  br i1 %tobool17.not.i, label %if.then18.i, label %do.body.i214

if.then18.i:                                      ; preds = %if.end8.i.i.i211
  call void @__sanitizer_cov_trace_pc() #8
  %297 = ptrtoint ptr %tc_index_array.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %tc_index_array.i, align 4
  call void @kfree(ptr noundef %298) #6
  br label %do.end66.sink.split

do.body.i214:                                     ; preds = %if.end8.i.i.i211
  %tc_index_lock.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 6
  call void @__raw_spin_lock_init(ptr noundef %tc_index_lock.i, ptr noundef nonnull @.str.58, ptr noundef nonnull @asd_init_scbs.__key, i16 noundef signext 3) #6
  %next_scb.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 5
  %size.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 5, i32 2
  %299 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 128, ptr %size.i, align 4
  %scb_pool.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 12
  %300 = ptrtoint ptr %scb_pool.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %scb_pool.i, align 4
  %dma_handle.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 5, i32 1
  %call26.i = call ptr @dma_pool_alloc(ptr noundef %301, i32 noundef 3264, ptr noundef %dma_handle.i) #6
  %302 = ptrtoint ptr %next_scb.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %call26.i, ptr %next_scb.i, align 4
  %tobool30.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool30.not.i, label %if.then31.i, label %if.end71

if.then31.i:                                      ; preds = %do.body.i214
  call void @__sanitizer_cov_trace_pc() #8
  %303 = ptrtoint ptr %tc_index_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %tc_index_bitmap.i, align 4
  call void @kfree(ptr noundef %304) #6
  %305 = ptrtoint ptr %tc_index_array.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %tc_index_array.i, align 4
  call void @kfree(ptr noundef %306) #6
  %307 = ptrtoint ptr %tc_index_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr null, ptr %tc_index_bitmap.i, align 4
  br label %do.end66.sink.split

do.end66.sink.split:                              ; preds = %if.then31.i, %if.then18.i, %kcalloc.exit.thread.i
  %tc_index_array81.i.sink = phi ptr [ %tc_index_array.i, %if.then31.i ], [ %tc_index_array.i, %if.then18.i ], [ %tc_index_array75.i, %kcalloc.exit.thread.i ]
  %308 = ptrtoint ptr %tc_index_array81.i.sink to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr null, ptr %tc_index_array81.i.sink, align 4
  br label %do.end66

do.end66:                                         ; preds = %do.end66.sink.split, %if.end7.i.i.i.do.end66_crit_edge
  %309 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %asd_ha, align 4
  %init_name.i.i216 = getelementptr inbounds %struct.pci_dev, ptr %310, i32 0, i32 44, i32 3
  %311 = ptrtoint ptr %init_name.i.i216 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %init_name.i.i216, align 8
  %tobool.not.i.i217 = icmp eq ptr %312, null
  br i1 %tobool.not.i.i217, label %if.end.i.i219, label %do.end66.pci_name.exit221_crit_edge

do.end66.pci_name.exit221_crit_edge:              ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit221

if.end.i.i219:                                    ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i218 = getelementptr inbounds %struct.pci_dev, ptr %310, i32 0, i32 44
  %313 = ptrtoint ptr %dev.i218 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %dev.i218, align 4
  br label %pci_name.exit221

pci_name.exit221:                                 ; preds = %if.end.i.i219, %do.end66.pci_name.exit221_crit_edge
  %retval.0.i.i220 = phi ptr [ %314, %if.end.i.i219 ], [ %312, %do.end66.pci_name.exit221_crit_edge ]
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %retval.0.i.i220) #9
  br label %cleanup

if.end71:                                         ; preds = %do.body.i214
  %pending.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 2
  %315 = ptrtoint ptr %pending.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 0, ptr %pending.i, align 4
  call void @__raw_spin_lock_init(ptr noundef %seq1.i, ptr noundef nonnull @.str.60, ptr noundef nonnull @asd_init_scbs.__key.59, i16 noundef signext 3) #6
  %pend_q.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 3
  %316 = ptrtoint ptr %pend_q.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store volatile ptr %pend_q.i, ptr %pend_q.i, align 4
  %prev.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 3, i32 1
  %317 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store ptr %pend_q.i, ptr %prev.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_dma_token_cache to i32))
  %318 = load ptr, ptr @asd_dma_token_cache, align 4
  %call.i.i.i222 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %318, i32 noundef 3264) #6
  %tobool.not.i.i223 = icmp eq ptr %call.i.i.i222, null
  br i1 %tobool.not.i.i223, label %if.end71.do.end77_crit_edge, label %if.then.i.i225

if.end71.do.end77_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end77

if.then.i.i225:                                   ; preds = %if.end71
  %size1.i.i = getelementptr inbounds %struct.asd_dma_tok, ptr %call.i.i.i222, i32 0, i32 2
  %319 = ptrtoint ptr %size1.i.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 8192, ptr %size1.i.i, align 8
  %320 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %asd_ha, align 4
  %dev.i.i224 = getelementptr inbounds %struct.pci_dev, ptr %321, i32 0, i32 44
  %dma_handle.i.i = getelementptr inbounds %struct.asd_dma_tok, ptr %call.i.i.i222, i32 0, i32 1
  %call.i1.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i224, i32 noundef 8192, ptr noundef %dma_handle.i.i, i32 noundef 3264, i32 noundef 0) #6
  %322 = ptrtoint ptr %call.i.i.i222 to i32
  call void @__asan_store4_noabort(i32 %322)
  store ptr %call.i1.i.i, ptr %call.i.i.i222, align 8
  %tobool5.not.i.i = icmp eq ptr %call.i1.i.i, null
  br i1 %tobool5.not.i.i, label %if.then6.i.i, label %if.end80

if.then6.i.i:                                     ; preds = %if.then.i.i225
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_dma_token_cache to i32))
  %323 = load ptr, ptr @asd_dma_token_cache, align 4
  call void @kmem_cache_free(ptr noundef %323, ptr noundef nonnull %call.i.i.i222) #6
  br label %do.end77

do.end77:                                         ; preds = %if.then6.i.i, %if.end71.do.end77_crit_edge
  %actual_dl18.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 12
  %324 = ptrtoint ptr %actual_dl18.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr null, ptr %actual_dl18.i, align 4
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef -12) #9
  br label %cleanup

if.end80:                                         ; preds = %if.then.i.i225
  %actual_dl.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 12
  %325 = ptrtoint ptr %actual_dl.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr %call.i.i.i222, ptr %actual_dl.i, align 4
  %dl.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 11
  %326 = ptrtoint ptr %dl.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr %call.i1.i.i, ptr %dl.i, align 4
  %dl_toggle.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 13
  %327 = ptrtoint ptr %dl_toggle.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 1, ptr %dl_toggle.i, align 4
  %dl_next.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 14
  %328 = ptrtoint ptr %dl_next.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 0, ptr %dl_next.i, align 4
  %dl_tasklet.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 10
  %329 = ptrtoint ptr %asd_ha to i32
  call void @tasklet_init(ptr noundef %dl_tasklet.i, ptr noundef nonnull @asd_dl_tasklet_handler, i32 noundef %329) #6
  %num_phys.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 13
  %330 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %num_phys.i, align 4
  %add.i228 = shl i32 %331, 1
  %sub.i229 = add i32 %add.i228, 8
  %div.i230 = sdiv i32 %sub.i229, 7
  %num_escbs.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 17
  %332 = ptrtoint ptr %num_escbs.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %div.i230, ptr %num_escbs.i, align 4
  %mul4.i231 = mul nsw i32 %div.i230, 7
  %num_edbs.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 15
  %333 = ptrtoint ptr %num_edbs.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 %mul4.i231, ptr %num_edbs.i, align 4
  %334 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul4.i231, i32 4) #6
  %335 = extractvalue { i32, i1 } %334, 1
  br i1 %335, label %kmalloc_array.exit.thread.i.i, label %if.end7.i.i.i262, !prof !370

kmalloc_array.exit.thread.i.i:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  %edb_arr8.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 16
  br label %do.end.sink.split.i

if.end7.i.i.i262:                                 ; preds = %if.end80
  %336 = extractvalue { i32, i1 } %334, 0
  %call8.i.i.i261 = call noalias align 128 ptr @__kmalloc(i32 noundef %336, i32 noundef 3264) #10
  %edb_arr.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 16
  %337 = ptrtoint ptr %edb_arr.i.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr %call8.i.i.i261, ptr %edb_arr.i.i, align 4
  %tobool.not.i.i264 = icmp eq ptr %call8.i.i.i261, null
  br i1 %tobool.not.i.i264, label %if.end7.i.i.i262.do.end86_crit_edge, label %for.cond.preheader.i.i

if.end7.i.i.i262.do.end86_crit_edge:              ; preds = %if.end7.i.i.i262
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end86

for.cond.preheader.i.i:                           ; preds = %if.end7.i.i.i262
  %338 = ptrtoint ptr %num_edbs.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %num_edbs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %339)
  %cmp12.i.i = icmp sgt i32 %339, 0
  br i1 %cmp12.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.if.end.i275_crit_edge

for.cond.preheader.i.i.if.end.i275_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i275

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end10.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.013.i.i = phi i32 [ %inc.i.i, %if.end10.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_dma_token_cache to i32))
  %340 = load ptr, ptr @asd_dma_token_cache, align 4
  %call.i.i.i.i265 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %340, i32 noundef 3264) #6
  %tobool.not.i.i.i266 = icmp eq ptr %call.i.i.i.i265, null
  br i1 %tobool.not.i.i.i266, label %for.body.i.i.asd_alloc_coherent.exit.i.i_crit_edge, label %if.then.i.i.i272

for.body.i.i.asd_alloc_coherent.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %asd_alloc_coherent.exit.i.i

if.then.i.i.i272:                                 ; preds = %for.body.i.i
  %size1.i.i.i267 = getelementptr inbounds %struct.asd_dma_tok, ptr %call.i.i.i.i265, i32 0, i32 2
  %341 = ptrtoint ptr %size1.i.i.i267 to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 1068, ptr %size1.i.i.i267, align 8
  %342 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %asd_ha, align 4
  %dev.i.i.i268 = getelementptr inbounds %struct.pci_dev, ptr %343, i32 0, i32 44
  %dma_handle.i.i.i269 = getelementptr inbounds %struct.asd_dma_tok, ptr %call.i.i.i.i265, i32 0, i32 1
  %call.i1.i.i.i270 = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i.i268, i32 noundef 1068, ptr noundef %dma_handle.i.i.i269, i32 noundef 3264, i32 noundef 0) #6
  %344 = ptrtoint ptr %call.i.i.i.i265 to i32
  call void @__asan_store4_noabort(i32 %344)
  store ptr %call.i1.i.i.i270, ptr %call.i.i.i.i265, align 8
  %tobool5.not.i.i.i271 = icmp eq ptr %call.i1.i.i.i270, null
  br i1 %tobool5.not.i.i.i271, label %if.then6.i.i.i273, label %if.then.i.i.i272.asd_alloc_coherent.exit.i.i_crit_edge

if.then.i.i.i272.asd_alloc_coherent.exit.i.i_crit_edge: ; preds = %if.then.i.i.i272
  call void @__sanitizer_cov_trace_pc() #8
  br label %asd_alloc_coherent.exit.i.i

if.then6.i.i.i273:                                ; preds = %if.then.i.i.i272
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_dma_token_cache to i32))
  %345 = load ptr, ptr @asd_dma_token_cache, align 4
  call void @kmem_cache_free(ptr noundef %345, ptr noundef nonnull %call.i.i.i.i265) #6
  br label %asd_alloc_coherent.exit.i.i

asd_alloc_coherent.exit.i.i:                      ; preds = %if.then6.i.i.i273, %if.then.i.i.i272.asd_alloc_coherent.exit.i.i_crit_edge, %for.body.i.i.asd_alloc_coherent.exit.i.i_crit_edge
  %token.0.i.i.i = phi ptr [ %call.i.i.i.i265, %if.then.i.i.i272.asd_alloc_coherent.exit.i.i_crit_edge ], [ null, %if.then6.i.i.i273 ], [ null, %for.body.i.i.asd_alloc_coherent.exit.i.i_crit_edge ]
  %346 = ptrtoint ptr %edb_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %edb_arr.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %347, i32 %i.013.i.i
  %348 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store ptr %token.0.i.i.i, ptr %arrayidx.i.i, align 4
  %349 = load ptr, ptr %edb_arr.i.i, align 4
  %arrayidx7.i.i = getelementptr ptr, ptr %349, i32 %i.013.i.i
  %350 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %arrayidx7.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %351, null
  br i1 %tobool8.not.i.i, label %for.cond15.preheader.i.i, label %if.end10.i.i

for.cond15.preheader.i.i:                         ; preds = %asd_alloc_coherent.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.013.i.i)
  %cmp1615.not.i.i = icmp eq i32 %i.013.i.i, 0
  br i1 %cmp1615.not.i.i, label %for.cond15.preheader.i.i.for.end22.i.i_crit_edge, label %for.cond15.preheader.i.i.for.body17.i.i_crit_edge

for.cond15.preheader.i.i.for.body17.i.i_crit_edge: ; preds = %for.cond15.preheader.i.i
  br label %for.body17.i.i

for.cond15.preheader.i.i.for.end22.i.i_crit_edge: ; preds = %for.cond15.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end22.i.i

if.end10.i.i:                                     ; preds = %asd_alloc_coherent.exit.i.i
  %352 = ptrtoint ptr %351 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %351, align 4
  %354 = call ptr @memset(ptr %353, i32 0, i32 1068)
  %inc.i.i = add nuw nsw i32 %i.013.i.i, 1
  %355 = ptrtoint ptr %num_edbs.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %num_edbs.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %356
  br i1 %cmp.i.i, label %if.end10.i.i.for.body.i.i_crit_edge, label %if.end10.i.i.if.end.i275_crit_edge

if.end10.i.i.if.end.i275_crit_edge:               ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i275

if.end10.i.i.for.body.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body17.i.i:                                   ; preds = %asd_free_coherent.exit.i.i.for.body17.i.i_crit_edge, %for.cond15.preheader.i.i.for.body17.i.i_crit_edge
  %i.116.in.i.i = phi i32 [ %i.116.i.i, %asd_free_coherent.exit.i.i.for.body17.i.i_crit_edge ], [ %i.013.i.i, %for.cond15.preheader.i.i.for.body17.i.i_crit_edge ]
  %i.116.i.i = add nsw i32 %i.116.in.i.i, -1
  %357 = ptrtoint ptr %edb_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %edb_arr.i.i, align 4
  %arrayidx19.i.i = getelementptr ptr, ptr %358, i32 %i.116.i.i
  %359 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %arrayidx19.i.i, align 4
  %tobool.not.i2.i.i = icmp eq ptr %360, null
  br i1 %tobool.not.i2.i.i, label %for.body17.i.i.asd_free_coherent.exit.i.i_crit_edge, label %if.then.i5.i.i

for.body17.i.i.asd_free_coherent.exit.i.i_crit_edge: ; preds = %for.body17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %asd_free_coherent.exit.i.i

if.then.i5.i.i:                                   ; preds = %for.body17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %361 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %asd_ha, align 4
  %dev.i3.i.i = getelementptr inbounds %struct.pci_dev, ptr %362, i32 0, i32 44
  %size.i.i.i = getelementptr inbounds %struct.asd_dma_tok, ptr %360, i32 0, i32 2
  %363 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %size.i.i.i, align 4
  %365 = ptrtoint ptr %360 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %360, align 4
  %dma_handle.i4.i.i = getelementptr inbounds %struct.asd_dma_tok, ptr %360, i32 0, i32 1
  %367 = ptrtoint ptr %dma_handle.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %dma_handle.i4.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev.i3.i.i, i32 noundef %364, ptr noundef %366, i32 noundef %368, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_dma_token_cache to i32))
  %369 = load ptr, ptr @asd_dma_token_cache, align 4
  call void @kmem_cache_free(ptr noundef %369, ptr noundef nonnull %360) #6
  br label %asd_free_coherent.exit.i.i

asd_free_coherent.exit.i.i:                       ; preds = %if.then.i5.i.i, %for.body17.i.i.asd_free_coherent.exit.i.i_crit_edge
  %cmp16.i.i = icmp sgt i32 %i.116.in.i.i, 1
  br i1 %cmp16.i.i, label %asd_free_coherent.exit.i.i.for.body17.i.i_crit_edge, label %asd_free_coherent.exit.i.i.for.end22.i.i_crit_edge

asd_free_coherent.exit.i.i.for.end22.i.i_crit_edge: ; preds = %asd_free_coherent.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end22.i.i

asd_free_coherent.exit.i.i.for.body17.i.i_crit_edge: ; preds = %asd_free_coherent.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body17.i.i

for.end22.i.i:                                    ; preds = %asd_free_coherent.exit.i.i.for.end22.i.i_crit_edge, %for.cond15.preheader.i.i.for.end22.i.i_crit_edge
  %370 = ptrtoint ptr %edb_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %edb_arr.i.i, align 4
  call void @kfree(ptr noundef %371) #6
  br label %do.end.sink.split.i

do.end.sink.split.i:                              ; preds = %for.end22.i.i, %kmalloc_array.exit.thread.i.i
  %edb_arr23.i.sink.i = phi ptr [ %edb_arr.i.i, %for.end22.i.i ], [ %edb_arr8.i.i, %kmalloc_array.exit.thread.i.i ]
  %372 = ptrtoint ptr %edb_arr23.i.sink.i to i32
  call void @__asan_store4_noabort(i32 %372)
  store ptr null, ptr %edb_arr23.i.sink.i, align 4
  br label %do.end86

if.end.i275:                                      ; preds = %if.end10.i.i.if.end.i275_crit_edge, %for.cond.preheader.i.i.if.end.i275_crit_edge
  %.lcssa.i.i = phi i32 [ %339, %for.cond.preheader.i.i.if.end.i275_crit_edge ], [ %356, %if.end10.i.i.if.end.i275_crit_edge ]
  %call14.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %.lcssa.i.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %escbs.i.i) #6
  %373 = ptrtoint ptr %num_escbs.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %num_escbs.i, align 4
  %375 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %374, i32 4) #6
  %376 = extractvalue { i32, i1 } %375, 1
  br i1 %376, label %kmalloc_array.exit.thread.i38.i, label %if.end7.i.i69.i, !prof !370

kmalloc_array.exit.thread.i38.i:                  ; preds = %if.end.i275
  call void @__sanitizer_cov_trace_pc() #8
  %escb_arr2.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 18
  br label %cleanup.sink.split.i.i

if.end7.i.i69.i:                                  ; preds = %if.end.i275
  %377 = extractvalue { i32, i1 } %375, 0
  %call8.i.i68.i = call noalias align 128 ptr @__kmalloc(i32 noundef %377, i32 noundef 3264) #10
  %escb_arr.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 18
  %378 = ptrtoint ptr %escb_arr.i.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store ptr %call8.i.i68.i, ptr %escb_arr.i.i, align 4
  %tobool.not.i71.i = icmp eq ptr %call8.i.i68.i, null
  br i1 %tobool.not.i71.i, label %if.end7.i.i69.i.do.end11.i_crit_edge, label %if.end.i.i278

if.end7.i.i69.i.do.end11.i_crit_edge:             ; preds = %if.end7.i.i69.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11.i

if.end.i.i278:                                    ; preds = %if.end7.i.i69.i
  %379 = ptrtoint ptr %num_escbs.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %num_escbs.i, align 4
  %381 = ptrtoint ptr %escbs.i.i to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %380, ptr %escbs.i.i, align 4
  %call4.i.i276 = call ptr @asd_ascb_alloc_list(ptr noundef %asd_ha, ptr noundef nonnull %escbs.i.i, i32 noundef 3264) #6
  %tobool5.not.i.i277 = icmp eq ptr %call4.i.i276, null
  br i1 %tobool5.not.i.i277, label %do.end.i73.i, label %if.end8.i.i

do.end.i73.i:                                     ; preds = %if.end.i.i278
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #9
  %382 = ptrtoint ptr %escb_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %escb_arr.i.i, align 4
  call void @kfree(ptr noundef %383) #6
  br label %cleanup.sink.split.i.i

if.end8.i.i:                                      ; preds = %if.end.i.i278
  %384 = ptrtoint ptr %escbs.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %escbs.i.i, align 4
  %386 = ptrtoint ptr %num_escbs.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %num_escbs.i, align 4
  %sub.i.i279 = sub i32 %387, %385
  store i32 %sub.i.i279, ptr %num_escbs.i, align 4
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %sub.i.i279) #9
  %388 = ptrtoint ptr %num_escbs.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %num_escbs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %389)
  %cmp9.i.i = icmp sgt i32 %389, 0
  br i1 %cmp9.i.i, label %if.end8.i.i.for.body.i77.i_crit_edge, label %if.end14.thread.i

if.end8.i.i.for.body.i77.i_crit_edge:             ; preds = %if.end8.i.i
  br label %for.body.i77.i

if.end14.thread.i:                                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %escbs.i.i) #6
  br label %if.end89

for.body.i77.i:                                   ; preds = %for.body.i77.i.for.body.i77.i_crit_edge, %if.end8.i.i.for.body.i77.i_crit_edge
  %escb.011.i.i = phi ptr [ %397, %for.body.i77.i.for.body.i77.i_crit_edge ], [ %call4.i.i276, %if.end8.i.i.for.body.i77.i_crit_edge ]
  %i.010.i.i = phi i32 [ %inc.i75.i, %for.body.i77.i.for.body.i77.i_crit_edge ], [ 0, %if.end8.i.i.for.body.i77.i_crit_edge ]
  %390 = ptrtoint ptr %escb_arr.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %escb_arr.i.i, align 4
  %arrayidx.i74.i = getelementptr ptr, ptr %391, i32 %i.010.i.i
  %392 = ptrtoint ptr %arrayidx.i74.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store ptr %escb.011.i.i, ptr %arrayidx.i74.i, align 4
  %scb.i.i = getelementptr inbounds %struct.asd_ascb, ptr %escb.011.i.i, i32 0, i32 2
  %393 = ptrtoint ptr %scb.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %scb.i.i, align 4
  %opcode.i.i = getelementptr inbounds %struct.scb_header, ptr %394, i32 0, i32 2
  %395 = ptrtoint ptr %opcode.i.i to i32
  call void @__asan_store1_noabort(i32 %395)
  store i8 -64, ptr %opcode.i.i, align 1
  %inc.i75.i = add nuw nsw i32 %i.010.i.i, 1
  %396 = ptrtoint ptr %escb.011.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %escb.011.i.i, align 4
  %398 = ptrtoint ptr %num_escbs.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %num_escbs.i, align 4
  %cmp.i76.i = icmp slt i32 %inc.i75.i, %399
  br i1 %cmp.i76.i, label %for.body.i77.i.for.body.i77.i_crit_edge, label %if.end14.i

for.body.i77.i.for.body.i77.i_crit_edge:          ; preds = %for.body.i77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i77.i

cleanup.sink.split.i.i:                           ; preds = %do.end.i73.i, %kmalloc_array.exit.thread.i38.i
  %escb_arr2.sink.i.i = phi ptr [ %escb_arr2.i.i, %kmalloc_array.exit.thread.i38.i ], [ %escb_arr.i.i, %do.end.i73.i ]
  %400 = ptrtoint ptr %escb_arr2.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %400)
  store ptr null, ptr %escb_arr2.sink.i.i, align 4
  br label %do.end11.i

do.end11.i:                                       ; preds = %cleanup.sink.split.i.i, %if.end7.i.i69.i.do.end11.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %escbs.i.i) #6
  br label %do.end86

if.end14.i:                                       ; preds = %for.body.i77.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %escbs.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %399)
  %cmp27.i.i = icmp sgt i32 %399, 0
  br i1 %cmp27.i.i, label %for.body.lr.ph.i.i, label %if.end14.i.if.end89_crit_edge

if.end14.i.if.end89_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

for.body.lr.ph.i.i:                               ; preds = %if.end14.i
  %escb_arr.i80.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 18
  %edb_arr.i81.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 16
  br label %for.body.i87.i

for.body.i87.i:                                   ; preds = %for.body.i87.i.for.body.i87.i_crit_edge, %for.body.lr.ph.i.i
  %i.029.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc11.i.i, %for.body.i87.i.for.body.i87.i_crit_edge ]
  %z.028.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.6.i.i, %for.body.i87.i.for.body.i87.i_crit_edge ]
  %401 = ptrtoint ptr %escb_arr.i80.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %escb_arr.i80.i, align 4
  %arrayidx.i82.i = getelementptr ptr, ptr %402, i32 %i.029.i.i
  %403 = ptrtoint ptr %arrayidx.i82.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %arrayidx.i82.i, align 4
  %scb.i83.i = getelementptr inbounds %struct.asd_ascb, ptr %404, i32 0, i32 2
  %405 = ptrtoint ptr %scb.i83.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %scb.i83.i, align 4
  %407 = getelementptr inbounds %struct.scb, ptr %406, i32 0, i32 1
  %edb_index.i.i = getelementptr inbounds %struct.asd_ascb, ptr %404, i32 0, i32 11
  %408 = ptrtoint ptr %edb_index.i.i to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 %z.028.i.i, ptr %edb_index.i.i, align 4
  %409 = ptrtoint ptr %407 to i32
  call void @__asan_store1_noabort(i32 %409)
  store i8 7, ptr %407, align 1
  %eb5.i.i = getelementptr inbounds %struct.scb, ptr %406, i32 0, i32 1, i32 0, i32 2
  %410 = ptrtoint ptr %edb_arr.i81.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %edb_arr.i81.i, align 4
  %inc.i84.i = add i32 %z.028.i.i, 1
  %arrayidx7.i85.i = getelementptr ptr, ptr %411, i32 %z.028.i.i
  %412 = ptrtoint ptr %arrayidx7.i85.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %arrayidx7.i85.i, align 4
  %414 = call ptr @memset(ptr %eb5.i.i, i32 0, i32 16)
  %dma_handle.i.i280 = getelementptr inbounds %struct.asd_dma_tok, ptr %413, i32 0, i32 1
  %415 = ptrtoint ptr %dma_handle.i.i280 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %dma_handle.i.i280, align 4
  %conv.i.i = zext i32 %416 to i64
  %417 = call i64 @llvm.bswap.i64(i64 %conv.i.i) #6
  %418 = ptrtoint ptr %eb5.i.i to i32
  call void @__asan_storeN_noabort(i32 %418, i32 8)
  store i64 %417, ptr %eb5.i.i, align 1
  %size.i.i = getelementptr inbounds %struct.asd_dma_tok, ptr %413, i32 0, i32 2
  %419 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load i32, ptr %size.i.i, align 4
  %421 = call i32 @llvm.bswap.i32(i32 %420) #6
  %size8.i.i = getelementptr %struct.scb, ptr %406, i32 0, i32 1, i32 0, i32 2, i32 4
  %422 = ptrtoint ptr %size8.i.i to i32
  call void @__asan_storeN_noabort(i32 %422, i32 4)
  store i32 %421, ptr %size8.i.i, align 1
  %arrayidx6.1.i.i = getelementptr %struct.scb, ptr %406, i32 0, i32 1, i32 0, i32 2, i32 7
  %423 = ptrtoint ptr %edb_arr.i81.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %edb_arr.i81.i, align 4
  %inc.1.i.i = add i32 %z.028.i.i, 2
  %arrayidx7.1.i.i = getelementptr ptr, ptr %424, i32 %inc.i84.i
  %425 = ptrtoint ptr %arrayidx7.1.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %arrayidx7.1.i.i, align 4
  %427 = call ptr @memset(ptr %arrayidx6.1.i.i, i32 0, i32 16)
  %dma_handle.1.i.i = getelementptr inbounds %struct.asd_dma_tok, ptr %426, i32 0, i32 1
  %428 = ptrtoint ptr %dma_handle.1.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %dma_handle.1.i.i, align 4
  %conv.1.i.i = zext i32 %429 to i64
  %430 = call i64 @llvm.bswap.i64(i64 %conv.1.i.i) #6
  %431 = ptrtoint ptr %arrayidx6.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %431, i32 8)
  store i64 %430, ptr %arrayidx6.1.i.i, align 1
  %size.1.i.i = getelementptr inbounds %struct.asd_dma_tok, ptr %426, i32 0, i32 2
  %432 = ptrtoint ptr %size.1.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %size.1.i.i, align 4
  %434 = call i32 @llvm.bswap.i32(i32 %433) #6
  %size8.1.i.i = getelementptr %struct.scb, ptr %406, i32 0, i32 1, i32 0, i32 3
  %435 = ptrtoint ptr %size8.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %435, i32 4)
  store i32 %434, ptr %size8.1.i.i, align 1
  %arrayidx6.2.i.i = getelementptr %struct.scb, ptr %406, i32 0, i32 1, i32 0, i32 3, i32 1
  %436 = ptrtoint ptr %edb_arr.i81.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %edb_arr.i81.i, align 4
  %inc.2.i.i = add i32 %z.028.i.i, 3
  %arrayidx7.2.i.i = getelementptr ptr, ptr %437, i32 %inc.1.i.i
  %438 = ptrtoint ptr %arrayidx7.2.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %arrayidx7.2.i.i, align 4
  %440 = call ptr @memset(ptr %arrayidx6.2.i.i, i32 0, i32 16)
  %dma_handle.2.i.i = getelementptr inbounds %struct.asd_dma_tok, ptr %439, i32 0, i32 1
  %441 = ptrtoint ptr %dma_handle.2.i.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %dma_handle.2.i.i, align 4
  %conv.2.i.i = zext i32 %442 to i64
  %443 = call i64 @llvm.bswap.i64(i64 %conv.2.i.i) #6
  %444 = ptrtoint ptr %arrayidx6.2.i.i to i32
  call void @__asan_storeN_noabort(i32 %444, i32 8)
  store i64 %443, ptr %arrayidx6.2.i.i, align 1
  %size.2.i.i = getelementptr inbounds %struct.asd_dma_tok, ptr %439, i32 0, i32 2
  %445 = ptrtoint ptr %size.2.i.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %size.2.i.i, align 4
  %447 = call i32 @llvm.bswap.i32(i32 %446) #6
  %size8.2.i.i = getelementptr %struct.scb, ptr %406, i32 0, i32 1, i32 0, i32 3, i32 5, i32 4
  %448 = ptrtoint ptr %size8.2.i.i to i32
  call void @__asan_storeN_noabort(i32 %448, i32 4)
  store i32 %447, ptr %size8.2.i.i, align 1
  %arrayidx6.3.i.i = getelementptr %struct.scb, ptr %406, i32 0, i32 1, i32 0, i32 3, i32 5, i32 12
  %449 = ptrtoint ptr %edb_arr.i81.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %edb_arr.i81.i, align 4
  %inc.3.i.i = add i32 %z.028.i.i, 4
  %arrayidx7.3.i.i = getelementptr ptr, ptr %450, i32 %inc.2.i.i
  %451 = ptrtoint ptr %arrayidx7.3.i.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %arrayidx7.3.i.i, align 4
  %453 = call ptr @memset(ptr %arrayidx6.3.i.i, i32 0, i32 16)
  %dma_handle.3.i.i = getelementptr inbounds %struct.asd_dma_tok, ptr %452, i32 0, i32 1
  %454 = ptrtoint ptr %dma_handle.3.i.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %dma_handle.3.i.i, align 4
  %conv.3.i.i = zext i32 %455 to i64
  %456 = call i64 @llvm.bswap.i64(i64 %conv.3.i.i) #6
  %457 = ptrtoint ptr %arrayidx6.3.i.i to i32
  call void @__asan_storeN_noabort(i32 %457, i32 8)
  store i64 %456, ptr %arrayidx6.3.i.i, align 1
  %size.3.i.i = getelementptr inbounds %struct.asd_dma_tok, ptr %452, i32 0, i32 2
  %458 = ptrtoint ptr %size.3.i.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %size.3.i.i, align 4
  %460 = call i32 @llvm.bswap.i32(i32 %459) #6
  %size8.3.i.i = getelementptr %struct.scb, ptr %406, i32 0, i32 1, i32 0, i32 6
  %461 = ptrtoint ptr %size8.3.i.i to i32
  call void @__asan_storeN_noabort(i32 %461, i32 4)
  store i32 %460, ptr %size8.3.i.i, align 1
  %arrayidx6.4.i.i = getelementptr %struct.scb, ptr %406, i32 0, i32 1, i32 0, i32 10
  %462 = ptrtoint ptr %edb_arr.i81.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %edb_arr.i81.i, align 4
  %inc.4.i.i = add i32 %z.028.i.i, 5
  %arrayidx7.4.i.i = getelementptr ptr, ptr %463, i32 %inc.3.i.i
  %464 = ptrtoint ptr %arrayidx7.4.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %arrayidx7.4.i.i, align 4
  %466 = call ptr @memset(ptr %arrayidx6.4.i.i, i32 0, i32 16)
  %dma_handle.4.i.i = getelementptr inbounds %struct.asd_dma_tok, ptr %465, i32 0, i32 1
  %467 = ptrtoint ptr %dma_handle.4.i.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %dma_handle.4.i.i, align 4
  %conv.4.i.i = zext i32 %468 to i64
  %469 = call i64 @llvm.bswap.i64(i64 %conv.4.i.i) #6
  %470 = ptrtoint ptr %arrayidx6.4.i.i to i32
  call void @__asan_storeN_noabort(i32 %470, i32 8)
  store i64 %469, ptr %arrayidx6.4.i.i, align 1
  %size.4.i.i = getelementptr inbounds %struct.asd_dma_tok, ptr %465, i32 0, i32 2
  %471 = ptrtoint ptr %size.4.i.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %size.4.i.i, align 4
  %473 = call i32 @llvm.bswap.i32(i32 %472) #6
  %size8.4.i.i = getelementptr %struct.scb, ptr %406, i32 0, i32 1, i32 0, i32 10, i32 0, i32 1
  %474 = ptrtoint ptr %size8.4.i.i to i32
  call void @__asan_storeN_noabort(i32 %474, i32 4)
  store i32 %473, ptr %size8.4.i.i, align 1
  %arrayidx6.5.i.i = getelementptr %struct.scb, ptr %406, i32 0, i32 1, i32 0, i32 10, i32 1
  %475 = ptrtoint ptr %edb_arr.i81.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %edb_arr.i81.i, align 4
  %inc.5.i.i = add i32 %z.028.i.i, 6
  %arrayidx7.5.i.i = getelementptr ptr, ptr %476, i32 %inc.4.i.i
  %477 = ptrtoint ptr %arrayidx7.5.i.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %arrayidx7.5.i.i, align 4
  %479 = call ptr @memset(ptr %arrayidx6.5.i.i, i32 0, i32 16)
  %dma_handle.5.i.i = getelementptr inbounds %struct.asd_dma_tok, ptr %478, i32 0, i32 1
  %480 = ptrtoint ptr %dma_handle.5.i.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %dma_handle.5.i.i, align 4
  %conv.5.i.i = zext i32 %481 to i64
  %482 = call i64 @llvm.bswap.i64(i64 %conv.5.i.i) #6
  %483 = ptrtoint ptr %arrayidx6.5.i.i to i32
  call void @__asan_storeN_noabort(i32 %483, i32 8)
  store i64 %482, ptr %arrayidx6.5.i.i, align 1
  %size.5.i.i = getelementptr inbounds %struct.asd_dma_tok, ptr %478, i32 0, i32 2
  %484 = ptrtoint ptr %size.5.i.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %size.5.i.i, align 4
  %486 = call i32 @llvm.bswap.i32(i32 %485) #6
  %size8.5.i.i = getelementptr %struct.scb, ptr %406, i32 0, i32 1, i32 0, i32 10, i32 1, i32 1
  %487 = ptrtoint ptr %size8.5.i.i to i32
  call void @__asan_storeN_noabort(i32 %487, i32 4)
  store i32 %486, ptr %size8.5.i.i, align 1
  %arrayidx6.6.i.i = getelementptr %struct.scb, ptr %406, i32 0, i32 1, i32 0, i32 10, i32 2
  %488 = ptrtoint ptr %edb_arr.i81.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %edb_arr.i81.i, align 4
  %inc.6.i.i = add i32 %z.028.i.i, 7
  %arrayidx7.6.i.i = getelementptr ptr, ptr %489, i32 %inc.5.i.i
  %490 = ptrtoint ptr %arrayidx7.6.i.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %arrayidx7.6.i.i, align 4
  %492 = call ptr @memset(ptr %arrayidx6.6.i.i, i32 0, i32 16)
  %dma_handle.6.i.i = getelementptr inbounds %struct.asd_dma_tok, ptr %491, i32 0, i32 1
  %493 = ptrtoint ptr %dma_handle.6.i.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %dma_handle.6.i.i, align 4
  %conv.6.i.i = zext i32 %494 to i64
  %495 = call i64 @llvm.bswap.i64(i64 %conv.6.i.i) #6
  %496 = ptrtoint ptr %arrayidx6.6.i.i to i32
  call void @__asan_storeN_noabort(i32 %496, i32 8)
  store i64 %495, ptr %arrayidx6.6.i.i, align 1
  %size.6.i.i = getelementptr inbounds %struct.asd_dma_tok, ptr %491, i32 0, i32 2
  %497 = ptrtoint ptr %size.6.i.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %size.6.i.i, align 4
  %499 = call i32 @llvm.bswap.i32(i32 %498) #6
  %size8.6.i.i = getelementptr %struct.scb, ptr %406, i32 0, i32 1, i32 0, i32 10, i32 2, i32 1
  %500 = ptrtoint ptr %size8.6.i.i to i32
  call void @__asan_storeN_noabort(i32 %500, i32 4)
  store i32 %499, ptr %size8.6.i.i, align 1
  %inc11.i.i = add nuw nsw i32 %i.029.i.i, 1
  %501 = ptrtoint ptr %num_escbs.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %num_escbs.i, align 4
  %cmp.i86.i = icmp slt i32 %inc11.i.i, %502
  br i1 %cmp.i86.i, label %for.body.i87.i.for.body.i87.i_crit_edge, label %for.body.i87.i.if.end89_crit_edge

for.body.i87.i.if.end89_crit_edge:                ; preds = %for.body.i87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

for.body.i87.i.for.body.i87.i_crit_edge:          ; preds = %for.body.i87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i87.i

do.end86:                                         ; preds = %do.end11.i, %do.end.sink.split.i, %if.end7.i.i.i262.do.end86_crit_edge
  %.str.63.sink = phi ptr [ @.str.66, %do.end11.i ], [ @.str.63, %do.end.sink.split.i ], [ @.str.63, %if.end7.i.i.i262.do.end86_crit_edge ]
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.63.sink) #9
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #9
  br label %cleanup

if.end89:                                         ; preds = %for.body.i87.i.if.end89_crit_edge, %if.end14.i.if.end89_crit_edge, %if.end14.thread.i
  %503 = ptrtoint ptr %num_escbs.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load i32, ptr %num_escbs.i, align 4
  %505 = ptrtoint ptr %pending.i to i32
  call void @__asan_store4_noabort(i32 %505)
  store i32 %504, ptr %pending.i, align 4
  %506 = ptrtoint ptr %max_scbs.i.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %max_scbs.i.i, align 4
  %sub18.i = sub i32 %507, %504
  %div1937.i = lshr i32 %sub18.i, 1
  %add20.i = add nuw i32 %div1937.i, 1
  %can_queue.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 4
  %508 = ptrtoint ptr %can_queue.i to i32
  call void @__asan_store4_noabort(i32 %508)
  store i32 %add20.i, ptr %can_queue.i, align 4
  %call.i284 = call i32 @asd_chip_hardrst(ptr noundef %asd_ha) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i284)
  %tobool.not.i285 = icmp eq i32 %call.i284, 0
  br i1 %tobool.not.i285, label %if.end.i295, label %do.end.i288

do.end.i288:                                      ; preds = %if.end89
  %509 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %asd_ha, align 4
  %init_name.i.i.i286 = getelementptr inbounds %struct.pci_dev, ptr %510, i32 0, i32 44, i32 3
  %511 = ptrtoint ptr %init_name.i.i.i286 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %init_name.i.i.i286, align 8
  %tobool.not.i.i.i287 = icmp eq ptr %512, null
  br i1 %tobool.not.i.i.i287, label %if.end.i.i.i290, label %do.end.i288.pci_name.exit.i292_crit_edge

do.end.i288.pci_name.exit.i292_crit_edge:         ; preds = %do.end.i288
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit.i292

if.end.i.i.i290:                                  ; preds = %do.end.i288
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i289 = getelementptr inbounds %struct.pci_dev, ptr %510, i32 0, i32 44
  %513 = ptrtoint ptr %dev.i.i289 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %dev.i.i289, align 4
  br label %pci_name.exit.i292

pci_name.exit.i292:                               ; preds = %if.end.i.i.i290, %do.end.i288.pci_name.exit.i292_crit_edge
  %retval.0.i.i.i291 = phi ptr [ %514, %if.end.i.i.i290 ], [ %512, %do.end.i288.pci_name.exit.i292_crit_edge ]
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %retval.0.i.i.i291) #9
  br label %do.end95

if.end.i295:                                      ; preds = %if.end89
  call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207959524, i32 noundef 8323072) #6
  %call3.i293 = call i32 @asd_init_seqs(ptr noundef %asd_ha) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i293)
  %tobool4.not.i294 = icmp eq i32 %call3.i293, 0
  br i1 %tobool4.not.i294, label %if.end13.i, label %do.end8.i

do.end8.i:                                        ; preds = %if.end.i295
  %515 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %asd_ha, align 4
  %init_name.i.i34.i = getelementptr inbounds %struct.pci_dev, ptr %516, i32 0, i32 44, i32 3
  %517 = ptrtoint ptr %init_name.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %init_name.i.i34.i, align 8
  %tobool.not.i.i35.i = icmp eq ptr %518, null
  br i1 %tobool.not.i.i35.i, label %if.end.i.i37.i, label %do.end8.i.pci_name.exit39.i_crit_edge

do.end8.i.pci_name.exit39.i_crit_edge:            ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit39.i

if.end.i.i37.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i36.i = getelementptr inbounds %struct.pci_dev, ptr %516, i32 0, i32 44
  %519 = ptrtoint ptr %dev.i36.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %dev.i36.i, align 4
  br label %pci_name.exit39.i

pci_name.exit39.i:                                ; preds = %if.end.i.i37.i, %do.end8.i.pci_name.exit39.i_crit_edge
  %retval.0.i.i38.i = phi ptr [ %520, %if.end.i.i37.i ], [ %518, %do.end8.i.pci_name.exit39.i_crit_edge ]
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %retval.0.i.i38.i) #9
  br label %do.end95

if.end13.i:                                       ; preds = %if.end.i295
  %call14.i = call i32 @asd_start_seqs(ptr noundef %asd_ha) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end13.i.cleanup_crit_edge, label %do.end19.i

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end19.i:                                       ; preds = %if.end13.i
  %521 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %asd_ha, align 4
  %init_name.i.i40.i = getelementptr inbounds %struct.pci_dev, ptr %522, i32 0, i32 44, i32 3
  %523 = ptrtoint ptr %init_name.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %init_name.i.i40.i, align 8
  %tobool.not.i.i41.i = icmp eq ptr %524, null
  br i1 %tobool.not.i.i41.i, label %if.end.i.i43.i, label %do.end19.i.pci_name.exit45.i_crit_edge

do.end19.i.pci_name.exit45.i_crit_edge:           ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit45.i

if.end.i.i43.i:                                   ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i42.i = getelementptr inbounds %struct.pci_dev, ptr %522, i32 0, i32 44
  %525 = ptrtoint ptr %dev.i42.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %dev.i42.i, align 4
  br label %pci_name.exit45.i

pci_name.exit45.i:                                ; preds = %if.end.i.i43.i, %do.end19.i.pci_name.exit45.i_crit_edge
  %retval.0.i.i44.i = phi ptr [ %526, %if.end.i.i43.i ], [ %524, %do.end19.i.pci_name.exit45.i_crit_edge ]
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %retval.0.i.i44.i) #9
  br label %do.end95

do.end95:                                         ; preds = %pci_name.exit45.i, %pci_name.exit39.i, %pci_name.exit.i292
  %err.0.i.ph = phi i32 [ %call14.i, %pci_name.exit45.i ], [ %call3.i293, %pci_name.exit39.i ], [ %call.i284, %pci_name.exit.i292 ]
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end95, %if.end13.i.cleanup_crit_edge, %do.end86, %do.end77, %pci_name.exit221, %pci_name.exit180, %pci_name.exit153, %pci_name.exit139, %pci_name.exit, %asd_init_sw.exit.thread
  %retval.0 = phi i32 [ %call1, %pci_name.exit ], [ %call9, %pci_name.exit139 ], [ -19, %pci_name.exit153 ], [ -12, %pci_name.exit180 ], [ -12, %pci_name.exit221 ], [ -12, %do.end77 ], [ -12, %do.end86 ], [ %err.0.i.ph, %do.end95 ], [ %err.1.i.ph, %asd_init_sw.exit.thread ], [ 0, %if.end13.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_read_ocm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_read_flash(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_hw_isr(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  %status.i = alloca i16, align 2
  %pcix_status.i = alloca i32, align 4
  %ecc_status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207959528) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @asd_write_reg_dword(ptr noundef %dev_id, i32 noundef -1207959528, i32 noundef %call) #6
  %call1 = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207959528) #6
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %state.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %dev_id, i32 0, i32 13, i32 10, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then3.if.end4_crit_edge

if.then3.if.end4_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then.i.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %dl_tasklet.i = getelementptr inbounds %struct.asd_ha_struct, ptr %dev_id, i32 0, i32 13, i32 10
  tail call void @__tasklet_schedule(ptr noundef %dl_tasklet.i) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then.i.i, %if.then3.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %and5 = and i32 %call, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end8_crit_edge, label %if.then7

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  %call.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207959548) #6
  tail call void @asd_write_reg_dword(ptr noundef %dev_id, i32 noundef -1207959548, i32 noundef -1) #6
  %and.i = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %if.then7
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %5, %if.end.i.i.i ], [ %3, %do.end.i.pci_name.exit.i_crit_edge ]
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %retval.0.i.i.i) #9
  br label %if.end46.i

if.else.i:                                        ; preds = %if.then7
  %and3.i = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.else31.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  %call6.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207959504) #6
  %and7.i = and i32 %call6.i, 255
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 4
  %init_name.i.i66.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %init_name.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i66.i, align 8
  %tobool.not.i.i67.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i67.i, label %if.end.i.i69.i, label %if.then5.i.pci_name.exit71.i_crit_edge

if.then5.i.pci_name.exit71.i_crit_edge:           ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit71.i

if.end.i.i69.i:                                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i68.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %10 = ptrtoint ptr %dev.i68.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i68.i, align 4
  br label %pci_name.exit71.i

pci_name.exit71.i:                                ; preds = %if.end.i.i69.i, %if.then5.i.pci_name.exit71.i_crit_edge
  %retval.0.i.i70.i = phi ptr [ %11, %if.end.i.i69.i ], [ %9, %if.then5.i.pci_name.exit71.i_crit_edge ]
  %call14.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947200) #6
  %call15.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947196) #6
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %retval.0.i.i70.i, i32 noundef %and7.i, i32 noundef %call14.i, i32 noundef %call15.i) #9
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #9
  %call26.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947136) #6
  %call27.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947132) #6
  %call28.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947128) #6
  %call29.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947124) #6
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %call26.i, i32 noundef %call27.i, i32 noundef %call28.i, i32 noundef %call29.i) #9
  %call26.1.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947136) #6
  %call27.1.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947132) #6
  %call28.1.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947128) #6
  %call29.1.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947124) #6
  %call30.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %call26.1.i, i32 noundef %call27.1.i, i32 noundef %call28.1.i, i32 noundef %call29.1.i) #9
  %call26.2.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947136) #6
  %call27.2.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947132) #6
  %call28.2.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947128) #6
  %call29.2.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947124) #6
  %call30.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %call26.2.i, i32 noundef %call27.2.i, i32 noundef %call28.2.i, i32 noundef %call29.2.i) #9
  %call26.3.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947136) #6
  %call27.3.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947132) #6
  %call28.3.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947128) #6
  %call29.3.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947124) #6
  %call30.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %call26.3.i, i32 noundef %call27.3.i, i32 noundef %call28.3.i, i32 noundef %call29.3.i) #9
  %call26.4.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947136) #6
  %call27.4.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947132) #6
  %call28.4.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947128) #6
  %call29.4.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947124) #6
  %call30.4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %call26.4.i, i32 noundef %call27.4.i, i32 noundef %call28.4.i, i32 noundef %call29.4.i) #9
  %call26.5.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947136) #6
  %call27.5.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947132) #6
  %call28.5.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947128) #6
  %call29.5.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947124) #6
  %call30.5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %call26.5.i, i32 noundef %call27.5.i, i32 noundef %call28.5.i, i32 noundef %call29.5.i) #9
  %call26.6.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947136) #6
  %call27.6.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947132) #6
  %call28.6.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947128) #6
  %call29.6.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947124) #6
  %call30.6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %call26.6.i, i32 noundef %call27.6.i, i32 noundef %call28.6.i, i32 noundef %call29.6.i) #9
  %call26.7.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947136) #6
  %call27.7.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947132) #6
  %call28.7.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947128) #6
  %call29.7.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207947124) #6
  %call30.7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %call26.7.i, i32 noundef %call27.7.i, i32 noundef %call28.7.i, i32 noundef %call29.7.i) #9
  tail call void @asd_dump_seq_state(ptr noundef %dev_id, i8 noundef zeroext 0) #6
  br label %if.end46.i

if.else31.i:                                      ; preds = %if.else.i
  %and32.i = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.else31.i.if.end46.i_crit_edge, label %if.then34.i

if.else31.i.if.end46.i_crit_edge:                 ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46.i

if.then34.i:                                      ; preds = %if.else31.i
  %call36.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207959504) #6
  %shr.i = lshr i32 %call36.i, 8
  %and37.i = and i32 %shr.i, 255
  %12 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_id, align 4
  %init_name.i.i72.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 3
  %14 = ptrtoint ptr %init_name.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i72.i, align 8
  %tobool.not.i.i73.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i73.i, label %if.end.i.i75.i, label %if.then34.i.pci_name.exit77.i_crit_edge

if.then34.i.pci_name.exit77.i_crit_edge:          ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit77.i

if.end.i.i75.i:                                   ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i74.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %16 = ptrtoint ptr %dev.i74.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i74.i, align 4
  br label %pci_name.exit77.i

pci_name.exit77.i:                                ; preds = %if.end.i.i75.i, %if.then34.i.pci_name.exit77.i_crit_edge
  %retval.0.i.i76.i = phi ptr [ %17, %if.end.i.i75.i ], [ %15, %if.then34.i.pci_name.exit77.i_crit_edge ]
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %retval.0.i.i76.i, i32 noundef %and37.i) #9
  br label %if.end46.i

if.end46.i:                                       ; preds = %pci_name.exit77.i, %if.else31.i.if.end46.i_crit_edge, %pci_name.exit71.i, %pci_name.exit.i
  %18 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_id, align 4
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44, i32 3
  %20 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.end46.i.asd_com_sas_isr.exit_crit_edge

if.end46.i.asd_com_sas_isr.exit_crit_edge:        ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %asd_com_sas_isr.exit

if.end.i.i.i.i:                                   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %22 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i.i.i, align 4
  br label %asd_com_sas_isr.exit

asd_com_sas_isr.exit:                             ; preds = %if.end.i.i.i.i, %if.end46.i.asd_com_sas_isr.exit_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %23, %if.end.i.i.i.i ], [ %21, %if.end46.i.asd_com_sas_isr.exit_crit_edge ]
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %retval.0.i.i.i.i) #9
  %call2.i.i = tail call i32 @asd_chip_hardrst(ptr noundef %dev_id) #6
  br label %if.end8

if.end8:                                          ; preds = %asd_com_sas_isr.exit, %if.end4.if.end8_crit_edge
  %and9 = and i32 %call, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  %call.i35 = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207957476) #6
  %and.i36 = and i32 %call.i35, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %tobool.not.i37 = icmp eq i32 %and.i36, 0
  br i1 %tobool.not.i37, label %if.else.i49, label %do.end.i40

do.end.i40:                                       ; preds = %if.then11
  %24 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_id, align 4
  %init_name.i.i.i38 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44, i32 3
  %26 = ptrtoint ptr %init_name.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i.i.i38, align 8
  %tobool.not.i.i.i39 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i39, label %if.end.i.i.i42, label %do.end.i40.pci_name.exit.i47_crit_edge

do.end.i40.pci_name.exit.i47_crit_edge:           ; preds = %do.end.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit.i47

if.end.i.i.i42:                                   ; preds = %do.end.i40
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i41 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %28 = ptrtoint ptr %dev.i.i41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i41, align 4
  br label %pci_name.exit.i47

pci_name.exit.i47:                                ; preds = %if.end.i.i.i42, %do.end.i40.pci_name.exit.i47_crit_edge
  %retval.0.i.i.i43 = phi ptr [ %29, %if.end.i.i.i42 ], [ %27, %do.end.i40.pci_name.exit.i47_crit_edge ]
  %call2.i44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %retval.0.i.i.i43) #9
  %30 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_id, align 4
  %init_name.i.i.i.i45 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44, i32 3
  %32 = ptrtoint ptr %init_name.i.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i.i.i45, align 8
  %tobool.not.i.i.i.i46 = icmp eq ptr %33, null
  br i1 %tobool.not.i.i.i.i46, label %pci_name.exit.i47.if.end.sink.split.i_crit_edge, label %pci_name.exit.i47.asd_dch_sas_isr.exit_crit_edge

pci_name.exit.i47.asd_dch_sas_isr.exit_crit_edge: ; preds = %pci_name.exit.i47
  call void @__sanitizer_cov_trace_pc() #8
  br label %asd_dch_sas_isr.exit

pci_name.exit.i47.if.end.sink.split.i_crit_edge:  ; preds = %pci_name.exit.i47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.sink.split.i

if.else.i49:                                      ; preds = %if.then11
  %and.i.i = and i32 %call.i35, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i48 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i48, label %if.else.i49.if.end26.i.i_crit_edge, label %if.then.i.i51

if.else.i49.if.end26.i.i_crit_edge:               ; preds = %if.else.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.i

if.then.i.i51:                                    ; preds = %if.else.i49
  %call.i.i50 = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207955452) #6
  %and1.i.i = and i32 %call.i.i50, 368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.else.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i51
  %34 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_id, align 4
  %init_name.i.i.i7.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44, i32 3
  %36 = ptrtoint ptr %init_name.i.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i.i.i7.i, align 8
  %tobool.not.i.i.i8.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i.i8.i, label %if.end.i.i.i10.i, label %do.end.i.i.pci_name.exit.i.i_crit_edge

do.end.i.i.pci_name.exit.i.i_crit_edge:           ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit.i.i

if.end.i.i.i10.i:                                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i9.i = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %38 = ptrtoint ptr %dev.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i.i9.i, align 4
  br label %pci_name.exit.i.i

pci_name.exit.i.i:                                ; preds = %if.end.i.i.i10.i, %do.end.i.i.pci_name.exit.i.i_crit_edge
  %retval.0.i.i.i11.i = phi ptr [ %39, %if.end.i.i.i10.i ], [ %37, %do.end.i.i.pci_name.exit.i.i_crit_edge ]
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %retval.0.i.i.i11.i, i32 noundef %call.i.i50) #9
  br label %if.end26.i.i

if.else.i.i:                                      ; preds = %if.then.i.i51
  %and6.i.i = and i32 %call.i.i50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %40 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_id, align 4
  %init_name.i.i110.i.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44, i32 3
  %42 = ptrtoint ptr %init_name.i.i110.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %init_name.i.i110.i.i, align 8
  %tobool.not.i.i111.i.i = icmp eq ptr %43, null
  br i1 %tobool7.not.i.i, label %do.end20.i.i, label %do.end11.i.i

do.end11.i.i:                                     ; preds = %if.else.i.i
  br i1 %tobool.not.i.i111.i.i, label %if.end.i.i107.i.i, label %do.end11.i.i.pci_name.exit109.i.i_crit_edge

do.end11.i.i.pci_name.exit109.i.i_crit_edge:      ; preds = %do.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit109.i.i

if.end.i.i107.i.i:                                ; preds = %do.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i106.i.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %44 = ptrtoint ptr %dev.i106.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i106.i.i, align 4
  br label %pci_name.exit109.i.i

pci_name.exit109.i.i:                             ; preds = %if.end.i.i107.i.i, %do.end11.i.i.pci_name.exit109.i.i_crit_edge
  %retval.0.i.i108.i.i = phi ptr [ %45, %if.end.i.i107.i.i ], [ %43, %do.end11.i.i.pci_name.exit109.i.i_crit_edge ]
  %shr.i.i = lshr i32 %call.i.i50, 16
  %and15.i.i = and i32 %shr.i.i, 255
  %arrayidx.i.i = getelementptr [256 x ptr], ptr @asd_arp2_err.halt_code, i32 0, i32 %and15.i.i
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i, align 4
  %call16.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef %retval.0.i.i108.i.i, ptr noundef %47) #9
  br label %if.end26.i.i

do.end20.i.i:                                     ; preds = %if.else.i.i
  br i1 %tobool.not.i.i111.i.i, label %if.end.i.i113.i.i, label %do.end20.i.i.pci_name.exit115.i.i_crit_edge

do.end20.i.i.pci_name.exit115.i.i_crit_edge:      ; preds = %do.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit115.i.i

if.end.i.i113.i.i:                                ; preds = %do.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i112.i.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %48 = ptrtoint ptr %dev.i112.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i112.i.i, align 4
  br label %pci_name.exit115.i.i

pci_name.exit115.i.i:                             ; preds = %if.end.i.i113.i.i, %do.end20.i.i.pci_name.exit115.i.i_crit_edge
  %retval.0.i.i114.i.i = phi ptr [ %49, %if.end.i.i113.i.i ], [ %43, %do.end20.i.i.pci_name.exit115.i.i_crit_edge ]
  %call24.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef %retval.0.i.i114.i.i, i32 noundef %call.i.i50) #9
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %pci_name.exit115.i.i, %pci_name.exit109.i.i, %pci_name.exit.i.i, %if.else.i49.if.end26.i.i_crit_edge
  %and27.i.i = and i32 %call.i35, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i)
  %tobool28.not.i.i = icmp eq i32 %and27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.end26.i.i.if.end78.i.i_crit_edge, label %if.end26.i.i.for.body.i.i_crit_edge

if.end26.i.i.for.body.i.i_crit_edge:              ; preds = %if.end26.i.i
  br label %for.body.i.i

if.end26.i.i.if.end78.i.i_crit_edge:              ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end26.i.i.for.body.i.i_crit_edge
  %conv31139.i.i = phi i32 [ %66, %for.inc.i.i.for.body.i.i_crit_edge ], [ %and27.i.i, %if.end26.i.i.for.body.i.i_crit_edge ]
  %lseq.0137.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end26.i.i.for.body.i.i_crit_edge ]
  %lseq_mask.0.in136.i.i = phi i32 [ %66, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call.i35, %if.end26.i.i.for.body.i.i_crit_edge ]
  %and34.i.i = and i32 %lseq_mask.0.in136.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i.i)
  %tobool35.not.i.i = icmp eq i32 %and34.i.i, 0
  br i1 %tobool35.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then36.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.then36.i.i:                                    ; preds = %for.body.i.i
  %mul.i.i = shl i32 %lseq.0137.i.i, 14
  %add38.i.i = add nuw nsw i32 %mul.i.i, -1207828476
  %call39.i.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef %add38.i.i) #6
  %and40.i.i = and i32 %call39.i.i, 368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i.i)
  %tobool41.not.i.i = icmp eq i32 %and40.i.i, 0
  br i1 %tobool41.not.i.i, label %if.else50.i.i, label %do.end45.i.i

do.end45.i.i:                                     ; preds = %if.then36.i.i
  %50 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_id, align 4
  %init_name.i.i116.i.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44, i32 3
  %52 = ptrtoint ptr %init_name.i.i116.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init_name.i.i116.i.i, align 8
  %tobool.not.i.i117.i.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i117.i.i, label %if.end.i.i119.i.i, label %do.end45.i.i.pci_name.exit121.i.i_crit_edge

do.end45.i.i.pci_name.exit121.i.i_crit_edge:      ; preds = %do.end45.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit121.i.i

if.end.i.i119.i.i:                                ; preds = %do.end45.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i118.i.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %54 = ptrtoint ptr %dev.i118.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i118.i.i, align 4
  br label %pci_name.exit121.i.i

pci_name.exit121.i.i:                             ; preds = %if.end.i.i119.i.i, %do.end45.i.i.pci_name.exit121.i.i_crit_edge
  %retval.0.i.i120.i.i = phi ptr [ %55, %if.end.i.i119.i.i ], [ %53, %do.end45.i.i.pci_name.exit121.i.i_crit_edge ]
  %call49.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef %retval.0.i.i120.i.i, i32 noundef %lseq.0137.i.i, i32 noundef %call39.i.i) #9
  br label %for.inc.i.i

if.else50.i.i:                                    ; preds = %if.then36.i.i
  %and51.i.i = and i32 %call39.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i.i)
  %tobool52.not.i.i = icmp eq i32 %and51.i.i, 0
  %56 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_id, align 4
  %init_name.i.i128.i.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44, i32 3
  %58 = ptrtoint ptr %init_name.i.i128.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %init_name.i.i128.i.i, align 8
  %tobool.not.i.i129.i.i = icmp eq ptr %59, null
  br i1 %tobool52.not.i.i, label %do.end67.i.i, label %do.end56.i.i

do.end56.i.i:                                     ; preds = %if.else50.i.i
  br i1 %tobool.not.i.i129.i.i, label %if.end.i.i125.i.i, label %do.end56.i.i.pci_name.exit127.i.i_crit_edge

do.end56.i.i.pci_name.exit127.i.i_crit_edge:      ; preds = %do.end56.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit127.i.i

if.end.i.i125.i.i:                                ; preds = %do.end56.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i124.i.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %60 = ptrtoint ptr %dev.i124.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i124.i.i, align 4
  br label %pci_name.exit127.i.i

pci_name.exit127.i.i:                             ; preds = %if.end.i.i125.i.i, %do.end56.i.i.pci_name.exit127.i.i_crit_edge
  %retval.0.i.i126.i.i = phi ptr [ %61, %if.end.i.i125.i.i ], [ %59, %do.end56.i.i.pci_name.exit127.i.i_crit_edge ]
  %shr60.i.i = lshr i32 %call39.i.i, 16
  %and61.i.i = and i32 %shr60.i.i, 255
  %arrayidx62.i.i = getelementptr [256 x ptr], ptr @asd_arp2_err.halt_code, i32 0, i32 %and61.i.i
  %62 = ptrtoint ptr %arrayidx62.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx62.i.i, align 4
  %call63.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef %retval.0.i.i126.i.i, i32 noundef %lseq.0137.i.i, ptr noundef %63) #9
  br label %for.inc.i.i

do.end67.i.i:                                     ; preds = %if.else50.i.i
  br i1 %tobool.not.i.i129.i.i, label %if.end.i.i131.i.i, label %do.end67.i.i.pci_name.exit133.i.i_crit_edge

do.end67.i.i.pci_name.exit133.i.i_crit_edge:      ; preds = %do.end67.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit133.i.i

if.end.i.i131.i.i:                                ; preds = %do.end67.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i130.i.i = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %64 = ptrtoint ptr %dev.i130.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i130.i.i, align 4
  br label %pci_name.exit133.i.i

pci_name.exit133.i.i:                             ; preds = %if.end.i.i131.i.i, %do.end67.i.i.pci_name.exit133.i.i_crit_edge
  %retval.0.i.i132.i.i = phi ptr [ %65, %if.end.i.i131.i.i ], [ %59, %do.end67.i.i.pci_name.exit133.i.i_crit_edge ]
  %call71.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef %retval.0.i.i132.i.i, i32 noundef %lseq.0137.i.i, i32 noundef %call39.i.i) #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %pci_name.exit133.i.i, %pci_name.exit127.i.i, %pci_name.exit121.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %lseq.0137.i.i, 1
  %66 = lshr i32 %conv31139.i.i, 1
  %cmp.not.i.i = icmp ult i32 %conv31139.i.i, 2
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end78.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.if.end78.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78.i.i

if.end78.i.i:                                     ; preds = %for.inc.i.i.if.end78.i.i_crit_edge, %if.end26.i.i.if.end78.i.i_crit_edge
  %67 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev_id, align 4
  %init_name.i.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44, i32 3
  %69 = ptrtoint ptr %init_name.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %init_name.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq ptr %70, null
  br i1 %tobool.not.i.i.i.i.i, label %if.end78.i.i.if.end.sink.split.i_crit_edge, label %if.end78.i.i.asd_dch_sas_isr.exit_crit_edge

if.end78.i.i.asd_dch_sas_isr.exit_crit_edge:      ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %asd_dch_sas_isr.exit

if.end78.i.i.if.end.sink.split.i_crit_edge:       ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.sink.split.i

if.end.sink.split.i:                              ; preds = %if.end78.i.i.if.end.sink.split.i_crit_edge, %pci_name.exit.i47.if.end.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %31, %pci_name.exit.i47.if.end.sink.split.i_crit_edge ], [ %68, %if.end78.i.i.if.end.sink.split.i_crit_edge ]
  %dev.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %.sink.i, i32 0, i32 44
  %71 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i.i.i.i, align 4
  br label %asd_dch_sas_isr.exit

asd_dch_sas_isr.exit:                             ; preds = %if.end.sink.split.i, %if.end78.i.i.asd_dch_sas_isr.exit_crit_edge, %pci_name.exit.i47.asd_dch_sas_isr.exit_crit_edge
  %retval.0.i.i.i.i.sink.i = phi ptr [ %33, %pci_name.exit.i47.asd_dch_sas_isr.exit_crit_edge ], [ %70, %if.end78.i.i.asd_dch_sas_isr.exit_crit_edge ], [ %72, %if.end.sink.split.i ]
  %call1.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %retval.0.i.i.i.i.sink.i) #9
  %call2.i.i.i = tail call i32 @asd_chip_hardrst(ptr noundef %dev_id) #6
  br label %if.end12

if.end12:                                         ; preds = %asd_dch_sas_isr.exit, %if.end8.if.end12_crit_edge
  %and13 = and i32 %call, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end16_crit_edge, label %if.then15

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then15:                                        ; preds = %if.end12
  %call.i52 = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207686960) #6
  %and.i53 = and i32 %call.i52, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53)
  %tobool.not.i54 = icmp eq i32 %and.i53, 0
  br i1 %tobool.not.i54, label %do.end.i55, label %if.end.i

do.end.i55:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154) #9
  br label %if.end16

if.end.i:                                         ; preds = %if.then15
  %and2.i = and i32 %call.i52, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else.i62, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  %73 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev_id, align 4
  %init_name.i.i.i56 = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44, i32 3
  %75 = ptrtoint ptr %init_name.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %init_name.i.i.i56, align 8
  %tobool.not.i.i.i57 = icmp eq ptr %76, null
  br i1 %tobool.not.i.i.i57, label %if.end.i.i.i59, label %do.end7.i.pci_name.exit.i61_crit_edge

do.end7.i.pci_name.exit.i61_crit_edge:            ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit.i61

if.end.i.i.i59:                                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i58 = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44
  %77 = ptrtoint ptr %dev.i.i58 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i.i58, align 4
  br label %pci_name.exit.i61

pci_name.exit.i61:                                ; preds = %if.end.i.i.i59, %do.end7.i.pci_name.exit.i61_crit_edge
  %retval.0.i.i.i60 = phi ptr [ %78, %if.end.i.i.i59 ], [ %76, %do.end7.i.pci_name.exit.i61_crit_edge ]
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef %retval.0.i.i.i60) #9
  br label %if.end53.i

if.else.i62:                                      ; preds = %if.end.i
  %and11.i = and i32 %call.i52, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.else23.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.else.i62
  %call14.i63 = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207686956) #6
  %and19.i = and i32 %call14.i63, 65535
  %79 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev_id, align 4
  %init_name.i.i72.i64 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44, i32 3
  %81 = ptrtoint ptr %init_name.i.i72.i64 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %init_name.i.i72.i64, align 8
  %tobool.not.i.i73.i65 = icmp eq ptr %82, null
  br i1 %tobool.not.i.i73.i65, label %if.end.i.i75.i67, label %if.then13.i.pci_name.exit77.i69_crit_edge

if.then13.i.pci_name.exit77.i69_crit_edge:        ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit77.i69

if.end.i.i75.i67:                                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i74.i66 = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  %83 = ptrtoint ptr %dev.i74.i66 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i74.i66, align 4
  br label %pci_name.exit77.i69

pci_name.exit77.i69:                              ; preds = %if.end.i.i75.i67, %if.then13.i.pci_name.exit77.i69_crit_edge
  %retval.0.i.i76.i68 = phi ptr [ %84, %if.end.i.i75.i67 ], [ %82, %if.then13.i.pci_name.exit77.i69_crit_edge ]
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef %and19.i, ptr noundef %retval.0.i.i76.i68) #9
  br label %if.end53.i

if.else23.i:                                      ; preds = %if.else.i62
  %call24.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207686944) #6
  %and25.i = and i32 %call24.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %do.end30.i, label %if.else33.i

do.end30.i:                                       ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #8
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163) #9
  br label %if.end16

if.else33.i:                                      ; preds = %if.else23.i
  %call34.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207686952) #6
  %call35.i = tail call i32 @asd_read_reg_dword(ptr noundef %dev_id, i32 noundef -1207686948) #6
  %85 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev_id, align 4
  %init_name.i.i78.i = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44, i32 3
  %87 = ptrtoint ptr %init_name.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %init_name.i.i78.i, align 8
  %tobool.not.i.i79.i = icmp eq ptr %88, null
  br i1 %tobool.not.i.i79.i, label %if.end.i.i81.i, label %if.else33.i.pci_name.exit83.i_crit_edge

if.else33.i.pci_name.exit83.i_crit_edge:          ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit83.i

if.end.i.i81.i:                                   ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i80.i = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44
  %89 = ptrtoint ptr %dev.i80.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev.i80.i, align 4
  br label %pci_name.exit83.i

pci_name.exit83.i:                                ; preds = %if.end.i.i81.i, %if.else33.i.pci_name.exit83.i_crit_edge
  %retval.0.i.i82.i = phi ptr [ %90, %if.end.i.i81.i ], [ %88, %if.else33.i.pci_name.exit83.i_crit_edge ]
  %and42.i = lshr i32 %call24.i, 16
  %shr.i70 = and i32 %and42.i, 7
  %and43.i = lshr i32 %call24.i, 12
  %shr44.i = and i32 %and43.i, 15
  %and45.i = lshr i32 %call24.i, 8
  %shr46.i = and i32 %and45.i, 15
  %and47.i = lshr i32 %call24.i, 4
  %shr48.i = and i32 %and47.i, 15
  %call50.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef %retval.0.i.i82.i, i32 noundef %call34.i, i32 noundef %call35.i, i32 noundef %shr.i70, i32 noundef %shr44.i, i32 noundef %shr46.i, i32 noundef %shr48.i, i32 noundef %and25.i) #9
  br label %if.end53.i

if.end53.i:                                       ; preds = %pci_name.exit83.i, %pci_name.exit77.i69, %pci_name.exit.i61
  %91 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev_id, align 4
  %init_name.i.i.i.i71 = getelementptr inbounds %struct.pci_dev, ptr %92, i32 0, i32 44, i32 3
  %93 = ptrtoint ptr %init_name.i.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %init_name.i.i.i.i71, align 8
  %tobool.not.i.i.i.i72 = icmp eq ptr %94, null
  br i1 %tobool.not.i.i.i.i72, label %if.end.i.i.i.i74, label %if.end53.i.asd_chip_reset.exit.i_crit_edge

if.end53.i.asd_chip_reset.exit.i_crit_edge:       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %asd_chip_reset.exit.i

if.end.i.i.i.i74:                                 ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i.i73 = getelementptr inbounds %struct.pci_dev, ptr %92, i32 0, i32 44
  %95 = ptrtoint ptr %dev.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev.i.i.i73, align 4
  br label %asd_chip_reset.exit.i

asd_chip_reset.exit.i:                            ; preds = %if.end.i.i.i.i74, %if.end53.i.asd_chip_reset.exit.i_crit_edge
  %retval.0.i.i.i.i75 = phi ptr [ %96, %if.end.i.i.i.i74 ], [ %94, %if.end53.i.asd_chip_reset.exit.i_crit_edge ]
  %call1.i.i76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %retval.0.i.i.i.i75) #9
  %call2.i.i77 = tail call i32 @asd_chip_hardrst(ptr noundef %dev_id) #6
  br label %if.end16

if.end16:                                         ; preds = %asd_chip_reset.exit.i, %do.end30.i, %do.end.i55, %if.end12.if.end16_crit_edge
  %and17 = and i32 %call, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.then19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status.i) #6
  %97 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 -1, ptr %status.i, align 2, !annotation !369
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcix_status.i) #6
  %98 = ptrtoint ptr %pcix_status.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -1, ptr %pcix_status.i, align 4, !annotation !369
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ecc_status.i) #6
  %99 = ptrtoint ptr %ecc_status.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %ecc_status.i, align 4, !annotation !369
  %100 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev_id, align 4
  %call.i78 = call i32 @pci_read_config_word(ptr noundef %101, i32 noundef 6, ptr noundef nonnull %status.i) #6
  %102 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev_id, align 4
  %call2.i79 = call i32 @pci_read_config_dword(ptr noundef %103, i32 noundef 68, ptr noundef nonnull %pcix_status.i) #6
  %104 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev_id, align 4
  %call4.i = call i32 @pci_read_config_dword(ptr noundef %105, i32 noundef 72, ptr noundef nonnull %ecc_status.i) #6
  %106 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %status.i, align 2
  %conv.i = zext i16 %107 to i32
  %and.i80 = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i80)
  %tobool.not.i81 = icmp eq i32 %and.i80, 0
  br i1 %tobool.not.i81, label %if.else.i89, label %do.end.i84

do.end.i84:                                       ; preds = %if.then19
  %108 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev_id, align 4
  %init_name.i.i.i82 = getelementptr inbounds %struct.pci_dev, ptr %109, i32 0, i32 44, i32 3
  %110 = ptrtoint ptr %init_name.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %init_name.i.i.i82, align 8
  %tobool.not.i.i.i83 = icmp eq ptr %111, null
  br i1 %tobool.not.i.i.i83, label %if.end.i.i.i86, label %do.end.i84.pci_name.exit.i88_crit_edge

do.end.i84.pci_name.exit.i88_crit_edge:           ; preds = %do.end.i84
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit.i88

if.end.i.i.i86:                                   ; preds = %do.end.i84
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i85 = getelementptr inbounds %struct.pci_dev, ptr %109, i32 0, i32 44
  %112 = ptrtoint ptr %dev.i.i85 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev.i.i85, align 4
  br label %pci_name.exit.i88

pci_name.exit.i88:                                ; preds = %if.end.i.i.i86, %do.end.i84.pci_name.exit.i88_crit_edge
  %retval.0.i.i.i87 = phi ptr [ %113, %if.end.i.i.i86 ], [ %111, %do.end.i84.pci_name.exit.i88_crit_edge ]
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef %retval.0.i.i.i87) #9
  br label %if.end97.i

if.else.i89:                                      ; preds = %if.then19
  %and9.i = and i32 %conv.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.else19.i, label %do.end14.i

do.end14.i:                                       ; preds = %if.else.i89
  %114 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev_id, align 4
  %init_name.i.i113.i = getelementptr inbounds %struct.pci_dev, ptr %115, i32 0, i32 44, i32 3
  %116 = ptrtoint ptr %init_name.i.i113.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %init_name.i.i113.i, align 8
  %tobool.not.i.i114.i = icmp eq ptr %117, null
  br i1 %tobool.not.i.i114.i, label %if.end.i.i116.i, label %do.end14.i.pci_name.exit118.i_crit_edge

do.end14.i.pci_name.exit118.i_crit_edge:          ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit118.i

if.end.i.i116.i:                                  ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i115.i = getelementptr inbounds %struct.pci_dev, ptr %115, i32 0, i32 44
  %118 = ptrtoint ptr %dev.i115.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev.i115.i, align 4
  br label %pci_name.exit118.i

pci_name.exit118.i:                               ; preds = %if.end.i.i116.i, %do.end14.i.pci_name.exit118.i_crit_edge
  %retval.0.i.i117.i = phi ptr [ %119, %if.end.i.i116.i ], [ %117, %do.end14.i.pci_name.exit118.i_crit_edge ]
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, ptr noundef %retval.0.i.i117.i) #9
  br label %if.end97.i

if.else19.i:                                      ; preds = %if.else.i89
  %and21.i = and i32 %conv.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.else31.i91, label %do.end26.i

do.end26.i:                                       ; preds = %if.else19.i
  %120 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev_id, align 4
  %init_name.i.i119.i = getelementptr inbounds %struct.pci_dev, ptr %121, i32 0, i32 44, i32 3
  %122 = ptrtoint ptr %init_name.i.i119.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %init_name.i.i119.i, align 8
  %tobool.not.i.i120.i = icmp eq ptr %123, null
  br i1 %tobool.not.i.i120.i, label %if.end.i.i122.i, label %do.end26.i.pci_name.exit124.i_crit_edge

do.end26.i.pci_name.exit124.i_crit_edge:          ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit124.i

if.end.i.i122.i:                                  ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i121.i = getelementptr inbounds %struct.pci_dev, ptr %121, i32 0, i32 44
  %124 = ptrtoint ptr %dev.i121.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev.i121.i, align 4
  br label %pci_name.exit124.i

pci_name.exit124.i:                               ; preds = %if.end.i.i122.i, %do.end26.i.pci_name.exit124.i_crit_edge
  %retval.0.i.i123.i = phi ptr [ %125, %if.end.i.i122.i ], [ %123, %do.end26.i.pci_name.exit124.i_crit_edge ]
  %call30.i90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174, ptr noundef %retval.0.i.i123.i) #9
  br label %if.end97.i

if.else31.i91:                                    ; preds = %if.else19.i
  %and33.i = and i32 %conv.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.else43.i, label %do.end38.i

do.end38.i:                                       ; preds = %if.else31.i91
  %126 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev_id, align 4
  %init_name.i.i125.i = getelementptr inbounds %struct.pci_dev, ptr %127, i32 0, i32 44, i32 3
  %128 = ptrtoint ptr %init_name.i.i125.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %init_name.i.i125.i, align 8
  %tobool.not.i.i126.i = icmp eq ptr %129, null
  br i1 %tobool.not.i.i126.i, label %if.end.i.i128.i, label %do.end38.i.pci_name.exit130.i_crit_edge

do.end38.i.pci_name.exit130.i_crit_edge:          ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit130.i

if.end.i.i128.i:                                  ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i127.i = getelementptr inbounds %struct.pci_dev, ptr %127, i32 0, i32 44
  %130 = ptrtoint ptr %dev.i127.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev.i127.i, align 4
  br label %pci_name.exit130.i

pci_name.exit130.i:                               ; preds = %if.end.i.i128.i, %do.end38.i.pci_name.exit130.i_crit_edge
  %retval.0.i.i129.i = phi ptr [ %131, %if.end.i.i128.i ], [ %129, %do.end38.i.pci_name.exit130.i_crit_edge ]
  %call42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, ptr noundef %retval.0.i.i129.i) #9
  br label %if.end97.i

if.else43.i:                                      ; preds = %if.else31.i91
  %132 = ptrtoint ptr %pcix_status.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %pcix_status.i, align 4
  %and44.i = and i32 %133, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %if.else56.i, label %do.end49.i

do.end49.i:                                       ; preds = %if.else43.i
  %134 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev_id, align 4
  %init_name.i.i131.i = getelementptr inbounds %struct.pci_dev, ptr %135, i32 0, i32 44, i32 3
  %136 = ptrtoint ptr %init_name.i.i131.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %init_name.i.i131.i, align 8
  %tobool.not.i.i132.i = icmp eq ptr %137, null
  br i1 %tobool.not.i.i132.i, label %if.end.i.i134.i, label %do.end49.i.pci_name.exit136.i_crit_edge

do.end49.i.pci_name.exit136.i_crit_edge:          ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit136.i

if.end.i.i134.i:                                  ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i133.i = getelementptr inbounds %struct.pci_dev, ptr %135, i32 0, i32 44
  %138 = ptrtoint ptr %dev.i133.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev.i133.i, align 4
  br label %pci_name.exit136.i

pci_name.exit136.i:                               ; preds = %if.end.i.i134.i, %do.end49.i.pci_name.exit136.i_crit_edge
  %retval.0.i.i135.i = phi ptr [ %139, %if.end.i.i134.i ], [ %137, %do.end49.i.pci_name.exit136.i_crit_edge ]
  %call53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, ptr noundef %retval.0.i.i135.i) #9
  %140 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev_id, align 4
  %142 = ptrtoint ptr %pcix_status.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %pcix_status.i, align 4
  %call55.i = call i32 @pci_write_config_dword(ptr noundef %141, i32 noundef 68, i32 noundef %143) #6
  br label %asd_hst_pcix_isr.exit

if.else56.i:                                      ; preds = %if.else43.i
  %and57.i = and i32 %133, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %if.else69.i, label %do.end62.i

do.end62.i:                                       ; preds = %if.else56.i
  %144 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev_id, align 4
  %init_name.i.i137.i = getelementptr inbounds %struct.pci_dev, ptr %145, i32 0, i32 44, i32 3
  %146 = ptrtoint ptr %init_name.i.i137.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %init_name.i.i137.i, align 8
  %tobool.not.i.i138.i = icmp eq ptr %147, null
  br i1 %tobool.not.i.i138.i, label %if.end.i.i140.i, label %do.end62.i.pci_name.exit142.i_crit_edge

do.end62.i.pci_name.exit142.i_crit_edge:          ; preds = %do.end62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit142.i

if.end.i.i140.i:                                  ; preds = %do.end62.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i139.i = getelementptr inbounds %struct.pci_dev, ptr %145, i32 0, i32 44
  %148 = ptrtoint ptr %dev.i139.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev.i139.i, align 4
  br label %pci_name.exit142.i

pci_name.exit142.i:                               ; preds = %if.end.i.i140.i, %do.end62.i.pci_name.exit142.i_crit_edge
  %retval.0.i.i141.i = phi ptr [ %149, %if.end.i.i140.i ], [ %147, %do.end62.i.pci_name.exit142.i_crit_edge ]
  %call66.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, ptr noundef %retval.0.i.i141.i) #9
  %150 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev_id, align 4
  %152 = ptrtoint ptr %pcix_status.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %pcix_status.i, align 4
  %call68.i = call i32 @pci_write_config_dword(ptr noundef %151, i32 noundef 68, i32 noundef %153) #6
  br label %asd_hst_pcix_isr.exit

if.else69.i:                                      ; preds = %if.else56.i
  %and70.i = and i32 %133, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i)
  %tobool71.not.i = icmp eq i32 %and70.i, 0
  br i1 %tobool71.not.i, label %if.else80.i, label %do.end75.i

do.end75.i:                                       ; preds = %if.else69.i
  %154 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev_id, align 4
  %init_name.i.i143.i = getelementptr inbounds %struct.pci_dev, ptr %155, i32 0, i32 44, i32 3
  %156 = ptrtoint ptr %init_name.i.i143.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %init_name.i.i143.i, align 8
  %tobool.not.i.i144.i = icmp eq ptr %157, null
  br i1 %tobool.not.i.i144.i, label %if.end.i.i146.i, label %do.end75.i.pci_name.exit148.i_crit_edge

do.end75.i.pci_name.exit148.i_crit_edge:          ; preds = %do.end75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit148.i

if.end.i.i146.i:                                  ; preds = %do.end75.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i145.i = getelementptr inbounds %struct.pci_dev, ptr %155, i32 0, i32 44
  %158 = ptrtoint ptr %dev.i145.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev.i145.i, align 4
  br label %pci_name.exit148.i

pci_name.exit148.i:                               ; preds = %if.end.i.i146.i, %do.end75.i.pci_name.exit148.i_crit_edge
  %retval.0.i.i147.i = phi ptr [ %159, %if.end.i.i146.i ], [ %157, %do.end75.i.pci_name.exit148.i_crit_edge ]
  %call79.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, ptr noundef %retval.0.i.i147.i) #9
  br label %if.end97.i

if.else80.i:                                      ; preds = %if.else69.i
  %160 = ptrtoint ptr %ecc_status.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %ecc_status.i, align 4
  %and81.i = and i32 %161, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool82.not.i = icmp eq i32 %and81.i, 0
  br i1 %tobool82.not.i, label %if.else80.i.if.end97.i_crit_edge, label %do.end86.i

if.else80.i.if.end97.i_crit_edge:                 ; preds = %if.else80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97.i

do.end86.i:                                       ; preds = %if.else80.i
  %162 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev_id, align 4
  %init_name.i.i149.i = getelementptr inbounds %struct.pci_dev, ptr %163, i32 0, i32 44, i32 3
  %164 = ptrtoint ptr %init_name.i.i149.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %init_name.i.i149.i, align 8
  %tobool.not.i.i150.i = icmp eq ptr %165, null
  br i1 %tobool.not.i.i150.i, label %if.end.i.i152.i, label %do.end86.i.pci_name.exit154.i_crit_edge

do.end86.i.pci_name.exit154.i_crit_edge:          ; preds = %do.end86.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit154.i

if.end.i.i152.i:                                  ; preds = %do.end86.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i151.i = getelementptr inbounds %struct.pci_dev, ptr %163, i32 0, i32 44
  %166 = ptrtoint ptr %dev.i151.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dev.i151.i, align 4
  br label %pci_name.exit154.i

pci_name.exit154.i:                               ; preds = %if.end.i.i152.i, %do.end86.i.pci_name.exit154.i_crit_edge
  %retval.0.i.i153.i = phi ptr [ %167, %if.end.i.i152.i ], [ %165, %do.end86.i.pci_name.exit154.i_crit_edge ]
  %call90.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, ptr noundef %retval.0.i.i153.i) #9
  br label %if.end97.i

if.end97.i:                                       ; preds = %pci_name.exit154.i, %if.else80.i.if.end97.i_crit_edge, %pci_name.exit148.i, %pci_name.exit130.i, %pci_name.exit124.i, %pci_name.exit118.i, %pci_name.exit.i88
  %168 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev_id, align 4
  %init_name.i.i.i.i92 = getelementptr inbounds %struct.pci_dev, ptr %169, i32 0, i32 44, i32 3
  %170 = ptrtoint ptr %init_name.i.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %init_name.i.i.i.i92, align 8
  %tobool.not.i.i.i.i93 = icmp eq ptr %171, null
  br i1 %tobool.not.i.i.i.i93, label %if.end.i.i.i.i95, label %if.end97.i.asd_chip_reset.exit.i99_crit_edge

if.end97.i.asd_chip_reset.exit.i99_crit_edge:     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %asd_chip_reset.exit.i99

if.end.i.i.i.i95:                                 ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i.i94 = getelementptr inbounds %struct.pci_dev, ptr %169, i32 0, i32 44
  %172 = ptrtoint ptr %dev.i.i.i94 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev.i.i.i94, align 4
  br label %asd_chip_reset.exit.i99

asd_chip_reset.exit.i99:                          ; preds = %if.end.i.i.i.i95, %if.end97.i.asd_chip_reset.exit.i99_crit_edge
  %retval.0.i.i.i.i96 = phi ptr [ %173, %if.end.i.i.i.i95 ], [ %171, %if.end97.i.asd_chip_reset.exit.i99_crit_edge ]
  %call1.i.i97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %retval.0.i.i.i.i96) #9
  %call2.i.i98 = call i32 @asd_chip_hardrst(ptr noundef %dev_id) #6
  br label %asd_hst_pcix_isr.exit

asd_hst_pcix_isr.exit:                            ; preds = %asd_chip_reset.exit.i99, %pci_name.exit142.i, %pci_name.exit136.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ecc_status.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcix_status.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i) #6
  br label %cleanup

cleanup:                                          ; preds = %asd_hst_pcix_isr.exit, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %asd_hst_pcix_isr.exit ], [ 1, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @asd_ascb_alloc_list(ptr noundef %asd_ha, ptr nocapture noundef %num, i32 noundef %gfp_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pr = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp30 = icmp sgt i32 %.pr, 0
  br i1 %cmp30, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %or.i.i = or i32 %gfp_flags, 256
  %scb_pool.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 12
  %tc_index_lock.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 6
  %tc_index_bitmap.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 8
  %tc_index_bitmap_bits.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 9
  %tc_index_array.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %first.031 = phi ptr [ null, %for.body.lr.ph ], [ %first.2.ph, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_ascb_cache to i32))
  %1 = load ptr, ptr @asd_ascb_cache, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef %or.i.i) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %for.body.for.end_crit_edge, label %if.then.i

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then.i:                                        ; preds = %for.body
  %dma_scb.i = getelementptr inbounds %struct.asd_ascb, ptr %call.i.i, i32 0, i32 3
  %size.i = getelementptr inbounds %struct.asd_ascb, ptr %call.i.i, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 128, ptr %size.i, align 8
  %3 = ptrtoint ptr %scb_pool.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %scb_pool.i, align 4
  %dma_handle.i = getelementptr inbounds %struct.asd_ascb, ptr %call.i.i, i32 0, i32 3, i32 1
  %call.i58.i = tail call ptr @dma_pool_alloc(ptr noundef %4, i32 noundef %or.i.i, ptr noundef %dma_handle.i) #6
  %5 = ptrtoint ptr %dma_scb.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i58.i, ptr %dma_scb.i, align 8
  %tobool7.not.i = icmp eq ptr %call.i58.i, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end.i

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_ascb_cache to i32))
  %6 = load ptr, ptr @asd_ascb_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %6, ptr noundef nonnull %call.i.i) #6
  br label %for.end

if.end.i:                                         ; preds = %if.then.i
  %7 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call.i.i, ptr %call.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %prev.i.i.i, align 4
  %scb.i.i = getelementptr inbounds %struct.asd_ascb, ptr %call.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %scb.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i58.i, ptr %scb.i.i, align 4
  %ha.i.i = getelementptr inbounds %struct.asd_ascb, ptr %call.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %ha.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %asd_ha, ptr %ha.i.i, align 8
  %timer.i.i = getelementptr inbounds %struct.asd_ascb, ptr %call.i.i, i32 0, i32 7
  tail call void @init_timer_key(ptr noundef %timer.i.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.193, ptr noundef nonnull @asd_init_ascb.__key) #6
  %tc_index.i.i = getelementptr inbounds %struct.asd_ascb, ptr %call.i.i, i32 0, i32 12
  %11 = ptrtoint ptr %tc_index.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %tc_index.i.i, align 4
  %call11.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tc_index_lock.i) #6
  %12 = ptrtoint ptr %tc_index_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tc_index_bitmap.i.i, align 4
  %14 = ptrtoint ptr %tc_index_bitmap_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tc_index_bitmap_bits.i.i, align 4
  %call.i59.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %13, i32 noundef %15) #6
  %16 = ptrtoint ptr %tc_index_bitmap_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tc_index_bitmap_bits.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i59.i, i32 %17)
  %cmp.i.i = icmp eq i32 %call.i59.i, %17
  br i1 %cmp.i.i, label %if.end.i.asd_tc_index_get.exit.i_crit_edge, label %if.end.i.i

if.end.i.asd_tc_index_get.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %asd_tc_index_get.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %tc_index_array.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tc_index_array.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %19, i32 %call.i59.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i, ptr %arrayidx.i.i, align 4
  %21 = ptrtoint ptr %tc_index_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tc_index_bitmap.i.i, align 4
  tail call void @_set_bit(i32 noundef %call.i59.i, ptr noundef %22) #6
  br label %asd_tc_index_get.exit.i

asd_tc_index_get.exit.i:                          ; preds = %if.end.i.i, %if.end.i.asd_tc_index_get.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i59.i, %if.end.i.i ], [ -1, %if.end.i.asd_tc_index_get.exit.i_crit_edge ]
  %23 = ptrtoint ptr %tc_index.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i.i, ptr %tc_index.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tc_index_lock.i, i32 noundef %call11.i) #6
  %24 = ptrtoint ptr %tc_index.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tc_index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp17.i = icmp eq i32 %25, -1
  br i1 %cmp17.i, label %undo.i, label %if.else

undo.i:                                           ; preds = %asd_tc_index_get.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %scb_pool.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %scb_pool.i, align 4
  %28 = ptrtoint ptr %dma_scb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dma_scb.i, align 8
  %30 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_handle.i, align 4
  tail call void @dma_pool_free(ptr noundef %27, ptr noundef %29, i32 noundef %31) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_ascb_cache to i32))
  %32 = load ptr, ptr @asd_ascb_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %32, ptr noundef nonnull %call.i.i) #6
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191) #9
  br label %for.end

if.else:                                          ; preds = %asd_tc_index_get.exit.i
  %conv22.i = trunc i32 %25 to i16
  %33 = tail call i16 @llvm.bswap.i16(i16 %conv22.i) #6
  %34 = ptrtoint ptr %scb.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %scb.i.i, align 4
  %index.i = getelementptr inbounds %struct.scb_header, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %index.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 %33, ptr %index.i, align 1
  %tobool1.not = icmp eq ptr %first.031, null
  br i1 %tobool1.not, label %if.else.for.inc_crit_edge, label %if.else3

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else3:                                         ; preds = %if.else
  %prev = getelementptr inbounds %struct.list_head, ptr %first.031, i32 0, i32 1
  %37 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev, align 4
  %call.i.i15 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %38, ptr noundef nonnull %first.031) #6
  br i1 %call.i.i15, label %if.end.i.i16, label %if.else3.list_add_tail.exit_crit_edge

if.else3.list_add_tail.exit_crit_edge:            ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i16:                                     ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i.i, ptr %prev, align 4
  %40 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %first.031, ptr %call.i.i, align 8
  %41 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %call.i.i, ptr %38, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i16, %if.else3.list_add_tail.exit_crit_edge
  %43 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma_handle.i, align 4
  %conv = zext i32 %44 to i64
  %45 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %scb = getelementptr inbounds %struct.asd_ascb, ptr %38, i32 0, i32 2
  %46 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %scb, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 8)
  store i64 %45, ptr %47, align 1
  br label %for.inc

for.inc:                                          ; preds = %list_add_tail.exit, %if.else.for.inc_crit_edge
  %first.2.ph = phi ptr [ %call.i.i, %if.else.for.inc_crit_edge ], [ %first.031, %list_add_tail.exit ]
  %49 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num, align 4
  %dec = add i32 %50, -1
  store i32 %dec, ptr %num, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %undo.i, %if.then8.i, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %first.025 = phi ptr [ %first.031, %if.then8.i ], [ %first.031, %undo.i ], [ null, %entry.for.end_crit_edge ], [ %first.2.ph, %for.inc.for.end_crit_edge ], [ %first.031, %for.body.for.end_crit_edge ]
  ret ptr %first.025
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_post_ascb_list(ptr noundef %asd_ha, ptr noundef %ascb, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  %seq = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13
  %call2 = call i32 @_raw_spin_lock_irqsave(ptr noundef %seq) #6
  %max_scbs = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 7
  %3 = ptrtoint ptr %max_scbs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_scbs, align 4
  %pending = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 2
  %5 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pending, align 4
  %sub = sub i32 %4, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %num)
  %cmp6.not = icmp slt i32 %sub, %num
  br i1 %cmp6.not, label %entry.if.then10_crit_edge, label %if.then

entry.if.then10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.then:                                          ; preds = %entry
  %add = add i32 %6, %num
  %7 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %pending, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %phi.cmp = icmp eq i32 %4, %6
  br i1 %phi.cmp, label %if.then.if.then10_crit_edge, label %if.end19

if.then.if.then10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.then10:                                        ; preds = %if.then.if.then10_crit_edge, %entry.if.then10_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %seq, i32 noundef %call2) #6
  %8 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asd_ha, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then10.pci_name.exit_crit_edge

if.then10.pci_name.exit_crit_edge:                ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.then10.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.then10.pci_name.exit_crit_edge ]
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %retval.0.i.i) #9
  br label %cleanup

if.end19:                                         ; preds = %if.then
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ascb, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %dma_scb.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 3
  %16 = ptrtoint ptr %dma_scb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %t.sroa.0.0.copyload.i = load ptr, ptr %dma_scb.i, align 4
  %t.sroa.5.0.dma_scb.sroa_idx.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %t.sroa.5.0.dma_scb.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %t.sroa.5.0.copyload.i = load i32, ptr %t.sroa.5.0.dma_scb.sroa_idx.i, align 4
  %t.sroa.6.0.dma_scb.sroa_idx.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %t.sroa.6.0.dma_scb.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %t.sroa.6.0.copyload.i = load i32, ptr %t.sroa.6.0.dma_scb.sroa_idx.i, align 4
  %next_scb.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 5
  %19 = ptrtoint ptr %next_scb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %next_scb.i, align 4
  %scb.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 2
  %21 = ptrtoint ptr %scb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %scb.i, align 4
  %23 = call ptr @memcpy(ptr %20, ptr %22, i32 128)
  %24 = call ptr @memcpy(ptr %dma_scb.i, ptr %next_scb.i, i32 12)
  %25 = load ptr, ptr %dma_scb.i, align 4
  store ptr %25, ptr %scb.i, align 4
  store ptr %t.sroa.0.0.copyload.i, ptr %next_scb.i, align 4
  %t.sroa.5.0.next_scb7.sroa_idx.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 5, i32 1
  %26 = ptrtoint ptr %t.sroa.5.0.next_scb7.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %t.sroa.5.0.copyload.i, ptr %t.sroa.5.0.next_scb7.sroa_idx.i, align 4
  %t.sroa.6.0.next_scb7.sroa_idx.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 5, i32 2
  %27 = ptrtoint ptr %t.sroa.6.0.next_scb7.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %t.sroa.6.0.copyload.i, ptr %t.sroa.6.0.next_scb7.sroa_idx.i, align 4
  %conv.i = zext i32 %t.sroa.5.0.copyload.i to i64
  %28 = call i64 @llvm.bswap.i64(i64 %conv.i) #6
  %scb9.i = getelementptr inbounds %struct.asd_ascb, ptr %15, i32 0, i32 2
  %29 = ptrtoint ptr %scb9.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %scb9.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %28, ptr %30, align 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i, align 4
  %call.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %list, ptr noundef %33, ptr noundef %ascb) #6
  br i1 %call.i, label %if.end.i, label %if.end19.__list_add.exit_crit_edge

if.end19.__list_add.exit_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_add.exit

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %list, ptr %prev.i, align 4
  %35 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %ascb, ptr %list, align 4
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %0, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %list, ptr %33, align 4
  br label %__list_add.exit

__list_add.exit:                                  ; preds = %if.end.i, %if.end19.__list_add.exit_crit_edge
  %38 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %38)
  %ascb.015.i = load ptr, ptr %list, align 4
  %cmp.not16.i = icmp eq ptr %ascb.015.i, %list
  br i1 %cmp.not16.i, label %__list_add.exit.asd_start_scb_timers.exit_crit_edge, label %__list_add.exit.for.body.i_crit_edge

__list_add.exit.for.body.i_crit_edge:             ; preds = %__list_add.exit
  br label %for.body.i

__list_add.exit.asd_start_scb_timers.exit_crit_edge: ; preds = %__list_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %asd_start_scb_timers.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %__list_add.exit.for.body.i_crit_edge
  %ascb.017.i = phi ptr [ %ascb.0.i, %for.inc.i.for.body.i_crit_edge ], [ %ascb.015.i, %__list_add.exit.for.body.i_crit_edge ]
  %uldd_timer.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb.017.i, i32 0, i32 6
  %39 = ptrtoint ptr %uldd_timer.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i = load i8, ptr %uldd_timer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %timer.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb.017.i, i32 0, i32 7
  %function.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb.017.i, i32 0, i32 7, i32 2
  %40 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @asd_ascb_timedout, ptr %function.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %41, 500
  %expires.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb.017.i, i32 0, i32 7, i32 1
  %42 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add.i, ptr %expires.i, align 4
  call void @add_timer(ptr noundef %timer.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %43 = ptrtoint ptr %ascb.017.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %ascb.0.i = load ptr, ptr %ascb.017.i, align 4
  %cmp.not.i = icmp eq ptr %ascb.0.i, %list
  br i1 %cmp.not.i, label %for.inc.i.asd_start_scb_timers.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.asd_start_scb_timers.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %asd_start_scb_timers.exit

asd_start_scb_timers.exit:                        ; preds = %for.inc.i.asd_start_scb_timers.exit_crit_edge, %__list_add.exit.asd_start_scb_timers.exit_crit_edge
  %scbpro = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 1
  %44 = ptrtoint ptr %scbpro to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %scbpro, align 4
  %46 = trunc i32 %num to i16
  %conv26 = add i16 %45, %46
  store i16 %conv26, ptr %scbpro, align 4
  %prev28 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 3, i32 1
  %47 = ptrtoint ptr %prev28 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev28, align 4
  %49 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %list, align 4
  %cmp.i.not.i = icmp eq ptr %50, %list
  br i1 %cmp.i.not.i, label %asd_start_scb_timers.exit.list_splice_init.exit_crit_edge, label %if.then.i53

asd_start_scb_timers.exit.list_splice_init.exit_crit_edge: ; preds = %asd_start_scb_timers.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_splice_init.exit

if.then.i53:                                      ; preds = %asd_start_scb_timers.exit
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %48, align 4
  %53 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %0, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %55 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %48, ptr %prev3.i.i, align 4
  store ptr %50, ptr %48, align 4
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %52, ptr %54, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %57 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev6.i.i, align 4
  %58 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %list, ptr %list, align 4
  store ptr %list, ptr %0, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i53, %asd_start_scb_timers.exit.list_splice_init.exit_crit_edge
  %59 = ptrtoint ptr %scbpro to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %scbpro, align 4
  %conv31 = zext i16 %60 to i32
  call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207959540, i32 noundef %conv31) #6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %seq, i32 noundef %call2) #6
  br label %cleanup

cleanup:                                          ; preds = %list_splice_init.exit, %pci_name.exit
  %retval.0 = phi i32 [ 0, %list_splice_init.exit ], [ -132, %pci_name.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_post_escb_list(ptr noundef %asd_ha, ptr nocapture noundef %ascb, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %seq = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %seq) #6
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ascb, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %dma_scb.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 3
  %2 = ptrtoint ptr %dma_scb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %t.sroa.0.0.copyload.i = load ptr, ptr %dma_scb.i, align 4
  %t.sroa.5.0.dma_scb.sroa_idx.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %t.sroa.5.0.dma_scb.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %t.sroa.5.0.copyload.i = load i32, ptr %t.sroa.5.0.dma_scb.sroa_idx.i, align 4
  %t.sroa.6.0.dma_scb.sroa_idx.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %t.sroa.6.0.dma_scb.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %t.sroa.6.0.copyload.i = load i32, ptr %t.sroa.6.0.dma_scb.sroa_idx.i, align 4
  %next_scb.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 5
  %5 = ptrtoint ptr %next_scb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %next_scb.i, align 4
  %scb.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 2
  %7 = ptrtoint ptr %scb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %scb.i, align 4
  %9 = call ptr @memcpy(ptr %6, ptr %8, i32 128)
  %10 = call ptr @memcpy(ptr %dma_scb.i, ptr %next_scb.i, i32 12)
  %11 = load ptr, ptr %dma_scb.i, align 4
  store ptr %11, ptr %scb.i, align 4
  store ptr %t.sroa.0.0.copyload.i, ptr %next_scb.i, align 4
  %t.sroa.5.0.next_scb7.sroa_idx.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 5, i32 1
  %12 = ptrtoint ptr %t.sroa.5.0.next_scb7.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %t.sroa.5.0.copyload.i, ptr %t.sroa.5.0.next_scb7.sroa_idx.i, align 4
  %t.sroa.6.0.next_scb7.sroa_idx.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 5, i32 2
  %13 = ptrtoint ptr %t.sroa.6.0.next_scb7.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %t.sroa.6.0.copyload.i, ptr %t.sroa.6.0.next_scb7.sroa_idx.i, align 4
  %conv.i = zext i32 %t.sroa.5.0.copyload.i to i64
  %14 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #6
  %scb9.i = getelementptr inbounds %struct.asd_ascb, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %scb9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %scb9.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %14, ptr %16, align 1
  %scbpro = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 1
  %18 = ptrtoint ptr %scbpro to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %scbpro, align 4
  %20 = trunc i32 %num to i16
  %conv7 = add i16 %19, %20
  store i16 %conv7, ptr %scbpro, align 4
  %conv10 = zext i16 %conv7 to i32
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207959540, i32 noundef %conv10) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %seq, i32 noundef %call2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @asd_turn_led(ptr noundef %asd_ha, i32 noundef %phy_id, i32 noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %phy_id)
  %cmp = icmp slt i32 %phy_id, 8
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mul = shl i32 %phy_id, 14
  %add1 = add i32 %mul, -1207828408
  %call = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef %add1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %op)
  %tobool.not = icmp eq i32 %op, 0
  %and = and i32 %call, -257
  %masksel = select i1 %tobool.not, i32 0, i32 256
  %v.0 = or i32 %and, %masksel
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add1, i32 noundef %v.0) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @asd_control_led(ptr noundef %asd_ha, i32 noundef %phy_id, i32 noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %phy_id)
  %cmp = icmp slt i32 %phy_id, 8
  br i1 %cmp, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207687104) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %op)
  %tobool.not = icmp eq i32 %op, 0
  %shl2 = shl nuw nsw i32 1, %phy_id
  %or = or i32 %call, %shl2
  %neg = xor i32 %shl2, -1
  %and = and i32 %call, %neg
  %v.0 = select i1 %tobool.not, i32 %and, i32 %or
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207687104, i32 noundef %v.0) #6
  %call3 = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207687084) #6
  %shl9 = shl nuw nsw i32 1, %phy_id
  %or7 = or i32 %call3, %shl9
  %neg10 = xor i32 %shl9, -1
  %and11 = and i32 %call3, %neg10
  %v.1 = select i1 %tobool.not, i32 %and11, i32 %or7
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207687084, i32 noundef %v.1) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then, %entry.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_enable_phys(ptr noundef %asd_ha, i8 noundef zeroext %phy_mask) local_unnamed_addr #0 align 64 {
entry:
  %list.i = alloca %struct.list_head, align 4
  %k = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %k) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %phy_mask)
  %tobool.not = icmp eq i8 %phy_mask, 0
  br i1 %tobool.not, label %do.end, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %phy_m.078 = phi i8 [ %21, %for.inc.for.body_crit_edge ], [ %phy_mask, %entry.for.body_crit_edge ]
  %num.075 = phi i32 [ %num.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %0 = and i8 %phy_m.078, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool3.not = icmp eq i8 %0, 0
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.then4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then4:                                         ; preds = %for.body
  %inc = add i32 %num.075, 1
  %mul.i = shl nuw nsw i32 %indvars.iv, 14
  %add3.i = add nuw nsw i32 %mul.i, -1207817382
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add3.i, i8 noundef zeroext 0) #6
  %add8.i = add nuw nsw i32 %mul.i, -1207817392
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add8.i, i8 noundef zeroext 20) #6
  %add13.i = add nuw nsw i32 %mul.i, -1207817376
  %phy_desc.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 %indvars.iv, i32 1
  %1 = ptrtoint ptr %phy_desc.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy_desc.i, align 4
  %phy_control_0.i = getelementptr inbounds %struct.asd_phy_desc, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %phy_control_0.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %phy_control_0.i, align 1
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add13.i, i8 noundef zeroext %4) #6
  %add18.i = add nuw nsw i32 %mul.i, -1207817375
  %5 = ptrtoint ptr %phy_desc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy_desc.i, align 4
  %phy_control_1.i = getelementptr inbounds %struct.asd_phy_desc, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %phy_control_1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %phy_control_1.i, align 1
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add18.i, i8 noundef zeroext %8) #6
  %add24.i = add nuw nsw i32 %mul.i, -1207817374
  %9 = ptrtoint ptr %phy_desc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy_desc.i, align 4
  %phy_control_2.i = getelementptr inbounds %struct.asd_phy_desc, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %phy_control_2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %phy_control_2.i, align 1
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add24.i, i8 noundef zeroext %12) #6
  %add30.i = add nuw nsw i32 %mul.i, -1207817373
  %13 = ptrtoint ptr %phy_desc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy_desc.i, align 4
  %phy_control_3.i = getelementptr inbounds %struct.asd_phy_desc, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %phy_control_3.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %phy_control_3.i, align 1
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add30.i, i8 noundef zeroext %16) #6
  %add35.i = add nuw nsw i32 %mul.i, -1207825928
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add35.i, i32 noundef 10000) #6
  %add39.i = add nuw nsw i32 %mul.i, -1207826240
  %id_frm_tok.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 %indvars.iv, i32 3
  %17 = ptrtoint ptr %id_frm_tok.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %id_frm_tok.i, align 4
  %dma_handle.i = getelementptr inbounds %struct.asd_dma_tok, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_handle.i, align 4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add39.i, i32 noundef %20) #6
  %add.i.i = add nuw nsw i32 %mul.i, -1207826236
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add.i.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %indvars.iv)
  %cmp.i.i = icmp ult i32 %indvars.iv, 8
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then4.for.inc_crit_edge

if.then4.for.inc_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then.i.i:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207687104) #6
  %shl2.i.i = shl nuw nsw i32 1, %indvars.iv
  %or.i.i = or i32 %call.i.i, %shl2.i.i
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207687104, i32 noundef %or.i.i) #6
  %call3.i.i = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207687084) #6
  %or7.i.i = or i32 %call3.i.i, %shl2.i.i
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207687084, i32 noundef %or7.i.i) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then.i.i, %if.then4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %num.1 = phi i32 [ %num.075, %for.body.for.inc_crit_edge ], [ %inc, %if.then4.for.inc_crit_edge ], [ %inc, %if.then.i.i ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %21 = lshr i8 %phy_m.078, 1
  %cmp.not = icmp ult i8 %phy_m.078, 2
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %22 = ptrtoint ptr %k to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %num.1, ptr %k, align 4
  %call11 = call ptr @asd_ascb_alloc_list(ptr noundef %asd_ha, ptr noundef nonnull %k, i32 noundef 3264)
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end16, label %for.body24.preheader

do.end16:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #9
  br label %cleanup

for.body24.preheader:                             ; preds = %for.end
  %23 = ptrtoint ptr %k to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %k, align 4
  %sub = sub i32 %num.1, %24
  br label %for.body24

for.body24:                                       ; preds = %for.inc32.for.body24_crit_edge, %for.body24.preheader
  %indvars.iv83 = phi i32 [ 0, %for.body24.preheader ], [ %indvars.iv.next84, %for.inc32.for.body24_crit_edge ]
  %phy_m.182 = phi i8 [ %phy_mask, %for.body24.preheader ], [ %28, %for.inc32.for.body24_crit_edge ]
  %ascb.080 = phi ptr [ %call11, %for.body24.preheader ], [ %ascb.1, %for.inc32.for.body24_crit_edge ]
  %25 = and i8 %phy_m.182, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool27.not = icmp eq i8 %25, 0
  br i1 %tobool27.not, label %for.body24.for.inc32_crit_edge, label %if.then28

for.body24.for.inc32_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc32

if.then28:                                        ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @asd_build_control_phy(ptr noundef %ascb.080, i32 noundef %indvars.iv83, i8 noundef zeroext 1) #6
  %26 = ptrtoint ptr %ascb.080 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ascb.080, align 4
  br label %for.inc32

for.inc32:                                        ; preds = %if.then28, %for.body24.for.inc32_crit_edge
  %ascb.1 = phi ptr [ %27, %if.then28 ], [ %ascb.080, %for.body24.for.inc32_crit_edge ]
  %indvars.iv.next84 = add nuw nsw i32 %indvars.iv83, 1
  %28 = lshr i8 %phy_m.182, 1
  %cmp22.not = icmp ult i8 %phy_m.182, 2
  br i1 %cmp22.not, label %do.end40, label %for.inc32.for.body24_crit_edge

for.inc32.for.body24_crit_edge:                   ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body24

do.end40:                                         ; preds = %for.inc32
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %sub) #9
  %call43 = tail call i32 @asd_post_ascb_list(ptr noundef %asd_ha, ptr noundef nonnull %call11, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %do.end40.cleanup_crit_edge, label %if.then45

do.end40.cleanup_crit_edge:                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then45:                                        ; preds = %do.end40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list.i) #6
  %29 = getelementptr inbounds %struct.list_head, ptr %list.i, i32 0, i32 1
  %30 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %list.i, ptr %list.i, align 4
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %list.i, ptr %29, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %call11, i32 0, i32 1
  %32 = ptrtoint ptr %prev2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev2.i, align 4
  %call.i.i72 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %list.i, ptr noundef %33, ptr noundef nonnull %call11) #6
  br i1 %call.i.i72, label %if.end.i.i, label %if.then45.__list_add.exit.i_crit_edge

if.then45.__list_add.exit.i_crit_edge:            ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_add.exit.i

if.end.i.i:                                       ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %list.i, ptr %prev2.i, align 4
  %35 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call11, ptr %list.i, align 4
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %29, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %list.i, ptr %33, align 4
  br label %__list_add.exit.i

__list_add.exit.i:                                ; preds = %if.end.i.i, %if.then45.__list_add.exit.i_crit_edge
  %38 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %list.i, align 4
  %cmp.i.not13.i = icmp eq ptr %39, %list.i
  br i1 %cmp.i.not13.i, label %__list_add.exit.i.asd_ascb_free_list.exit_crit_edge, label %__list_add.exit.i.for.body.i_crit_edge

__list_add.exit.i.for.body.i_crit_edge:           ; preds = %__list_add.exit.i
  br label %for.body.i

__list_add.exit.i.asd_ascb_free_list.exit_crit_edge: ; preds = %__list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %asd_ascb_free_list.exit

for.body.i:                                       ; preds = %asd_ascb_free.exit.i.for.body.i_crit_edge, %__list_add.exit.i.for.body.i_crit_edge
  %pos.014.i = phi ptr [ %n.015.i, %asd_ascb_free.exit.i.for.body.i_crit_edge ], [ %39, %__list_add.exit.i.for.body.i_crit_edge ]
  %40 = ptrtoint ptr %pos.014.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %n.015.i = load ptr, ptr %pos.014.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.014.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.014.i, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i.i, align 4
  %43 = ptrtoint ptr %pos.014.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pos.014.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %47 = ptrtoint ptr %pos.014.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %pos.014.i, ptr %pos.014.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %pos.014.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %pos.014.i, ptr %prev.i3.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %pos.014.i, null
  br i1 %tobool.not.i.i, label %list_del_init.exit.i.asd_ascb_free.exit.i_crit_edge, label %if.then.i.i73

list_del_init.exit.i.asd_ascb_free.exit.i_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %asd_ascb_free.exit.i

if.then.i.i73:                                    ; preds = %list_del_init.exit.i
  %ha.i.i = getelementptr inbounds %struct.asd_ascb, ptr %pos.014.i, i32 0, i32 1
  %49 = ptrtoint ptr %ha.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ha.i.i, align 4
  %51 = ptrtoint ptr %pos.014.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %pos.014.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %52, %pos.014.i
  br i1 %cmp.i.not.i.i, label %do.body13.i.i, label %do.body6.i.i, !prof !371

do.body6.i.i:                                     ; preds = %if.then.i.i73
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_hwi.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #6, !srcloc !372
  unreachable

do.body13.i.i:                                    ; preds = %if.then.i.i73
  call void @__sanitizer_cov_trace_pc() #8
  %tc_index_lock.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %50, i32 0, i32 13, i32 6
  %call16.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tc_index_lock.i.i) #6
  %53 = ptrtoint ptr %ha.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ha.i.i, align 4
  %tc_index.i.i = getelementptr inbounds %struct.asd_ascb, ptr %pos.014.i, i32 0, i32 12
  %55 = ptrtoint ptr %tc_index.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tc_index.i.i, align 4
  %tc_index_array.i.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %54, i32 0, i32 13, i32 7
  %57 = ptrtoint ptr %tc_index_array.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tc_index_array.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %58, i32 %56
  %59 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %arrayidx.i.i.i, align 4
  %tc_index_bitmap.i.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %54, i32 0, i32 13, i32 8
  %60 = ptrtoint ptr %tc_index_bitmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tc_index_bitmap.i.i.i, align 4
  call void @_clear_bit(i32 noundef %56, ptr noundef %61) #6
  %62 = ptrtoint ptr %ha.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ha.i.i, align 4
  %tc_index_lock25.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %63, i32 0, i32 13, i32 6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tc_index_lock25.i.i, i32 noundef %call16.i.i) #6
  %scb_pool.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %50, i32 0, i32 12
  %64 = ptrtoint ptr %scb_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %scb_pool.i.i, align 4
  %dma_scb.i.i = getelementptr inbounds %struct.asd_ascb, ptr %pos.014.i, i32 0, i32 3
  %66 = ptrtoint ptr %dma_scb.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dma_scb.i.i, align 4
  %dma_handle.i.i = getelementptr inbounds %struct.asd_ascb, ptr %pos.014.i, i32 0, i32 3, i32 1
  %68 = ptrtoint ptr %dma_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dma_handle.i.i, align 4
  call void @dma_pool_free(ptr noundef %65, ptr noundef %67, i32 noundef %69) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_ascb_cache to i32))
  %70 = load ptr, ptr @asd_ascb_cache, align 4
  call void @kmem_cache_free(ptr noundef %70, ptr noundef nonnull %pos.014.i) #6
  br label %asd_ascb_free.exit.i

asd_ascb_free.exit.i:                             ; preds = %do.body13.i.i, %list_del_init.exit.i.asd_ascb_free.exit.i_crit_edge
  %cmp.i.not.i = icmp eq ptr %n.015.i, %list.i
  br i1 %cmp.i.not.i, label %asd_ascb_free.exit.i.asd_ascb_free_list.exit_crit_edge, label %asd_ascb_free.exit.i.for.body.i_crit_edge

asd_ascb_free.exit.i.for.body.i_crit_edge:        ; preds = %asd_ascb_free.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

asd_ascb_free.exit.i.asd_ascb_free_list.exit_crit_edge: ; preds = %asd_ascb_free.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %asd_ascb_free_list.exit

asd_ascb_free_list.exit:                          ; preds = %asd_ascb_free.exit.i.asd_ascb_free_list.exit_crit_edge, %__list_add.exit.i.asd_ascb_free_list.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list.i) #6
  br label %cleanup

cleanup:                                          ; preds = %asd_ascb_free_list.exit, %do.end40.cleanup_crit_edge, %do.end16, %do.end
  %retval.0 = phi i32 [ -12, %do.end16 ], [ 0, %do.end ], [ %call43, %asd_ascb_free_list.exit ], [ 0, %do.end40.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @asd_build_control_phy(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_request_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asd_dl_tasklet_handler(i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %data to ptr
  %seq1 = getelementptr inbounds %struct.asd_ha_struct, ptr %0, i32 0, i32 13
  %dl2 = getelementptr inbounds %struct.asd_ha_struct, ptr %0, i32 0, i32 13, i32 11
  %dl_next = getelementptr inbounds %struct.asd_ha_struct, ptr %0, i32 0, i32 13, i32 14
  %dl_toggle = getelementptr inbounds %struct.asd_ha_struct, ptr %0, i32 0, i32 13, i32 13
  %1 = ptrtoint ptr %dl2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dl2, align 4
  %3 = ptrtoint ptr %dl_next to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dl_next, align 4
  %toggle81 = getelementptr %struct.done_list_struct, ptr %2, i32 %4, i32 3
  %5 = ptrtoint ptr %toggle81 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %toggle81, align 1
  %7 = and i8 %6, 1
  %and82 = zext i8 %7 to i32
  %8 = ptrtoint ptr %dl_toggle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dl_toggle, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %and82)
  %cmp.not83 = icmp eq i32 %9, %and82
  br i1 %cmp.not83, label %do.body4.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.body4.lr.ph:                                   ; preds = %entry
  %arrayidx80 = getelementptr %struct.done_list_struct, ptr %2, i32 %4
  %tc_index_lock = getelementptr inbounds %struct.asd_ha_struct, ptr %0, i32 0, i32 13, i32 6
  %tc_index_array.i = getelementptr inbounds %struct.asd_ha_struct, ptr %0, i32 0, i32 13, i32 7
  %pending = getelementptr inbounds %struct.asd_ha_struct, ptr %0, i32 0, i32 13, i32 2
  br label %do.body4

do.body4:                                         ; preds = %cleanup.do.body4_crit_edge, %do.body4.lr.ph
  %arrayidx84 = phi ptr [ %arrayidx80, %do.body4.lr.ph ], [ %arrayidx, %cleanup.do.body4_crit_edge ]
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tc_index_lock) #6
  %10 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %arrayidx84, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv10 = zext i16 %12 to i32
  %13 = ptrtoint ptr %tc_index_array.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tc_index_array.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %14, i32 %conv10
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tc_index_lock, i32 noundef %call7) #6
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %do.end19, label %if.else, !prof !370

do.end19:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #9
  br label %next_1

if.else:                                          ; preds = %do.body4
  %scb = getelementptr inbounds %struct.asd_ascb, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %scb, align 4
  %opcode = getelementptr inbounds %struct.scb_header, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %opcode to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %opcode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %20)
  %cmp23 = icmp eq i8 %20, -64
  br i1 %cmp23, label %if.else.out_crit_edge, label %if.else26

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.else26:                                        ; preds = %if.else
  %uldd_timer = getelementptr inbounds %struct.asd_ascb, ptr %16, i32 0, i32 6
  %21 = ptrtoint ptr %uldd_timer to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %uldd_timer, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool27.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool27.not, label %land.lhs.true, label %if.else26.do.body35_crit_edge

if.else26.do.body35_crit_edge:                    ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body35

land.lhs.true:                                    ; preds = %if.else26
  %timer = getelementptr inbounds %struct.asd_ascb, ptr %16, i32 0, i32 7
  %call28 = tail call i32 @del_timer(ptr noundef %timer) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %land.lhs.true.next_1_crit_edge, label %land.lhs.true.do.body35_crit_edge

land.lhs.true.do.body35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body35

land.lhs.true.next_1_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %next_1

do.body35:                                        ; preds = %land.lhs.true.do.body35_crit_edge, %if.else26.do.body35_crit_edge
  %call42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %seq1) #6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %16) #6
  br i1 %call.i.i, label %if.end.i.i, label %do.body35.list_del_init.exit_crit_edge

do.body35.list_del_init.exit_crit_edge:           ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %16, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.body35.list_del_init.exit_crit_edge
  %28 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %16, ptr %16, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %16, ptr %prev.i3.i, align 4
  %30 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pending, align 4
  %dec = add i32 %31, -1
  store i32 %dec, ptr %pending, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %seq1, i32 noundef %call42) #6
  br label %out

out:                                              ; preds = %list_del_init.exit, %if.else.out_crit_edge
  %tasklet_complete = getelementptr inbounds %struct.asd_ascb, ptr %16, i32 0, i32 5
  %32 = ptrtoint ptr %tasklet_complete to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tasklet_complete, align 4
  tail call void %33(ptr noundef nonnull %16, ptr noundef %arrayidx84) #6
  br label %next_1

next_1:                                           ; preds = %out, %land.lhs.true.next_1_crit_edge, %do.end19
  %34 = ptrtoint ptr %dl_next to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dl_next, align 4
  %add = add i32 %35, 1
  %and49 = and i32 %add, 1023
  store i32 %and49, ptr %dl_next, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool52.not = icmp eq i32 %and49, 0
  br i1 %tobool52.not, label %if.then53, label %next_1.cleanup_crit_edge

next_1.cleanup_crit_edge:                         ; preds = %next_1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then53:                                        ; preds = %next_1
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %dl_toggle to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dl_toggle, align 4
  %xor = xor i32 %37, 1
  store i32 %xor, ptr %dl_toggle, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %next_1.cleanup_crit_edge
  %38 = ptrtoint ptr %dl2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dl2, align 4
  %40 = ptrtoint ptr %dl_next to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dl_next, align 4
  %arrayidx = getelementptr %struct.done_list_struct, ptr %39, i32 %41
  %toggle = getelementptr %struct.done_list_struct, ptr %39, i32 %41, i32 3
  %42 = ptrtoint ptr %toggle to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %toggle, align 1
  %44 = and i8 %43, 1
  %and = zext i8 %44 to i32
  %45 = ptrtoint ptr %dl_toggle to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dl_toggle, align 4
  %cmp.not = icmp eq i32 %46, %and
  br i1 %cmp.not, label %cleanup.do.body4_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

cleanup.do.body4_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body4

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_init_seqs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_start_seqs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @asd_dump_seq_state(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @asd_ascb_timedout(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @asd_write_reg_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 188)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 188)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !194, !196, !197, !198, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !276, !277, !278, !280, !281, !282, !284, !285, !286, !288, !289, !290, !292, !293, !294, !296, !297, !298, !300, !301, !302, !303, !305, !306, !307, !309, !310, !311, !313, !314, !315, !317, !318, !319, !321, !322, !323, !324, !326, !327, !328, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !343, !344, !346, !347, !348, !350, !351, !352, !354, !355, !356, !357, !359}
!llvm.module.flags = !{!360, !361, !362, !363, !364, !365, !366, !367}
!llvm.ident = !{!368}

!0 = !{ptr @__param_max_devs, !1, !"__param_max_devs", i1 false, i1 false}
!1 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 478, i32 1}
!2 = !{ptr @__UNIQUE_ID_max_devstype290, !1, !"__UNIQUE_ID_max_devstype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_max_devs291, !4, !"__UNIQUE_ID_max_devs291", i1 false, i1 false}
!4 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 479, i32 1}
!5 = !{ptr @__param_max_cmnds, !6, !"__param_max_cmnds", i1 false, i1 false}
!6 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 484, i32 1}
!7 = !{ptr @__UNIQUE_ID_max_cmndstype292, !6, !"__UNIQUE_ID_max_cmndstype292", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_max_cmnds293, !9, !"__UNIQUE_ID_max_cmnds293", i1 false, i1 false}
!9 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 485, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 618, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @asd_init_hw._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @asd_init_hw._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 625, i32 3}
!18 = !{ptr @asd_init_hw._entry.3, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @asd_init_hw._entry_ptr.5, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 632, i32 3}
!22 = !{ptr @asd_init_hw._entry.6, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @asd_init_hw._entry_ptr.8, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 639, i32 3}
!26 = !{ptr @asd_init_hw._entry.9, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @asd_init_hw._entry_ptr.11, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 648, i32 3}
!30 = !{ptr @asd_init_hw._entry.12, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @asd_init_hw._entry_ptr.14, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 658, i32 3}
!34 = !{ptr @asd_init_hw._entry.15, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @asd_init_hw._entry_ptr.17, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 667, i32 3}
!38 = !{ptr @asd_init_hw._entry.18, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @asd_init_hw._entry_ptr.20, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 674, i32 3}
!42 = !{ptr @asd_init_hw._entry.21, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @asd_init_hw._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 681, i32 3}
!46 = !{ptr @asd_init_hw._entry.24, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @asd_init_hw._entry_ptr.26, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 687, i32 3}
!50 = !{ptr @asd_init_hw._entry.27, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @asd_init_hw._entry_ptr.29, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 1202, i32 3}
!54 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @asd_post_ascb_list._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @asd_post_ascb_list._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 1343, i32 3}
!59 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @asd_enable_phys._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @asd_enable_phys._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 1355, i32 3}
!64 = !{ptr @asd_enable_phys._entry.34, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @asd_enable_phys._entry_ptr.36, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 1365, i32 2}
!68 = !{ptr @asd_enable_phys._entry.37, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @asd_enable_phys._entry_ptr.39, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @MBAR0_SWB_SIZE, !71, !"MBAR0_SWB_SIZE", i1 false, i1 false}
!71 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 21, i32 5}
!72 = !{ptr @__param_str_max_devs, !1, !"__param_str_max_devs", i1 false, i1 false}
!73 = !{ptr @max_devs, !74, !"max_devs", i1 false, i1 false}
!74 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 477, i32 12}
!75 = !{ptr @__param_str_max_cmnds, !6, !"__param_str_max_cmnds", i1 false, i1 false}
!76 = !{ptr @max_cmnds, !77, !"max_cmnds", i1 false, i1 false}
!77 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 483, i32 12}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 152, i32 3}
!80 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @asd_init_sw._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @asd_init_sw._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 159, i32 3}
!85 = !{ptr @asd_init_sw._entry.42, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @asd_init_sw._entry_ptr.44, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @asd_init_sw.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 180, i32 2}
!89 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @asd_init_ctxmem.__key, !91, !"__key", i1 false, i1 false}
!91 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 602, i32 2}
!92 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 244, i32 2}
!95 = !{ptr @.str.48, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @asd_get_max_scb_ddb._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @asd_get_max_scb_ddb._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 521, i32 3}
!100 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @asd_extend_devctx._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @asd_extend_devctx._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 557, i32 3}
!105 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @asd_extend_cmdctx._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @asd_extend_cmdctx._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 44, i32 3}
!110 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @asd_propagate_sas_addr._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @asd_propagate_sas_addr._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 87, i32 3}
!115 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @asd_init_phy._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @asd_init_phy._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @asd_init_ports.__key, !119, !"__key", i1 false, i1 false}
!119 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 101, i32 2}
!120 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @asd_init_scbs.__key, !122, !"__key", i1 false, i1 false}
!122 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 220, i32 2}
!123 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @asd_init_scbs.__key.59, !125, !"__key", i1 false, i1 false}
!125 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 234, i32 2}
!126 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 732, i32 4}
!129 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @asd_dl_tasklet_handler._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @asd_dl_tasklet_handler._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 383, i32 3}
!134 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @asd_init_escbs._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @asd_init_escbs._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 389, i32 3}
!139 = !{ptr @asd_init_escbs._entry.65, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @asd_init_escbs._entry_ptr.67, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.68, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 290, i32 2}
!143 = !{ptr @.str.69, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @asd_alloc_edbs._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @asd_alloc_edbs._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 318, i32 3}
!148 = !{ptr @.str.71, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @asd_alloc_escbs._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @asd_alloc_escbs._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.73, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 322, i32 2}
!153 = !{ptr @asd_alloc_escbs._entry.72, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @asd_alloc_escbs._entry_ptr.74, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.75, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 451, i32 3}
!157 = !{ptr @.str.76, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @asd_init_chip._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @asd_init_chip._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.78, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 460, i32 3}
!162 = !{ptr @asd_init_chip._entry.77, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @asd_init_chip._entry_ptr.79, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 467, i32 3}
!166 = !{ptr @asd_init_chip._entry.80, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @asd_init_chip._entry_ptr.82, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 776, i32 3}
!170 = !{ptr @.str.84, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @asd_com_sas_isr._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @asd_com_sas_isr._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.86, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 782, i32 3}
!175 = !{ptr @asd_com_sas_isr._entry.85, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @asd_com_sas_isr._entry_ptr.87, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.89, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 788, i32 3}
!179 = !{ptr @asd_com_sas_isr._entry.88, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @asd_com_sas_isr._entry_ptr.90, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.92, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 790, i32 4}
!183 = !{ptr @asd_com_sas_isr._entry.91, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @asd_com_sas_isr._entry_ptr.93, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.95, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 800, i32 3}
!187 = !{ptr @asd_com_sas_isr._entry.94, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @asd_com_sas_isr._entry_ptr.96, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.97, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 708, i32 2}
!191 = !{ptr @.str.98, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @asd_chip_reset._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @asd_chip_reset._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.99, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 899, i32 3}
!196 = !{ptr @.str.100, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @asd_dch_sas_isr._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @asd_dch_sas_isr._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.101, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 810, i32 3}
!201 = !{ptr @.str.102, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 811, i32 3}
!203 = !{ptr @.str.103, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 812, i32 3}
!205 = !{ptr @.str.104, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 813, i32 3}
!207 = !{ptr @.str.105, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 814, i32 3}
!209 = !{ptr @.str.106, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 815, i32 3}
!211 = !{ptr @.str.107, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 816, i32 3}
!213 = !{ptr @.str.108, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 817, i32 3}
!215 = !{ptr @.str.109, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 818, i32 3}
!217 = !{ptr @.str.110, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 819, i32 3}
!219 = !{ptr @.str.111, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 820, i32 3}
!221 = !{ptr @.str.112, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 821, i32 17}
!223 = !{ptr @.str.113, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 822, i32 3}
!225 = !{ptr @.str.114, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 823, i32 3}
!227 = !{ptr @.str.115, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 824, i32 3}
!229 = !{ptr @.str.116, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 825, i32 3}
!231 = !{ptr @.str.117, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 826, i32 3}
!233 = !{ptr @.str.118, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 827, i32 3}
!235 = !{ptr @.str.119, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 828, i32 3}
!237 = !{ptr @.str.120, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 829, i32 3}
!239 = !{ptr @.str.121, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 830, i32 3}
!241 = !{ptr @.str.122, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 831, i32 3}
!243 = !{ptr @.str.123, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 832, i32 3}
!245 = !{ptr @.str.124, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 833, i32 3}
!247 = !{ptr @.str.125, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 834, i32 3}
!249 = !{ptr @.str.126, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 835, i32 3}
!251 = !{ptr @.str.127, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 836, i32 3}
!253 = !{ptr @.str.128, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 837, i32 3}
!255 = !{ptr @.str.129, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 838, i32 3}
!257 = !{ptr @.str.130, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 839, i32 3}
!259 = !{ptr @.str.131, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 840, i32 3}
!261 = !{ptr @.str.132, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 841, i32 3}
!263 = !{ptr @.str.133, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 842, i32 3}
!265 = !{ptr @.str.134, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 843, i32 3}
!267 = !{ptr @.str.135, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 844, i32 3}
!269 = !{ptr @.str.136, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 845, i32 18}
!271 = !{ptr @asd_arp2_err.halt_code, !272, !"halt_code", i1 false, i1 false}
!272 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 809, i32 21}
!273 = !{ptr @.str.137, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 852, i32 4}
!275 = !{ptr @.str.138, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @asd_arp2_err._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @asd_arp2_err._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.140, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 856, i32 4}
!280 = !{ptr @asd_arp2_err._entry.139, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @asd_arp2_err._entry_ptr.141, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.143, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 860, i32 4}
!284 = !{ptr @asd_arp2_err._entry.142, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @asd_arp2_err._entry_ptr.144, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.146, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 873, i32 5}
!288 = !{ptr @asd_arp2_err._entry.145, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @asd_arp2_err._entry_ptr.147, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.149, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 878, i32 5}
!292 = !{ptr @asd_arp2_err._entry.148, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @asd_arp2_err._entry_ptr.150, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.152, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 882, i32 5}
!296 = !{ptr @asd_arp2_err._entry.151, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @asd_arp2_err._entry_ptr.153, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.154, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 914, i32 3}
!300 = !{ptr @.str.155, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @asd_rbi_exsi_isr._entry, !299, !"_entry", i1 false, i1 false}
!302 = !{ptr @asd_rbi_exsi_isr._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.157, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 919, i32 3}
!305 = !{ptr @asd_rbi_exsi_isr._entry.156, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @asd_rbi_exsi_isr._entry_ptr.158, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.160, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 923, i32 3}
!309 = !{ptr @asd_rbi_exsi_isr._entry.159, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @asd_rbi_exsi_isr._entry_ptr.161, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.163, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 930, i32 4}
!313 = !{ptr @asd_rbi_exsi_isr._entry.162, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @asd_rbi_exsi_isr._entry_ptr.164, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.166, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 936, i32 4}
!317 = !{ptr @asd_rbi_exsi_isr._entry.165, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @asd_rbi_exsi_isr._entry_ptr.167, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.168, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 968, i32 3}
!321 = !{ptr @.str.169, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @asd_hst_pcix_isr._entry, !320, !"_entry", i1 false, i1 false}
!323 = !{ptr @asd_hst_pcix_isr._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.171, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 970, i32 3}
!326 = !{ptr @asd_hst_pcix_isr._entry.170, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @asd_hst_pcix_isr._entry_ptr.172, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.174, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 972, i32 3}
!330 = !{ptr @asd_hst_pcix_isr._entry.173, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @asd_hst_pcix_isr._entry_ptr.175, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.177, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 974, i32 3}
!334 = !{ptr @asd_hst_pcix_isr._entry.176, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @asd_hst_pcix_isr._entry_ptr.178, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.180, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 976, i32 3}
!338 = !{ptr @asd_hst_pcix_isr._entry.179, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @asd_hst_pcix_isr._entry_ptr.181, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.183, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 982, i32 3}
!342 = !{ptr @asd_hst_pcix_isr._entry.182, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @asd_hst_pcix_isr._entry_ptr.184, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.186, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 988, i32 3}
!346 = !{ptr @asd_hst_pcix_isr._entry.185, !345, !"_entry", i1 false, i1 false}
!347 = !{ptr @asd_hst_pcix_isr._entry_ptr.187, !345, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.189, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 991, i32 3}
!350 = !{ptr @asd_hst_pcix_isr._entry.188, !349, !"_entry", i1 false, i1 false}
!351 = !{ptr @asd_hst_pcix_isr._entry_ptr.190, !349, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.191, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.c", i32 1065, i32 2}
!354 = !{ptr @.str.192, !353, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @asd_ascb_alloc._entry, !353, !"_entry", i1 false, i1 false}
!356 = !{ptr @asd_ascb_alloc._entry_ptr, !353, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @asd_init_ascb.__key, !358, !"__key", i1 false, i1 false}
!358 = !{!"../drivers/scsi/aic94xx/aic94xx_hwi.h", i32 276, i32 2}
!359 = !{ptr @.str.193, !358, !"<string literal>", i1 false, i1 false}
!360 = !{i32 1, !"wchar_size", i32 2}
!361 = !{i32 1, !"min_enum_size", i32 4}
!362 = !{i32 8, !"branch-target-enforcement", i32 0}
!363 = !{i32 8, !"sign-return-address", i32 0}
!364 = !{i32 8, !"sign-return-address-all", i32 0}
!365 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!366 = !{i32 7, !"uwtable", i32 1}
!367 = !{i32 7, !"frame-pointer", i32 2}
!368 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!369 = !{!"auto-init"}
!370 = !{!"branch_weights", i32 1, i32 2000}
!371 = !{!"branch_weights", i32 2000, i32 1}
!372 = !{i64 2155875126, i64 2155875625, i64 2155875163, i64 2155875219, i64 2155875253, i64 2155875277, i64 2155875318, i64 2155875339, i64 2155875367, i64 2155875401}
