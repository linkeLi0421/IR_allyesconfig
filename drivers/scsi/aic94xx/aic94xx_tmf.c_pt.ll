; ModuleID = '/llk/IR_all_yes/drivers/scsi/aic94xx/aic94xx_tmf.c_pt.bc'
source_filename = "../drivers/scsi/aic94xx/aic94xx_tmf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.tasklet_completion_status = type { i32, i32, i8, i16 }
%struct.sas_ha_struct = type { %struct.list_head, %struct.mutex, i32, %struct.spinlock, i32, %struct.wait_queue_head, %struct.list_head, %struct.mutex, %struct.scsi_core, ptr, ptr, ptr, ptr, ptr, ptr, [3 x i8], %struct.spinlock, ptr, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.scsi_core = type { ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.asd_ascb = type { %struct.list_head, ptr, ptr, %struct.asd_dma_tok, ptr, ptr, i8, %struct.timer_list, ptr, i8, i16, i32, i32, ptr }
%struct.asd_dma_tok = type { ptr, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.scb_header = type <{ i64, i16, i8 }>
%struct.scb = type { %struct.scb_header, %union.anon.95 }
%union.anon.95 = type { %struct.initiate_ssp_task }
%struct.initiate_ssp_task = type <{ i8, i32, %struct.ssp_frame_hdr, %struct.ssp_command_iu, i16, i16, i8, i8, i8, [5 x i8], [3 x %struct.sg_el] }>
%struct.ssp_frame_hdr = type { i8, [3 x i8], i8, [3 x i8], i16, i16, i32, i16, i16, i32 }
%struct.ssp_command_iu = type { [8 x i8], i8, %union.anon.96, i8, i8, [16 x i8], [0 x i8] }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { i8 }
%struct.sg_el = type { i64, i32, i16, i8, i8 }
%struct.asd_ha_struct = type { ptr, ptr, %struct.sas_ha_struct, i8, i32, %struct.spinlock, [2 x %struct.asd_ha_addrspace], %struct.hw_profile, [8 x %struct.asd_phy], %struct.spinlock, [8 x %struct.asd_port], [8 x %struct.asd_sas_port], ptr, %struct.asd_seq_data, i32, ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.asd_seq_data = type { %struct.spinlock, i16, i32, %struct.list_head, i32, %struct.asd_dma_tok, %struct.spinlock, ptr, ptr, i32, %struct.tasklet_struct, ptr, ptr, i32, i32, i32, ptr, i32, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.94, i32 }
%union.anon.94 = type { ptr }
%struct.done_list_struct = type { i16, i8, [4 x i8], i8 }
%struct.domain_device = type { %struct.spinlock, i32, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, [8 x i8], [3 x i8], [32 x i8], [101 x i8], %union.anon.79, ptr, i32, %struct.kref, [116 x i8] }
%union.anon.79 = type { %struct.sata_device }
%struct.sata_device = type { i32, i8, ptr, ptr, [112 x i8], %struct.smp_resp, [24 x i8], [44 x i8] }
%struct.smp_resp = type { i8, i8, i8, i8, %union.anon.81 }
%union.anon.81 = type { %struct.report_phy_sata_resp }
%struct.report_phy_sata_resp = type { [5 x i8], i8, i8, i8, i32, [8 x i8], %struct.dev_to_host_fis, i32, [8 x i8], i32 }
%struct.dev_to_host_fis = type { i8, i8, i8, i8, i8, %union.anon.82, %union.anon.83, i8, i8, i8, i8, i8, %union.anon.84, i8, i8, i8, i32 }
%union.anon.82 = type { i8 }
%union.anon.83 = type { i8 }
%union.anon.84 = type { i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.sas_task = type { ptr, %struct.spinlock, i32, i32, %union.anon.101, ptr, i32, i32, i8, %struct.task_status_struct, ptr, ptr, ptr, ptr }
%union.anon.101 = type { %struct.sas_smp_task }
%struct.sas_smp_task = type { %struct.scatterlist, %struct.scatterlist }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.task_status_struct = type { i32, i32, i32, [96 x i8], i32, i32 }
%struct.sas_ssp_task = type { i8, [8 x i8], i8, i32, i8, ptr }
%struct.abort_task = type <{ i8, i32, %struct.ssp_frame_hdr, %struct.ssp_tmf_iu, i16, i16, i8, i8, i8, [5 x i8], i16, i16, [44 x i8] }>
%struct.ssp_tmf_iu = type { [8 x i8], i16, i8, i8, i16, [14 x i8] }
%struct.initiate_ssp_tmf = type <{ i8, i32, %struct.ssp_frame_hdr, %struct.ssp_tmf_iu, i16, i16, i8, i8, i8, [5 x i8], i16, i16, [44 x i8] }>

@asd_clear_nexus_ha._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\015aic94xx: %s: PRE\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"asd_clear_nexus_ha\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/aic94xx/aic94xx_tmf.c\00", [61 x i8] zeroinitializer }, align 32
@asd_clear_nexus_ha._entry_ptr = internal global ptr @asd_clear_nexus_ha._entry, section ".printk_index", align 4
@asd_clear_nexus_ha._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\015aic94xx: %s: POST\0A\00", [43 x i8] zeroinitializer }, align 32
@asd_clear_nexus_ha._entry_ptr.5 = internal global ptr @asd_clear_nexus_ha._entry.3, section ".printk_index", align 4
@asd_clear_nexus_ha._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015aic94xx: %s: clear nexus posted, waiting...\0A\00", [49 x i8] zeroinitializer }, align 32
@asd_clear_nexus_ha._entry_ptr.8 = internal global ptr @asd_clear_nexus_ha._entry.6, section ".printk_index", align 4
@asd_clear_nexus_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.9, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"asd_clear_nexus_port\00", [43 x i8] zeroinitializer }, align 32
@asd_clear_nexus_port._entry_ptr = internal global ptr @asd_clear_nexus_port._entry, section ".printk_index", align 4
@asd_clear_nexus_port._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.9, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@asd_clear_nexus_port._entry_ptr.11 = internal global ptr @asd_clear_nexus_port._entry.10, section ".printk_index", align 4
@asd_clear_nexus_port._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.9, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@asd_clear_nexus_port._entry_ptr.13 = internal global ptr @asd_clear_nexus_port._entry.12, section ".printk_index", align 4
@asd_I_T_nexus_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015aic94xx: sending %s reset to %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"asd_I_T_nexus_reset\00", [44 x i8] zeroinitializer }, align 32
@asd_I_T_nexus_reset._entry_ptr = internal global ptr @asd_I_T_nexus_reset._entry, section ".printk_index", align 4
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hard\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"soft\00", [27 x i8] zeroinitializer }, align 32
@asd_I_T_nexus_reset._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.15, ptr @.str.2, i32 193, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to resume nexus after reset 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@asd_I_T_nexus_reset._entry_ptr.22 = internal global ptr @asd_I_T_nexus_reset._entry.18, section ".printk_index", align 4
@asd_abort_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015aic94xx: %s: task 0x%p done\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"asd_abort_task\00", [17 x i8] zeroinitializer }, align 32
@asd_abort_task._entry_ptr = internal global ptr @asd_abort_task._entry, section ".printk_index", align 4
@asd_abort_task._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\015aic94xx: tmf came back\0A\00", [38 x i8] zeroinitializer }, align 32
@asd_abort_task._entry_ptr.27 = internal global ptr @asd_abort_task._entry.25, section ".printk_index", align 4
@asd_abort_task._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@asd_abort_task._entry_ptr.29 = internal global ptr @asd_abort_task._entry.28, section ".printk_index", align 4
@asd_abort_task._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.24, ptr @.str.2, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015aic94xx: task 0x%p aborted, res: 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@asd_abort_task._entry_ptr.32 = internal global ptr @asd_abort_task._entry.30, section ".printk_index", align 4
@asd_abort_task._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.24, ptr @.str.2, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@asd_abort_task._entry_ptr.34 = internal global ptr @asd_abort_task._entry.33, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@asd_clear_nexus_tasklet_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\015aic94xx: %s: here\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"asd_clear_nexus_tasklet_complete\00", [63 x i8] zeroinitializer }, align 32
@asd_clear_nexus_tasklet_complete._entry_ptr = internal global ptr @asd_clear_nexus_tasklet_complete._entry, section ".printk_index", align 4
@asd_clear_nexus_tasklet_complete._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015aic94xx: %s: couldn't delete timer\0A\00", [58 x i8] zeroinitializer }, align 32
@asd_clear_nexus_tasklet_complete._entry_ptr.40 = internal global ptr @asd_clear_nexus_tasklet_complete._entry.38, section ".printk_index", align 4
@asd_clear_nexus_tasklet_complete._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015aic94xx: %s: opcode: 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@asd_clear_nexus_tasklet_complete._entry_ptr.43 = internal global ptr @asd_clear_nexus_tasklet_complete._entry.41, section ".printk_index", align 4
@asd_clear_nexus_timedout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.44, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"asd_clear_nexus_timedout\00", [39 x i8] zeroinitializer }, align 32
@asd_clear_nexus_timedout._entry_ptr = internal global ptr @asd_clear_nexus_timedout._entry, section ".printk_index", align 4
@asd_ascb_cache = external dso_local local_unnamed_addr global ptr, align 4
@asd_clear_nexus_I_T._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.45, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"asd_clear_nexus_I_T\00", [44 x i8] zeroinitializer }, align 32
@asd_clear_nexus_I_T._entry_ptr = internal global ptr @asd_clear_nexus_I_T._entry, section ".printk_index", align 4
@asd_clear_nexus_I_T._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.45, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@asd_clear_nexus_I_T._entry_ptr.47 = internal global ptr @asd_clear_nexus_I_T._entry.46, section ".printk_index", align 4
@asd_clear_nexus_I_T._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.45, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@asd_clear_nexus_I_T._entry_ptr.49 = internal global ptr @asd_clear_nexus_I_T._entry.48, section ".printk_index", align 4
@asd_tmf_tasklet_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015aic94xx: tmf tasklet complete\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"asd_tmf_tasklet_complete\00", [39 x i8] zeroinitializer }, align 32
@asd_tmf_tasklet_complete._entry_ptr = internal global ptr @asd_tmf_tasklet_complete._entry, section ".printk_index", align 4
@asd_get_tmf_resp_tasklet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015aic94xx: tmf resp tasklet\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"asd_get_tmf_resp_tasklet\00", [39 x i8] zeroinitializer }, align 32
@asd_get_tmf_resp_tasklet._entry_ptr = internal global ptr @asd_get_tmf_resp_tasklet._entry, section ".printk_index", align 4
@asd_get_tmf_resp_tasklet._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015aic94xx: Uh-oh! No escb for this dl?!\0A\00", [55 x i8] zeroinitializer }, align 32
@asd_get_tmf_resp_tasklet._entry_ptr.56 = internal global ptr @asd_get_tmf_resp_tasklet._entry.54, section ".printk_index", align 4
@asd_tmf_timedout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\015aic94xx: tmf timed out\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"asd_tmf_timedout\00", [47 x i8] zeroinitializer }, align 32
@asd_tmf_timedout._entry_ptr = internal global ptr @asd_tmf_timedout._entry, section ".printk_index", align 4
@asd_clear_nexus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015aic94xx: task not done, clearing nexus\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"asd_clear_nexus\00", [16 x i8] zeroinitializer }, align 32
@asd_clear_nexus._entry_ptr = internal global ptr @asd_clear_nexus._entry, section ".printk_index", align 4
@asd_clear_nexus._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015aic94xx: came back from clear nexus\0A\00", [57 x i8] zeroinitializer }, align 32
@asd_clear_nexus._entry_ptr.63 = internal global ptr @asd_clear_nexus._entry.61, section ".printk_index", align 4
@asd_clear_nexus_tag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.64, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"asd_clear_nexus_tag\00", [44 x i8] zeroinitializer }, align 32
@asd_clear_nexus_tag._entry_ptr = internal global ptr @asd_clear_nexus_tag._entry, section ".printk_index", align 4
@asd_clear_nexus_tag._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.64, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@asd_clear_nexus_tag._entry_ptr.66 = internal global ptr @asd_clear_nexus_tag._entry.65, section ".printk_index", align 4
@asd_clear_nexus_tag._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.64, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@asd_clear_nexus_tag._entry_ptr.68 = internal global ptr @asd_clear_nexus_tag._entry.67, section ".printk_index", align 4
@asd_clear_nexus_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.69, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"asd_clear_nexus_index\00", [42 x i8] zeroinitializer }, align 32
@asd_clear_nexus_index._entry_ptr = internal global ptr @asd_clear_nexus_index._entry, section ".printk_index", align 4
@asd_clear_nexus_index._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.69, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@asd_clear_nexus_index._entry_ptr.71 = internal global ptr @asd_clear_nexus_index._entry.70, section ".printk_index", align 4
@asd_clear_nexus_index._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.69, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@asd_clear_nexus_index._entry_ptr.73 = internal global ptr @asd_clear_nexus_index._entry.72, section ".printk_index", align 4
@asd_clear_nexus_I_T_L._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.74, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"asd_clear_nexus_I_T_L\00", [42 x i8] zeroinitializer }, align 32
@asd_clear_nexus_I_T_L._entry_ptr = internal global ptr @asd_clear_nexus_I_T_L._entry, section ".printk_index", align 4
@asd_clear_nexus_I_T_L._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.74, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@asd_clear_nexus_I_T_L._entry_ptr.76 = internal global ptr @asd_clear_nexus_I_T_L._entry.75, section ".printk_index", align 4
@asd_clear_nexus_I_T_L._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.74, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@asd_clear_nexus_I_T_L._entry_ptr.78 = internal global ptr @asd_clear_nexus_I_T_L._entry.77, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 8]
@__sancov_gen_cov_switch_values.80 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 7, i64 26, i64 29, i64 31, i64 32, i64 33, i64 34]
@__sancov_gen_cov_switch_values.81 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 26, i64 29, i64 31, i64 32, i64 33, i64 34]
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 119, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 121, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 128, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 131, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 173, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 192, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 405, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 460, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 469, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 532, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 537, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 87, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 60, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 62, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 65, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 76, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 145, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 159, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 310, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 273, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 281, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 250, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 334, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 342, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 219, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 226, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 234, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 240, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 205, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.299 = private constant [38 x i8] c"../drivers/scsi/aic94xx/aic94xx_tmf.c\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 211, i32 2 }
@llvm.compiler.used = appending global [108 x ptr] [ptr @asd_I_T_nexus_reset._entry, ptr @asd_I_T_nexus_reset._entry.18, ptr @asd_I_T_nexus_reset._entry_ptr, ptr @asd_I_T_nexus_reset._entry_ptr.22, ptr @asd_abort_task._entry, ptr @asd_abort_task._entry.25, ptr @asd_abort_task._entry.28, ptr @asd_abort_task._entry.30, ptr @asd_abort_task._entry.33, ptr @asd_abort_task._entry_ptr, ptr @asd_abort_task._entry_ptr.27, ptr @asd_abort_task._entry_ptr.29, ptr @asd_abort_task._entry_ptr.32, ptr @asd_abort_task._entry_ptr.34, ptr @asd_clear_nexus._entry, ptr @asd_clear_nexus._entry.61, ptr @asd_clear_nexus._entry_ptr, ptr @asd_clear_nexus._entry_ptr.63, ptr @asd_clear_nexus_I_T._entry, ptr @asd_clear_nexus_I_T._entry.46, ptr @asd_clear_nexus_I_T._entry.48, ptr @asd_clear_nexus_I_T._entry_ptr, ptr @asd_clear_nexus_I_T._entry_ptr.47, ptr @asd_clear_nexus_I_T._entry_ptr.49, ptr @asd_clear_nexus_I_T_L._entry, ptr @asd_clear_nexus_I_T_L._entry.75, ptr @asd_clear_nexus_I_T_L._entry.77, ptr @asd_clear_nexus_I_T_L._entry_ptr, ptr @asd_clear_nexus_I_T_L._entry_ptr.76, ptr @asd_clear_nexus_I_T_L._entry_ptr.78, ptr @asd_clear_nexus_ha._entry, ptr @asd_clear_nexus_ha._entry.3, ptr @asd_clear_nexus_ha._entry.6, ptr @asd_clear_nexus_ha._entry_ptr, ptr @asd_clear_nexus_ha._entry_ptr.5, ptr @asd_clear_nexus_ha._entry_ptr.8, ptr @asd_clear_nexus_index._entry, ptr @asd_clear_nexus_index._entry.70, ptr @asd_clear_nexus_index._entry.72, ptr @asd_clear_nexus_index._entry_ptr, ptr @asd_clear_nexus_index._entry_ptr.71, ptr @asd_clear_nexus_index._entry_ptr.73, ptr @asd_clear_nexus_port._entry, ptr @asd_clear_nexus_port._entry.10, ptr @asd_clear_nexus_port._entry.12, ptr @asd_clear_nexus_port._entry_ptr, ptr @asd_clear_nexus_port._entry_ptr.11, ptr @asd_clear_nexus_port._entry_ptr.13, ptr @asd_clear_nexus_tag._entry, ptr @asd_clear_nexus_tag._entry.65, ptr @asd_clear_nexus_tag._entry.67, ptr @asd_clear_nexus_tag._entry_ptr, ptr @asd_clear_nexus_tag._entry_ptr.66, ptr @asd_clear_nexus_tag._entry_ptr.68, ptr @asd_clear_nexus_tasklet_complete._entry, ptr @asd_clear_nexus_tasklet_complete._entry.38, ptr @asd_clear_nexus_tasklet_complete._entry.41, ptr @asd_clear_nexus_tasklet_complete._entry_ptr, ptr @asd_clear_nexus_tasklet_complete._entry_ptr.40, ptr @asd_clear_nexus_tasklet_complete._entry_ptr.43, ptr @asd_clear_nexus_timedout._entry, ptr @asd_clear_nexus_timedout._entry_ptr, ptr @asd_get_tmf_resp_tasklet._entry, ptr @asd_get_tmf_resp_tasklet._entry.54, ptr @asd_get_tmf_resp_tasklet._entry_ptr, ptr @asd_get_tmf_resp_tasklet._entry_ptr.56, ptr @asd_tmf_tasklet_complete._entry, ptr @asd_tmf_tasklet_complete._entry_ptr, ptr @asd_tmf_timedout._entry, ptr @asd_tmf_timedout._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.31, ptr @init_completion.__key, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.69, ptr @.str.74], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_clear_nexus_ha._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_clear_nexus_ha._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_clear_nexus_ha._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_clear_nexus_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_clear_nexus_port._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_clear_nexus_port._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_I_T_nexus_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_I_T_nexus_reset._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_abort_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_abort_task._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_abort_task._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_abort_task._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_abort_task._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_clear_nexus_tasklet_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_clear_nexus_tasklet_complete._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_clear_nexus_tasklet_complete._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_clear_nexus_timedout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_clear_nexus_I_T._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_clear_nexus_I_T._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_clear_nexus_I_T._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_tmf_tasklet_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_get_tmf_resp_tasklet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_get_tmf_resp_tasklet._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_tmf_timedout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_clear_nexus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_clear_nexus._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_clear_nexus_tag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_clear_nexus_tag._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_clear_nexus_tag._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_clear_nexus_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_clear_nexus_index._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_clear_nexus_index._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_clear_nexus_I_T_L._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_clear_nexus_I_T_L._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_clear_nexus_I_T_L._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_clear_nexus_ha(ptr nocapture noundef readonly %sas_ha) local_unnamed_addr #0 align 64 {
entry:
  %res = alloca i32, align 4
  %completion = alloca %struct.completion, align 4
  %tcs = alloca %struct.tasklet_completion_status, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %sas_ha, i32 0, i32 21
  %0 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lldd_ha, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %completion) #5
  %2 = getelementptr inbounds i8, ptr %completion, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 52)
  %4 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %completion, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_completion.__key) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tcs) #5
  %5 = call ptr @memset(ptr %tcs, i32 0, i32 12)
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  %6 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %res, align 4
  %call2 = call ptr @asd_ascb_alloc_list(ptr noundef %1, ptr noundef nonnull %res, i32 noundef 3264) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %completion3 = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 8
  %7 = ptrtoint ptr %completion3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %completion, ptr %completion3, align 4
  %uldd_task = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 13
  %8 = ptrtoint ptr %uldd_task to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tcs, ptr %uldd_task, align 4
  %scb4 = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 2
  %9 = ptrtoint ptr %scb4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %scb4, align 4
  %opcode = getelementptr inbounds %struct.scb_header, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -60, ptr %opcode, align 1
  %12 = getelementptr inbounds %struct.scb, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %12, align 1
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #8
  %tasklet_complete1.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 5
  %14 = ptrtoint ptr %tasklet_complete1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @asd_clear_nexus_tasklet_complete, ptr %tasklet_complete1.i, align 4
  %uldd_timer.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 6
  %15 = ptrtoint ptr %uldd_timer.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %uldd_timer.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %uldd_timer.i, align 4
  %timer.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 7
  %function.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @asd_clear_nexus_timedout, ptr %function.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %17, 500
  %expires.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add.i, ptr %expires.i, align 4
  call void @add_timer(ptr noundef %timer.i) #5
  %ha.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 1
  %19 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ha.i, align 4
  %call.i = call i32 @asd_post_ascb_list(ptr noundef %20, ptr noundef nonnull %call2, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end16, label %if.then.i34, !prof !147

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %res, align 4
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1) #8
  call void @wait_for_completion(ptr noundef nonnull %completion) #5
  %22 = ptrtoint ptr %tcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tcs, align 4
  br label %cleanup

if.then.i34:                                      ; preds = %if.end
  %call7.i = call i32 @del_timer(ptr noundef %timer.i) #5
  %24 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call.i, ptr %res, align 4
  %25 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ha.i, align 4
  %27 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %call2, align 4
  %cmp.i.not.i = icmp eq ptr %28, %call2
  br i1 %cmp.i.not.i, label %asd_ascb_free.exit, label %do.body6.i, !prof !147

do.body6.i:                                       ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_hwi.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #5, !srcloc !148
  unreachable

asd_ascb_free.exit:                               ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #7
  %tc_index_lock.i = getelementptr inbounds %struct.asd_ha_struct, ptr %26, i32 0, i32 13, i32 6
  %call16.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tc_index_lock.i) #5
  %29 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ha.i, align 4
  %tc_index.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 12
  %31 = ptrtoint ptr %tc_index.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tc_index.i, align 4
  %tc_index_array.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %30, i32 0, i32 13, i32 7
  %33 = ptrtoint ptr %tc_index_array.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tc_index_array.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %34, i32 %32
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %arrayidx.i.i, align 4
  %tc_index_bitmap.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %30, i32 0, i32 13, i32 8
  %36 = ptrtoint ptr %tc_index_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tc_index_bitmap.i.i, align 4
  call void @_clear_bit(i32 noundef %32, ptr noundef %37) #5
  %38 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ha.i, align 4
  %tc_index_lock25.i = getelementptr inbounds %struct.asd_ha_struct, ptr %39, i32 0, i32 13, i32 6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tc_index_lock25.i, i32 noundef %call16.i) #5
  %scb_pool.i = getelementptr inbounds %struct.asd_ha_struct, ptr %26, i32 0, i32 12
  %40 = ptrtoint ptr %scb_pool.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %scb_pool.i, align 4
  %dma_scb.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 3
  %42 = ptrtoint ptr %dma_scb.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dma_scb.i, align 4
  %dma_handle.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 3, i32 1
  %44 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_handle.i, align 4
  call void @dma_pool_free(ptr noundef %41, ptr noundef %43, i32 noundef %45) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_ascb_cache to i32))
  %46 = load ptr, ptr @asd_ascb_cache, align 4
  call void @kmem_cache_free(ptr noundef %46, ptr noundef nonnull %call2) #5
  %47 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %asd_ascb_free.exit, %do.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %48, %asd_ascb_free.exit ], [ %23, %do.end16 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tcs) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @asd_ascb_alloc_list(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asd_clear_nexus_tasklet_complete(ptr noundef %ascb, ptr nocapture noundef readonly %dl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %uldd_task = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 13
  %0 = ptrtoint ptr %uldd_task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uldd_task, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #8
  %timer = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 7
  %call1 = tail call i32 @del_timer(ptr noundef %timer) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %do.end4, label %do.end9

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37) #8
  br label %cleanup

do.end9:                                          ; preds = %entry
  %opcode = getelementptr inbounds %struct.done_list_struct, ptr %dl, i32 0, i32 1
  %2 = ptrtoint ptr %opcode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %opcode, align 1
  %conv = zext i8 %3 to i32
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.37, i32 noundef %conv) #8
  %4 = ptrtoint ptr %opcode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %opcode, align 1
  %conv13 = zext i8 %5 to i32
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv13, ptr %1, align 4
  %completion = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 8
  %7 = ptrtoint ptr %completion to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %completion, align 4
  tail call void @complete(ptr noundef %8) #5
  %tobool.not.i = icmp eq ptr %ascb, null
  br i1 %tobool.not.i, label %do.end9.cleanup_crit_edge, label %if.then.i

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %do.end9
  %ha.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 1
  %9 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ha.i, align 4
  %11 = ptrtoint ptr %ascb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %ascb, align 4
  %cmp.i.not.i = icmp eq ptr %12, %ascb
  br i1 %cmp.i.not.i, label %do.body13.i, label %do.body6.i, !prof !147

do.body6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_hwi.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #5, !srcloc !148
  unreachable

do.body13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %tc_index_lock.i = getelementptr inbounds %struct.asd_ha_struct, ptr %10, i32 0, i32 13, i32 6
  %call16.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tc_index_lock.i) #5
  %13 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ha.i, align 4
  %tc_index.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 12
  %15 = ptrtoint ptr %tc_index.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tc_index.i, align 4
  %tc_index_array.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %14, i32 0, i32 13, i32 7
  %17 = ptrtoint ptr %tc_index_array.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tc_index_array.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %18, i32 %16
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx.i.i, align 4
  %tc_index_bitmap.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %14, i32 0, i32 13, i32 8
  %20 = ptrtoint ptr %tc_index_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tc_index_bitmap.i.i, align 4
  tail call void @_clear_bit(i32 noundef %16, ptr noundef %21) #5
  %22 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ha.i, align 4
  %tc_index_lock25.i = getelementptr inbounds %struct.asd_ha_struct, ptr %23, i32 0, i32 13, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tc_index_lock25.i, i32 noundef %call16.i) #5
  %scb_pool.i = getelementptr inbounds %struct.asd_ha_struct, ptr %10, i32 0, i32 12
  %24 = ptrtoint ptr %scb_pool.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %scb_pool.i, align 4
  %dma_scb.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 3
  %26 = ptrtoint ptr %dma_scb.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma_scb.i, align 4
  %dma_handle.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_handle.i, align 4
  tail call void @dma_pool_free(ptr noundef %25, ptr noundef %27, i32 noundef %29) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_ascb_cache to i32))
  %30 = load ptr, ptr @asd_ascb_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %30, ptr noundef nonnull %ascb) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body13.i, %do.end9.cleanup_crit_edge, %do.end4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asd_clear_nexus_timedout(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %uldd_task = getelementptr i8, ptr %t, i32 64
  %0 = ptrtoint ptr %uldd_task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uldd_task, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.44) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %1, align 4
  %completion = getelementptr i8, ptr %t, i32 48
  %3 = ptrtoint ptr %completion to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %completion, align 4
  tail call void @complete(ptr noundef %4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_clear_nexus_port(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  %res = alloca i32, align 4
  %completion = alloca %struct.completion, align 4
  %tcs = alloca %struct.tasklet_completion_status, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ha = getelementptr inbounds %struct.asd_sas_port, ptr %port, i32 0, i32 21
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 4
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lldd_ha, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %completion) #5
  %4 = getelementptr inbounds i8, ptr %completion, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 52)
  %6 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %completion, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_completion.__key) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tcs) #5
  %7 = call ptr @memset(ptr %tcs, i32 0, i32 12)
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #8
  %8 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %res, align 4
  %call2 = call ptr @asd_ascb_alloc_list(ptr noundef %3, ptr noundef nonnull %res, i32 noundef 3264) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %completion3 = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 8
  %9 = ptrtoint ptr %completion3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %completion, ptr %completion3, align 4
  %uldd_task = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 13
  %10 = ptrtoint ptr %uldd_task to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %tcs, ptr %uldd_task, align 4
  %scb4 = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 2
  %11 = ptrtoint ptr %scb4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %scb4, align 4
  %opcode = getelementptr inbounds %struct.scb_header, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -60, ptr %opcode, align 1
  %14 = getelementptr inbounds %struct.scb, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %14, align 1
  %phy_mask = getelementptr inbounds %struct.asd_sas_port, ptr %port, i32 0, i32 20
  %16 = ptrtoint ptr %phy_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phy_mask, align 4
  %conv = trunc i32 %17 to i8
  %conn_mask = getelementptr inbounds %struct.scb, ptr %12, i32 0, i32 1, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %conn_mask to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %conn_mask, align 1
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9) #8
  %tasklet_complete1.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 5
  %19 = ptrtoint ptr %tasklet_complete1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @asd_clear_nexus_tasklet_complete, ptr %tasklet_complete1.i, align 4
  %uldd_timer.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 6
  %20 = ptrtoint ptr %uldd_timer.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %uldd_timer.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %uldd_timer.i, align 4
  %timer.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 7
  %function.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 7, i32 2
  %21 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @asd_clear_nexus_timedout, ptr %function.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %22, 500
  %expires.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add.i, ptr %expires.i, align 4
  call void @add_timer(ptr noundef %timer.i) #5
  %ha.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 1
  %24 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ha.i, align 4
  %call.i = call i32 @asd_post_ascb_list(ptr noundef %25, ptr noundef nonnull %call2, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end16, label %if.then.i37, !prof !147

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %res, align 4
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9) #8
  call void @wait_for_completion(ptr noundef nonnull %completion) #5
  %27 = ptrtoint ptr %tcs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tcs, align 4
  br label %cleanup

if.then.i37:                                      ; preds = %if.end
  %call7.i = call i32 @del_timer(ptr noundef %timer.i) #5
  %29 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call.i, ptr %res, align 4
  %30 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ha.i, align 4
  %32 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %call2, align 4
  %cmp.i.not.i = icmp eq ptr %33, %call2
  br i1 %cmp.i.not.i, label %asd_ascb_free.exit, label %do.body6.i, !prof !147

do.body6.i:                                       ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_hwi.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #5, !srcloc !148
  unreachable

asd_ascb_free.exit:                               ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #7
  %tc_index_lock.i = getelementptr inbounds %struct.asd_ha_struct, ptr %31, i32 0, i32 13, i32 6
  %call16.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tc_index_lock.i) #5
  %34 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ha.i, align 4
  %tc_index.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 12
  %36 = ptrtoint ptr %tc_index.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tc_index.i, align 4
  %tc_index_array.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %35, i32 0, i32 13, i32 7
  %38 = ptrtoint ptr %tc_index_array.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tc_index_array.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %39, i32 %37
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %arrayidx.i.i, align 4
  %tc_index_bitmap.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %35, i32 0, i32 13, i32 8
  %41 = ptrtoint ptr %tc_index_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tc_index_bitmap.i.i, align 4
  call void @_clear_bit(i32 noundef %37, ptr noundef %42) #5
  %43 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ha.i, align 4
  %tc_index_lock25.i = getelementptr inbounds %struct.asd_ha_struct, ptr %44, i32 0, i32 13, i32 6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tc_index_lock25.i, i32 noundef %call16.i) #5
  %scb_pool.i = getelementptr inbounds %struct.asd_ha_struct, ptr %31, i32 0, i32 12
  %45 = ptrtoint ptr %scb_pool.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %scb_pool.i, align 4
  %dma_scb.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 3
  %47 = ptrtoint ptr %dma_scb.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dma_scb.i, align 4
  %dma_handle.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma_handle.i, align 4
  call void @dma_pool_free(ptr noundef %46, ptr noundef %48, i32 noundef %50) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_ascb_cache to i32))
  %51 = load ptr, ptr @asd_ascb_cache, align 4
  call void @kmem_cache_free(ptr noundef %51, ptr noundef nonnull %call2) #5
  %52 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %asd_ascb_free.exit, %do.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %53, %asd_ascb_free.exit ], [ %28, %do.end16 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tcs) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_I_T_nexus_reset(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @sas_get_local_phy(ptr noundef %dev) #5
  %dev_type = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp eq i32 %1, 5
  br i1 %cmp, label %lor.end.thread, label %lor.end

lor.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call133 = tail call fastcc i32 @asd_clear_nexus_I_T(ptr noundef %dev, i32 noundef 0)
  br label %5

lor.end:                                          ; preds = %entry
  %tproto = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 13
  %2 = ptrtoint ptr %tproto to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tproto, align 8
  %and = lshr i32 %3, 2
  %and.lobit = and i32 %and, 1
  %4 = xor i32 %and.lobit, 1
  %call1 = tail call fastcc i32 @asd_clear_nexus_I_T(ptr noundef %dev, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %lor.end._crit_edge, label %lor.end._crit_edge38

lor.end._crit_edge38:                             ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %6

lor.end._crit_edge:                               ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %5

5:                                                ; preds = %lor.end._crit_edge, %lor.end.thread
  br label %6

6:                                                ; preds = %5, %lor.end._crit_edge38
  %7 = phi i32 [ 0, %5 ], [ %4, %lor.end._crit_edge38 ]
  %8 = phi ptr [ @.str.17, %5 ], [ @.str.16, %lor.end._crit_edge38 ]
  %init_name.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %.dev_name.exit_crit_edge

.dev_name.exit_crit_edge:                         ; preds = %6
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %6
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %.dev_name.exit_crit_edge ]
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull %8, ptr noundef %retval.0.i) #8
  %call7 = tail call i32 @sas_phy_reset(ptr noundef %call, i32 noundef %7) #5
  %13 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call7, label %dev_name.exit.if.end_crit_edge [
    i32 0, label %dev_name.exit.if.then_crit_edge
    i32 -19, label %dev_name.exit.if.then_crit_edge39
  ]

dev_name.exit.if.then_crit_edge39:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

dev_name.exit.if.then_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

dev_name.exit.if.end_crit_edge:                   ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %dev_name.exit.if.then_crit_edge, %dev_name.exit.if.then_crit_edge39
  tail call void @msleep(i32 noundef 500) #5
  %call10 = tail call fastcc i32 @asd_clear_nexus_I_T(ptr noundef %dev, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %dev_name.exit.if.end_crit_edge
  %call12 = tail call fastcc i32 @asd_clear_nexus_I_T(ptr noundef %dev, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 19
  br i1 %cmp13, label %if.end.out_crit_edge, label %if.end15

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end15:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 500) #5
  %call12.1 = tail call fastcc i32 @asd_clear_nexus_I_T(ptr noundef %dev, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %call12.1)
  %cmp13.1 = icmp eq i32 %call12.1, 19
  br i1 %cmp13.1, label %if.end15.out_crit_edge, label %if.end15.1

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end15.1:                                       ; preds = %if.end15
  tail call void @msleep(i32 noundef 500) #5
  %call12.2 = tail call fastcc i32 @asd_clear_nexus_I_T(ptr noundef %dev, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %call12.2)
  %cmp13.2 = icmp eq i32 %call12.2, 19
  br i1 %cmp13.2, label %if.end15.1.out_crit_edge, label %if.end15.2

if.end15.1.out_crit_edge:                         ; preds = %if.end15.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end15.2:                                       ; preds = %if.end15.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 500) #5
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.20, ptr noundef %call, ptr noundef nonnull @.str.19, i32 noundef %call12.2) #8
  br label %out

out:                                              ; preds = %if.end15.2, %if.end15.1.out_crit_edge, %if.end15.out_crit_edge, %if.end.out_crit_edge
  %res.0 = phi i32 [ 5, %if.end15.2 ], [ %call7, %if.end15.1.out_crit_edge ], [ %call7, %if.end15.out_crit_edge ], [ %call7, %if.end.out_crit_edge ]
  tail call void @put_device(ptr noundef %call) #5
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_get_local_phy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @asd_clear_nexus_I_T(ptr nocapture noundef readonly %dev, i32 noundef %phase) unnamed_addr #0 align 64 {
entry:
  %res = alloca i32, align 4
  %completion = alloca %struct.completion, align 4
  %tcs = alloca %struct.tasklet_completion_status, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %ha = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha, align 4
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lldd_ha, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %completion) #5
  %6 = getelementptr inbounds i8, ptr %completion, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 52)
  %8 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %completion, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_completion.__key) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tcs) #5
  %9 = call ptr @memset(ptr %tcs, i32 0, i32 12)
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.45) #8
  %10 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %res, align 4
  %call2 = call ptr @asd_ascb_alloc_list(ptr noundef %5, ptr noundef nonnull %res, i32 noundef 3264) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %completion3 = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 8
  %11 = ptrtoint ptr %completion3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %completion, ptr %completion3, align 4
  %uldd_task = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 13
  %12 = ptrtoint ptr %uldd_task to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tcs, ptr %uldd_task, align 4
  %scb4 = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 2
  %13 = ptrtoint ptr %scb4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %scb4, align 4
  %opcode = getelementptr inbounds %struct.scb_header, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -60, ptr %opcode, align 1
  %16 = getelementptr inbounds %struct.scb, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %phase)
  %18 = icmp ult i32 %phase, 3
  br i1 %18, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %switch.cast = trunc i32 %phase to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 4195714, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %flags8 = getelementptr inbounds %struct.scb, ptr %14, i32 0, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %flags8 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %switch.masked, ptr %flags8, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 20
  %20 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lldd_dev, align 128
  %22 = ptrtoint ptr %21 to i32
  %conv = trunc i32 %22 to i16
  %23 = call i16 @llvm.bswap.i16(i16 %conv)
  %conn_handle = getelementptr inbounds %struct.scb, ptr %14, i32 0, i32 1, i32 0, i32 5
  %24 = ptrtoint ptr %conn_handle to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %23, ptr %conn_handle, align 1
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.45) #8
  %tasklet_complete1.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 5
  %25 = ptrtoint ptr %tasklet_complete1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @asd_clear_nexus_tasklet_complete, ptr %tasklet_complete1.i, align 4
  %uldd_timer.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 6
  %26 = ptrtoint ptr %uldd_timer.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i = load i8, ptr %uldd_timer.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %uldd_timer.i, align 4
  %timer.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 7
  %function.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 7, i32 2
  %27 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @asd_clear_nexus_timedout, ptr %function.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %28, 500
  %expires.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 7, i32 1
  %29 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add.i, ptr %expires.i, align 4
  call void @add_timer(ptr noundef %timer.i) #5
  %ha.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 1
  %30 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ha.i, align 4
  %call.i = call i32 @asd_post_ascb_list(ptr noundef %31, ptr noundef nonnull %call2, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end20, label %if.then.i44, !prof !147

do.end20:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %res, align 4
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.45) #8
  call void @wait_for_completion(ptr noundef nonnull %completion) #5
  %33 = ptrtoint ptr %tcs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tcs, align 4
  br label %cleanup

if.then.i44:                                      ; preds = %sw.epilog
  %call7.i = call i32 @del_timer(ptr noundef %timer.i) #5
  %35 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call.i, ptr %res, align 4
  %36 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ha.i, align 4
  %38 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %call2, align 4
  %cmp.i.not.i = icmp eq ptr %39, %call2
  br i1 %cmp.i.not.i, label %asd_ascb_free.exit, label %do.body6.i, !prof !147

do.body6.i:                                       ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_hwi.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #5, !srcloc !148
  unreachable

asd_ascb_free.exit:                               ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #7
  %tc_index_lock.i = getelementptr inbounds %struct.asd_ha_struct, ptr %37, i32 0, i32 13, i32 6
  %call16.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tc_index_lock.i) #5
  %40 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ha.i, align 4
  %tc_index.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 12
  %42 = ptrtoint ptr %tc_index.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tc_index.i, align 4
  %tc_index_array.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %41, i32 0, i32 13, i32 7
  %44 = ptrtoint ptr %tc_index_array.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tc_index_array.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %45, i32 %43
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %arrayidx.i.i, align 4
  %tc_index_bitmap.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %41, i32 0, i32 13, i32 8
  %47 = ptrtoint ptr %tc_index_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tc_index_bitmap.i.i, align 4
  call void @_clear_bit(i32 noundef %43, ptr noundef %48) #5
  %49 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ha.i, align 4
  %tc_index_lock25.i = getelementptr inbounds %struct.asd_ha_struct, ptr %50, i32 0, i32 13, i32 6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tc_index_lock25.i, i32 noundef %call16.i) #5
  %scb_pool.i = getelementptr inbounds %struct.asd_ha_struct, ptr %37, i32 0, i32 12
  %51 = ptrtoint ptr %scb_pool.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %scb_pool.i, align 4
  %dma_scb.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 3
  %53 = ptrtoint ptr %dma_scb.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dma_scb.i, align 4
  %dma_handle.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dma_handle.i, align 4
  call void @dma_pool_free(ptr noundef %52, ptr noundef %54, i32 noundef %56) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_ascb_cache to i32))
  %57 = load ptr, ptr @asd_ascb_cache, align 4
  call void @kmem_cache_free(ptr noundef %57, ptr noundef nonnull %call2) #5
  %58 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %asd_ascb_free.exit, %do.end20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %59, %asd_ascb_free.exit ], [ %34, %do.end20 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tcs) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_phy_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_abort_task(ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  %res = alloca i32, align 4
  %tcs = alloca %struct.tasklet_completion_status, align 4
  %completion = alloca %struct.completion, align 4
  %tascb_completion = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lldd_task = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 11
  %0 = ptrtoint ptr %lldd_task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lldd_task, align 4
  %ha = getelementptr inbounds %struct.asd_ascb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #5
  %4 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %res, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tcs) #5
  %5 = call ptr @memset(ptr %tcs, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %completion) #5
  %6 = getelementptr inbounds i8, ptr %completion, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 52)
  %8 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %completion, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_completion.__key) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tascb_completion) #5
  %9 = getelementptr inbounds i8, ptr %tascb_completion, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 52)
  %11 = ptrtoint ptr %tascb_completion to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %tascb_completion, align 4
  %wait.i224 = getelementptr inbounds %struct.completion, ptr %tascb_completion, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i224, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_completion.__key) #5
  %completion2 = getelementptr inbounds %struct.asd_ascb, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %completion2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tascb_completion, ptr %completion2, align 4
  %task_state_lock = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 1
  %call5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %task_state_lock) #5
  %task_state_flags = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 2
  %13 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %task_state_flags, align 4
  %and = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %task_state_lock, i32 noundef %call5) #5
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %res, align 4
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef %task) #8
  br label %out_donethread-pre-split

if.end:                                           ; preds = %entry
  %call15 = call ptr @asd_ascb_alloc_list(ptr noundef %3, ptr noundef nonnull %res, i32 noundef 3264) #5
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end.cleanup_crit_edge, label %if.end18

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %uldd_task = getelementptr inbounds %struct.asd_ascb, ptr %call15, i32 0, i32 13
  %16 = ptrtoint ptr %uldd_task to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %tcs, ptr %uldd_task, align 4
  %completion19 = getelementptr inbounds %struct.asd_ascb, ptr %call15, i32 0, i32 8
  %17 = ptrtoint ptr %completion19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %completion, ptr %completion19, align 4
  %scb20 = getelementptr inbounds %struct.asd_ascb, ptr %call15, i32 0, i32 2
  %18 = ptrtoint ptr %scb20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %scb20, align 4
  %opcode = getelementptr inbounds %struct.scb_header, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %opcode, align 1
  %task_proto = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 3
  %21 = ptrtoint ptr %task_proto to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %task_proto, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %22, label %if.end18.if.end44_crit_edge [
    i32 1, label %if.end18.sw.bb_crit_edge
    i32 4, label %if.end18.sw.bb_crit_edge250
    i32 8, label %sw.bb21
  ]

if.end18.sw.bb_crit_edge250:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end18.sw.bb_crit_edge:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end18.if.end44_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

sw.bb:                                            ; preds = %if.end18.sw.bb_crit_edge, %if.end18.sw.bb_crit_edge250
  %24 = getelementptr inbounds %struct.scb, ptr %19, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 32, ptr %24, align 1
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %26 = getelementptr inbounds %struct.scb, ptr %19, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 16, ptr %26, align 1
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 4
  %linkrate = getelementptr inbounds %struct.domain_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %linkrate to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %linkrate, align 16
  %32 = trunc i32 %31 to i8
  %conv25 = or i8 %32, 16
  store i8 %conv25, ptr %26, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb
  %33 = ptrtoint ptr %task_proto to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr = load i32, ptr %task_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr)
  %cmp27 = icmp eq i32 %.pr, 8
  br i1 %cmp27, label %if.then29, label %sw.epilog.if.end44_crit_edge

sw.epilog.if.end44_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then29:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %ssp_frame = getelementptr inbounds %struct.scb, ptr %19, i32 0, i32 1, i32 0, i32 2
  %34 = ptrtoint ptr %ssp_frame to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 22, ptr %ssp_frame, align 1
  %hashed_dest_addr = getelementptr inbounds %struct.scb, ptr %19, i32 0, i32 1, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 4
  %hashed_sas_addr = getelementptr inbounds %struct.domain_device, ptr %36, i32 0, i32 16
  %37 = call ptr @memcpy(ptr %hashed_dest_addr, ptr %hashed_sas_addr, i32 3)
  %hashed_src_addr = getelementptr inbounds %struct.scb, ptr %19, i32 0, i32 1, i32 0, i32 2, i32 3
  %38 = load ptr, ptr %task, align 4
  %port = getelementptr inbounds %struct.domain_device, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %port, align 4
  %ha36 = getelementptr inbounds %struct.asd_sas_port, ptr %40, i32 0, i32 21
  %41 = ptrtoint ptr %ha36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ha36, align 4
  %hashed_sas_addr37 = getelementptr inbounds %struct.sas_ha_struct, ptr %42, i32 0, i32 15
  %43 = call ptr @memcpy(ptr %hashed_src_addr, ptr %hashed_sas_addr37, i32 3)
  %tptt = getelementptr inbounds %struct.scb, ptr %19, i32 0, i32 1, i32 0, i32 2, i32 8
  %44 = ptrtoint ptr %tptt to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 -1, ptr %tptt, align 1
  %ssp_task = getelementptr inbounds %struct.scb, ptr %19, i32 0, i32 1, i32 0, i32 3
  %45 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 4
  %LUN = getelementptr inbounds %struct.sas_ssp_task, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %LUN to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %47 = load i64, ptr %LUN, align 1
  %48 = ptrtoint ptr %ssp_task to i32
  call void @__asan_storeN_noabort(i32 %48, i32 8)
  store i64 %47, ptr %ssp_task, align 1
  %tmf = getelementptr inbounds %struct.scb, ptr %19, i32 0, i32 1, i32 0, i32 3, i32 3
  %49 = ptrtoint ptr %tmf to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %tmf, align 1
  %tag = getelementptr inbounds %struct.scb, ptr %19, i32 0, i32 1, i32 0, i32 3, i32 5
  %50 = ptrtoint ptr %tag to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 -1, ptr %tag, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then29, %sw.epilog.if.end44_crit_edge, %if.end18.if.end44_crit_edge
  %51 = getelementptr inbounds %struct.scb, ptr %19, i32 0, i32 1
  %sister_scb = getelementptr inbounds %struct.scb, ptr %19, i32 0, i32 1, i32 0, i32 4
  %52 = ptrtoint ptr %sister_scb to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 -1, ptr %sister_scb, align 1
  %53 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %task, align 4
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %54, i32 0, i32 20
  %55 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lldd_dev, align 128
  %57 = ptrtoint ptr %56 to i32
  %conv46 = trunc i32 %57 to i16
  %58 = call i16 @llvm.bswap.i16(i16 %conv46)
  %conn_handle = getelementptr inbounds %struct.scb, ptr %19, i32 0, i32 1, i32 0, i32 5
  %59 = ptrtoint ptr %conn_handle to i32
  call void @__asan_storeN_noabort(i32 %59, i32 2)
  store i16 %58, ptr %conn_handle, align 1
  %retry_count = getelementptr inbounds %struct.scb, ptr %19, i32 0, i32 1, i32 0, i32 8
  %60 = ptrtoint ptr %retry_count to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %retry_count, align 1
  %tc_index = getelementptr inbounds %struct.asd_ascb, ptr %1, i32 0, i32 12
  %61 = ptrtoint ptr %tc_index to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tc_index, align 4
  %conv47 = trunc i32 %62 to i16
  %63 = call i16 @llvm.bswap.i16(i16 %conv47)
  %index = getelementptr inbounds %struct.scb, ptr %19, i32 0, i32 1, i32 0, i32 10
  %64 = ptrtoint ptr %index to i32
  call void @__asan_storeN_noabort(i32 %64, i32 2)
  store i16 %63, ptr %index, align 1
  %itnl_to = getelementptr inbounds %struct.abort_task, ptr %51, i32 0, i32 11
  %65 = ptrtoint ptr %itnl_to to i32
  call void @__asan_storeN_noabort(i32 %65, i32 2)
  store i16 -12281, ptr %itnl_to, align 1
  %tasklet_complete1.i = getelementptr inbounds %struct.asd_ascb, ptr %call15, i32 0, i32 5
  %66 = ptrtoint ptr %tasklet_complete1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @asd_tmf_tasklet_complete, ptr %tasklet_complete1.i, align 4
  %uldd_timer.i = getelementptr inbounds %struct.asd_ascb, ptr %call15, i32 0, i32 6
  %67 = ptrtoint ptr %uldd_timer.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load.i = load i8, ptr %uldd_timer.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %uldd_timer.i, align 4
  %timer.i = getelementptr inbounds %struct.asd_ascb, ptr %call15, i32 0, i32 7
  %function.i = getelementptr inbounds %struct.asd_ascb, ptr %call15, i32 0, i32 7, i32 2
  %68 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @asd_tmf_timedout, ptr %function.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %69, 500
  %expires.i = getelementptr inbounds %struct.asd_ascb, ptr %call15, i32 0, i32 7, i32 1
  %70 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add.i, ptr %expires.i, align 4
  call void @add_timer(ptr noundef %timer.i) #5
  %ha.i = getelementptr inbounds %struct.asd_ascb, ptr %call15, i32 0, i32 1
  %71 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ha.i, align 4
  %call.i = call i32 @asd_post_ascb_list(ptr noundef %72, ptr noundef nonnull %call15, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end51, label %if.then.i231, !prof !147

if.end51:                                         ; preds = %if.end44
  %73 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %res, align 4
  call void @wait_for_completion(ptr noundef nonnull %completion) #5
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #8
  %tag57 = getelementptr inbounds %struct.tasklet_completion_status, ptr %tcs, i32 0, i32 3
  %74 = ptrtoint ptr %tag57 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %tag57, align 2
  %tag58 = getelementptr inbounds %struct.asd_ascb, ptr %1, i32 0, i32 10
  %76 = ptrtoint ptr %tag58 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %tag58, align 2
  %tag_valid = getelementptr inbounds %struct.tasklet_completion_status, ptr %tcs, i32 0, i32 2
  %77 = ptrtoint ptr %tag_valid to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load = load i8, ptr %tag_valid, align 4
  %bf.lshr = and i8 %bf.load, -128
  %tag_valid59 = getelementptr inbounds %struct.asd_ascb, ptr %1, i32 0, i32 9
  %78 = ptrtoint ptr %tag_valid59 to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load60 = load i8, ptr %tag_valid59, align 4
  %bf.clear = and i8 %bf.load60, 127
  %bf.set = or i8 %bf.clear, %bf.lshr
  store i8 %bf.set, ptr %tag_valid59, align 4
  %call70 = call i32 @_raw_spin_lock_irqsave(ptr noundef %task_state_lock) #5
  %79 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %task_state_flags, align 4
  %and76 = and i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %task_state_lock, i32 noundef %call70) #5
  br i1 %tobool77.not, label %if.end85, label %if.then78

if.then78:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %res, align 4
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef %task) #8
  br label %out_donethread-pre-split

if.end85:                                         ; preds = %if.end51
  %82 = ptrtoint ptr %tcs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tcs, align 4
  %84 = zext i32 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %83, label %sw.default106 [
    i32 7, label %if.then89
    i32 0, label %land.lhs.true
    i32 29, label %sw.bb136
    i32 26, label %sw.bb108
    i32 33, label %sw.bb109
    i32 31, label %if.end85.out_done.thread248_crit_edge
    i32 32, label %if.end85.out_done.thread248_crit_edge251
    i32 34, label %if.end85.out_done.thread248_crit_edge252
  ]

if.end85.out_done.thread248_crit_edge252:         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_done.thread248

if.end85.out_done.thread248_crit_edge251:         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_done.thread248

if.end85.out_done.thread248_crit_edge:            ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_done.thread248

if.then89:                                        ; preds = %if.end85
  %tmf_state = getelementptr inbounds %struct.tasklet_completion_status, ptr %tcs, i32 0, i32 1
  %85 = ptrtoint ptr %tmf_state to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tmf_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp90 = icmp eq i32 %86, 0
  br i1 %cmp90, label %if.then92, label %if.else

if.then92:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #7
  %call93 = call fastcc i32 @asd_clear_nexus(ptr noundef %task)
  %87 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %call93, ptr %res, align 4
  br label %out_done

if.else:                                          ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #7
  %88 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %86, ptr %res, align 4
  br label %out_done.thread

land.lhs.true:                                    ; preds = %if.end85
  %tmf_state100 = getelementptr inbounds %struct.tasklet_completion_status, ptr %tcs, i32 0, i32 1
  %89 = ptrtoint ptr %tmf_state100 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tmf_state100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %90)
  %cmp101 = icmp eq i32 %90, 5
  br i1 %cmp101, label %if.then103, label %land.lhs.true.out_donethread-pre-split_crit_edge

land.lhs.true.out_donethread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_donethread-pre-split

if.then103:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %91 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 5, ptr %res, align 4
  br label %out_done.thread

sw.default106:                                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  %call107 = call fastcc i32 @asd_clear_nexus(ptr noundef %task)
  %92 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call107, ptr %res, align 4
  br label %out_done

sw.bb108:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  %93 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 2, ptr %res, align 4
  br label %out_done.thread

sw.bb109:                                         ; preds = %if.end85
  %94 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 5, ptr %res, align 4
  %call110 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %tascb_completion, i32 noundef 500) #5
  %call120 = call i32 @_raw_spin_lock_irqsave(ptr noundef %task_state_lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call110)
  %cmp125 = icmp slt i32 %call110, 1
  br i1 %cmp125, label %if.then127, label %sw.bb109.if.end128_crit_edge

sw.bb109.if.end128_crit_edge:                     ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end128

if.then127:                                       ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #7
  %95 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 5, ptr %res, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then127, %sw.bb109.if.end128_crit_edge
  %96 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %task_state_flags, align 4
  %and130 = and i32 %97, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %if.end128.if.end133_crit_edge, label %if.then132

if.end128.if.end133_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133

if.then132:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #7
  %98 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %res, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then132, %if.end128.if.end133_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %task_state_lock, i32 noundef %call120) #5
  br label %out_donethread-pre-split

out_done.thread248:                               ; preds = %if.end85.out_done.thread248_crit_edge, %if.end85.out_done.thread248_crit_edge251, %if.end85.out_done.thread248_crit_edge252
  %99 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %res, align 4
  %100 = ptrtoint ptr %completion2 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %completion2, align 4
  br label %if.then143

sw.bb136:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  %101 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 4, ptr %res, align 4
  br label %out_done.thread

out_donethread-pre-split:                         ; preds = %if.end133, %land.lhs.true.out_donethread-pre-split_crit_edge, %if.then78, %if.then
  %102 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %102)
  %.pr246 = load i32, ptr %res, align 4
  br label %out_done

out_done.thread:                                  ; preds = %sw.bb136, %sw.bb108, %if.then103, %if.else
  %103 = ptrtoint ptr %completion2 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %completion2, align 4
  br label %do.end151

out_done:                                         ; preds = %out_donethread-pre-split, %sw.default106, %if.then92
  %104 = phi i32 [ %.pr246, %out_donethread-pre-split ], [ %call93, %if.then92 ], [ %call107, %sw.default106 ]
  %105 = ptrtoint ptr %completion2 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %completion2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp141 = icmp eq i32 %104, 0
  br i1 %cmp141, label %out_done.if.then143_crit_edge, label %out_done.do.end151_crit_edge

out_done.do.end151_crit_edge:                     ; preds = %out_done
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end151

out_done.if.then143_crit_edge:                    ; preds = %out_done
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then143

if.then143:                                       ; preds = %out_done.if.then143_crit_edge, %out_done.thread248
  %106 = ptrtoint ptr %lldd_task to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %lldd_task, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  call void @arm_heavy_mb() #5
  %tobool.not.i225 = icmp eq ptr %1, null
  br i1 %tobool.not.i225, label %if.then143.do.end151_crit_edge, label %if.then.i227

if.then143.do.end151_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end151

if.then.i227:                                     ; preds = %if.then143
  %107 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ha, align 4
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile ptr, ptr %1, align 4
  %cmp.i.not.i = icmp eq ptr %110, %1
  br i1 %cmp.i.not.i, label %do.body13.i, label %do.body6.i, !prof !147

do.body6.i:                                       ; preds = %if.then.i227
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_hwi.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #5, !srcloc !148
  unreachable

do.body13.i:                                      ; preds = %if.then.i227
  call void @__sanitizer_cov_trace_pc() #7
  %tc_index_lock.i = getelementptr inbounds %struct.asd_ha_struct, ptr %108, i32 0, i32 13, i32 6
  %call16.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tc_index_lock.i) #5
  %111 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ha, align 4
  %tc_index.i = getelementptr inbounds %struct.asd_ascb, ptr %1, i32 0, i32 12
  %113 = ptrtoint ptr %tc_index.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %tc_index.i, align 4
  %tc_index_array.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %112, i32 0, i32 13, i32 7
  %115 = ptrtoint ptr %tc_index_array.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %tc_index_array.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %116, i32 %114
  %117 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %arrayidx.i.i, align 4
  %tc_index_bitmap.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %112, i32 0, i32 13, i32 8
  %118 = ptrtoint ptr %tc_index_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %tc_index_bitmap.i.i, align 4
  call void @_clear_bit(i32 noundef %114, ptr noundef %119) #5
  %120 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ha, align 4
  %tc_index_lock25.i = getelementptr inbounds %struct.asd_ha_struct, ptr %121, i32 0, i32 13, i32 6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tc_index_lock25.i, i32 noundef %call16.i) #5
  %scb_pool.i = getelementptr inbounds %struct.asd_ha_struct, ptr %108, i32 0, i32 12
  %122 = ptrtoint ptr %scb_pool.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %scb_pool.i, align 4
  %dma_scb.i = getelementptr inbounds %struct.asd_ascb, ptr %1, i32 0, i32 3
  %124 = ptrtoint ptr %dma_scb.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dma_scb.i, align 4
  %dma_handle.i = getelementptr inbounds %struct.asd_ascb, ptr %1, i32 0, i32 3, i32 1
  %126 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %dma_handle.i, align 4
  call void @dma_pool_free(ptr noundef %123, ptr noundef %125, i32 noundef %127) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_ascb_cache to i32))
  %128 = load ptr, ptr @asd_ascb_cache, align 4
  call void @kmem_cache_free(ptr noundef %128, ptr noundef nonnull %1) #5
  br label %do.end151

do.end151:                                        ; preds = %do.body13.i, %if.then143.do.end151_crit_edge, %out_done.do.end151_crit_edge, %out_done.thread
  %129 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %res, align 4
  %call153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %task, i32 noundef %130) #8
  %131 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %res, align 4
  br label %cleanup

if.then.i231:                                     ; preds = %if.end44
  %call7.i = call i32 @del_timer(ptr noundef %timer.i) #5
  %133 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %call.i, ptr %res, align 4
  %134 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ha.i, align 4
  %136 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile ptr, ptr %call15, align 4
  %cmp.i.not.i230 = icmp eq ptr %137, %call15
  br i1 %cmp.i.not.i230, label %asd_ascb_free.exit244, label %do.body6.i232, !prof !147

do.body6.i232:                                    ; preds = %if.then.i231
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_hwi.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #5, !srcloc !148
  unreachable

asd_ascb_free.exit244:                            ; preds = %if.then.i231
  call void @__sanitizer_cov_trace_pc() #7
  %tc_index_lock.i233 = getelementptr inbounds %struct.asd_ha_struct, ptr %135, i32 0, i32 13, i32 6
  %call16.i234 = call i32 @_raw_spin_lock_irqsave(ptr noundef %tc_index_lock.i233) #5
  %138 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ha.i, align 4
  %tc_index.i235 = getelementptr inbounds %struct.asd_ascb, ptr %call15, i32 0, i32 12
  %140 = ptrtoint ptr %tc_index.i235 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %tc_index.i235, align 4
  %tc_index_array.i.i236 = getelementptr inbounds %struct.asd_ha_struct, ptr %139, i32 0, i32 13, i32 7
  %142 = ptrtoint ptr %tc_index_array.i.i236 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %tc_index_array.i.i236, align 4
  %arrayidx.i.i237 = getelementptr ptr, ptr %143, i32 %141
  %144 = ptrtoint ptr %arrayidx.i.i237 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr null, ptr %arrayidx.i.i237, align 4
  %tc_index_bitmap.i.i238 = getelementptr inbounds %struct.asd_ha_struct, ptr %139, i32 0, i32 13, i32 8
  %145 = ptrtoint ptr %tc_index_bitmap.i.i238 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %tc_index_bitmap.i.i238, align 4
  call void @_clear_bit(i32 noundef %141, ptr noundef %146) #5
  %147 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ha.i, align 4
  %tc_index_lock25.i239 = getelementptr inbounds %struct.asd_ha_struct, ptr %148, i32 0, i32 13, i32 6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tc_index_lock25.i239, i32 noundef %call16.i234) #5
  %scb_pool.i240 = getelementptr inbounds %struct.asd_ha_struct, ptr %135, i32 0, i32 12
  %149 = ptrtoint ptr %scb_pool.i240 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %scb_pool.i240, align 4
  %dma_scb.i241 = getelementptr inbounds %struct.asd_ascb, ptr %call15, i32 0, i32 3
  %151 = ptrtoint ptr %dma_scb.i241 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dma_scb.i241, align 4
  %dma_handle.i242 = getelementptr inbounds %struct.asd_ascb, ptr %call15, i32 0, i32 3, i32 1
  %153 = ptrtoint ptr %dma_handle.i242 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %dma_handle.i242, align 4
  call void @dma_pool_free(ptr noundef %150, ptr noundef %152, i32 noundef %154) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_ascb_cache to i32))
  %155 = load ptr, ptr @asd_ascb_cache, align 4
  call void @kmem_cache_free(ptr noundef %155, ptr noundef nonnull %call15) #5
  %156 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %res, align 4
  %call158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %task, i32 noundef %157) #8
  %158 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %asd_ascb_free.exit244, %do.end151, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %132, %do.end151 ], [ %159, %asd_ascb_free.exit244 ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tascb_completion) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tcs) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asd_tmf_tasklet_complete(ptr noundef %ascb, ptr nocapture noundef readonly %dl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 7
  %call = tail call i32 @del_timer(ptr noundef %timer) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %uldd_task = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 13
  %0 = ptrtoint ptr %uldd_task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uldd_task, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #8
  %opcode = getelementptr inbounds %struct.done_list_struct, ptr %dl, i32 0, i32 1
  %2 = ptrtoint ptr %opcode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %opcode, align 1
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %1, align 4
  %5 = load i8, ptr %opcode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %5)
  %cmp = icmp eq i8 %5, 7
  br i1 %cmp, label %if.then5, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then5:                                         ; preds = %if.end
  %ha.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 1
  %6 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ha.i, align 4
  %status_block.i = getelementptr inbounds %struct.done_list_struct, ptr %dl, i32 0, i32 2
  %flags1.i = getelementptr inbounds %struct.done_list_struct, ptr %dl, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flags1.i, align 1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #8
  %tc_index_lock.i = getelementptr inbounds %struct.asd_ha_struct, ptr %7, i32 0, i32 13, i32 6
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tc_index_lock.i) #5
  %10 = ptrtoint ptr %status_block.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %status_block.i, align 1
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #5
  %conv13.i = zext i16 %12 to i32
  %tc_index_array.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %7, i32 0, i32 13, i32 7
  %13 = ptrtoint ptr %tc_index_array.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tc_index_array.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %14, i32 %conv13.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tc_index_lock.i, i32 noundef %call7.i) #5
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %do.end19.i, label %if.end.i

do.end19.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #8
  br label %asd_get_tmf_resp_tasklet.exit

if.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %17 = lshr i8 %9, 4
  %18 = and i8 %17, 7
  %19 = zext i8 %18 to i32
  %sub.i = add nsw i32 %19, -1
  %edb_arr.i = getelementptr inbounds %struct.asd_ha_struct, ptr %7, i32 0, i32 13, i32 16
  %20 = ptrtoint ptr %edb_arr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %edb_arr.i, align 4
  %edb_index.i = getelementptr inbounds %struct.asd_ascb, ptr %16, i32 0, i32 11
  %22 = ptrtoint ptr %edb_index.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %edb_index.i, align 4
  %add.i = add i32 %23, %sub.i
  %arrayidx.i = getelementptr ptr, ptr %21, i32 %add.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 4
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr.i, align 2
  %tag.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 10
  %30 = ptrtoint ptr %tag.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %tag.i, align 2
  %31 = load ptr, ptr %25, align 4
  %datapres.i = getelementptr i8, ptr %31, i32 50
  %32 = ptrtoint ptr %datapres.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i = load i8, ptr %datapres.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear.i)
  %cmp30.i = icmp eq i8 %bf.clear.i, 1
  %spec.select.v.i = select i1 %cmp30.i, i32 67, i32 51
  %spec.select.i = getelementptr i8, ptr %31, i32 %spec.select.v.i
  %33 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %res.0.in.i = load i8, ptr %spec.select.i, align 1
  %res.0.i = zext i8 %res.0.in.i to i32
  %tag_valid.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 9
  %34 = ptrtoint ptr %tag_valid.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load36.i = load i8, ptr %tag_valid.i, align 4
  %bf.set.i = or i8 %bf.load36.i, -128
  store i8 %bf.set.i, ptr %tag_valid.i, align 4
  tail call void @asd_invalidate_edb(ptr noundef nonnull %16, i32 noundef %sub.i) #5
  br label %asd_get_tmf_resp_tasklet.exit

asd_get_tmf_resp_tasklet.exit:                    ; preds = %if.end.i, %do.end19.i
  %retval.0.i = phi i32 [ %res.0.i, %if.end.i ], [ 5, %do.end19.i ]
  %tmf_state = getelementptr inbounds %struct.tasklet_completion_status, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %tmf_state to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i, ptr %tmf_state, align 4
  %tag_valid = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 9
  %36 = ptrtoint ptr %tag_valid to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load = load i8, ptr %tag_valid, align 4
  %bf.lshr = and i8 %bf.load, -128
  %tag_valid7 = getelementptr inbounds %struct.tasklet_completion_status, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %tag_valid7 to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load8 = load i8, ptr %tag_valid7, align 4
  %bf.clear = and i8 %bf.load8, 127
  %bf.set = or i8 %bf.clear, %bf.lshr
  store i8 %bf.set, ptr %tag_valid7, align 4
  %tag = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 10
  %38 = ptrtoint ptr %tag to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %tag, align 2
  %tag9 = getelementptr inbounds %struct.tasklet_completion_status, ptr %1, i32 0, i32 3
  %40 = ptrtoint ptr %tag9 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %tag9, align 2
  br label %if.end10

if.end10:                                         ; preds = %asd_get_tmf_resp_tasklet.exit, %if.end.if.end10_crit_edge
  %completion = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 8
  %41 = ptrtoint ptr %completion to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %completion, align 4
  tail call void @complete(ptr noundef %42) #5
  %tobool.not.i22 = icmp eq ptr %ascb, null
  br i1 %tobool.not.i22, label %if.end10.cleanup_crit_edge, label %if.then.i

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.end10
  %ha.i23 = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 1
  %43 = ptrtoint ptr %ha.i23 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ha.i23, align 4
  %45 = ptrtoint ptr %ascb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %ascb, align 4
  %cmp.i.not.i = icmp eq ptr %46, %ascb
  br i1 %cmp.i.not.i, label %do.body13.i, label %do.body6.i, !prof !147

do.body6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_hwi.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #5, !srcloc !148
  unreachable

do.body13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %tc_index_lock.i24 = getelementptr inbounds %struct.asd_ha_struct, ptr %44, i32 0, i32 13, i32 6
  %call16.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tc_index_lock.i24) #5
  %47 = ptrtoint ptr %ha.i23 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ha.i23, align 4
  %tc_index.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 12
  %49 = ptrtoint ptr %tc_index.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tc_index.i, align 4
  %tc_index_array.i.i25 = getelementptr inbounds %struct.asd_ha_struct, ptr %48, i32 0, i32 13, i32 7
  %51 = ptrtoint ptr %tc_index_array.i.i25 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tc_index_array.i.i25, align 4
  %arrayidx.i.i26 = getelementptr ptr, ptr %52, i32 %50
  %53 = ptrtoint ptr %arrayidx.i.i26 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %arrayidx.i.i26, align 4
  %tc_index_bitmap.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %48, i32 0, i32 13, i32 8
  %54 = ptrtoint ptr %tc_index_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tc_index_bitmap.i.i, align 4
  tail call void @_clear_bit(i32 noundef %50, ptr noundef %55) #5
  %56 = ptrtoint ptr %ha.i23 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ha.i23, align 4
  %tc_index_lock25.i = getelementptr inbounds %struct.asd_ha_struct, ptr %57, i32 0, i32 13, i32 6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tc_index_lock25.i, i32 noundef %call16.i) #5
  %scb_pool.i = getelementptr inbounds %struct.asd_ha_struct, ptr %44, i32 0, i32 12
  %58 = ptrtoint ptr %scb_pool.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %scb_pool.i, align 4
  %dma_scb.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 3
  %60 = ptrtoint ptr %dma_scb.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dma_scb.i, align 4
  %dma_handle.i = getelementptr inbounds %struct.asd_ascb, ptr %ascb, i32 0, i32 3, i32 1
  %62 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma_handle.i, align 4
  tail call void @dma_pool_free(ptr noundef %59, ptr noundef %61, i32 noundef %63) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_ascb_cache to i32))
  %64 = load ptr, ptr @asd_ascb_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %64, ptr noundef nonnull %ascb) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body13.i, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asd_tmf_timedout(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %uldd_task = getelementptr i8, ptr %t, i32 64
  %0 = ptrtoint ptr %uldd_task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uldd_task, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #8
  %tmf_state = getelementptr inbounds %struct.tasklet_completion_status, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tmf_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %tmf_state, align 4
  %completion = getelementptr i8, ptr %t, i32 48
  %3 = ptrtoint ptr %completion to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %completion, align 4
  tail call void @complete(ptr noundef %4) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @asd_clear_nexus(ptr noundef %task) unnamed_addr #0 align 64 {
entry:
  %res.i36 = alloca i32, align 4
  %completion.i37 = alloca %struct.completion, align 4
  %tcs.i38 = alloca %struct.tasklet_completion_status, align 4
  %res.i = alloca i32, align 4
  %completion.i = alloca %struct.completion, align 4
  %tcs.i = alloca %struct.tasklet_completion_status, align 4
  %completion = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lldd_task = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 11
  %0 = ptrtoint ptr %lldd_task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lldd_task, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %completion) #5
  %2 = getelementptr inbounds i8, ptr %completion, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 52)
  %4 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %completion, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_completion.__key) #5
  %completion1 = getelementptr inbounds %struct.asd_ascb, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %completion1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %completion, ptr %completion1, align 4
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #8
  %tag_valid = getelementptr inbounds %struct.asd_ascb, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %tag_valid to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %tag_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 4
  %port.i39 = getelementptr inbounds %struct.domain_device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %port.i39 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port.i39, align 4
  %ha.i40 = getelementptr inbounds %struct.asd_sas_port, ptr %10, i32 0, i32 21
  %11 = ptrtoint ptr %ha.i40 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ha.i40, align 4
  %lldd_ha.i41 = getelementptr inbounds %struct.sas_ha_struct, ptr %12, i32 0, i32 21
  %13 = ptrtoint ptr %lldd_ha.i41 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lldd_ha.i41, align 4
  %15 = ptrtoint ptr %lldd_task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lldd_task, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res.i) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %completion.i) #5
  %17 = getelementptr inbounds i8, ptr %completion.i, i32 4
  %18 = call ptr @memset(ptr %17, i32 255, i32 52)
  %19 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %completion.i, align 4
  call void @__init_swait_queue_head(ptr noundef %17, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_completion.__key) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tcs.i) #5
  %20 = call ptr @memset(ptr %tcs.i, i32 0, i32 12)
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.64) #8
  %21 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %res.i, align 4
  %call2.i = call ptr @asd_ascb_alloc_list(ptr noundef %14, ptr noundef nonnull %res.i, i32 noundef 3264) #5
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.then.asd_clear_nexus_tag.exit_crit_edge, label %if.end.i

if.then.asd_clear_nexus_tag.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %asd_clear_nexus_tag.exit

if.end.i:                                         ; preds = %if.then
  %completion3.i = getelementptr inbounds %struct.asd_ascb, ptr %call2.i, i32 0, i32 8
  %22 = ptrtoint ptr %completion3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %completion.i, ptr %completion3.i, align 4
  %uldd_task.i = getelementptr inbounds %struct.asd_ascb, ptr %call2.i, i32 0, i32 13
  %23 = ptrtoint ptr %uldd_task.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %tcs.i, ptr %uldd_task.i, align 4
  %scb4.i = getelementptr inbounds %struct.asd_ascb, ptr %call2.i, i32 0, i32 2
  %24 = ptrtoint ptr %scb4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %scb4.i, align 4
  %opcode.i = getelementptr inbounds %struct.scb_header, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -60, ptr %opcode.i, align 1
  %27 = getelementptr inbounds %struct.scb, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 4, ptr %27, align 1
  %ssp_task.i = getelementptr inbounds %struct.scb, ptr %25, i32 0, i32 1, i32 0, i32 3
  %29 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 4
  %LUN.i = getelementptr inbounds %struct.sas_ssp_task, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %LUN.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %LUN.i, align 1
  %32 = ptrtoint ptr %ssp_task.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %31, ptr %ssp_task.i, align 1
  %tag.i = getelementptr inbounds %struct.asd_ascb, ptr %16, i32 0, i32 10
  %33 = ptrtoint ptr %tag.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %tag.i, align 2
  %tag7.i = getelementptr inbounds %struct.scb, ptr %25, i32 0, i32 1, i32 0, i32 3, i32 5
  %35 = ptrtoint ptr %tag7.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %tag7.i, align 1
  %36 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task, align 4
  %tproto.i = getelementptr inbounds %struct.domain_device, ptr %37, i32 0, i32 13
  %38 = ptrtoint ptr %tproto.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tproto.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool9.not.i = icmp eq i32 %39, 0
  br i1 %tobool9.not.i, label %if.end.i.do.end15.i_crit_edge, label %if.then10.i

if.end.i.do.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %lldd_dev.i = getelementptr inbounds %struct.domain_device, ptr %37, i32 0, i32 20
  %40 = ptrtoint ptr %lldd_dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lldd_dev.i, align 128
  %42 = ptrtoint ptr %41 to i32
  %conv.i = trunc i32 %42 to i16
  %43 = call i16 @llvm.bswap.i16(i16 %conv.i) #5
  %conn_handle.i = getelementptr inbounds %struct.scb, ptr %25, i32 0, i32 1, i32 0, i32 5
  %44 = ptrtoint ptr %conn_handle.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %43, ptr %conn_handle.i, align 1
  br label %do.end15.i

do.end15.i:                                       ; preds = %if.then10.i, %if.end.i.do.end15.i_crit_edge
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.64) #8
  %tasklet_complete1.i.i = getelementptr inbounds %struct.asd_ascb, ptr %call2.i, i32 0, i32 5
  %45 = ptrtoint ptr %tasklet_complete1.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @asd_clear_nexus_tasklet_complete, ptr %tasklet_complete1.i.i, align 4
  %uldd_timer.i.i = getelementptr inbounds %struct.asd_ascb, ptr %call2.i, i32 0, i32 6
  %46 = ptrtoint ptr %uldd_timer.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load.i.i = load i8, ptr %uldd_timer.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  store i8 %bf.set.i.i, ptr %uldd_timer.i.i, align 4
  %timer.i.i = getelementptr inbounds %struct.asd_ascb, ptr %call2.i, i32 0, i32 7
  %function.i.i = getelementptr inbounds %struct.asd_ascb, ptr %call2.i, i32 0, i32 7, i32 2
  %47 = ptrtoint ptr %function.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @asd_clear_nexus_timedout, ptr %function.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %48, 500
  %expires.i.i = getelementptr inbounds %struct.asd_ascb, ptr %call2.i, i32 0, i32 7, i32 1
  %49 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add.i.i, ptr %expires.i.i, align 4
  call void @add_timer(ptr noundef %timer.i.i) #5
  %ha.i.i = getelementptr inbounds %struct.asd_ascb, ptr %call2.i, i32 0, i32 1
  %50 = ptrtoint ptr %ha.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ha.i.i, align 4
  %call.i.i = call i32 @asd_post_ascb_list(ptr noundef %51, ptr noundef nonnull %call2.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %do.end24.i, label %if.then.i51.i, !prof !147

do.end24.i:                                       ; preds = %do.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %res.i, align 4
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.64) #8
  call void @wait_for_completion(ptr noundef nonnull %completion.i) #5
  %53 = ptrtoint ptr %tcs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tcs.i, align 4
  br label %asd_clear_nexus_tag.exit

if.then.i51.i:                                    ; preds = %do.end15.i
  %call7.i.i = call i32 @del_timer(ptr noundef %timer.i.i) #5
  %55 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call.i.i, ptr %res.i, align 4
  %56 = ptrtoint ptr %ha.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ha.i.i, align 4
  %58 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %call2.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %59, %call2.i
  br i1 %cmp.i.not.i.i, label %asd_ascb_free.exit.i, label %do.body6.i.i, !prof !147

do.body6.i.i:                                     ; preds = %if.then.i51.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_hwi.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #5, !srcloc !148
  unreachable

asd_ascb_free.exit.i:                             ; preds = %if.then.i51.i
  call void @__sanitizer_cov_trace_pc() #7
  %tc_index_lock.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %57, i32 0, i32 13, i32 6
  %call16.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tc_index_lock.i.i) #5
  %60 = ptrtoint ptr %ha.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ha.i.i, align 4
  %tc_index.i.i = getelementptr inbounds %struct.asd_ascb, ptr %call2.i, i32 0, i32 12
  %62 = ptrtoint ptr %tc_index.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tc_index.i.i, align 4
  %tc_index_array.i.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %61, i32 0, i32 13, i32 7
  %64 = ptrtoint ptr %tc_index_array.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tc_index_array.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %65, i32 %63
  %66 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %arrayidx.i.i.i, align 4
  %tc_index_bitmap.i.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %61, i32 0, i32 13, i32 8
  %67 = ptrtoint ptr %tc_index_bitmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tc_index_bitmap.i.i.i, align 4
  call void @_clear_bit(i32 noundef %63, ptr noundef %68) #5
  %69 = ptrtoint ptr %ha.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ha.i.i, align 4
  %tc_index_lock25.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %70, i32 0, i32 13, i32 6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tc_index_lock25.i.i, i32 noundef %call16.i.i) #5
  %scb_pool.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %57, i32 0, i32 12
  %71 = ptrtoint ptr %scb_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %scb_pool.i.i, align 4
  %dma_scb.i.i = getelementptr inbounds %struct.asd_ascb, ptr %call2.i, i32 0, i32 3
  %73 = ptrtoint ptr %dma_scb.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dma_scb.i.i, align 4
  %dma_handle.i.i = getelementptr inbounds %struct.asd_ascb, ptr %call2.i, i32 0, i32 3, i32 1
  %75 = ptrtoint ptr %dma_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dma_handle.i.i, align 4
  call void @dma_pool_free(ptr noundef %72, ptr noundef %74, i32 noundef %76) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_ascb_cache to i32))
  %77 = load ptr, ptr @asd_ascb_cache, align 4
  call void @kmem_cache_free(ptr noundef %77, ptr noundef nonnull %call2.i) #5
  %78 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %res.i, align 4
  br label %asd_clear_nexus_tag.exit

asd_clear_nexus_tag.exit:                         ; preds = %asd_ascb_free.exit.i, %do.end24.i, %if.then.asd_clear_nexus_tag.exit_crit_edge
  %retval.0.i = phi i32 [ %79, %asd_ascb_free.exit.i ], [ %54, %do.end24.i ], [ -12, %if.then.asd_clear_nexus_tag.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tcs.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res.i36) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %completion.i37) #5
  %80 = getelementptr inbounds i8, ptr %completion.i37, i32 4
  %81 = call ptr @memset(ptr %80, i32 255, i32 52)
  %82 = ptrtoint ptr %completion.i37 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %completion.i37, align 4
  call void @__init_swait_queue_head(ptr noundef %80, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_completion.__key) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tcs.i38) #5
  %83 = call ptr @memset(ptr %tcs.i38, i32 0, i32 12)
  %call.i44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.69) #8
  %84 = ptrtoint ptr %res.i36 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %res.i36, align 4
  %call2.i45 = call ptr @asd_ascb_alloc_list(ptr noundef %14, ptr noundef nonnull %res.i36, i32 noundef 3264) #5
  %tobool.not.i46 = icmp eq ptr %call2.i45, null
  br i1 %tobool.not.i46, label %if.else.asd_clear_nexus_index.exit_crit_edge, label %if.end.i52

if.else.asd_clear_nexus_index.exit_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %asd_clear_nexus_index.exit

if.end.i52:                                       ; preds = %if.else
  %completion3.i47 = getelementptr inbounds %struct.asd_ascb, ptr %call2.i45, i32 0, i32 8
  %85 = ptrtoint ptr %completion3.i47 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %completion.i37, ptr %completion3.i47, align 4
  %uldd_task.i48 = getelementptr inbounds %struct.asd_ascb, ptr %call2.i45, i32 0, i32 13
  %86 = ptrtoint ptr %uldd_task.i48 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %tcs.i38, ptr %uldd_task.i48, align 4
  %scb4.i49 = getelementptr inbounds %struct.asd_ascb, ptr %call2.i45, i32 0, i32 2
  %87 = ptrtoint ptr %scb4.i49 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %scb4.i49, align 4
  %opcode.i50 = getelementptr inbounds %struct.scb_header, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %opcode.i50 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -60, ptr %opcode.i50, align 1
  %90 = getelementptr inbounds %struct.scb, ptr %88, i32 0, i32 1
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 5, ptr %90, align 1
  %92 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task, align 4
  %tproto.i51 = getelementptr inbounds %struct.domain_device, ptr %93, i32 0, i32 13
  %94 = ptrtoint ptr %tproto.i51 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tproto.i51, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool6.not.i = icmp eq i32 %95, 0
  br i1 %tobool6.not.i, label %if.end.i52.if.end9.i_crit_edge, label %if.then7.i

if.end.i52.if.end9.i_crit_edge:                   ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #7
  %lldd_dev.i53 = getelementptr inbounds %struct.domain_device, ptr %93, i32 0, i32 20
  %96 = ptrtoint ptr %lldd_dev.i53 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %lldd_dev.i53, align 128
  %98 = ptrtoint ptr %97 to i32
  %conv.i54 = trunc i32 %98 to i16
  %99 = call i16 @llvm.bswap.i16(i16 %conv.i54) #5
  %conn_handle.i55 = getelementptr inbounds %struct.scb, ptr %88, i32 0, i32 1, i32 0, i32 5
  %100 = ptrtoint ptr %conn_handle.i55 to i32
  call void @__asan_storeN_noabort(i32 %100, i32 2)
  store i16 %99, ptr %conn_handle.i55, align 1
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end.i52.if.end9.i_crit_edge
  %tc_index.i = getelementptr inbounds %struct.asd_ascb, ptr %16, i32 0, i32 12
  %101 = ptrtoint ptr %tc_index.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %tc_index.i, align 4
  %conv10.i = trunc i32 %102 to i16
  %103 = call i16 @llvm.bswap.i16(i16 %conv10.i) #5
  %index.i = getelementptr inbounds %struct.scb, ptr %88, i32 0, i32 1, i32 0, i32 10
  %104 = ptrtoint ptr %index.i to i32
  call void @__asan_storeN_noabort(i32 %104, i32 2)
  store i16 %103, ptr %index.i, align 1
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.69) #8
  %tasklet_complete1.i.i56 = getelementptr inbounds %struct.asd_ascb, ptr %call2.i45, i32 0, i32 5
  %105 = ptrtoint ptr %tasklet_complete1.i.i56 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @asd_clear_nexus_tasklet_complete, ptr %tasklet_complete1.i.i56, align 4
  %uldd_timer.i.i57 = getelementptr inbounds %struct.asd_ascb, ptr %call2.i45, i32 0, i32 6
  %106 = ptrtoint ptr %uldd_timer.i.i57 to i32
  call void @__asan_load1_noabort(i32 %106)
  %bf.load.i.i58 = load i8, ptr %uldd_timer.i.i57, align 4
  %bf.set.i.i59 = or i8 %bf.load.i.i58, -128
  store i8 %bf.set.i.i59, ptr %uldd_timer.i.i57, align 4
  %timer.i.i60 = getelementptr inbounds %struct.asd_ascb, ptr %call2.i45, i32 0, i32 7
  %function.i.i61 = getelementptr inbounds %struct.asd_ascb, ptr %call2.i45, i32 0, i32 7, i32 2
  %107 = ptrtoint ptr %function.i.i61 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @asd_clear_nexus_timedout, ptr %function.i.i61, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %108 = load volatile i32, ptr @jiffies, align 128
  %add.i.i62 = add i32 %108, 500
  %expires.i.i63 = getelementptr inbounds %struct.asd_ascb, ptr %call2.i45, i32 0, i32 7, i32 1
  %109 = ptrtoint ptr %expires.i.i63 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %add.i.i62, ptr %expires.i.i63, align 4
  call void @add_timer(ptr noundef %timer.i.i60) #5
  %ha.i.i64 = getelementptr inbounds %struct.asd_ascb, ptr %call2.i45, i32 0, i32 1
  %110 = ptrtoint ptr %ha.i.i64 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ha.i.i64, align 4
  %call.i.i65 = call i32 @asd_post_ascb_list(ptr noundef %111, ptr noundef nonnull %call2.i45, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i65)
  %tobool.not.i.i66 = icmp eq i32 %call.i.i65, 0
  br i1 %tobool.not.i.i66, label %do.end22.i, label %if.then.i47.i, !prof !147

do.end22.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %112 = ptrtoint ptr %res.i36 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %res.i36, align 4
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.69) #8
  call void @wait_for_completion(ptr noundef nonnull %completion.i37) #5
  %113 = ptrtoint ptr %tcs.i38 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %tcs.i38, align 4
  br label %asd_clear_nexus_index.exit

if.then.i47.i:                                    ; preds = %if.end9.i
  %call7.i.i67 = call i32 @del_timer(ptr noundef %timer.i.i60) #5
  %115 = ptrtoint ptr %res.i36 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %call.i.i65, ptr %res.i36, align 4
  %116 = ptrtoint ptr %ha.i.i64 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ha.i.i64, align 4
  %118 = ptrtoint ptr %call2.i45 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile ptr, ptr %call2.i45, align 4
  %cmp.i.not.i.i68 = icmp eq ptr %119, %call2.i45
  br i1 %cmp.i.not.i.i68, label %asd_ascb_free.exit.i80, label %do.body6.i.i69, !prof !147

do.body6.i.i69:                                   ; preds = %if.then.i47.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_hwi.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #5, !srcloc !148
  unreachable

asd_ascb_free.exit.i80:                           ; preds = %if.then.i47.i
  call void @__sanitizer_cov_trace_pc() #7
  %tc_index_lock.i.i70 = getelementptr inbounds %struct.asd_ha_struct, ptr %117, i32 0, i32 13, i32 6
  %call16.i.i71 = call i32 @_raw_spin_lock_irqsave(ptr noundef %tc_index_lock.i.i70) #5
  %120 = ptrtoint ptr %ha.i.i64 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ha.i.i64, align 4
  %tc_index.i.i72 = getelementptr inbounds %struct.asd_ascb, ptr %call2.i45, i32 0, i32 12
  %122 = ptrtoint ptr %tc_index.i.i72 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %tc_index.i.i72, align 4
  %tc_index_array.i.i.i73 = getelementptr inbounds %struct.asd_ha_struct, ptr %121, i32 0, i32 13, i32 7
  %124 = ptrtoint ptr %tc_index_array.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %tc_index_array.i.i.i73, align 4
  %arrayidx.i.i.i74 = getelementptr ptr, ptr %125, i32 %123
  %126 = ptrtoint ptr %arrayidx.i.i.i74 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr null, ptr %arrayidx.i.i.i74, align 4
  %tc_index_bitmap.i.i.i75 = getelementptr inbounds %struct.asd_ha_struct, ptr %121, i32 0, i32 13, i32 8
  %127 = ptrtoint ptr %tc_index_bitmap.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %tc_index_bitmap.i.i.i75, align 4
  call void @_clear_bit(i32 noundef %123, ptr noundef %128) #5
  %129 = ptrtoint ptr %ha.i.i64 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ha.i.i64, align 4
  %tc_index_lock25.i.i76 = getelementptr inbounds %struct.asd_ha_struct, ptr %130, i32 0, i32 13, i32 6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tc_index_lock25.i.i76, i32 noundef %call16.i.i71) #5
  %scb_pool.i.i77 = getelementptr inbounds %struct.asd_ha_struct, ptr %117, i32 0, i32 12
  %131 = ptrtoint ptr %scb_pool.i.i77 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %scb_pool.i.i77, align 4
  %dma_scb.i.i78 = getelementptr inbounds %struct.asd_ascb, ptr %call2.i45, i32 0, i32 3
  %133 = ptrtoint ptr %dma_scb.i.i78 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dma_scb.i.i78, align 4
  %dma_handle.i.i79 = getelementptr inbounds %struct.asd_ascb, ptr %call2.i45, i32 0, i32 3, i32 1
  %135 = ptrtoint ptr %dma_handle.i.i79 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %dma_handle.i.i79, align 4
  call void @dma_pool_free(ptr noundef %132, ptr noundef %134, i32 noundef %136) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_ascb_cache to i32))
  %137 = load ptr, ptr @asd_ascb_cache, align 4
  call void @kmem_cache_free(ptr noundef %137, ptr noundef nonnull %call2.i45) #5
  %138 = ptrtoint ptr %res.i36 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %res.i36, align 4
  br label %asd_clear_nexus_index.exit

asd_clear_nexus_index.exit:                       ; preds = %asd_ascb_free.exit.i80, %do.end22.i, %if.else.asd_clear_nexus_index.exit_crit_edge
  %retval.0.i81 = phi i32 [ %139, %asd_ascb_free.exit.i80 ], [ %114, %do.end22.i ], [ -12, %if.else.asd_clear_nexus_index.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tcs.i38) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion.i37) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res.i36) #5
  br label %if.end

if.end:                                           ; preds = %asd_clear_nexus_index.exit, %asd_clear_nexus_tag.exit
  %res.0 = phi i32 [ %retval.0.i, %asd_clear_nexus_tag.exit ], [ %retval.0.i81, %asd_clear_nexus_index.exit ]
  %call5 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %completion, i32 noundef 500) #5
  %140 = ptrtoint ptr %completion1 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr null, ptr %completion1, align 4
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #8
  %task_state_lock = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 1
  %call16 = call i32 @_raw_spin_lock_irqsave(ptr noundef %task_state_lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp21 = icmp slt i32 %call5, 1
  %spec.select = select i1 %cmp21, i32 5, i32 %res.0
  %task_state_flags = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 2
  %141 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %task_state_flags, align 4
  %and = and i32 %142, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  %res.2 = select i1 %tobool25.not, i32 %spec.select, i32 0
  call void @_raw_spin_unlock_irqrestore(ptr noundef %task_state_lock, i32 noundef %call16) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion) #5
  ret i32 %res.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_abort_task_set(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %lun) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @asd_initiate_ssp_tmf(ptr noundef %dev, ptr noundef %lun, i32 noundef 2, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @asd_clear_nexus_I_T_L(ptr noundef %dev, ptr noundef %lun)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @asd_initiate_ssp_tmf(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %lun, i32 noundef %tmf, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  %res = alloca i32, align 4
  %completion = alloca %struct.completion, align 4
  %tcs = alloca %struct.tasklet_completion_status, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %ha = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha, align 4
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lldd_ha, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #5
  %6 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %res, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %completion) #5
  %7 = getelementptr inbounds i8, ptr %completion, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 52)
  %9 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %completion, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_completion.__key) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tcs) #5
  %10 = call ptr @memset(ptr %tcs, i32 0, i32 12)
  %tproto = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 13
  %11 = ptrtoint ptr %tproto to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tproto, align 8
  %and = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call ptr @asd_ascb_alloc_list(ptr noundef %5, ptr noundef nonnull %res, i32 noundef 3264) #5
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %completion4 = getelementptr inbounds %struct.asd_ascb, ptr %call, i32 0, i32 8
  %13 = ptrtoint ptr %completion4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %completion, ptr %completion4, align 4
  %uldd_task = getelementptr inbounds %struct.asd_ascb, ptr %call, i32 0, i32 13
  %14 = ptrtoint ptr %uldd_task to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %tcs, ptr %uldd_task, align 4
  %scb5 = getelementptr inbounds %struct.asd_ascb, ptr %call, i32 0, i32 2
  %15 = ptrtoint ptr %scb5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %scb5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %tmf)
  %cmp = icmp eq i32 %tmf, 128
  %spec.select = select i1 %cmp, i8 8, i8 4
  %17 = getelementptr inbounds %struct.scb_header, ptr %16, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %spec.select, ptr %17, align 1
  %19 = getelementptr inbounds %struct.scb, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 16, ptr %19, align 1
  %linkrate = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 2
  %21 = ptrtoint ptr %linkrate to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %linkrate, align 16
  %23 = trunc i32 %22 to i8
  %conv11 = or i8 %23, 16
  store i8 %conv11, ptr %19, align 1
  %ssp_frame = getelementptr inbounds %struct.scb, ptr %16, i32 0, i32 1, i32 0, i32 2
  %24 = ptrtoint ptr %ssp_frame to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 22, ptr %ssp_frame, align 1
  %hashed_dest_addr = getelementptr inbounds %struct.scb, ptr %16, i32 0, i32 1, i32 0, i32 2, i32 1
  %hashed_sas_addr = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 16
  %25 = call ptr @memcpy(ptr %hashed_dest_addr, ptr %hashed_sas_addr, i32 3)
  %hashed_src_addr = getelementptr inbounds %struct.scb, ptr %16, i32 0, i32 1, i32 0, i32 2, i32 3
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port, align 4
  %ha17 = getelementptr inbounds %struct.asd_sas_port, ptr %27, i32 0, i32 21
  %28 = ptrtoint ptr %ha17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ha17, align 4
  %hashed_sas_addr18 = getelementptr inbounds %struct.sas_ha_struct, ptr %29, i32 0, i32 15
  %30 = call ptr @memcpy(ptr %hashed_src_addr, ptr %hashed_sas_addr18, i32 3)
  %tptt = getelementptr inbounds %struct.scb, ptr %16, i32 0, i32 1, i32 0, i32 2, i32 8
  %31 = ptrtoint ptr %tptt to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 -1, ptr %tptt, align 1
  %ssp_task = getelementptr inbounds %struct.scb, ptr %16, i32 0, i32 1, i32 0, i32 3
  %32 = ptrtoint ptr %lun to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %lun, align 1
  %34 = ptrtoint ptr %ssp_task to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %33, ptr %ssp_task, align 1
  %conv23 = trunc i32 %tmf to i8
  %tmf25 = getelementptr inbounds %struct.scb, ptr %16, i32 0, i32 1, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %tmf25 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv23, ptr %tmf25, align 1
  %sister_scb = getelementptr inbounds %struct.scb, ptr %16, i32 0, i32 1, i32 0, i32 4
  %36 = ptrtoint ptr %sister_scb to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 -1, ptr %sister_scb, align 1
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 20
  %37 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lldd_dev, align 128
  %39 = ptrtoint ptr %38 to i32
  %conv26 = trunc i32 %39 to i16
  %40 = call i16 @llvm.bswap.i16(i16 %conv26)
  %conn_handle = getelementptr inbounds %struct.scb, ptr %16, i32 0, i32 1, i32 0, i32 5
  %41 = ptrtoint ptr %conn_handle to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %40, ptr %conn_handle, align 1
  %retry_count = getelementptr inbounds %struct.scb, ptr %16, i32 0, i32 1, i32 0, i32 8
  %42 = ptrtoint ptr %retry_count to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %retry_count, align 1
  %itnl_to = getelementptr inbounds %struct.initiate_ssp_tmf, ptr %19, i32 0, i32 11
  %43 = ptrtoint ptr %itnl_to to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 -12281, ptr %itnl_to, align 1
  br i1 %cmp, label %if.then29, label %if.end3.if.end32_crit_edge

if.end3.if.end32_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then29:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %conv30 = trunc i32 %index to i16
  %44 = call i16 @llvm.bswap.i16(i16 %conv30)
  %index31 = getelementptr inbounds %struct.scb, ptr %16, i32 0, i32 1, i32 0, i32 10
  %45 = ptrtoint ptr %index31 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 2)
  store i16 %44, ptr %index31, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end3.if.end32_crit_edge
  %tasklet_complete1.i = getelementptr inbounds %struct.asd_ascb, ptr %call, i32 0, i32 5
  %46 = ptrtoint ptr %tasklet_complete1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @asd_tmf_tasklet_complete, ptr %tasklet_complete1.i, align 4
  %uldd_timer.i = getelementptr inbounds %struct.asd_ascb, ptr %call, i32 0, i32 6
  %47 = ptrtoint ptr %uldd_timer.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load.i = load i8, ptr %uldd_timer.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %uldd_timer.i, align 4
  %timer.i = getelementptr inbounds %struct.asd_ascb, ptr %call, i32 0, i32 7
  %function.i = getelementptr inbounds %struct.asd_ascb, ptr %call, i32 0, i32 7, i32 2
  %48 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @asd_tmf_timedout, ptr %function.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %49, 500
  %expires.i = getelementptr inbounds %struct.asd_ascb, ptr %call, i32 0, i32 7, i32 1
  %50 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add.i, ptr %expires.i, align 4
  call void @add_timer(ptr noundef %timer.i) #5
  %ha.i = getelementptr inbounds %struct.asd_ascb, ptr %call, i32 0, i32 1
  %51 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ha.i, align 4
  %call.i = call i32 @asd_post_ascb_list(ptr noundef %52, ptr noundef nonnull %call, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end36, label %if.then.i75, !prof !147

if.end36:                                         ; preds = %if.end32
  %53 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %res, align 4
  call void @wait_for_completion(ptr noundef nonnull %completion) #5
  %54 = ptrtoint ptr %tcs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tcs, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %55, label %sw.default [
    i32 0, label %sw.bb
    i32 26, label %sw.bb37
    i32 33, label %sw.bb38
    i32 31, label %if.end36.sw.bb39_crit_edge
    i32 32, label %if.end36.sw.bb39_crit_edge76
    i32 34, label %if.end36.sw.bb39_crit_edge77
    i32 29, label %sw.bb40
  ]

if.end36.sw.bb39_crit_edge77:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb39

if.end36.sw.bb39_crit_edge76:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb39

if.end36.sw.bb39_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb39

sw.bb:                                            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %res, align 4
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %res, align 4
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 5, ptr %res, align 4
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end36.sw.bb39_crit_edge, %if.end36.sw.bb39_crit_edge76, %if.end36.sw.bb39_crit_edge77
  %60 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %res, align 4
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 4, ptr %res, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %55, ptr %res, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb
  %63 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %res, align 4
  br label %cleanup

if.then.i75:                                      ; preds = %if.end32
  %call7.i = call i32 @del_timer(ptr noundef %timer.i) #5
  %65 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call.i, ptr %res, align 4
  %66 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ha.i, align 4
  %68 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %call, align 4
  %cmp.i.not.i = icmp eq ptr %69, %call
  br i1 %cmp.i.not.i, label %asd_ascb_free.exit, label %do.body6.i, !prof !147

do.body6.i:                                       ; preds = %if.then.i75
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_hwi.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #5, !srcloc !148
  unreachable

asd_ascb_free.exit:                               ; preds = %if.then.i75
  call void @__sanitizer_cov_trace_pc() #7
  %tc_index_lock.i = getelementptr inbounds %struct.asd_ha_struct, ptr %67, i32 0, i32 13, i32 6
  %call16.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tc_index_lock.i) #5
  %70 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ha.i, align 4
  %tc_index.i = getelementptr inbounds %struct.asd_ascb, ptr %call, i32 0, i32 12
  %72 = ptrtoint ptr %tc_index.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tc_index.i, align 4
  %tc_index_array.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %71, i32 0, i32 13, i32 7
  %74 = ptrtoint ptr %tc_index_array.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tc_index_array.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %75, i32 %73
  %76 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %arrayidx.i.i, align 4
  %tc_index_bitmap.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %71, i32 0, i32 13, i32 8
  %77 = ptrtoint ptr %tc_index_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tc_index_bitmap.i.i, align 4
  call void @_clear_bit(i32 noundef %73, ptr noundef %78) #5
  %79 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ha.i, align 4
  %tc_index_lock25.i = getelementptr inbounds %struct.asd_ha_struct, ptr %80, i32 0, i32 13, i32 6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tc_index_lock25.i, i32 noundef %call16.i) #5
  %scb_pool.i = getelementptr inbounds %struct.asd_ha_struct, ptr %67, i32 0, i32 12
  %81 = ptrtoint ptr %scb_pool.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %scb_pool.i, align 4
  %dma_scb.i = getelementptr inbounds %struct.asd_ascb, ptr %call, i32 0, i32 3
  %83 = ptrtoint ptr %dma_scb.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dma_scb.i, align 4
  %dma_handle.i = getelementptr inbounds %struct.asd_ascb, ptr %call, i32 0, i32 3, i32 1
  %85 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dma_handle.i, align 4
  call void @dma_pool_free(ptr noundef %82, ptr noundef %84, i32 noundef %86) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_ascb_cache to i32))
  %87 = load ptr, ptr @asd_ascb_cache, align 4
  call void @kmem_cache_free(ptr noundef %87, ptr noundef nonnull %call) #5
  %88 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %asd_ascb_free.exit, %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %89, %asd_ascb_free.exit ], [ %64, %sw.epilog ], [ 4, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tcs) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @asd_clear_nexus_I_T_L(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %lun) unnamed_addr #0 align 64 {
entry:
  %res = alloca i32, align 4
  %completion = alloca %struct.completion, align 4
  %tcs = alloca %struct.tasklet_completion_status, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %ha = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha, align 4
  %lldd_ha = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %lldd_ha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lldd_ha, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %completion) #5
  %6 = getelementptr inbounds i8, ptr %completion, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 52)
  %8 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %completion, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_completion.__key) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tcs) #5
  %9 = call ptr @memset(ptr %tcs, i32 0, i32 12)
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.74) #8
  %10 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %res, align 4
  %call2 = call ptr @asd_ascb_alloc_list(ptr noundef %5, ptr noundef nonnull %res, i32 noundef 3264) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %completion3 = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 8
  %11 = ptrtoint ptr %completion3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %completion, ptr %completion3, align 4
  %uldd_task = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 13
  %12 = ptrtoint ptr %uldd_task to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tcs, ptr %uldd_task, align 4
  %scb4 = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 2
  %13 = ptrtoint ptr %scb4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %scb4, align 4
  %opcode = getelementptr inbounds %struct.scb_header, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %opcode to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -60, ptr %opcode, align 1
  %16 = getelementptr inbounds %struct.scb, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %16, align 1
  %flags = getelementptr inbounds %struct.scb, ptr %14, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 7, ptr %flags, align 1
  %ssp_task = getelementptr inbounds %struct.scb, ptr %14, i32 0, i32 1, i32 0, i32 3
  %19 = ptrtoint ptr %lun to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %lun, align 1
  %21 = ptrtoint ptr %ssp_task to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %ssp_task, align 1
  %lldd_dev = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 20
  %22 = ptrtoint ptr %lldd_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lldd_dev, align 128
  %24 = ptrtoint ptr %23 to i32
  %conv = trunc i32 %24 to i16
  %25 = call i16 @llvm.bswap.i16(i16 %conv)
  %conn_handle = getelementptr inbounds %struct.scb, ptr %14, i32 0, i32 1, i32 0, i32 5
  %26 = ptrtoint ptr %conn_handle to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %25, ptr %conn_handle, align 1
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.74) #8
  %tasklet_complete1.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 5
  %27 = ptrtoint ptr %tasklet_complete1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @asd_clear_nexus_tasklet_complete, ptr %tasklet_complete1.i, align 4
  %uldd_timer.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 6
  %28 = ptrtoint ptr %uldd_timer.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i = load i8, ptr %uldd_timer.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %uldd_timer.i, align 4
  %timer.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 7
  %function.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 7, i32 2
  %29 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @asd_clear_nexus_timedout, ptr %function.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %30, 500
  %expires.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.i, ptr %expires.i, align 4
  call void @add_timer(ptr noundef %timer.i) #5
  %ha.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 1
  %32 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ha.i, align 4
  %call.i = call i32 @asd_post_ascb_list(ptr noundef %33, ptr noundef nonnull %call2, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end17, label %if.then.i3, !prof !147

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %res, align 4
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.74) #8
  call void @wait_for_completion(ptr noundef nonnull %completion) #5
  br label %cleanup

if.then.i3:                                       ; preds = %if.end
  %call7.i = call i32 @del_timer(ptr noundef %timer.i) #5
  %35 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call.i, ptr %res, align 4
  %36 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ha.i, align 4
  %38 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %call2, align 4
  %cmp.i.not.i = icmp eq ptr %39, %call2
  br i1 %cmp.i.not.i, label %asd_ascb_free.exit, label %do.body6.i, !prof !147

do.body6.i:                                       ; preds = %if.then.i3
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aic94xx/aic94xx_hwi.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #5, !srcloc !148
  unreachable

asd_ascb_free.exit:                               ; preds = %if.then.i3
  call void @__sanitizer_cov_trace_pc() #7
  %tc_index_lock.i = getelementptr inbounds %struct.asd_ha_struct, ptr %37, i32 0, i32 13, i32 6
  %call16.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %tc_index_lock.i) #5
  %40 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ha.i, align 4
  %tc_index.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 12
  %42 = ptrtoint ptr %tc_index.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tc_index.i, align 4
  %tc_index_array.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %41, i32 0, i32 13, i32 7
  %44 = ptrtoint ptr %tc_index_array.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tc_index_array.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %45, i32 %43
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %arrayidx.i.i, align 4
  %tc_index_bitmap.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %41, i32 0, i32 13, i32 8
  %47 = ptrtoint ptr %tc_index_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tc_index_bitmap.i.i, align 4
  call void @_clear_bit(i32 noundef %43, ptr noundef %48) #5
  %49 = ptrtoint ptr %ha.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ha.i, align 4
  %tc_index_lock25.i = getelementptr inbounds %struct.asd_ha_struct, ptr %50, i32 0, i32 13, i32 6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %tc_index_lock25.i, i32 noundef %call16.i) #5
  %scb_pool.i = getelementptr inbounds %struct.asd_ha_struct, ptr %37, i32 0, i32 12
  %51 = ptrtoint ptr %scb_pool.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %scb_pool.i, align 4
  %dma_scb.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 3
  %53 = ptrtoint ptr %dma_scb.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dma_scb.i, align 4
  %dma_handle.i = getelementptr inbounds %struct.asd_ascb, ptr %call2, i32 0, i32 3, i32 1
  %55 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dma_handle.i, align 4
  call void @dma_pool_free(ptr noundef %52, ptr noundef %54, i32 noundef %56) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_ascb_cache to i32))
  %57 = load ptr, ptr @asd_ascb_cache, align 4
  call void @kmem_cache_free(ptr noundef %57, ptr noundef nonnull %call2) #5
  br label %cleanup

cleanup:                                          ; preds = %asd_ascb_free.exit, %do.end17, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tcs) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %completion) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_clear_aca(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %lun) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @asd_initiate_ssp_tmf(ptr noundef %dev, ptr noundef %lun, i32 noundef 64, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @asd_clear_nexus_I_T_L(ptr noundef %dev, ptr noundef %lun)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_clear_task_set(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %lun) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @asd_initiate_ssp_tmf(ptr noundef %dev, ptr noundef %lun, i32 noundef 4, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @asd_clear_nexus_I_T_L(ptr noundef %dev, ptr noundef %lun)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_lu_reset(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %lun) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @asd_initiate_ssp_tmf(ptr noundef %dev, ptr noundef %lun, i32 noundef 8, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @asd_clear_nexus_I_T_L(ptr noundef %dev, ptr noundef %lun)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_query_task(ptr nocapture noundef readonly %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lldd_task = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 11
  %0 = ptrtoint ptr %lldd_task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lldd_task, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %tc_index = getelementptr inbounds %struct.asd_ascb, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %tc_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tc_index, align 4
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 4
  %6 = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 4
  %LUN = getelementptr inbounds %struct.sas_ssp_task, ptr %6, i32 0, i32 1
  %call = tail call fastcc i32 @asd_initiate_ssp_tmf(ptr noundef %5, ptr noundef %LUN, i32 noundef 128, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_post_ascb_list(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @asd_invalidate_edb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !49, !50, !51, !53, !54, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 119, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @asd_clear_nexus_ha._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @asd_clear_nexus_ha._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 121, i32 2}
!8 = !{ptr @asd_clear_nexus_ha._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @asd_clear_nexus_ha._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @asd_clear_nexus_ha._entry.6, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @asd_clear_nexus_ha._entry_ptr.8, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 128, i32 2}
!15 = !{ptr @asd_clear_nexus_port._entry, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @asd_clear_nexus_port._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @asd_clear_nexus_port._entry.10, !18, !"_entry", i1 false, i1 false}
!18 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 131, i32 2}
!19 = !{ptr @asd_clear_nexus_port._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @asd_clear_nexus_port._entry.12, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @asd_clear_nexus_port._entry_ptr.13, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 173, i32 2}
!24 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @asd_I_T_nexus_reset._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @asd_I_T_nexus_reset._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.17, !23, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 192, i32 2}
!31 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.21, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @asd_I_T_nexus_reset._entry.18, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @asd_I_T_nexus_reset._entry_ptr.22, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 405, i32 3}
!37 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @asd_abort_task._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @asd_abort_task._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 460, i32 2}
!42 = !{ptr @asd_abort_task._entry.25, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @asd_abort_task._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @asd_abort_task._entry.28, !45, !"_entry", i1 false, i1 false}
!45 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 469, i32 3}
!46 = !{ptr @asd_abort_task._entry_ptr.29, !45, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.31, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 532, i32 2}
!49 = !{ptr @asd_abort_task._entry.30, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @asd_abort_task._entry_ptr.32, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @asd_abort_task._entry.33, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 537, i32 2}
!53 = !{ptr @asd_abort_task._entry_ptr.34, !52, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @init_completion.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../include/linux/completion.h", i32 87, i32 2}
!56 = !{ptr @.str.35, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.36, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 60, i32 2}
!59 = !{ptr @.str.37, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @asd_clear_nexus_tasklet_complete._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @asd_clear_nexus_tasklet_complete._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.39, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 62, i32 3}
!64 = !{ptr @asd_clear_nexus_tasklet_complete._entry.38, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @asd_clear_nexus_tasklet_complete._entry_ptr.40, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.42, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 65, i32 2}
!68 = !{ptr @asd_clear_nexus_tasklet_complete._entry.41, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @asd_clear_nexus_tasklet_complete._entry_ptr.43, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.44, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 76, i32 2}
!72 = !{ptr @asd_clear_nexus_timedout._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @asd_clear_nexus_timedout._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.45, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 145, i32 2}
!76 = !{ptr @asd_clear_nexus_I_T._entry, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @asd_clear_nexus_I_T._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @asd_clear_nexus_I_T._entry.46, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 159, i32 2}
!80 = !{ptr @asd_clear_nexus_I_T._entry_ptr.47, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @asd_clear_nexus_I_T._entry.48, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @asd_clear_nexus_I_T._entry_ptr.49, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.50, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 310, i32 2}
!85 = !{ptr @.str.51, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @asd_tmf_tasklet_complete._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @asd_tmf_tasklet_complete._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.52, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 273, i32 2}
!90 = !{ptr @.str.53, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @asd_get_tmf_resp_tasklet._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @asd_get_tmf_resp_tasklet._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.55, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 281, i32 3}
!95 = !{ptr @asd_get_tmf_resp_tasklet._entry.54, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @asd_get_tmf_resp_tasklet._entry_ptr.56, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.57, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 250, i32 2}
!99 = !{ptr @.str.58, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @asd_tmf_timedout._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @asd_tmf_timedout._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.59, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 334, i32 2}
!104 = !{ptr @.str.60, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @asd_clear_nexus._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @asd_clear_nexus._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.62, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 342, i32 2}
!109 = !{ptr @asd_clear_nexus._entry.61, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @asd_clear_nexus._entry_ptr.63, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.64, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 219, i32 2}
!113 = !{ptr @asd_clear_nexus_tag._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @asd_clear_nexus_tag._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @asd_clear_nexus_tag._entry.65, !116, !"_entry", i1 false, i1 false}
!116 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 226, i32 2}
!117 = !{ptr @asd_clear_nexus_tag._entry_ptr.66, !116, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @asd_clear_nexus_tag._entry.67, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @asd_clear_nexus_tag._entry_ptr.68, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.69, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 234, i32 2}
!122 = !{ptr @asd_clear_nexus_index._entry, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @asd_clear_nexus_index._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @asd_clear_nexus_index._entry.70, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 240, i32 2}
!126 = !{ptr @asd_clear_nexus_index._entry_ptr.71, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @asd_clear_nexus_index._entry.72, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @asd_clear_nexus_index._entry_ptr.73, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.74, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 205, i32 2}
!131 = !{ptr @asd_clear_nexus_I_T_L._entry, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @asd_clear_nexus_I_T_L._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @asd_clear_nexus_I_T_L._entry.75, !134, !"_entry", i1 false, i1 false}
!134 = !{!"../drivers/scsi/aic94xx/aic94xx_tmf.c", i32 211, i32 2}
!135 = !{ptr @asd_clear_nexus_I_T_L._entry_ptr.76, !134, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @asd_clear_nexus_I_T_L._entry.77, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @asd_clear_nexus_I_T_L._entry_ptr.78, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{!"branch_weights", i32 2000, i32 1}
!148 = !{i64 2155843777, i64 2155844276, i64 2155843814, i64 2155843870, i64 2155843904, i64 2155843928, i64 2155843969, i64 2155843990, i64 2155844018, i64 2155844052}
!149 = !{i64 2155915864}
