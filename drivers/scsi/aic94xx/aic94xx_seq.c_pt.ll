; ModuleID = '/llk/IR_all_yes/drivers/scsi/aic94xx/aic94xx_seq.c_pt.bc'
source_filename = "../drivers/scsi/aic94xx/aic94xx_seq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.sequencer_file_header = type <{ i32, i32, i32, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16 }>
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

@sequencer_fw = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@asd_init_seqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\015aic94xx: Failed to load sequencer firmware file %s, error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"asd_init_seqs\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/aic94xx/aic94xx_seq.c\00", [61 x i8] zeroinitializer }, align 32
@asd_init_seqs._entry_ptr = internal global ptr @asd_init_seqs._entry, section ".printk_index", align 4
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aic94xx-seq.fw\00", [17 x i8] zeroinitializer }, align 32
@asd_init_seqs._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 1314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015aic94xx: couldn't download sequencers for %s\0A\00", [48 x i8] zeroinitializer }, align 32
@asd_init_seqs._entry_ptr.6 = internal global ptr @asd_init_seqs._entry.4, section ".printk_index", align 4
@asd_start_seqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 1332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015aic94xx: couldn't start CSEQ for %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"asd_start_seqs\00", [17 x i8] zeroinitializer }, align 32
@asd_start_seqs._entry_ptr = internal global ptr @asd_start_seqs._entry, section ".printk_index", align 4
@asd_start_seqs._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 1341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015aic94xx: couldn't start LSEQ %d for %s\0A\00", [54 x i8] zeroinitializer }, align 32
@asd_start_seqs._entry_ptr.11 = internal global ptr @asd_start_seqs._entry.9, section ".printk_index", align 4
@asd_update_port_links._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015aic94xx: phy_is_up: parity error in DDB 0\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"asd_update_port_links\00", [42 x i8] zeroinitializer }, align 32
@asd_update_port_links._entry_ptr = internal global ptr @asd_update_port_links._entry, section ".printk_index", align 4
@asd_update_port_links._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 1398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015aic94xx: couldn't update DDB 0:error:%d\0A\00", [53 x i8] zeroinitializer }, align 32
@asd_update_port_links._entry_ptr.16 = internal global ptr @asd_update_port_links._entry.14, section ".printk_index", align 4
@__UNIQUE_ID_firmware292 = internal constant [32 x i8] c"aic94xx.firmware=aic94xx-seq.fw\00", section ".modinfo", align 1
@asd_request_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015aic94xx: Firmware file checksum mismatch\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"asd_request_firmware\00", [43 x i8] zeroinitializer }, align 32
@asd_request_firmware._entry_ptr = internal global ptr @asd_request_firmware._entry, section ".printk_index", align 4
@asd_request_firmware._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 1265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015aic94xx: Firmware file table size mismatch\0A\00", [50 x i8] zeroinitializer }, align 32
@asd_request_firmware._entry_ptr.21 = internal global ptr @asd_request_firmware._entry.19, section ".printk_index", align 4
@asd_request_firmware._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 1270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\015aic94xx: Found sequencer Firmware version %d.%d (%s)\0A\00", [40 x i8] zeroinitializer }, align 32
@asd_request_firmware._entry_ptr.24 = internal global ptr @asd_request_firmware._entry.22, section ".printk_index", align 4
@asd_request_firmware._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.2, i32 1275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\015aic94xx: Firmware Major Version Mismatch;driver requires version %d.X\00", [56 x i8] zeroinitializer }, align 32
@asd_request_firmware._entry_ptr.27 = internal global ptr @asd_request_firmware._entry.25, section ".printk_index", align 4
@mode2_task = internal global { i16, [30 x i8] } zeroinitializer, align 32
@cseq_idle_loop = internal global { i16, [30 x i8] } zeroinitializer, align 32
@lseq_idle_loop = internal global { i16, [30 x i8] } zeroinitializer, align 32
@cseq_vecs.0 = internal global { i16, [30 x i8] } zeroinitializer, align 32
@cseq_vecs.1 = internal global { i16, [30 x i8] } zeroinitializer, align 32
@cseq_vecs.2 = internal global { i16, [30 x i8] } zeroinitializer, align 32
@lseq_vecs.0 = internal global { i16, [30 x i8] } zeroinitializer, align 32
@lseq_vecs.1 = internal global { i16, [30 x i8] } zeroinitializer, align 32
@lseq_vecs.2 = internal global { i16, [30 x i8] } zeroinitializer, align 32
@lseq_vecs.3 = internal global { i16, [30 x i8] } zeroinitializer, align 32
@lseq_vecs.4 = internal global { i16, [30 x i8] } zeroinitializer, align 32
@lseq_vecs.5 = internal global { i16, [30 x i8] } zeroinitializer, align 32
@lseq_vecs.6 = internal global { i16, [30 x i8] } zeroinitializer, align 32
@lseq_vecs.7 = internal global { i16, [30 x i8] } zeroinitializer, align 32
@lseq_vecs.8 = internal global { i16, [30 x i8] } zeroinitializer, align 32
@lseq_vecs.9 = internal global { i16, [30 x i8] } zeroinitializer, align 32
@lseq_vecs.10 = internal global { i16, [30 x i8] } zeroinitializer, align 32
@cseq_code = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cseq_code_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lseq_code = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@lseq_code_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@asd_seq_download_seqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015aic94xx: %s: no enabled phys!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"asd_seq_download_seqs\00", [42 x i8] zeroinitializer }, align 32
@asd_seq_download_seqs._entry_ptr = internal global ptr @asd_seq_download_seqs._entry, section ".printk_index", align 4
@asd_seq_download_seqs._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015aic94xx: downloading CSEQ...\0A\00", [32 x i8] zeroinitializer }, align 32
@asd_seq_download_seqs._entry_ptr.32 = internal global ptr @asd_seq_download_seqs._entry.30, section ".printk_index", align 4
@asd_seq_download_seqs._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015aic94xx: CSEQ download failed:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@asd_seq_download_seqs._entry_ptr.35 = internal global ptr @asd_seq_download_seqs._entry.33, section ".printk_index", align 4
@asd_seq_download_seqs._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015aic94xx: downloading LSEQs...\0A\00", [63 x i8] zeroinitializer }, align 32
@asd_seq_download_seqs._entry_ptr.38 = internal global ptr @asd_seq_download_seqs._entry.36, section ".printk_index", align 4
@asd_seq_download_seqs._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.29, ptr @.str.2, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015aic94xx: LSEQs download failed:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@asd_seq_download_seqs._entry_ptr.41 = internal global ptr @asd_seq_download_seqs._entry.39, section ".printk_index", align 4
@asd_download_seq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015aic94xx: sequencer program not multiple of 4\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"asd_download_seq\00", [47 x i8] zeroinitializer }, align 32
@asd_download_seq._entry_ptr = internal global ptr @asd_download_seq._entry, section ".printk_index", align 4
@asd_download_seq._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015aic94xx: out of memory for dma SEQ download\0A\00", [49 x i8] zeroinitializer }, align 32
@asd_download_seq._entry_ptr.46 = internal global ptr @asd_download_seq._entry.44, section ".printk_index", align 4
@asd_download_seq._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015aic94xx: dma-ing %d bytes\0A\00", [35 x i8] zeroinitializer }, align 32
@asd_download_seq._entry_ptr.49 = internal global ptr @asd_download_seq._entry.47, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@asd_download_seq._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015aic94xx: %s: error DMA-ing sequencer code\0A\00", [51 x i8] zeroinitializer }, align 32
@asd_download_seq._entry_ptr.52 = internal global ptr @asd_download_seq._entry.50, section ".printk_index", align 4
@asd_pause_cseq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015aic94xx: couldn't pause CSEQ\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"asd_pause_cseq\00", [17 x i8] zeroinitializer }, align 32
@asd_pause_cseq._entry_ptr = internal global ptr @asd_pause_cseq._entry, section ".printk_index", align 4
@asd_seq_pause_lseq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015aic94xx: couldn't pause LSEQ %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"asd_seq_pause_lseq\00", [45 x i8] zeroinitializer }, align 32
@asd_seq_pause_lseq._entry_ptr = internal global ptr @asd_seq_pause_lseq._entry, section ".printk_index", align 4
@asd_dma_token_cache = external dso_local local_unnamed_addr global ptr, align 4
@asd_verify_cseq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\015aic94xx: %s: cseq verify failed at %u read:0x%x, wanted:0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"asd_verify_cseq\00", [16 x i8] zeroinitializer }, align 32
@asd_verify_cseq._entry_ptr = internal global ptr @asd_verify_cseq._entry, section ".printk_index", align 4
@asd_verify_cseq._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015aic94xx: verified %d bytes, passed\0A\00", [58 x i8] zeroinitializer }, align 32
@asd_verify_cseq._entry_ptr.61 = internal global ptr @asd_verify_cseq._entry.59, section ".printk_index", align 4
@asd_verify_lseq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015aic94xx: %s: LSEQ%d verify failed page:%d, offs:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"asd_verify_lseq\00", [16 x i8] zeroinitializer }, align 32
@asd_verify_lseq._entry_ptr = internal global ptr @asd_verify_lseq._entry, section ".printk_index", align 4
@asd_verify_lseq._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015aic94xx: LSEQ%d verified %d bytes, passed\0A\00", [51 x i8] zeroinitializer }, align 32
@asd_verify_lseq._entry_ptr.66 = internal global ptr @asd_verify_lseq._entry.64, section ".printk_index", align 4
@last_scb_site_no = internal global { i16, [30 x i8] } zeroinitializer, align 32
@first_scb_site_no = internal global { i16, [30 x i8] } { i16 -1, [30 x i8] zeroinitializer }, align 32
@asd_init_scb_sites._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 904, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\015aic94xx: max_scbs:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"asd_init_scb_sites\00", [45 x i8] zeroinitializer }, align 32
@asd_init_scb_sites._entry_ptr = internal global ptr @asd_init_scb_sites._entry, section ".printk_index", align 4
@asd_init_scb_sites._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015aic94xx: first_scb_site_no:0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@asd_init_scb_sites._entry_ptr.71 = internal global ptr @asd_init_scb_sites._entry.69, section ".printk_index", align 4
@asd_init_scb_sites._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.2, i32 906, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015aic94xx: last_scb_site_no:0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@asd_init_scb_sites._entry_ptr.74 = internal global ptr @asd_init_scb_sites._entry.72, section ".printk_index", align 4
@asd_init_cseq_mdp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015aic94xx: First SCB dma_handle: 0x%llx\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"asd_init_cseq_mdp\00", [46 x i8] zeroinitializer }, align 32
@asd_init_cseq_mdp._entry_ptr = internal global ptr @asd_init_cseq_mdp._entry, section ".printk_index", align 4
@asd_unpause_cseq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015aic94xx: couldn't unpause the CSEQ\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"asd_unpause_cseq\00", [47 x i8] zeroinitializer }, align 32
@asd_unpause_cseq._entry_ptr = internal global ptr @asd_unpause_cseq._entry, section ".printk_index", align 4
@asd_seq_unpause_lseq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015aic94xx: couldn't unpause LSEQ %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"asd_seq_unpause_lseq\00", [43 x i8] zeroinitializer }, align 32
@asd_seq_unpause_lseq._entry_ptr = internal global ptr @asd_seq_unpause_lseq._entry, section ".printk_index", align 4
@___asan_gen_.81 = private unnamed_addr constant [13 x i8] c"sequencer_fw\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 29, i32 31 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1306, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1313, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1331, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1340, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1391, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1398, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1259, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1265, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1269, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 1273, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [11 x i8] c"mode2_task\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 30, i32 64 }
@___asan_gen_.165 = private unnamed_addr constant [15 x i8] c"cseq_idle_loop\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 31, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [15 x i8] c"lseq_idle_loop\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 31, i32 18 }
@___asan_gen_.171 = private unnamed_addr constant [12 x i8] c"cseq_vecs.0\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [12 x i8] c"cseq_vecs.1\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [12 x i8] c"cseq_vecs.2\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [12 x i8] c"lseq_vecs.0\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [12 x i8] c"lseq_vecs.1\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [12 x i8] c"lseq_vecs.2\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [12 x i8] c"lseq_vecs.3\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [12 x i8] c"lseq_vecs.4\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [12 x i8] c"lseq_vecs.5\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [12 x i8] c"lseq_vecs.6\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [12 x i8] c"lseq_vecs.7\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [12 x i8] c"lseq_vecs.8\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [12 x i8] c"lseq_vecs.9\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [13 x i8] c"lseq_vecs.10\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [10 x i8] c"cseq_code\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 32, i32 18 }
@___asan_gen_.188 = private unnamed_addr constant [15 x i8] c"cseq_code_size\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 33, i32 12 }
@___asan_gen_.191 = private unnamed_addr constant [10 x i8] c"lseq_code\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 32, i32 30 }
@___asan_gen_.194 = private unnamed_addr constant [15 x i8] c"lseq_code_size\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 33, i32 28 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 386, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 391, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 394, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 401, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 417, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 281, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 298, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 302, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 329, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 63, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 118, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 185, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 192, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 227, i32 5 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 235, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant [17 x i8] c"last_scb_site_no\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 36, i32 12 }
@___asan_gen_.308 = private unnamed_addr constant [18 x i8] c"first_scb_site_no\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 35, i32 12 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 904, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 905, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 906, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 552, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 90, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.356 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.357 = private constant [38 x i8] c"../drivers/scsi/aic94xx/aic94xx_seq.c\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.357, i32 167, i32 2 }
@llvm.compiler.used = appending global [134 x ptr] [ptr @__UNIQUE_ID_firmware292, ptr @asd_download_seq._entry, ptr @asd_download_seq._entry.44, ptr @asd_download_seq._entry.47, ptr @asd_download_seq._entry.50, ptr @asd_download_seq._entry_ptr, ptr @asd_download_seq._entry_ptr.46, ptr @asd_download_seq._entry_ptr.49, ptr @asd_download_seq._entry_ptr.52, ptr @asd_init_cseq_mdp._entry, ptr @asd_init_cseq_mdp._entry_ptr, ptr @asd_init_scb_sites._entry, ptr @asd_init_scb_sites._entry.69, ptr @asd_init_scb_sites._entry.72, ptr @asd_init_scb_sites._entry_ptr, ptr @asd_init_scb_sites._entry_ptr.71, ptr @asd_init_scb_sites._entry_ptr.74, ptr @asd_init_seqs._entry, ptr @asd_init_seqs._entry.4, ptr @asd_init_seqs._entry_ptr, ptr @asd_init_seqs._entry_ptr.6, ptr @asd_pause_cseq._entry, ptr @asd_pause_cseq._entry_ptr, ptr @asd_request_firmware._entry, ptr @asd_request_firmware._entry.19, ptr @asd_request_firmware._entry.22, ptr @asd_request_firmware._entry.25, ptr @asd_request_firmware._entry_ptr, ptr @asd_request_firmware._entry_ptr.21, ptr @asd_request_firmware._entry_ptr.24, ptr @asd_request_firmware._entry_ptr.27, ptr @asd_seq_download_seqs._entry, ptr @asd_seq_download_seqs._entry.30, ptr @asd_seq_download_seqs._entry.33, ptr @asd_seq_download_seqs._entry.36, ptr @asd_seq_download_seqs._entry.39, ptr @asd_seq_download_seqs._entry_ptr, ptr @asd_seq_download_seqs._entry_ptr.32, ptr @asd_seq_download_seqs._entry_ptr.35, ptr @asd_seq_download_seqs._entry_ptr.38, ptr @asd_seq_download_seqs._entry_ptr.41, ptr @asd_seq_pause_lseq._entry, ptr @asd_seq_pause_lseq._entry_ptr, ptr @asd_seq_unpause_lseq._entry, ptr @asd_seq_unpause_lseq._entry_ptr, ptr @asd_start_seqs._entry, ptr @asd_start_seqs._entry.9, ptr @asd_start_seqs._entry_ptr, ptr @asd_start_seqs._entry_ptr.11, ptr @asd_unpause_cseq._entry, ptr @asd_unpause_cseq._entry_ptr, ptr @asd_update_port_links._entry, ptr @asd_update_port_links._entry.14, ptr @asd_update_port_links._entry_ptr, ptr @asd_update_port_links._entry_ptr.16, ptr @asd_verify_cseq._entry, ptr @asd_verify_cseq._entry.59, ptr @asd_verify_cseq._entry_ptr, ptr @asd_verify_cseq._entry_ptr.61, ptr @asd_verify_lseq._entry, ptr @asd_verify_lseq._entry.64, ptr @asd_verify_lseq._entry_ptr, ptr @asd_verify_lseq._entry_ptr.66, ptr @sequencer_fw, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @mode2_task, ptr @cseq_idle_loop, ptr @lseq_idle_loop, ptr @cseq_vecs.0, ptr @cseq_vecs.1, ptr @cseq_vecs.2, ptr @lseq_vecs.0, ptr @lseq_vecs.1, ptr @lseq_vecs.2, ptr @lseq_vecs.3, ptr @lseq_vecs.4, ptr @lseq_vecs.5, ptr @lseq_vecs.6, ptr @lseq_vecs.7, ptr @lseq_vecs.8, ptr @lseq_vecs.9, ptr @lseq_vecs.10, ptr @cseq_code, ptr @cseq_code_size, ptr @lseq_code, ptr @lseq_code_size, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @last_scb_site_no, ptr @first_scb_site_no, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sequencer_fw to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_seqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_seqs._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_start_seqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_start_seqs._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_update_port_links._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_update_port_links._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_request_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_request_firmware._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_request_firmware._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_request_firmware._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode2_task to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cseq_idle_loop to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lseq_idle_loop to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cseq_vecs.0 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cseq_vecs.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cseq_vecs.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lseq_vecs.0 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lseq_vecs.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lseq_vecs.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lseq_vecs.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lseq_vecs.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lseq_vecs.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lseq_vecs.6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lseq_vecs.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lseq_vecs.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lseq_vecs.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lseq_vecs.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cseq_code to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cseq_code_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lseq_code to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lseq_code_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_seq_download_seqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_seq_download_seqs._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_seq_download_seqs._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_seq_download_seqs._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_seq_download_seqs._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_download_seq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_download_seq._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_download_seq._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_download_seq._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_pause_cseq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_seq_pause_lseq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_verify_cseq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_verify_cseq._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_verify_lseq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_verify_lseq._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @last_scb_site_no to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @first_scb_site_no to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_scb_sites._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_scb_sites._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_scb_sites._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_init_cseq_mdp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_unpause_cseq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asd_seq_unpause_lseq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_release_firmware() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sequencer_fw, align 4
  tail call void @release_firmware(ptr noundef %0) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_init_seqs(ptr noundef %asd_ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sequencer_fw, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %entry
  %1 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %asd_ha, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %call.i = tail call i32 @request_firmware(ptr noundef nonnull @sequencer_fw, ptr noundef nonnull @.str.3, ptr noundef %dev.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end3.i:                                        ; preds = %if.end.i
  %3 = load ptr, ptr @sequencer_fw, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %5, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #4
  %major.i = getelementptr inbounds %struct.sequencer_file_header, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %major.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %major.i, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #4
  %minor.i = getelementptr inbounds %struct.sequencer_file_header, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %minor.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %minor.i, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #4
  %cseq_table_offset.i = getelementptr inbounds %struct.sequencer_file_header, ptr %5, i32 0, i32 4
  %15 = ptrtoint ptr %cseq_table_offset.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %cseq_table_offset.i, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #4
  %cseq_table_size.i = getelementptr inbounds %struct.sequencer_file_header, ptr %5, i32 0, i32 5
  %18 = ptrtoint ptr %cseq_table_size.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %cseq_table_size.i, align 1
  %lseq_table_offset.i = getelementptr inbounds %struct.sequencer_file_header, ptr %5, i32 0, i32 6
  %20 = ptrtoint ptr %lseq_table_offset.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %lseq_table_offset.i, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #4
  %lseq_table_size.i = getelementptr inbounds %struct.sequencer_file_header, ptr %5, i32 0, i32 7
  %23 = ptrtoint ptr %lseq_table_size.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %lseq_table_size.i, align 1
  %cseq_code_offset.i = getelementptr inbounds %struct.sequencer_file_header, ptr %5, i32 0, i32 8
  %25 = ptrtoint ptr %cseq_code_offset.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %cseq_code_offset.i, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #4
  %cseq_code_size.i = getelementptr inbounds %struct.sequencer_file_header, ptr %5, i32 0, i32 9
  %28 = ptrtoint ptr %cseq_code_size.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %cseq_code_size.i, align 1
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #4
  %lseq_code_offset.i = getelementptr inbounds %struct.sequencer_file_header, ptr %5, i32 0, i32 10
  %31 = ptrtoint ptr %lseq_code_offset.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %lseq_code_offset.i, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #4
  %lseq_code_size.i = getelementptr inbounds %struct.sequencer_file_header, ptr %5, i32 0, i32 11
  %34 = ptrtoint ptr %lseq_code_size.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %lseq_code_size.i, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #4
  %mode2_task.i = getelementptr inbounds %struct.sequencer_file_header, ptr %5, i32 0, i32 12
  %37 = ptrtoint ptr %mode2_task.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %mode2_task.i, align 1
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #4
  %cseq_idle_loop.i = getelementptr inbounds %struct.sequencer_file_header, ptr %5, i32 0, i32 13
  %40 = ptrtoint ptr %cseq_idle_loop.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %cseq_idle_loop.i, align 1
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #4
  %lseq_idle_loop.i = getelementptr inbounds %struct.sequencer_file_header, ptr %5, i32 0, i32 14
  %43 = ptrtoint ptr %lseq_idle_loop.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %lseq_idle_loop.i, align 1
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #4
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %47)
  %cmp126.i = icmp ugt i32 %47, 4
  br i1 %cmp126.i, label %if.end3.i.for.body.i_crit_edge, label %if.end3.i.for.end.i_crit_edge

if.end3.i.for.end.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

if.end3.i.for.body.i_crit_edge:                   ; preds = %if.end3.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end3.i.for.body.i_crit_edge
  %i.0128.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 4, %if.end3.i.for.body.i_crit_edge ]
  %csum.0127.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end3.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %5, i32 %i.0128.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %49 to i32
  %add.i = add i32 %csum.0127.i, %conv.i
  %inc.i = add nuw i32 %i.0128.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %47
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end3.i.for.end.i_crit_edge
  %csum.0.lcssa.i = phi i32 [ 0, %if.end3.i.for.end.i_crit_edge ], [ %add.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %csum.0.lcssa.i, i32 %8)
  %cmp21.not.i = icmp eq i32 %csum.0.lcssa.i, %8
  br i1 %cmp21.not.i, label %if.end25.i, label %do.end.i

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #7
  br label %do.end

if.end25.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %19)
  %cmp27.not.i = icmp eq i32 %19, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 184549376, i32 %24)
  %cmp30.not.i = icmp eq i32 %24, 184549376
  %or.cond.i = select i1 %cmp27.not.i, i1 %cmp30.not.i, i1 false
  br i1 %or.cond.i, label %do.end41.i, label %do.end35.i

do.end35.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #6
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #7
  br label %do.end

do.end41.i:                                       ; preds = %if.end25.i
  %version.i = getelementptr inbounds %struct.sequencer_file_header, ptr %5, i32 0, i32 3
  %call45.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %11, i32 noundef %14, ptr noundef %version.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %10)
  %cmp47.not.i = icmp eq i32 %10, 16777216
  br i1 %cmp47.not.i, label %if.end55.i, label %do.end52.i

do.end52.i:                                       ; preds = %do.end41.i
  call void @__sanitizer_cov_trace_pc() #6
  %call54.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef 1) #7
  br label %do.end

if.end55.i:                                       ; preds = %do.end41.i
  call void @__sanitizer_cov_trace_pc() #6
  %50 = load ptr, ptr @sequencer_fw, align 4
  %data56.i = getelementptr inbounds %struct.firmware, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %data56.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data56.i, align 4
  %arrayidx58.i = getelementptr i8, ptr %52, i32 %17
  store i16 %39, ptr @mode2_task, align 2
  store i16 %42, ptr @cseq_idle_loop, align 2
  store i16 %45, ptr @lseq_idle_loop, align 2
  %53 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx58.i, align 2
  %55 = tail call i16 @llvm.bswap.i16(i16 %54) #4
  store i16 %55, ptr @cseq_vecs.0, align 2
  %arrayidx69.1.i = getelementptr i16, ptr %arrayidx58.i, i32 1
  %56 = ptrtoint ptr %arrayidx69.1.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx69.1.i, align 2
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #4
  store i16 %58, ptr @cseq_vecs.1, align 2
  %arrayidx69.2.i = getelementptr i16, ptr %arrayidx58.i, i32 2
  %59 = ptrtoint ptr %arrayidx69.2.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx69.2.i, align 2
  %61 = tail call i16 @llvm.bswap.i16(i16 %60) #4
  store i16 %61, ptr @cseq_vecs.2, align 2
  %arrayidx61.i = getelementptr i8, ptr %52, i32 %22
  %62 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx61.i, align 2
  %64 = tail call i16 @llvm.bswap.i16(i16 %63) #4
  store i16 %64, ptr @lseq_vecs.0, align 2
  %arrayidx78.1.i = getelementptr i16, ptr %arrayidx61.i, i32 1
  %65 = ptrtoint ptr %arrayidx78.1.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx78.1.i, align 2
  %67 = tail call i16 @llvm.bswap.i16(i16 %66) #4
  store i16 %67, ptr @lseq_vecs.1, align 2
  %arrayidx78.2.i = getelementptr i16, ptr %arrayidx61.i, i32 2
  %68 = ptrtoint ptr %arrayidx78.2.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx78.2.i, align 2
  %70 = tail call i16 @llvm.bswap.i16(i16 %69) #4
  store i16 %70, ptr @lseq_vecs.2, align 2
  %arrayidx78.3.i = getelementptr i16, ptr %arrayidx61.i, i32 3
  %71 = ptrtoint ptr %arrayidx78.3.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx78.3.i, align 2
  %73 = tail call i16 @llvm.bswap.i16(i16 %72) #4
  store i16 %73, ptr @lseq_vecs.3, align 2
  %arrayidx78.4.i = getelementptr i16, ptr %arrayidx61.i, i32 4
  %74 = ptrtoint ptr %arrayidx78.4.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx78.4.i, align 2
  %76 = tail call i16 @llvm.bswap.i16(i16 %75) #4
  store i16 %76, ptr @lseq_vecs.4, align 2
  %arrayidx78.5.i = getelementptr i16, ptr %arrayidx61.i, i32 5
  %77 = ptrtoint ptr %arrayidx78.5.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx78.5.i, align 2
  %79 = tail call i16 @llvm.bswap.i16(i16 %78) #4
  store i16 %79, ptr @lseq_vecs.5, align 2
  %arrayidx78.6.i = getelementptr i16, ptr %arrayidx61.i, i32 6
  %80 = ptrtoint ptr %arrayidx78.6.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx78.6.i, align 2
  %82 = tail call i16 @llvm.bswap.i16(i16 %81) #4
  store i16 %82, ptr @lseq_vecs.6, align 2
  %arrayidx78.7.i = getelementptr i16, ptr %arrayidx61.i, i32 7
  %83 = ptrtoint ptr %arrayidx78.7.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx78.7.i, align 2
  %85 = tail call i16 @llvm.bswap.i16(i16 %84) #4
  store i16 %85, ptr @lseq_vecs.7, align 2
  %arrayidx78.8.i = getelementptr i16, ptr %arrayidx61.i, i32 8
  %86 = ptrtoint ptr %arrayidx78.8.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx78.8.i, align 2
  %88 = tail call i16 @llvm.bswap.i16(i16 %87) #4
  store i16 %88, ptr @lseq_vecs.8, align 2
  %arrayidx78.9.i = getelementptr i16, ptr %arrayidx61.i, i32 9
  %89 = ptrtoint ptr %arrayidx78.9.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx78.9.i, align 2
  %91 = tail call i16 @llvm.bswap.i16(i16 %90) #4
  store i16 %91, ptr @lseq_vecs.9, align 2
  %arrayidx78.10.i = getelementptr i16, ptr %arrayidx61.i, i32 10
  %92 = ptrtoint ptr %arrayidx78.10.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx78.10.i, align 2
  %94 = tail call i16 @llvm.bswap.i16(i16 %93) #4
  store i16 %94, ptr @lseq_vecs.10, align 2
  %arrayidx85.i = getelementptr i8, ptr %52, i32 %27
  store ptr %arrayidx85.i, ptr @cseq_code, align 4
  store i32 %30, ptr @cseq_code_size, align 4
  %arrayidx89.i = getelementptr i8, ptr %52, i32 %33
  store ptr %arrayidx89.i, ptr @lseq_code, align 4
  store i32 %36, ptr @lseq_code_size, align 4
  br label %if.end

do.end:                                           ; preds = %do.end52.i, %do.end35.i, %do.end.i, %if.end.i.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %if.end.i.do.end_crit_edge ], [ -22, %do.end52.i ], [ -22, %do.end35.i ], [ -22, %do.end.i ]
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef %retval.0.i.ph) #7
  br label %cleanup

if.end:                                           ; preds = %if.end55.i, %entry.if.end_crit_edge
  %enabled_phys.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 5
  %95 = ptrtoint ptr %enabled_phys.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %enabled_phys.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool.not.i19 = icmp eq i8 %96, 0
  br i1 %tobool.not.i19, label %do.end.i20, label %do.end4.i

do.end.i20:                                       ; preds = %if.end
  %97 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %asd_ha, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 44, i32 3
  %99 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %100, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i20.pci_name.exit.i_crit_edge

do.end.i20.pci_name.exit.i_crit_edge:             ; preds = %do.end.i20
  call void @__sanitizer_cov_trace_pc() #6
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i20
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 44
  %101 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i20.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %102, %if.end.i.i.i ], [ %100, %do.end.i20.pci_name.exit.i_crit_edge ]
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %retval.0.i.i.i) #7
  br label %do.end7

do.end4.i:                                        ; preds = %if.end
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #7
  %103 = load ptr, ptr @cseq_code, align 4
  %104 = load i32, ptr @cseq_code_size, align 4
  %call7.i = tail call fastcc i32 @asd_download_seq(ptr noundef %asd_ha, ptr noundef %103, i32 noundef %104, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %do.end18.i, label %do.end12.i

do.end12.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %call7.i) #7
  br label %do.end7

do.end18.i:                                       ; preds = %do.end4.i
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #7
  %105 = load ptr, ptr @lseq_code, align 4
  %106 = load i32, ptr @lseq_code_size, align 4
  %107 = ptrtoint ptr %enabled_phys.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %enabled_phys.i, align 1
  %call23.i = tail call fastcc i32 @asd_download_seq(ptr noundef %asd_ha, ptr noundef %105, i32 noundef %106, i8 noundef zeroext %108) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %do.end18.i.if.end11_crit_edge, label %if.then25.i

do.end18.i.if.end11_crit_edge:                    ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then25.i:                                      ; preds = %do.end18.i
  %109 = ptrtoint ptr %enabled_phys.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %enabled_phys.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp.not74.i = icmp eq i8 %110, 0
  br i1 %cmp.not74.i, label %if.then25.i.do.end46.i_crit_edge, label %if.then25.i.for.body.i21.outer_crit_edge

if.then25.i.for.body.i21.outer_crit_edge:         ; preds = %if.then25.i
  br label %for.body.i21.outer

if.then25.i.do.end46.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end46.i

for.body.i21.outer:                               ; preds = %for.inc.i.thread.for.body.i21.outer_crit_edge, %if.then25.i.for.body.i21.outer_crit_edge
  %indvars.iv.i.ph = phi i32 [ %indvars.iv.next.i28, %for.inc.i.thread.for.body.i21.outer_crit_edge ], [ 0, %if.then25.i.for.body.i21.outer_crit_edge ]
  %lseq_mask.077.i.ph = phi i8 [ %115, %for.inc.i.thread.for.body.i21.outer_crit_edge ], [ %110, %if.then25.i.for.body.i21.outer_crit_edge ]
  %err.075.i.ph = phi i32 [ 0, %for.inc.i.thread.for.body.i21.outer_crit_edge ], [ %call23.i, %if.then25.i.for.body.i21.outer_crit_edge ]
  br label %for.body.i21

for.body.i21:                                     ; preds = %for.inc.i.for.body.i21_crit_edge, %for.body.i21.outer
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.inc.i.for.body.i21_crit_edge ], [ %indvars.iv.i.ph, %for.body.i21.outer ]
  %lseq_mask.077.i = phi i8 [ %114, %for.inc.i.for.body.i21_crit_edge ], [ %lseq_mask.077.i.ph, %for.body.i21.outer ]
  %111 = and i8 %lseq_mask.077.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool30.not.i = icmp eq i8 %111, 0
  br i1 %tobool30.not.i, label %for.inc.i, label %if.then31.i

if.then31.i:                                      ; preds = %for.body.i21
  %112 = load ptr, ptr @lseq_code, align 4
  %113 = load i32, ptr @lseq_code_size, align 4
  %shl.i = shl nuw i32 1, %indvars.iv.i
  %conv33.i = trunc i32 %shl.i to i8
  %call34.i = tail call fastcc i32 @asd_download_seq(ptr noundef %asd_ha, ptr noundef %112, i32 noundef %113, i8 noundef zeroext %conv33.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %for.inc.i.thread, label %if.then31.i.do.end46.i_crit_edge

if.then31.i.do.end46.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end46.i

for.inc.i:                                        ; preds = %for.body.i21
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %114 = lshr i8 %lseq_mask.077.i, 1
  %cmp.not.i = icmp ult i8 %lseq_mask.077.i, 2
  br i1 %cmp.not.i, label %if.end41.i, label %for.inc.i.for.body.i21_crit_edge

for.inc.i.for.body.i21_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i21

for.inc.i.thread:                                 ; preds = %if.then31.i
  %indvars.iv.next.i28 = add nuw nsw i32 %indvars.iv.i, 1
  %115 = lshr i8 %lseq_mask.077.i, 1
  %cmp.not.i29 = icmp ult i8 %lseq_mask.077.i, 2
  br i1 %cmp.not.i29, label %for.inc.i.thread.if.end11_crit_edge, label %for.inc.i.thread.for.body.i21.outer_crit_edge

for.inc.i.thread.for.body.i21.outer_crit_edge:    ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i21.outer

for.inc.i.thread.if.end11_crit_edge:              ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.end41.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.075.i.ph)
  %tobool42.not.i = icmp eq i32 %err.075.i.ph, 0
  br i1 %tobool42.not.i, label %if.end41.i.if.end11_crit_edge, label %if.end41.i.do.end46.i_crit_edge

if.end41.i.do.end46.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end46.i

if.end41.i.if.end11_crit_edge:                    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

do.end46.i:                                       ; preds = %if.end41.i.do.end46.i_crit_edge, %if.then31.i.do.end46.i_crit_edge, %if.then25.i.do.end46.i_crit_edge
  %err.372.i = phi i32 [ %err.075.i.ph, %if.end41.i.do.end46.i_crit_edge ], [ %call23.i, %if.then25.i.do.end46.i_crit_edge ], [ %call34.i, %if.then31.i.do.end46.i_crit_edge ]
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %err.372.i) #7
  br label %do.end7

do.end7:                                          ; preds = %do.end46.i, %do.end12.i, %pci_name.exit.i
  %retval.0.i22 = phi i32 [ %call7.i, %do.end12.i ], [ -19, %pci_name.exit.i ], [ %err.372.i, %do.end46.i ]
  %116 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %asd_ha, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %117, i32 0, i32 44, i32 3
  %118 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %119, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end7.pci_name.exit_crit_edge

do.end7.pci_name.exit_crit_edge:                  ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i23 = getelementptr inbounds %struct.pci_dev, ptr %117, i32 0, i32 44
  %120 = ptrtoint ptr %dev.i23 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev.i23, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end7.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %121, %if.end.i.i ], [ %119, %do.end7.pci_name.exit_crit_edge ]
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %retval.0.i.i) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end41.i.if.end11_crit_edge, %for.inc.i.thread.if.end11_crit_edge, %do.end18.i.if.end11_crit_edge
  tail call fastcc void @asd_seq_setup_seqs(ptr noundef %asd_ha)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %pci_name.exit, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i22, %pci_name.exit ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @asd_seq_setup_seqs(ptr noundef %asd_ha) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc5.i.for.cond1.preheader.i_crit_edge, %entry
  %ddb_site.012.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc5.i.for.cond1.preheader.i_crit_edge ]
  %conv.i = trunc i32 %ddb_site.012.i to i16
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.cond1.preheader.i
  %i.011.i = phi i32 [ 0, %for.cond1.preheader.i ], [ %add.i, %for.body3.i.for.body3.i_crit_edge ]
  %conv4.i = trunc i32 %i.011.i to i16
  %add.i.i = add nuw nsw i16 %conv4.i, 384
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext %add.i.i) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957458, i16 noundef zeroext %conv.i) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207957448, i32 noundef 0) #4
  %add.i = add nuw nsw i32 %i.011.i, 4
  %cmp2.i = icmp ult i32 %i.011.i, 60
  br i1 %cmp2.i, label %for.body3.i.for.body3.i_crit_edge, label %for.inc5.i

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body3.i

for.inc5.i:                                       ; preds = %for.body3.i
  %inc.i = add nuw nsw i32 %ddb_site.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %asd_seq_init_ddb_sites.exit, label %for.inc5.i.for.cond1.preheader.i_crit_edge

for.inc5.i.for.cond1.preheader.i_crit_edge:       ; preds = %for.inc5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond1.preheader.i

asd_seq_init_ddb_sites.exit:                      ; preds = %for.inc5.i
  %max_scbs1.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 7
  %0 = ptrtoint ptr %max_scbs1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_scbs1.i, align 4
  %2 = trunc i32 %1 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp.not63.i = icmp eq i16 %2, 0
  br i1 %cmp.not63.i, label %asd_seq_init_ddb_sites.exit.asd_init_scb_sites.exit_crit_edge, label %asd_seq_init_ddb_sites.exit.for.cond4.preheader.i_crit_edge

asd_seq_init_ddb_sites.exit.for.cond4.preheader.i_crit_edge: ; preds = %asd_seq_init_ddb_sites.exit
  br label %for.cond4.preheader.i

asd_seq_init_ddb_sites.exit.asd_init_scb_sites.exit_crit_edge: ; preds = %asd_seq_init_ddb_sites.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %asd_init_scb_sites.exit

for.cond4.preheader.i:                            ; preds = %cleanup.i.for.cond4.preheader.i_crit_edge, %asd_seq_init_ddb_sites.exit.for.cond4.preheader.i_crit_edge
  %site_no.065.in.i = phi i16 [ %site_no.065.i, %cleanup.i.for.cond4.preheader.i_crit_edge ], [ %2, %asd_seq_init_ddb_sites.exit.for.cond4.preheader.i_crit_edge ]
  %max_scbs.064.i = phi i16 [ %max_scbs.1.i, %cleanup.i.for.cond4.preheader.i_crit_edge ], [ 0, %asd_seq_init_ddb_sites.exit.for.cond4.preheader.i_crit_edge ]
  %site_no.065.i = add i16 %site_no.065.in.i, -1
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.body8.i.for.body8.i_crit_edge, %for.cond4.preheader.i
  %i.061.i = phi i16 [ 0, %for.cond4.preheader.i ], [ %add.i18, %for.body8.i.for.body8.i_crit_edge ]
  %add.i.i17 = add nuw nsw i16 %i.061.i, 256
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext %add.i.i17) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957460, i16 noundef zeroext %site_no.065.i) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207957448, i32 noundef 0) #4
  %add.i18 = add nuw nsw i16 %i.061.i, 4
  %cmp6.i = icmp ult i16 %i.061.i, 124
  br i1 %cmp6.i, label %for.body8.i.for.body8.i_crit_edge, label %for.end.i

for.body8.i.for.body8.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body8.i

for.end.i:                                        ; preds = %for.body8.i
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext 266) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957460, i16 noundef zeroext %site_no.065.i) #4
  %call.i.i.i = tail call zeroext i16 @asd_read_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448) #4
  %or11.i.i = or i16 %call.i.i.i, 255
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext 266) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957460, i16 noundef zeroext %site_no.065.i) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448, i16 noundef zeroext %or11.i.i) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext 328) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957460, i16 noundef zeroext %site_no.065.i) #4
  %call.i.i60.i = tail call zeroext i16 @asd_read_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448) #4
  %3 = and i16 %call.i.i60.i, 255
  %or.i.i = or i16 %3, 256
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext 328) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957460, i16 noundef zeroext %site_no.065.i) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448, i16 noundef zeroext %or.i.i) #4
  %4 = and i16 %site_no.065.i, -3841
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %4)
  %cmp12.not.i = icmp ne i16 %4, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %4)
  %cmp16.i = icmp ugt i16 %4, 31
  %or.cond.i = and i1 %cmp12.not.i, %cmp16.i
  br i1 %or.cond.i, label %if.end.i, label %for.end.i.cleanup.i_crit_edge

for.end.i.cleanup.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

if.end.i:                                         ; preds = %for.end.i
  %5 = load i16, ptr @last_scb_site_no, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp19.i = icmp eq i16 %5, 0
  br i1 %cmp19.i, label %if.then21.i, label %if.end.i.if.end22.i_crit_edge

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22.i

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  store i16 %site_no.065.i, ptr @last_scb_site_no, align 2
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %if.end.i.if.end22.i_crit_edge
  %6 = load i16, ptr @first_scb_site_no, align 2
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext 256) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957460, i16 noundef zeroext %site_no.065.i) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448, i16 noundef zeroext %6) #4
  store i16 %site_no.065.i, ptr @first_scb_site_no, align 2
  %inc.i19 = add i16 %max_scbs.064.i, 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end22.i, %for.end.i.cleanup.i_crit_edge
  %max_scbs.1.i = phi i16 [ %inc.i19, %if.end22.i ], [ %max_scbs.064.i, %for.end.i.cleanup.i_crit_edge ]
  %cmp.not.i = icmp eq i16 %site_no.065.i, 0
  br i1 %cmp.not.i, label %cleanup.i.asd_init_scb_sites.exit_crit_edge, label %cleanup.i.for.cond4.preheader.i_crit_edge

cleanup.i.for.cond4.preheader.i_crit_edge:        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond4.preheader.i

cleanup.i.asd_init_scb_sites.exit_crit_edge:      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %asd_init_scb_sites.exit

asd_init_scb_sites.exit:                          ; preds = %cleanup.i.asd_init_scb_sites.exit_crit_edge, %asd_seq_init_ddb_sites.exit.asd_init_scb_sites.exit_crit_edge
  %max_scbs.0.lcssa.i = phi i16 [ 0, %asd_seq_init_ddb_sites.exit.asd_init_scb_sites.exit_crit_edge ], [ %max_scbs.1.i, %cleanup.i.asd_init_scb_sites.exit_crit_edge ]
  %conv25.i = zext i16 %max_scbs.0.lcssa.i to i32
  %7 = ptrtoint ptr %max_scbs1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv25.i, ptr %max_scbs1.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %conv25.i) #7
  %8 = load i16, ptr @first_scb_site_no, align 2
  %conv34.i = zext i16 %8 to i32
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %conv34.i) #7
  %9 = load i16, ptr @last_scb_site_no, align 2
  %conv40.i = zext i16 %9 to i32
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %conv40.i) #7
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952768, i16 noundef zeroext -1) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952766, i16 noundef zeroext -1) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952764, i16 noundef zeroext -1) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952762, i16 noundef zeroext -1) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952760, i16 noundef zeroext -1) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952758, i16 noundef zeroext -1) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952756, i16 noundef zeroext -1) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952754, i16 noundef zeroext -1) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952752, i16 noundef zeroext -1) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952750, i16 noundef zeroext -1) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952748, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952746, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207952744, i32 noundef 0) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207952740, i8 noundef zeroext 0) #4
  %call.i.i = tail call zeroext i8 @asd_read_reg_byte(ptr noundef %asd_ha, i32 noundef -1207951263) #4
  %conv57.i.i = zext i8 %call.i.i to i32
  %call.i.i.i20 = tail call i32 @__sw_hweight8(i32 noundef %conv57.i.i) #4
  %conv60.i.i = shl i32 %call.i.i.i20, 4
  %or.i.i21 = or i32 %conv60.i.i, %call.i.i.i20
  %conv62.i.i = trunc i32 %or.i.i21 to i8
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207952739, i8 noundef zeroext %conv62.i.i) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952738, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207952736, i32 noundef 0) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207952732, i32 noundef 0) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207952728, i32 noundef 0) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207952724, i32 noundef 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952720, i16 noundef zeroext -1) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952718, i16 noundef zeroext -1) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952716, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207952714, i8 noundef zeroext 0) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207952713, i8 noundef zeroext 0) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207952712, i8 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952704, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952702, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952700, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207952698, i8 noundef zeroext 0) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207952697, i8 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952696, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952694, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952688, i16 noundef zeroext -1) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952686, i16 noundef zeroext -1) #4
  %call.i138.i.i = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207820232) #4
  %10 = lshr i32 %call.i138.i.i, 23
  %11 = or i32 %10, 65279
  %.neg.i.i = add nuw nsw i32 %11, 1
  %12 = lshr exact i32 %.neg.i.i, 8
  %conv67.i.i = trunc i32 %12 to i8
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207952683, i8 noundef zeroext %conv67.i.i) #4
  %13 = load i16, ptr @first_scb_site_no, align 2
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952682, i16 noundef zeroext %13) #4
  %14 = load i16, ptr @last_scb_site_no, align 2
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952680, i16 noundef zeroext %14) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952678, i16 noundef zeroext -1) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952676, i16 noundef zeroext -1) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207952672, i32 noundef 0) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207952668, i32 noundef 0) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207952664, i32 noundef 0) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207952660, i32 noundef 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952656, i16 noundef zeroext -1) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952654, i16 noundef zeroext -1) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952652, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207952650, i8 noundef zeroext 0) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207952649, i8 noundef zeroext 0) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207952648, i8 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952646, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207952644, i32 noundef 0) #4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %asd_init_scb_sites.exit
  %i.062.i.i = phi i32 [ 0, %asd_init_scb_sites.exit ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %mul.i.i = shl i32 %i.062.i.i, 6
  %add.i.i22 = add nuw nsw i32 %mul.i.i, -1207953408
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add.i.i22, i16 noundef zeroext 0) #4
  %add2.i.i = add nuw nsw i32 %mul.i.i, -1207953406
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add2.i.i, i16 noundef zeroext 0) #4
  %add4.i.i = add nuw nsw i32 %mul.i.i, -1207953404
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add4.i.i, i16 noundef zeroext -1) #4
  %add6.i.i = add nuw nsw i32 %mul.i.i, -1207953402
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add6.i.i, i16 noundef zeroext -1) #4
  %add8.i.i = add nuw nsw i32 %mul.i.i, -1207953400
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add8.i.i, i8 noundef zeroext 0) #4
  %inc.i.i = add nuw nsw i32 %i.062.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 8
  br i1 %exitcond.not.i.i, label %asd_init_cseq_scratch.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

asd_init_cseq_scratch.exit:                       ; preds = %for.body.i.i
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952896, i16 noundef zeroext -1) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952894, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952892, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952890, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952888, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952886, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952884, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952882, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952880, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207952878, i8 noundef zeroext 0) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207952877, i8 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952870, i16 noundef zeroext 0) #4
  %15 = load i16, ptr @last_scb_site_no, align 2
  %add9.i.i = add i16 %15, 1
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952868, i16 noundef zeroext %add9.i.i) #4
  %max_ddbs.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 9
  %16 = ptrtoint ptr %max_ddbs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_ddbs.i.i, align 4
  %conv11.i.i = trunc i32 %17 to i16
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207952866, i16 noundef zeroext %conv11.i.i) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207952864, i32 noundef 0) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207952860, i32 noundef 0) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207952856, i32 noundef 0) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207952852, i32 noundef 0) #4
  %dma_handle.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 5, i32 1
  %18 = ptrtoint ptr %dma_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_handle.i.i, align 4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207952832, i32 noundef %19) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207952828, i32 noundef 0) #4
  %20 = ptrtoint ptr %dma_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_handle.i.i, align 4
  %conv15.i.i = zext i32 %21 to i64
  %call.i2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i64 noundef %conv15.i.i) #7
  %actual_dl.i.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 12
  %22 = ptrtoint ptr %actual_dl.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %actual_dl.i.i, align 4
  %dma_handle17.i.i = getelementptr inbounds %struct.asd_dma_tok, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %dma_handle17.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_handle17.i.i, align 4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207952824, i32 noundef %25) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207952820, i32 noundef 0) #4
  %26 = ptrtoint ptr %actual_dl.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %actual_dl.i.i, align 4
  %dma_handle20.i.i = getelementptr inbounds %struct.asd_dma_tok, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %dma_handle20.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_handle20.i.i, align 4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207952816, i32 noundef %29) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207952812, i8 noundef zeroext 1) #4
  %enabled_phys.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 5
  %30 = ptrtoint ptr %enabled_phys.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %enabled_phys.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp.not22.i = icmp eq i8 %31, 0
  br i1 %cmp.not22.i, label %asd_init_cseq_scratch.exit.asd_init_lseq_scratch.exit_crit_edge, label %asd_init_cseq_scratch.exit.for.body.i_crit_edge

asd_init_cseq_scratch.exit.for.body.i_crit_edge:  ; preds = %asd_init_cseq_scratch.exit
  br label %for.body.i

asd_init_cseq_scratch.exit.asd_init_lseq_scratch.exit_crit_edge: ; preds = %asd_init_cseq_scratch.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %asd_init_lseq_scratch.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %asd_init_cseq_scratch.exit.for.body.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %asd_init_cseq_scratch.exit.for.body.i_crit_edge ]
  %lseq_mask.025.i = phi i8 [ %38, %for.inc.i.for.body.i_crit_edge ], [ %31, %asd_init_cseq_scratch.exit.for.body.i_crit_edge ]
  %32 = and i8 %lseq_mask.025.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %mul.i.i24 = shl nuw nsw i32 %indvars.iv.i, 14
  %add2.i.i25 = add nuw nsw i32 %mul.i.i24, -1207826048
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add2.i.i25, i16 noundef zeroext -1) #4
  %add7.i.i = add nuw nsw i32 %mul.i.i24, -1207826046
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add7.i.i, i16 noundef zeroext -1) #4
  %add12.i.i = add nuw nsw i32 %mul.i.i24, -1207826042
  %33 = trunc i32 %indvars.iv.i to i8
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add12.i.i, i8 noundef zeroext %33) #4
  %add17.i.i = add nuw nsw i32 %mul.i.i24, -1207826041
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add17.i.i, i8 noundef zeroext 16) #4
  %add22.i.i = add nuw nsw i32 %mul.i.i24, -1207826040
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add22.i.i, i32 noundef 134217728) #4
  %add27.i.i = add nuw nsw i32 %mul.i.i24, -1207826036
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add27.i.i, i16 noundef zeroext 0) #4
  %add32.i.i = add nuw nsw i32 %mul.i.i24, -1207826034
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add32.i.i, i8 noundef zeroext 0) #4
  %add37.i.i = add nuw nsw i32 %mul.i.i24, -1207826033
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add37.i.i, i8 noundef zeroext 0) #4
  %add42.i.i = add nuw nsw i32 %mul.i.i24, -1207826030
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add42.i.i, i16 noundef zeroext 0) #4
  %add47.i.i = add nuw nsw i32 %mul.i.i24, -1207826028
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add47.i.i, i16 noundef zeroext 0) #4
  %add52.i.i = add nuw nsw i32 %mul.i.i24, -1207826026
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add52.i.i, i16 noundef zeroext 0) #4
  %add57.i.i = add nuw nsw i32 %mul.i.i24, -1207826024
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add57.i.i, i32 noundef 0) #4
  %add63.i.i = add nuw nsw i32 %mul.i.i24, -1207826020
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add63.i.i, i32 noundef 0) #4
  %add68.i.i = add nuw nsw i32 %mul.i.i24, -1207826016
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add68.i.i, i16 noundef zeroext -1) #4
  %add73.i.i = add nuw nsw i32 %mul.i.i24, -1207826014
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add73.i.i, i16 noundef zeroext -1) #4
  %add78.i.i = add nuw nsw i32 %mul.i.i24, -1207826012
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add78.i.i, i16 noundef zeroext -1) #4
  %add83.i.i = add nuw nsw i32 %mul.i.i24, -1207826010
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add83.i.i, i16 noundef zeroext -1) #4
  %add88.i.i = add nuw nsw i32 %mul.i.i24, -1207826008
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add88.i.i, i8 noundef zeroext 0) #4
  %add93.i.i = add nuw nsw i32 %mul.i.i24, -1207826007
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add93.i.i, i8 noundef zeroext 0) #4
  %add98.i.i = add nuw nsw i32 %mul.i.i24, -1207826006
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add98.i.i, i8 noundef zeroext 0) #4
  %add103.i.i = add nuw nsw i32 %mul.i.i24, -1207826005
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add103.i.i, i8 noundef zeroext 0) #4
  %add108.i.i = add nuw nsw i32 %mul.i.i24, -1207826004
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add108.i.i, i8 noundef zeroext 0) #4
  %add113.i.i = add nuw nsw i32 %mul.i.i24, -1207826003
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add113.i.i, i8 noundef zeroext 0) #4
  %add118.i.i = add nuw nsw i32 %mul.i.i24, -1207826002
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add118.i.i, i8 noundef zeroext 0) #4
  %add123.i.i = add nuw nsw i32 %mul.i.i24, -1207825992
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add123.i.i, i32 noundef 0) #4
  %add128.i.i = add nuw nsw i32 %mul.i.i24, -1207825988
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add128.i.i, i16 noundef zeroext 0) #4
  %add133.i.i = add nuw nsw i32 %mul.i.i24, -1207825986
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add133.i.i, i16 noundef zeroext 0) #4
  %add138.i.i = add nuw nsw i32 %mul.i.i24, -1207825984
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add138.i.i, i16 noundef zeroext -1) #4
  %add143.i.i = add nuw nsw i32 %mul.i.i24, -1207825982
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add143.i.i, i16 noundef zeroext -1) #4
  %add148.i.i = add nuw nsw i32 %mul.i.i24, -1207825980
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add148.i.i, i16 noundef zeroext -1) #4
  %add153.i.i = add nuw nsw i32 %mul.i.i24, -1207825978
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add153.i.i, i16 noundef zeroext -1) #4
  %add158.i.i = add nuw nsw i32 %mul.i.i24, -1207825976
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add158.i.i, i8 noundef zeroext 0) #4
  %add163.i.i = add nuw nsw i32 %mul.i.i24, -1207825975
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add163.i.i, i8 noundef zeroext 0) #4
  %add168.i.i = add nuw nsw i32 %mul.i.i24, -1207825974
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add168.i.i, i8 noundef zeroext 0) #4
  %add173.i.i = add nuw nsw i32 %mul.i.i24, -1207825973
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add173.i.i, i8 noundef zeroext 0) #4
  %add178.i.i = add nuw nsw i32 %mul.i.i24, -1207825972
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add178.i.i, i8 noundef zeroext 0) #4
  %add183.i.i = add nuw nsw i32 %mul.i.i24, -1207825971
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add183.i.i, i8 noundef zeroext 0) #4
  %add188.i.i = add nuw nsw i32 %mul.i.i24, -1207825970
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add188.i.i, i8 noundef zeroext 0) #4
  %add194.i.i = add nuw nsw i32 %mul.i.i24, -1207825964
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add194.i.i, i32 noundef 0) #4
  %add195.1.i.i = add nuw nsw i32 %mul.i.i24, -1207825960
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add195.1.i.i, i32 noundef 0) #4
  %add195.2.i.i = add nuw nsw i32 %mul.i.i24, -1207825956
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add195.2.i.i, i32 noundef 0) #4
  %add201.i.i = add nuw nsw i32 %mul.i.i24, -1207825952
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add201.i.i, i32 noundef 10000) #4
  %add206.i.i = add nuw nsw i32 %mul.i.i24, -1207825948
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add206.i.i, i32 noundef 0) #4
  %add211.i.i = add nuw nsw i32 %mul.i.i24, -1207825944
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add211.i.i, i32 noundef 0) #4
  %add216.i.i = add nuw nsw i32 %mul.i.i24, -1207825940
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add216.i.i, i32 noundef 5) #4
  %add221.i.i = add nuw nsw i32 %mul.i.i24, -1207825936
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add221.i.i, i32 noundef 31000000) #4
  %add226.i.i = add nuw nsw i32 %mul.i.i24, -1207825932
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add226.i.i, i32 noundef 1000) #4
  %add231.i.i = add nuw nsw i32 %mul.i.i24, -1207825928
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add231.i.i, i32 noundef 10000) #4
  %add236.i.i = add nuw nsw i32 %mul.i.i24, -1207825924
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add236.i.i, i32 noundef 1000000) #4
  %34 = load i16, ptr @mode2_task, align 2
  %add8.i.i26 = add nuw nsw i32 %mul.i.i24, -1207826432
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add8.i.i26, i16 noundef zeroext -1) #4
  %add13.i.i = add nuw nsw i32 %mul.i.i24, -1207826430
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add13.i.i, i16 noundef zeroext 0) #4
  %add18.i.i = add nuw nsw i32 %mul.i.i24, -1207826428
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add18.i.i, i16 noundef zeroext 0) #4
  %add23.i.i = add nuw nsw i32 %mul.i.i24, -1207826426
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add23.i.i, i16 noundef zeroext -1) #4
  %add28.i.i = add nuw nsw i32 %mul.i.i24, -1207826424
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add28.i.i, i16 noundef zeroext -1) #4
  %add33.i.i = add nuw nsw i32 %mul.i.i24, -1207826421
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add33.i.i, i8 noundef zeroext 0) #4
  %add38.i.i = add nuw nsw i32 %mul.i.i24, -1207826420
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add38.i.i, i16 noundef zeroext 0) #4
  %add8.1.i.i = add nuw nsw i32 %mul.i.i24, -1207826304
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add8.1.i.i, i16 noundef zeroext -1) #4
  %add13.1.i.i = add nuw nsw i32 %mul.i.i24, -1207826302
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add13.1.i.i, i16 noundef zeroext 0) #4
  %add18.1.i.i = add nuw nsw i32 %mul.i.i24, -1207826300
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add18.1.i.i, i16 noundef zeroext 0) #4
  %add23.1.i.i = add nuw nsw i32 %mul.i.i24, -1207826298
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add23.1.i.i, i16 noundef zeroext -1) #4
  %add28.1.i.i = add nuw nsw i32 %mul.i.i24, -1207826296
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add28.1.i.i, i16 noundef zeroext -1) #4
  %add33.1.i.i = add nuw nsw i32 %mul.i.i24, -1207826293
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add33.1.i.i, i8 noundef zeroext 0) #4
  %add38.1.i.i = add nuw nsw i32 %mul.i.i24, -1207826292
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add38.1.i.i, i16 noundef zeroext 0) #4
  %add8.2.i.i = add nuw nsw i32 %mul.i.i24, -1207826176
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add8.2.i.i, i16 noundef zeroext %34) #4
  %add13.2.i.i = add nuw nsw i32 %mul.i.i24, -1207826174
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add13.2.i.i, i16 noundef zeroext 0) #4
  %add18.2.i.i = add nuw nsw i32 %mul.i.i24, -1207826172
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add18.2.i.i, i16 noundef zeroext 0) #4
  %add23.2.i.i = add nuw nsw i32 %mul.i.i24, -1207826170
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add23.2.i.i, i16 noundef zeroext -1) #4
  %add28.2.i.i = add nuw nsw i32 %mul.i.i24, -1207826168
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add28.2.i.i, i16 noundef zeroext -1) #4
  %add33.2.i.i = add nuw nsw i32 %mul.i.i24, -1207826165
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add33.2.i.i, i8 noundef zeroext 0) #4
  %add38.2.i.i = add nuw nsw i32 %mul.i.i24, -1207826164
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add38.2.i.i, i16 noundef zeroext 0) #4
  %add43.i.i = add nuw nsw i32 %mul.i.i24, -1207826336
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add43.i.i, i16 noundef zeroext -1) #4
  %add49.i.i = add nuw nsw i32 %mul.i.i24, -1207826334
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add49.i.i, i16 noundef zeroext 0) #4
  %add54.i.i = add nuw nsw i32 %mul.i.i24, -1207826332
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add54.i.i, i16 noundef zeroext 0) #4
  %add59.i.i = add nuw nsw i32 %mul.i.i24, -1207826330
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add59.i.i, i16 noundef zeroext -1) #4
  %add64.i.i = add nuw nsw i32 %mul.i.i24, -1207826328
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add64.i.i, i16 noundef zeroext -1) #4
  %add69.i.i = add nuw nsw i32 %mul.i.i24, -1207826325
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add69.i.i, i8 noundef zeroext 0) #4
  %add74.i.i = add nuw nsw i32 %mul.i.i24, -1207826324
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add74.i.i, i16 noundef zeroext 0) #4
  %add78.i13.i = add nuw nsw i32 %mul.i.i24, -1207826418
  %35 = ptrtoint ptr %max_ddbs.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_ddbs.i.i, align 4
  %conv.i14.i = trunc i32 %36 to i16
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add78.i13.i, i16 noundef zeroext %conv.i14.i) #4
  %add82.i.i = add nuw nsw i32 %mul.i.i24, -1207826416
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add82.i.i, i16 noundef zeroext 0) #4
  %add86.i.i = add nuw nsw i32 %mul.i.i24, -1207826414
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add86.i.i, i16 noundef zeroext 0) #4
  %add90.i.i = add nuw nsw i32 %mul.i.i24, -1207826412
  %37 = load i16, ptr @last_scb_site_no, align 2
  %add92.i.i = add i16 %37, 1
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add90.i.i, i16 noundef zeroext %add92.i.i) #4
  %add97.i.i = add nuw nsw i32 %mul.i.i24, -1207826410
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add97.i.i, i16 noundef zeroext 147) #4
  %add102.i.i = add nuw nsw i32 %mul.i.i24, -1207826408
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add102.i.i, i16 noundef zeroext -4225) #4
  %add106.i.i = add nuw nsw i32 %mul.i.i24, -1207826406
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add106.i.i, i8 noundef zeroext 0) #4
  %add110.i.i = add nuw nsw i32 %mul.i.i24, -1207826405
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add110.i.i, i8 noundef zeroext 0) #4
  %add114.i.i = add nuw nsw i32 %mul.i.i24, -1207826404
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add114.i.i, i8 noundef zeroext 0) #4
  %add118.i15.i = add nuw nsw i32 %mul.i.i24, -1207826403
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add118.i15.i, i8 noundef zeroext 0) #4
  %add122.i.i = add nuw nsw i32 %mul.i.i24, -1207826402
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add122.i.i, i16 noundef zeroext 0) #4
  %add126.i.i = add nuw nsw i32 %mul.i.i24, -1207826290
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add126.i.i, i16 noundef zeroext -1) #4
  %add130.i.i = add nuw nsw i32 %mul.i.i24, -1207826288
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add130.i.i, i16 noundef zeroext 0) #4
  %add134.i.i = add nuw nsw i32 %mul.i.i24, -1207826286
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add134.i.i, i16 noundef zeroext 0) #4
  %add138.i16.i = add nuw nsw i32 %mul.i.i24, -1207826278
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add138.i16.i, i8 noundef zeroext 0) #4
  %add142.i.i = add nuw nsw i32 %mul.i.i24, -1207826277
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add142.i.i, i8 noundef zeroext 0) #4
  %add146.i.i = add nuw nsw i32 %mul.i.i24, -1207826276
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add146.i.i, i8 noundef zeroext 0) #4
  %add150.i.i = add nuw nsw i32 %mul.i.i24, -1207826275
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add150.i.i, i8 noundef zeroext 0) #4
  %add154.i.i = add nuw nsw i32 %mul.i.i24, -1207826274
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add154.i.i, i16 noundef zeroext 0) #4
  %add158.i17.i = add nuw nsw i32 %mul.i.i24, -1207826162
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add158.i17.i, i16 noundef zeroext 0) #4
  %add162.i.i = add nuw nsw i32 %mul.i.i24, -1207826160
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add162.i.i, i16 noundef zeroext 0) #4
  %add166.i.i = add nuw nsw i32 %mul.i.i24, -1207826158
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add166.i.i, i16 noundef zeroext 0) #4
  %add170.i.i = add nuw nsw i32 %mul.i.i24, -1207826156
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add170.i.i, i16 noundef zeroext 0) #4
  %add174.i.i = add nuw nsw i32 %mul.i.i24, -1207826154
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add174.i.i, i16 noundef zeroext 0) #4
  %add178.i18.i = add nuw nsw i32 %mul.i.i24, -1207826150
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add178.i18.i, i8 noundef zeroext 0) #4
  %add182.i.i = add nuw nsw i32 %mul.i.i24, -1207826322
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add182.i.i, i8 noundef zeroext 0) #4
  %add186.i.i = add nuw nsw i32 %mul.i.i24, -1207826321
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add186.i.i, i8 noundef zeroext 0) #4
  %add190.i.i = add nuw nsw i32 %mul.i.i24, -1207826320
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add190.i.i, i16 noundef zeroext -1) #4
  %add194.i19.i = add nuw nsw i32 %mul.i.i24, -1207826318
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add194.i19.i, i8 noundef zeroext 0) #4
  %add198.i.i = add nuw nsw i32 %mul.i.i24, -1207826317
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add198.i.i, i8 noundef zeroext 0) #4
  %add202.i.i = add nuw nsw i32 %mul.i.i24, -1207826316
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add202.i.i, i8 noundef zeroext 0) #4
  %add206.i20.i = add nuw nsw i32 %mul.i.i24, -1207826315
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add206.i20.i, i8 noundef zeroext 0) #4
  %add210.i.i = add nuw nsw i32 %mul.i.i24, -1207826314
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add210.i.i, i8 noundef zeroext 0) #4
  %add214.i.i = add nuw nsw i32 %mul.i.i24, -1207826312
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add214.i.i, i16 noundef zeroext 0) #4
  %add218.i.i = add nuw nsw i32 %mul.i.i24, -1207826308
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add218.i.i, i16 noundef zeroext 2499) #4
  %add222.i.i = add nuw nsw i32 %mul.i.i24, -1207826310
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add222.i.i, i16 noundef zeroext 0) #4
  %add226.i21.i = add nuw nsw i32 %mul.i.i24, -1207826306
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add226.i21.i, i16 noundef zeroext 0) #4
  %add41.i.i = add nuw nsw i32 %mul.i.i24, -1207826400
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add41.i.i, i32 noundef 0) #4
  %add241.1.i.i = add nuw nsw i32 %mul.i.i24, -1207826396
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add241.1.i.i, i32 noundef 0) #4
  %add241.2.i.i = add nuw nsw i32 %mul.i.i24, -1207826392
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add241.2.i.i, i32 noundef 0) #4
  %add241.3.i.i = add nuw nsw i32 %mul.i.i24, -1207826388
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add241.3.i.i, i32 noundef 0) #4
  %add241.4.i.i = add nuw nsw i32 %mul.i.i24, -1207826384
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add241.4.i.i, i32 noundef 0) #4
  %add241.5.i.i = add nuw nsw i32 %mul.i.i24, -1207826380
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add241.5.i.i, i32 noundef 0) #4
  %add241.6.i.i = add nuw nsw i32 %mul.i.i24, -1207826376
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add241.6.i.i, i32 noundef 0) #4
  %add241.7.i.i = add nuw nsw i32 %mul.i.i24, -1207826372
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add241.7.i.i, i32 noundef 0) #4
  %add240.1.i.i = add nuw nsw i32 %mul.i.i24, -1207826272
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add240.1.i.i, i32 noundef 0) #4
  %add241.1.1.i.i = add nuw nsw i32 %mul.i.i24, -1207826268
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add241.1.1.i.i, i32 noundef 0) #4
  %add241.2.1.i.i = add nuw nsw i32 %mul.i.i24, -1207826264
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add241.2.1.i.i, i32 noundef 0) #4
  %add241.3.1.i.i = add nuw nsw i32 %mul.i.i24, -1207826260
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add241.3.1.i.i, i32 noundef 0) #4
  %add241.4.1.i.i = add nuw nsw i32 %mul.i.i24, -1207826256
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add241.4.1.i.i, i32 noundef 0) #4
  %add241.5.1.i.i = add nuw nsw i32 %mul.i.i24, -1207826252
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add241.5.1.i.i, i32 noundef 0) #4
  %add241.6.1.i.i = add nuw nsw i32 %mul.i.i24, -1207826248
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add241.6.1.i.i, i32 noundef 0) #4
  %add241.7.1.i.i = add nuw nsw i32 %mul.i.i24, -1207826244
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add241.7.1.i.i, i32 noundef 0) #4
  %add251.i.i = add nuw nsw i32 %mul.i.i24, -1207826144
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add251.i.i, i32 noundef 0) #4
  %add255.i.i = add nuw nsw i32 %mul.i.i24, -1207826140
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add255.i.i, i32 noundef 0) #4
  %add259.i.i = add nuw nsw i32 %mul.i.i24, -1207826136
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add259.i.i, i32 noundef 0) #4
  %add267.i.i = add nuw nsw i32 %mul.i.i24, -1207826208
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add267.i.i, i32 noundef 0) #4
  %add268.1.i.i = add nuw nsw i32 %mul.i.i24, -1207826204
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add268.1.i.i, i32 noundef 0) #4
  %add268.2.i.i = add nuw nsw i32 %mul.i.i24, -1207826200
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add268.2.i.i, i32 noundef 0) #4
  %add268.3.i.i = add nuw nsw i32 %mul.i.i24, -1207826196
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add268.3.i.i, i32 noundef 0) #4
  %add268.4.i.i = add nuw nsw i32 %mul.i.i24, -1207826192
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add268.4.i.i, i32 noundef 0) #4
  %add268.5.i.i = add nuw nsw i32 %mul.i.i24, -1207826188
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add268.5.i.i, i32 noundef 0) #4
  %add268.6.i.i = add nuw nsw i32 %mul.i.i24, -1207826184
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add268.6.i.i, i32 noundef 0) #4
  %add268.7.i.i = add nuw nsw i32 %mul.i.i24, -1207826180
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add268.7.i.i, i32 noundef 0) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add267.i.i, i8 noundef zeroext -1) #4
  %add279.i.i = add nuw nsw i32 %mul.i.i24, -1207826207
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add279.i.i, i8 noundef zeroext -1) #4
  %add284.i.i = add nuw nsw i32 %mul.i.i24, -1207826206
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add284.i.i, i8 noundef zeroext -1) #4
  %add289.i.i = add nuw nsw i32 %mul.i.i24, -1207826205
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add289.i.i, i8 noundef zeroext -1) #4
  %add293.i.i = add nuw nsw i32 %mul.i.i24, -1207826203
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add293.i.i, i8 noundef zeroext -1) #4
  %add298.i.i = add nuw nsw i32 %mul.i.i24, -1207826202
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add298.i.i, i8 noundef zeroext -1) #4
  %add303.i.i = add nuw nsw i32 %mul.i.i24, -1207826201
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add303.i.i, i8 noundef zeroext -1) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add268.5.i.i, i32 noundef -1) #4
  %add311.i.i = add nuw nsw i32 %mul.i.i24, -1207826368
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add311.i.i, i32 noundef 0) #4
  %add315.i.i = add nuw nsw i32 %mul.i.i24, -1207826341
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add315.i.i, i8 noundef zeroext 0) #4
  %add319.i.i = add nuw nsw i32 %mul.i.i24, -1207826340
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add319.i.i, i16 noundef zeroext 0) #4
  %add323.i.i = add nuw nsw i32 %mul.i.i24, -1207826338
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add323.i.i, i8 noundef zeroext 0) #4
  %add327.i.i = add nuw nsw i32 %mul.i.i24, -1207826337
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add327.i.i, i8 noundef zeroext 0) #4
  %add331.i.i = add nuw nsw i32 %mul.i.i24, -1207826240
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add331.i.i, i32 noundef 0) #4
  %add336.i.i = add nuw nsw i32 %mul.i.i24, -1207826236
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add336.i.i, i32 noundef 0) #4
  %add340.i.i = add nuw nsw i32 %mul.i.i24, -1207826232
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add340.i.i, i32 noundef 0) #4
  %add344.i.i = add nuw nsw i32 %mul.i.i24, -1207826228
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add344.i.i, i32 noundef 0) #4
  %add348.i.i = add nuw nsw i32 %mul.i.i24, -1207826220
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add348.i.i, i32 noundef 0) #4
  %add352.i.i = add nuw nsw i32 %mul.i.i24, -1207826112
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add352.i.i, i32 noundef 0) #4
  %add356.i.i = add nuw nsw i32 %mul.i.i24, -1207826108
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add356.i.i, i32 noundef 0) #4
  %add360.i.i = add nuw nsw i32 %mul.i.i24, -1207826104
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add360.i.i, i32 noundef 0) #4
  %add364.i.i = add nuw nsw i32 %mul.i.i24, -1207826100
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add364.i.i, i32 noundef 0) #4
  %add368.i.i = add nuw nsw i32 %mul.i.i24, -1207826096
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add368.i.i, i32 noundef 0) #4
  %add372.i.i = add nuw nsw i32 %mul.i.i24, -1207826092
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add372.i.i, i32 noundef 0) #4
  %add376.i.i = add nuw nsw i32 %mul.i.i24, -1207826080
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add376.i.i, i32 noundef 0) #4
  %add380.i.i = add nuw nsw i32 %mul.i.i24, -1207826076
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add380.i.i, i32 noundef 0) #4
  %add384.i.i = add nuw nsw i32 %mul.i.i24, -1207826072
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add384.i.i, i32 noundef 0) #4
  %add388.i.i = add nuw nsw i32 %mul.i.i24, -1207826068
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add388.i.i, i32 noundef 0) #4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %38 = lshr i8 %lseq_mask.025.i, 1
  %cmp.not.i27 = icmp ult i8 %lseq_mask.025.i, 2
  br i1 %cmp.not.i27, label %for.inc.i.asd_init_lseq_scratch.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.asd_init_lseq_scratch.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %asd_init_lseq_scratch.exit

asd_init_lseq_scratch.exit:                       ; preds = %for.inc.i.asd_init_lseq_scratch.exit_crit_edge, %asd_init_cseq_scratch.exit.asd_init_lseq_scratch.exit_crit_edge
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207947210, i8 noundef zeroext 0) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207947187, i8 noundef zeroext 8) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207947186, i8 noundef zeroext 0) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207947185, i8 noundef zeroext 0) #4
  %scbpro.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 13, i32 1
  %39 = ptrtoint ptr %scbpro.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %scbpro.i, align 4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207959540, i32 noundef 0) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207947216, i32 noundef 0) #4
  %40 = load i16, ptr @cseq_vecs.0, align 2
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207945648, i16 noundef zeroext %40) #4
  %41 = load i16, ptr @cseq_vecs.1, align 2
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207945646, i16 noundef zeroext %41) #4
  %42 = load i16, ptr @cseq_vecs.2, align 2
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207945644, i16 noundef zeroext %42) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207955448, i8 noundef zeroext -128) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207951324, i8 noundef zeroext 4) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207951323, i8 noundef zeroext 0) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207950811, i8 noundef zeroext 0) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207950299, i8 noundef zeroext 0) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207949787, i8 noundef zeroext 0) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207949275, i8 noundef zeroext 0) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207948763, i8 noundef zeroext 0) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207948251, i8 noundef zeroext 0) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207947739, i8 noundef zeroext 0) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207947227, i8 noundef zeroext 0) #4
  %43 = load i16, ptr @cseq_idle_loop, align 2
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207951352, i16 noundef zeroext %43) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207951300, i32 noundef 1) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207951312, i32 noundef 0) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207950788, i32 noundef 1) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207950800, i32 noundef 0) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207950276, i32 noundef 1) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207950288, i32 noundef 0) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207949764, i32 noundef 1) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207949776, i32 noundef 0) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207949252, i32 noundef 1) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207949264, i32 noundef 0) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207948740, i32 noundef 1) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207948752, i32 noundef 0) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207948228, i32 noundef 1) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207948240, i32 noundef 0) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207947716, i32 noundef 1) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207947728, i32 noundef 0) #4
  br label %for.body.i32

for.body.i32:                                     ; preds = %for.body.i32.for.body.i32_crit_edge, %asd_init_lseq_scratch.exit
  %i.024.i = phi i32 [ 0, %asd_init_lseq_scratch.exit ], [ %add.i31, %for.body.i32.for.body.i32_crit_edge ]
  %conv.i29 = trunc i32 %i.024.i to i16
  %add.i.i30 = add nuw nsw i16 %conv.i29, 384
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext %add.i.i30) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957458, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207957448, i32 noundef 0) #4
  %add.i31 = add nuw nsw i32 %i.024.i, 4
  %cmp.i = icmp ult i32 %i.024.i, 60
  br i1 %cmp.i, label %for.body.i32.for.body.i32_crit_edge, label %asd_init_ddb_0.exit

for.body.i32.for.body.i32_crit_edge:              ; preds = %for.body.i32
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i32

asd_init_ddb_0.exit:                              ; preds = %for.body.i32
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext 384) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957458, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448, i16 noundef zeroext 0) #4
  %44 = ptrtoint ptr %max_ddbs.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_ddbs.i.i, align 4
  %46 = trunc i32 %45 to i16
  %conv1.i = add i16 %46, -1
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext 386) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957458, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448, i16 noundef zeroext %conv1.i) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext 388) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957458, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext 390) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957458, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448, i16 noundef zeroext -1) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext 392) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957458, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448, i16 noundef zeroext -1) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext 394) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957458, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext 396) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957458, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext 398) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957458, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448, i16 noundef zeroext 0) #4
  %num_phys.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 13
  %47 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_phys.i, align 4
  %.tr.i = trunc i32 %48 to i16
  %conv3.i = shl i16 %.tr.i, 1
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext 400) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957458, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448, i16 noundef zeroext %conv3.i) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext 406) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957458, i16 noundef zeroext 0) #4
  %call.i.i.i33 = tail call zeroext i16 @asd_read_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448) #4
  %49 = and i16 %call.i.i.i33, -256
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext 406) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957458, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448, i16 noundef zeroext %49) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext 430) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957458, i16 noundef zeroext 0) #4
  %call.i.i22.i = tail call zeroext i16 @asd_read_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448) #4
  %or11.i.i34 = or i16 %call.i.i22.i, 255
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext 430) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957458, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448, i16 noundef zeroext %or11.i.i34) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext 430) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957458, i16 noundef zeroext 0) #4
  %call.i.i23.i = tail call zeroext i16 @asd_read_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448) #4
  %50 = and i16 %call.i.i23.i, 255
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext 430) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957458, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448, i16 noundef zeroext %50) #4
  %ddb_bitmap.i = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 12
  %51 = ptrtoint ptr %ddb_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ddb_bitmap.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %52) #4
  %53 = ptrtoint ptr %enabled_phys.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %enabled_phys.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp.not38 = icmp eq i8 %54, 0
  br i1 %cmp.not38, label %asd_init_ddb_0.exit.for.end_crit_edge, label %asd_init_ddb_0.exit.for.body_crit_edge

asd_init_ddb_0.exit.for.body_crit_edge:           ; preds = %asd_init_ddb_0.exit
  br label %for.body

asd_init_ddb_0.exit.for.end_crit_edge:            ; preds = %asd_init_ddb_0.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %asd_init_ddb_0.exit.for.body_crit_edge
  %lseq_mask.041 = phi i8 [ %86, %for.inc.for.body_crit_edge ], [ %54, %asd_init_ddb_0.exit.for.body_crit_edge ]
  %lseq.039 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %asd_init_ddb_0.exit.for.body_crit_edge ]
  %55 = and i8 %lseq_mask.041, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not = icmp eq i8 %55, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %mul.i = shl i32 %lseq.039, 14
  %add1.i = add nuw nsw i32 %mul.i, -1207828472
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add1.i, i32 noundef 128) #4
  %add6.i = add nuw nsw i32 %mul.i, -1207820252
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add6.i, i8 noundef zeroext 0) #4
  %add12.i = add nuw nsw i32 %mul.i, -1207820251
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add12.i, i8 noundef zeroext 0) #4
  %add12.1.i = add nuw nsw i32 %mul.i, -1207819739
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add12.1.i, i8 noundef zeroext 0) #4
  %add12.2.i = add nuw nsw i32 %mul.i, -1207819227
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add12.2.i, i8 noundef zeroext 0) #4
  %add17.i = add nuw nsw i32 %mul.i, -1207817691
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add17.i, i8 noundef zeroext 0) #4
  %add22.i = add nuw nsw i32 %mul.i, -1207820236
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add22.i, i32 noundef 0) #4
  %add27.i = add nuw nsw i32 %mul.i, -1207820228
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add27.i, i32 noundef 9695103) #4
  %add32.i = add nuw nsw i32 %mul.i, -1207820232
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add32.i, i32 noundef -1) #4
  %add37.i = add nuw nsw i32 %mul.i, -1207819716
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add37.i, i32 noundef 43241232) #4
  %add42.i = add nuw nsw i32 %mul.i, -1207819720
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add42.i, i32 noundef -1) #4
  %add47.i = add nuw nsw i32 %mul.i, -1207819204
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add47.i, i32 noundef 9027584) #4
  %add52.i = add nuw nsw i32 %mul.i, -1207819208
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add52.i, i32 noundef -1) #4
  %add57.i = add nuw nsw i32 %mul.i, -1207817668
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add57.i, i32 noundef 25280512) #4
  %add62.i = add nuw nsw i32 %mul.i, -1207817672
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add62.i, i32 noundef -1) #4
  %add67.i = add nuw nsw i32 %mul.i, -1207820091
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add67.i, i8 noundef zeroext -17) #4
  %add72.i = add nuw nsw i32 %mul.i, -1207820064
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add72.i, i32 noundef 535887871) #4
  %add77.i = add nuw nsw i32 %mul.i, -1207820060
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add77.i, i32 noundef 131230) #4
  %add82.i = add nuw nsw i32 %mul.i, -1207820108
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add82.i, i32 noundef 4023) #4
  %add87.i = add nuw nsw i32 %mul.i, -1207820163
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add87.i, i8 noundef zeroext 80) #4
  %add92.i = add nuw nsw i32 %mul.i, -1207820199
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add92.i, i8 noundef zeroext 3) #4
  %add97.i = add nuw nsw i32 %mul.i, -1207819687
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add97.i, i8 noundef zeroext 4) #4
  %add102.i = add nuw nsw i32 %mul.i, -1207820280
  %56 = load i16, ptr @lseq_idle_loop, align 2
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add102.i, i16 noundef zeroext %56) #4
  %add105.i = add nuw nsw i32 %mul.i, -1207828416
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add105.i, i32 noundef 16) #4
  %add110.i = add nuw nsw i32 %mul.i, -1207818680
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add110.i, i16 noundef zeroext 0) #4
  %add115.i = add nuw nsw i32 %mul.i, -1207820240
  %call.i36 = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef %add115.i) #4
  %add120.i = add nuw nsw i32 %mul.i, -1207820160
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add120.i, i32 noundef -1) #4
  %add125.i = add nuw nsw i32 %mul.i, -1207820156
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add125.i, i32 noundef -1) #4
  %add130.i = add nuw nsw i32 %mul.i, -1207820089
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add130.i, i8 noundef zeroext -1) #4
  %add135.i = add nuw nsw i32 %mul.i, -1207820218
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add135.i, i8 noundef zeroext -1) #4
  %add140.i = add nuw nsw i32 %mul.i, -1207819706
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add140.i, i8 noundef zeroext -1) #4
  %add145.i = add nuw nsw i32 %mul.i, -1207820217
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add145.i, i8 noundef zeroext -1) #4
  %add150.i = add nuw nsw i32 %mul.i, -1207819705
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add150.i, i8 noundef zeroext -1) #4
  %add155.i = add nuw nsw i32 %mul.i, -1207820210
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add155.i, i8 noundef zeroext 1) #4
  %add160.i = add nuw nsw i32 %mul.i, -1207820112
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add160.i, i32 noundef -1) #4
  %add165.i = add nuw nsw i32 %mul.i, -1207820283
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add165.i, i8 noundef zeroext 64) #4
  %phy_desc.i = getelementptr %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 8, i32 %lseq.039, i32 1
  %57 = ptrtoint ptr %phy_desc.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %phy_desc.i, align 4
  %add174.i = add nuw nsw i32 %mul.i, -1207820120
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 1
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add174.i, i8 noundef zeroext %60) #4
  %add175.1.i = add nuw nsw i32 %mul.i, -1207820119
  %arrayidx176.1.i = getelementptr i8, ptr %58, i32 1
  %61 = ptrtoint ptr %arrayidx176.1.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx176.1.i, align 1
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add175.1.i, i8 noundef zeroext %62) #4
  %add175.2.i = add nuw nsw i32 %mul.i, -1207820118
  %arrayidx176.2.i = getelementptr i8, ptr %58, i32 2
  %63 = ptrtoint ptr %arrayidx176.2.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx176.2.i, align 1
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add175.2.i, i8 noundef zeroext %64) #4
  %add175.3.i = add nuw nsw i32 %mul.i, -1207820117
  %arrayidx176.3.i = getelementptr i8, ptr %58, i32 3
  %65 = ptrtoint ptr %arrayidx176.3.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx176.3.i, align 1
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add175.3.i, i8 noundef zeroext %66) #4
  %add175.4.i = add nuw nsw i32 %mul.i, -1207820116
  %arrayidx176.4.i = getelementptr i8, ptr %58, i32 4
  %67 = ptrtoint ptr %arrayidx176.4.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx176.4.i, align 1
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add175.4.i, i8 noundef zeroext %68) #4
  %add175.5.i = add nuw nsw i32 %mul.i, -1207820115
  %arrayidx176.5.i = getelementptr i8, ptr %58, i32 5
  %69 = ptrtoint ptr %arrayidx176.5.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx176.5.i, align 1
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add175.5.i, i8 noundef zeroext %70) #4
  %add175.6.i = add nuw nsw i32 %mul.i, -1207820114
  %arrayidx176.6.i = getelementptr i8, ptr %58, i32 6
  %71 = ptrtoint ptr %arrayidx176.6.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx176.6.i, align 1
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add175.6.i, i8 noundef zeroext %72) #4
  %add175.7.i = add nuw nsw i32 %mul.i, -1207820113
  %arrayidx176.7.i = getelementptr i8, ptr %58, i32 7
  %73 = ptrtoint ptr %arrayidx176.7.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx176.7.i, align 1
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add175.7.i, i8 noundef zeroext %74) #4
  %add184.i = add nuw nsw i32 %mul.i, -1207819629
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add184.i, i8 noundef zeroext 0) #4
  %add189.i = add nuw nsw i32 %mul.i, -1207820126
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add189.i, i16 noundef zeroext 9) #4
  %add194.i = add nuw nsw i32 %mul.i, -1207819650
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add194.i, i8 noundef zeroext -128) #4
  %add199.i = add nuw nsw i32 %mul.i, -1207818608
  %75 = load i16, ptr @lseq_vecs.0, align 2
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add199.i, i16 noundef zeroext %75) #4
  %add204.i = add nuw nsw i32 %mul.i, -1207818606
  %76 = load i16, ptr @lseq_vecs.1, align 2
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add204.i, i16 noundef zeroext %76) #4
  %add209.i = add nuw nsw i32 %mul.i, -1207818604
  %77 = load i16, ptr @lseq_vecs.2, align 2
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add209.i, i16 noundef zeroext %77) #4
  %add214.i = add nuw nsw i32 %mul.i, -1207818602
  %78 = load i16, ptr @lseq_vecs.3, align 2
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add214.i, i16 noundef zeroext %78) #4
  %add219.i = add nuw nsw i32 %mul.i, -1207818600
  %79 = load i16, ptr @lseq_vecs.4, align 2
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add219.i, i16 noundef zeroext %79) #4
  %add224.i = add nuw nsw i32 %mul.i, -1207818598
  %80 = load i16, ptr @lseq_vecs.5, align 2
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add224.i, i16 noundef zeroext %80) #4
  %add229.i = add nuw nsw i32 %mul.i, -1207818596
  %81 = load i16, ptr @lseq_vecs.6, align 2
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add229.i, i16 noundef zeroext %81) #4
  %add234.i = add nuw nsw i32 %mul.i, -1207818594
  %82 = load i16, ptr @lseq_vecs.7, align 2
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add234.i, i16 noundef zeroext %82) #4
  %add239.i = add nuw nsw i32 %mul.i, -1207818588
  %83 = load i16, ptr @lseq_vecs.8, align 2
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add239.i, i16 noundef zeroext %83) #4
  %add244.i = add nuw nsw i32 %mul.i, -1207818586
  %84 = load i16, ptr @lseq_vecs.9, align 2
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add244.i, i16 noundef zeroext %84) #4
  %add249.i = add nuw nsw i32 %mul.i, -1207818576
  %85 = load i16, ptr @lseq_vecs.10, align 2
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add249.i, i16 noundef zeroext %85) #4
  %add252.i = add nuw nsw i32 %mul.i, -1207828408
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add252.i, i32 noundef 69632) #4
  %add257.i = add nuw nsw i32 %mul.i, -1207819704
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add257.i, i8 noundef zeroext -1) #4
  %add262.i = add nuw nsw i32 %mul.i, -1207819703
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef %add262.i, i8 noundef zeroext 31) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %lseq.039, 1
  %86 = lshr i8 %lseq_mask.041, 1
  %cmp.not = icmp ult i8 %lseq_mask.041, 2
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %asd_init_ddb_0.exit.for.end_crit_edge
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207951304, i32 noundef -1) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207950792, i32 noundef -1) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207950280, i32 noundef -1) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207949768, i32 noundef -1) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207949256, i32 noundef -1) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207948744, i32 noundef -1) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207948232, i32 noundef -1) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207947720, i32 noundef -1) #4
  %call.i37 = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207951308) #4
  %call.1.i = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207950796) #4
  %call.2.i = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207950284) #4
  %call.3.i = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207949772) #4
  %call.4.i = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207949260) #4
  %call.5.i = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207948748) #4
  %call.6.i = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207948236) #4
  %call.7.i = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207947724) #4
  tail call void @asd_write_reg_byte(ptr noundef %asd_ha, i32 noundef -1207951355, i8 noundef zeroext 64) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @asd_start_seqs(ptr noundef %asd_ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i16, ptr @cseq_idle_loop, align 2
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207951352, i16 noundef zeroext %0) #4
  %call.i.i = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207955456) #4
  %and.i.i = and i32 %call.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %if.end.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i.i:                                       ; preds = %entry
  %and1.i.i = and i32 %call.i.i, -9
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207955456, i32 noundef %and1.i.i) #4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end6.i.i.do.body.i.i_crit_edge, %if.end.i.i
  %count.0.i.i = phi i32 [ 1000, %if.end.i.i ], [ %dec.i.i, %if.end6.i.i.do.body.i.i_crit_edge ]
  %call2.i.i = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207955456) #4
  %and3.i.i = and i32 %call2.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body.i.i.if.end_crit_edge, label %if.end6.i.i

do.body.i.i.if.end_crit_edge:                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end6.i.i:                                      ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748) #4
  %dec.i.i = add nsw i32 %count.0.i.i, -1
  %cmp.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i, label %do.end, label %if.end6.i.i.do.body.i.i_crit_edge

if.end6.i.i.do.body.i.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i

do.end:                                           ; preds = %if.end6.i.i
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #7
  %2 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asd_ha, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i35 = icmp eq ptr %5, null
  br i1 %tobool.not.i.i35, label %if.end.i.i36, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %pci_name.exit

if.end.i.i36:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i36, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i37 = phi ptr [ %7, %if.end.i.i36 ], [ %5, %do.end.pci_name.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %retval.0.i.i37) #7
  br label %cleanup

if.end:                                           ; preds = %do.body.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %enabled_phys = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 5
  %8 = ptrtoint ptr %enabled_phys to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enabled_phys, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.not48 = icmp eq i8 %9, 0
  br i1 %cmp.not48, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %lseq.050 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %lseq_mask.049 = phi i8 [ %13, %for.inc.for.body_crit_edge ], [ %9, %if.end.for.body_crit_edge ]
  %10 = and i8 %lseq_mask.049, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.then6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then6:                                         ; preds = %for.body
  %mul.i = shl i32 %lseq.050, 14
  %add3.i = add nuw nsw i32 %mul.i, -1207820280
  %11 = load i16, ptr @lseq_idle_loop, align 2
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef %add3.i, i16 noundef zeroext %11) #4
  %add.i.i = add nuw nsw i32 %mul.i, -1207828480
  %call.i.i38 = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef %add.i.i) #4
  %and.i.i39 = and i32 %call.i.i38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i39)
  %tobool.not.i.i40 = icmp eq i32 %and.i.i39, 0
  br i1 %tobool.not.i.i40, label %if.then6.for.inc_crit_edge, label %if.end.i.i41

if.then6.for.inc_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end.i.i41:                                     ; preds = %if.then6
  %and5.i.i = and i32 %call.i.i38, -9
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add.i.i, i32 noundef %and5.i.i) #4
  br label %do.body.i.i43

do.body.i.i43:                                    ; preds = %if.end13.i.i.do.body.i.i43_crit_edge, %if.end.i.i41
  %count.0.i.i42 = phi i32 [ 1000, %if.end.i.i41 ], [ %dec.i.i44, %if.end13.i.i.do.body.i.i43_crit_edge ]
  %call9.i.i = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef %add.i.i) #4
  %and10.i.i = and i32 %call9.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %do.body.i.i43.for.inc_crit_edge, label %if.end13.i.i

do.body.i.i43.for.inc_crit_edge:                  ; preds = %do.body.i.i43
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end13.i.i:                                     ; preds = %do.body.i.i43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #4
  %dec.i.i44 = add nsw i32 %count.0.i.i42, -1
  %cmp.not.i.i45 = icmp eq i32 %dec.i.i44, 0
  br i1 %cmp.not.i.i45, label %do.end16.i.i, label %if.end13.i.i.do.body.i.i43_crit_edge

if.end13.i.i.do.body.i.i43_crit_edge:             ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i43

do.end16.i.i:                                     ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call17.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %lseq.050) #7
  br label %for.inc

for.inc:                                          ; preds = %do.end16.i.i, %do.body.i.i43.for.inc_crit_edge, %if.then6.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %lseq.050, 1
  %13 = lshr i8 %lseq_mask.049, 1
  %cmp.not = icmp ult i8 %lseq_mask.049, 2
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %pci_name.exit
  %retval.0 = phi i32 [ -1, %pci_name.exit ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @asd_update_port_links(ptr noundef %asd_ha, ptr nocapture noundef readonly %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %asd_port = getelementptr inbounds %struct.asd_phy, ptr %phy, i32 0, i32 4
  %0 = ptrtoint ptr %asd_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %asd_port, align 4
  %phy_mask1 = getelementptr inbounds %struct.asd_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %phy_mask1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_mask1, align 4
  %conv = trunc i32 %3 to i8
  %ddb_lock = getelementptr inbounds %struct.asd_ha_struct, ptr %asd_ha, i32 0, i32 7, i32 11
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ddb_lock) #4
  %conv776 = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv776)
  %cmp8.not77 = icmp eq i32 %conv776, 0
  br i1 %cmp8.not77, label %entry.for.body17.preheader_crit_edge, label %for.body.lr.ph

entry.for.body17.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body17.preheader

for.body.lr.ph:                                   ; preds = %entry
  %4 = trunc i32 %3 to i16
  %conv4.i = shl i16 %4, 8
  %conv10.i = and i16 %4, 255
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv781 = phi i32 [ %conv776, %for.body.lr.ph ], [ %10, %for.inc.for.body_crit_edge ]
  %mask.080 = phi i32 [ %3, %for.body.lr.ph ], [ %10, %for.inc.for.body_crit_edge ]
  %i.078 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %and = and i32 %mask.080, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %5 = trunc i32 %i.078 to i16
  %6 = add i16 %5, 440
  %add.i.i = and i16 %6, -2
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext %add.i.i) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957458, i16 noundef zeroext 0) #4
  %call.i.i = tail call zeroext i16 @asd_read_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448) #4
  %7 = and i16 %5, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i = icmp eq i16 %7, 0
  %8 = and i16 %call.i.i, 255
  %or.i = or i16 %8, %conv4.i
  %9 = and i16 %call.i.i, -256
  %or11.i = or i16 %9, %conv10.i
  %rval.0.i = select i1 %tobool.not.i, i16 %or11.i, i16 %or.i
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext %add.i.i) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957458, i16 noundef zeroext 0) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448, i16 noundef zeroext %rval.0.i) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.078, 1
  %10 = lshr i32 %conv781, 1
  %cmp8.not = icmp ult i32 %conv781, 2
  br i1 %cmp8.not, label %for.inc.for.body17.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.body17.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body17.preheader

for.body17.preheader:                             ; preds = %for.inc.for.body17.preheader_crit_edge, %entry.for.body17.preheader_crit_edge
  br label %for.body17

for.body17:                                       ; preds = %for.inc35.for.body17_crit_edge, %for.body17.preheader
  %i.182 = phi i32 [ %inc36, %for.inc35.for.body17_crit_edge ], [ 0, %for.body17.preheader ]
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext 430) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957458, i16 noundef zeroext 0) #4
  %call.i.i63 = tail call zeroext i16 @asd_read_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448) #4
  %11 = lshr i16 %call.i.i63, 8
  %conv5.i = trunc i16 %11 to i8
  %conv21 = or i8 %conv5.i, %conv
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext 430) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957458, i16 noundef zeroext 0) #4
  %call.i.i64 = tail call zeroext i16 @asd_read_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448) #4
  %12 = lshr i16 %call.i.i64, 8
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %11)
  %cmp.not.i = icmp eq i16 %12, %11
  br i1 %cmp.not.i, label %if.end35.i, label %for.body17.for.inc35_crit_edge

for.body17.for.inc35_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc35

if.end35.i:                                       ; preds = %for.body17
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957464, i16 noundef zeroext 430) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957458, i16 noundef zeroext 0) #4
  %call.i.i.i = tail call zeroext i16 @asd_read_reg_word(ptr noundef %asd_ha, i32 noundef -1207957448) #4
  call void @__sanitizer_cov_trace_cmp2(i16 %call.i.i.i, i16 %call.i.i64)
  %cmp.not.i.i = icmp eq i16 %call.i.i.i, %call.i.i64
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end35.i.for.inc35_crit_edge

if.end35.i.for.inc35_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc35

if.end.i.i:                                       ; preds = %if.end35.i
  %13 = and i16 %call.i.i64, 255
  %conv8.i = zext i8 %conv21 to i16
  %shl.i65 = shl nuw i16 %conv8.i, 8
  %or.i66 = or i16 %shl.i65, %13
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957452, i16 noundef zeroext %call.i.i64) #4
  tail call void @asd_write_reg_word(ptr noundef %asd_ha, i32 noundef -1207957456, i16 noundef zeroext %or.i66) #4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end.i.i
  %call3.i.i = tail call zeroext i8 @asd_read_reg_byte(ptr noundef %asd_ha, i32 noundef -1207957468) #4
  %conv4.i.i = zext i8 %call3.i.i to i32
  %and.i.i = and i32 %conv4.i.i, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.end.i.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  %and6.i.i = and i32 %conv4.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.else.i.i, label %do.end30

if.else.i.i:                                      ; preds = %do.end.i.i
  %and10.i.i = and i32 %conv4.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.else.i.i.for.inc35_crit_edge, label %for.end37

if.else.i.i.for.inc35_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc35

do.end30:                                         ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #7
  br label %do.end44

for.inc35:                                        ; preds = %if.else.i.i.for.inc35_crit_edge, %if.end35.i.for.inc35_crit_edge, %for.body17.for.inc35_crit_edge
  %inc36 = add nuw nsw i32 %i.182, 1
  %exitcond.not = icmp eq i32 %inc36, 12
  br i1 %exitcond.not, label %for.inc35.do.end44_crit_edge, label %for.inc35.for.body17_crit_edge

for.inc35.for.body17_crit_edge:                   ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body17

for.inc35.do.end44_crit_edge:                     ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end44

for.end37:                                        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ddb_lock, i32 noundef %call4) #4
  br label %if.end47

do.end44:                                         ; preds = %for.inc35.do.end44_crit_edge, %do.end30
  %err.1.ph = phi i32 [ -14, %do.end30 ], [ -11, %for.inc35.do.end44_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ddb_lock, i32 noundef %call4) #4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %err.1.ph) #7
  br label %if.end47

if.end47:                                         ; preds = %do.end44, %for.end37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @asd_download_seq(ptr noundef %asd_ha, ptr noundef %prog, i32 noundef %size, i8 noundef zeroext %lseq_mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %size, 16382
  %div = udiv i32 %sub, 16383
  %rem = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #7
  br label %cleanup64

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207955456) #4
  %and.i = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.for.body.i.preheader_crit_edge

if.end.for.body.i.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.preheader

if.end.i:                                         ; preds = %if.end
  %or.i = or i32 %call.i, 8
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207955456, i32 noundef %or.i) #4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end5.i.do.body.i_crit_edge, %if.end.i
  %count.0.i = phi i32 [ 1000, %if.end.i ], [ %dec.i, %if.end5.i.do.body.i_crit_edge ]
  %call1.i = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207955456) #4
  %and2.i = and i32 %call1.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %do.body.i.for.body.i.preheader_crit_edge

do.body.i.for.body.i.preheader_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.preheader

if.end5.i:                                        ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748) #4
  %dec.i = add nsw i32 %count.0.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %do.end8.i, label %if.end5.i.do.body.i_crit_edge

if.end5.i.do.body.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.end8.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #7
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %do.end8.i, %do.body.i.for.body.i.preheader_crit_edge, %if.end.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %lseq.05.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %lseq_mask.addr.04.i = phi i32 [ %2, %for.inc.i.for.body.i_crit_edge ], [ 255, %for.body.i.preheader ]
  %and.i109 = and i32 %lseq_mask.addr.04.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i109)
  %tobool.not.i110 = icmp eq i32 %and.i109, 0
  br i1 %tobool.not.i110, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %mul.i.i = shl i32 %lseq.05.i, 14
  %add.i.i = add nuw nsw i32 %mul.i.i, -1207828480
  %call.i.i = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef %add.i.i) #4
  %and.i.i = and i32 %call.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end.i.i:                                       ; preds = %if.then.i
  %or.i.i = or i32 %call.i.i, 8
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add.i.i, i32 noundef %or.i.i) #4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end12.i.i.do.body.i.i_crit_edge, %if.end.i.i
  %count.0.i.i = phi i32 [ 1000, %if.end.i.i ], [ %dec.i.i, %if.end12.i.i.do.body.i.i_crit_edge ]
  %call8.i.i = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef %add.i.i) #4
  %and9.i.i = and i32 %call8.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end12.i.i, label %do.body.i.i.for.inc.i_crit_edge

do.body.i.i.for.inc.i_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end12.i.i:                                     ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 214748) #4
  %dec.i.i = add nsw i32 %count.0.i.i, -1
  %cmp.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i, label %asd_seq_pause_lseq.exit.i, label %if.end12.i.i.do.body.i.i_crit_edge

if.end12.i.i.do.body.i.i_crit_edge:               ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i

asd_seq_pause_lseq.exit.i:                        ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call16.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %lseq.05.i) #7
  br label %asd_pause_lseq.exit

for.inc.i:                                        ; preds = %do.body.i.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %lseq.05.i, 1
  %2 = lshr i32 %lseq_mask.addr.04.i, 1
  %exitcond.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.i, label %for.inc.i.asd_pause_lseq.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.asd_pause_lseq.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %asd_pause_lseq.exit

asd_pause_lseq.exit:                              ; preds = %for.inc.i.asd_pause_lseq.exit_crit_edge, %asd_seq_pause_lseq.exit.i
  %call3 = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207959544) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207959544, i32 noundef 0) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207959548, i32 noundef 111) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207959524, i32 noundef 8323072) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207959528, i32 noundef 127) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_dma_token_cache to i32))
  %3 = load ptr, ptr @asd_dma_token_cache, align 4
  %call.i.i111 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 3264) #4
  %tobool.not.i112 = icmp eq ptr %call.i.i111, null
  br i1 %tobool.not.i112, label %asd_pause_lseq.exit.out.thread_crit_edge, label %if.then.i113

asd_pause_lseq.exit.out.thread_crit_edge:         ; preds = %asd_pause_lseq.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.thread

if.then.i113:                                     ; preds = %asd_pause_lseq.exit
  %size1.i = getelementptr inbounds %struct.asd_dma_tok, ptr %call.i.i111, i32 0, i32 2
  %4 = ptrtoint ptr %size1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16383, ptr %size1.i, align 8
  %5 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %asd_ha, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %dma_handle.i = getelementptr inbounds %struct.asd_dma_tok, ptr %call.i.i111, i32 0, i32 1
  %call.i1.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 16383, ptr noundef %dma_handle.i, i32 noundef 3264, i32 noundef 0) #4
  %7 = ptrtoint ptr %call.i.i111 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i1.i, ptr %call.i.i111, align 8
  %tobool5.not.i = icmp eq ptr %call.i1.i, null
  br i1 %tobool5.not.i, label %if.then6.i, label %do.end15

if.then6.i:                                       ; preds = %if.then.i113
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_dma_token_cache to i32))
  %8 = load ptr, ptr @asd_dma_token_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %8, ptr noundef nonnull %call.i.i111) #4
  br label %out.thread

out.thread:                                       ; preds = %if.then6.i, %asd_pause_lseq.exit.out.thread_crit_edge
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #7
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207959544, i32 noundef %call3) #4
  br label %cleanup64

do.end15:                                         ; preds = %if.then.i113
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %size) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div)
  %cmp145 = icmp sgt i32 %div, 0
  br i1 %cmp145, label %for.body.lr.ph, label %do.end15.for.end40_crit_edge

do.end15.for.end40_crit_edge:                     ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end40

for.body.lr.ph:                                   ; preds = %do.end15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %lseq_mask)
  %tobool24.not = icmp eq i8 %lseq_mask, 0
  %conv = zext i8 %lseq_mask to i32
  %shl = shl nuw nsw i32 %conv, 8
  %cond29 = select i1 %tobool24.not, i32 128, i32 %shl
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %page.0146 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.end.for.body_crit_edge ]
  %mul = mul nuw i32 %page.0146, 16383
  %sub18 = sub i32 %size, %mul
  %9 = tail call i32 @llvm.umin.i32(i32 %sub18, i32 16383)
  %10 = ptrtoint ptr %call.i.i111 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i.i111, align 8
  %add.ptr = getelementptr i8, ptr %prog, i32 %mul
  %12 = call ptr @memcpy(ptr %11, ptr %add.ptr, i32 %9)
  %13 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_handle.i, align 4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207959512, i32 noundef %14) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207959508, i32 noundef 0) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207959516, i32 noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page.0146)
  %tobool22.not = icmp eq i32 %page.0146, 0
  %or = select i1 %tobool22.not, i32 76, i32 68
  %or30 = or i32 %or, %cond29
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207959520, i32 noundef %or30) #4
  br label %for.body34

for.body34:                                       ; preds = %for.inc.for.body34_crit_edge, %for.body
  %i.0144 = phi i32 [ 100000, %for.body ], [ %dec, %for.inc.for.body34_crit_edge ]
  %call35 = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207959520) #4
  %and = and i32 %call35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %for.body34.for.end_crit_edge, label %for.inc

for.body34.for.end_crit_edge:                     ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc:                                          ; preds = %for.body34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #4
  %dec = add nsw i32 %i.0144, -1
  %cmp32 = icmp ugt i32 %i.0144, 1
  br i1 %cmp32, label %for.inc.for.body34_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body34_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body34

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body34.for.end_crit_edge
  %inc = add nuw nsw i32 %page.0146, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.end.for.end40_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end.for.end40_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end40

for.end40:                                        ; preds = %for.end.for.end40_crit_edge, %do.end15.for.end40_crit_edge
  %call41 = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207959548) #4
  %16 = and i32 %call41, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %lor.lhs.false46, label %for.end40.do.end53_crit_edge

for.end40.do.end53_crit_edge:                     ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end53

lor.lhs.false46:                                  ; preds = %for.end40
  %call47 = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef -1207959528) #4
  %and48 = and i32 %call47, 120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %lor.lhs.false46.out_crit_edge, label %lor.lhs.false46.do.end53_crit_edge

lor.lhs.false46.do.end53_crit_edge:               ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end53

lor.lhs.false46.out_crit_edge:                    ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

do.end53:                                         ; preds = %lor.lhs.false46.do.end53_crit_edge, %for.end40.do.end53_crit_edge
  %18 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %asd_ha, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44, i32 3
  %20 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i114 = icmp eq ptr %21, null
  br i1 %tobool.not.i.i114, label %if.end.i.i116, label %do.end53.pci_name.exit_crit_edge

do.end53.pci_name.exit_crit_edge:                 ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %pci_name.exit

if.end.i.i116:                                    ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i115 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %22 = ptrtoint ptr %dev.i115 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i115, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i116, %do.end53.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %23, %if.end.i.i116 ], [ %21, %do.end53.pci_name.exit_crit_edge ]
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %retval.0.i.i) #7
  br label %out

out:                                              ; preds = %pci_name.exit, %lor.lhs.false46.out_crit_edge
  %tobool58.not = phi i1 [ true, %lor.lhs.false46.out_crit_edge ], [ false, %pci_name.exit ]
  %err.0 = phi i32 [ 0, %lor.lhs.false46.out_crit_edge ], [ -19, %pci_name.exit ]
  %24 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %asd_ha, align 4
  %dev.i118 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %26 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size1.i, align 8
  %28 = ptrtoint ptr %call.i.i111 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i.i111, align 8
  %30 = ptrtoint ptr %dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_handle.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i118, i32 noundef %27, ptr noundef %29, i32 noundef %31, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @asd_dma_token_cache to i32))
  %32 = load ptr, ptr @asd_dma_token_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %32, ptr noundef nonnull %call.i.i111) #4
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef -1207959544, i32 noundef %call3) #4
  br i1 %tobool58.not, label %cond.false60, label %out.cleanup64_crit_edge

out.cleanup64_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup64

cond.false60:                                     ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %lseq_mask)
  %cmp.i = icmp eq i8 %lseq_mask, 0
  br i1 %cmp.i, label %if.then.i122, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %cond.false60
  %sub.i.i = add i32 %size, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.i.i)
  %cmp59.not.i.i = icmp ult i32 %sub.i.i, 4096
  %div47.i.i = lshr i32 %sub.i.i, 12
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %prog to i32
  br label %for.body.i126

if.then.i122:                                     ; preds = %cond.false60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp22.not.i.i = icmp eq i32 %size, 0
  br i1 %cmp22.not.i.i, label %if.then.i122.do.end7.i.i_crit_edge, label %if.then.i122.for.body.i.i_crit_edge

if.then.i122.for.body.i.i_crit_edge:              ; preds = %if.then.i122
  br label %for.body.i.i

if.then.i122.do.end7.i.i_crit_edge:               ; preds = %if.then.i122
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7.i.i

for.body.i.i:                                     ; preds = %for.inc.critedge.i.i.for.body.i.i_crit_edge, %if.then.i122.for.body.i.i_crit_edge
  %addr.025.i.i = phi i32 [ %add4.i.i, %for.inc.critedge.i.i.for.body.i.i_crit_edge ], [ -1207943168, %if.then.i122.for.body.i.i_crit_edge ]
  %i.024.i.i = phi i32 [ %add.i.i124, %for.inc.critedge.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i122.for.body.i.i_crit_edge ]
  %prog.023.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.critedge.i.i.for.body.i.i_crit_edge ], [ %prog, %if.then.i122.for.body.i.i_crit_edge ]
  %call.i.i123 = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef %addr.025.i.i) #4
  %33 = ptrtoint ptr %prog.023.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %prog.023.i.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %call.i.i123)
  %cmp1.not.i.i = icmp eq i32 %35, %call.i.i123
  br i1 %cmp1.not.i.i, label %for.inc.critedge.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %for.body.i.i
  %36 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %asd_ha, align 4
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44, i32 3
  %38 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %do.end.i.i.pci_name.exit.i.i_crit_edge

do.end.i.i.pci_name.exit.i.i_crit_edge:           ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pci_name.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %40 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i.i.i, align 4
  br label %pci_name.exit.i.i

pci_name.exit.i.i:                                ; preds = %if.end.i.i.i.i, %do.end.i.i.pci_name.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %41, %if.end.i.i.i.i ], [ %39, %do.end.i.i.pci_name.exit.i.i_crit_edge ]
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %retval.0.i.i.i.i, i32 noundef %i.024.i.i, i32 noundef %call.i.i123, i32 noundef %35) #7
  br label %cleanup64

for.inc.critedge.i.i:                             ; preds = %for.body.i.i
  %add.i.i124 = add i32 %i.024.i.i, 4
  %incdec.ptr.i.i = getelementptr i32, ptr %prog.023.i.i, i32 1
  %add4.i.i = add i32 %addr.025.i.i, 4
  %cmp.i.i = icmp ult i32 %add.i.i124, %size
  br i1 %cmp.i.i, label %for.inc.critedge.i.i.for.body.i.i_crit_edge, label %for.inc.critedge.i.i.do.end7.i.i_crit_edge

for.inc.critedge.i.i.do.end7.i.i_crit_edge:       ; preds = %for.inc.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7.i.i

for.inc.critedge.i.i.for.body.i.i_crit_edge:      ; preds = %for.inc.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

do.end7.i.i:                                      ; preds = %for.inc.critedge.i.i.do.end7.i.i_crit_edge, %if.then.i122.do.end7.i.i_crit_edge
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %size) #7
  br label %cleanup64

for.body.i126:                                    ; preds = %for.inc.i130.for.body.i126_crit_edge, %for.cond.preheader.i
  %lseq.047.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i129, %for.inc.i130.for.body.i126_crit_edge ]
  %lseq_mask.addr.046.i = phi i8 [ %lseq_mask, %for.cond.preheader.i ], [ %52, %for.inc.i130.for.body.i126_crit_edge ]
  %42 = and i8 %lseq_mask.addr.046.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i125 = icmp eq i8 %42, 0
  br i1 %tobool.not.i125, label %for.body.i126.for.inc.i130_crit_edge, label %if.then6.i127

for.body.i126.for.inc.i130_crit_edge:             ; preds = %for.body.i126
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i130

if.then6.i127:                                    ; preds = %for.body.i126
  br i1 %cmp59.not.i.i, label %if.then6.i127.asd_verify_lseq.exit.thread.i_crit_edge, label %for.body.lr.ph.i.i

if.then6.i127.asd_verify_lseq.exit.thread.i_crit_edge: ; preds = %if.then6.i127
  call void @__sanitizer_cov_trace_pc() #6
  br label %asd_verify_lseq.exit.thread.i

for.body.lr.ph.i.i:                               ; preds = %if.then6.i127
  %mul.i.i128 = shl i32 %lseq.047.i, 14
  %add2.i.i = add nuw nsw i32 %mul.i.i128, -1207828400
  %add9.i.i = add nuw nsw i32 %mul.i.i128, -1207824384
  br label %for.body.i24.i

for.body.i24.i:                                   ; preds = %for.inc19.i.i.for.body.i24.i_crit_edge, %for.body.lr.ph.i.i
  %size.addr.063.i.i = phi i32 [ %size, %for.body.lr.ph.i.i ], [ %size.addr.1.lcssa.i.i, %for.inc19.i.i.for.body.i24.i_crit_edge ]
  %prog.062.i.i = phi ptr [ %prog, %for.body.lr.ph.i.i ], [ %prog.1.lcssa.i.i, %for.inc19.i.i.for.body.i24.i_crit_edge ]
  %page.060.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc19.i.i.for.body.i24.i_crit_edge ]
  %shl.i.i = shl i32 %page.060.i.i, 8
  tail call void @asd_write_reg_dword(ptr noundef %asd_ha, i32 noundef %add2.i.i, i32 noundef %shl.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.063.i.i)
  %cmp4.not53.not.i.i = icmp eq i32 %size.addr.063.i.i, 0
  br i1 %cmp4.not53.not.i.i, label %for.body.i24.i.for.inc19.i.i_crit_edge, label %for.body.i24.i.for.body6.i.i_crit_edge

for.body.i24.i.for.body6.i.i_crit_edge:           ; preds = %for.body.i24.i
  br label %for.body6.i.i

for.body.i24.i.for.inc19.i.i_crit_edge:           ; preds = %for.body.i24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc19.i.i

for.body6.i.i:                                    ; preds = %for.inc.critedge.i34.i.for.body6.i.i_crit_edge, %for.body.i24.i.for.body6.i.i_crit_edge
  %size.addr.157.i.i = phi i32 [ %sub15.i.i, %for.inc.critedge.i34.i.for.body6.i.i_crit_edge ], [ %size.addr.063.i.i, %for.body.i24.i.for.body6.i.i_crit_edge ]
  %i.056.i.i = phi i32 [ %add14.i.i, %for.inc.critedge.i34.i.for.body6.i.i_crit_edge ], [ 0, %for.body.i24.i.for.body6.i.i_crit_edge ]
  %prog.155.i.i = phi ptr [ %incdec.ptr.i33.i, %for.inc.critedge.i34.i.for.body6.i.i_crit_edge ], [ %prog.062.i.i, %for.body.i24.i.for.body6.i.i_crit_edge ]
  %add10.i.i = add nuw nsw i32 %add9.i.i, %i.056.i.i
  %call.i25.i = tail call i32 @asd_read_reg_dword(ptr noundef %asd_ha, i32 noundef %add10.i.i) #4
  %43 = ptrtoint ptr %prog.155.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %prog.155.i.i, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %call.i25.i)
  %cmp11.not.i.i = icmp eq i32 %45, %call.i25.i
  br i1 %cmp11.not.i.i, label %for.inc.critedge.i34.i, label %do.end.i28.i

do.end.i28.i:                                     ; preds = %for.body6.i.i
  %46 = ptrtoint ptr %asd_ha to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %asd_ha, align 4
  %init_name.i.i.i26.i = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44, i32 3
  %48 = ptrtoint ptr %init_name.i.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %init_name.i.i.i26.i, align 8
  %tobool.not.i.i.i27.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.i.i27.i, label %if.end.i.i.i30.i, label %do.end.i28.i.asd_verify_lseq.exit.i_crit_edge

do.end.i28.i.asd_verify_lseq.exit.i_crit_edge:    ; preds = %do.end.i28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %asd_verify_lseq.exit.i

if.end.i.i.i30.i:                                 ; preds = %do.end.i28.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i.i29.i = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %50 = ptrtoint ptr %dev.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i.i29.i, align 4
  br label %asd_verify_lseq.exit.i

for.inc.critedge.i34.i:                           ; preds = %for.body6.i.i
  %add14.i.i = add nuw nsw i32 %i.056.i.i, 4
  %incdec.ptr.i33.i = getelementptr i32, ptr %prog.155.i.i, i32 1
  %sub15.i.i = add i32 %size.addr.157.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub15.i.i)
  %cmp4.not.i.i = icmp ne i32 %sub15.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4092, i32 %i.056.i.i)
  %cmp5.i.i = icmp ult i32 %i.056.i.i, 4092
  %or.cond.i.i = select i1 %cmp4.not.i.i, i1 %cmp5.i.i, i1 false
  br i1 %or.cond.i.i, label %for.inc.critedge.i34.i.for.body6.i.i_crit_edge, label %for.inc.critedge.i34.i.for.inc19.i.i_crit_edge

for.inc.critedge.i34.i.for.inc19.i.i_crit_edge:   ; preds = %for.inc.critedge.i34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc19.i.i

for.inc.critedge.i34.i.for.body6.i.i_crit_edge:   ; preds = %for.inc.critedge.i34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body6.i.i

for.inc19.i.i:                                    ; preds = %for.inc.critedge.i34.i.for.inc19.i.i_crit_edge, %for.body.i24.i.for.inc19.i.i_crit_edge
  %prog.1.lcssa.i.i = phi ptr [ %prog.062.i.i, %for.body.i24.i.for.inc19.i.i_crit_edge ], [ %incdec.ptr.i33.i, %for.inc.critedge.i34.i.for.inc19.i.i_crit_edge ]
  %size.addr.1.lcssa.i.i = phi i32 [ 0, %for.body.i24.i.for.inc19.i.i_crit_edge ], [ %sub15.i.i, %for.inc.critedge.i34.i.for.inc19.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %page.060.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %div47.i.i
  br i1 %exitcond.not.i.i, label %asd_verify_lseq.exit.thread.loopexit.i, label %for.inc19.i.i.for.body.i24.i_crit_edge

for.inc19.i.i.for.body.i24.i_crit_edge:           ; preds = %for.inc19.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i24.i

asd_verify_lseq.exit.thread.loopexit.i:           ; preds = %for.inc19.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %.pre.i = ptrtoint ptr %prog.1.lcssa.i.i to i32
  br label %asd_verify_lseq.exit.thread.i

asd_verify_lseq.exit.thread.i:                    ; preds = %asd_verify_lseq.exit.thread.loopexit.i, %if.then6.i127.asd_verify_lseq.exit.thread.i_crit_edge
  %sub.ptr.lhs.cast.i.pre-phi.i = phi i32 [ %.pre.i, %asd_verify_lseq.exit.thread.loopexit.i ], [ %sub.ptr.rhs.cast.i.i, %if.then6.i127.asd_verify_lseq.exit.thread.i_crit_edge ]
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.pre-phi.i, %sub.ptr.rhs.cast.i.i
  %call25.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %lseq.047.i, i32 noundef %sub.ptr.sub.i.i) #7
  br label %for.inc.i130

asd_verify_lseq.exit.i:                           ; preds = %if.end.i.i.i30.i, %do.end.i28.i.asd_verify_lseq.exit.i_crit_edge
  %retval.0.i.i.i31.i = phi ptr [ %51, %if.end.i.i.i30.i ], [ %49, %do.end.i28.i.asd_verify_lseq.exit.i_crit_edge ]
  %call13.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %retval.0.i.i.i31.i, i32 noundef %lseq.047.i, i32 noundef %page.060.i.i, i32 noundef %i.056.i.i) #7
  br label %cleanup64

for.inc.i130:                                     ; preds = %asd_verify_lseq.exit.thread.i, %for.body.i126.for.inc.i130_crit_edge
  %inc.i129 = add nuw nsw i32 %lseq.047.i, 1
  %52 = lshr i8 %lseq_mask.addr.046.i, 1
  %cmp3.not.i = icmp ult i8 %lseq_mask.addr.046.i, 2
  br i1 %cmp3.not.i, label %for.inc.i130.cleanup64_crit_edge, label %for.inc.i130.for.body.i126_crit_edge

for.inc.i130.for.body.i126_crit_edge:             ; preds = %for.inc.i130
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i126

for.inc.i130.cleanup64_crit_edge:                 ; preds = %for.inc.i130
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup64

cleanup64:                                        ; preds = %for.inc.i130.cleanup64_crit_edge, %asd_verify_lseq.exit.i, %do.end7.i.i, %pci_name.exit.i.i, %out.cleanup64_crit_edge, %out.thread, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ %err.0, %out.cleanup64_crit_edge ], [ -12, %out.thread ], [ 0, %do.end7.i.i ], [ -1, %pci_name.exit.i.i ], [ -1, %asd_verify_lseq.exit.i ], [ 0, %for.inc.i130.cleanup64_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asd_read_reg_dword(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asd_write_reg_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asd_write_reg_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @asd_read_reg_word(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @asd_write_reg_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @asd_read_reg_byte(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !151, !153, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165}
!llvm.module.flags = !{!166, !167, !168, !169, !170, !171, !172, !173}
!llvm.ident = !{!174}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 1306, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @asd_init_seqs._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @asd_init_seqs._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 1313, i32 3}
!9 = !{ptr @asd_init_seqs._entry.4, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @asd_init_seqs._entry_ptr.6, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 1331, i32 3}
!13 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @asd_start_seqs._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @asd_start_seqs._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 1340, i32 4}
!18 = !{ptr @asd_start_seqs._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @asd_start_seqs._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 1391, i32 4}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @asd_update_port_links._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @asd_update_port_links._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 1398, i32 3}
!27 = !{ptr @asd_update_port_links._entry.14, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @asd_update_port_links._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_firmware292, !30, !"__UNIQUE_ID_firmware292", i1 false, i1 false}
!30 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 1401, i32 1}
!31 = !{ptr @sequencer_fw, !32, !"sequencer_fw", i1 false, i1 false}
!32 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 29, i32 31}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 1259, i32 3}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @asd_request_firmware._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @asd_request_firmware._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 1265, i32 3}
!40 = !{ptr @asd_request_firmware._entry.19, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @asd_request_firmware._entry_ptr.21, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 1269, i32 2}
!44 = !{ptr @asd_request_firmware._entry.22, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @asd_request_firmware._entry_ptr.24, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 1273, i32 3}
!48 = !{ptr @asd_request_firmware._entry.25, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @asd_request_firmware._entry_ptr.27, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @mode2_task, !51, !"mode2_task", i1 false, i1 false}
!51 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 30, i32 64}
!52 = !{ptr @cseq_idle_loop, !53, !"cseq_idle_loop", i1 false, i1 false}
!53 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 31, i32 2}
!54 = !{ptr @lseq_idle_loop, !55, !"lseq_idle_loop", i1 false, i1 false}
!55 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 31, i32 18}
!56 = distinct !{null, !57, !"cseq_vecs", i1 false, i1 false}
!57 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 30, i32 12}
!58 = distinct !{null, !59, !"lseq_vecs", i1 false, i1 false}
!59 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 30, i32 38}
!60 = !{ptr @cseq_code, !61, !"cseq_code", i1 false, i1 false}
!61 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 32, i32 18}
!62 = !{ptr @cseq_code_size, !63, !"cseq_code_size", i1 false, i1 false}
!63 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 33, i32 12}
!64 = !{ptr @lseq_code, !65, !"lseq_code", i1 false, i1 false}
!65 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 32, i32 30}
!66 = !{ptr @lseq_code_size, !67, !"lseq_code_size", i1 false, i1 false}
!67 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 33, i32 28}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 386, i32 3}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @asd_seq_download_seqs._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @asd_seq_download_seqs._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 391, i32 2}
!75 = !{ptr @asd_seq_download_seqs._entry.30, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @asd_seq_download_seqs._entry_ptr.32, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 394, i32 3}
!79 = !{ptr @asd_seq_download_seqs._entry.33, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @asd_seq_download_seqs._entry_ptr.35, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 401, i32 2}
!83 = !{ptr @asd_seq_download_seqs._entry.36, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @asd_seq_download_seqs._entry_ptr.38, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 417, i32 3}
!87 = !{ptr @asd_seq_download_seqs._entry.39, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @asd_seq_download_seqs._entry_ptr.41, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 281, i32 3}
!91 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @asd_download_seq._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @asd_download_seq._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 298, i32 3}
!96 = !{ptr @asd_download_seq._entry.44, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @asd_download_seq._entry_ptr.46, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 302, i32 2}
!100 = !{ptr @asd_download_seq._entry.47, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @asd_download_seq._entry_ptr.49, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 329, i32 3}
!104 = !{ptr @asd_download_seq._entry.50, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @asd_download_seq._entry_ptr.52, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 63, i32 2}
!108 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @asd_pause_cseq._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @asd_pause_cseq._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 118, i32 2}
!113 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @asd_seq_pause_lseq._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @asd_seq_pause_lseq._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 185, i32 4}
!118 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @asd_verify_cseq._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @asd_verify_cseq._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 192, i32 2}
!123 = !{ptr @asd_verify_cseq._entry.59, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @asd_verify_cseq._entry_ptr.61, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 227, i32 5}
!127 = !{ptr @.str.63, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @asd_verify_lseq._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @asd_verify_lseq._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 235, i32 2}
!132 = !{ptr @asd_verify_lseq._entry.64, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @asd_verify_lseq._entry_ptr.66, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 904, i32 2}
!136 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @asd_init_scb_sites._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @asd_init_scb_sites._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.70, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 905, i32 2}
!141 = !{ptr @asd_init_scb_sites._entry.69, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @asd_init_scb_sites._entry_ptr.71, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.73, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 906, i32 2}
!145 = !{ptr @asd_init_scb_sites._entry.72, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @asd_init_scb_sites._entry_ptr.74, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @last_scb_site_no, !148, !"last_scb_site_no", i1 false, i1 false}
!148 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 36, i32 12}
!149 = !{ptr @first_scb_site_no, !150, !"first_scb_site_no", i1 false, i1 false}
!150 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 35, i32 12}
!151 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 552, i32 2}
!153 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @asd_init_cseq_mdp._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @asd_init_cseq_mdp._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 90, i32 2}
!158 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @asd_unpause_cseq._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @asd_unpause_cseq._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.79, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/scsi/aic94xx/aic94xx_seq.c", i32 167, i32 2}
!163 = !{ptr @.str.80, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @asd_seq_unpause_lseq._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @asd_seq_unpause_lseq._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{i32 1, !"wchar_size", i32 2}
!167 = !{i32 1, !"min_enum_size", i32 4}
!168 = !{i32 8, !"branch-target-enforcement", i32 0}
!169 = !{i32 8, !"sign-return-address", i32 0}
!170 = !{i32 8, !"sign-return-address-all", i32 0}
!171 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!172 = !{i32 7, !"uwtable", i32 1}
!173 = !{i32 7, !"frame-pointer", i32 2}
!174 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
