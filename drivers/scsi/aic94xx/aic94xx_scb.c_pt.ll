; ModuleID = '/llk/IR_all_yes/drivers/scsi/aic94xx/aic94xx_scb.c_pt.bc'
source_filename = "../drivers/scsi/aic94xx/aic94xx_scb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.asd_ascb = type { %struct.list_head, ptr, ptr, %struct.asd_dma_tok, ptr, ptr, i8, %struct.timer_list, ptr, i8, i16, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.asd_dma_tok = type { ptr, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.scb = type { %struct.scb_header, %union.anon.95 }
%struct.scb_header = type <{ i64, i16, i8 }>
%union.anon.95 = type { %struct.initiate_ssp_task }
%struct.initiate_ssp_task = type <{ i8, i32, %struct.ssp_frame_hdr, %struct.ssp_command_iu, i16, i16, i8, i8, i8, [5 x i8], [3 x %struct.sg_el] }>
%struct.ssp_frame_hdr = type { i8, [3 x i8], i8, [3 x i8], i16, i16, i32, i16, i16, i32 }
%struct.ssp_command_iu = type { [8 x i8], i8, %union.anon.96, i8, i8, [16 x i8], [0 x i8] }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { i8 }
%struct.sg_el = type { i64, i32, i16, i8, i8 }
%struct.asd_ha_struct = type { ptr, ptr, %struct.sas_ha_struct, i8, i32, %struct.spinlock, [2 x %struct.asd_ha_addrspace], %struct.hw_profile, [8 x %struct.asd_phy], %struct.spinlock, [8 x %struct.asd_port], [8 x %struct.asd_sas_port], ptr, %struct.asd_seq_data, i32, ptr }
%struct.sas_ha_struct = type { %struct.list_head, %struct.mutex, i32, %struct.spinlock, i32, %struct.wait_queue_head, %struct.list_head, %struct.mutex, %struct.scsi_core, ptr, ptr, ptr, ptr, ptr, ptr, [3 x i8], %struct.spinlock, ptr, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.scsi_core = type { ptr }
%struct.asd_ha_addrspace = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.hw_profile = type { %struct.bios_struct, %struct.unit_element_struct, %struct.flash_struct, [8 x i8], [13 x i8], i8, [8 x %struct.asd_phy_desc], i32, ptr, i32, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32 }
%struct.bios_struct = type { i32, i8, i8, i32 }
%struct.unit_element_struct = type { i16, i16, ptr }
%struct.flash_struct = type { i32, i32, i32, i8, i8, i8, i8, i32 }
%struct.asd_phy_desc = type { [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asd_phy = type { %struct.asd_sas_phy, ptr, ptr, ptr, ptr, [1068 x i8] }
%struct.asd_sas_phy = type { %struct.atomic_t, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [8 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, %struct.list_head, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.asd_port = type { [8 x i8], [8 x i8], i32, i32 }
%struct.asd_sas_port = type { %struct.sas_discovery, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.sas_work, i32, i32, i32, [8 x i8], [8 x i8], i32, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, ptr, ptr, ptr }
%struct.sas_discovery = type { [4 x %struct.sas_discovery_event], i32, [8 x i8], [8 x i8], [8 x i8], i32 }
%struct.sas_discovery_event = type { %struct.sas_work, ptr }
%struct.sas_work = type { %struct.list_head, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.asd_seq_data = type { %struct.spinlock, i16, i32, %struct.list_head, i32, %struct.asd_dma_tok, %struct.spinlock, ptr, ptr, i32, %struct.tasklet_struct, ptr, ptr, i32, i32, i32, ptr, i32, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.94, i32 }
%union.anon.94 = type { ptr }
%struct.done_list_struct = type { i16, i8, [4 x i8], i8 }
%struct.domain_device = type { %struct.spinlock, i32, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, [8 x i8], [3 x i8], [32 x i8], [101 x i8], %union.anon.84, ptr, i32, %struct.kref, [116 x i8] }
%union.anon.84 = type { %struct.sata_device }
%struct.sata_device = type { i32, i8, ptr, ptr, [112 x i8], %struct.smp_resp, [24 x i8], [44 x i8] }
%struct.smp_resp = type { i8, i8, i8, i8, %union.anon.86 }
%union.anon.86 = type { %struct.report_phy_sata_resp }
%struct.report_phy_sata_resp = type { [5 x i8], i8, i8, i8, i32, [8 x i8], %struct.dev_to_host_fis, i32, [8 x i8], i32 }
%struct.dev_to_host_fis = type { i8, i8, i8, i8, i8, %union.anon.87, %union.anon.88, i8, i8, i8, i8, i8, %union.anon.89, i8, i8, i8, i32 }
%union.anon.87 = type { i8 }
%union.anon.88 = type { i8 }
%union.anon.89 = type { i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sas_task = type { ptr, %struct.spinlock, i32, i32, %union.anon.101, ptr, i32, i32, i8, %struct.task_status_struct, ptr, ptr, ptr, ptr }
%union.anon.101 = type { %struct.sas_smp_task }
%struct.sas_smp_task = type { %struct.scatterlist, %struct.scatterlist }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.task_status_struct = type { i32, i32, i32, [96 x i8], i32, i32 }
%struct.sas_identify_frame = type { i8, i8, %union.anon.90, %union.anon.92, [8 x i8], [8 x i8], i8, [7 x i8], i32 }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { i8 }
%union.anon.92 = type { %struct.anon.93 }
%struct.anon.93 = type { i8 }
%struct.sas_phy = type { %struct.device, i32, i32, %struct.sas_identify, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.sas_identify = type { i32, i32, i32, i64, i8 }
%struct.control_phy = type <{ i8, i8, i8, i8, i8, i8, i8, i32, i8, [47 x i8], i16, [56 x i8] }>
%struct.sas_phy_linkrates = type { i32, i32 }

@asd_invalidate_edb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015aic94xx: couldn't post escb, err:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"asd_invalidate_edb\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/aic94xx/aic94xx_scb.c\00", [61 x i8] zeroinitializer }, align 32
@asd_invalidate_edb._entry_ptr = internal global ptr @asd_invalidate_edb._entry, section ".printk_index", align 4
@asd_init_post_escbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015aic94xx: posting %d escbs\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"asd_init_post_escbs\00", [44 x i8] zeroinitializer }, align 32
@asd_init_post_escbs._entry_ptr = internal global ptr @asd_init_post_escbs._entry, section ".printk_index", align 4
@asd_ascb_timedout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 869, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015aic94xx: scb:0x%x timed out\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"asd_ascb_timedout\00", [46 x i8] zeroinitializer }, align 32
@asd_ascb_timedout._entry_ptr = internal global ptr @asd_ascb_timedout._entry, section ".printk_index", align 4
@phy_func_table = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 5, i32 1, i32 129, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2], [60 x i8] zeroinitializer }, align 32
@escb_tasklet_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015aic94xx: edb is 0x%x! dl->opcode is 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"escb_tasklet_complete\00", [42 x i8] zeroinitializer }, align 32
@escb_tasklet_complete._entry_ptr = internal global ptr @escb_tasklet_complete._entry, section ".printk_index", align 4
@escb_tasklet_complete._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015aic94xx: sb_opcode : 0x%x, phy_id: 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@escb_tasklet_complete._entry_ptr.11 = internal global ptr @escb_tasklet_complete._entry.9, section ".printk_index", align 4
@escb_tasklet_complete._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\015aic94xx: escb: vaddr: 0x%p, dma_handle: 0x%llx, next: 0x%llx, index:%d, opcode:0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@escb_tasklet_complete._entry_ptr.14 = internal global ptr @escb_tasklet_complete._entry.12, section ".printk_index", align 4
@escb_tasklet_complete._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.2, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015aic94xx: %s: REQ_TASK_ABORT, reason=0x%X\0A\00", [52 x i8] zeroinitializer }, align 32
@escb_tasklet_complete._entry_ptr.17 = internal global ptr @escb_tasklet_complete._entry.15, section ".printk_index", align 4
@escb_tasklet_complete._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.8, ptr @.str.2, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015aic94xx: R_T_A for non TASK scb 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@escb_tasklet_complete._entry_ptr.20 = internal global ptr @escb_tasklet_complete._entry.18, section ".printk_index", align 4
@escb_tasklet_complete._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.8, ptr @.str.2, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015aic94xx: %s: Can't find task (tc=%d) to abort!\0A\00", [46 x i8] zeroinitializer }, align 32
@escb_tasklet_complete._entry_ptr.23 = internal global ptr @escb_tasklet_complete._entry.21, section ".printk_index", align 4
@escb_tasklet_complete._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.8, ptr @.str.2, i32 491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015aic94xx: %s: REQ_DEVICE_RESET, reason=0x%X\0A\00", [50 x i8] zeroinitializer }, align 32
@escb_tasklet_complete._entry_ptr.26 = internal global ptr @escb_tasklet_complete._entry.24, section ".printk_index", align 4
@escb_tasklet_complete._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.8, ptr @.str.2, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015aic94xx: %s: Device reset for idle device %d?\0A\00", [47 x i8] zeroinitializer }, align 32
@escb_tasklet_complete._entry_ptr.29 = internal global ptr @escb_tasklet_complete._entry.27, section ".printk_index", align 4
@escb_tasklet_complete._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.8, ptr @.str.2, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015aic94xx: %s: SIGNAL_NCQ_ERROR\0A\00", [63 x i8] zeroinitializer }, align 32
@escb_tasklet_complete._entry_ptr.32 = internal global ptr @escb_tasklet_complete._entry.30, section ".printk_index", align 4
@escb_tasklet_complete._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.8, ptr @.str.2, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015aic94xx: %s: CLEAR_NCQ_ERROR\0A\00", [32 x i8] zeroinitializer }, align 32
@escb_tasklet_complete._entry_ptr.35 = internal global ptr @escb_tasklet_complete._entry.33, section ".printk_index", align 4
@escb_tasklet_complete._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.8, ptr @.str.2, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015aic94xx: %s: phy%d: BYTES_DMAED\0A\00", [61 x i8] zeroinitializer }, align 32
@escb_tasklet_complete._entry_ptr.38 = internal global ptr @escb_tasklet_complete._entry.36, section ".printk_index", align 4
@escb_tasklet_complete._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.8, ptr @.str.2, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015aic94xx: %s: phy%d: PRIMITIVE_RECVD\0A\00", [57 x i8] zeroinitializer }, align 32
@escb_tasklet_complete._entry_ptr.41 = internal global ptr @escb_tasklet_complete._entry.39, section ".printk_index", align 4
@escb_tasklet_complete._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.8, ptr @.str.2, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015aic94xx: %s: phy%d: PHY_EVENT\0A\00", [63 x i8] zeroinitializer }, align 32
@escb_tasklet_complete._entry_ptr.44 = internal global ptr @escb_tasklet_complete._entry.42, section ".printk_index", align 4
@escb_tasklet_complete._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.8, ptr @.str.2, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015aic94xx: %s: phy%d: LINK_RESET_ERROR\0A\00", [56 x i8] zeroinitializer }, align 32
@escb_tasklet_complete._entry_ptr.47 = internal global ptr @escb_tasklet_complete._entry.45, section ".printk_index", align 4
@escb_tasklet_complete._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.8, ptr @.str.2, i32 567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015aic94xx: %s: phy%d: TIMER_EVENT, lost dw sync\0A\00", [47 x i8] zeroinitializer }, align 32
@escb_tasklet_complete._entry_ptr.50 = internal global ptr @escb_tasklet_complete._entry.48, section ".printk_index", align 4
@escb_tasklet_complete._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.8, ptr @.str.2, i32 576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015aic94xx: %s: phy%d: unknown event:0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@escb_tasklet_complete._entry_ptr.53 = internal global ptr @escb_tasklet_complete._entry.51, section ".printk_index", align 4
@escb_tasklet_complete._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@escb_tasklet_complete._entry_ptr.55 = internal global ptr @escb_tasklet_complete._entry.54, section ".printk_index", align 4
@escb_tasklet_complete._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@escb_tasklet_complete._entry_ptr.57 = internal global ptr @escb_tasklet_complete._entry.56, section ".printk_index", align 4
@escb_tasklet_complete._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@escb_tasklet_complete._entry_ptr.59 = internal global ptr @escb_tasklet_complete._entry.58, section ".printk_index", align 4
@asd_form_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015aic94xx: %s: updating phy_mask 0x%x for phy%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"asd_form_port\00", [18 x i8] zeroinitializer }, align 32
@asd_form_port._entry_ptr = internal global ptr @asd_form_port._entry, section ".printk_index", align 4
@asd_primitive_rcvd_tasklet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015aic94xx: phy%d: BROADCAST change received:%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"asd_primitive_rcvd_tasklet\00", [37 x i8] zeroinitializer }, align 32
@asd_primitive_rcvd_tasklet._entry_ptr = internal global ptr @asd_primitive_rcvd_tasklet._entry, section ".printk_index", align 4
@asd_primitive_rcvd_tasklet._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015aic94xx: phy%d: unknown BREAK\0A\00", [63 x i8] zeroinitializer }, align 32
@asd_primitive_rcvd_tasklet._entry_ptr.66 = internal global ptr @asd_primitive_rcvd_tasklet._entry.64, section ".printk_index", align 4
@asd_primitive_rcvd_tasklet._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.2, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015aic94xx: phy%d: primitive reg:0x%x, cont:0x%04x\0A\00", [45 x i8] zeroinitializer }, align 32
@asd_primitive_rcvd_tasklet._entry_ptr.69 = internal global ptr @asd_primitive_rcvd_tasklet._entry.67, section ".printk_index", align 4
@asd_primitive_rcvd_tasklet._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.63, ptr @.str.2, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015aic94xx: phy%d: HARD_RESET primitive rcvd\0A\00", [51 x i8] zeroinitializer }, align 32
@asd_primitive_rcvd_tasklet._entry_ptr.72 = internal global ptr @asd_primitive_rcvd_tasklet._entry.70, section ".printk_index", align 4
@asd_primitive_rcvd_tasklet._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@asd_primitive_rcvd_tasklet._entry_ptr.74 = internal global ptr @asd_primitive_rcvd_tasklet._entry.73, section ".printk_index", align 4
@asd_primitive_rcvd_tasklet._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.63, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015aic94xx: unknown primitive register:0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@asd_primitive_rcvd_tasklet._entry_ptr.77 = internal global ptr @asd_primitive_rcvd_tasklet._entry.75, section ".printk_index", align 4
@asd_phy_event_tasklet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015aic94xx: phy%d: device unplugged\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"asd_phy_event_tasklet\00", [42 x i8] zeroinitializer }, align 32
@asd_phy_event_tasklet._entry_ptr = internal global ptr @asd_phy_event_tasklet._entry, section ".printk_index", align 4
@asd_phy_event_tasklet._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\015aic94xx: phy%d device plugged: lrate:0x%x, proto:0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@asd_phy_event_tasklet._entry_ptr.82 = internal global ptr @asd_phy_event_tasklet._entry.80, section ".printk_index", align 4
@asd_phy_event_tasklet._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.79, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015aic94xx: phy%d error while OOB: oob status:0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@asd_phy_event_tasklet._entry_ptr.85 = internal global ptr @asd_phy_event_tasklet._entry.83, section ".printk_index", align 4
@asd_link_reset_err_tasklet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015aic94xx: phy%d: Receive ID timer expired\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"asd_link_reset_err_tasklet\00", [37 x i8] zeroinitializer }, align 32
@asd_link_reset_err_tasklet._entry_ptr = internal global ptr @asd_link_reset_err_tasklet._entry, section ".printk_index", align 4
@asd_link_reset_err_tasklet._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015aic94xx: phy%d: Loss of signal\0A\00", [62 x i8] zeroinitializer }, align 32
@asd_link_reset_err_tasklet._entry_ptr.90 = internal global ptr @asd_link_reset_err_tasklet._entry.88, section ".printk_index", align 4
@asd_link_reset_err_tasklet._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.87, ptr @.str.2, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015aic94xx: phy%d: Loss of dword sync\0A\00", [58 x i8] zeroinitializer }, align 32
@asd_link_reset_err_tasklet._entry_ptr.93 = internal global ptr @asd_link_reset_err_tasklet._entry.91, section ".printk_index", align 4
@asd_link_reset_err_tasklet._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.87, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015aic94xx: phy%d: Receive FIS timeout\0A\00", [57 x i8] zeroinitializer }, align 32
@asd_link_reset_err_tasklet._entry_ptr.96 = internal global ptr @asd_link_reset_err_tasklet._entry.94, section ".printk_index", align 4
@asd_link_reset_err_tasklet._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.87, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015aic94xx: phy%d: unknown link reset error code: 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@asd_link_reset_err_tasklet._entry_ptr.99 = internal global ptr @asd_link_reset_err_tasklet._entry.97, section ".printk_index", align 4
@asd_link_reset_err_tasklet._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.87, ptr @.str.2, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015aic94xx: %s: out of memory\0A\00", [34 x i8] zeroinitializer }, align 32
@asd_link_reset_err_tasklet._entry_ptr.102 = internal global ptr @asd_link_reset_err_tasklet._entry.100, section ".printk_index", align 4
@asd_link_reset_err_tasklet._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.87, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015aic94xx: phy%d: retries:0 performing link reset seq\0A\00", [41 x i8] zeroinitializer }, align 32
@asd_link_reset_err_tasklet._entry_ptr.105 = internal global ptr @asd_link_reset_err_tasklet._entry.103, section ".printk_index", align 4
@control_phy_tasklet_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015aic94xx: %s: phy%d status block opcode:0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"control_phy_tasklet_complete\00", [35 x i8] zeroinitializer }, align 32
@control_phy_tasklet_complete._entry_ptr = internal global ptr @control_phy_tasklet_complete._entry, section ".printk_index", align 4
@control_phy_tasklet_complete._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.2, i32 651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015aic94xx: %s: disable phy%d\0A\00", [34 x i8] zeroinitializer }, align 32
@control_phy_tasklet_complete._entry_ptr.110 = internal global ptr @control_phy_tasklet_complete._entry.108, section ".printk_index", align 4
@control_phy_tasklet_complete._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.107, ptr @.str.2, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015aic94xx: %s: phy%d, lrate:0x%x, proto:0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@control_phy_tasklet_complete._entry_ptr.113 = internal global ptr @control_phy_tasklet_complete._entry.111, section ".printk_index", align 4
@control_phy_tasklet_complete._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.107, ptr @.str.2, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015aic94xx: %s: phy%d, spinup hold\0A\00", [61 x i8] zeroinitializer }, align 32
@control_phy_tasklet_complete._entry_ptr.116 = internal global ptr @control_phy_tasklet_complete._entry.114, section ".printk_index", align 4
@control_phy_tasklet_complete._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.107, ptr @.str.2, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015aic94xx: %s: phy%d: error: oob status:0x%02x\0A\00", [48 x i8] zeroinitializer }, align 32
@control_phy_tasklet_complete._entry_ptr.119 = internal global ptr @control_phy_tasklet_complete._entry.117, section ".printk_index", align 4
@control_phy_tasklet_complete._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.107, ptr @.str.2, i32 677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015aic94xx: %s: phy%d: hot plug or device present\0A\00", [46 x i8] zeroinitializer }, align 32
@control_phy_tasklet_complete._entry_ptr.122 = internal global ptr @control_phy_tasklet_complete._entry.120, section ".printk_index", align 4
@control_phy_tasklet_complete._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.107, ptr @.str.2, i32 683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\015aic94xx: %s: phy%d: no device present: oob_status:0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@control_phy_tasklet_complete._entry_ptr.125 = internal global ptr @control_phy_tasklet_complete._entry.123, section ".printk_index", align 4
@control_phy_tasklet_complete._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.107, ptr @.str.2, i32 690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015aic94xx: %s: phy%d: sub_func:0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@control_phy_tasklet_complete._entry_ptr.128 = internal global ptr @control_phy_tasklet_complete._entry.126, section ".printk_index", align 4
@control_phy_tasklet_complete._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.107, ptr @.str.2, i32 695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015aic94xx: %s: phy%d: sub_func:0x%x?\0A\00", [58 x i8] zeroinitializer }, align 32
@control_phy_tasklet_complete._entry_ptr.131 = internal global ptr @control_phy_tasklet_complete._entry.129, section ".printk_index", align 4
@asd_ascb_cache = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 240, i64 241, i64 242, i64 243]
@__sancov_gen_cov_switch_values.132 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 8, i64 128, i64 132]
@__sancov_gen_cov_switch_values.134 = internal global [7 x i64] [i64 5, i64 32, i64 256, i64 512, i64 1024, i64 2048, i64 536870912]
@__sancov_gen_cov_switch_values.135 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 8, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.136 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.137 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.138 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 129]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 10]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.141 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 5, i64 129]
@__sancov_gen_cov_switch_values.142 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.143 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 17, i64 18]
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 395, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 605, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 869, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [15 x i8] c"phy_func_table\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 882, i32 18 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 411, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 413, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 415, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 433, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 454, i32 5 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 461, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 490, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 509, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 537, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 540, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 548, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 552, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 557, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 561, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 566, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 575, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 577, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 579, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 581, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 197, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 313, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 323, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 327, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 335, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 345, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 351, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 80, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 90, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 102, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 253, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 256, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 259, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 262, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 265, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 280, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 283, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 641, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 651, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 660, i32 4 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 666, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 670, i32 4 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 676, i32 4 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 681, i32 4 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 689, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.450 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.451 = private constant [38 x i8] c"../drivers/scsi/aic94xx/aic94xx_scb.c\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 694, i32 3 }
@llvm.compiler.used = appending global [151 x ptr] [ptr @asd_ascb_timedout._entry, ptr @asd_ascb_timedout._entry_ptr, ptr @asd_form_port._entry, ptr @asd_form_port._entry_ptr, ptr @asd_init_post_escbs._entry, ptr @asd_init_post_escbs._entry_ptr, ptr @asd_invalidate_edb._entry, ptr @asd_invalidate_edb._entry_ptr, ptr @asd_link_reset_err_tasklet._entry, ptr @asd_link_reset_err_tasklet._entry.100, ptr @asd_link_reset_err_tasklet._entry.103, ptr @asd_link_reset_err_tasklet._entry.88, ptr @asd_link_reset_err_tasklet._entry.91, ptr @asd_link_reset_err_tasklet._entry.94, ptr @asd_link_reset_err_tasklet._entry.97, ptr @asd_link_reset_err_tasklet._entry_ptr, ptr @asd_link_reset_err_tasklet._entry_ptr.102, ptr @asd_link_reset_err_tasklet._entry_ptr.105, ptr @asd_link_reset_err_tasklet._entry_ptr.90, ptr @asd_link_reset_err_tasklet._entry_ptr.93, ptr @asd_link_reset_err_tasklet._entry_ptr.96, ptr @asd_link_reset_err_tasklet._entry_ptr.99, ptr @asd_phy_event_tasklet._entry, ptr @asd_phy_event_tasklet._entry.80, ptr @asd_phy_event_tasklet._entry.83, ptr @asd_phy_event_tasklet._entry_ptr, ptr @asd_phy_event_tasklet._entry_ptr.82, ptr @asd_phy_event_tasklet._entry_ptr.85, ptr @asd_primitive_rcvd_tasklet._entry, ptr @asd_primitive_rcvd_tasklet._entry.64, ptr @asd_primitive_rcvd_tasklet._entry.67, ptr @asd_primitive_rcvd_tasklet._entry.70, ptr @asd_primitive_rcvd_tasklet._entry.73, ptr @asd_primitive_rcvd_tasklet._entry.75, ptr @asd_primitive_rcvd_tasklet._entry_ptr, ptr @asd_primitive_rcvd_tasklet._entry_ptr.66, ptr @asd_primitive_rcvd_tasklet._entry_ptr.69, ptr @asd_primitive_rcvd_tasklet._entry_ptr.72, ptr @asd_primitive_rcvd_tasklet._entry_ptr.74, ptr @asd_primitive_rcvd_tasklet._entry_ptr.77, ptr @control_phy_tasklet_complete._entry, ptr @control_phy_tasklet_complete._entry.108, ptr @control_phy_tasklet_complete._entry.111, ptr @control_phy_tasklet_complete._entry.114, ptr @control_phy_tasklet_complete._entry.117, ptr @control_phy_tasklet_complete._entry.120, ptr @control_phy_tasklet_complete._entry.123, ptr @control_phy_tasklet_complete._entry.126, ptr @control_phy_tasklet_complete._entry.129, ptr @control_phy_tasklet_complete._entry_ptr, ptr @control_phy_tasklet_complete._entry_ptr.110, ptr @control_phy_tasklet_complete._entry_ptr.113, ptr @control_phy_tasklet_complete._entry_ptr.116, ptr @control_phy_tasklet_complete._entry_ptr.119, ptr @control_phy_tasklet_complete._entry_ptr.122, ptr @control_phy_tasklet_complete._entry_ptr.125, ptr @control_phy_tasklet_complete._entry_ptr.128, ptr @control_phy_tasklet_complete._entry_ptr.131, ptr @escb_tasklet_complete._entry, ptr @escb_tasklet_complete._entry.12, ptr @escb_tasklet_complete._entry.15, ptr @escb_tasklet_complete._entry.18, ptr @escb_tasklet_complete._entry.21, ptr @escb_tasklet_complete._entry.24, ptr @escb_tasklet_complete._entry.27, ptr @escb_tasklet_complete._entry.30, ptr @escb_tasklet_complete._entry.33, ptr @escb_tasklet_complete._entry.36, ptr @escb_tasklet_complete._entry.39, ptr @escb_tasklet_complete._entry.42, ptr @escb_tasklet_complete._entry.45, ptr @escb_tasklet_complete._entry.48, ptr @escb_tasklet_complete._entry.51, ptr @escb_tasklet_complete._entry.54, ptr @escb_tasklet_complete._entry.56, ptr @escb_tasklet_complete._entry.58, ptr @escb_tasklet_complete._entry.9, ptr @escb_tasklet_complete._entry_ptr, ptr @escb_tasklet_complete._entry_ptr.11, ptr @escb_tasklet_complete._entry_ptr.14, ptr @escb_tasklet_complete._entry_ptr.17, ptr @escb_tasklet_complete._entry_ptr.20, ptr @escb_tasklet_complete._entry_ptr.23, ptr @escb_tasklet_complete._entry_ptr.26, ptr @escb_tasklet_complete._entry_ptr.29, ptr @escb_tasklet_complete._entry_ptr.32, ptr @escb_tasklet_complete._entry_ptr.35, ptr @escb_tasklet_complete._entry_ptr.38, ptr @escb_tasklet_complete._entry_ptr.41, ptr @escb_tasklet_complete._entry_ptr.44, ptr @escb_tasklet_complete._entry_ptr.47, ptr @escb_tasklet_complete._entry_ptr.50, ptr @escb_tasklet_complete._entry_ptr.53, ptr @escb_tasklet_complete._entry_ptr.55, ptr @escb_tasklet_complete._entry_ptr.57, ptr @escb_tasklet_complete._entry_ptr.59, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @phy_func_table, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130], section "llvm.metadata"
@0 = internal global [103 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_invalidate_edb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_post_escbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_ascb_timedout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_func_table to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @escb_tasklet_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @escb_tasklet_complete._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @escb_tasklet_complete._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @escb_tasklet_complete._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @escb_tasklet_complete._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @escb_tasklet_complete._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @escb_tasklet_complete._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @escb_tasklet_complete._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @escb_tasklet_complete._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @escb_tasklet_complete._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @escb_tasklet_complete._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @escb_tasklet_complete._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @escb_tasklet_complete._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @escb_tasklet_complete._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @escb_tasklet_complete._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @escb_tasklet_complete._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @escb_tasklet_complete._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @escb_tasklet_complete._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @escb_tasklet_complete._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_form_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_primitive_rcvd_tasklet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_primitive_rcvd_tasklet._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_primitive_rcvd_tasklet._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_primitive_rcvd_tasklet._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_primitive_rcvd_tasklet._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_primitive_rcvd_tasklet._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_phy_event_tasklet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_phy_event_tasklet._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_phy_event_tasklet._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_link_reset_err_tasklet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_link_reset_err_tasklet._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_link_reset_err_tasklet._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_link_reset_err_tasklet._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_link_reset_err_tasklet._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_link_reset_err_tasklet._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_link_reset_err_tasklet._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_phy_tasklet_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_phy_tasklet_complete._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_phy_tasklet_complete._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_phy_tasklet_complete._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_phy_tasklet_complete._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_phy_tasklet_complete._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_phy_tasklet_complete._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_phy_tasklet_complete._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @control_phy_tasklet_complete._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @asd_invalidate_edb(ptr noundef %ascb, i32 noundef %edb_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ha = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 1
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 4
  %scb = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 2
  %2 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scb, align 4
  %4 = getelementptr inbounds %struct.scb, ptr %3, i32 0, i32 1
  %eb2 = getelementptr inbounds %struct.scb, ptr %3, i32 0, i32 1, i32 0, i32 2
  %edb_arr = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 13, i32 16
  %5 = ptrtoint ptr %edb_arr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %edb_arr, align 4
  %edb_index = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 11
  %7 = ptrtoint ptr %edb_index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %edb_index, align 4
  %add = add i32 %8, %edb_id
  %arrayidx3 = getelementptr ptr, ptr %6, i32 %add
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx3, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 1068)
  %flags = getelementptr [7 x %struct.sg_el], ptr %eb2, i32 0, i32 %edb_id, i32 4
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flags, align 1
  %16 = or i8 %15, -64
  store i8 %16, ptr %flags, align 1
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %4, align 1
  %dec = add i8 %18, -1
  store i8 %dec, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %cmp = icmp eq i8 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then:                                          ; preds = %entry
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 7, ptr %4, align 1
  %flags13 = getelementptr [7 x %struct.sg_el], ptr %eb2, i32 0, i32 0, i32 4
  %20 = ptrtoint ptr %flags13 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %flags13, align 1
  %flags13.1 = getelementptr %struct.scb, ptr %3, i32 0, i32 1, i32 0, i32 3, i32 0, i32 7
  %21 = ptrtoint ptr %flags13.1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %flags13.1, align 1
  %flags13.2 = getelementptr %struct.scb, ptr %3, i32 0, i32 1, i32 0, i32 3, i32 5, i32 11
  %22 = ptrtoint ptr %flags13.2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %flags13.2, align 1
  %flags13.3 = getelementptr %struct.scb, ptr %3, i32 0, i32 1, i32 0, i32 9, i32 4
  %23 = ptrtoint ptr %flags13.3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %flags13.3, align 1
  %flags13.4 = getelementptr %struct.scb, ptr %3, i32 0, i32 1, i32 0, i32 10, i32 0, i32 4
  %24 = ptrtoint ptr %flags13.4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %flags13.4, align 1
  %flags13.5 = getelementptr %struct.scb, ptr %3, i32 0, i32 1, i32 0, i32 10, i32 1, i32 4
  %25 = ptrtoint ptr %flags13.5 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %flags13.5, align 1
  %flags13.6 = getelementptr %struct.scb, ptr %3, i32 0, i32 1, i32 0, i32 10, i32 2, i32 4
  %26 = ptrtoint ptr %flags13.6 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %flags13.6, align 1
  %27 = ptrtoint ptr %ascb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %ascb, align 4
  %cmp.i.not = icmp eq ptr %28, %ascb
  br i1 %cmp.i.not, label %if.then.if.end_crit_edge, label %if.then14

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then14:                                        ; preds = %if.then
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ascb) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then14.list_del_init.exit_crit_edge

if.then14.list_del_init.exit_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ascb, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %ascb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ascb, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then14.list_del_init.exit_crit_edge
  %35 = ptrtoint ptr %ascb to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %ascb, ptr %ascb, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %ascb, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %ascb, ptr %prev.i3.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %if.then.if.end_crit_edge
  %37 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ha, align 4
  %call17 = tail call i32 @asd_post_escb_list(ptr noundef %38, ptr noundef %ascb, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end.if.end22_crit_edge, label %do.end

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call17) #10
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.end.if.end22_crit_edge, %entry.if.end22_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_post_escb_list(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_init_post_escbs(ptr noundef %asd_ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_escbs = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 17
  %0 = ptrtoint ptr %num_escbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_escbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp13 = icmp sgt i32 %1, 0
  br i1 %cmp13, label %for.body.lr.ph, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.lr.ph:                                   ; preds = %entry
  %escb_arr = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 18
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %escb_arr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %escb_arr, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.014
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tasklet_complete = getelementptr inbounds %struct.asd_ascb, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %tasklet_complete to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @escb_tasklet_complete, ptr %tasklet_complete, align 4
  %inc = add nuw nsw i32 %i.014, 1
  %7 = ptrtoint ptr %num_escbs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_escbs, align 4
  %cmp = icmp slt i32 %inc, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end:                                           ; preds = %for.body.do.end_crit_edge, %entry.do.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.do.end_crit_edge ], [ %inc, %for.body.do.end_crit_edge ]
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %i.0.lcssa) #10
  %escb_arr2 = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 18
  %9 = ptrtoint ptr %escb_arr2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %escb_arr2, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %num_escbs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_escbs, align 4
  %call5 = tail call i32 @asd_post_escb_list(ptr noundef %asd_ha, ptr noundef %12, i32 noundef %14) #7
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @escb_tasklet_complete(ptr noundef %ascb, ptr noundef %dl) #0 align 64 {
entry:
  %num.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ha = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 1
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 4
  %opcode = getelementptr inbounds %struct.done_list_struct, ptr %dl, i32 0, i32 1
  %2 = ptrtoint ptr %opcode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %opcode, align 1
  %4 = and i8 %3, 7
  %and = zext i8 %4 to i32
  %sub = add nsw i32 %and, -1
  %status_block = getelementptr inbounds %struct.done_list_struct, ptr %dl, i32 0, i32 2
  %5 = ptrtoint ptr %status_block to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %status_block, align 1
  %conv2 = zext i8 %6 to i32
  %and3 = and i32 %conv2, 7
  %sas_phy4 = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 2, i32 17
  %7 = ptrtoint ptr %sas_phy4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sas_phy4, align 4
  %arrayidx5 = getelementptr ptr, ptr %8, i32 %and3
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp8 = icmp eq i8 %4, 0
  br i1 %cmp8, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv11 = zext i8 %3 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %sub, i32 noundef %conv11) #10
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv2, i32 noundef %and3) #10
  %dma_scb = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 3
  %11 = ptrtoint ptr %dma_scb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_scb, align 4
  %dma_handle = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_handle, align 4
  %conv23 = zext i32 %14 to i64
  %scb = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 2
  %15 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %scb, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %16, align 1
  %19 = tail call i64 @llvm.bswap.i64(i64 %18)
  %index = getelementptr inbounds %struct.scb_header, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %index to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %index, align 1
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  %conv26 = zext i16 %22 to i32
  %opcode29 = getelementptr inbounds %struct.scb_header, ptr %16, i32 0, i32 2
  %23 = ptrtoint ptr %opcode29 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %opcode29, align 1
  %conv30 = zext i8 %24 to i32
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %12, i64 noundef %conv23, i64 noundef %19, i32 noundef %conv26, i32 noundef %conv30) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %25 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %sw.epilog [
    i8 -16, label %sw.bb
    i8 -15, label %sw.bb126
    i8 -14, label %do.end247
    i8 -13, label %do.end253
  ]

sw.bb:                                            ; preds = %if.end
  %arrayidx38 = getelementptr %struct.done_list_struct, ptr %dl, i32 0, i32 2, i32 3
  %26 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %27 to i32
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.8, i32 noundef %conv39) #10
  %arrayidx42 = getelementptr %struct.done_list_struct, ptr %dl, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %arrayidx42, align 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %pend_q = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 13, i32 3
  %conv53 = zext i16 %30 to i32
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %sw.bb
  %a.0.in = phi ptr [ %pend_q, %sw.bb ], [ %a.0, %for.body.for.cond_crit_edge ]
  %31 = ptrtoint ptr %a.0.in to i32
  call void @__asan_load4_noabort(i32 %31)
  %a.0 = load ptr, ptr %a.0.in, align 4
  %cmp51.not = icmp eq ptr %a.0, %pend_q
  br i1 %cmp51.not, label %for.cond.do.end78_crit_edge, label %for.body

for.cond.do.end78_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end78

for.body:                                         ; preds = %for.cond
  %tc_index = getelementptr inbounds %struct.asd_ascb, ptr %a.0, i32 0, i32 12
  %32 = ptrtoint ptr %tc_index to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tc_index, align 4
  %cmp54.not = icmp eq i32 %33, %conv53
  br i1 %cmp54.not, label %if.end57, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.end57:                                         ; preds = %for.body
  %uldd_task.le = getelementptr inbounds %struct.asd_ascb, ptr %a.0, i32 0, i32 13
  %34 = ptrtoint ptr %uldd_task.le to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %uldd_task.le, align 4
  %tobool.not = icmp eq ptr %35, null
  br i1 %tobool.not, label %do.end61, label %for.end

do.end61:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %scb63 = getelementptr inbounds %struct.asd_ascb, ptr %a.0, i32 0, i32 2
  %36 = ptrtoint ptr %scb63 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %scb63, align 4
  %opcode65 = getelementptr inbounds %struct.scb_header, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %opcode65 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %opcode65, align 1
  %conv66 = zext i8 %39 to i32
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %conv66) #10
  br label %do.end78

for.end:                                          ; preds = %if.end57
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %35, align 4
  tail call void @sas_task_abort(ptr noundef nonnull %35) #7
  %tobool74.not = icmp eq ptr %41, null
  br i1 %tobool74.not, label %for.end.do.end78_crit_edge, label %if.end82

for.end.do.end78_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end78

do.end78:                                         ; preds = %for.end.do.end78_crit_edge, %do.end61, %for.cond.do.end78_crit_edge
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.8, i32 noundef %conv53) #10
  br label %out

if.end82:                                         ; preds = %for.end
  %42 = ptrtoint ptr %pend_q to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pend_q, align 4
  %cmp98.not503 = icmp eq ptr %43, %pend_q
  br i1 %cmp98.not503, label %if.end82.out_crit_edge, label %if.end82.for.body101_crit_edge

if.end82.for.body101_crit_edge:                   ; preds = %if.end82
  br label %for.body101

if.end82.out_crit_edge:                           ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body101:                                      ; preds = %if.end114.for.body101_crit_edge, %if.end82.for.body101_crit_edge
  %a.1504 = phi ptr [ %b.1505, %if.end114.for.body101_crit_edge ], [ %43, %if.end82.for.body101_crit_edge ]
  %44 = ptrtoint ptr %a.1504 to i32
  call void @__asan_load4_noabort(i32 %44)
  %b.1505 = load ptr, ptr %a.1504, align 4
  %uldd_task103 = getelementptr inbounds %struct.asd_ascb, ptr %a.1504, i32 0, i32 13
  %45 = ptrtoint ptr %uldd_task103 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %uldd_task103, align 4
  %tobool104.not = icmp eq ptr %46, null
  br i1 %tobool104.not, label %for.body101.if.end114_crit_edge, label %land.lhs.true

for.body101.if.end114_crit_edge:                  ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

land.lhs.true:                                    ; preds = %for.body101
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %cmp106 = icmp eq ptr %48, %41
  br i1 %cmp106, label %land.lhs.true108, label %land.lhs.true.if.end114_crit_edge

land.lhs.true.if.end114_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

land.lhs.true108:                                 ; preds = %land.lhs.true
  %tc_index109 = getelementptr inbounds %struct.asd_ascb, ptr %a.1504, i32 0, i32 12
  %49 = ptrtoint ptr %tc_index109 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tc_index109, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %conv53)
  %cmp111.not = icmp eq i32 %50, %conv53
  br i1 %cmp111.not, label %land.lhs.true108.if.end114_crit_edge, label %if.then113

land.lhs.true108.if.end114_crit_edge:             ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

if.then113:                                       ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sas_task_abort(ptr noundef nonnull %46) #7
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %land.lhs.true108.if.end114_crit_edge, %land.lhs.true.if.end114_crit_edge, %for.body101.if.end114_crit_edge
  %cmp98.not = icmp eq ptr %b.1505, %pend_q
  br i1 %cmp98.not, label %if.end114.out_crit_edge, label %if.end114.for.body101_crit_edge

if.end114.for.body101_crit_edge:                  ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body101

if.end114.out_crit_edge:                          ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

sw.bb126:                                         ; preds = %if.end
  %arrayidx129 = getelementptr %struct.done_list_struct, ptr %dl, i32 0, i32 2, i32 1
  %51 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %arrayidx129, align 1
  %53 = tail call i16 @llvm.bswap.i16(i16 %52)
  %arrayidx135 = getelementptr %struct.done_list_struct, ptr %dl, i32 0, i32 2, i32 3
  %54 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx135, align 1
  %conv136 = zext i8 %55 to i32
  %call137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.8, i32 noundef %conv136) #10
  %pend_q140 = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 13, i32 3
  %56 = ptrtoint ptr %pend_q140 to i32
  call void @__asan_load4_noabort(i32 %56)
  %a127.0495 = load ptr, ptr %pend_q140, align 4
  %cmp148.not496 = icmp eq ptr %a127.0495, %pend_q140
  br i1 %cmp148.not496, label %sw.bb126.do.end181_crit_edge, label %sw.bb126.for.body151_crit_edge

sw.bb126.for.body151_crit_edge:                   ; preds = %sw.bb126
  br label %for.body151

sw.bb126.do.end181_crit_edge:                     ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end181

for.body151:                                      ; preds = %cleanup166.for.body151_crit_edge, %sw.bb126.for.body151_crit_edge
  %a127.0498 = phi ptr [ %a127.0, %cleanup166.for.body151_crit_edge ], [ %a127.0495, %sw.bb126.for.body151_crit_edge ]
  %last_dev_task.0497 = phi ptr [ %last_dev_task.2, %cleanup166.for.body151_crit_edge ], [ null, %sw.bb126.for.body151_crit_edge ]
  %uldd_task154 = getelementptr inbounds %struct.asd_ascb, ptr %a127.0498, i32 0, i32 13
  %57 = ptrtoint ptr %uldd_task154 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %uldd_task154, align 4
  %tobool155.not = icmp eq ptr %58, null
  br i1 %tobool155.not, label %for.body151.cleanup166_crit_edge, label %if.end157

for.body151.cleanup166_crit_edge:                 ; preds = %for.body151
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup166

if.end157:                                        ; preds = %for.body151
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %60, i32 0, i32 20
  %61 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %lldd_dev, align 128
  %63 = ptrtoint ptr %62 to i32
  %64 = trunc i32 %63 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %64)
  %cmp162 = icmp eq i16 %53, %64
  %spec.select = select i1 %cmp162, ptr %58, ptr %last_dev_task.0497
  br label %cleanup166

cleanup166:                                       ; preds = %if.end157, %for.body151.cleanup166_crit_edge
  %last_dev_task.2 = phi ptr [ %spec.select, %if.end157 ], [ %last_dev_task.0497, %for.body151.cleanup166_crit_edge ]
  %65 = ptrtoint ptr %a127.0498 to i32
  call void @__asan_load4_noabort(i32 %65)
  %a127.0 = load ptr, ptr %a127.0498, align 4
  %cmp148.not = icmp eq ptr %a127.0, %pend_q140
  br i1 %cmp148.not, label %for.end176, label %cleanup166.for.body151_crit_edge

cleanup166.for.body151_crit_edge:                 ; preds = %cleanup166
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body151

for.end176:                                       ; preds = %cleanup166
  %tobool177.not = icmp eq ptr %last_dev_task.2, null
  br i1 %tobool177.not, label %for.end176.do.end181_crit_edge, label %do.body187

for.end176.do.end181_crit_edge:                   ; preds = %for.end176
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end181

do.end181:                                        ; preds = %for.end176.do.end181_crit_edge, %sw.bb126.do.end181_crit_edge
  %conv183 = zext i16 %53 to i32
  %call184 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.8, i32 noundef %conv183) #10
  br label %out

do.body187:                                       ; preds = %for.end176
  %task_state_lock = getelementptr inbounds %struct.sas_task, ptr %last_dev_task.2, i32 0, i32 1
  %call192 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %task_state_lock) #7
  %task_state_flags = getelementptr inbounds %struct.sas_task, ptr %last_dev_task.2, i32 0, i32 2
  %66 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %task_state_flags, align 4
  %or = or i32 %67, 8
  store i32 %or, ptr %task_state_flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %task_state_lock, i32 noundef %call192) #7
  %68 = ptrtoint ptr %pend_q140 to i32
  call void @__asan_load4_noabort(i32 %68)
  %a127.1499 = load ptr, ptr %pend_q140, align 4
  %cmp208.not500 = icmp eq ptr %a127.1499, %pend_q140
  br i1 %cmp208.not500, label %do.body187.out_crit_edge, label %do.body187.for.body211_crit_edge

do.body187.for.body211_crit_edge:                 ; preds = %do.body187
  br label %for.body211

do.body187.out_crit_edge:                         ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body211:                                      ; preds = %cleanup228.for.body211_crit_edge, %do.body187.for.body211_crit_edge
  %a127.1501 = phi ptr [ %a127.1, %cleanup228.for.body211_crit_edge ], [ %a127.1499, %do.body187.for.body211_crit_edge ]
  %uldd_task215 = getelementptr inbounds %struct.asd_ascb, ptr %a127.1501, i32 0, i32 13
  %69 = ptrtoint ptr %uldd_task215 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %uldd_task215, align 4
  %tobool216.not = icmp eq ptr %70, null
  br i1 %tobool216.not, label %for.body211.cleanup228_crit_edge, label %if.end218

for.body211.cleanup228_crit_edge:                 ; preds = %for.body211
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup228

if.end218:                                        ; preds = %for.body211
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %lldd_dev220 = getelementptr inbounds %struct.domain_device, ptr %72, i32 0, i32 20
  %73 = ptrtoint ptr %lldd_dev220 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %lldd_dev220, align 128
  %75 = ptrtoint ptr %74 to i32
  %76 = trunc i32 %75 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %76)
  %cmp224 = icmp eq i16 %53, %76
  br i1 %cmp224, label %if.then226, label %if.end218.cleanup228_crit_edge

if.end218.cleanup228_crit_edge:                   ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup228

if.then226:                                       ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sas_task_abort(ptr noundef nonnull %70) #7
  br label %cleanup228

cleanup228:                                       ; preds = %if.then226, %if.end218.cleanup228_crit_edge, %for.body211.cleanup228_crit_edge
  %77 = ptrtoint ptr %a127.1501 to i32
  call void @__asan_load4_noabort(i32 %77)
  %a127.1 = load ptr, ptr %a127.1501, align 4
  %cmp208.not = icmp eq ptr %a127.1, %pend_q140
  br i1 %cmp208.not, label %cleanup228.out_crit_edge, label %cleanup228.for.body211_crit_edge

cleanup228.for.body211_crit_edge:                 ; preds = %cleanup228
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body211

cleanup228.out_crit_edge:                         ; preds = %cleanup228
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end247:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call249 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.8) #10
  br label %out

do.end253:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call255 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.8) #10
  br label %out

sw.epilog:                                        ; preds = %if.end
  %and257 = and i8 %6, -8
  %conv259 = zext i8 %and257 to i32
  %78 = lshr exact i32 %conv259, 3
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %78, label %do.end293 [
    i32 0, label %do.end263
    i32 1, label %do.end269
    i32 2, label %do.end275
    i32 3, label %do.end281
    i32 4, label %do.end287
  ]

do.end263:                                        ; preds = %sw.epilog
  %call265 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.8, i32 noundef %and3) #10
  %edb_index.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 11
  %80 = ptrtoint ptr %edb_index.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %edb_index.i, align 4
  %add.i = add i32 %81, %sub
  %82 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ha, align 4
  %edb_arr.i = getelementptr inbounds %struct.asd_ha_struct, ptr %83, i32 0, i32 13, i32 16
  %84 = ptrtoint ptr %edb_arr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %edb_arr.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %85, i32 %add.i
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr %struct.done_list_struct, ptr %dl, i32 0, i32 2, i32 3
  %88 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx3.i, align 1
  %90 = and i8 %89, 7
  %and.i = zext i8 %90 to i32
  %shl.i = shl nuw nsw i32 %and.i, 8
  %arrayidx5.i = getelementptr %struct.done_list_struct, ptr %dl, i32 0, i32 2, i32 2
  %91 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %92 to i32
  %or.i = or i32 %shl.i, %conv6.i
  %93 = tail call i32 @llvm.umin.i32(i32 %or.i, i32 1068) #7
  %arrayidx2.i = getelementptr %struct.asd_ha_struct, ptr %83, i32 0, i32 8, i32 %and3
  %frame_rcvd_lock.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx2.i, i32 0, i32 16
  %call18.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %frame_rcvd_lock.i) #7
  %frame_rcvd.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx2.i, i32 0, i32 17
  %94 = ptrtoint ptr %frame_rcvd.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %frame_rcvd.i, align 4
  %96 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %87, align 4
  %98 = call ptr @memcpy(ptr %95, ptr %97, i32 %93)
  %frame_rcvd_size.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx2.i, i32 0, i32 18
  %99 = ptrtoint ptr %frame_rcvd_size.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %93, ptr %frame_rcvd_size.i, align 4
  %attached_sas_addr.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx2.i, i32 0, i32 15
  %100 = load ptr, ptr %frame_rcvd.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %100, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 52, i8 %102)
  %cmp.i.i = icmp eq i8 %102, 52
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %do.end263.if.else.i.i_crit_edge

do.end263.if.else.i.i_crit_edge:                  ; preds = %do.end263
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %do.end263
  %oob_mode.i.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx2.i, i32 0, i32 12
  %103 = ptrtoint ptr %oob_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %oob_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %104)
  %cmp3.i.i = icmp eq i32 %104, 1
  br i1 %cmp3.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %ha.i.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx2.i, i32 0, i32 23
  %105 = ptrtoint ptr %ha.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ha.i.i, align 4
  %lldd_ha.i.i = getelementptr inbounds %struct.sas_ha_struct, ptr %106, i32 0, i32 21
  %107 = ptrtoint ptr %lldd_ha.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %lldd_ha.i.i, align 4
  %phy_desc.i.i = getelementptr %struct.asd_ha_struct, ptr %83, i32 0, i32 8, i32 %and3, i32 1
  %109 = ptrtoint ptr %phy_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %phy_desc.i.i, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 8)
  %112 = load i64, ptr %110, align 1
  %sata_name_base.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %108, i32 0, i32 7, i32 18
  %113 = ptrtoint ptr %sata_name_base.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %sata_name_base.i.i, align 4
  %enabled_phys.i.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %108, i32 0, i32 7, i32 5
  %115 = ptrtoint ptr %enabled_phys.i.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %enabled_phys.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %cmp.not18.i.i.i = icmp eq i8 %116, 0
  br i1 %cmp.not18.i.i.i, label %if.then.i.i.ord_phy.exit.i.i_crit_edge, label %if.then.i.i.for.body.i.i.i_crit_edge

if.then.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %for.body.i.i.i

if.then.i.i.ord_phy.exit.i.i_crit_edge:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ord_phy.exit.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.i.for.body.i.i.i_crit_edge
  %k.022.i.i.i = phi i32 [ %k.1.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then.i.i.for.body.i.i.i_crit_edge ]
  %i.020.i.i.i = phi i32 [ %inc7.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then.i.i.for.body.i.i.i_crit_edge ]
  %enabled_mask.019.i.i.i = phi i8 [ %118, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %116, %if.then.i.i.for.body.i.i.i_crit_edge ]
  %117 = and i8 %enabled_mask.019.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i.i.i = icmp eq i8 %117, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.asd_ha_struct, ptr %108, i32 0, i32 8, i32 %i.020.i.i.i
  %cmp3.i.i.i = icmp eq ptr %arrayidx.i.i.i, %arrayidx2.i
  br i1 %cmp3.i.i.i, label %if.then.i.i.i.ord_phy.exit.i.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.ord_phy.exit.i.i_crit_edge:         ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ord_phy.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i.i.i = add i32 %k.022.i.i.i, 1
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.end.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %k.1.i.i.i = phi i32 [ %inc.i.i.i, %if.end.i.i.i ], [ %k.022.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge ]
  %inc7.i.i.i = add nuw nsw i32 %i.020.i.i.i, 1
  %118 = lshr i8 %enabled_mask.019.i.i.i, 1
  %cmp.not.i.i.i = icmp ult i8 %enabled_mask.019.i.i.i, 2
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.ord_phy.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.ord_phy.exit.i.i_crit_edge:         ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ord_phy.exit.i.i

ord_phy.exit.i.i:                                 ; preds = %for.inc.i.i.i.ord_phy.exit.i.i_crit_edge, %if.then.i.i.i.ord_phy.exit.i.i_crit_edge, %if.then.i.i.ord_phy.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.then.i.i.ord_phy.exit.i.i_crit_edge ], [ %k.022.i.i.i, %if.then.i.i.i.ord_phy.exit.i.i_crit_edge ], [ 0, %for.inc.i.i.i.ord_phy.exit.i.i_crit_edge ]
  %add.i.i = add i32 %retval.0.i.i.i, %114
  %conv7.i.i = zext i32 %add.i.i to i64
  %add8.i.i = add i64 %112, %conv7.i.i
  %119 = ptrtoint ptr %attached_sas_addr.i to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %add8.i.i, ptr %attached_sas_addr.i, align 8
  br label %asd_get_attached_sas_addr.exit.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %do.end263.if.else.i.i_crit_edge
  %sas_addr11.i.i = getelementptr inbounds %struct.sas_identify_frame, ptr %100, i32 0, i32 5
  %120 = ptrtoint ptr %sas_addr11.i.i to i32
  call void @__asan_loadN_noabort(i32 %120, i32 8)
  %121 = load i64, ptr %sas_addr11.i.i, align 1
  %122 = ptrtoint ptr %attached_sas_addr.i to i32
  call void @__asan_storeN_noabort(i32 %122, i32 8)
  store i64 %121, ptr %attached_sas_addr.i, align 1
  br label %asd_get_attached_sas_addr.exit.i

asd_get_attached_sas_addr.exit.i:                 ; preds = %if.else.i.i, %ord_phy.exit.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %frame_rcvd_lock.i, i32 noundef %call18.i) #7
  tail call void @asd_dump_frame_rcvd(ptr noundef %arrayidx2.i, ptr noundef %dl) #7
  %123 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ha, align 4
  %asd_ports_lock.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %124, i32 0, i32 9
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %asd_ports_lock.i.i) #7
  %asd_port.i.i = getelementptr %struct.asd_ha_struct, ptr %83, i32 0, i32 8, i32 %and3, i32 4
  %125 = ptrtoint ptr %asd_port.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %asd_port.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %126, null
  br i1 %tobool.not.i.i, label %for.cond.preheader.i.i, label %asd_get_attached_sas_addr.exit.i.asd_bytes_dmaed_tasklet.exit_crit_edge

asd_get_attached_sas_addr.exit.i.asd_bytes_dmaed_tasklet.exit_crit_edge: ; preds = %asd_get_attached_sas_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %asd_bytes_dmaed_tasklet.exit

for.cond.preheader.i.i:                           ; preds = %asd_get_attached_sas_addr.exit.i
  %sas_addr10.i.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx2.i, i32 0, i32 14
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %i.0100.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %free_port.099.i.i = phi ptr [ null, %for.cond.preheader.i.i ], [ %free_port.1.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.asd_ha_struct, ptr %124, i32 0, i32 10, i32 %i.0100.i.i
  %num_phys.i.i = getelementptr %struct.asd_ha_struct, ptr %124, i32 0, i32 10, i32 %i.0100.i.i, i32 3
  %127 = ptrtoint ptr %num_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %num_phys.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp8.i.i = icmp sgt i32 %128, 0
  br i1 %cmp8.i.i, label %land.lhs.true.i49.i, label %for.body.i.i.if.end.i.i_crit_edge

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i49.i:                              ; preds = %for.body.i.i
  %129 = ptrtoint ptr %sas_addr10.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %sas_addr10.i.i, align 4
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %arrayidx.i.i, ptr noundef dereferenceable(8) %130, i32 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp12.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp12.i.i, label %land.lhs.true14.i.i, label %land.lhs.true.i49.i.if.end.i.i_crit_edge

land.lhs.true.i49.i.if.end.i.i_crit_edge:         ; preds = %land.lhs.true.i49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true14.i.i:                              ; preds = %land.lhs.true.i49.i
  %attached_sas_addr.i.i = getelementptr %struct.asd_ha_struct, ptr %124, i32 0, i32 10, i32 %i.0100.i.i, i32 1
  %bcmp95.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %attached_sas_addr.i.i, ptr noundef dereferenceable(8) %attached_sas_addr.i, i32 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp95.i.i)
  %cmp19.i.i = icmp eq i32 %bcmp95.i.i, 0
  br i1 %cmp19.i.i, label %land.lhs.true14.i.i.if.end55.i.i_crit_edge, label %land.lhs.true14.i.i.if.end.i.i_crit_edge

land.lhs.true14.i.i.if.end.i.i_crit_edge:         ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true14.i.i.if.end55.i.i_crit_edge:       ; preds = %land.lhs.true14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i.i

if.end.i.i:                                       ; preds = %land.lhs.true14.i.i.if.end.i.i_crit_edge, %land.lhs.true.i49.i.if.end.i.i_crit_edge, %for.body.i.i.if.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp23.i.i = icmp eq i32 %128, 0
  %cmp26.i.i = icmp eq ptr %free_port.099.i.i, null
  %or.cond.i.i = select i1 %cmp23.i.i, i1 %cmp26.i.i, i1 false
  %free_port.1.i.i = select i1 %or.cond.i.i, ptr %arrayidx.i.i, ptr %free_port.099.i.i
  %inc.i.i = add nuw nsw i32 %i.0100.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 8
  br i1 %exitcond.not.i.i, label %if.then32.i.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.then32.i.i:                                    ; preds = %if.end.i.i
  %tobool34.not.i.i = icmp eq ptr %free_port.1.i.i, null
  br i1 %tobool34.not.i.i, label %do.body39.i.i, label %do.end47.i.i, !prof !209

do.body39.i.i:                                    ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_scb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 186, 0\0A.popsection", ""() #7, !srcloc !210
  unreachable

do.end47.i.i:                                     ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %131 = ptrtoint ptr %sas_addr10.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %sas_addr10.i.i, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_loadN_noabort(i32 %133, i32 8)
  %134 = load i64, ptr %132, align 1
  %135 = ptrtoint ptr %free_port.1.i.i to i32
  call void @__asan_storeN_noabort(i32 %135, i32 8)
  store i64 %134, ptr %free_port.1.i.i, align 4
  %attached_sas_addr51.i.i = getelementptr inbounds %struct.asd_port, ptr %free_port.1.i.i, i32 0, i32 1
  %136 = ptrtoint ptr %attached_sas_addr.i to i32
  call void @__asan_loadN_noabort(i32 %136, i32 8)
  %137 = load i64, ptr %attached_sas_addr.i, align 4
  %138 = ptrtoint ptr %attached_sas_addr51.i.i to i32
  call void @__asan_storeN_noabort(i32 %138, i32 8)
  store i64 %137, ptr %attached_sas_addr51.i.i, align 4
  br label %if.end55.i.i

if.end55.i.i:                                     ; preds = %do.end47.i.i, %land.lhs.true14.i.i.if.end55.i.i_crit_edge
  %port.2.i.i = phi ptr [ %free_port.1.i.i, %do.end47.i.i ], [ %arrayidx.i.i, %land.lhs.true14.i.i.if.end55.i.i_crit_edge ]
  %num_phys56.i.i = getelementptr inbounds %struct.asd_port, ptr %port.2.i.i, i32 0, i32 3
  %139 = ptrtoint ptr %num_phys56.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %num_phys56.i.i, align 4
  %inc57.i.i = add i32 %140, 1
  store i32 %inc57.i.i, ptr %num_phys56.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx2.i, i32 0, i32 6
  %141 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %id.i.i, align 4
  %shl.i.i = shl nuw i32 1, %142
  %phy_mask.i.i = getelementptr inbounds %struct.asd_port, ptr %port.2.i.i, i32 0, i32 2
  %143 = ptrtoint ptr %phy_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %phy_mask.i.i, align 4
  %or.i.i = or i32 %144, %shl.i.i
  store i32 %or.i.i, ptr %phy_mask.i.i, align 4
  %145 = ptrtoint ptr %asd_port.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %port.2.i.i, ptr %asd_port.i.i, align 4
  br label %asd_bytes_dmaed_tasklet.exit

asd_bytes_dmaed_tasklet.exit:                     ; preds = %if.end55.i.i, %asd_get_attached_sas_addr.exit.i.asd_bytes_dmaed_tasklet.exit_crit_edge
  %146 = ptrtoint ptr %asd_port.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %asd_port.i.i, align 4
  %phy_mask65.i.i = getelementptr inbounds %struct.asd_port, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %phy_mask65.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %phy_mask65.i.i, align 4
  %id66.i.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx2.i, i32 0, i32 6
  %150 = ptrtoint ptr %id66.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %id66.i.i, align 4
  %call67.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef %149, i32 noundef %151) #10
  tail call void @asd_update_port_links(ptr noundef %124, ptr noundef %arrayidx2.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %asd_ports_lock.i.i, i32 noundef %call3.i.i) #7
  %call30.i = tail call i32 @sas_notify_port_event(ptr noundef %arrayidx2.i, i32 noundef 0, i32 noundef 2592) #7
  br label %out

do.end269:                                        ; preds = %sw.epilog
  %call271 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.8, i32 noundef %and3) #10
  %152 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ha, align 4
  %sas_phy2.i = getelementptr inbounds %struct.asd_ha_struct, ptr %153, i32 0, i32 2, i32 17
  %154 = ptrtoint ptr %sas_phy2.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %sas_phy2.i, align 4
  %arrayidx.i434 = getelementptr ptr, ptr %155, i32 %and3
  %156 = ptrtoint ptr %arrayidx.i434 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx.i434, align 4
  %arrayidx5.i435 = getelementptr %struct.done_list_struct, ptr %dl, i32 0, i32 2, i32 1
  %158 = ptrtoint ptr %arrayidx5.i435 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx5.i435, align 1
  %arrayidx7.i = getelementptr %struct.done_list_struct, ptr %dl, i32 0, i32 2, i32 2
  %160 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx7.i, align 1
  %conv.i = zext i8 %161 to i32
  %conv8.i = zext i8 %159 to i32
  %and.i436 = shl nuw nsw i32 %conv8.i, 3
  %mul.i = and i32 %and.i436, 24
  %shl.i437 = shl nuw i32 %conv.i, %mul.i
  %and10.i = and i8 %159, -4
  %162 = zext i8 %and10.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.133)
  switch i8 %and10.i, label %do.end57.i [
    i8 -128, label %sw.bb.i
    i8 -124, label %sw.bb38.i
  ]

sw.bb.i:                                          ; preds = %do.end269
  %163 = zext i32 %shl.i437 to i64
  call void @__sanitizer_cov_trace_switch(i64 %163, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %shl.i437, label %do.end34.i [
    i32 256, label %sw.bb.i.do.end.i_crit_edge
    i32 512, label %sw.bb.i.do.end.i_crit_edge524
    i32 1024, label %sw.bb.i.do.end.i_crit_edge525
    i32 2048, label %sw.bb.i.do.end.i_crit_edge526
    i32 536870912, label %do.end29.i
  ]

sw.bb.i.do.end.i_crit_edge526:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

sw.bb.i.do.end.i_crit_edge525:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

sw.bb.i.do.end.i_crit_edge524:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

sw.bb.i.do.end.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %sw.bb.i.do.end.i_crit_edge, %sw.bb.i.do.end.i_crit_edge524, %sw.bb.i.do.end.i_crit_edge525, %sw.bb.i.do.end.i_crit_edge526
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %and3, i32 noundef %shl.i437) #10
  %sas_prim_lock.i = getelementptr inbounds %struct.asd_sas_phy, ptr %157, i32 0, i32 19
  %call19.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sas_prim_lock.i) #7
  %164 = tail call i32 @llvm.cttz.i32(i32 %shl.i437, i1 true) #7, !range !211
  %165 = add nuw nsw i32 %164, 1
  %sas_prim.i = getelementptr inbounds %struct.asd_sas_phy, ptr %157, i32 0, i32 20
  %166 = ptrtoint ptr %sas_prim.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %sas_prim.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sas_prim_lock.i, i32 noundef %call19.i) #7
  %call25.i = tail call i32 @sas_notify_port_event(ptr noundef %157, i32 noundef 1, i32 noundef 2592) #7
  br label %out

do.end29.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %and3) #10
  br label %out

do.end34.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %and3, i32 noundef 128, i32 noundef %shl.i437) #10
  br label %out

sw.bb38.i:                                        ; preds = %do.end269
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %shl.i437)
  %cond.i = icmp eq i32 %shl.i437, 128
  br i1 %cond.i, label %do.end42.i, label %do.end49.i

do.end42.i:                                       ; preds = %sw.bb38.i
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %and3) #10
  %asd_port.i.i438 = getelementptr %struct.asd_ha_struct, ptr %153, i32 0, i32 8, i32 %and3, i32 4
  %167 = ptrtoint ptr %asd_port.i.i438 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %asd_port.i.i438, align 4
  %asd_ports_lock.i.i439 = getelementptr inbounds %struct.asd_ha_struct, ptr %153, i32 0, i32 9
  %call3.i.i440 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %asd_ports_lock.i.i439) #7
  %tobool.not.i.i441 = icmp eq ptr %168, null
  br i1 %tobool.not.i.i441, label %do.end42.i.asd_deform_port.exit.i_crit_edge, label %if.then.i.i446

do.end42.i.asd_deform_port.exit.i_crit_edge:      ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %asd_deform_port.exit.i

if.then.i.i446:                                   ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  %num_phys.i.i442 = getelementptr inbounds %struct.asd_port, ptr %168, i32 0, i32 3
  %169 = ptrtoint ptr %num_phys.i.i442 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %num_phys.i.i442, align 4
  %dec.i.i = add i32 %170, -1
  store i32 %dec.i.i, ptr %num_phys.i.i442, align 4
  %id.i.i443 = getelementptr %struct.asd_ha_struct, ptr %153, i32 0, i32 8, i32 %and3, i32 0, i32 6
  %171 = ptrtoint ptr %id.i.i443 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %id.i.i443, align 4
  %shl.i.i444 = shl nuw i32 1, %172
  %neg.i.i = xor i32 %shl.i.i444, -1
  %phy_mask.i.i445 = getelementptr inbounds %struct.asd_port, ptr %168, i32 0, i32 2
  %173 = ptrtoint ptr %phy_mask.i.i445 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %phy_mask.i.i445, align 4
  %and.i.i = and i32 %174, %neg.i.i
  store i32 %and.i.i, ptr %phy_mask.i.i445, align 4
  %175 = ptrtoint ptr %asd_port.i.i438 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr null, ptr %asd_port.i.i438, align 4
  br label %asd_deform_port.exit.i

asd_deform_port.exit.i:                           ; preds = %if.then.i.i446, %do.end42.i.asd_deform_port.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %asd_ports_lock.i.i439, i32 noundef %call3.i.i440) #7
  %call45.i = tail call i32 @sas_notify_port_event(ptr noundef %157, i32 noundef 4, i32 noundef 2592) #7
  br label %out

do.end49.i:                                       ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #9
  %call52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %and3, i32 noundef 132, i32 noundef %shl.i437) #10
  br label %out

do.end57.i:                                       ; preds = %do.end269
  call void @__sanitizer_cov_trace_pc() #9
  %call62.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %conv8.i) #10
  br label %out

do.end275:                                        ; preds = %sw.epilog
  %call277 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.8, i32 noundef %and3) #10
  %176 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ha, align 4
  %178 = ptrtoint ptr %status_block to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %status_block, align 1
  %180 = and i8 %179, 7
  %and.i448 = zext i8 %180 to i32
  %arrayidx1.i = getelementptr %struct.asd_ha_struct, ptr %177, i32 0, i32 8, i32 %and.i448
  %arrayidx3.i449 = getelementptr %struct.done_list_struct, ptr %dl, i32 0, i32 2, i32 1
  %181 = ptrtoint ptr %arrayidx3.i449 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx3.i449, align 1
  %183 = and i8 %182, -23
  %184 = zext i8 %183 to i64
  call void @__sanitizer_cov_trace_switch(i64 %184, ptr @__sancov_gen_cov_switch_values.135)
  switch i8 %183, label %do.end275.out_crit_edge [
    i8 64, label %do.end.i452
    i8 -128, label %sw.bb12.i
    i8 32, label %sw.bb22.i
    i8 8, label %do.end275.do.end28.i_crit_edge
    i8 1, label %do.end275.do.end28.i_crit_edge527
  ]

do.end275.do.end28.i_crit_edge527:                ; preds = %do.end275
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28.i

do.end275.do.end28.i_crit_edge:                   ; preds = %do.end275
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28.i

do.end275.out_crit_edge:                          ; preds = %do.end275
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end.i452:                                      ; preds = %do.end275
  call void @__sanitizer_cov_trace_pc() #9
  %call.i450 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %and.i448) #10
  tail call void @asd_turn_led(ptr noundef %177, i32 noundef %and.i448, i32 noundef 0) #7
  %oob_mode.i.i451 = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx1.i, i32 0, i32 12
  %185 = ptrtoint ptr %oob_mode.i.i451 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 0, ptr %oob_mode.i.i451, align 4
  %linkrate.i.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx1.i, i32 0, i32 13
  %186 = ptrtoint ptr %linkrate.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 0, ptr %linkrate.i.i, align 4
  br label %sw.epilog.sink.split.i

sw.bb12.i:                                        ; preds = %do.end275
  %arrayidx8.i = getelementptr %struct.done_list_struct, ptr %dl, i32 0, i32 2, i32 2
  %187 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx8.i, align 1
  tail call void @asd_turn_led(ptr noundef %177, i32 noundef %and.i448, i32 noundef 1) #7
  %phy2.i.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx1.i, i32 0, i32 4
  %189 = ptrtoint ptr %phy2.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %phy2.i.i, align 4
  %conv.i.i = zext i8 %188 to i32
  %and.i.i453 = and i32 %conv.i.i, 7
  %191 = zext i32 %and.i.i453 to i64
  call void @__sanitizer_cov_trace_switch(i64 %191, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %and.i.i453, label %sw.bb12.i.sw.epilog.i.i_crit_edge [
    i32 4, label %sw.bb12.i.sw.epilog.sink.split.i.i_crit_edge
    i32 2, label %sw.bb6.i.i
    i32 1, label %sw.bb12.i.i
  ]

sw.bb12.i.sw.epilog.sink.split.i.i_crit_edge:     ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i.i

sw.bb12.i.sw.epilog.i.i_crit_edge:                ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb6.i.i:                                       ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i.i

sw.bb12.i.i:                                      ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %sw.bb12.i.i, %sw.bb6.i.i, %sw.bb12.i.sw.epilog.sink.split.i.i_crit_edge
  %.sink52.i.i = phi i32 [ 8, %sw.bb12.i.i ], [ 9, %sw.bb6.i.i ], [ 10, %sw.bb12.i.sw.epilog.sink.split.i.i_crit_edge ]
  %linkrate14.i.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx1.i, i32 0, i32 13
  %192 = ptrtoint ptr %linkrate14.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %.sink52.i.i, ptr %linkrate14.i.i, align 4
  %negotiated_linkrate17.i.i = getelementptr inbounds %struct.sas_phy, ptr %190, i32 0, i32 4
  %193 = ptrtoint ptr %negotiated_linkrate17.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %.sink52.i.i, ptr %negotiated_linkrate17.i.i, align 8
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.epilog.sink.split.i.i, %sw.bb12.i.sw.epilog.i.i_crit_edge
  %linkrate19.i.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx1.i, i32 0, i32 13
  %194 = ptrtoint ptr %linkrate19.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %linkrate19.i.i, align 4
  %negotiated_linkrate20.i.i = getelementptr inbounds %struct.sas_phy, ptr %190, i32 0, i32 4
  %196 = ptrtoint ptr %negotiated_linkrate20.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %negotiated_linkrate20.i.i, align 8
  %maximum_linkrate_hw.i.i = getelementptr inbounds %struct.sas_phy, ptr %190, i32 0, i32 7
  %197 = ptrtoint ptr %maximum_linkrate_hw.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 9, ptr %maximum_linkrate_hw.i.i, align 4
  %minimum_linkrate_hw.i.i = getelementptr inbounds %struct.sas_phy, ptr %190, i32 0, i32 5
  %198 = ptrtoint ptr %minimum_linkrate_hw.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 8, ptr %minimum_linkrate_hw.i.i, align 4
  %phy_desc.i.i454 = getelementptr %struct.asd_ha_struct, ptr %177, i32 0, i32 8, i32 %and.i448, i32 1
  %199 = ptrtoint ptr %phy_desc.i.i454 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %phy_desc.i.i454, align 4
  %max_sas_lrate.i.i = getelementptr inbounds %struct.asd_phy_desc, ptr %200, i32 0, i32 1
  %201 = ptrtoint ptr %max_sas_lrate.i.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %max_sas_lrate.i.i, align 1
  %conv21.i.i = zext i8 %202 to i32
  %maximum_linkrate.i.i = getelementptr inbounds %struct.sas_phy, ptr %190, i32 0, i32 8
  %203 = ptrtoint ptr %maximum_linkrate.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %conv21.i.i, ptr %maximum_linkrate.i.i, align 8
  %204 = load ptr, ptr %phy_desc.i.i454, align 4
  %min_sas_lrate.i.i = getelementptr inbounds %struct.asd_phy_desc, ptr %204, i32 0, i32 2
  %205 = ptrtoint ptr %min_sas_lrate.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %min_sas_lrate.i.i, align 1
  %conv23.i.i = zext i8 %206 to i32
  %minimum_linkrate.i.i = getelementptr inbounds %struct.sas_phy, ptr %190, i32 0, i32 6
  %207 = ptrtoint ptr %minimum_linkrate.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %conv23.i.i, ptr %minimum_linkrate.i.i, align 8
  %and25.i.i = and i32 %conv.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool.not.i.i455 = icmp eq i32 %and25.i.i, 0
  br i1 %tobool.not.i.i455, label %if.else.i.i456, label %sw.epilog.i.i.if.end34.sink.split.i.i_crit_edge

sw.epilog.i.i.if.end34.sink.split.i.i_crit_edge:  ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.sink.split.i.i

if.else.i.i456:                                   ; preds = %sw.epilog.i.i
  %and29.i.i = and i32 %conv.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool30.not.i.i, label %if.else.i.i456.get_lrate_mode.exit.i_crit_edge, label %if.else.i.i456.if.end34.sink.split.i.i_crit_edge

if.else.i.i456.if.end34.sink.split.i.i_crit_edge: ; preds = %if.else.i.i456
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.sink.split.i.i

if.else.i.i456.get_lrate_mode.exit.i_crit_edge:   ; preds = %if.else.i.i456
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_lrate_mode.exit.i

if.end34.sink.split.i.i:                          ; preds = %if.else.i.i456.if.end34.sink.split.i.i_crit_edge, %sw.epilog.i.i.if.end34.sink.split.i.i_crit_edge
  %.sink53.i.i = phi i32 [ 2, %sw.epilog.i.i.if.end34.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i456.if.end34.sink.split.i.i_crit_edge ]
  %oob_mode33.i.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx1.i, i32 0, i32 12
  %208 = ptrtoint ptr %oob_mode33.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %.sink53.i.i, ptr %oob_mode33.i.i, align 4
  br label %get_lrate_mode.exit.i

get_lrate_mode.exit.i:                            ; preds = %if.end34.sink.split.i.i, %if.else.i.i456.get_lrate_mode.exit.i_crit_edge
  %209 = ptrtoint ptr %linkrate19.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %linkrate19.i.i, align 4
  %iproto.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx1.i, i32 0, i32 8
  %211 = ptrtoint ptr %iproto.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %iproto.i, align 4
  %call19.i457 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %and.i448, i32 noundef %210, i32 noundef %212) #10
  br label %sw.epilog.sink.split.i

sw.bb22.i:                                        ; preds = %do.end275
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @asd_turn_led(ptr noundef %177, i32 noundef %and.i448, i32 noundef 1) #7
  br label %sw.epilog.sink.split.i

do.end28.i:                                       ; preds = %do.end275.do.end28.i_crit_edge, %do.end275.do.end28.i_crit_edge527
  %conv32.i = zext i8 %182 to i32
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %and.i448, i32 noundef %conv32.i) #10
  tail call void @asd_turn_led(ptr noundef %177, i32 noundef %and.i448, i32 noundef 0) #7
  %oob_mode.i59.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx1.i, i32 0, i32 12
  %213 = ptrtoint ptr %oob_mode.i59.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 0, ptr %oob_mode.i59.i, align 4
  %linkrate.i60.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx1.i, i32 0, i32 13
  %214 = ptrtoint ptr %linkrate.i60.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 0, ptr %linkrate.i60.i, align 4
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %do.end28.i, %sw.bb22.i, %get_lrate_mode.exit.i, %do.end.i452
  %.sink.i = phi i32 [ 2, %do.end28.i ], [ 3, %sw.bb22.i ], [ 1, %get_lrate_mode.exit.i ], [ 0, %do.end.i452 ]
  %call36.i = tail call i32 @sas_notify_phy_event(ptr noundef %arrayidx1.i, i32 noundef %.sink.i, i32 noundef 2592) #7
  br label %out

do.end281:                                        ; preds = %sw.epilog
  %call283 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.8, i32 noundef %and3) #10
  %215 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %ha, align 4
  %sas_phy2.i459 = getelementptr inbounds %struct.asd_ha_struct, ptr %216, i32 0, i32 2, i32 17
  %217 = ptrtoint ptr %sas_phy2.i459 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %sas_phy2.i459, align 4
  %arrayidx.i460 = getelementptr ptr, ptr %218, i32 %and3
  %219 = ptrtoint ptr %arrayidx.i460 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %arrayidx.i460, align 4
  %arrayidx4.i = getelementptr %struct.done_list_struct, ptr %dl, i32 0, i32 2, i32 1
  %221 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %arrayidx4.i, align 1
  %arrayidx6.i = getelementptr %struct.done_list_struct, ptr %dl, i32 0, i32 2, i32 2
  %223 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx6.i, align 1
  %225 = zext i8 %222 to i64
  call void @__sanitizer_cov_trace_switch(i64 %225, ptr @__sancov_gen_cov_switch_values.137)
  switch i8 %222, label %do.end27.i [
    i8 0, label %do.end.i462
    i8 1, label %do.end10.i
    i8 2, label %do.end16.i
    i8 3, label %do.end22.i
  ]

do.end.i462:                                      ; preds = %do.end281
  call void @__sanitizer_cov_trace_pc() #9
  %call.i461 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %and3) #10
  br label %sw.epilog.i

do.end10.i:                                       ; preds = %do.end281
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %and3) #10
  br label %sw.epilog.i

do.end16.i:                                       ; preds = %do.end281
  call void @__sanitizer_cov_trace_pc() #9
  %call18.i463 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %and3) #10
  br label %sw.epilog.i

do.end22.i:                                       ; preds = %do.end281
  call void @__sanitizer_cov_trace_pc() #9
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %and3) #10
  br label %sw.epilog.i

do.end27.i:                                       ; preds = %do.end281
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i464 = zext i8 %222 to i32
  %call30.i465 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, i32 noundef %and3, i32 noundef %conv.i464) #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end27.i, %do.end22.i, %do.end16.i, %do.end10.i, %do.end.i462
  tail call void @asd_turn_led(ptr noundef %216, i32 noundef %and3, i32 noundef 0) #7
  %oob_mode.i.i466 = getelementptr inbounds %struct.asd_sas_phy, ptr %220, i32 0, i32 12
  %226 = ptrtoint ptr %oob_mode.i.i466 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 0, ptr %oob_mode.i.i466, align 4
  %linkrate.i.i467 = getelementptr inbounds %struct.asd_sas_phy, ptr %220, i32 0, i32 13
  %227 = ptrtoint ptr %linkrate.i.i467 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 0, ptr %linkrate.i.i467, align 4
  %asd_port.i.i468 = getelementptr %struct.asd_ha_struct, ptr %216, i32 0, i32 8, i32 %and3, i32 4
  %228 = ptrtoint ptr %asd_port.i.i468 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %asd_port.i.i468, align 4
  %asd_ports_lock.i.i469 = getelementptr inbounds %struct.asd_ha_struct, ptr %216, i32 0, i32 9
  %call3.i.i470 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %asd_ports_lock.i.i469) #7
  %tobool.not.i.i471 = icmp eq ptr %229, null
  br i1 %tobool.not.i.i471, label %sw.epilog.i.asd_deform_port.exit.i481_crit_edge, label %if.then.i.i479

sw.epilog.i.asd_deform_port.exit.i481_crit_edge:  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %asd_deform_port.exit.i481

if.then.i.i479:                                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %num_phys.i.i472 = getelementptr inbounds %struct.asd_port, ptr %229, i32 0, i32 3
  %230 = ptrtoint ptr %num_phys.i.i472 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %num_phys.i.i472, align 4
  %dec.i.i473 = add i32 %231, -1
  store i32 %dec.i.i473, ptr %num_phys.i.i472, align 4
  %id.i.i474 = getelementptr %struct.asd_ha_struct, ptr %216, i32 0, i32 8, i32 %and3, i32 0, i32 6
  %232 = ptrtoint ptr %id.i.i474 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %id.i.i474, align 4
  %shl.i.i475 = shl nuw i32 1, %233
  %neg.i.i476 = xor i32 %shl.i.i475, -1
  %phy_mask.i.i477 = getelementptr inbounds %struct.asd_port, ptr %229, i32 0, i32 2
  %234 = ptrtoint ptr %phy_mask.i.i477 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %phy_mask.i.i477, align 4
  %and.i.i478 = and i32 %235, %neg.i.i476
  store i32 %and.i.i478, ptr %phy_mask.i.i477, align 4
  %236 = ptrtoint ptr %asd_port.i.i468 to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr null, ptr %asd_port.i.i468, align 4
  br label %asd_deform_port.exit.i481

asd_deform_port.exit.i481:                        ; preds = %if.then.i.i479, %sw.epilog.i.asd_deform_port.exit.i481_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %asd_ports_lock.i.i469, i32 noundef %call3.i.i470) #7
  %call31.i480 = tail call i32 @sas_notify_port_event(ptr noundef %220, i32 noundef 2, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %cmp.i = icmp eq i8 %224, 0
  br i1 %cmp.i, label %if.then.i, label %asd_deform_port.exit.i481.out_crit_edge

asd_deform_port.exit.i481.out_crit_edge:          ; preds = %asd_deform_port.exit.i481
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then.i:                                        ; preds = %asd_deform_port.exit.i481
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num.i) #7
  %237 = ptrtoint ptr %num.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 1, ptr %num.i, align 4
  %238 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %ha, align 4
  %call35.i = call ptr @asd_ascb_alloc_list(ptr noundef %239, ptr noundef nonnull %num.i, i32 noundef 2592) #7
  %tobool.not.i = icmp eq ptr %call35.i, null
  br i1 %tobool.not.i, label %do.end39.i, label %do.end44.i

do.end39.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.87) #10
  br label %cleanup.i

do.end44.i:                                       ; preds = %if.then.i
  %call46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %and3) #10
  call void @asd_build_control_phy(ptr noundef nonnull %call35.i, i32 noundef %and3, i8 noundef zeroext 1) #7
  %240 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %ha, align 4
  %call48.i = call i32 @asd_post_ascb_list(ptr noundef %241, ptr noundef nonnull %call35.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp49.not.i = icmp eq i32 %call48.i, 0
  br i1 %cmp49.not.i, label %do.end44.i.cleanup.i_crit_edge, label %if.then.i76.i

do.end44.i.cleanup.i_crit_edge:                   ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.then.i76.i:                                    ; preds = %do.end44.i
  %ha.i.i482 = getelementptr inbounds %struct.asd_ascb, ptr %call35.i, i32 0, i32 1
  %242 = ptrtoint ptr %ha.i.i482 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %ha.i.i482, align 4
  %244 = ptrtoint ptr %call35.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load volatile ptr, ptr %call35.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %245, %call35.i
  br i1 %cmp.i.not.i.i, label %asd_ascb_free.exit.i, label %do.body6.i.i, !prof !212

do.body6.i.i:                                     ; preds = %if.then.i76.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_hwi.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #7, !srcloc !213
  unreachable

asd_ascb_free.exit.i:                             ; preds = %if.then.i76.i
  call void @__sanitizer_cov_trace_pc() #9
  %tc_index_lock.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %243, i32 0, i32 13, i32 6
  %call16.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tc_index_lock.i.i) #7
  %246 = ptrtoint ptr %ha.i.i482 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %ha.i.i482, align 4
  %tc_index.i.i = getelementptr inbounds %struct.asd_ascb, ptr %call35.i, i32 0, i32 12
  %248 = ptrtoint ptr %tc_index.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %tc_index.i.i, align 4
  %tc_index_array.i.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %247, i32 0, i32 13, i32 7
  %250 = ptrtoint ptr %tc_index_array.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %tc_index_array.i.i.i, align 4
  %arrayidx.i.i.i483 = getelementptr ptr, ptr %251, i32 %249
  %252 = ptrtoint ptr %arrayidx.i.i.i483 to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr null, ptr %arrayidx.i.i.i483, align 4
  %tc_index_bitmap.i.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %247, i32 0, i32 13, i32 8
  %253 = ptrtoint ptr %tc_index_bitmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %tc_index_bitmap.i.i.i, align 4
  call void @_clear_bit(i32 noundef %249, ptr noundef %254) #7
  %255 = ptrtoint ptr %ha.i.i482 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %ha.i.i482, align 4
  %tc_index_lock25.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %256, i32 0, i32 13, i32 6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tc_index_lock25.i.i, i32 noundef %call16.i.i) #7
  %scb_pool.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %243, i32 0, i32 12
  %257 = ptrtoint ptr %scb_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %scb_pool.i.i, align 4
  %dma_scb.i.i = getelementptr inbounds %struct.asd_ascb, ptr %call35.i, i32 0, i32 3
  %259 = ptrtoint ptr %dma_scb.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %dma_scb.i.i, align 4
  %dma_handle.i.i = getelementptr inbounds %struct.asd_ascb, ptr %call35.i, i32 0, i32 3, i32 1
  %261 = ptrtoint ptr %dma_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %dma_handle.i.i, align 4
  call void @dma_pool_free(ptr noundef %258, ptr noundef %260, i32 noundef %262) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_ascb_cache to i32))
  %263 = load ptr, ptr @asd_ascb_cache, align 4
  call void @kmem_cache_free(ptr noundef %263, ptr noundef nonnull %call35.i) #7
  br label %cleanup.i

cleanup.i:                                        ; preds = %asd_ascb_free.exit.i, %do.end44.i.cleanup.i_crit_edge, %do.end39.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num.i) #7
  br label %out

do.end287:                                        ; preds = %sw.epilog
  %call289 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.8, i32 noundef %and3) #10
  tail call void @asd_turn_led(ptr noundef %1, i32 noundef %and3, i32 noundef 0) #7
  %oob_mode.i = getelementptr inbounds %struct.asd_sas_phy, ptr %10, i32 0, i32 12
  %264 = ptrtoint ptr %oob_mode.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 0, ptr %oob_mode.i, align 4
  %linkrate.i = getelementptr inbounds %struct.asd_sas_phy, ptr %10, i32 0, i32 13
  %265 = ptrtoint ptr %linkrate.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 0, ptr %linkrate.i, align 4
  %asd_port.i = getelementptr %struct.asd_ha_struct, ptr %1, i32 0, i32 8, i32 %and3, i32 4
  %266 = ptrtoint ptr %asd_port.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %asd_port.i, align 4
  %asd_ports_lock.i = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 9
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %asd_ports_lock.i) #7
  %tobool.not.i484 = icmp eq ptr %267, null
  br i1 %tobool.not.i484, label %do.end287.asd_deform_port.exit_crit_edge, label %if.then.i487

do.end287.asd_deform_port.exit_crit_edge:         ; preds = %do.end287
  call void @__sanitizer_cov_trace_pc() #9
  br label %asd_deform_port.exit

if.then.i487:                                     ; preds = %do.end287
  call void @__sanitizer_cov_trace_pc() #9
  %num_phys.i = getelementptr inbounds %struct.asd_port, ptr %267, i32 0, i32 3
  %268 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %num_phys.i, align 4
  %dec.i = add i32 %269, -1
  store i32 %dec.i, ptr %num_phys.i, align 4
  %id.i = getelementptr %struct.asd_ha_struct, ptr %1, i32 0, i32 8, i32 %and3, i32 0, i32 6
  %270 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %id.i, align 4
  %shl.i485 = shl nuw i32 1, %271
  %neg.i = xor i32 %shl.i485, -1
  %phy_mask.i = getelementptr inbounds %struct.asd_port, ptr %267, i32 0, i32 2
  %272 = ptrtoint ptr %phy_mask.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %phy_mask.i, align 4
  %and.i486 = and i32 %273, %neg.i
  store i32 %and.i486, ptr %phy_mask.i, align 4
  %274 = ptrtoint ptr %asd_port.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr null, ptr %asd_port.i, align 4
  br label %asd_deform_port.exit

asd_deform_port.exit:                             ; preds = %if.then.i487, %do.end287.asd_deform_port.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %asd_ports_lock.i, i32 noundef %call3.i) #7
  %call290 = tail call i32 @sas_notify_port_event(ptr noundef %10, i32 noundef 3, i32 noundef 2592) #7
  br label %out

do.end293:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call296 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.8, i32 noundef %and3, i32 noundef %conv259) #10
  %275 = ptrtoint ptr %opcode to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %opcode, align 1
  %conv302 = zext i8 %276 to i32
  %call303 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %sub, i32 noundef %conv302) #10
  %call309 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv259, i32 noundef %and3) #10
  %dma_scb314 = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 3
  %277 = ptrtoint ptr %dma_scb314 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %dma_scb314, align 4
  %dma_handle317 = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 3, i32 1
  %279 = ptrtoint ptr %dma_handle317 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %dma_handle317, align 4
  %conv318 = zext i32 %280 to i64
  %scb319 = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 2
  %281 = ptrtoint ptr %scb319 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %scb319, align 4
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_loadN_noabort(i32 %283, i32 8)
  %284 = load i64, ptr %282, align 1
  %285 = tail call i64 @llvm.bswap.i64(i64 %284)
  %index324 = getelementptr inbounds %struct.scb_header, ptr %282, i32 0, i32 1
  %286 = ptrtoint ptr %index324 to i32
  call void @__asan_loadN_noabort(i32 %286, i32 2)
  %287 = load i16, ptr %index324, align 1
  %288 = tail call i16 @llvm.bswap.i16(i16 %287)
  %conv325 = zext i16 %288 to i32
  %opcode328 = getelementptr inbounds %struct.scb_header, ptr %282, i32 0, i32 2
  %289 = ptrtoint ptr %opcode328 to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %opcode328, align 1
  %conv329 = zext i8 %290 to i32
  %call330 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %278, i64 noundef %conv318, i64 noundef %285, i32 noundef %conv325, i32 noundef %conv329) #10
  br label %out

out:                                              ; preds = %do.end293, %asd_deform_port.exit, %cleanup.i, %asd_deform_port.exit.i481.out_crit_edge, %sw.epilog.sink.split.i, %do.end275.out_crit_edge, %do.end57.i, %do.end49.i, %asd_deform_port.exit.i, %do.end34.i, %do.end29.i, %do.end.i, %asd_bytes_dmaed_tasklet.exit, %do.end253, %do.end247, %cleanup228.out_crit_edge, %do.body187.out_crit_edge, %do.end181, %if.end114.out_crit_edge, %if.end82.out_crit_edge, %do.end78
  call void @asd_invalidate_edb(ptr noundef %ascb, i32 noundef %sub)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @asd_build_control_phy(ptr nocapture noundef %ascb, i32 noundef %phy_id, i8 noundef zeroext %subfunc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ha = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 1
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 4
  %scb1 = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 2
  %2 = ptrtoint ptr %scb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scb1, align 4
  %4 = getelementptr inbounds %struct.scb, ptr %3, i32 0, i32 1
  %opcode = getelementptr inbounds %struct.scb_header, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -128, ptr %opcode, align 1
  %conv = trunc i32 %phy_id to i8
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %4, align 1
  %sub_func = getelementptr inbounds %struct.scb, ptr %3, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %sub_func to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %subfunc, ptr %sub_func, align 1
  %8 = zext i8 %subfunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.138)
  switch i8 %subfunc, label %entry.sw.epilog_crit_edge [
    i8 -127, label %entry.sw.bb_crit_edge
    i8 1, label %entry.sw.bb_crit_edge48
    i8 2, label %entry.sw.bb14_crit_edge
  ]

entry.sw.bb14_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14

entry.sw.bb_crit_edge48:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge48
  %hot_plug_delay = getelementptr inbounds %struct.control_phy, ptr %4, i32 0, i32 4
  %9 = ptrtoint ptr %hot_plug_delay to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 20, ptr %hot_plug_delay, align 1
  %speed_mask = getelementptr inbounds %struct.control_phy, ptr %4, i32 0, i32 3
  %phy_desc = getelementptr %struct.asd_ha_struct, ptr %1, i32 0, i32 8, i32 %phy_id, i32 1
  %10 = ptrtoint ptr %phy_desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_desc, align 4
  %12 = ptrtoint ptr %speed_mask to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 31, ptr %speed_mask, align 1
  %max_sas_lrate.i = getelementptr inbounds %struct.asd_phy_desc, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %max_sas_lrate.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %max_sas_lrate.i, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.139)
  switch i8 %14, label %sw.bb.sw.bb3.i_crit_edge [
    i8 10, label %sw.bb.i
    i8 8, label %sw.bb.sw.bb7.i_crit_edge
  ]

sw.bb.sw.bb7.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7.i

sw.bb.sw.bb3.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %speed_mask to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 27, ptr %speed_mask, align 1
  br label %sw.bb3.i

sw.bb3.i:                                         ; preds = %sw.bb.i, %sw.bb.sw.bb3.i_crit_edge
  %17 = ptrtoint ptr %speed_mask to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %speed_mask, align 1
  %19 = and i8 %18, -3
  store i8 %19, ptr %speed_mask, align 1
  br label %sw.bb7.i

sw.bb7.i:                                         ; preds = %sw.bb3.i, %sw.bb.sw.bb7.i_crit_edge
  %20 = ptrtoint ptr %speed_mask to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %speed_mask, align 1
  %22 = and i8 %21, -2
  store i8 %22, ptr %speed_mask, align 1
  %min_sas_lrate.i = getelementptr inbounds %struct.asd_phy_desc, ptr %11, i32 0, i32 2
  %23 = ptrtoint ptr %min_sas_lrate.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %min_sas_lrate.i, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.140)
  switch i8 %24, label %sw.bb7.i.sw.epilog21.i_crit_edge [
    i8 10, label %sw.bb12.i
    i8 9, label %sw.bb7.i.sw.bb15.i_crit_edge
  ]

sw.bb7.i.sw.bb15.i_crit_edge:                     ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb15.i

sw.bb7.i.sw.epilog21.i_crit_edge:                 ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21.i

sw.bb12.i:                                        ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = or i8 %22, 2
  %27 = ptrtoint ptr %speed_mask to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %speed_mask, align 1
  br label %sw.bb15.i

sw.bb15.i:                                        ; preds = %sw.bb12.i, %sw.bb7.i.sw.bb15.i_crit_edge
  %28 = ptrtoint ptr %speed_mask to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %speed_mask, align 1
  %30 = or i8 %29, 1
  store i8 %30, ptr %speed_mask, align 1
  br label %sw.epilog21.i

sw.epilog21.i:                                    ; preds = %sw.bb15.i, %sw.bb7.i.sw.epilog21.i_crit_edge
  %max_sata_lrate.i = getelementptr inbounds %struct.asd_phy_desc, ptr %11, i32 0, i32 3
  %31 = ptrtoint ptr %max_sata_lrate.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %max_sata_lrate.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %32)
  %cond.i = icmp eq i8 %32, 9
  br i1 %cond.i, label %sw.bb23.i, label %sw.epilog21.i.sw.bb28.i_crit_edge

sw.epilog21.i.sw.bb28.i_crit_edge:                ; preds = %sw.epilog21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28.i

sw.bb23.i:                                        ; preds = %sw.epilog21.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %speed_mask to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %speed_mask, align 1
  %35 = and i8 %34, -17
  store i8 %35, ptr %speed_mask, align 1
  br label %sw.bb28.i

sw.bb28.i:                                        ; preds = %sw.bb23.i, %sw.epilog21.i.sw.bb28.i_crit_edge
  %36 = ptrtoint ptr %speed_mask to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %speed_mask, align 1
  %38 = and i8 %37, -9
  store i8 %38, ptr %speed_mask, align 1
  %min_sata_lrate.i = getelementptr inbounds %struct.asd_phy_desc, ptr %11, i32 0, i32 4
  %39 = ptrtoint ptr %min_sata_lrate.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %min_sata_lrate.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %40)
  %cond41.i = icmp eq i8 %40, 9
  br i1 %cond41.i, label %sw.bb34.i, label %sw.bb28.i.set_speed_mask.exit_crit_edge

sw.bb28.i.set_speed_mask.exit_crit_edge:          ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_speed_mask.exit

sw.bb34.i:                                        ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = or i8 %37, 8
  %42 = ptrtoint ptr %speed_mask to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %speed_mask, align 1
  br label %set_speed_mask.exit

set_speed_mask.exit:                              ; preds = %sw.bb34.i, %sw.bb28.i.set_speed_mask.exit_crit_edge
  %role = getelementptr %struct.asd_ha_struct, ptr %1, i32 0, i32 8, i32 %phy_id, i32 0, i32 11
  %43 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %44)
  %switch.selectcmp = icmp eq i32 %44, 64
  %switch.select = select i1 %switch.selectcmp, i8 14, i8 -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %44)
  %switch.selectcmp46 = icmp eq i32 %44, 128
  %switch.select47 = select i1 %switch.selectcmp46, i8 -32, i8 %switch.select
  %port_type10 = getelementptr inbounds %struct.scb, ptr %3, i32 0, i32 1, i32 0, i32 2
  %45 = ptrtoint ptr %port_type10 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %switch.select47, ptr %port_type10, align 1
  %link_reset_retries = getelementptr inbounds %struct.scb, ptr %3, i32 0, i32 1, i32 0, i32 2, i32 3, i32 1
  %46 = ptrtoint ptr %link_reset_retries to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 10, ptr %link_reset_retries, align 1
  br label %sw.bb14

sw.bb14:                                          ; preds = %set_speed_mask.exit, %entry.sw.bb14_crit_edge
  %func_mask = getelementptr inbounds %struct.control_phy, ptr %4, i32 0, i32 2
  %47 = ptrtoint ptr %func_mask to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 40, ptr %func_mask, align 1
  %phy_desc15 = getelementptr %struct.asd_ha_struct, ptr %1, i32 0, i32 8, i32 %phy_id, i32 1
  %48 = ptrtoint ptr %phy_desc15 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %phy_desc15, align 4
  %flags = getelementptr inbounds %struct.asd_phy_desc, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %flags, align 1
  %52 = and i8 %51, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not = icmp eq i8 %52, 0
  %spec.store.select = select i1 %tobool.not, i8 40, i8 8
  %53 = ptrtoint ptr %func_mask to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %spec.store.select, ptr %func_mask, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %entry.sw.epilog_crit_edge
  %conn_handle = getelementptr inbounds %struct.scb, ptr %3, i32 0, i32 1, i32 0, i32 5
  %54 = ptrtoint ptr %conn_handle to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 -1, ptr %conn_handle, align 1
  %tasklet_complete = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 5
  %55 = ptrtoint ptr %tasklet_complete to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @control_phy_tasklet_complete, ptr %tasklet_complete, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @control_phy_tasklet_complete(ptr noundef %ascb, ptr nocapture noundef readonly %dl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ha = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 1
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 4
  %scb1 = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 2
  %2 = ptrtoint ptr %scb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scb1, align 4
  %4 = getelementptr inbounds %struct.scb, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  %idxprom = zext i8 %6 to i32
  %arrayidx = getelementptr %struct.asd_ha_struct, ptr %1, i32 0, i32 8, i32 %idxprom
  %status_block = getelementptr inbounds %struct.done_list_struct, ptr %dl, i32 0, i32 2
  %7 = ptrtoint ptr %status_block to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %status_block, align 1
  %arrayidx6 = getelementptr %struct.done_list_struct, ptr %dl, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx6, align 1
  %arrayidx8 = getelementptr %struct.done_list_struct, ptr %dl, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.not = icmp eq i8 %8, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %8 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.107, i32 noundef %idxprom, i32 noundef %conv) #10
  br label %out

if.end:                                           ; preds = %entry
  %sub_func = getelementptr inbounds %struct.scb, ptr %3, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %sub_func to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sub_func, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.141)
  switch i8 %14, label %do.end124 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb24
    i8 2, label %if.end.do.end116_crit_edge
    i8 5, label %if.end.do.end116_crit_edge181
    i8 -127, label %if.end.do.end116_crit_edge182
  ]

if.end.do.end116_crit_edge182:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end116

if.end.do.end116_crit_edge181:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end116

if.end.do.end116_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end116

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw i32 1, %idxprom
  %enabled_phys = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 7, i32 5
  %16 = ptrtoint ptr %enabled_phys to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %enabled_phys, align 1
  %18 = trunc i32 %shl to i8
  %19 = xor i8 %18, -1
  %conv15 = and i8 %17, %19
  store i8 %conv15, ptr %enabled_phys, align 1
  tail call void @asd_turn_led(ptr noundef %1, i32 noundef %idxprom, i32 noundef 0) #7
  tail call void @asd_control_led(ptr noundef %1, i32 noundef %idxprom, i32 noundef 0) #7
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.107, i32 noundef %idxprom) #10
  br label %out

sw.bb24:                                          ; preds = %if.end
  tail call void @asd_control_led(ptr noundef %1, i32 noundef %idxprom, i32 noundef 1) #7
  %conv26 = zext i8 %10 to i32
  %and27 = and i32 %conv26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool.not = icmp eq i32 %and27, 0
  br i1 %tobool.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %sw.bb24
  %shl30 = shl nuw i32 1, %idxprom
  %enabled_phys32 = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 7, i32 5
  %20 = ptrtoint ptr %enabled_phys32 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %enabled_phys32, align 1
  %22 = trunc i32 %shl30 to i8
  %conv34 = or i8 %21, %22
  store i8 %conv34, ptr %enabled_phys32, align 1
  %phy2.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx, i32 0, i32 4
  %23 = ptrtoint ptr %phy2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phy2.i, align 4
  %conv.i = zext i8 %12 to i32
  %and.i = and i32 %conv.i, 7
  %25 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %and.i, label %if.then28.sw.epilog.i_crit_edge [
    i32 4, label %if.then28.sw.epilog.sink.split.i_crit_edge
    i32 2, label %sw.bb6.i
    i32 1, label %sw.bb12.i
  ]

if.then28.sw.epilog.sink.split.i_crit_edge:       ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i

if.then28.sw.epilog.i_crit_edge:                  ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i

sw.bb12.i:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb12.i, %sw.bb6.i, %if.then28.sw.epilog.sink.split.i_crit_edge
  %.sink52.i = phi i32 [ 8, %sw.bb12.i ], [ 9, %sw.bb6.i ], [ 10, %if.then28.sw.epilog.sink.split.i_crit_edge ]
  %linkrate14.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx, i32 0, i32 13
  %26 = ptrtoint ptr %linkrate14.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink52.i, ptr %linkrate14.i, align 4
  %negotiated_linkrate17.i = getelementptr inbounds %struct.sas_phy, ptr %24, i32 0, i32 4
  %27 = ptrtoint ptr %negotiated_linkrate17.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink52.i, ptr %negotiated_linkrate17.i, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.then28.sw.epilog.i_crit_edge
  %linkrate19.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx, i32 0, i32 13
  %28 = ptrtoint ptr %linkrate19.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %linkrate19.i, align 4
  %negotiated_linkrate20.i = getelementptr inbounds %struct.sas_phy, ptr %24, i32 0, i32 4
  %30 = ptrtoint ptr %negotiated_linkrate20.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %negotiated_linkrate20.i, align 8
  %maximum_linkrate_hw.i = getelementptr inbounds %struct.sas_phy, ptr %24, i32 0, i32 7
  %31 = ptrtoint ptr %maximum_linkrate_hw.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 9, ptr %maximum_linkrate_hw.i, align 4
  %minimum_linkrate_hw.i = getelementptr inbounds %struct.sas_phy, ptr %24, i32 0, i32 5
  %32 = ptrtoint ptr %minimum_linkrate_hw.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8, ptr %minimum_linkrate_hw.i, align 4
  %phy_desc.i = getelementptr %struct.asd_ha_struct, ptr %1, i32 0, i32 8, i32 %idxprom, i32 1
  %33 = ptrtoint ptr %phy_desc.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %phy_desc.i, align 4
  %max_sas_lrate.i = getelementptr inbounds %struct.asd_phy_desc, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %max_sas_lrate.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %max_sas_lrate.i, align 1
  %conv21.i = zext i8 %36 to i32
  %maximum_linkrate.i = getelementptr inbounds %struct.sas_phy, ptr %24, i32 0, i32 8
  %37 = ptrtoint ptr %maximum_linkrate.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv21.i, ptr %maximum_linkrate.i, align 8
  %38 = load ptr, ptr %phy_desc.i, align 4
  %min_sas_lrate.i = getelementptr inbounds %struct.asd_phy_desc, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %min_sas_lrate.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %min_sas_lrate.i, align 1
  %conv23.i = zext i8 %40 to i32
  %minimum_linkrate.i = getelementptr inbounds %struct.sas_phy, ptr %24, i32 0, i32 6
  %41 = ptrtoint ptr %minimum_linkrate.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv23.i, ptr %minimum_linkrate.i, align 8
  %and25.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %sw.epilog.i.if.end34.sink.split.i_crit_edge

sw.epilog.i.if.end34.sink.split.i_crit_edge:      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.sink.split.i

if.else.i:                                        ; preds = %sw.epilog.i
  %and29.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.else.i.get_lrate_mode.exit_crit_edge, label %if.else.i.if.end34.sink.split.i_crit_edge

if.else.i.if.end34.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.sink.split.i

if.else.i.get_lrate_mode.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_lrate_mode.exit

if.end34.sink.split.i:                            ; preds = %if.else.i.if.end34.sink.split.i_crit_edge, %sw.epilog.i.if.end34.sink.split.i_crit_edge
  %.sink53.i = phi i32 [ 2, %sw.epilog.i.if.end34.sink.split.i_crit_edge ], [ 1, %if.else.i.if.end34.sink.split.i_crit_edge ]
  %oob_mode33.i = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx, i32 0, i32 12
  %42 = ptrtoint ptr %oob_mode33.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.sink53.i, ptr %oob_mode33.i, align 4
  br label %get_lrate_mode.exit

get_lrate_mode.exit:                              ; preds = %if.end34.sink.split.i, %if.else.i.get_lrate_mode.exit_crit_edge
  tail call void @asd_turn_led(ptr noundef %1, i32 noundef %idxprom, i32 noundef 1) #7
  %43 = ptrtoint ptr %linkrate19.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %linkrate19.i, align 4
  %iproto = getelementptr inbounds %struct.asd_sas_phy, ptr %arrayidx, i32 0, i32 8
  %45 = ptrtoint ptr %iproto to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %iproto, align 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.107, i32 noundef %idxprom, i32 noundef %44, i32 noundef %46) #10
  br label %out

if.else:                                          ; preds = %sw.bb24
  %and44 = and i32 %conv26, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.else61, label %if.then46

if.then46:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %shl48 = shl nuw i32 1, %idxprom
  %enabled_phys50 = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 7, i32 5
  %47 = ptrtoint ptr %enabled_phys50 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %enabled_phys50, align 1
  %49 = trunc i32 %shl48 to i8
  %conv53 = or i8 %48, %49
  store i8 %conv53, ptr %enabled_phys50, align 1
  tail call void @asd_turn_led(ptr noundef %1, i32 noundef %idxprom, i32 noundef 1) #7
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.107, i32 noundef %idxprom) #10
  br label %out

if.else61:                                        ; preds = %if.else
  %and63 = and i32 %conv26, 77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.else74, label %if.then65

if.then65:                                        ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @asd_turn_led(ptr noundef %1, i32 noundef %idxprom, i32 noundef 0) #7
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.107, i32 noundef %idxprom, i32 noundef %conv26) #10
  br label %out

if.else74:                                        ; preds = %if.else61
  %and76 = and i32 %conv26, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  %shl95 = shl nuw i32 1, %idxprom
  %enabled_phys97 = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 7, i32 5
  %50 = ptrtoint ptr %enabled_phys97 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %enabled_phys97, align 1
  %52 = trunc i32 %shl95 to i8
  %conv100 = or i8 %51, %52
  store i8 %conv100, ptr %enabled_phys97, align 1
  br i1 %tobool77.not, label %if.else93, label %if.then78

if.then78:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @asd_turn_led(ptr noundef %1, i32 noundef %idxprom, i32 noundef 1) #7
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.107, i32 noundef %idxprom) #10
  br label %out

if.else93:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @asd_turn_led(ptr noundef %1, i32 noundef %idxprom, i32 noundef 0) #7
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.107, i32 noundef %idxprom, i32 noundef %conv26) #10
  br label %out

do.end116:                                        ; preds = %if.end.do.end116_crit_edge, %if.end.do.end116_crit_edge181, %if.end.do.end116_crit_edge182
  %conv120 = zext i8 %14 to i32
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.107, i32 noundef %idxprom, i32 noundef %conv120) #10
  br label %out

do.end124:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv12 = zext i8 %14 to i32
  %call129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.107, i32 noundef %idxprom, i32 noundef %conv12) #10
  br label %out

out:                                              ; preds = %do.end124, %do.end116, %if.else93, %if.then78, %if.then65, %if.then46, %get_lrate_mode.exit, %sw.bb, %do.end
  %tobool.not.i180 = icmp eq ptr %ascb, null
  br i1 %tobool.not.i180, label %out.asd_ascb_free.exit_crit_edge, label %if.then.i

out.asd_ascb_free.exit_crit_edge:                 ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %asd_ascb_free.exit

if.then.i:                                        ; preds = %out
  %53 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ha, align 4
  %55 = ptrtoint ptr %ascb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %ascb, align 4
  %cmp.i.not.i = icmp eq ptr %56, %ascb
  br i1 %cmp.i.not.i, label %do.body13.i, label %do.body6.i, !prof !212

do.body6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_hwi.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #7, !srcloc !213
  unreachable

do.body13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %tc_index_lock.i = getelementptr inbounds %struct.asd_ha_struct, ptr %54, i32 0, i32 13, i32 6
  %call16.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tc_index_lock.i) #7
  %57 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ha, align 4
  %tc_index.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 12
  %59 = ptrtoint ptr %tc_index.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tc_index.i, align 4
  %tc_index_array.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %58, i32 0, i32 13, i32 7
  %61 = ptrtoint ptr %tc_index_array.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tc_index_array.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %62, i32 %60
  %63 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %arrayidx.i.i, align 4
  %tc_index_bitmap.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %58, i32 0, i32 13, i32 8
  %64 = ptrtoint ptr %tc_index_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tc_index_bitmap.i.i, align 4
  tail call void @_clear_bit(i32 noundef %60, ptr noundef %65) #7
  %66 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ha, align 4
  %tc_index_lock25.i = getelementptr inbounds %struct.asd_ha_struct, ptr %67, i32 0, i32 13, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tc_index_lock25.i, i32 noundef %call16.i) #7
  %scb_pool.i = getelementptr inbounds %struct.asd_ha_struct, ptr %54, i32 0, i32 12
  %68 = ptrtoint ptr %scb_pool.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %scb_pool.i, align 4
  %dma_scb.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 3
  %70 = ptrtoint ptr %dma_scb.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dma_scb.i, align 4
  %dma_handle.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 3, i32 1
  %72 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dma_handle.i, align 4
  tail call void @dma_pool_free(ptr noundef %69, ptr noundef %71, i32 noundef %73) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_ascb_cache to i32))
  %74 = load ptr, ptr @asd_ascb_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %74, ptr noundef nonnull %ascb) #7
  br label %asd_ascb_free.exit

asd_ascb_free.exit:                               ; preds = %do.body13.i, %out.asd_ascb_free.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @asd_ascb_timedout(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -40
  %ha = getelementptr i8, ptr %t, i32 -32
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 4
  %seq1 = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 13
  %scb = getelementptr i8, ptr %t, i32 -28
  %2 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scb, align 4
  %opcode = getelementptr inbounds %struct.scb_header, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %opcode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %opcode, align 1
  %conv = zext i8 %5 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv) #10
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %seq1) #7
  %pending = getelementptr inbounds %struct.asd_ha_struct, ptr %1, i32 0, i32 13, i32 2
  %6 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pending, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %pending, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr i8, ptr %t, i32 -36
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %add.ptr, ptr %add.ptr, align 4
  %prev.i3.i = getelementptr i8, ptr %t, i32 -36
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %seq1, i32 noundef %call8) #7
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %list_del_init.exit.asd_ascb_free.exit_crit_edge, label %if.then.i

list_del_init.exit.asd_ascb_free.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %asd_ascb_free.exit

if.then.i:                                        ; preds = %list_del_init.exit
  %16 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ha, align 4
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %add.ptr, align 4
  %cmp.i.not.i = icmp eq ptr %19, %add.ptr
  br i1 %cmp.i.not.i, label %do.body13.i, label %do.body6.i, !prof !212

do.body6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_hwi.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #7, !srcloc !213
  unreachable

do.body13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %tc_index_lock.i = getelementptr inbounds %struct.asd_ha_struct, ptr %17, i32 0, i32 13, i32 6
  %call16.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tc_index_lock.i) #7
  %20 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ha, align 4
  %tc_index.i = getelementptr i8, ptr %t, i32 60
  %22 = ptrtoint ptr %tc_index.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tc_index.i, align 4
  %tc_index_array.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %21, i32 0, i32 13, i32 7
  %24 = ptrtoint ptr %tc_index_array.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tc_index_array.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %25, i32 %23
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx.i.i, align 4
  %tc_index_bitmap.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %21, i32 0, i32 13, i32 8
  %27 = ptrtoint ptr %tc_index_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tc_index_bitmap.i.i, align 4
  tail call void @_clear_bit(i32 noundef %23, ptr noundef %28) #7
  %29 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ha, align 4
  %tc_index_lock25.i = getelementptr inbounds %struct.asd_ha_struct, ptr %30, i32 0, i32 13, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tc_index_lock25.i, i32 noundef %call16.i) #7
  %scb_pool.i = getelementptr inbounds %struct.asd_ha_struct, ptr %17, i32 0, i32 12
  %31 = ptrtoint ptr %scb_pool.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %scb_pool.i, align 4
  %dma_scb.i = getelementptr i8, ptr %t, i32 -24
  %33 = ptrtoint ptr %dma_scb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma_scb.i, align 4
  %dma_handle.i = getelementptr i8, ptr %t, i32 -20
  %35 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_handle.i, align 4
  tail call void @dma_pool_free(ptr noundef %32, ptr noundef %34, i32 noundef %36) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_ascb_cache to i32))
  %37 = load ptr, ptr @asd_ascb_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %37, ptr noundef nonnull %add.ptr) #7
  br label %asd_ascb_free.exit

asd_ascb_free.exit:                               ; preds = %do.body13.i, %list_del_init.exit.asd_ascb_free.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_control_phy(ptr nocapture noundef readonly %phy, i32 noundef %func, ptr nocapture noundef readonly %arg) local_unnamed_addr #0 align 64 {
entry:
  %res = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ha = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 23
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 4
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  %id = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 6
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %phy_desc = getelementptr %struct.asd_ha_struct, ptr %3, i32 0, i32 8, i32 %5, i32 1
  %6 = ptrtoint ptr %phy_desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_desc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #7
  %8 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %res, align 4
  %9 = zext i32 %func to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %func, label %entry.sw.epilog_crit_edge [
    i32 5, label %entry.cleanup_crit_edge
    i32 18, label %entry.cleanup_crit_edge43
    i32 17, label %sw.bb1
  ]

entry.cleanup_crit_edge43:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %minimum_linkrate = getelementptr inbounds %struct.sas_phy_linkrates, ptr %arg, i32 0, i32 1
  %10 = ptrtoint ptr %minimum_linkrate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %minimum_linkrate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %sw.bb1.if.end_crit_edge, label %if.then

sw.bb1.if.end_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %11 to i8
  %min_sas_lrate = getelementptr inbounds %struct.asd_phy_desc, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %min_sas_lrate to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %min_sas_lrate, align 1
  %13 = ptrtoint ptr %minimum_linkrate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %minimum_linkrate, align 4
  %conv4 = trunc i32 %14 to i8
  %min_sata_lrate = getelementptr inbounds %struct.asd_phy_desc, ptr %7, i32 0, i32 4
  %15 = ptrtoint ptr %min_sata_lrate to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv4, ptr %min_sata_lrate, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb1.if.end_crit_edge
  %16 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool5.not = icmp eq i32 %17, 0
  br i1 %tobool5.not, label %if.end.sw.epilog_crit_edge, label %if.then6

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv8 = trunc i32 %17 to i8
  %max_sas_lrate = getelementptr inbounds %struct.asd_phy_desc, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %max_sas_lrate to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv8, ptr %max_sas_lrate, align 1
  %19 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arg, align 4
  %conv10 = trunc i32 %20 to i8
  %max_sata_lrate = getelementptr inbounds %struct.asd_phy_desc, ptr %7, i32 0, i32 3
  %21 = ptrtoint ptr %max_sata_lrate to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv10, ptr %max_sata_lrate, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then6, %if.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %func.addr.0 = phi i32 [ %func, %entry.sw.epilog_crit_edge ], [ 1, %if.then6 ], [ 1, %if.end.sw.epilog_crit_edge ]
  %call = call ptr @asd_ascb_alloc_list(ptr noundef %3, ptr noundef nonnull %res, i32 noundef 3264) #7
  %tobool12.not = icmp eq ptr %call, null
  br i1 %tobool12.not, label %sw.epilog.cleanup_crit_edge, label %if.end14

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %sw.epilog
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  %arrayidx16 = getelementptr [17 x i32], ptr @phy_func_table, i32 0, i32 %func.addr.0
  %24 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx16, align 4
  %conv17 = trunc i32 %25 to i8
  call void @asd_build_control_phy(ptr noundef nonnull %call, i32 noundef %23, i8 noundef zeroext %conv17)
  %call18 = call i32 @asd_post_ascb_list(ptr noundef %3, ptr noundef nonnull %call, i32 noundef 1) #7
  %26 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call18, ptr %res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end14.if.end21_crit_edge, label %if.then.i

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then.i:                                        ; preds = %if.end14
  %ha.i = getelementptr inbounds %struct.asd_ascb, ptr %call, i32 0, i32 1
  %27 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ha.i, align 4
  %29 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %call, align 4
  %cmp.i.not.i = icmp eq ptr %30, %call
  br i1 %cmp.i.not.i, label %asd_ascb_free.exit, label %do.body6.i, !prof !212

do.body6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_hwi.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #7, !srcloc !213
  unreachable

asd_ascb_free.exit:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %tc_index_lock.i = getelementptr inbounds %struct.asd_ha_struct, ptr %28, i32 0, i32 13, i32 6
  %call16.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tc_index_lock.i) #7
  %31 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ha.i, align 4
  %tc_index.i = getelementptr inbounds %struct.asd_ascb, ptr %call, i32 0, i32 12
  %33 = ptrtoint ptr %tc_index.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tc_index.i, align 4
  %tc_index_array.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %32, i32 0, i32 13, i32 7
  %35 = ptrtoint ptr %tc_index_array.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tc_index_array.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %36, i32 %34
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %arrayidx.i.i, align 4
  %tc_index_bitmap.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %32, i32 0, i32 13, i32 8
  %38 = ptrtoint ptr %tc_index_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tc_index_bitmap.i.i, align 4
  call void @_clear_bit(i32 noundef %34, ptr noundef %39) #7
  %40 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ha.i, align 4
  %tc_index_lock25.i = getelementptr inbounds %struct.asd_ha_struct, ptr %41, i32 0, i32 13, i32 6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tc_index_lock25.i, i32 noundef %call16.i) #7
  %scb_pool.i = getelementptr inbounds %struct.asd_ha_struct, ptr %28, i32 0, i32 12
  %42 = ptrtoint ptr %scb_pool.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %scb_pool.i, align 4
  %dma_scb.i = getelementptr inbounds %struct.asd_ascb, ptr %call, i32 0, i32 3
  %44 = ptrtoint ptr %dma_scb.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dma_scb.i, align 4
  %dma_handle.i = getelementptr inbounds %struct.asd_ascb, ptr %call, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_handle.i, align 4
  call void @dma_pool_free(ptr noundef %43, ptr noundef %45, i32 noundef %47) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_ascb_cache to i32))
  %48 = load ptr, ptr @asd_ascb_cache, align 4
  call void @kmem_cache_free(ptr noundef %48, ptr noundef nonnull %call) #7
  br label %if.end21

if.end21:                                         ; preds = %asd_ascb_free.exit, %if.end14.if.end21_crit_edge
  %49 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge43
  %retval.0 = phi i32 [ %50, %if.end21 ], [ -38, %entry.cleanup_crit_edge ], [ -38, %entry.cleanup_crit_edge43 ], [ -12, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @asd_ascb_alloc_list(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_post_ascb_list(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_task_abort(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @asd_turn_led(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_notify_port_event(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @asd_dump_frame_rcvd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @asd_update_port_links(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_notify_phy_event(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @asd_control_led(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198}
!llvm.module.flags = !{!200, !201, !202, !203, !204, !205, !206, !207}
!llvm.ident = !{!208}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 395, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @asd_invalidate_edb._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @asd_invalidate_edb._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 605, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @asd_init_post_escbs._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @asd_init_post_escbs._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 869, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @asd_ascb_timedout._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @asd_ascb_timedout._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 411, i32 3}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @escb_tasklet_complete._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @escb_tasklet_complete._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 413, i32 3}
!23 = !{ptr @escb_tasklet_complete._entry.9, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @escb_tasklet_complete._entry_ptr.11, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 415, i32 3}
!27 = !{ptr @escb_tasklet_complete._entry.12, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @escb_tasklet_complete._entry_ptr.14, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 433, i32 3}
!31 = !{ptr @escb_tasklet_complete._entry.15, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @escb_tasklet_complete._entry_ptr.17, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 454, i32 5}
!35 = !{ptr @escb_tasklet_complete._entry.18, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @escb_tasklet_complete._entry_ptr.20, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 461, i32 4}
!39 = !{ptr @escb_tasklet_complete._entry.21, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @escb_tasklet_complete._entry_ptr.23, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 490, i32 3}
!43 = !{ptr @escb_tasklet_complete._entry.24, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @escb_tasklet_complete._entry_ptr.26, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 509, i32 4}
!47 = !{ptr @escb_tasklet_complete._entry.27, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @escb_tasklet_complete._entry_ptr.29, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 537, i32 3}
!51 = !{ptr @escb_tasklet_complete._entry.30, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @escb_tasklet_complete._entry_ptr.32, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.34, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 540, i32 3}
!55 = !{ptr @escb_tasklet_complete._entry.33, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @escb_tasklet_complete._entry_ptr.35, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.37, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 548, i32 3}
!59 = !{ptr @escb_tasklet_complete._entry.36, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @escb_tasklet_complete._entry_ptr.38, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.40, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 552, i32 3}
!63 = !{ptr @escb_tasklet_complete._entry.39, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @escb_tasklet_complete._entry_ptr.41, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.43, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 557, i32 3}
!67 = !{ptr @escb_tasklet_complete._entry.42, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @escb_tasklet_complete._entry_ptr.44, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.46, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 561, i32 3}
!71 = !{ptr @escb_tasklet_complete._entry.45, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @escb_tasklet_complete._entry_ptr.47, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.49, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 566, i32 3}
!75 = !{ptr @escb_tasklet_complete._entry.48, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @escb_tasklet_complete._entry_ptr.50, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.52, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 575, i32 3}
!79 = !{ptr @escb_tasklet_complete._entry.51, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @escb_tasklet_complete._entry_ptr.53, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @escb_tasklet_complete._entry.54, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 577, i32 3}
!83 = !{ptr @escb_tasklet_complete._entry_ptr.55, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @escb_tasklet_complete._entry.56, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 579, i32 3}
!86 = !{ptr @escb_tasklet_complete._entry_ptr.57, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @escb_tasklet_complete._entry.58, !88, !"_entry", i1 false, i1 false}
!88 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 581, i32 3}
!89 = !{ptr @escb_tasklet_complete._entry_ptr.59, !88, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.60, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 197, i32 2}
!92 = !{ptr @.str.61, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @asd_form_port._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @asd_form_port._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.62, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 313, i32 4}
!97 = !{ptr @.str.63, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @asd_primitive_rcvd_tasklet._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @asd_primitive_rcvd_tasklet._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.65, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 323, i32 4}
!102 = !{ptr @asd_primitive_rcvd_tasklet._entry.64, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @asd_primitive_rcvd_tasklet._entry_ptr.66, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.68, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 327, i32 4}
!106 = !{ptr @asd_primitive_rcvd_tasklet._entry.67, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @asd_primitive_rcvd_tasklet._entry_ptr.69, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.71, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 335, i32 4}
!110 = !{ptr @asd_primitive_rcvd_tasklet._entry.70, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @asd_primitive_rcvd_tasklet._entry_ptr.72, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @asd_primitive_rcvd_tasklet._entry.73, !113, !"_entry", i1 false, i1 false}
!113 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 345, i32 4}
!114 = !{ptr @asd_primitive_rcvd_tasklet._entry_ptr.74, !113, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.76, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 351, i32 3}
!117 = !{ptr @asd_primitive_rcvd_tasklet._entry.75, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @asd_primitive_rcvd_tasklet._entry_ptr.77, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.78, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 80, i32 3}
!121 = !{ptr @.str.79, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @asd_phy_event_tasklet._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @asd_phy_event_tasklet._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.81, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 90, i32 3}
!126 = !{ptr @asd_phy_event_tasklet._entry.80, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @asd_phy_event_tasklet._entry_ptr.82, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.84, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 102, i32 3}
!130 = !{ptr @asd_phy_event_tasklet._entry.83, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @asd_phy_event_tasklet._entry_ptr.85, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.86, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 253, i32 3}
!134 = !{ptr @.str.87, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @asd_link_reset_err_tasklet._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @asd_link_reset_err_tasklet._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.89, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 256, i32 3}
!139 = !{ptr @asd_link_reset_err_tasklet._entry.88, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @asd_link_reset_err_tasklet._entry_ptr.90, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.92, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 259, i32 3}
!143 = !{ptr @asd_link_reset_err_tasklet._entry.91, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @asd_link_reset_err_tasklet._entry_ptr.93, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.95, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 262, i32 3}
!147 = !{ptr @asd_link_reset_err_tasklet._entry.94, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @asd_link_reset_err_tasklet._entry_ptr.96, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.98, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 265, i32 3}
!151 = !{ptr @asd_link_reset_err_tasklet._entry.97, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @asd_link_reset_err_tasklet._entry_ptr.99, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.101, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 280, i32 4}
!155 = !{ptr @asd_link_reset_err_tasklet._entry.100, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @asd_link_reset_err_tasklet._entry_ptr.102, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.104, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 283, i32 3}
!159 = !{ptr @asd_link_reset_err_tasklet._entry.103, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @asd_link_reset_err_tasklet._entry_ptr.105, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.106, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 641, i32 3}
!163 = !{ptr @.str.107, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @control_phy_tasklet_complete._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @control_phy_tasklet_complete._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.109, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 651, i32 3}
!168 = !{ptr @control_phy_tasklet_complete._entry.108, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @control_phy_tasklet_complete._entry_ptr.110, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.112, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 660, i32 4}
!172 = !{ptr @control_phy_tasklet_complete._entry.111, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @control_phy_tasklet_complete._entry_ptr.113, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.115, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 666, i32 4}
!176 = !{ptr @control_phy_tasklet_complete._entry.114, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @control_phy_tasklet_complete._entry_ptr.116, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.118, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 670, i32 4}
!180 = !{ptr @control_phy_tasklet_complete._entry.117, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @control_phy_tasklet_complete._entry_ptr.119, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.121, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 676, i32 4}
!184 = !{ptr @control_phy_tasklet_complete._entry.120, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @control_phy_tasklet_complete._entry_ptr.122, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.124, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 681, i32 4}
!188 = !{ptr @control_phy_tasklet_complete._entry.123, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @control_phy_tasklet_complete._entry_ptr.125, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.127, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 689, i32 3}
!192 = !{ptr @control_phy_tasklet_complete._entry.126, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @control_phy_tasklet_complete._entry_ptr.128, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.130, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 694, i32 3}
!196 = !{ptr @control_phy_tasklet_complete._entry.129, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @control_phy_tasklet_complete._entry_ptr.131, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @phy_func_table, !199, !"phy_func_table", i1 false, i1 false}
!199 = !{!"../drivers/scsi/aic94xx/aic94xx_scb.c", i32 882, i32 18}
!200 = !{i32 1, !"wchar_size", i32 2}
!201 = !{i32 1, !"min_enum_size", i32 4}
!202 = !{i32 8, !"branch-target-enforcement", i32 0}
!203 = !{i32 8, !"sign-return-address", i32 0}
!204 = !{i32 8, !"sign-return-address-all", i32 0}
!205 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!206 = !{i32 7, !"uwtable", i32 1}
!207 = !{i32 7, !"frame-pointer", i32 2}
!208 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!209 = !{!"branch_weights", i32 1, i32 2000}
!210 = !{i64 2155962850, i64 2155963349, i64 2155962887, i64 2155962943, i64 2155962977, i64 2155963001, i64 2155963042, i64 2155963063, i64 2155963091, i64 2155963125}
!211 = !{i32 0, i32 33}
!212 = !{!"branch_weights", i32 2000, i32 1}
!213 = !{i64 2155860691, i64 2155861190, i64 2155860728, i64 2155860784, i64 2155860818, i64 2155860842, i64 2155860883, i64 2155860904, i64 2155860932, i64 2155860966}
