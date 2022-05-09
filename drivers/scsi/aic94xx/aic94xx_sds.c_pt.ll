; ModuleID = '/llk/IR_all_yes/drivers/scsi/aic94xx/aic94xx_sds.c_pt.bc'
source_filename = "../drivers/scsi/aic94xx/aic94xx_sds.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.asd_ocm_dir = type { [2 x i8], [2 x i8], i8, i8, i8, i8, [15 x %struct.asd_ocm_dir_ent] }
%struct.asd_ocm_dir_ent = type { i8, [3 x i8], i8, [3 x i8] }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.asd_bios_chim_struct = type { [4 x i8], i8, i8, i8, i8, i32, i8, i8, i16, i16, [14 x i8] }
%struct.asd_ctrla_phy_settings = type { i8, i8, i16, i8, [3 x i8], [8 x %struct.asd_ctrla_phy_entry] }
%struct.asd_ctrla_phy_entry = type { [8 x i8], i8, i8, i8, [5 x i8] }
%struct.asd_flash_dir = type { [32 x i8], i32, i32, i32, i32, [32 x i8], [32 x i8], i32, i32, i32, [20 x i8], [32 x %struct.asd_flash_de] }
%struct.asd_flash_de = type { i32, i32, i32, i32, i32, [12 x i8], [32 x i8] }
%struct.asd_manuf_sec = type { [2 x i8], i16, i8, i8, i16, i16, [6 x i8], [8 x i8], [12 x i8], [0 x i8] }
%struct.asd_ll_el = type { i8, i8, i16, [0 x i8] }
%struct.asd_manuf_phy_param = type { [2 x i8], i16, i8, i8, i8, i8, [3 x i8], i8, i32, [8 x %struct.asd_manuf_phy_desc] }
%struct.asd_manuf_phy_desc = type { i8, i8, i16, i8, i8, i8, i8 }
%struct.asd_ms_conn_map = type { [2 x i8], i16, i8, i8, i16, i8, i8, i8, i8, i32, %union.anon.101 }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type { %struct.anon.103, [0 x %struct.asd_ms_conn_desc] }
%struct.anon.103 = type {}
%struct.asd_ms_conn_desc = type { i8, i8, i8, i8, i32, [16 x i8], [0 x %struct.asd_ms_sb_desc] }
%struct.asd_ms_sb_desc = type { i8, i8, i8, [0 x i8] }

@asd_read_ocm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015aic94xx: no memory for ocm dir\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"asd_read_ocm\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/aic94xx/aic94xx_sds.c\00", [61 x i8] zeroinitializer }, align 32
@asd_read_ocm._entry_ptr = internal global ptr @asd_read_ocm._entry, section ".printk_index", align 4
@asd_read_flash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015aic94xx: couldn't find flash directory\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"asd_read_flash\00", [17 x i8] zeroinitializer }, align 32
@asd_read_flash._entry_ptr = internal global ptr @asd_read_flash._entry, section ".printk_index", align 4
@asd_read_flash._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 1055, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015aic94xx: unsupported flash dir version:0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@asd_read_flash._entry_ptr.7 = internal global ptr @asd_read_flash._entry.5, section ".printk_index", align 4
@asd_read_flash._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 1061, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015aic94xx: couldn't process manuf sector settings\0A\00", [45 x i8] zeroinitializer }, align 32
@asd_read_flash._entry_ptr.10 = internal global ptr @asd_read_flash._entry.8, section ".printk_index", align 4
@asd_read_flash._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 1067, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015aic94xx: couldn't process CTRL-A user settings\0A\00", [46 x i8] zeroinitializer }, align 32
@asd_read_flash._entry_ptr.13 = internal global ptr @asd_read_flash._entry.11, section ".printk_index", align 4
@asd_write_flash_seg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\015aic94xx: couldn't find the type of flash. err=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"asd_write_flash_seg\00", [44 x i8] zeroinitializer }, align 32
@asd_write_flash_seg._entry_ptr = internal global ptr @asd_write_flash_seg._entry, section ".printk_index", align 4
@asd_write_flash_seg._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 1134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015aic94xx: Erase failed at offset:0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@asd_write_flash_seg._entry_ptr.18 = internal global ptr @asd_write_flash_seg._entry.16, section ".printk_index", align 4
@asd_write_flash_seg._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 1140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015aic94xx: couldn't reset flash. err=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@asd_write_flash_seg._entry_ptr.21 = internal global ptr @asd_write_flash_seg._entry.19, section ".printk_index", align 4
@asd_write_flash_seg._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.2, i32 1180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015aic94xx: aicx: Write failed at offset:0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@asd_write_flash_seg._entry_ptr.24 = internal global ptr @asd_write_flash_seg._entry.22, section ".printk_index", align 4
@asd_write_flash_seg._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 1187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@asd_write_flash_seg._entry_ptr.26 = internal global ptr @asd_write_flash_seg._entry.25, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@asd_check_flash_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.27, ptr @.str.2, i32 1316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"asd_check_flash_type\00", [43 x i8] zeroinitializer }, align 32
@asd_check_flash_type._entry_ptr = internal global ptr @asd_check_flash_type._entry, section ".printk_index", align 4
@asd_check_flash_type._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.27, ptr @.str.2, i32 1338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@asd_check_flash_type._entry_ptr.29 = internal global ptr @asd_check_flash_type._entry.28, section ".printk_index", align 4
@asd_check_flash_type._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.27, ptr @.str.2, i32 1342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\015aic94xx: Flash MethodA manuf_id(0x%x) dev_id(0x%x) sec_prot(0x%x)\0A\00", [59 x i8] zeroinitializer }, align 32
@asd_check_flash_type._entry_ptr.32 = internal global ptr @asd_check_flash_type._entry.30, section ".printk_index", align 4
@asd_check_flash_type._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.27, ptr @.str.2, i32 1389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@asd_check_flash_type._entry_ptr.34 = internal global ptr @asd_check_flash_type._entry.33, section ".printk_index", align 4
@asd_check_flash_type._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.27, ptr @.str.2, i32 1402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\015aic94xx: Flash MethodB manuf_id(0x%x) dev_id(0x%x) sec_prot(0x%x)\0A\00", [59 x i8] zeroinitializer }, align 32
@asd_check_flash_type._entry_ptr.37 = internal global ptr @asd_check_flash_type._entry.35, section ".printk_index", align 4
@asd_check_flash_type._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.27, ptr @.str.2, i32 1406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@asd_check_flash_type._entry_ptr.39 = internal global ptr @asd_check_flash_type._entry.38, section ".printk_index", align 4
@asd_hwi_check_ocm_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015aic94xx: couldn't access PCIC_INTRPT_STAT of %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"asd_hwi_check_ocm_access\00", [39 x i8] zeroinitializer }, align 32
@asd_hwi_check_ocm_access._entry_ptr = internal global ptr @asd_hwi_check_ocm_access._entry, section ".printk_index", align 4
@asd_hwi_check_ocm_access._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\016OCM is not initialized by BIOS,reinitialize it and ignore it, current IntrptStatusis 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@asd_hwi_check_ocm_access._entry_ptr.44 = internal global ptr @asd_hwi_check_ocm_access._entry.42, section ".printk_index", align 4
@asd_hwi_check_ocm_access._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.2, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015aic94xx: couldn't write PCIC_INTRPT_STAT of %s\0A\00", [46 x i8] zeroinitializer }, align 32
@asd_hwi_check_ocm_access._entry_ptr.47 = internal global ptr @asd_hwi_check_ocm_access._entry.45, section ".printk_index", align 4
@OCMDirInit = internal global { %struct.asd_ocm_dir, [32 x i8] } { %struct.asd_ocm_dir { [2 x i8] c"MO", [2 x i8] zeroinitializer, i8 0, i8 0, i8 0, i8 5, [15 x %struct.asd_ocm_dir_ent] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@OCMDirEntriesInit = internal global { [5 x %struct.asd_ocm_dir_ent], [56 x i8] } { [5 x %struct.asd_ocm_dir_ent] [%struct.asd_ocm_dir_ent { i8 7, [3 x i8] c"\80\00\00", i8 0, [3 x i8] c"\00\04\00" }, %struct.asd_ocm_dir_ent { i8 8, [3 x i8] c"\80\04\00", i8 0, [3 x i8] c"\00\04\00" }, %struct.asd_ocm_dir_ent { i8 9, [3 x i8] c"\80\08\00", i8 0, [3 x i8] c"\00\04\00" }, %struct.asd_ocm_dir_ent { i8 10, [3 x i8] c"\80\0C\00", i8 0, [3 x i8] c"\00\04\00" }, %struct.asd_ocm_dir_ent { i8 1, [3 x i8] c"\80\10\00", i8 0, [3 x i8] c"\80\EB\01" }], [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@asd_read_ocm_dir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015aic94xx: couldn't read ocm segment\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"asd_read_ocm_dir\00", [47 x i8] zeroinitializer }, align 32
@asd_read_ocm_dir._entry_ptr = internal global ptr @asd_read_ocm_dir._entry, section ".printk_index", align 4
@asd_read_ocm_dir._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\015aic94xx: no valid dir signature(%c%c) at start of OCM\0A\00", [39 x i8] zeroinitializer }, align 32
@asd_read_ocm_dir._entry_ptr.52 = internal global ptr @asd_read_ocm_dir._entry.50, section ".printk_index", align 4
@asd_read_ocm_dir._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015aic94xx: unsupported major version of ocm dir:0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@asd_read_ocm_dir._entry_ptr.55 = internal global ptr @asd_read_ocm_dir._entry.53, section ".printk_index", align 4
@asd_get_bios_chim._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015aic94xx: couldn't find BIOS_CHIM dir ent\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"asd_get_bios_chim\00", [46 x i8] zeroinitializer }, align 32
@asd_get_bios_chim._entry_ptr = internal global ptr @asd_get_bios_chim._entry, section ".printk_index", align 4
@asd_get_bios_chim._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015aic94xx: no memory for bios_chim struct\0A\00", [53 x i8] zeroinitializer }, align 32
@asd_get_bios_chim._entry_ptr.60 = internal global ptr @asd_get_bios_chim._entry.58, section ".printk_index", align 4
@asd_get_bios_chim._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.57, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@asd_get_bios_chim._entry_ptr.62 = internal global ptr @asd_get_bios_chim._entry.61, section ".printk_index", align 4
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SOIB\00", [27 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IPSA\00", [27 x i8] zeroinitializer }, align 32
@asd_get_bios_chim._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.57, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015aic94xx: BIOS_CHIM entry has no valid sig(%c%c%c%c)\0A\00", [41 x i8] zeroinitializer }, align 32
@asd_get_bios_chim._entry_ptr.67 = internal global ptr @asd_get_bios_chim._entry.65, section ".printk_index", align 4
@asd_get_bios_chim._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.57, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015aic94xx: BIOS_CHIM unsupported major version:0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@asd_get_bios_chim._entry_ptr.70 = internal global ptr @asd_get_bios_chim._entry.68, section ".printk_index", align 4
@asd_get_bios_chim._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.57, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015aic94xx: BIOS present (%d,%d), %d\0A\00", [59 x i8] zeroinitializer }, align 32
@asd_get_bios_chim._entry_ptr.73 = internal global ptr @asd_get_bios_chim._entry.71, section ".printk_index", align 4
@asd_get_bios_chim._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.57, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015aic94xx: ue num:%d, ue size:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@asd_get_bios_chim._entry_ptr.76 = internal global ptr @asd_get_bios_chim._entry.74, section ".printk_index", align 4
@asd_get_bios_chim._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.57, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015aic94xx: couldn't read ue entries(%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@asd_get_bios_chim._entry_ptr.79 = internal global ptr @asd_get_bios_chim._entry.77, section ".printk_index", align 4
@asd_flash_getid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015aic94xx: couldn't read PCI_CONF_FLSH_BAR of %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"asd_flash_getid\00", [16 x i8] zeroinitializer }, align 32
@asd_flash_getid._entry_ptr = internal global ptr @asd_flash_getid._entry, section ".printk_index", align 4
@asd_flash_getid._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.2, i32 629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015aic94xx: couldn't reset flash(%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@asd_flash_getid._entry_ptr.84 = internal global ptr @asd_flash_getid._entry.82, section ".printk_index", align 4
@.str.85 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*** ADAPTEC FLASH DIRECTORY *** \00", [63 x i8] zeroinitializer }, align 32
@asd_process_ms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015aic94xx: Couldn't find the manuf. sector\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"asd_process_ms\00", [17 x i8] zeroinitializer }, align 32
@asd_process_ms._entry_ptr = internal global ptr @asd_process_ms._entry, section ".printk_index", align 4
@asd_process_ms._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.2, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015aic94xx: no mem for manuf sector\0A\00", [60 x i8] zeroinitializer }, align 32
@asd_process_ms._entry_ptr.90 = internal global ptr @asd_process_ms._entry.88, section ".printk_index", align 4
@asd_process_ms._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.87, ptr @.str.2, i32 880, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\015aic94xx: couldn't read manuf sector at 0x%x, size 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@asd_process_ms._entry_ptr.93 = internal global ptr @asd_process_ms._entry.91, section ".printk_index", align 4
@asd_process_ms._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.87, ptr @.str.2, i32 886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015aic94xx: couldn't validate manuf sector\0A\00", [53 x i8] zeroinitializer }, align 32
@asd_process_ms._entry_ptr.96 = internal global ptr @asd_process_ms._entry.94, section ".printk_index", align 4
@asd_process_ms._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.87, ptr @.str.2, i32 892, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015aic94xx: couldn't read the SAS_ADDR\0A\00", [57 x i8] zeroinitializer }, align 32
@asd_process_ms._entry_ptr.99 = internal global ptr @asd_process_ms._entry.97, section ".printk_index", align 4
@asd_process_ms._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.87, ptr @.str.2, i32 896, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015aic94xx: manuf sect SAS_ADDR %llx\0A\00", [59 x i8] zeroinitializer }, align 32
@asd_process_ms._entry_ptr.102 = internal global ptr @asd_process_ms._entry.100, section ".printk_index", align 4
@asd_process_ms._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.87, ptr @.str.2, i32 900, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015aic94xx: couldn't read the PCBA SN\0A\00", [58 x i8] zeroinitializer }, align 32
@asd_process_ms._entry_ptr.105 = internal global ptr @asd_process_ms._entry.103, section ".printk_index", align 4
@asd_process_ms._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.87, ptr @.str.2, i32 903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015aic94xx: manuf sect PCBA SN %s\0A\00", [62 x i8] zeroinitializer }, align 32
@asd_process_ms._entry_ptr.108 = internal global ptr @asd_process_ms._entry.106, section ".printk_index", align 4
@asd_process_ms._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.87, ptr @.str.2, i32 907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015aic94xx: ms: couldn't get phy parameters\0A\00", [52 x i8] zeroinitializer }, align 32
@asd_process_ms._entry_ptr.111 = internal global ptr @asd_process_ms._entry.109, section ".printk_index", align 4
@asd_process_ms._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.87, ptr @.str.2, i32 913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015aic94xx: ms: couldn't get connector map\0A\00", [53 x i8] zeroinitializer }, align 32
@asd_process_ms._entry_ptr.114 = internal global ptr @asd_process_ms._entry.112, section ".printk_index", align 4
@asd_validate_ms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015aic94xx: manuf sec: no valid sig(%c%c)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"asd_validate_ms\00", [16 x i8] zeroinitializer }, align 32
@asd_validate_ms._entry_ptr = internal global ptr @asd_validate_ms._entry, section ".printk_index", align 4
@asd_validate_ms._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.2, i32 676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\015aic94xx: unsupported manuf. sector. major version:%x\0A\00", [40 x i8] zeroinitializer }, align 32
@asd_validate_ms._entry_ptr.119 = internal global ptr @asd_validate_ms._entry.117, section ".printk_index", align 4
@asd_validate_ms._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.116, ptr @.str.2, i32 684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015aic94xx: failed manuf sector checksum\0A\00", [55 x i8] zeroinitializer }, align 32
@asd_validate_ms._entry_ptr.122 = internal global ptr @asd_validate_ms._entry.120, section ".printk_index", align 4
@asd_ms_get_phy_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.2, i32 767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015aic94xx: ms: no phy parameters found\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"asd_ms_get_phy_params\00", [42 x i8] zeroinitializer }, align 32
@asd_ms_get_phy_params._entry_ptr = internal global ptr @asd_ms_get_phy_params._entry, section ".printk_index", align 4
@asd_ms_get_phy_params._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.124, ptr @.str.2, i32 768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015aic94xx: ms: Creating default phy parameters\0A\00", [48 x i8] zeroinitializer }, align 32
@asd_ms_get_phy_params._entry_ptr.127 = internal global ptr @asd_ms_get_phy_params._entry.125, section ".printk_index", align 4
@asd_ms_get_phy_params._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.124, ptr @.str.2, i32 790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\015aic94xx: unsupported manuf. phy param major version:0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@asd_ms_get_phy_params._entry_ptr.130 = internal global ptr @asd_ms_get_phy_params._entry.128, section ".printk_index", align 4
@asd_ms_get_phy_params._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.124, ptr @.str.2, i32 794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015aic94xx: ms: num_phy_desc: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@asd_ms_get_phy_params._entry_ptr.133 = internal global ptr @asd_ms_get_phy_params._entry.131, section ".printk_index", align 4
@asd_ms_get_phy_params._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.124, ptr @.str.2, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015aic94xx: ms: phy%d: HIDDEN\0A\00", [34 x i8] zeroinitializer }, align 32
@asd_ms_get_phy_params._entry_ptr.136 = internal global ptr @asd_ms_get_phy_params._entry.134, section ".printk_index", align 4
@asd_ms_get_phy_params._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.124, ptr @.str.2, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015aic94xx: ms: phy%d: REPORTED\0A\00", [32 x i8] zeroinitializer }, align 32
@asd_ms_get_phy_params._entry_ptr.139 = internal global ptr @asd_ms_get_phy_params._entry.137, section ".printk_index", align 4
@asd_ms_get_phy_params._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.124, ptr @.str.2, i32 808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015aic94xx: ms: phy%d: ENABLED\0A\00", [33 x i8] zeroinitializer }, align 32
@asd_ms_get_phy_params._entry_ptr.142 = internal global ptr @asd_ms_get_phy_params._entry.140, section ".printk_index", align 4
@asd_ms_get_phy_params._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.124, ptr @.str.2, i32 821, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015aic94xx: ms: max_phys:0x%x, num_phys:0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@asd_ms_get_phy_params._entry_ptr.145 = internal global ptr @asd_ms_get_phy_params._entry.143, section ".printk_index", align 4
@asd_ms_get_phy_params._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.124, ptr @.str.2, i32 822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015aic94xx: ms: enabled_phys:0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@asd_ms_get_phy_params._entry_ptr.148 = internal global ptr @asd_ms_get_phy_params._entry.146, section ".printk_index", align 4
@asd_ms_get_connector_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.2, i32 833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015aic94xx: ms: no connector map found\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"asd_ms_get_connector_map\00", [39 x i8] zeroinitializer }, align 32
@asd_ms_get_connector_map._entry_ptr = internal global ptr @asd_ms_get_connector_map._entry, section ".printk_index", align 4
@asd_ms_get_connector_map._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.150, ptr @.str.2, i32 839, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\015aic94xx: ms: unsupported: connector map major version 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@asd_ms_get_connector_map._entry_ptr.153 = internal global ptr @asd_ms_get_connector_map._entry.151, section ".printk_index", align 4
@asd_process_ctrl_a_user._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.155, ptr @.str.2, i32 978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015aic94xx: couldn't find CTRL-A user settings section\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"asd_process_ctrl_a_user\00", [40 x i8] zeroinitializer }, align 32
@asd_process_ctrl_a_user._entry_ptr = internal global ptr @asd_process_ctrl_a_user._entry, section ".printk_index", align 4
@asd_process_ctrl_a_user._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.155, ptr @.str.2, i32 979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\015aic94xx: Creating default CTRL-A user settings section\0A\00", [38 x i8] zeroinitializer }, align 32
@asd_process_ctrl_a_user._entry_ptr.158 = internal global ptr @asd_process_ctrl_a_user._entry.156, section ".printk_index", align 4
@asd_process_ctrl_a_user._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.155, ptr @.str.2, i32 1002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015aic94xx: no mem for ctrla user settings section\0A\00", [45 x i8] zeroinitializer }, align 32
@asd_process_ctrl_a_user._entry_ptr.161 = internal global ptr @asd_process_ctrl_a_user._entry.159, section ".printk_index", align 4
@asd_process_ctrl_a_user._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.155, ptr @.str.2, i32 1008, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015aic94xx: couldn't read ctrla phy settings section\0A\00", [43 x i8] zeroinitializer }, align 32
@asd_process_ctrl_a_user._entry_ptr.164 = internal global ptr @asd_process_ctrl_a_user._entry.162, section ".printk_index", align 4
@asd_process_ctrl_a_user._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.155, ptr @.str.2, i32 1015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\015aic94xx: couldn't find ctrla phy settings struct\0A\00", [44 x i8] zeroinitializer }, align 32
@asd_process_ctrl_a_user._entry_ptr.167 = internal global ptr @asd_process_ctrl_a_user._entry.165, section ".printk_index", align 4
@asd_process_ctrl_a_user._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.155, ptr @.str.2, i32 1021, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015aic94xx: couldn't process ctrla phy settings\0A\00", [48 x i8] zeroinitializer }, align 32
@asd_process_ctrl_a_user._entry_ptr.170 = internal global ptr @asd_process_ctrl_a_user._entry.168, section ".printk_index", align 4
@asd_process_ctrla_phy_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.172, ptr @.str.2, i32 956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\015aic94xx: ctrla: phy%d: sas_addr: %llx, sas rate:0x%x-0x%x, sata rate:0x%x-0x%x, flags:0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"asd_process_ctrla_phy_settings\00", [33 x i8] zeroinitializer }, align 32
@asd_process_ctrla_phy_settings._entry_ptr = internal global ptr @asd_process_ctrla_phy_settings._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.173 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 4, i64 32, i64 194]
@__sancov_gen_cov_switch_values.174 = internal global [5 x i64] [i64 3, i64 8, i64 126, i64 214, i64 218]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 8, i64 215, i64 222]
@__sancov_gen_cov_switch_values.176 = internal global [4 x i64] [i64 2, i64 8, i64 74, i64 218]
@__sancov_gen_cov_switch_values.177 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 4, i64 32, i64 137, i64 194]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.179 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 346, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1049, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1054, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1061, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1067, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1126, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1133, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1140, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1179, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1187, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1316, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1338, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1341, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1389, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1401, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1406, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 307, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 312, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 320, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant [11 x i8] c"OCMDirInit\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 53, i32 27 }
@___asan_gen_.300 = private unnamed_addr constant [18 x i8] c"OCMDirEntriesInit\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 62, i32 31 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 134, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 139, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 144, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 206, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 212, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 218, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 221, i32 30 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 222, i32 33 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 223, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 230, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 240, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 247, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 262, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 621, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 629, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 601, i32 33 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 863, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 873, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 879, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 886, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 892, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 895, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 900, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 903, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 907, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 913, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 670, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 675, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 684, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 767, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 768, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 789, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 794, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 800, i32 4 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 803, i32 4 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 808, i32 4 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 820, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 822, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 833, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 838, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 978, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 979, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1002, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1008, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1015, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1021, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.597 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.598 = private constant [38 x i8] c"../drivers/scsi/aic94xx/aic94xx_sds.c\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 948, i32 3 }
@llvm.compiler.used = appending global [203 x ptr] [ptr @asd_check_flash_type._entry, ptr @asd_check_flash_type._entry.28, ptr @asd_check_flash_type._entry.30, ptr @asd_check_flash_type._entry.33, ptr @asd_check_flash_type._entry.35, ptr @asd_check_flash_type._entry.38, ptr @asd_check_flash_type._entry_ptr, ptr @asd_check_flash_type._entry_ptr.29, ptr @asd_check_flash_type._entry_ptr.32, ptr @asd_check_flash_type._entry_ptr.34, ptr @asd_check_flash_type._entry_ptr.37, ptr @asd_check_flash_type._entry_ptr.39, ptr @asd_flash_getid._entry, ptr @asd_flash_getid._entry.82, ptr @asd_flash_getid._entry_ptr, ptr @asd_flash_getid._entry_ptr.84, ptr @asd_get_bios_chim._entry, ptr @asd_get_bios_chim._entry.58, ptr @asd_get_bios_chim._entry.61, ptr @asd_get_bios_chim._entry.65, ptr @asd_get_bios_chim._entry.68, ptr @asd_get_bios_chim._entry.71, ptr @asd_get_bios_chim._entry.74, ptr @asd_get_bios_chim._entry.77, ptr @asd_get_bios_chim._entry_ptr, ptr @asd_get_bios_chim._entry_ptr.60, ptr @asd_get_bios_chim._entry_ptr.62, ptr @asd_get_bios_chim._entry_ptr.67, ptr @asd_get_bios_chim._entry_ptr.70, ptr @asd_get_bios_chim._entry_ptr.73, ptr @asd_get_bios_chim._entry_ptr.76, ptr @asd_get_bios_chim._entry_ptr.79, ptr @asd_hwi_check_ocm_access._entry, ptr @asd_hwi_check_ocm_access._entry.42, ptr @asd_hwi_check_ocm_access._entry.45, ptr @asd_hwi_check_ocm_access._entry_ptr, ptr @asd_hwi_check_ocm_access._entry_ptr.44, ptr @asd_hwi_check_ocm_access._entry_ptr.47, ptr @asd_ms_get_connector_map._entry, ptr @asd_ms_get_connector_map._entry.151, ptr @asd_ms_get_connector_map._entry_ptr, ptr @asd_ms_get_connector_map._entry_ptr.153, ptr @asd_ms_get_phy_params._entry, ptr @asd_ms_get_phy_params._entry.125, ptr @asd_ms_get_phy_params._entry.128, ptr @asd_ms_get_phy_params._entry.131, ptr @asd_ms_get_phy_params._entry.134, ptr @asd_ms_get_phy_params._entry.137, ptr @asd_ms_get_phy_params._entry.140, ptr @asd_ms_get_phy_params._entry.143, ptr @asd_ms_get_phy_params._entry.146, ptr @asd_ms_get_phy_params._entry_ptr, ptr @asd_ms_get_phy_params._entry_ptr.127, ptr @asd_ms_get_phy_params._entry_ptr.130, ptr @asd_ms_get_phy_params._entry_ptr.133, ptr @asd_ms_get_phy_params._entry_ptr.136, ptr @asd_ms_get_phy_params._entry_ptr.139, ptr @asd_ms_get_phy_params._entry_ptr.142, ptr @asd_ms_get_phy_params._entry_ptr.145, ptr @asd_ms_get_phy_params._entry_ptr.148, ptr @asd_process_ctrl_a_user._entry, ptr @asd_process_ctrl_a_user._entry.156, ptr @asd_process_ctrl_a_user._entry.159, ptr @asd_process_ctrl_a_user._entry.162, ptr @asd_process_ctrl_a_user._entry.165, ptr @asd_process_ctrl_a_user._entry.168, ptr @asd_process_ctrl_a_user._entry_ptr, ptr @asd_process_ctrl_a_user._entry_ptr.158, ptr @asd_process_ctrl_a_user._entry_ptr.161, ptr @asd_process_ctrl_a_user._entry_ptr.164, ptr @asd_process_ctrl_a_user._entry_ptr.167, ptr @asd_process_ctrl_a_user._entry_ptr.170, ptr @asd_process_ctrla_phy_settings._entry, ptr @asd_process_ctrla_phy_settings._entry_ptr, ptr @asd_process_ms._entry, ptr @asd_process_ms._entry.100, ptr @asd_process_ms._entry.103, ptr @asd_process_ms._entry.106, ptr @asd_process_ms._entry.109, ptr @asd_process_ms._entry.112, ptr @asd_process_ms._entry.88, ptr @asd_process_ms._entry.91, ptr @asd_process_ms._entry.94, ptr @asd_process_ms._entry.97, ptr @asd_process_ms._entry_ptr, ptr @asd_process_ms._entry_ptr.102, ptr @asd_process_ms._entry_ptr.105, ptr @asd_process_ms._entry_ptr.108, ptr @asd_process_ms._entry_ptr.111, ptr @asd_process_ms._entry_ptr.114, ptr @asd_process_ms._entry_ptr.90, ptr @asd_process_ms._entry_ptr.93, ptr @asd_process_ms._entry_ptr.96, ptr @asd_process_ms._entry_ptr.99, ptr @asd_read_flash._entry, ptr @asd_read_flash._entry.11, ptr @asd_read_flash._entry.5, ptr @asd_read_flash._entry.8, ptr @asd_read_flash._entry_ptr, ptr @asd_read_flash._entry_ptr.10, ptr @asd_read_flash._entry_ptr.13, ptr @asd_read_flash._entry_ptr.7, ptr @asd_read_ocm._entry, ptr @asd_read_ocm._entry_ptr, ptr @asd_read_ocm_dir._entry, ptr @asd_read_ocm_dir._entry.50, ptr @asd_read_ocm_dir._entry.53, ptr @asd_read_ocm_dir._entry_ptr, ptr @asd_read_ocm_dir._entry_ptr.52, ptr @asd_read_ocm_dir._entry_ptr.55, ptr @asd_validate_ms._entry, ptr @asd_validate_ms._entry.117, ptr @asd_validate_ms._entry.120, ptr @asd_validate_ms._entry_ptr, ptr @asd_validate_ms._entry_ptr.119, ptr @asd_validate_ms._entry_ptr.122, ptr @asd_write_flash_seg._entry, ptr @asd_write_flash_seg._entry.16, ptr @asd_write_flash_seg._entry.19, ptr @asd_write_flash_seg._entry.22, ptr @asd_write_flash_seg._entry.25, ptr @asd_write_flash_seg._entry_ptr, ptr @asd_write_flash_seg._entry_ptr.18, ptr @asd_write_flash_seg._entry_ptr.21, ptr @asd_write_flash_seg._entry_ptr.24, ptr @asd_write_flash_seg._entry_ptr.26, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.27, ptr @.str.31, ptr @.str.36, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @OCMDirInit, ptr @OCMDirEntriesInit, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @.str.135, ptr @.str.138, ptr @.str.141, ptr @.str.144, ptr @.str.147, ptr @.str.149, ptr @.str.150, ptr @.str.152, ptr @.str.154, ptr @.str.155, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @.str.171, ptr @.str.172], section "llvm.metadata"
@0 = internal global [140 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_read_ocm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_read_flash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_read_flash._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_read_flash._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_read_flash._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_write_flash_seg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_write_flash_seg._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_write_flash_seg._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_write_flash_seg._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_write_flash_seg._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_check_flash_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_check_flash_type._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_check_flash_type._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_check_flash_type._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_check_flash_type._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_check_flash_type._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_hwi_check_ocm_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_hwi_check_ocm_access._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_hwi_check_ocm_access._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @OCMDirInit to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @OCMDirEntriesInit to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_read_ocm_dir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_read_ocm_dir._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_read_ocm_dir._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_get_bios_chim._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_get_bios_chim._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_get_bios_chim._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_get_bios_chim._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_get_bios_chim._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_get_bios_chim._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_get_bios_chim._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_get_bios_chim._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_flash_getid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_flash_getid._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_process_ms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_process_ms._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_process_ms._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_process_ms._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_process_ms._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_process_ms._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_process_ms._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_process_ms._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_process_ms._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_process_ms._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_validate_ms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_validate_ms._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_validate_ms._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_ms_get_phy_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_ms_get_phy_params._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_ms_get_phy_params._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_ms_get_phy_params._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_ms_get_phy_params._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_ms_get_phy_params._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_ms_get_phy_params._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_ms_get_phy_params._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_ms_get_phy_params._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_ms_get_connector_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_ms_get_connector_map._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_process_ctrl_a_user._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_process_ctrl_a_user._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_process_ctrl_a_user._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_process_ctrl_a_user._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_process_ctrl_a_user._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_process_ctrl_a_user._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_process_ctrla_phy_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_read_ocm(ptr noundef %asd_ha) local_unnamed_addr #0 align 64 {
entry:
  %v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asd_ha, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #9
  %2 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %v.i, align 4, !annotation !280
  %call.i = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207687168) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not.i = icmp sgt i32 %call.i, -1
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %entry
  %call2.i = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 212, ptr noundef nonnull %v.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end9.i, label %do.end.i

do.end.i:                                         ; preds = %if.then.i
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %3 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %5 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %6, %if.end.i.i.i ], [ %4, %do.end.i.pci_name.exit.i_crit_edge ]
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %retval.0.i.i.i) #12
  br label %asd_hwi_check_ocm_access.exit

do.end9.i:                                        ; preds = %if.then.i
  %7 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %v.i, align 4
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %8) #12
  %9 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %v.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not.i = icmp eq i32 %10, 0
  br i1 %tobool12.not.i, label %do.end9.i.if.end24.i_crit_edge, label %if.end15.i

do.end9.i.if.end24.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.end15.i:                                       ; preds = %do.end9.i
  %call14.i = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 212, i32 noundef %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool16.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool16.not.i, label %if.end15.i.if.end24.i_crit_edge, label %do.end20.i

if.end15.i.if.end24.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

do.end20.i:                                       ; preds = %if.end15.i
  %init_name.i.i33.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %11 = ptrtoint ptr %init_name.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i.i33.i, align 8
  %tobool.not.i.i34.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i34.i, label %if.end.i.i36.i, label %do.end20.i.pci_name.exit38.i_crit_edge

do.end20.i.pci_name.exit38.i_crit_edge:           ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit38.i

if.end.i.i36.i:                                   ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i35.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %13 = ptrtoint ptr %dev.i35.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i35.i, align 4
  br label %pci_name.exit38.i

pci_name.exit38.i:                                ; preds = %if.end.i.i36.i, %do.end20.i.pci_name.exit38.i_crit_edge
  %retval.0.i.i37.i = phi ptr [ %14, %if.end.i.i36.i ], [ %12, %do.end20.i.pci_name.exit38.i_crit_edge ]
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %retval.0.i.i37.i) #12
  br label %asd_hwi_check_ocm_access.exit

if.end24.i:                                       ; preds = %if.end15.i.if.end24.i_crit_edge, %do.end9.i.if.end24.i_crit_edge
  %arrayidx.i.i.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end24.i
  %i.030.i.i = phi i32 [ 0, %if.end24.i ], [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !281
  call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 %i.030.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #9, !srcloc !282
  %add.i.i = add nuw nsw i32 %i.030.i.i, 4
  %cmp.i.i = icmp ult i32 %i.030.i.i, 131068
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %iospace.i.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %17 = ptrtoint ptr %iospace.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iospace.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i39.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i39.i, label %for.end.i.i.for.body.i.i.i_crit_edge, label %if.then.i.i.i, !prof !283

for.end.i.i.for.body.i.i.i_crit_edge:             ; preds = %for.end.i.i
  br label %for.body.i.i.i

if.then.i.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @asd_write_reg_string(ptr noundef %asd_ha, ptr noundef nonnull @OCMDirInit, i32 noundef -1610612736, i32 noundef 128) #9
  br label %for.body3.i.i.preheader

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.end.i.i.for.body.i.i.i_crit_edge
  %p.014.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ @OCMDirInit, %for.end.i.i.for.body.i.i.i_crit_edge ]
  %offs.addr.012.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.end.i.i.for.body.i.i.i_crit_edge ]
  %19 = ptrtoint ptr %p.014.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %p.014.i.i.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !284
  call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %22, i32 %offs.addr.012.i.i.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 %20) #9, !srcloc !285
  %inc.i.i.i = add nuw nsw i32 %offs.addr.012.i.i.i, 1
  %incdec.ptr.i.i.i = getelementptr i8, ptr %p.014.i.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i.i, 128
  br i1 %exitcond.not.i.i, label %for.body.i.i.i.for.body3.i.i.preheader_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.body.i.i.i.for.body3.i.i.preheader_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3.i.i.preheader

for.body3.i.i.preheader:                          ; preds = %for.body.i.i.i.for.body3.i.i.preheader_crit_edge, %if.then.i.i.i
  br label %for.body3.i.i

for.body3.i.i:                                    ; preds = %asd_write_ocm_seg.exit29.i.i.for.body3.i.i_crit_edge, %for.body3.i.i.preheader
  %i.131.i.i = phi i32 [ %inc.i.i, %asd_write_ocm_seg.exit29.i.i.for.body3.i.i_crit_edge ], [ 0, %for.body3.i.i.preheader ]
  %arrayidx.i.i = getelementptr [5 x %struct.asd_ocm_dir_ent], ptr @OCMDirEntriesInit, i32 0, i32 %i.131.i.i
  %mul.i.i = shl i32 %i.131.i.i, 3
  %23 = ptrtoint ptr %iospace.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iospace.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i16.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i16.i.i, label %for.cond.preheader.i17.i.i, label %if.then.i19.i.i, !prof !283

for.cond.preheader.i17.i.i:                       ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add4.i.i = add nuw nsw i32 %mul.i.i, 128
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !284
  call void @arm_heavy_mb() #9
  %27 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i23.i.i = getelementptr i8, ptr %28, i32 %add4.i.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i23.i.i, i8 %26) #9, !srcloc !285
  %inc.i25.i.i = add nuw nsw i32 %mul.i.i, 129
  %incdec.ptr.i26.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 1
  %29 = ptrtoint ptr %incdec.ptr.i26.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %incdec.ptr.i26.i.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !284
  call void @arm_heavy_mb() #9
  %31 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i23.1.i.i = getelementptr i8, ptr %32, i32 %inc.i25.i.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i23.1.i.i, i8 %30) #9, !srcloc !285
  %inc.i25.1.i.i = add nuw nsw i32 %mul.i.i, 130
  %incdec.ptr.i26.1.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 2
  %33 = ptrtoint ptr %incdec.ptr.i26.1.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %incdec.ptr.i26.1.i.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !284
  call void @arm_heavy_mb() #9
  %35 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i23.2.i.i = getelementptr i8, ptr %36, i32 %inc.i25.1.i.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i23.2.i.i, i8 %34) #9, !srcloc !285
  %inc.i25.2.i.i = add nuw nsw i32 %mul.i.i, 131
  %incdec.ptr.i26.2.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 3
  %37 = ptrtoint ptr %incdec.ptr.i26.2.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %incdec.ptr.i26.2.i.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !284
  call void @arm_heavy_mb() #9
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i23.3.i.i = getelementptr i8, ptr %40, i32 %inc.i25.2.i.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i23.3.i.i, i8 %38) #9, !srcloc !285
  %inc.i25.3.i.i = add nuw nsw i32 %mul.i.i, 132
  %incdec.ptr.i26.3.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 4
  %41 = ptrtoint ptr %incdec.ptr.i26.3.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %incdec.ptr.i26.3.i.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !284
  call void @arm_heavy_mb() #9
  %43 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i23.4.i.i = getelementptr i8, ptr %44, i32 %inc.i25.3.i.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i23.4.i.i, i8 %42) #9, !srcloc !285
  %inc.i25.4.i.i = add nuw nsw i32 %mul.i.i, 133
  %incdec.ptr.i26.4.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 5
  %45 = ptrtoint ptr %incdec.ptr.i26.4.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %incdec.ptr.i26.4.i.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !284
  call void @arm_heavy_mb() #9
  %47 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i23.5.i.i = getelementptr i8, ptr %48, i32 %inc.i25.4.i.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i23.5.i.i, i8 %46) #9, !srcloc !285
  %inc.i25.5.i.i = add nuw nsw i32 %mul.i.i, 134
  %incdec.ptr.i26.5.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 6
  %49 = ptrtoint ptr %incdec.ptr.i26.5.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %incdec.ptr.i26.5.i.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !284
  call void @arm_heavy_mb() #9
  %51 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i23.6.i.i = getelementptr i8, ptr %52, i32 %inc.i25.5.i.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i23.6.i.i, i8 %50) #9, !srcloc !285
  %inc.i25.6.i.i = add nuw nsw i32 %mul.i.i, 135
  %incdec.ptr.i26.6.i.i = getelementptr i8, ptr %arrayidx.i.i, i32 7
  %53 = ptrtoint ptr %incdec.ptr.i26.6.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %incdec.ptr.i26.6.i.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !284
  call void @arm_heavy_mb() #9
  %55 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i23.7.i.i = getelementptr i8, ptr %56, i32 %inc.i25.6.i.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i23.7.i.i, i8 %54) #9, !srcloc !285
  br label %asd_write_ocm_seg.exit29.i.i

if.then.i19.i.i:                                  ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i.i = add nuw nsw i32 %mul.i.i, -1610612608
  call void @asd_write_reg_string(ptr noundef %asd_ha, ptr noundef %arrayidx.i.i, i32 noundef %add.i.i.i, i32 noundef 8) #9
  br label %asd_write_ocm_seg.exit29.i.i

asd_write_ocm_seg.exit29.i.i:                     ; preds = %if.then.i19.i.i, %for.cond.preheader.i17.i.i
  %inc.i.i = add nuw nsw i32 %i.131.i.i, 1
  %exitcond33.not.i.i = icmp eq i32 %inc.i.i, 5
  br i1 %exitcond33.not.i.i, label %asd_write_ocm_seg.exit29.i.i.if.end_crit_edge, label %asd_write_ocm_seg.exit29.i.i.for.body3.i.i_crit_edge

asd_write_ocm_seg.exit29.i.i.for.body3.i.i_crit_edge: ; preds = %asd_write_ocm_seg.exit29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3.i.i

asd_write_ocm_seg.exit29.i.i.if.end_crit_edge:    ; preds = %asd_write_ocm_seg.exit29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

asd_hwi_check_ocm_access.exit:                    ; preds = %pci_name.exit38.i, %pci_name.exit.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #9
  br label %cleanup

if.end:                                           ; preds = %asd_write_ocm_seg.exit29.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %57 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3264, i32 noundef 128) #13
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %iospace.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %58 = ptrtoint ptr %iospace.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %iospace.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i.i, label %for.cond.preheader.i.i, label %do.end.i22, !prof !283

for.cond.preheader.i.i:                           ; preds = %if.end5
  %arrayidx.i.i.i18 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 1
  br label %for.body.i.i21

for.body.i.i21:                                   ; preds = %for.body.i.i21.for.body.i.i21_crit_edge, %for.cond.preheader.i.i
  %p.015.i.i = phi ptr [ %call7.i, %for.cond.preheader.i.i ], [ %incdec.ptr.i.i, %for.body.i.i21.for.body.i.i21_crit_edge ]
  %offs.addr.013.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %inc.i.i20, %for.body.i.i21.for.body.i.i21_crit_edge ]
  %60 = ptrtoint ptr %arrayidx.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i.i.i18, align 4
  %add.ptr.i.i.i19 = getelementptr i8, ptr %61, i32 %offs.addr.013.i.i
  %62 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i19) #9, !srcloc !286
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !287
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !288
  %63 = ptrtoint ptr %p.015.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %p.015.i.i, align 1
  %inc.i.i20 = add nuw nsw i32 %offs.addr.013.i.i, 1
  %incdec.ptr.i.i = getelementptr i8, ptr %p.015.i.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i.i20, 128
  br i1 %exitcond.not.i, label %if.end.i, label %for.body.i.i21.for.body.i.i21_crit_edge

for.body.i.i21.for.body.i.i21_crit_edge:          ; preds = %for.body.i.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i21

do.end.i22:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  call void @asd_read_reg_string(ptr noundef %asd_ha, ptr noundef nonnull %call7.i, i32 noundef -1610612736, i32 noundef 128) #9
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #12
  br label %out

if.end.i:                                         ; preds = %for.body.i.i21
  %64 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 77, i8 %65)
  %cmp.not.i = icmp eq i8 %65, 77
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.do.end11.i_crit_edge

if.end.i.do.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %arrayidx4.i = getelementptr [2 x i8], ptr %call7.i, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %67)
  %cmp6.not.i = icmp eq i8 %67, 79
  br i1 %cmp6.not.i, label %if.end20.i, label %lor.lhs.false.i.do.end11.i_crit_edge

lor.lhs.false.i.do.end11.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i

do.end11.i:                                       ; preds = %lor.lhs.false.i.do.end11.i_crit_edge, %if.end.i.do.end11.i_crit_edge
  %conv15.i = zext i8 %65 to i32
  %arrayidx17.i = getelementptr [2 x i8], ptr %call7.i, i32 0, i32 1
  %68 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx17.i, align 1
  %conv18.i = zext i8 %69 to i32
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %conv15.i, i32 noundef %conv18.i) #12
  br label %out

if.end20.i:                                       ; preds = %lor.lhs.false.i
  %major.i = getelementptr inbounds %struct.asd_ocm_dir, ptr %call7.i, i32 0, i32 2
  %70 = ptrtoint ptr %major.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %major.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp22.not.i = icmp eq i8 %71, 0
  br i1 %cmp22.not.i, label %if.end9, label %do.end27.i

do.end27.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv21.i = zext i8 %71 to i32
  %call31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %conv21.i) #12
  br label %out

if.end9:                                          ; preds = %if.end20.i
  %num_de.i = getelementptr inbounds %struct.asd_ocm_dir, ptr %call7.i, i32 0, i32 5
  %72 = ptrtoint ptr %num_de.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %num_de.i, align 1
  %74 = and i8 %73, 15
  store i8 %74, ptr %num_de.i, align 1
  %conv.i.i = zext i8 %74 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp2.not.i.i = icmp eq i8 %74, 0
  br i1 %cmp2.not.i.i, label %if.end9.do.end.i28_crit_edge, label %if.end9.for.body.i.i24_crit_edge

if.end9.for.body.i.i24_crit_edge:                 ; preds = %if.end9
  br label %for.body.i.i24

if.end9.do.end.i28_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i28

for.body.i.i24:                                   ; preds = %for.inc.i.i.for.body.i.i24_crit_edge, %if.end9.for.body.i.i24_crit_edge
  %i.03.i.i = phi i32 [ %inc.i.i25, %for.inc.i.i.for.body.i.i24_crit_edge ], [ 0, %if.end9.for.body.i.i24_crit_edge ]
  %arrayidx.i.i23 = getelementptr %struct.asd_ocm_dir, ptr %call7.i, i32 0, i32 6, i32 %i.03.i.i
  %75 = ptrtoint ptr %arrayidx.i.i23 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i.i23, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %76)
  %cmp6.i.i = icmp eq i8 %76, 2
  br i1 %cmp6.i.i, label %if.end.i30, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i24
  %inc.i.i25 = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i.i26 = icmp eq i32 %inc.i.i25, %conv.i.i
  br i1 %exitcond.not.i.i26, label %for.inc.i.i.do.end.i28_crit_edge, label %for.inc.i.i.for.body.i.i24_crit_edge

for.inc.i.i.for.body.i.i24_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i24

for.inc.i.i.do.end.i28_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i28

do.end.i28:                                       ; preds = %for.inc.i.i.do.end.i28_crit_edge, %if.end9.do.end.i28_crit_edge
  %call1.i27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #12
  br label %out

if.end.i30:                                       ; preds = %for.body.i.i24
  %offs16.i.i = getelementptr %struct.asd_ocm_dir, ptr %call7.i, i32 0, i32 6, i32 %i.03.i.i, i32 1
  %77 = ptrtoint ptr %offs16.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %offs16.i.i, align 1
  %conv18.i.i = zext i8 %78 to i32
  %arrayidx20.i.i = getelementptr %struct.asd_ocm_dir, ptr %call7.i, i32 0, i32 6, i32 %i.03.i.i, i32 1, i32 1
  %79 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx20.i.i, align 2
  %conv21.i.i = zext i8 %80 to i32
  %shl.i.i = shl nuw nsw i32 %conv21.i.i, 8
  %or.i.i = or i32 %shl.i.i, %conv18.i.i
  %arrayidx23.i.i = getelementptr %struct.asd_ocm_dir, ptr %call7.i, i32 0, i32 6, i32 %i.03.i.i, i32 1, i32 2
  %81 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx23.i.i, align 1
  %conv24.i.i = zext i8 %82 to i32
  %shl25.i.i = shl nuw nsw i32 %conv24.i.i, 16
  %or26.i.i = or i32 %or.i.i, %shl25.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %83 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %83, i32 noundef 3264, i32 noundef 32) #13
  %tobool3.not.i29 = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not.i29, label %do.end7.i, label %if.end10.i

do.end7.i:                                        ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #11
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #12
  br label %out

if.end10.i:                                       ; preds = %if.end.i30
  %84 = ptrtoint ptr %iospace.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %iospace.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i.i32 = icmp eq i32 %85, 0
  br i1 %tobool.not.i.i32, label %if.end10.i.for.body.i187.i_crit_edge, label %do.end16.i, !prof !283

if.end10.i.for.body.i187.i_crit_edge:             ; preds = %if.end10.i
  br label %for.body.i187.i

for.body.i187.i:                                  ; preds = %for.body.i187.i.for.body.i187.i_crit_edge, %if.end10.i.for.body.i187.i_crit_edge
  %p.015.i.i35 = phi ptr [ %incdec.ptr.i.i38, %for.body.i187.i.for.body.i187.i_crit_edge ], [ %call7.i.i, %if.end10.i.for.body.i187.i_crit_edge ]
  %size.addr.014.i.i = phi i32 [ %dec.i.i, %for.body.i187.i.for.body.i187.i_crit_edge ], [ 32, %if.end10.i.for.body.i187.i_crit_edge ]
  %offs.addr.013.i.i36 = phi i32 [ %inc.i185.i, %for.body.i187.i.for.body.i187.i_crit_edge ], [ %or26.i.i, %if.end10.i.for.body.i187.i_crit_edge ]
  %86 = ptrtoint ptr %arrayidx.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i.i.i18, align 4
  %add.ptr.i.i.i37 = getelementptr i8, ptr %87, i32 %offs.addr.013.i.i36
  %88 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i37) #9, !srcloc !286
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !287
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !288
  %89 = ptrtoint ptr %p.015.i.i35 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %p.015.i.i35, align 1
  %dec.i.i = add nsw i32 %size.addr.014.i.i, -1
  %inc.i185.i = add nuw nsw i32 %offs.addr.013.i.i36, 1
  %incdec.ptr.i.i38 = getelementptr i8, ptr %p.015.i.i35, i32 1
  %cmp.i186.i = icmp ugt i32 %size.addr.014.i.i, 1
  br i1 %cmp.i186.i, label %for.body.i187.i.for.body.i187.i_crit_edge, label %if.end19.i

for.body.i187.i.for.body.i187.i_crit_edge:        ; preds = %for.body.i187.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i187.i

do.end16.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i39 = or i32 %or26.i.i, -1610612736
  call void @asd_read_reg_string(ptr noundef %asd_ha, ptr noundef nonnull %call7.i.i, i32 noundef %add.i.i39, i32 noundef 32) #9
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #12
  br label %out2.i

if.end19.i:                                       ; preds = %for.body.i187.i
  %call20.i = call i32 @strncmp(ptr noundef nonnull %call7.i.i, ptr noundef nonnull dereferenceable(5) @.str.63, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end19.i.if.end42.i_crit_edge, label %land.lhs.true.i

if.end19.i.if.end42.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

land.lhs.true.i:                                  ; preds = %if.end19.i
  %call24.i = call i32 @strncmp(ptr noundef nonnull %call7.i.i, ptr noundef nonnull dereferenceable(5) @.str.64, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %land.lhs.true.i.if.end42.i_crit_edge, label %do.end29.i

land.lhs.true.i.if.end42.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

do.end29.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %call7.i.i, align 8
  %conv.i = zext i8 %91 to i32
  %arrayidx33.i = getelementptr [4 x i8], ptr %call7.i.i, i32 0, i32 1
  %92 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx33.i, align 1
  %conv34.i = zext i8 %93 to i32
  %arrayidx36.i = getelementptr [4 x i8], ptr %call7.i.i, i32 0, i32 2
  %94 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx36.i, align 2
  %conv37.i = zext i8 %95 to i32
  %arrayidx39.i = getelementptr [4 x i8], ptr %call7.i.i, i32 0, i32 3
  %96 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = zext i8 %97 to i32
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %conv.i, i32 noundef %conv34.i, i32 noundef %conv37.i, i32 noundef %conv40.i) #12
  br label %out2.i

if.end42.i:                                       ; preds = %land.lhs.true.i.if.end42.i_crit_edge, %if.end19.i.if.end42.i_crit_edge
  %major.i40 = getelementptr inbounds %struct.asd_bios_chim_struct, ptr %call7.i.i, i32 0, i32 1
  %98 = ptrtoint ptr %major.i40 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %major.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %99)
  %cmp.not.i41 = icmp eq i8 %99, 1
  br i1 %cmp.not.i41, label %if.end53.i, label %do.end48.i

do.end48.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv43.i = zext i8 %99 to i32
  %call52.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %conv43.i) #12
  br label %out2.i

if.end53.i:                                       ; preds = %if.end42.i
  %flags.i = getelementptr inbounds %struct.asd_bios_chim_struct, ptr %call7.i.i, i32 0, i32 6
  %100 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %flags.i, align 4
  %102 = and i8 %101, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool55.not.i = icmp eq i8 %102, 0
  br i1 %tobool55.not.i, label %if.end53.i.if.end79.i_crit_edge, label %if.then56.i

if.end53.i.if.end79.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79.i

if.then56.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw_prof.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7
  %103 = ptrtoint ptr %hw_prof.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 1, ptr %hw_prof.i, align 4
  %bios_major.i = getelementptr inbounds %struct.asd_bios_chim_struct, ptr %call7.i.i, i32 0, i32 3
  %104 = ptrtoint ptr %bios_major.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %bios_major.i, align 2
  %maj.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 0, i32 1
  %106 = ptrtoint ptr %maj.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %maj.i, align 4
  %bios_minor.i = getelementptr inbounds %struct.asd_bios_chim_struct, ptr %call7.i.i, i32 0, i32 4
  %107 = ptrtoint ptr %bios_minor.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %bios_minor.i, align 1
  %min.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 0, i32 2
  %109 = ptrtoint ptr %min.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %min.i, align 1
  %bios_build.i = getelementptr inbounds %struct.asd_bios_chim_struct, ptr %call7.i.i, i32 0, i32 5
  %110 = ptrtoint ptr %bios_build.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %bios_build.i, align 8
  %112 = call i32 @llvm.bswap.i32(i32 %111) #9
  %bld.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 0, i32 3
  %113 = ptrtoint ptr %bld.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %bld.i, align 4
  %conv70.i = zext i8 %105 to i32
  %conv74.i = zext i8 %108 to i32
  %call78.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %conv70.i, i32 noundef %conv74.i, i32 noundef %112) #12
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then56.i, %if.end53.i.if.end79.i_crit_edge
  %ue_num.i = getelementptr inbounds %struct.asd_bios_chim_struct, ptr %call7.i.i, i32 0, i32 8
  %114 = ptrtoint ptr %ue_num.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %ue_num.i, align 2
  %116 = call i16 @llvm.bswap.i16(i16 %115) #9
  %ue.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 1
  %117 = ptrtoint ptr %ue.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %ue.i, align 4
  %ue_size.i = getelementptr inbounds %struct.asd_bios_chim_struct, ptr %call7.i.i, i32 0, i32 9
  %118 = ptrtoint ptr %ue_size.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %ue_size.i, align 8
  %120 = call i16 @llvm.bswap.i16(i16 %119) #9
  %size83.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 1, i32 1
  %121 = ptrtoint ptr %size83.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %size83.i, align 2
  %conv91.i = zext i16 %116 to i32
  %conv95.i = zext i16 %120 to i32
  %call96.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %conv91.i, i32 noundef %conv95.i) #12
  %122 = ptrtoint ptr %ue.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %ue.i, align 4
  %conv100.i = zext i16 %123 to i32
  %124 = ptrtoint ptr %size83.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %size83.i, align 2
  %conv104.i = zext i16 %125 to i32
  %mul.i = mul nuw i32 %conv104.i, %conv100.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp105.not.i = icmp eq i32 %mul.i, 0
  br i1 %cmp105.not.i, label %if.end79.i.out2.i_crit_edge, label %if.end8.i.i

if.end79.i.out2.i_crit_edge:                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out2.i

if.end8.i.i:                                      ; preds = %if.end79.i
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3264) #14
  %area.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 1, i32 2
  %126 = ptrtoint ptr %area.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call9.i.i, ptr %area.i, align 4
  %tobool114.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool114.not.i, label %if.end8.i.i.out2.i_crit_edge, label %if.end116.i

if.end8.i.i.out2.i_crit_edge:                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out2.i

if.end116.i:                                      ; preds = %if.end8.i.i
  %add.i = add nuw nsw i32 %or26.i.i, 32
  %call120.i = call fastcc i32 @asd_read_ocm_seg(ptr noundef %asd_ha, ptr noundef nonnull %call9.i.i, i32 noundef %add.i, i32 noundef %mul.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120.i)
  %tobool121.not.i = icmp eq i32 %call120.i, 0
  br i1 %tobool121.not.i, label %if.end116.i.out2.i_crit_edge, label %if.then122.i

if.end116.i.out2.i_crit_edge:                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out2.i

if.then122.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #11
  %127 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %area.i, align 4
  call void @kfree(ptr noundef %128) #9
  %129 = ptrtoint ptr %ue.i to i32
  call void @__asan_storeN_noabort(i32 %129, i32 8)
  store i64 0, ptr %ue.i, align 4
  %call139.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %call120.i) #12
  br label %out2.i

out2.i:                                           ; preds = %if.then122.i, %if.end116.i.out2.i_crit_edge, %if.end8.i.i.out2.i_crit_edge, %if.end79.i.out2.i_crit_edge, %do.end48.i, %do.end29.i, %do.end16.i
  %err.0.i = phi i32 [ 32, %do.end16.i ], [ -2, %do.end29.i ], [ -2, %do.end48.i ], [ %call120.i, %if.then122.i ], [ 0, %if.end116.i.out2.i_crit_edge ], [ -12, %if.end8.i.i.out2.i_crit_edge ], [ 0, %if.end79.i.out2.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %out

out:                                              ; preds = %out2.i, %do.end7.i, %do.end.i28, %do.end27.i, %do.end11.i, %do.end.i22
  %err.0 = phi i32 [ -2, %do.end.i28 ], [ %err.0.i, %out2.i ], [ -12, %do.end7.i ], [ -2, %do.end27.i ], [ -2, %do.end11.i ], [ 128, %do.end.i22 ]
  call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end, %asd_hwi_check_ocm_access.exit
  %retval.0 = phi i32 [ %err.0, %out ], [ -12, %do.end ], [ -1, %asd_hwi_check_ocm_access.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_read_flash(ptr noundef %asd_ha) local_unnamed_addr #0 align 64 {
entry:
  %dflt_ps.i = alloca %struct.asd_ctrla_phy_settings, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207687168) #9
  %0 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asd_ha, align 4
  %flash.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 2
  %call1.i = tail call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef 184, ptr noundef %flash.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asd_ha, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %7, %if.end.i.i.i ], [ %5, %do.end.i.pci_name.exit.i_crit_edge ]
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %retval.0.i.i.i) #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %present.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 2, i32 1
  %8 = ptrtoint ptr %present.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %present.i, align 4
  %and.i = lshr i32 %call.i, 4
  %and.lobit.i = and i32 %and.i, 1
  %wide.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 2, i32 2
  %9 = ptrtoint ptr %wide.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and.lobit.i, ptr %wide.i, align 4
  %call10.i = tail call fastcc i32 @asd_reset_flash(ptr noundef %asd_ha) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end, label %do.end15.i

do.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef %call10.i) #12
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 2192) #13
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %v.015.i = phi i32 [ %add.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %flash.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flash.i, align 4
  %add.i.i = add i32 %12, %v.015.i
  tail call void @asd_read_reg_string(ptr noundef %asd_ha, ptr noundef nonnull %call7.i, i32 noundef %add.i.i, i32 noundef 32) #9
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(32) %call7.i, ptr noundef nonnull dereferenceable(32) @.str.85, i32 32) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp2.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp2.i, label %if.end9, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %add.i = add nuw nsw i32 %v.015.i, 8192
  %cmp.i = icmp ult i32 %v.015.i, 2088960
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %do.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.end:                                           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #12
  br label %out

if.end9:                                          ; preds = %for.body.i
  %dir_offs.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 2, i32 7
  %13 = ptrtoint ptr %dir_offs.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %v.015.i, ptr %dir_offs.i, align 4
  %14 = ptrtoint ptr %flash.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flash.i, align 4
  %add.i13.i = add i32 %15, %v.015.i
  tail call void @asd_read_reg_string(ptr noundef %asd_ha, ptr noundef nonnull %call7.i, i32 noundef %add.i13.i, i32 noundef 2192) #9
  %rev = getelementptr inbounds %struct.asd_flash_dir, ptr %call7.i, i32 0, i32 1
  %16 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %17)
  %cmp.not = icmp eq i32 %17, 33554432
  br i1 %cmp.not, label %if.end9.for.body.i.i_crit_edge, label %do.end13

if.end9.for.body.i.i_crit_edge:                   ; preds = %if.end9
  br label %for.body.i.i

do.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %18) #12
  br label %out

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end9.for.body.i.i_crit_edge
  %i.020.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end9.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.asd_flash_dir, ptr %call7.i, i32 0, i32 11, i32 %i.020.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i, align 8
  %21 = and i32 %20, -193
  call void @__sanitizer_cov_trace_const_cmp4(i32 536936448, i32 %21)
  %cmp2.i.i = icmp eq i32 %21, 536936448
  br i1 %cmp2.i.i, label %if.end.i54, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.020.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %do.end.i52, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

do.end.i52:                                       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #12
  br label %do.end23

if.end.i54:                                       ; preds = %for.body.i.i
  %offs8.i.i = getelementptr %struct.asd_flash_dir, ptr %call7.i, i32 0, i32 11, i32 %i.020.i.i, i32 1
  %22 = ptrtoint ptr %offs8.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offs8.i.i, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  %pad_size.i.i = getelementptr %struct.asd_flash_dir, ptr %call7.i, i32 0, i32 11, i32 %i.020.i.i, i32 2
  %25 = ptrtoint ptr %pad_size.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pad_size.i.i, align 8
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i53 = icmp eq i32 %26, 0
  br i1 %cmp.i53, label %if.end.i54.if.end26_crit_edge, label %if.end8.i.i

if.end.i54.if.end26_crit_edge:                    ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end8.i.i:                                      ; preds = %if.end.i54
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %27, i32 noundef 3264) #14
  %tobool5.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool5.not.i, label %do.end9.i, label %if.end12.i

do.end9.i:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #12
  br label %do.end23

if.end12.i:                                       ; preds = %if.end8.i.i
  %28 = ptrtoint ptr %flash.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flash.i, align 4
  %add.i.i57 = add i32 %29, %24
  tail call void @asd_read_reg_string(ptr noundef %asd_ha, ptr noundef nonnull %call9.i.i, i32 noundef %add.i.i57, i32 noundef %27) #9
  %30 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 83, i8 %31)
  %cmp.not.i.i = icmp eq i8 %31, 83
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end12.i.do.end.i.i_crit_edge

if.end12.i.do.end.i.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

lor.lhs.false.i.i:                                ; preds = %if.end12.i
  %arrayidx3.i.i = getelementptr [2 x i8], ptr %call9.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 77, i8 %33)
  %cmp5.not.i.i = icmp eq i8 %33, 77
  br i1 %cmp5.not.i.i, label %if.end.i99.i, label %lor.lhs.false.i.i.do.end.i.i_crit_edge

lor.lhs.false.i.i.do.end.i.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i.do.end.i.i_crit_edge, %if.end12.i.do.end.i.i_crit_edge
  %conv9.i.i = zext i8 %31 to i32
  %arrayidx11.i.i = getelementptr [2 x i8], ptr %call9.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx11.i.i, align 1
  %conv12.i.i = zext i8 %35 to i32
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %conv9.i.i, i32 noundef %conv12.i.i) #12
  br label %asd_process_ms.exit

if.end.i99.i:                                     ; preds = %lor.lhs.false.i.i
  %maj.i.i = getelementptr inbounds %struct.asd_manuf_sec, ptr %call9.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %maj.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %maj.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp14.not.i.i = icmp eq i8 %37, 0
  br i1 %cmp14.not.i.i, label %if.end23.i.i, label %do.end18.i.i

do.end18.i.i:                                     ; preds = %if.end.i99.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv13.i.i = zext i8 %37 to i32
  %call22.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef %conv13.i.i) #12
  br label %asd_process_ms.exit

if.end23.i.i:                                     ; preds = %if.end.i99.i
  %offs_next.i.i = getelementptr inbounds %struct.asd_manuf_sec, ptr %call9.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %offs_next.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %offs_next.i.i, align 2
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #9
  %41 = ptrtoint ptr %offs_next.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %offs_next.i.i, align 2
  %chksum.i.i = getelementptr inbounds %struct.asd_manuf_sec, ptr %call9.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %chksum.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %chksum.i.i, align 2
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #9
  %45 = ptrtoint ptr %chksum.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %chksum.i.i, align 2
  %size.i.i = getelementptr inbounds %struct.asd_manuf_sec, ptr %call9.i.i, i32 0, i32 5
  %46 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %size.i.i, align 8
  %48 = tail call i16 @llvm.bswap.i16(i16 %47) #9
  %49 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %48)
  %cmp4.i.not.i.i = icmp ult i16 %48, 2
  br i1 %cmp4.i.not.i.i, label %if.end23.i.i.if.end30.i_crit_edge, label %while.body.i.preheader.i.i

if.end23.i.i.if.end30.i_crit_edge:                ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i

while.body.i.preheader.i.i:                       ; preds = %if.end23.i.i
  %50 = lshr i16 %48, 1
  %div.i.i = zext i16 %50 to i32
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %while.body.i.preheader.i.i
  %chksum.07.i.i.i = phi i16 [ %add.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %while.body.i.preheader.i.i ]
  %size.addr.06.i.i.i = phi i32 [ %dec.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %div.i.i, %while.body.i.preheader.i.i ]
  %p.addr.05.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %call9.i.i, %while.body.i.preheader.i.i ]
  %dec.i.i.i = add nsw i32 %size.addr.06.i.i.i, -1
  %incdec.ptr.i.i.i = getelementptr i16, ptr %p.addr.05.i.i.i, i32 1
  %51 = ptrtoint ptr %p.addr.05.i.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %p.addr.05.i.i.i, align 2
  %add.i.i.i = add i16 %52, %chksum.07.i.i.i
  %cmp.i.i100.i = icmp ugt i32 %size.addr.06.i.i.i, 1
  br i1 %cmp.i.i100.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge, label %asd_calc_flash_chksum.exit.i.i

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.i

asd_calc_flash_chksum.exit.i.i:                   ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i.i.i)
  %tobool.not.i.i = icmp eq i16 %add.i.i.i, 0
  br i1 %tobool.not.i.i, label %asd_calc_flash_chksum.exit.i.i.if.end30.i_crit_edge, label %do.end32.i.i

asd_calc_flash_chksum.exit.i.i.if.end30.i_crit_edge: ; preds = %asd_calc_flash_chksum.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i

do.end32.i.i:                                     ; preds = %asd_calc_flash_chksum.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call34.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121) #12
  br label %if.end30.i

if.end30.i:                                       ; preds = %do.end32.i.i, %asd_calc_flash_chksum.exit.i.i.if.end30.i_crit_edge, %if.end23.i.i.if.end30.i_crit_edge
  %sas_addr.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 3
  %sas_addr1.i.i = getelementptr inbounds %struct.asd_manuf_sec, ptr %call9.i.i, i32 0, i32 7
  %53 = ptrtoint ptr %sas_addr1.i.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %sas_addr1.i.i, align 16
  %55 = ptrtoint ptr %sas_addr.i.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 8)
  store i64 %54, ptr %sas_addr.i.i, align 4
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i64 noundef %54) #12
  %pcba_sn.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 4
  %pcba_sn1.i.i = getelementptr inbounds %struct.asd_manuf_sec, ptr %call9.i.i, i32 0, i32 8
  %56 = call ptr @memcpy(ptr %pcba_sn.i.i, ptr %pcba_sn1.i.i, i32 12)
  %arrayidx.i102.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 4, i32 12
  %57 = ptrtoint ptr %arrayidx.i102.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %arrayidx.i102.i, align 4
  %call60.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %pcba_sn.i.i) #12
  %call61.i = tail call fastcc i32 @asd_ms_get_phy_params(ptr noundef %asd_ha, ptr noundef nonnull %call9.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.end69.i, label %if.end30.i.asd_process_ms.exit_crit_edge

if.end30.i.asd_process_ms.exit_crit_edge:         ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asd_process_ms.exit

if.end69.i:                                       ; preds = %if.end30.i
  %call70.i = tail call fastcc i32 @asd_ms_get_connector_map(ptr noundef nonnull %call9.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool71.not.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.not.i, label %asd_process_ms.exit.thread115, label %if.end69.i.asd_process_ms.exit_crit_edge

if.end69.i.asd_process_ms.exit_crit_edge:         ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asd_process_ms.exit

asd_process_ms.exit.thread115:                    ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %if.end26

asd_process_ms.exit:                              ; preds = %if.end69.i.asd_process_ms.exit_crit_edge, %if.end30.i.asd_process_ms.exit_crit_edge, %do.end18.i.i, %do.end.i.i
  %.str.113.sink.i = phi ptr [ @.str.95, %do.end18.i.i ], [ @.str.95, %do.end.i.i ], [ @.str.110, %if.end30.i.asd_process_ms.exit_crit_edge ], [ @.str.113, %if.end69.i.asd_process_ms.exit_crit_edge ]
  %err.0.ph.i = phi i32 [ -2, %do.end18.i.i ], [ -2, %do.end.i.i ], [ %call61.i, %if.end30.i.asd_process_ms.exit_crit_edge ], [ %call70.i, %if.end69.i.asd_process_ms.exit_crit_edge ]
  %call77.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.113.sink.i) #12
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #9
  br label %do.end23

do.end23:                                         ; preds = %asd_process_ms.exit, %do.end9.i, %do.end.i52
  %err.1.i111 = phi i32 [ %err.0.ph.i, %asd_process_ms.exit ], [ -12, %do.end9.i ], [ -2, %do.end.i52 ]
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #12
  br label %out

if.end26:                                         ; preds = %asd_process_ms.exit.thread115, %if.end.i54.if.end26_crit_edge
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %dflt_ps.i) #9
  %58 = call ptr @memset(ptr %dflt_ps.i, i32 255, i32 136)
  br label %for.body.i.i61

for.body.i.i61:                                   ; preds = %for.inc.i.i64.for.body.i.i61_crit_edge, %if.end26
  %i.020.i.i58 = phi i32 [ 0, %if.end26 ], [ %inc.i.i62, %for.inc.i.i64.for.body.i.i61_crit_edge ]
  %arrayidx.i.i59 = getelementptr %struct.asd_flash_dir, ptr %call7.i, i32 0, i32 11, i32 %i.020.i.i58
  %59 = ptrtoint ptr %arrayidx.i.i59 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i59, align 8
  %61 = and i32 %60, -193
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %61)
  %cmp2.i.i60 = icmp eq i32 %61, -536870912
  br i1 %cmp2.i.i60, label %if.end.i69, label %for.inc.i.i64

for.inc.i.i64:                                    ; preds = %for.body.i.i61
  %inc.i.i62 = add nuw nsw i32 %i.020.i.i58, 1
  %exitcond.not.i.i63 = icmp eq i32 %inc.i.i62, 32
  br i1 %exitcond.not.i.i63, label %do.end.i66, label %for.inc.i.i64.for.body.i.i61_crit_edge

for.inc.i.i64.for.body.i.i61_crit_edge:           ; preds = %for.inc.i.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i61

do.end.i66:                                       ; preds = %for.inc.i.i64
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154) #12
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157) #12
  %62 = ptrtoint ptr %dflt_ps.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 104, ptr %dflt_ps.i, align 1
  %num_phys.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 3
  %63 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 8, ptr %num_phys.i, align 1
  %sas_addr7.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 3
  %64 = ptrtoint ptr %sas_addr7.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 8)
  %65 = load i64, ptr %sas_addr7.i, align 4
  %arrayidx.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 0
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 8)
  store i64 %65, ptr %arrayidx.i, align 1
  %sas_link_rates.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 0, i32 1
  %67 = ptrtoint ptr %sas_link_rates.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -104, ptr %sas_link_rates.i, align 1
  %flags.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 0, i32 2
  %68 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %flags.i, align 1
  %sata_link_rates.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 0, i32 3
  %69 = ptrtoint ptr %sata_link_rates.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %sata_link_rates.i, align 1
  %arrayidx.1.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 1
  %70 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_storeN_noabort(i32 %70, i32 8)
  store i64 %65, ptr %arrayidx.1.i, align 1
  %sas_link_rates.1.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 1, i32 1
  %71 = ptrtoint ptr %sas_link_rates.1.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -104, ptr %sas_link_rates.1.i, align 1
  %flags.1.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 1, i32 2
  %72 = ptrtoint ptr %flags.1.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %flags.1.i, align 1
  %sata_link_rates.1.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 1, i32 3
  %73 = ptrtoint ptr %sata_link_rates.1.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %sata_link_rates.1.i, align 1
  %arrayidx.2.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 2
  %74 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_storeN_noabort(i32 %74, i32 8)
  store i64 %65, ptr %arrayidx.2.i, align 1
  %sas_link_rates.2.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 2, i32 1
  %75 = ptrtoint ptr %sas_link_rates.2.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -104, ptr %sas_link_rates.2.i, align 1
  %flags.2.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 2, i32 2
  %76 = ptrtoint ptr %flags.2.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %flags.2.i, align 1
  %sata_link_rates.2.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 2, i32 3
  %77 = ptrtoint ptr %sata_link_rates.2.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %sata_link_rates.2.i, align 1
  %arrayidx.3.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 3
  %78 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_storeN_noabort(i32 %78, i32 8)
  store i64 %65, ptr %arrayidx.3.i, align 1
  %sas_link_rates.3.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 3, i32 1
  %79 = ptrtoint ptr %sas_link_rates.3.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -104, ptr %sas_link_rates.3.i, align 1
  %flags.3.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 3, i32 2
  %80 = ptrtoint ptr %flags.3.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %flags.3.i, align 1
  %sata_link_rates.3.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 3, i32 3
  %81 = ptrtoint ptr %sata_link_rates.3.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %sata_link_rates.3.i, align 1
  %arrayidx.4.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 4
  %82 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 8)
  store i64 %65, ptr %arrayidx.4.i, align 1
  %sas_link_rates.4.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 4, i32 1
  %83 = ptrtoint ptr %sas_link_rates.4.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 -104, ptr %sas_link_rates.4.i, align 1
  %flags.4.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 4, i32 2
  %84 = ptrtoint ptr %flags.4.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %flags.4.i, align 1
  %sata_link_rates.4.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 4, i32 3
  %85 = ptrtoint ptr %sata_link_rates.4.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %sata_link_rates.4.i, align 1
  %arrayidx.5.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 5
  %86 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_storeN_noabort(i32 %86, i32 8)
  store i64 %65, ptr %arrayidx.5.i, align 1
  %sas_link_rates.5.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 5, i32 1
  %87 = ptrtoint ptr %sas_link_rates.5.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 -104, ptr %sas_link_rates.5.i, align 1
  %flags.5.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 5, i32 2
  %88 = ptrtoint ptr %flags.5.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %flags.5.i, align 1
  %sata_link_rates.5.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 5, i32 3
  %89 = ptrtoint ptr %sata_link_rates.5.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %sata_link_rates.5.i, align 1
  %arrayidx.6.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 6
  %90 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_storeN_noabort(i32 %90, i32 8)
  store i64 %65, ptr %arrayidx.6.i, align 1
  %sas_link_rates.6.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 6, i32 1
  %91 = ptrtoint ptr %sas_link_rates.6.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -104, ptr %sas_link_rates.6.i, align 1
  %flags.6.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 6, i32 2
  %92 = ptrtoint ptr %flags.6.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %flags.6.i, align 1
  %sata_link_rates.6.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 6, i32 3
  %93 = ptrtoint ptr %sata_link_rates.6.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %sata_link_rates.6.i, align 1
  %arrayidx.7.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 7
  %94 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_storeN_noabort(i32 %94, i32 8)
  store i64 %65, ptr %arrayidx.7.i, align 1
  %sas_link_rates.7.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 7, i32 1
  %95 = ptrtoint ptr %sas_link_rates.7.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -104, ptr %sas_link_rates.7.i, align 1
  %flags.7.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 7, i32 2
  %96 = ptrtoint ptr %flags.7.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %flags.7.i, align 1
  %sata_link_rates.7.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %dflt_ps.i, i32 0, i32 5, i32 7, i32 3
  %97 = ptrtoint ptr %sata_link_rates.7.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %sata_link_rates.7.i, align 1
  br label %out_process.i

if.end.i69:                                       ; preds = %for.body.i.i61
  %offs8.i.i67 = getelementptr %struct.asd_flash_dir, ptr %call7.i, i32 0, i32 11, i32 %i.020.i.i58, i32 1
  %98 = ptrtoint ptr %offs8.i.i67 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %offs8.i.i67, align 4
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #9
  %pad_size.i.i68 = getelementptr %struct.asd_flash_dir, ptr %call7.i, i32 0, i32 11, i32 %i.020.i.i58, i32 2
  %101 = ptrtoint ptr %pad_size.i.i68 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pad_size.i.i68, align 8
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp15.i = icmp eq i32 %102, 0
  br i1 %cmp15.i, label %asd_process_ctrl_a_user.exit.thread, label %if.end8.i.i94

asd_process_ctrl_a_user.exit.thread:              ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %dflt_ps.i) #9
  br label %out

if.end8.i.i94:                                    ; preds = %if.end.i69
  %call9.i.i93 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %103, i32 noundef 3264) #14
  %tobool19.not.i = icmp eq ptr %call9.i.i93, null
  br i1 %tobool19.not.i, label %asd_process_ctrl_a_user.exit.thread120, label %if.end26.i

asd_process_ctrl_a_user.exit.thread120:           ; preds = %if.end8.i.i94
  call void @__sanitizer_cov_trace_pc() #11
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160) #12
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %dflt_ps.i) #9
  br label %do.end32

if.end26.i:                                       ; preds = %if.end8.i.i94
  %104 = ptrtoint ptr %flash.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %flash.i, align 4
  %add.i.i98 = add i32 %105, %100
  tail call void @asd_read_reg_string(ptr noundef %asd_ha, ptr noundef nonnull %call9.i.i93, i32 noundef %add.i.i98, i32 noundef %103) #9
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %sw.epilog.i.i.do.body.i.i_crit_edge, %if.end26.i
  %el.0.i.i = phi ptr [ %call9.i.i93, %if.end26.i ], [ %add.ptr.i.i, %sw.epilog.i.i.do.body.i.i_crit_edge ]
  %106 = ptrtoint ptr %el.0.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %el.0.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 104, i8 %107)
  %cmp8.i.i = icmp eq i8 %107, 104
  br i1 %cmp8.i.i, label %asd_find_ll_by_id.exit.i, label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %do.body.i.i
  %next.i.i = getelementptr inbounds %struct.asd_ll_el, ptr %el.0.i.i, i32 0, i32 2
  %108 = ptrtoint ptr %next.i.i to i32
  call void @__asan_loadN_noabort(i32 %108, i32 2)
  %109 = load i16, ptr %next.i.i, align 1
  %110 = tail call i16 @llvm.bswap.i16(i16 %109) #9
  %conv12.i.i99 = zext i16 %110 to i32
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i93, i32 %conv12.i.i99
  %cmp13.not.i.i = icmp eq ptr %add.ptr.i.i, %call9.i.i93
  br i1 %cmp13.not.i.i, label %sw.epilog.i.i.asd_process_ctrl_a_user.exit_crit_edge, label %sw.epilog.i.i.do.body.i.i_crit_edge

sw.epilog.i.i.do.body.i.i_crit_edge:              ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

sw.epilog.i.i.asd_process_ctrl_a_user.exit_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asd_process_ctrl_a_user.exit

asd_find_ll_by_id.exit.i:                         ; preds = %do.body.i.i
  %tobool37.not.i = icmp eq ptr %el.0.i.i, null
  br i1 %tobool37.not.i, label %asd_find_ll_by_id.exit.i.asd_process_ctrl_a_user.exit_crit_edge, label %asd_find_ll_by_id.exit.i.out_process.i_crit_edge

asd_find_ll_by_id.exit.i.out_process.i_crit_edge: ; preds = %asd_find_ll_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_process.i

asd_find_ll_by_id.exit.i.asd_process_ctrl_a_user.exit_crit_edge: ; preds = %asd_find_ll_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asd_process_ctrl_a_user.exit

out_process.i:                                    ; preds = %asd_find_ll_by_id.exit.i.out_process.i_crit_edge, %do.end.i66
  %ps.0.i = phi ptr [ %el.0.i.i, %asd_find_ll_by_id.exit.i.out_process.i_crit_edge ], [ %dflt_ps.i, %do.end.i66 ]
  %el.0.i = phi ptr [ %call9.i.i93, %asd_find_ll_by_id.exit.i.out_process.i_crit_edge ], [ null, %do.end.i66 ]
  %num_phys.i.i = getelementptr inbounds %struct.asd_ctrla_phy_settings, ptr %ps.0.i, i32 0, i32 3
  %111 = ptrtoint ptr %num_phys.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %num_phys.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %cmp2.not.i.i = icmp eq i8 %112, 0
  br i1 %cmp2.not.i.i, label %out_process.i.asd_process_ctrl_a_user.exit.thread124_crit_edge, label %for.body.lr.ph.i.i

out_process.i.asd_process_ctrl_a_user.exit.thread124_crit_edge: ; preds = %out_process.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asd_process_ctrl_a_user.exit.thread124

for.body.lr.ph.i.i:                               ; preds = %out_process.i
  %enabled_phys.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 5
  br label %for.body.i69.i

for.body.i69.i:                                   ; preds = %cleanup.i.i.for.body.i69.i_crit_edge, %for.body.lr.ph.i.i
  %i.03.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i72.i, %cleanup.i.i.for.body.i69.i_crit_edge ]
  %113 = ptrtoint ptr %enabled_phys.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %enabled_phys.i.i, align 1
  %conv2.i.i = zext i8 %114 to i32
  %shl.i.i = shl nuw i32 1, %i.03.i.i
  %and.i.i = and i32 %shl.i.i, %conv2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i100 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i100, label %for.body.i69.i.cleanup.i.i_crit_edge, label %if.end.i71.i

for.body.i69.i.cleanup.i.i_crit_edge:             ; preds = %for.body.i69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.end.i71.i:                                     ; preds = %for.body.i69.i
  %arrayidx.i70.i = getelementptr %struct.asd_ctrla_phy_settings, ptr %ps.0.i, i32 0, i32 5, i32 %i.03.i.i
  %115 = ptrtoint ptr %arrayidx.i70.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 8)
  %116 = load i64, ptr %arrayidx.i70.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %116)
  %cmp3.i.i = icmp eq i64 %116, 0
  br i1 %cmp3.i.i, label %if.then5.i.i, label %if.end12.i.i

if.then5.i.i:                                     ; preds = %if.end.i71.i
  call void @__sanitizer_cov_trace_pc() #11
  %117 = trunc i32 %shl.i.i to i8
  %118 = xor i8 %117, -1
  %conv11.i.i = and i8 %114, %118
  %119 = ptrtoint ptr %enabled_phys.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv11.i.i, ptr %enabled_phys.i.i, align 1
  br label %cleanup.i.i

if.end12.i.i:                                     ; preds = %if.end.i71.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx14.i.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 %i.03.i.i
  %120 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_storeN_noabort(i32 %120, i32 8)
  store i64 %116, ptr %arrayidx14.i.i, align 1
  %sas_link_rates.i.i = getelementptr %struct.asd_ctrla_phy_settings, ptr %ps.0.i, i32 0, i32 5, i32 %i.03.i.i, i32 1
  %121 = ptrtoint ptr %sas_link_rates.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %sas_link_rates.i.i, align 1
  %123 = lshr i8 %122, 4
  %max_sas_lrate.i.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 %i.03.i.i, i32 1
  %124 = ptrtoint ptr %max_sas_lrate.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %max_sas_lrate.i.i, align 1
  %125 = load i8, ptr %sas_link_rates.i.i, align 1
  %126 = and i8 %125, 15
  %min_sas_lrate.i.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 %i.03.i.i, i32 2
  %127 = ptrtoint ptr %min_sas_lrate.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %min_sas_lrate.i.i, align 1
  %sata_link_rates.i.i = getelementptr %struct.asd_ctrla_phy_settings, ptr %ps.0.i, i32 0, i32 5, i32 %i.03.i.i, i32 3
  %128 = ptrtoint ptr %sata_link_rates.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %sata_link_rates.i.i, align 1
  %130 = lshr i8 %129, 4
  %max_sata_lrate.i.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 %i.03.i.i, i32 3
  %131 = ptrtoint ptr %max_sata_lrate.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %max_sata_lrate.i.i, align 1
  %132 = load i8, ptr %sata_link_rates.i.i, align 1
  %133 = and i8 %132, 15
  %min_sata_lrate.i.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 %i.03.i.i, i32 4
  %134 = ptrtoint ptr %min_sata_lrate.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %133, ptr %min_sata_lrate.i.i, align 1
  %flags.i.i = getelementptr %struct.asd_ctrla_phy_settings, ptr %ps.0.i, i32 0, i32 5, i32 %i.03.i.i, i32 2
  %135 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %flags.i.i, align 1
  %flags49.i.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 %i.03.i.i, i32 5
  %137 = ptrtoint ptr %flags49.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %flags49.i.i, align 1
  %conv59.i.i = zext i8 %123 to i32
  %conv64.i.i = zext i8 %126 to i32
  %conv69.i.i = zext i8 %130 to i32
  %conv74.i.i = zext i8 %133 to i32
  %conv79.i.i = zext i8 %136 to i32
  %call.i.i101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, i32 noundef %i.03.i.i, i64 noundef %116, i32 noundef %conv59.i.i, i32 noundef %conv64.i.i, i32 noundef %conv69.i.i, i32 noundef %conv74.i.i, i32 noundef %conv79.i.i) #12
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end12.i.i, %if.then5.i.i, %for.body.i69.i.cleanup.i.i_crit_edge
  %inc.i72.i = add nuw nsw i32 %i.03.i.i, 1
  %138 = ptrtoint ptr %num_phys.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %num_phys.i.i, align 1
  %conv.i.i = zext i8 %139 to i32
  %cmp.i73.i = icmp ult i32 %inc.i72.i, %conv.i.i
  br i1 %cmp.i73.i, label %cleanup.i.i.for.body.i69.i_crit_edge, label %cleanup.i.i.asd_process_ctrl_a_user.exit.thread124_crit_edge

cleanup.i.i.asd_process_ctrl_a_user.exit.thread124_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %asd_process_ctrl_a_user.exit.thread124

cleanup.i.i.for.body.i69.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i69.i

asd_process_ctrl_a_user.exit.thread124:           ; preds = %cleanup.i.i.asd_process_ctrl_a_user.exit.thread124_crit_edge, %out_process.i.asd_process_ctrl_a_user.exit.thread124_crit_edge
  tail call void @kfree(ptr noundef %el.0.i) #9
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %dflt_ps.i) #9
  br label %out

asd_process_ctrl_a_user.exit:                     ; preds = %asd_find_ll_by_id.exit.i.asd_process_ctrl_a_user.exit_crit_edge, %sw.epilog.i.i.asd_process_ctrl_a_user.exit_crit_edge
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166) #12
  tail call void @kfree(ptr noundef nonnull %call9.i.i93) #9
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %dflt_ps.i) #9
  br label %do.end32

do.end32:                                         ; preds = %asd_process_ctrl_a_user.exit, %asd_process_ctrl_a_user.exit.thread120
  %err.1.i104123 = phi i32 [ -12, %asd_process_ctrl_a_user.exit.thread120 ], [ -2, %asd_process_ctrl_a_user.exit ]
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #12
  br label %out

out:                                              ; preds = %do.end32, %asd_process_ctrl_a_user.exit.thread124, %asd_process_ctrl_a_user.exit.thread, %do.end23, %do.end13, %do.end
  %err.0 = phi i32 [ -2, %do.end13 ], [ %err.1.i111, %do.end23 ], [ %err.1.i104123, %do.end32 ], [ -2, %do.end ], [ 0, %asd_process_ctrl_a_user.exit.thread ], [ 0, %asd_process_ctrl_a_user.exit.thread124 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %do.end15.i, %pci_name.exit.i
  %retval.0 = phi i32 [ %err.0, %out ], [ -12, %if.end.cleanup_crit_edge ], [ %call10.i, %do.end15.i ], [ -2, %pci_name.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_verify_flash_seg(ptr noundef %asd_ha, ptr nocapture noundef readonly %src, i32 noundef %dest_offset, i32 noundef %bytes_to_verify) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flash = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flash, align 4
  %add = add i32 %1, %dest_offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_to_verify)
  %cmp9.not = icmp eq i32 %bytes_to_verify, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, %bytes_to_verify
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add1 = add i32 %add, %i.010
  %call = tail call zeroext i8 @asd_read_reg_byte(ptr noundef %asd_ha, i32 noundef %add1) #9
  %arrayidx = getelementptr i8, ptr %src, i32 %i.010
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %call, i8 %3)
  %cmp3.not = icmp eq i8 %call, %3
  br i1 %cmp3.not, label %for.cond, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %err.0 = phi i32 [ 0, %entry.for.end_crit_edge ], [ 1280, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @asd_read_reg_byte(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_write_flash_seg(ptr noundef %asd_ha, ptr nocapture noundef readonly %src, i32 noundef %dest_offset, i32 noundef %bytes_to_write) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flash = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flash, align 4
  %call = tail call i32 @asd_check_flash_type(ptr noundef %asd_ha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @asd_erase_nv_sector(ptr noundef %asd_ha, i32 noundef %dest_offset, i32 noundef %bytes_to_write)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %dest_offset) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call fastcc i32 @asd_reset_flash(ptr noundef %asd_ha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.cond.preheader, label %do.end16

for.cond.preheader:                               ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_to_write)
  %cmp108.not = icmp eq i32 %bytes_to_write, 0
  br i1 %cmp108.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %method = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 2, i32 6
  %add27 = add i32 %1, 1365
  %add28 = add i32 %1, 682
  %add30 = add i32 %1, %dest_offset
  %add = add i32 %1, 2730
  br label %for.body

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %call11) #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0109 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %method, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %for.body.sw.epilog_crit_edge [
    i8 1, label %for.body.sw.epilog.sink.split_crit_edge
    i8 2, label %sw.bb26
  ]

for.body.sw.epilog.sink.split_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb26:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb26, %for.body.sw.epilog.sink.split_crit_edge
  %add27.sink113 = phi i32 [ %add27, %sw.bb26 ], [ %add, %for.body.sw.epilog.sink.split_crit_edge ]
  %add28.sink = phi i32 [ %add28, %sw.bb26 ], [ %add27, %for.body.sw.epilog.sink.split_crit_edge ]
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add27.sink113, i8 noundef zeroext -86) #9
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add28.sink, i8 noundef zeroext 85) #9
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add27.sink113, i8 noundef zeroext -96) #9
  %add31 = add i32 %add30, %i.0109
  %add.ptr32 = getelementptr i8, ptr %src, i32 %i.0109
  %5 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr32, align 1
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add31, i8 noundef zeroext %6) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.body.sw.epilog_crit_edge
  %7 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flash, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end24.i.for.body.i_crit_edge, %sw.epilog
  %loop_cnt.047.i = phi i32 [ 0, %sw.epilog ], [ %inc.i, %if.end24.i.for.body.i_crit_edge ]
  %call.i = tail call zeroext i8 @asd_read_reg_byte(ptr noundef %asd_ha, i32 noundef %8) #9
  %call1.i = tail call zeroext i8 @asd_read_reg_byte(ptr noundef %asd_ha, i32 noundef %8) #9
  %and345.i = xor i8 %call1.i, %call.i
  %xor.i = and i8 %and345.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor.i)
  %cmp6.i = icmp eq i8 %xor.i, 0
  br i1 %cmp6.i, label %for.body.i.for.inc_crit_edge, label %if.else.i

for.body.i.for.inc_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else.i:                                        ; preds = %for.body.i
  %9 = and i8 %call1.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.else.i.if.end24.i_crit_edge, label %if.then10.i

if.else.i.if.end24.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.then10.i:                                      ; preds = %if.else.i
  %call11.i = tail call zeroext i8 @asd_read_reg_byte(ptr noundef %asd_ha, i32 noundef %8) #9
  %call12.i = tail call zeroext i8 @asd_read_reg_byte(ptr noundef %asd_ha, i32 noundef %8) #9
  %10 = xor i8 %call12.i, %call11.i
  %xor1746.i = and i8 %10, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor1746.i)
  %cmp20.i = icmp eq i8 %xor1746.i, 0
  br i1 %cmp20.i, label %if.then10.i.for.inc_crit_edge, label %if.then10.i.if.end24.i_crit_edge

if.then10.i.if.end24.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.then10.i.for.inc_crit_edge:                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end24.i:                                       ; preds = %if.then10.i.if.end24.i_crit_edge, %if.else.i.if.end24.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 5368700) #9
  %inc.i = add nuw nsw i32 %loop_cnt.047.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 50000
  br i1 %exitcond.not.i, label %do.end40, label %if.end24.i.for.body.i_crit_edge

if.end24.i.for.body.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.end40:                                         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %add43 = add i32 %add30, %i.0109
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %add43) #12
  br label %cleanup

for.inc:                                          ; preds = %if.then10.i.for.inc_crit_edge, %for.body.i.for.inc_crit_edge
  %inc = add nuw i32 %i.0109, 1
  %exitcond.not = icmp eq i32 %inc, %bytes_to_write
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call46 = tail call fastcc i32 @asd_reset_flash(ptr noundef %asd_ha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %for.end.cleanup_crit_edge, label %do.end51

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end51:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %call46) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %for.end.cleanup_crit_edge, %do.end40, %do.end16, %do.end7, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %do.end7 ], [ %call11, %do.end16 ], [ 2304, %do.end40 ], [ %call46, %do.end51 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_check_flash_type(ptr noundef %asd_ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flash = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flash, align 4
  %call = tail call fastcc i32 @asd_reset_flash(ptr noundef %asd_ha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %call) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %method = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 2, i32 6
  %2 = ptrtoint ptr %method to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %method, align 1
  %manuf = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 2, i32 3
  %3 = ptrtoint ptr %manuf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %manuf, align 4
  %dev_id8 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 2, i32 4
  %4 = ptrtoint ptr %dev_id8 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %dev_id8, align 1
  %wide = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 2, i32 2
  %5 = ptrtoint ptr %wide to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wide, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool11.not = icmp eq i32 %6, 0
  %cond = select i1 %tobool11.not, i32 1, i32 2
  %add = add i32 %1, 2730
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add, i8 noundef zeroext -86) #9
  %add12 = add i32 %1, 1365
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add12, i8 noundef zeroext 85) #9
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add, i8 noundef zeroext -112) #9
  %call14 = tail call zeroext i8 @asd_read_reg_byte(ptr noundef %asd_ha, i32 noundef %1) #9
  %add15 = add i32 %cond, %1
  %call16 = tail call zeroext i8 @asd_read_reg_byte(ptr noundef %asd_ha, i32 noundef %add15) #9
  %add18 = add i32 %add15, %cond
  %call19 = tail call zeroext i8 @asd_read_reg_byte(ptr noundef %asd_ha, i32 noundef %add18) #9
  %call20 = tail call fastcc i32 @asd_reset_flash(ptr noundef %asd_ha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.end31, label %do.end25

do.end25:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %call20) #12
  br label %cleanup

do.end31:                                         ; preds = %if.end
  %conv = zext i8 %call14 to i32
  %conv33 = zext i8 %call16 to i32
  %conv34 = zext i8 %call19 to i32
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %conv, i32 noundef %conv33, i32 noundef %conv34) #12
  %call36 = tail call fastcc i32 @asd_reset_flash(ptr noundef %asd_ha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp.not = icmp eq i32 %call36, 0
  br i1 %cmp.not, label %if.end39, label %do.end31.cleanup_crit_edge

do.end31.cleanup_crit_edge:                       ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %do.end31
  %7 = zext i8 %call14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.173)
  switch i8 %call14, label %if.end39.sw.epilog68_crit_edge [
    i8 1, label %sw.bb
    i8 32, label %sw.bb46
    i8 4, label %sw.bb54
    i8 -62, label %sw.bb61
  ]

if.end39.sw.epilog68_crit_edge:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog68

sw.bb:                                            ; preds = %if.end39
  %8 = zext i8 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.174)
  switch i8 %call19, label %sw.bb.sw.epilog68_crit_edge [
    i8 -38, label %sw.bb.if.end160.sink.split_crit_edge
    i8 126, label %sw.bb.if.end160.sink.split_crit_edge282
    i8 -42, label %sw.bb.if.end160.sink.split_crit_edge283
  ]

sw.bb.if.end160.sink.split_crit_edge283:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160.sink.split

sw.bb.if.end160.sink.split_crit_edge282:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160.sink.split

sw.bb.if.end160.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160.sink.split

sw.bb.sw.epilog68_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog68

sw.bb46:                                          ; preds = %if.end39
  %9 = zext i8 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.175)
  switch i8 %call19, label %sw.bb46.sw.epilog68_crit_edge [
    i8 -41, label %sw.bb46.if.end160.sink.split_crit_edge
    i8 -34, label %sw.bb46.if.end160.sink.split_crit_edge284
  ]

sw.bb46.if.end160.sink.split_crit_edge284:        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160.sink.split

sw.bb46.if.end160.sink.split_crit_edge:           ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160.sink.split

sw.bb46.sw.epilog68_crit_edge:                    ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog68

sw.bb54:                                          ; preds = %if.end39
  %10 = zext i8 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.176)
  switch i8 %call19, label %sw.bb54.sw.epilog68_crit_edge [
    i8 -38, label %sw.bb54.if.end160.sink.split_crit_edge
    i8 74, label %sw.bb54.if.end160.sink.split_crit_edge285
  ]

sw.bb54.if.end160.sink.split_crit_edge285:        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160.sink.split

sw.bb54.if.end160.sink.split_crit_edge:           ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160.sink.split

sw.bb54.sw.epilog68_crit_edge:                    ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog68

sw.bb61:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp1(i8 -38, i8 %call19)
  %cond175 = icmp eq i8 %call19, -38
  br i1 %cond175, label %sw.bb61.if.end160.sink.split_crit_edge, label %sw.bb61.sw.epilog68_crit_edge

sw.bb61.sw.epilog68_crit_edge:                    ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog68

sw.bb61.if.end160.sink.split_crit_edge:           ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160.sink.split

sw.epilog68:                                      ; preds = %sw.bb61.sw.epilog68_crit_edge, %sw.bb54.sw.epilog68_crit_edge, %sw.bb46.sw.epilog68_crit_edge, %sw.bb.sw.epilog68_crit_edge, %if.end39.sw.epilog68_crit_edge
  %11 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %11)
  %.pr = load i8, ptr %method, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp73 = icmp eq i8 %.pr, 0
  br i1 %cmp73, label %if.then75, label %sw.epilog68.if.end160_crit_edge

sw.epilog68.if.end160_crit_edge:                  ; preds = %sw.epilog68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160

if.then75:                                        ; preds = %sw.epilog68
  %call76 = tail call fastcc i32 @asd_reset_flash(ptr noundef %asd_ha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end84, label %do.end81

do.end81:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %call76) #12
  br label %cleanup

if.end84:                                         ; preds = %if.then75
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add12, i8 noundef zeroext -86) #9
  %add86 = add i32 %1, 682
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add86, i8 noundef zeroext 85) #9
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add12, i8 noundef zeroext -112) #9
  %call88 = tail call zeroext i8 @asd_read_reg_byte(ptr noundef %asd_ha, i32 noundef %1) #9
  %call90 = tail call zeroext i8 @asd_read_reg_byte(ptr noundef %asd_ha, i32 noundef %add15) #9
  %call93 = tail call zeroext i8 @asd_read_reg_byte(ptr noundef %asd_ha, i32 noundef %add18) #9
  %conv98 = zext i8 %call88 to i32
  %conv99 = zext i8 %call90 to i32
  %conv100 = zext i8 %call93 to i32
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv98, i32 noundef %conv99, i32 noundef %conv100) #12
  %call102 = tail call fastcc i32 @asd_reset_flash(ptr noundef %asd_ha)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp103.not = icmp eq i32 %call102, 0
  br i1 %cmp103.not, label %if.end111, label %do.end108

do.end108:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %call102) #12
  br label %cleanup

if.end111:                                        ; preds = %if.end84
  %12 = zext i8 %call88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.177)
  switch i8 %call88, label %if.end111.cleanup_crit_edge [
    i8 1, label %sw.bb113
    i8 32, label %sw.bb121
    i8 4, label %sw.bb129
    i8 -119, label %sw.bb136
    i8 -62, label %sw.bb143
  ]

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb113:                                         ; preds = %if.end111
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %call90)
  %cond180 = icmp eq i8 %call90, 62
  br i1 %cond180, label %sw.bb113.if.end160.sink.split_crit_edge, label %sw.bb113.if.end152_crit_edge

sw.bb113.if.end152_crit_edge:                     ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

sw.bb113.if.end160.sink.split_crit_edge:          ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160.sink.split

sw.bb121:                                         ; preds = %if.end111
  call void @__sanitizer_cov_trace_const_cmp1(i8 -22, i8 %call90)
  %cond179 = icmp eq i8 %call90, -22
  br i1 %cond179, label %sw.bb121.if.end160.sink.split_crit_edge, label %sw.bb121.if.end152_crit_edge

sw.bb121.if.end152_crit_edge:                     ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

sw.bb121.if.end160.sink.split_crit_edge:          ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160.sink.split

sw.bb129:                                         ; preds = %if.end111
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %call90)
  %cond178 = icmp eq i8 %call90, 62
  br i1 %cond178, label %sw.bb129.if.end160.sink.split_crit_edge, label %sw.bb129.if.end152_crit_edge

sw.bb129.if.end152_crit_edge:                     ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

sw.bb129.if.end160.sink.split_crit_edge:          ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160.sink.split

sw.bb136:                                         ; preds = %if.end111
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %call90)
  %cond177 = icmp eq i8 %call90, 62
  br i1 %cond177, label %sw.bb136.if.end160.sink.split_crit_edge, label %sw.bb136.if.end152_crit_edge

sw.bb136.if.end152_crit_edge:                     ; preds = %sw.bb136
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

sw.bb136.if.end160.sink.split_crit_edge:          ; preds = %sw.bb136
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160.sink.split

sw.bb143:                                         ; preds = %if.end111
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %call90)
  %cond176 = icmp eq i8 %call90, 62
  br i1 %cond176, label %sw.bb143.if.end160.sink.split_crit_edge, label %sw.bb143.if.end152_crit_edge

sw.bb143.if.end152_crit_edge:                     ; preds = %sw.bb143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end152

sw.bb143.if.end160.sink.split_crit_edge:          ; preds = %sw.bb143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160.sink.split

if.end152:                                        ; preds = %sw.bb143.if.end152_crit_edge, %sw.bb136.if.end152_crit_edge, %sw.bb129.if.end152_crit_edge, %sw.bb121.if.end152_crit_edge, %sw.bb113.if.end152_crit_edge
  %13 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %13)
  %.pr263.pr = load i8, ptr %method, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr263.pr)
  %cmp157 = icmp eq i8 %.pr263.pr, 0
  br i1 %cmp157, label %if.end152.cleanup_crit_edge, label %if.end152.if.end160_crit_edge

if.end152.if.end160_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160

if.end152.cleanup_crit_edge:                      ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end160.sink.split:                             ; preds = %sw.bb143.if.end160.sink.split_crit_edge, %sw.bb136.if.end160.sink.split_crit_edge, %sw.bb129.if.end160.sink.split_crit_edge, %sw.bb121.if.end160.sink.split_crit_edge, %sw.bb113.if.end160.sink.split_crit_edge, %sw.bb61.if.end160.sink.split_crit_edge, %sw.bb54.if.end160.sink.split_crit_edge, %sw.bb54.if.end160.sink.split_crit_edge285, %sw.bb46.if.end160.sink.split_crit_edge, %sw.bb46.if.end160.sink.split_crit_edge284, %sw.bb.if.end160.sink.split_crit_edge, %sw.bb.if.end160.sink.split_crit_edge282, %sw.bb.if.end160.sink.split_crit_edge283
  %.sink = phi i8 [ 1, %sw.bb.if.end160.sink.split_crit_edge ], [ 1, %sw.bb.if.end160.sink.split_crit_edge282 ], [ 1, %sw.bb.if.end160.sink.split_crit_edge283 ], [ 1, %sw.bb46.if.end160.sink.split_crit_edge ], [ 1, %sw.bb46.if.end160.sink.split_crit_edge284 ], [ 1, %sw.bb54.if.end160.sink.split_crit_edge ], [ 1, %sw.bb54.if.end160.sink.split_crit_edge285 ], [ 1, %sw.bb61.if.end160.sink.split_crit_edge ], [ 2, %sw.bb113.if.end160.sink.split_crit_edge ], [ 2, %sw.bb121.if.end160.sink.split_crit_edge ], [ 2, %sw.bb129.if.end160.sink.split_crit_edge ], [ 2, %sw.bb136.if.end160.sink.split_crit_edge ], [ 2, %sw.bb143.if.end160.sink.split_crit_edge ]
  %manuf_id.0273.ph = phi i8 [ 1, %sw.bb.if.end160.sink.split_crit_edge ], [ 1, %sw.bb.if.end160.sink.split_crit_edge282 ], [ 1, %sw.bb.if.end160.sink.split_crit_edge283 ], [ 32, %sw.bb46.if.end160.sink.split_crit_edge ], [ 32, %sw.bb46.if.end160.sink.split_crit_edge284 ], [ 4, %sw.bb54.if.end160.sink.split_crit_edge ], [ 4, %sw.bb54.if.end160.sink.split_crit_edge285 ], [ -62, %sw.bb61.if.end160.sink.split_crit_edge ], [ 1, %sw.bb113.if.end160.sink.split_crit_edge ], [ 32, %sw.bb121.if.end160.sink.split_crit_edge ], [ 4, %sw.bb129.if.end160.sink.split_crit_edge ], [ -119, %sw.bb136.if.end160.sink.split_crit_edge ], [ -62, %sw.bb143.if.end160.sink.split_crit_edge ]
  %dev_id.0272.ph = phi i8 [ %call16, %sw.bb.if.end160.sink.split_crit_edge ], [ %call16, %sw.bb.if.end160.sink.split_crit_edge282 ], [ %call16, %sw.bb.if.end160.sink.split_crit_edge283 ], [ %call16, %sw.bb46.if.end160.sink.split_crit_edge ], [ %call16, %sw.bb46.if.end160.sink.split_crit_edge284 ], [ %call16, %sw.bb54.if.end160.sink.split_crit_edge ], [ %call16, %sw.bb54.if.end160.sink.split_crit_edge285 ], [ %call16, %sw.bb61.if.end160.sink.split_crit_edge ], [ 62, %sw.bb113.if.end160.sink.split_crit_edge ], [ -22, %sw.bb121.if.end160.sink.split_crit_edge ], [ 62, %sw.bb129.if.end160.sink.split_crit_edge ], [ 62, %sw.bb136.if.end160.sink.split_crit_edge ], [ 62, %sw.bb143.if.end160.sink.split_crit_edge ]
  %sec_prot.0271.ph = phi i8 [ %call19, %sw.bb.if.end160.sink.split_crit_edge ], [ %call19, %sw.bb.if.end160.sink.split_crit_edge282 ], [ %call19, %sw.bb.if.end160.sink.split_crit_edge283 ], [ %call19, %sw.bb46.if.end160.sink.split_crit_edge ], [ %call19, %sw.bb46.if.end160.sink.split_crit_edge284 ], [ %call19, %sw.bb54.if.end160.sink.split_crit_edge ], [ %call19, %sw.bb54.if.end160.sink.split_crit_edge285 ], [ -38, %sw.bb61.if.end160.sink.split_crit_edge ], [ %call93, %sw.bb113.if.end160.sink.split_crit_edge ], [ %call93, %sw.bb121.if.end160.sink.split_crit_edge ], [ %call93, %sw.bb129.if.end160.sink.split_crit_edge ], [ %call93, %sw.bb136.if.end160.sink.split_crit_edge ], [ %call93, %sw.bb143.if.end160.sink.split_crit_edge ]
  %14 = ptrtoint ptr %method to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink, ptr %method, align 1
  br label %if.end160

if.end160:                                        ; preds = %if.end160.sink.split, %if.end152.if.end160_crit_edge, %sw.epilog68.if.end160_crit_edge
  %manuf_id.0273 = phi i8 [ %call88, %if.end152.if.end160_crit_edge ], [ %call14, %sw.epilog68.if.end160_crit_edge ], [ %manuf_id.0273.ph, %if.end160.sink.split ]
  %dev_id.0272 = phi i8 [ %call90, %if.end152.if.end160_crit_edge ], [ %call16, %sw.epilog68.if.end160_crit_edge ], [ %dev_id.0272.ph, %if.end160.sink.split ]
  %sec_prot.0271 = phi i8 [ %call93, %if.end152.if.end160_crit_edge ], [ %call19, %sw.epilog68.if.end160_crit_edge ], [ %sec_prot.0271.ph, %if.end160.sink.split ]
  %15 = ptrtoint ptr %manuf to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %manuf_id.0273, ptr %manuf, align 4
  %16 = ptrtoint ptr %dev_id8 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %dev_id.0272, ptr %dev_id8, align 1
  %sec_prot169 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 2, i32 5
  %17 = ptrtoint ptr %sec_prot169 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %sec_prot.0271, ptr %sec_prot169, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end160, %if.end152.cleanup_crit_edge, %if.end111.cleanup_crit_edge, %do.end108, %do.end81, %do.end31.cleanup_crit_edge, %do.end25, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call20, %do.end25 ], [ %call76, %do.end81 ], [ %call102, %do.end108 ], [ 0, %if.end160 ], [ %call36, %do.end31.cleanup_crit_edge ], [ 1792, %if.end111.cleanup_crit_edge ], [ 1792, %if.end152.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_erase_nv_sector(ptr noundef %asd_ha, i32 noundef %flash_addr, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flash = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flash, align 4
  %and = and i32 %flash_addr, -65536
  %add = add i32 %size, %flash_addr
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %add)
  %cmp53 = icmp ult i32 %and, %add
  br i1 %cmp53, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %method = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 2, i32 6
  %add10 = add i32 %1, 1365
  %add11 = add i32 %1, 682
  %add3 = add i32 %1, 2730
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %sector_addr.054 = phi i32 [ %and, %while.body.lr.ph ], [ %add18, %if.end.while.body_crit_edge ]
  %2 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %method, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.178)
  switch i8 %3, label %while.body.sw.epilog_crit_edge [
    i8 1, label %while.body.sw.epilog.sink.split_crit_edge
    i8 2, label %sw.bb9
  ]

while.body.sw.epilog.sink.split_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb9:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb9, %while.body.sw.epilog.sink.split_crit_edge
  %add10.sink59 = phi i32 [ %add10, %sw.bb9 ], [ %add3, %while.body.sw.epilog.sink.split_crit_edge ]
  %add11.sink58 = phi i32 [ %add11, %sw.bb9 ], [ %add10, %while.body.sw.epilog.sink.split_crit_edge ]
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add10.sink59, i8 noundef zeroext -86) #9
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add11.sink58, i8 noundef zeroext 85) #9
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add10.sink59, i8 noundef zeroext -128) #9
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add10.sink59, i8 noundef zeroext -86) #9
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add11.sink58, i8 noundef zeroext 85) #9
  %add15 = add i32 %sector_addr.054, %1
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add15, i8 noundef zeroext 48) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %while.body.sw.epilog_crit_edge
  %5 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flash, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end24.i.for.body.i_crit_edge, %sw.epilog
  %loop_cnt.047.i = phi i32 [ 0, %sw.epilog ], [ %inc.i, %if.end24.i.for.body.i_crit_edge ]
  %call.i = tail call zeroext i8 @asd_read_reg_byte(ptr noundef %asd_ha, i32 noundef %6) #9
  %call1.i = tail call zeroext i8 @asd_read_reg_byte(ptr noundef %asd_ha, i32 noundef %6) #9
  %and345.i = xor i8 %call1.i, %call.i
  %xor.i = and i8 %and345.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor.i)
  %cmp6.i = icmp eq i8 %xor.i, 0
  br i1 %cmp6.i, label %for.body.i.if.end_crit_edge, label %if.else.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else.i:                                        ; preds = %for.body.i
  %7 = and i8 %call1.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.else.i.if.end24.i_crit_edge, label %if.then10.i

if.else.i.if.end24.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.then10.i:                                      ; preds = %if.else.i
  %call11.i = tail call zeroext i8 @asd_read_reg_byte(ptr noundef %asd_ha, i32 noundef %6) #9
  %call12.i = tail call zeroext i8 @asd_read_reg_byte(ptr noundef %asd_ha, i32 noundef %6) #9
  %8 = xor i8 %call12.i, %call11.i
  %xor1746.i = and i8 %8, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor1746.i)
  %cmp20.i = icmp eq i8 %xor1746.i, 0
  br i1 %cmp20.i, label %if.then10.i.if.end_crit_edge, label %if.then10.i.if.end24.i_crit_edge

if.then10.i.if.end24.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.then10.i.if.end_crit_edge:                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end24.i:                                       ; preds = %if.then10.i.if.end24.i_crit_edge, %if.else.i.if.end24.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 10737400) #9
  %inc.i = add nuw nsw i32 %loop_cnt.047.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 50000
  br i1 %exitcond.not.i, label %if.end24.i.cleanup_crit_edge, label %if.end24.i.for.body.i_crit_edge

if.end24.i.for.body.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end24.i.cleanup_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then10.i.if.end_crit_edge, %for.body.i.if.end_crit_edge
  %add18 = add i32 %sector_addr.054, 65536
  %cmp = icmp ult i32 %add18, %add
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.end24.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 2048, %if.end24.i.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @asd_reset_flash(ptr noundef %asd_ha) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flash.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %c.014.i = phi i32 [ 5000, %entry ], [ %dec.i, %if.end.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %flash.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flash.i, align 4
  %call.i = tail call zeroext i8 @asd_read_reg_byte(ptr noundef %asd_ha, i32 noundef %1) #9
  %2 = ptrtoint ptr %flash.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flash.i, align 4
  %call4.i = tail call zeroext i8 @asd_read_reg_byte(ptr noundef %asd_ha, i32 noundef %3) #9
  call void @__sanitizer_cov_trace_cmp1(i8 %call.i, i8 %call4.i)
  %tobool.not.i = icmp eq i8 %call.i, %call4.i
  br i1 %tobool.not.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 1073740) #9
  %dec.i = add nsw i32 %c.014.i, -1
  %cmp.i = icmp ugt i32 %c.014.i, 1
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end:                                           ; preds = %for.body.i
  %5 = ptrtoint ptr %flash.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flash.i, align 4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %6, i8 noundef zeroext -16) #9
  br label %for.body.i12

for.body.i12:                                     ; preds = %if.end.i15.for.body.i12_crit_edge, %if.end
  %c.014.i8 = phi i32 [ 5000, %if.end ], [ %dec.i13, %if.end.i15.for.body.i12_crit_edge ]
  %7 = ptrtoint ptr %flash.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flash.i, align 4
  %call.i9 = tail call zeroext i8 @asd_read_reg_byte(ptr noundef %asd_ha, i32 noundef %8) #9
  %9 = ptrtoint ptr %flash.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flash.i, align 4
  %call4.i10 = tail call zeroext i8 @asd_read_reg_byte(ptr noundef %asd_ha, i32 noundef %10) #9
  call void @__sanitizer_cov_trace_cmp1(i8 %call.i9, i8 %call4.i10)
  %tobool.not.i11 = icmp eq i8 %call.i9, %call4.i10
  br i1 %tobool.not.i11, label %for.body.i12.cleanup_crit_edge, label %if.end.i15

for.body.i12.cleanup_crit_edge:                   ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i15:                                       ; preds = %for.body.i12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 1073740) #9
  %dec.i13 = add nsw i32 %c.014.i8, -1
  %cmp.i14 = icmp ugt i32 %c.014.i8, 1
  br i1 %cmp.i14, label %if.end.i15.for.body.i12_crit_edge, label %if.end.i15.cleanup_crit_edge

if.end.i15.cleanup_crit_edge:                     ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i15.for.body.i12_crit_edge:                ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i12

cleanup:                                          ; preds = %if.end.i15.cleanup_crit_edge, %for.body.i12.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.end.i15.cleanup_crit_edge ], [ 0, %for.body.i12.cleanup_crit_edge ], [ -2, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @asd_write_reg_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_chk_write_status(ptr noundef %asd_ha, i32 %sector_addr, i8 noundef zeroext %erase_flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flash = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %flash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flash, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %erase_flag)
  %tobool25.not = icmp eq i8 %erase_flag, 0
  %. = select i1 %tobool25.not, i32 5368700, i32 10737400
  br label %for.body

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %entry
  %loop_cnt.047 = phi i32 [ 0, %entry ], [ %inc, %if.end24.for.body_crit_edge ]
  %call = tail call zeroext i8 @asd_read_reg_byte(ptr noundef %asd_ha, i32 noundef %1) #9
  %call1 = tail call zeroext i8 @asd_read_reg_byte(ptr noundef %asd_ha, i32 noundef %1) #9
  %and345 = xor i8 %call1, %call
  %xor = and i8 %and345, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor)
  %cmp6 = icmp eq i8 %xor, 0
  br i1 %cmp6, label %for.body.cleanup_crit_edge, label %if.else

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %for.body
  %2 = and i8 %call1, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else.if.end24_crit_edge, label %if.then10

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then10:                                        ; preds = %if.else
  %call11 = tail call zeroext i8 @asd_read_reg_byte(ptr noundef %asd_ha, i32 noundef %1) #9
  %call12 = tail call zeroext i8 @asd_read_reg_byte(ptr noundef %asd_ha, i32 noundef %1) #9
  %3 = xor i8 %call12, %call11
  %xor1746 = and i8 %3, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor1746)
  %cmp20 = icmp eq i8 %xor1746, 0
  br i1 %cmp20, label %if.then10.cleanup_crit_edge, label %if.then10.if.end24_crit_edge

if.then10.if.end24_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.then10.if.end24_crit_edge, %if.else.if.end24_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef %.) #9
  %inc = add nuw nsw i32 %loop_cnt.047, 1
  %exitcond.not = icmp eq i32 %inc, 50000
  br i1 %exitcond.not, label %if.end24.cleanup_crit_edge, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end24.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body.cleanup_crit_edge ], [ 0, %if.then10.cleanup_crit_edge ], [ -1, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_read_reg_dword(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @asd_write_reg_string(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @asd_read_ocm_seg(ptr noundef %asd_ha, ptr noundef %buffer, i32 noundef %offs, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iospace = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 4
  %0 = ptrtoint ptr %iospace to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iospace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then, !prof !283

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp12 = icmp sgt i32 %size, 0
  br i1 %cmp12, label %for.body.lr.ph, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 6, i32 1
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %offs, -1610612736
  tail call void @asd_read_reg_string(ptr noundef %asd_ha, ptr noundef %buffer, i32 noundef %add, i32 noundef %size) #9
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %p.015 = phi ptr [ %buffer, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %size.addr.014 = phi i32 [ %size, %for.body.lr.ph ], [ %dec, %for.body.for.body_crit_edge ]
  %offs.addr.013 = phi i32 [ %offs, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %offs.addr.013
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !286
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !287
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !288
  %5 = ptrtoint ptr %p.015 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %p.015, align 1
  %dec = add nsw i32 %size.addr.014, -1
  %inc = add i32 %offs.addr.013, 1
  %incdec.ptr = getelementptr i8, ptr %p.015, i32 1
  %cmp = icmp ugt i32 %size.addr.014, 1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then, %for.cond.preheader.if.end_crit_edge
  %size.addr.1 = phi i32 [ %size, %if.then ], [ %size, %for.cond.preheader.if.end_crit_edge ], [ 0, %for.body.if.end_crit_edge ]
  ret i32 %size.addr.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @asd_read_reg_string(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @asd_ms_get_phy_params(ptr nocapture noundef %asd_ha, ptr noundef readonly %manuf_sec) unnamed_addr #0 align 64 {
entry:
  %dflt_phy_param = alloca %struct.asd_manuf_phy_param, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dflt_phy_param.sroa.gep = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %dflt_phy_param) #9
  %0 = call ptr @memset(ptr %dflt_phy_param, i32 255, i32 80)
  br label %do.body.i

do.body.i:                                        ; preds = %sw.epilog.i.do.body.i_crit_edge, %entry
  %el.0.i = phi ptr [ %manuf_sec, %entry ], [ %add.ptr.i, %sw.epilog.i.do.body.i_crit_edge ]
  %id11.i = getelementptr inbounds %struct.asd_ll_el, ptr %el.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %id11.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %id11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 77, i8 %2)
  %cmp.i = icmp eq i8 %2, 77
  br i1 %cmp.i, label %sw.bb.i, label %do.body.i.sw.epilog.i_crit_edge

do.body.i.sw.epilog.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %do.body.i
  %3 = ptrtoint ptr %el.0.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %el.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %4)
  %cmp8.i = icmp eq i8 %4, 80
  br i1 %cmp8.i, label %asd_find_ll_by_id.exit, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i.sw.epilog.i_crit_edge, %do.body.i.sw.epilog.i_crit_edge
  %next.i = getelementptr inbounds %struct.asd_ll_el, ptr %el.0.i, i32 0, i32 2
  %5 = ptrtoint ptr %next.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %next.i, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #9
  %conv12.i = zext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %manuf_sec, i32 %conv12.i
  %cmp13.not.i = icmp eq ptr %add.ptr.i, %manuf_sec
  br i1 %cmp13.not.i, label %sw.epilog.i.do.end_crit_edge, label %sw.epilog.i.do.body.i_crit_edge

sw.epilog.i.do.body.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

sw.epilog.i.do.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

asd_find_ll_by_id.exit:                           ; preds = %sw.bb.i
  %call.sroa.gep = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %el.0.i, i32 0, i32 2
  %tobool.not = icmp eq ptr %el.0.i, null
  br i1 %tobool.not, label %asd_find_ll_by_id.exit.do.end_crit_edge, label %asd_find_ll_by_id.exit.if.end_crit_edge

asd_find_ll_by_id.exit.if.end_crit_edge:          ; preds = %asd_find_ll_by_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

asd_find_ll_by_id.exit.do.end_crit_edge:          ; preds = %asd_find_ll_by_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %asd_find_ll_by_id.exit.do.end_crit_edge, %sw.epilog.i.do.end_crit_edge
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123) #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126) #12
  %8 = ptrtoint ptr %dflt_phy_param to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 80, ptr %dflt_phy_param, align 1
  %arrayidx8 = getelementptr inbounds [2 x i8], ptr %dflt_phy_param, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 77, ptr %arrayidx8, align 1
  %10 = ptrtoint ptr %dflt_phy_param.sroa.gep to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %dflt_phy_param.sroa.gep, align 1
  %min = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 3
  %11 = ptrtoint ptr %min to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %min, align 1
  %num_phy_desc = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 4
  %12 = ptrtoint ptr %num_phy_desc to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 8, ptr %num_phy_desc, align 1
  %phy_desc_size = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 5
  %13 = ptrtoint ptr %phy_desc_size to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 8, ptr %phy_desc_size, align 1
  %arrayidx9 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 0
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx9, align 1
  %phy_id = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 0, i32 1
  %15 = ptrtoint ptr %phy_id to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %phy_id, align 1
  %phy_control_0 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 0, i32 3
  %16 = ptrtoint ptr %phy_control_0 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -10, ptr %phy_control_0, align 1
  %phy_control_1 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 0, i32 4
  %17 = ptrtoint ptr %phy_control_1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 16, ptr %phy_control_1, align 1
  %phy_control_2 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 0, i32 5
  %18 = ptrtoint ptr %phy_control_2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 67, ptr %phy_control_2, align 1
  %phy_control_3 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 0, i32 6
  %19 = ptrtoint ptr %phy_control_3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -21, ptr %phy_control_3, align 1
  %arrayidx9.1 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx9.1, align 1
  %phy_id.1 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 1, i32 1
  %21 = ptrtoint ptr %phy_id.1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %phy_id.1, align 1
  %phy_control_0.1 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 1, i32 3
  %22 = ptrtoint ptr %phy_control_0.1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -10, ptr %phy_control_0.1, align 1
  %phy_control_1.1 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 1, i32 4
  %23 = ptrtoint ptr %phy_control_1.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 16, ptr %phy_control_1.1, align 1
  %phy_control_2.1 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 1, i32 5
  %24 = ptrtoint ptr %phy_control_2.1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 67, ptr %phy_control_2.1, align 1
  %phy_control_3.1 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 1, i32 6
  %25 = ptrtoint ptr %phy_control_3.1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -21, ptr %phy_control_3.1, align 1
  %arrayidx9.2 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 2
  %26 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx9.2, align 1
  %phy_id.2 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 2, i32 1
  %27 = ptrtoint ptr %phy_id.2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 2, ptr %phy_id.2, align 1
  %phy_control_0.2 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 2, i32 3
  %28 = ptrtoint ptr %phy_control_0.2 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -10, ptr %phy_control_0.2, align 1
  %phy_control_1.2 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 2, i32 4
  %29 = ptrtoint ptr %phy_control_1.2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 16, ptr %phy_control_1.2, align 1
  %phy_control_2.2 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 2, i32 5
  %30 = ptrtoint ptr %phy_control_2.2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 67, ptr %phy_control_2.2, align 1
  %phy_control_3.2 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 2, i32 6
  %31 = ptrtoint ptr %phy_control_3.2 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -21, ptr %phy_control_3.2, align 1
  %arrayidx9.3 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 3
  %32 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx9.3, align 1
  %phy_id.3 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 3, i32 1
  %33 = ptrtoint ptr %phy_id.3 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 3, ptr %phy_id.3, align 1
  %phy_control_0.3 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 3, i32 3
  %34 = ptrtoint ptr %phy_control_0.3 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -10, ptr %phy_control_0.3, align 1
  %phy_control_1.3 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 3, i32 4
  %35 = ptrtoint ptr %phy_control_1.3 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 16, ptr %phy_control_1.3, align 1
  %phy_control_2.3 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 3, i32 5
  %36 = ptrtoint ptr %phy_control_2.3 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 67, ptr %phy_control_2.3, align 1
  %phy_control_3.3 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 3, i32 6
  %37 = ptrtoint ptr %phy_control_3.3 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -21, ptr %phy_control_3.3, align 1
  %arrayidx9.4 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 4
  %38 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx9.4, align 1
  %phy_id.4 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 4, i32 1
  %39 = ptrtoint ptr %phy_id.4 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 4, ptr %phy_id.4, align 1
  %phy_control_0.4 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 4, i32 3
  %40 = ptrtoint ptr %phy_control_0.4 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -10, ptr %phy_control_0.4, align 1
  %phy_control_1.4 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 4, i32 4
  %41 = ptrtoint ptr %phy_control_1.4 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 16, ptr %phy_control_1.4, align 1
  %phy_control_2.4 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 4, i32 5
  %42 = ptrtoint ptr %phy_control_2.4 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 67, ptr %phy_control_2.4, align 1
  %phy_control_3.4 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 4, i32 6
  %43 = ptrtoint ptr %phy_control_3.4 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -21, ptr %phy_control_3.4, align 1
  %arrayidx9.5 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 5
  %44 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %arrayidx9.5, align 1
  %phy_id.5 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 5, i32 1
  %45 = ptrtoint ptr %phy_id.5 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 5, ptr %phy_id.5, align 1
  %phy_control_0.5 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 5, i32 3
  %46 = ptrtoint ptr %phy_control_0.5 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -10, ptr %phy_control_0.5, align 1
  %phy_control_1.5 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 5, i32 4
  %47 = ptrtoint ptr %phy_control_1.5 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 16, ptr %phy_control_1.5, align 1
  %phy_control_2.5 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 5, i32 5
  %48 = ptrtoint ptr %phy_control_2.5 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 67, ptr %phy_control_2.5, align 1
  %phy_control_3.5 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 5, i32 6
  %49 = ptrtoint ptr %phy_control_3.5 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -21, ptr %phy_control_3.5, align 1
  %arrayidx9.6 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 6
  %50 = ptrtoint ptr %arrayidx9.6 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %arrayidx9.6, align 1
  %phy_id.6 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 6, i32 1
  %51 = ptrtoint ptr %phy_id.6 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 6, ptr %phy_id.6, align 1
  %phy_control_0.6 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 6, i32 3
  %52 = ptrtoint ptr %phy_control_0.6 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -10, ptr %phy_control_0.6, align 1
  %phy_control_1.6 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 6, i32 4
  %53 = ptrtoint ptr %phy_control_1.6 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 16, ptr %phy_control_1.6, align 1
  %phy_control_2.6 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 6, i32 5
  %54 = ptrtoint ptr %phy_control_2.6 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 67, ptr %phy_control_2.6, align 1
  %phy_control_3.6 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 6, i32 6
  %55 = ptrtoint ptr %phy_control_3.6 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -21, ptr %phy_control_3.6, align 1
  %arrayidx9.7 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 7
  %56 = ptrtoint ptr %arrayidx9.7 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %arrayidx9.7, align 1
  %phy_id.7 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 7, i32 1
  %57 = ptrtoint ptr %phy_id.7 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 7, ptr %phy_id.7, align 1
  %phy_control_0.7 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 7, i32 3
  %58 = ptrtoint ptr %phy_control_0.7 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -10, ptr %phy_control_0.7, align 1
  %phy_control_1.7 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 7, i32 4
  %59 = ptrtoint ptr %phy_control_1.7 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 16, ptr %phy_control_1.7, align 1
  %phy_control_2.7 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 7, i32 5
  %60 = ptrtoint ptr %phy_control_2.7 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 67, ptr %phy_control_2.7, align 1
  %phy_control_3.7 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %dflt_phy_param, i32 0, i32 9, i32 7, i32 6
  %61 = ptrtoint ptr %phy_control_3.7 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -21, ptr %phy_control_3.7, align 1
  br label %if.end

if.end:                                           ; preds = %do.end, %asd_find_ll_by_id.exit.if.end_crit_edge
  %phy_param.0 = phi ptr [ %el.0.i, %asd_find_ll_by_id.exit.if.end_crit_edge ], [ %dflt_phy_param, %do.end ]
  %phy_param.0.sroa.phi = phi ptr [ %call.sroa.gep, %asd_find_ll_by_id.exit.if.end_crit_edge ], [ %dflt_phy_param.sroa.gep, %do.end ]
  %62 = ptrtoint ptr %phy_param.0.sroa.phi to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %phy_param.0.sroa.phi, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp22.not = icmp eq i8 %63, 0
  br i1 %cmp22.not, label %do.end35, label %do.end27

do.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %maj29 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %phy_param.0, i32 0, i32 2
  br label %cleanup121

do.end35:                                         ; preds = %if.end
  %num_phy_desc37 = getelementptr inbounds %struct.asd_manuf_phy_param, ptr %phy_param.0, i32 0, i32 4
  %64 = ptrtoint ptr %num_phy_desc37 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %num_phy_desc37, align 1
  %conv38 = zext i8 %65 to i32
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, i32 noundef %conv38) #12
  %enabled_phys = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 5
  %66 = ptrtoint ptr %enabled_phys to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %enabled_phys, align 1
  %67 = ptrtoint ptr %num_phy_desc37 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %num_phy_desc37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp43175.not = icmp eq i8 %68, 0
  br i1 %cmp43175.not, label %do.end35.for.end101_crit_edge, label %do.end35.for.body45_crit_edge

do.end35.for.body45_crit_edge:                    ; preds = %do.end35
  br label %for.body45

do.end35.for.end101_crit_edge:                    ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end101

for.body45:                                       ; preds = %cleanup.for.body45_crit_edge, %do.end35.for.body45_crit_edge
  %i.1178 = phi i32 [ %inc100, %cleanup.for.body45_crit_edge ], [ 0, %do.end35.for.body45_crit_edge ]
  %en_phys.0177 = phi i32 [ %en_phys.2, %cleanup.for.body45_crit_edge ], [ 0, %do.end35.for.body45_crit_edge ]
  %rep_phys.0176 = phi i32 [ %rep_phys.1, %cleanup.for.body45_crit_edge ], [ 0, %do.end35.for.body45_crit_edge ]
  %arrayidx47 = getelementptr %struct.asd_manuf_phy_param, ptr %phy_param.0, i32 0, i32 9, i32 %i.1178
  %69 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx47, align 1
  %71 = and i8 %70, 15
  %and = zext i8 %71 to i32
  %72 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %and, label %for.body45.sw.epilog_crit_edge [
    i32 2, label %do.end52
    i32 1, label %do.end58
    i32 0, label %do.end70
  ]

for.body45.sw.epilog_crit_edge:                   ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end52:                                         ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #11
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, i32 noundef %i.1178) #12
  br label %cleanup

do.end58:                                         ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #11
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i32 noundef %i.1178) #12
  %shl = shl nuw i32 1, %i.1178
  %73 = ptrtoint ptr %enabled_phys to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %enabled_phys, align 1
  %75 = trunc i32 %shl to i8
  %76 = xor i8 %75, -1
  %conv65 = and i8 %74, %76
  store i8 %conv65, ptr %enabled_phys, align 1
  %inc66 = add i32 %rep_phys.0176, 1
  br label %cleanup

do.end70:                                         ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #11
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef %i.1178) #12
  %shl73 = shl nuw i32 1, %i.1178
  %77 = ptrtoint ptr %enabled_phys to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %enabled_phys, align 1
  %79 = trunc i32 %shl73 to i8
  %conv77 = or i8 %78, %79
  store i8 %conv77, ptr %enabled_phys, align 1
  %inc78 = add i32 %en_phys.0177, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end70, %for.body45.sw.epilog_crit_edge
  %en_phys.1 = phi i32 [ %en_phys.0177, %for.body45.sw.epilog_crit_edge ], [ %inc78, %do.end70 ]
  %phy_control_079 = getelementptr %struct.asd_manuf_phy_param, ptr %phy_param.0, i32 0, i32 9, i32 %i.1178, i32 3
  %80 = ptrtoint ptr %phy_control_079 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %phy_control_079, align 1
  %phy_control_083 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 %i.1178, i32 6
  %82 = ptrtoint ptr %phy_control_083 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %phy_control_083, align 1
  %phy_control_184 = getelementptr %struct.asd_manuf_phy_param, ptr %phy_param.0, i32 0, i32 9, i32 %i.1178, i32 4
  %83 = ptrtoint ptr %phy_control_184 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %phy_control_184, align 1
  %phy_control_188 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 %i.1178, i32 7
  %85 = ptrtoint ptr %phy_control_188 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %phy_control_188, align 1
  %phy_control_289 = getelementptr %struct.asd_manuf_phy_param, ptr %phy_param.0, i32 0, i32 9, i32 %i.1178, i32 5
  %86 = ptrtoint ptr %phy_control_289 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %phy_control_289, align 1
  %phy_control_293 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 %i.1178, i32 8
  %88 = ptrtoint ptr %phy_control_293 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %phy_control_293, align 1
  %phy_control_394 = getelementptr %struct.asd_manuf_phy_param, ptr %phy_param.0, i32 0, i32 9, i32 %i.1178, i32 6
  %89 = ptrtoint ptr %phy_control_394 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %phy_control_394, align 1
  %phy_control_398 = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 6, i32 %i.1178, i32 9
  %91 = ptrtoint ptr %phy_control_398 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %phy_control_398, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end58, %do.end52
  %rep_phys.1 = phi i32 [ %rep_phys.0176, %sw.epilog ], [ %inc66, %do.end58 ], [ %rep_phys.0176, %do.end52 ]
  %en_phys.2 = phi i32 [ %en_phys.1, %sw.epilog ], [ %en_phys.0177, %do.end58 ], [ %en_phys.0177, %do.end52 ]
  %inc100 = add nuw nsw i32 %i.1178, 1
  %92 = ptrtoint ptr %num_phy_desc37 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %num_phy_desc37, align 1
  %conv42 = zext i8 %93 to i32
  %cmp43 = icmp ult i32 %inc100, %conv42
  br i1 %cmp43, label %cleanup.for.body45_crit_edge, label %cleanup.for.end101_crit_edge

cleanup.for.end101_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end101

cleanup.for.body45_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body45

for.end101:                                       ; preds = %cleanup.for.end101_crit_edge, %do.end35.for.end101_crit_edge
  %rep_phys.0.lcssa = phi i32 [ 0, %do.end35.for.end101_crit_edge ], [ %rep_phys.1, %cleanup.for.end101_crit_edge ]
  %en_phys.0.lcssa = phi i32 [ 0, %do.end35.for.end101_crit_edge ], [ %en_phys.2, %cleanup.for.end101_crit_edge ]
  %add = add i32 %en_phys.0.lcssa, %rep_phys.0.lcssa
  %max_phys = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 14
  %94 = ptrtoint ptr %max_phys to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %add, ptr %max_phys, align 4
  %num_phys = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 13
  %95 = ptrtoint ptr %num_phys to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %en_phys.0.lcssa, ptr %num_phys, align 4
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i32 noundef %add, i32 noundef %en_phys.0.lcssa) #12
  br label %cleanup121

cleanup121:                                       ; preds = %for.end101, %do.end27
  %enabled_phys.sink = phi ptr [ %enabled_phys, %for.end101 ], [ %maj29, %do.end27 ]
  %.str.147.sink = phi ptr [ @.str.147, %for.end101 ], [ @.str.129, %do.end27 ]
  %retval.0 = phi i32 [ 0, %for.end101 ], [ -2, %do.end27 ]
  %96 = ptrtoint ptr %enabled_phys.sink to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %enabled_phys.sink, align 1
  %conv119 = zext i8 %97 to i32
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.147.sink, i32 noundef %conv119) #12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %dflt_phy_param) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @asd_ms_get_connector_map(ptr noundef readonly %manuf_sec) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body.i

do.body.i:                                        ; preds = %sw.epilog.i.do.body.i_crit_edge, %entry
  %el.0.i = phi ptr [ %manuf_sec, %entry ], [ %add.ptr.i, %sw.epilog.i.do.body.i_crit_edge ]
  %id11.i = getelementptr inbounds %struct.asd_ll_el, ptr %el.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %id11.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %1)
  %cmp.i = icmp eq i8 %1, 67
  br i1 %cmp.i, label %sw.bb.i, label %do.body.i.sw.epilog.i_crit_edge

do.body.i.sw.epilog.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %do.body.i
  %2 = ptrtoint ptr %el.0.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %el.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 77, i8 %3)
  %cmp8.i = icmp eq i8 %3, 77
  br i1 %cmp8.i, label %asd_find_ll_by_id.exit, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i.sw.epilog.i_crit_edge, %do.body.i.sw.epilog.i_crit_edge
  %next.i = getelementptr inbounds %struct.asd_ll_el, ptr %el.0.i, i32 0, i32 2
  %4 = ptrtoint ptr %next.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %next.i, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #9
  %conv12.i = zext i16 %6 to i32
  %add.ptr.i = getelementptr i8, ptr %manuf_sec, i32 %conv12.i
  %cmp13.not.i = icmp eq ptr %add.ptr.i, %manuf_sec
  br i1 %cmp13.not.i, label %sw.epilog.i.do.end_crit_edge, label %sw.epilog.i.do.body.i_crit_edge

sw.epilog.i.do.body.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

sw.epilog.i.do.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

asd_find_ll_by_id.exit:                           ; preds = %sw.bb.i
  %tobool.not = icmp eq ptr %el.0.i, null
  br i1 %tobool.not, label %asd_find_ll_by_id.exit.do.end_crit_edge, label %if.end

asd_find_ll_by_id.exit.do.end_crit_edge:          ; preds = %asd_find_ll_by_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %asd_find_ll_by_id.exit.do.end_crit_edge, %sw.epilog.i.do.end_crit_edge
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149) #12
  br label %cleanup

if.end:                                           ; preds = %asd_find_ll_by_id.exit
  %maj = getelementptr inbounds %struct.asd_ms_conn_map, ptr %el.0.i, i32 0, i32 2
  %7 = ptrtoint ptr %maj to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %maj, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.not = icmp eq i8 %8, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %8 to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, i32 noundef %conv) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -2, %do.end6 ], [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 140)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 140)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !47, !49, !50, !52, !53, !54, !56, !57, !59, !60, !61, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !108, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !237, !239, !240, !241, !243, !244, !245, !246, !248, !249, !250, !252, !253, !254, !256, !257, !258, !260, !261, !262, !264, !265, !266, !268, !269, !270}
!llvm.module.flags = !{!271, !272, !273, !274, !275, !276, !277, !278}
!llvm.ident = !{!279}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 346, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @asd_read_ocm._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @asd_read_ocm._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 1049, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @asd_read_flash._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @asd_read_flash._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 1054, i32 3}
!13 = !{ptr @asd_read_flash._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @asd_read_flash._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 1061, i32 3}
!17 = !{ptr @asd_read_flash._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @asd_read_flash._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 1067, i32 3}
!21 = !{ptr @asd_read_flash._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @asd_read_flash._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 1126, i32 3}
!25 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @asd_write_flash_seg._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @asd_write_flash_seg._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 1133, i32 3}
!30 = !{ptr @asd_write_flash_seg._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @asd_write_flash_seg._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 1140, i32 3}
!34 = !{ptr @asd_write_flash_seg._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @asd_write_flash_seg._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 1179, i32 4}
!38 = !{ptr @asd_write_flash_seg._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @asd_write_flash_seg._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @asd_write_flash_seg._entry.25, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 1187, i32 3}
!42 = !{ptr @asd_write_flash_seg._entry_ptr.26, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 1316, i32 3}
!45 = !{ptr @asd_check_flash_type._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @asd_check_flash_type._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @asd_check_flash_type._entry.28, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 1338, i32 3}
!49 = !{ptr @asd_check_flash_type._entry_ptr.29, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.31, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 1341, i32 2}
!52 = !{ptr @asd_check_flash_type._entry.30, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @asd_check_flash_type._entry_ptr.32, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @asd_check_flash_type._entry.33, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 1389, i32 4}
!56 = !{ptr @asd_check_flash_type._entry_ptr.34, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.36, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 1401, i32 3}
!59 = !{ptr @asd_check_flash_type._entry.35, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @asd_check_flash_type._entry_ptr.37, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @asd_check_flash_type._entry.38, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 1406, i32 4}
!63 = !{ptr @asd_check_flash_type._entry_ptr.39, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.40, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 307, i32 4}
!66 = !{ptr @.str.41, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @asd_hwi_check_ocm_access._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @asd_hwi_check_ocm_access._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.43, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 312, i32 3}
!71 = !{ptr @asd_hwi_check_ocm_access._entry.42, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @asd_hwi_check_ocm_access._entry_ptr.44, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.46, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 320, i32 4}
!75 = !{ptr @asd_hwi_check_ocm_access._entry.45, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @asd_hwi_check_ocm_access._entry_ptr.47, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @OCMDirInit, !78, !"OCMDirInit", i1 false, i1 false}
!78 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 53, i32 27}
!79 = !{ptr @OCMDirEntriesInit, !80, !"OCMDirEntriesInit", i1 false, i1 false}
!80 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 62, i32 31}
!81 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 134, i32 3}
!83 = !{ptr @.str.49, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @asd_read_ocm_dir._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @asd_read_ocm_dir._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.51, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 139, i32 3}
!88 = !{ptr @asd_read_ocm_dir._entry.50, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @asd_read_ocm_dir._entry_ptr.52, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.54, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 144, i32 3}
!92 = !{ptr @asd_read_ocm_dir._entry.53, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @asd_read_ocm_dir._entry_ptr.55, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.56, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 206, i32 3}
!96 = !{ptr @.str.57, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @asd_get_bios_chim._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @asd_get_bios_chim._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.59, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 212, i32 3}
!101 = !{ptr @asd_get_bios_chim._entry.58, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @asd_get_bios_chim._entry_ptr.60, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @asd_get_bios_chim._entry.61, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 218, i32 3}
!105 = !{ptr @asd_get_bios_chim._entry_ptr.62, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.63, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 221, i32 30}
!108 = !{ptr @.str.64, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 222, i32 33}
!110 = !{ptr @.str.66, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 223, i32 3}
!112 = !{ptr @asd_get_bios_chim._entry.65, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @asd_get_bios_chim._entry_ptr.67, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.69, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 230, i32 3}
!116 = !{ptr @asd_get_bios_chim._entry.68, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @asd_get_bios_chim._entry_ptr.70, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.72, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 240, i32 3}
!120 = !{ptr @asd_get_bios_chim._entry.71, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @asd_get_bios_chim._entry_ptr.73, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.75, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 247, i32 2}
!124 = !{ptr @asd_get_bios_chim._entry.74, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @asd_get_bios_chim._entry_ptr.76, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.78, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 262, i32 4}
!128 = !{ptr @asd_get_bios_chim._entry.77, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @asd_get_bios_chim._entry_ptr.79, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.80, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 621, i32 3}
!132 = !{ptr @.str.81, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @asd_flash_getid._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @asd_flash_getid._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.83, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 629, i32 3}
!137 = !{ptr @asd_flash_getid._entry.82, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @asd_flash_getid._entry_ptr.84, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.85, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 601, i32 33}
!141 = !{ptr @.str.86, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 863, i32 3}
!143 = !{ptr @.str.87, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @asd_process_ms._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @asd_process_ms._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.89, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 873, i32 3}
!148 = !{ptr @asd_process_ms._entry.88, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @asd_process_ms._entry_ptr.90, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.92, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 879, i32 3}
!152 = !{ptr @asd_process_ms._entry.91, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @asd_process_ms._entry_ptr.93, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.95, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 886, i32 3}
!156 = !{ptr @asd_process_ms._entry.94, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @asd_process_ms._entry_ptr.96, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.98, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 892, i32 3}
!160 = !{ptr @asd_process_ms._entry.97, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @asd_process_ms._entry_ptr.99, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.101, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 895, i32 2}
!164 = !{ptr @asd_process_ms._entry.100, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @asd_process_ms._entry_ptr.102, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.104, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 900, i32 3}
!168 = !{ptr @asd_process_ms._entry.103, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @asd_process_ms._entry_ptr.105, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.107, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 903, i32 2}
!172 = !{ptr @asd_process_ms._entry.106, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @asd_process_ms._entry_ptr.108, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.110, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 907, i32 3}
!176 = !{ptr @asd_process_ms._entry.109, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @asd_process_ms._entry_ptr.111, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.113, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 913, i32 3}
!180 = !{ptr @asd_process_ms._entry.112, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @asd_process_ms._entry_ptr.114, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.115, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 670, i32 3}
!184 = !{ptr @.str.116, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @asd_validate_ms._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @asd_validate_ms._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.118, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 675, i32 3}
!189 = !{ptr @asd_validate_ms._entry.117, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @asd_validate_ms._entry_ptr.119, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.121, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 684, i32 3}
!193 = !{ptr @asd_validate_ms._entry.120, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @asd_validate_ms._entry_ptr.122, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.123, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 767, i32 3}
!197 = !{ptr @.str.124, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @asd_ms_get_phy_params._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @asd_ms_get_phy_params._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.126, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 768, i32 3}
!202 = !{ptr @asd_ms_get_phy_params._entry.125, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @asd_ms_get_phy_params._entry_ptr.127, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.129, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 789, i32 3}
!206 = !{ptr @asd_ms_get_phy_params._entry.128, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @asd_ms_get_phy_params._entry_ptr.130, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.132, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 794, i32 2}
!210 = !{ptr @asd_ms_get_phy_params._entry.131, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @asd_ms_get_phy_params._entry_ptr.133, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.135, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 800, i32 4}
!214 = !{ptr @asd_ms_get_phy_params._entry.134, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @asd_ms_get_phy_params._entry_ptr.136, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.138, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 803, i32 4}
!218 = !{ptr @asd_ms_get_phy_params._entry.137, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @asd_ms_get_phy_params._entry_ptr.139, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.141, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 808, i32 4}
!222 = !{ptr @asd_ms_get_phy_params._entry.140, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @asd_ms_get_phy_params._entry_ptr.142, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.144, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 820, i32 2}
!226 = !{ptr @asd_ms_get_phy_params._entry.143, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @asd_ms_get_phy_params._entry_ptr.145, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.147, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 822, i32 2}
!230 = !{ptr @asd_ms_get_phy_params._entry.146, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @asd_ms_get_phy_params._entry_ptr.148, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.149, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 833, i32 3}
!234 = !{ptr @.str.150, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @asd_ms_get_connector_map._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @asd_ms_get_connector_map._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.152, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 838, i32 3}
!239 = !{ptr @asd_ms_get_connector_map._entry.151, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @asd_ms_get_connector_map._entry_ptr.153, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.154, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 978, i32 3}
!243 = !{ptr @.str.155, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @asd_process_ctrl_a_user._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @asd_process_ctrl_a_user._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.157, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 979, i32 3}
!248 = !{ptr @asd_process_ctrl_a_user._entry.156, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @asd_process_ctrl_a_user._entry_ptr.158, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.160, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 1002, i32 3}
!252 = !{ptr @asd_process_ctrl_a_user._entry.159, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @asd_process_ctrl_a_user._entry_ptr.161, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.163, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 1008, i32 3}
!256 = !{ptr @asd_process_ctrl_a_user._entry.162, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @asd_process_ctrl_a_user._entry_ptr.164, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.166, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 1015, i32 3}
!260 = !{ptr @asd_process_ctrl_a_user._entry.165, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @asd_process_ctrl_a_user._entry_ptr.167, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.169, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 1021, i32 3}
!264 = !{ptr @asd_process_ctrl_a_user._entry.168, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @asd_process_ctrl_a_user._entry_ptr.170, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.171, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/scsi/aic94xx/aic94xx_sds.c", i32 948, i32 3}
!268 = !{ptr @.str.172, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @asd_process_ctrla_phy_settings._entry, !267, !"_entry", i1 false, i1 false}
!270 = !{ptr @asd_process_ctrla_phy_settings._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!271 = !{i32 1, !"wchar_size", i32 2}
!272 = !{i32 1, !"min_enum_size", i32 4}
!273 = !{i32 8, !"branch-target-enforcement", i32 0}
!274 = !{i32 8, !"sign-return-address", i32 0}
!275 = !{i32 8, !"sign-return-address-all", i32 0}
!276 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!277 = !{i32 7, !"uwtable", i32 1}
!278 = !{i32 7, !"frame-pointer", i32 2}
!279 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!280 = !{!"auto-init"}
!281 = !{i64 2155953732}
!282 = !{i64 5014608}
!283 = !{!"branch_weights", i32 2000, i32 1}
!284 = !{i64 2155951816}
!285 = !{i64 5014411}
!286 = !{i64 5014806}
!287 = !{i64 2155948274}
!288 = !{i64 2155948365}
