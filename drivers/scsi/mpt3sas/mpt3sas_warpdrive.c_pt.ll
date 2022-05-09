; ModuleID = '/llk/IR_all_yes/drivers/scsi/mpt3sas/mpt3sas_warpdrive.c_pt.bc'
source_filename = "../drivers/scsi/mpt3sas/mpt3sas_warpdrive.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct._MPI2_CONFIG_PAGE_RAID_VOL_1 = type { %struct._MPI2_CONFIG_PAGE_HEADER, i16, i16, [24 x i8], [16 x i8], i64, i32, i32 }
%struct._MPI2_CONFIG_PAGE_HEADER = type { i8, i8, i8, i8 }
%struct._MPI2_CONFIG_REPLY = type { i8, i8, i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i32, %struct._MPI2_CONFIG_PAGE_HEADER }
%struct._MPI2_CONFIG_PAGE_RD_PDISK_0 = type { %struct._MPI2_CONFIG_PAGE_HEADER, i16, i8, i8, %struct._MPI2_RAIDPHYSDISK0_SETTINGS, i32, %struct._MPI2_RAIDPHYSDISK0_INQUIRY_DATA, i32, i8, i8, i8, i8, i32, i64, i64, i64, i16, i16, i32 }
%struct._MPI2_RAIDPHYSDISK0_SETTINGS = type { i16, i8, i8 }
%struct._MPI2_RAIDPHYSDISK0_INQUIRY_DATA = type { [8 x i8], [16 x i8], [4 x i8], [32 x i8] }
%struct.MPT3SAS_ADAPTER = type { %struct.list_head, ptr, i8, i32, [32 x i8], [24 x i8], [64 x i8], ptr, ptr, i32, i32, i32, i8, i32, i8, [20 x i8], ptr, %struct.delayed_work, [20 x i8], ptr, %struct.spinlock, %struct.list_head, ptr, i8, i32, i8, i16, i8, i8, %struct.mutex, %struct.spinlock, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i16, ptr, i16, ptr, i32, ptr, i32, i8, i32, i32, %struct.atomic64_t, %struct.atomic64_t, i8, i16, i8, i8, i32, i32, i32, i8, i8, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct._internal_cmd, %struct._internal_cmd, %struct._internal_cmd, %struct._internal_cmd, %struct._internal_cmd, %struct._internal_cmd, %struct._internal_cmd, ptr, ptr, ptr, ptr, i16, i16, ptr, ptr, ptr, [4 x i32], i32, ptr, [4 x i32], i8, i8, i16, i16, i16, i16, i8, %struct.mpt3sas_facts, %struct.mpt3sas_facts, ptr, %struct._MPI2_CONFIG_PAGE_MAN_0, %struct.Mpi2ManufacturingPage10_t, %struct.Mpi2ManufacturingPage11_t, %struct._MPI2_CONFIG_PAGE_BIOS_2, %struct._MPI2_CONFIG_PAGE_BIOS_3, %struct._MPI2_CONFIG_PAGE_IOC_8, %struct._MPI2_CONFIG_PAGE_IO_UNIT_0, %struct._MPI2_CONFIG_PAGE_IO_UNIT_1, %struct._MPI2_CONFIG_PAGE_IO_UNIT_8, %struct._MPI2_CONFIG_PAGE_IOC_1, %struct._boot_device, %struct._boot_device, %struct._boot_device, %struct._sas_node, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, i8, i16, i32, i32, ptr, ptr, i16, ptr, i16, i16, ptr, i32, ptr, i16, i16, i16, i16, ptr, i32, i32, ptr, %struct.spinlock, i32, %struct.wait_queue_head, ptr, ptr, i32, ptr, %struct.list_head, ptr, i32, i16, i16, i16, i32, i16, i16, i16, ptr, i32, i16, ptr, %struct.list_head, i16, ptr, i32, i16, ptr, %struct.list_head, ptr, i32, ptr, i16, ptr, i32, i32, i32, ptr, i16, ptr, i32, ptr, i32, i16, ptr, i8, i8, i8, ptr, ptr, ptr, i32, i8, %struct.list_head, i8, i8, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, %struct.mutex, [3 x ptr], [3 x i32], [3 x i32], [3 x i8], [3 x i32], [3 x [23 x i32]], [3 x i32], i32, i32, %struct.htb_rel_query, i8, i8, i8, i8, i8, i8, %struct.spinlock, i8, i8, ptr, %struct.SL_WH_MASTER_TRIGGER_T, %struct.SL_WH_EVENT_TRIGGERS_T, %struct.SL_WH_SCSI_TRIGGERS_T, %struct.SL_WH_MPI_TRIGGERS_T, i8, ptr, i16, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct._internal_cmd = type { %struct.mutex, %struct.completion, ptr, ptr, i16, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mpt3sas_facts = type { i16, i16, i8, i8, i8, i16, i16, i32, i8, i8, i8, i8, i16, i16, i32, %union.mpi3_version_union, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i16, i16, i16, i8 }
%union.mpi3_version_union = type { i32 }
%struct._MPI2_CONFIG_PAGE_MAN_0 = type { %struct._MPI2_CONFIG_PAGE_HEADER, [16 x i8], [8 x i8], [16 x i8], [16 x i8], [16 x i8] }
%struct.Mpi2ManufacturingPage10_t = type { %struct._MPI2_CONFIG_PAGE_HEADER, i8, i8, i16, i32, i32, i32, i32, i32, i32, [18 x i32] }
%struct.Mpi2ManufacturingPage11_t = type { %struct._MPI2_CONFIG_PAGE_HEADER, i32, i8, i8, i8, i8, [8 x i32], i16, i8, i8, [7 x i32], i8, i8, i8, i8, i16, i16, i8, i8, i16, i32 }
%struct._MPI2_CONFIG_PAGE_BIOS_2 = type <{ %struct._MPI2_CONFIG_PAGE_HEADER, i32, i32, i32, i32, i32, i32, i8, i8, i16, %union._MPI2_MPI2_BIOSPAGE2_BOOT_DEVICE, i8, i8, i16, %union._MPI2_MPI2_BIOSPAGE2_BOOT_DEVICE, i8, i8, i16, %union._MPI2_MPI2_BIOSPAGE2_BOOT_DEVICE }>
%union._MPI2_MPI2_BIOSPAGE2_BOOT_DEVICE = type { %struct._MPI2_BOOT_DEVICE_SAS_WWID }
%struct._MPI2_BOOT_DEVICE_SAS_WWID = type { i64, [8 x i8], i32, i32 }
%struct._MPI2_CONFIG_PAGE_BIOS_3 = type { %struct._MPI2_CONFIG_PAGE_HEADER, i32, i32, [4 x %struct._MPI2_ADAPTER_INFO], i32, [4 x %struct._MPI2_ADAPTER_ORDER_AUX] }
%struct._MPI2_ADAPTER_INFO = type { i8, i8, i16 }
%struct._MPI2_ADAPTER_ORDER_AUX = type { i64, i32, i32 }
%struct._MPI2_CONFIG_PAGE_IOC_8 = type { %struct._MPI2_CONFIG_PAGE_HEADER, i8, i8, i16, i16, i16, i16, i16, i16, i16, i32 }
%struct._MPI2_CONFIG_PAGE_IO_UNIT_0 = type <{ %struct._MPI2_CONFIG_PAGE_HEADER, i64, %union._MPI2_VERSION_UNION, %union._MPI2_VERSION_UNION }>
%union._MPI2_VERSION_UNION = type { i32 }
%struct._MPI2_CONFIG_PAGE_IO_UNIT_1 = type { %struct._MPI2_CONFIG_PAGE_HEADER, i32 }
%struct._MPI2_CONFIG_PAGE_IO_UNIT_8 = type { %struct._MPI2_CONFIG_PAGE_HEADER, i32, i32, i8, i8, i16, [1 x %struct._MPI2_IOUNIT8_SENSOR] }
%struct._MPI2_IOUNIT8_SENSOR = type { i16, i16, [4 x i16], i32, i32, i32 }
%struct._MPI2_CONFIG_PAGE_IOC_1 = type { %struct._MPI2_CONFIG_PAGE_HEADER, i32, i32, i8, i8, i8, i8, i32, i32 }
%struct._boot_device = type { i32, ptr }
%struct._sas_node = type { %struct.list_head, ptr, i8, i64, i16, i64, i16, i64, i8, i8, ptr, ptr, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.htb_rel_query = type { i16, i16, i32, [2 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.SL_WH_MASTER_TRIGGER_T = type { i32 }
%struct.SL_WH_EVENT_TRIGGERS_T = type { i32, [20 x %struct.SL_WH_EVENT_TRIGGER_T] }
%struct.SL_WH_EVENT_TRIGGER_T = type { i16, i16 }
%struct.SL_WH_SCSI_TRIGGERS_T = type { i32, [20 x %struct.SL_WH_SCSI_TRIGGER_T] }
%struct.SL_WH_SCSI_TRIGGER_T = type { i8, i8, i8, i8 }
%struct.SL_WH_MPI_TRIGGERS_T = type { i32, [20 x %struct.SL_WH_MPI_TRIGGER_T] }
%struct.SL_WH_MPI_TRIGGER_T = type { i16, i16, i32 }
%struct.list_head = type { ptr, ptr }
%struct._raid_device = type { %struct.list_head, ptr, ptr, i64, i16, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i64, i32, i32, [8 x i16] }
%struct._MPI2_CONFIG_PAGE_RAID_VOL_0 = type <{ %struct._MPI2_CONFIG_PAGE_HEADER, i16, i8, i8, i32, %struct._MPI2_RAIDVOL0_SETTINGS, i64, i32, i16, i16, i8, i8, i16, i8, i8, i8, i8, [1 x %struct._MPI2_RAIDVOL0_PHYS_DISK] }>
%struct._MPI2_RAIDVOL0_SETTINGS = type { i16, i8, i8 }
%struct._MPI2_RAIDVOL0_PHYS_DISK = type { i8, i8, i8, i8 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._MPI25_SCSI_IO_REQUEST = type { i16, i8, i8, i16, i8, i8, i8, i8, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i16, i16, i16, i16, i32, i16, i16, [8 x i8], i32, %union._MPI25_SCSI_IO_CDB_UNION, %union._MPI25_SGE_IO_UNION }
%union._MPI25_SCSI_IO_CDB_UNION = type { %struct._MPI2_IEEE_SGE_SIMPLE64, [16 x i8] }
%struct._MPI2_IEEE_SGE_SIMPLE64 = type { i64, i32, i16, i8, i8 }
%union._MPI25_SGE_IO_UNION = type { %struct._MPI2_IEEE_SGE_SIMPLE64 }

@mpt3sas_init_warpdrive_properties._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\016%s: WarpDrive : Direct IO is disabled globally as drives are exposed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mpt3sas_init_warpdrive_properties\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/scsi/mpt3sas/mpt3sas_warpdrive.c\00", [55 x i8] zeroinitializer }, align 32
@mpt3sas_init_warpdrive_properties._entry_ptr = internal global ptr @mpt3sas_init_warpdrive_properties._entry, section ".printk_index", align 4
@mpt3sas_init_warpdrive_properties._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016%s: WarpDrive : Direct IO is disabled globally as number of drives > 1\0A\00", [54 x i8] zeroinitializer }, align 32
@mpt3sas_init_warpdrive_properties._entry_ptr.5 = internal global ptr @mpt3sas_init_warpdrive_properties._entry.3, section ".printk_index", align 4
@mpt3sas_init_warpdrive_properties._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016%s: WarpDrive : Direct IO is disabled Failure in computing number of drives\0A\00", [49 x i8] zeroinitializer }, align 32
@mpt3sas_init_warpdrive_properties._entry_ptr.8 = internal global ptr @mpt3sas_init_warpdrive_properties._entry.6, section ".printk_index", align 4
@mpt3sas_init_warpdrive_properties._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\016%s: WarpDrive : Direct IO is disabled Memory allocation failure for RVPG0\0A\00", [51 x i8] zeroinitializer }, align 32
@mpt3sas_init_warpdrive_properties._entry_ptr.11 = internal global ptr @mpt3sas_init_warpdrive_properties._entry.9, section ".printk_index", align 4
@mpt3sas_init_warpdrive_properties._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016%s: WarpDrive : Direct IO is disabled Failure in retrieving RVPG0\0A\00", [59 x i8] zeroinitializer }, align 32
@mpt3sas_init_warpdrive_properties._entry_ptr.14 = internal global ptr @mpt3sas_init_warpdrive_properties._entry.12, section ".printk_index", align 4
@mpt3sas_init_warpdrive_properties._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"\014%s: WarpDrive : Direct IO is disabled for the drive with handle(0x%04x): num_mem=%d, max_mem_allowed=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@mpt3sas_init_warpdrive_properties._entry_ptr.17 = internal global ptr @mpt3sas_init_warpdrive_properties._entry.15, section ".printk_index", align 4
@mpt3sas_init_warpdrive_properties._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [127 x i8], [33 x i8] } { [127 x i8] c"\016%s: WarpDrive : Direct IO is disabled for the drive with handle(0x%04x) member handle retrieval failed for member number=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@mpt3sas_init_warpdrive_properties._entry_ptr.20 = internal global ptr @mpt3sas_init_warpdrive_properties._entry.18, section ".printk_index", align 4
@mpt3sas_init_warpdrive_properties._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [128 x i8], [32 x i8] } { [128 x i8] c"\016%s: WarpDrive : Direct IO is disabled for the drive with handle(0x%04x) member handle (0x%04x) unsupported max lba 0x%016llx\0A\00", [32 x i8] zeroinitializer }, align 32
@mpt3sas_init_warpdrive_properties._entry_ptr.23 = internal global ptr @mpt3sas_init_warpdrive_properties._entry.21, section ".printk_index", align 4
@mpt3sas_init_warpdrive_properties._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"\016%s: WarpDrive : Direct IO is disabled for the drive with handle(0x%04x): type=%d, s_sz=%uK, blk_size=%u\0A\00", [53 x i8] zeroinitializer }, align 32
@mpt3sas_init_warpdrive_properties._entry_ptr.26 = internal global ptr @mpt3sas_init_warpdrive_properties._entry.24, section ".printk_index", align 4
@mpt3sas_init_warpdrive_properties._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\016%s: WarpDrive : Direct IO is disabled for the drive with handle(0x%04x) invalid stripe sz %uK\0A\00", [63 x i8] zeroinitializer }, align 32
@mpt3sas_init_warpdrive_properties._entry_ptr.29 = internal global ptr @mpt3sas_init_warpdrive_properties._entry.27, section ".printk_index", align 4
@mpt3sas_init_warpdrive_properties._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\016%s: WarpDrive : Direct IO is disabled for the drive with handle(0x%04x) invalid block sz %u\0A\00", [33 x i8] zeroinitializer }, align 32
@mpt3sas_init_warpdrive_properties._entry_ptr.32 = internal global ptr @mpt3sas_init_warpdrive_properties._entry.30, section ".printk_index", align 4
@mpt3sas_init_warpdrive_properties._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016%s: WarpDrive : Direct IO is Enabled for the drive with handle(0x%04x)\0A\00", [54 x i8] zeroinitializer }, align 32
@mpt3sas_init_warpdrive_properties._entry_ptr.35 = internal global ptr @mpt3sas_init_warpdrive_properties._entry.33, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 40, i64 42, i64 136, i64 138]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 8, i64 40, i64 42]
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 130, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 135, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 140, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 148, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 154, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 164, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 175, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 183, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 198, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 209, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 219, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [44 x i8] c"../drivers/scsi/mpt3sas/mpt3sas_warpdrive.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 226, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @mpt3sas_init_warpdrive_properties._entry, ptr @mpt3sas_init_warpdrive_properties._entry.12, ptr @mpt3sas_init_warpdrive_properties._entry.15, ptr @mpt3sas_init_warpdrive_properties._entry.18, ptr @mpt3sas_init_warpdrive_properties._entry.21, ptr @mpt3sas_init_warpdrive_properties._entry.24, ptr @mpt3sas_init_warpdrive_properties._entry.27, ptr @mpt3sas_init_warpdrive_properties._entry.3, ptr @mpt3sas_init_warpdrive_properties._entry.30, ptr @mpt3sas_init_warpdrive_properties._entry.33, ptr @mpt3sas_init_warpdrive_properties._entry.6, ptr @mpt3sas_init_warpdrive_properties._entry.9, ptr @mpt3sas_init_warpdrive_properties._entry_ptr, ptr @mpt3sas_init_warpdrive_properties._entry_ptr.11, ptr @mpt3sas_init_warpdrive_properties._entry_ptr.14, ptr @mpt3sas_init_warpdrive_properties._entry_ptr.17, ptr @mpt3sas_init_warpdrive_properties._entry_ptr.20, ptr @mpt3sas_init_warpdrive_properties._entry_ptr.23, ptr @mpt3sas_init_warpdrive_properties._entry_ptr.26, ptr @mpt3sas_init_warpdrive_properties._entry_ptr.29, ptr @mpt3sas_init_warpdrive_properties._entry_ptr.32, ptr @mpt3sas_init_warpdrive_properties._entry_ptr.35, ptr @mpt3sas_init_warpdrive_properties._entry_ptr.5, ptr @mpt3sas_init_warpdrive_properties._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_init_warpdrive_properties._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_init_warpdrive_properties._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_init_warpdrive_properties._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_init_warpdrive_properties._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_init_warpdrive_properties._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_init_warpdrive_properties._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_init_warpdrive_properties._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 127, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_init_warpdrive_properties._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_init_warpdrive_properties._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_init_warpdrive_properties._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_init_warpdrive_properties._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpt3sas_init_warpdrive_properties._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @mpt3sas_get_num_volumes(ptr noundef %ioc) local_unnamed_addr #0 align 64 {
entry:
  %vol_pg1 = alloca %struct._MPI2_CONFIG_PAGE_RAID_VOL_1, align 4
  %mpi_reply = alloca %struct._MPI2_CONFIG_REPLY, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vol_pg1) #6
  %0 = call ptr @memset(ptr %vol_pg1, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mpi_reply) #6
  %1 = getelementptr inbounds %struct._MPI2_CONFIG_REPLY, ptr %mpi_reply, i32 0, i32 11
  %2 = call ptr @memset(ptr %mpi_reply, i32 255, i32 24)
  %call6 = call i32 @mpt3sas_config_get_raid_volume_pg1(ptr noundef %ioc, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %vol_pg1, i32 noundef 0, i32 noundef 65535) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not7 = icmp eq i32 %call6, 0
  br i1 %tobool.not7, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %DevHandle = getelementptr inbounds %struct._MPI2_CONFIG_PAGE_RAID_VOL_1, ptr %vol_pg1, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %vol_cnt.08 = phi i8 [ 0, %while.body.lr.ph ], [ %inc, %if.end.while.body_crit_edge ]
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %1, align 2
  %5 = and i16 %4, -129
  call void @__sanitizer_cov_trace_const_cmp2(i16 8704, i16 %5)
  %cmp = icmp eq i16 %5, 8704
  br i1 %cmp, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end:                                           ; preds = %while.body
  %inc = add i8 %vol_cnt.08, 1
  %6 = ptrtoint ptr %DevHandle to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %DevHandle, align 4
  %8 = call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  %call = call i32 @mpt3sas_config_get_raid_volume_pg1(ptr noundef %ioc, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %vol_pg1, i32 noundef 0, i32 noundef %conv) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %vol_cnt.0.lcssa = phi i8 [ 0, %entry.while.end_crit_edge ], [ %vol_cnt.08, %while.body.while.end_crit_edge ], [ %inc, %if.end.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mpi_reply) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vol_pg1) #6
  ret i8 %vol_cnt.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt3sas_config_get_raid_volume_pg1(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpt3sas_init_warpdrive_properties(ptr noundef %ioc, ptr nocapture noundef %raid_device) local_unnamed_addr #0 align 64 {
entry:
  %vol_pg1.i = alloca %struct._MPI2_CONFIG_PAGE_RAID_VOL_1, align 4
  %mpi_reply.i = alloca %struct._MPI2_CONFIG_REPLY, align 4
  %pd_pg0 = alloca %struct._MPI2_CONFIG_PAGE_RD_PDISK_0, align 4
  %mpi_reply = alloca %struct._MPI2_CONFIG_REPLY, align 4
  %num_pds = alloca i8, align 1
  %stripe_sz = alloca i32, align 4
  %block_sz = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %pd_pg0) #6
  %0 = call ptr @memset(ptr %pd_pg0, i32 255, i32 120)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mpi_reply) #6
  %1 = call ptr @memset(ptr %mpi_reply, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %num_pds) #6
  %2 = ptrtoint ptr %num_pds to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %num_pds, align 1, !annotation !59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stripe_sz) #6
  %3 = ptrtoint ptr %stripe_sz to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %stripe_sz, align 4, !annotation !59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %block_sz) #6
  %4 = ptrtoint ptr %block_sz to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %block_sz, align 4, !annotation !59
  %is_warpdrive = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 224
  %5 = ptrtoint ptr %is_warpdrive to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_warpdrive, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mfg_pg10_hide_flag = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 227
  %7 = ptrtoint ptr %mfg_pg10_hide_flag to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mfg_pg10_hide_flag, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp = icmp eq i8 %8, 1
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vol_pg1.i) #6
  %9 = call ptr @memset(ptr %vol_pg1.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mpi_reply.i) #6
  %10 = getelementptr inbounds %struct._MPI2_CONFIG_REPLY, ptr %mpi_reply.i, i32 0, i32 11
  %11 = call ptr @memset(ptr %mpi_reply.i, i32 255, i32 24)
  %call6.i = call i32 @mpt3sas_config_get_raid_volume_pg1(ptr noundef %ioc, ptr noundef nonnull %mpi_reply.i, ptr noundef nonnull %vol_pg1.i, i32 noundef 0, i32 noundef 65535) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not7.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not7.i, label %while.body.lr.ph.i, label %mpt3sas_get_num_volumes.exit.thread

mpt3sas_get_num_volumes.exit.thread:              ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mpi_reply.i) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vol_pg1.i) #6
  br label %if.end16

while.body.lr.ph.i:                               ; preds = %if.end3
  %DevHandle.i = getelementptr inbounds %struct._MPI2_CONFIG_PAGE_RAID_VOL_1, ptr %vol_pg1.i, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %vol_cnt.08.i = phi i8 [ 0, %while.body.lr.ph.i ], [ %inc.i, %if.end.i.while.body.i_crit_edge ]
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %10, align 2
  %14 = and i16 %13, -129
  call void @__sanitizer_cov_trace_const_cmp2(i16 8704, i16 %14)
  %cmp.i = icmp eq i16 %14, 8704
  br i1 %cmp.i, label %while.body.i.mpt3sas_get_num_volumes.exit_crit_edge, label %if.end.i

while.body.i.mpt3sas_get_num_volumes.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mpt3sas_get_num_volumes.exit

if.end.i:                                         ; preds = %while.body.i
  %inc.i = add i8 %vol_cnt.08.i, 1
  %15 = ptrtoint ptr %DevHandle.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %DevHandle.i, align 4
  %17 = call i16 @llvm.bswap.i16(i16 %16) #6
  %conv.i = zext i16 %17 to i32
  %call.i = call i32 @mpt3sas_config_get_raid_volume_pg1(ptr noundef %ioc, ptr noundef nonnull %mpi_reply.i, ptr noundef nonnull %vol_pg1.i, i32 noundef 0, i32 noundef %conv.i) #6
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.mpt3sas_get_num_volumes.exit_crit_edge

if.end.i.mpt3sas_get_num_volumes.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mpt3sas_get_num_volumes.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

mpt3sas_get_num_volumes.exit:                     ; preds = %if.end.i.mpt3sas_get_num_volumes.exit_crit_edge, %while.body.i.mpt3sas_get_num_volumes.exit_crit_edge
  %vol_cnt.0.lcssa.i = phi i8 [ %vol_cnt.08.i, %while.body.i.mpt3sas_get_num_volumes.exit_crit_edge ], [ %inc.i, %if.end.i.mpt3sas_get_num_volumes.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mpi_reply.i) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vol_pg1.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %vol_cnt.0.lcssa.i)
  %cmp6 = icmp ugt i8 %vol_cnt.0.lcssa.i, 1
  br i1 %cmp6, label %if.then8, label %mpt3sas_get_num_volumes.exit.if.end16_crit_edge

mpt3sas_get_num_volumes.exit.if.end16_crit_edge:  ; preds = %mpt3sas_get_num_volumes.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then8:                                         ; preds = %mpt3sas_get_num_volumes.exit
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @_warpdrive_disable_ddio(ptr noundef %ioc)
  %name13 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name13) #9
  br label %cleanup

if.end16:                                         ; preds = %mpt3sas_get_num_volumes.exit.if.end16_crit_edge, %mpt3sas_get_num_volumes.exit.thread
  %handle = getelementptr inbounds %struct._raid_device, ptr %raid_device, i32 0, i32 4
  %18 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %handle, align 8
  %call17 = call i32 @mpt3sas_config_get_number_pds(ptr noundef %ioc, i16 noundef zeroext %19, ptr noundef nonnull %num_pds) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %if.end16.do.end23_crit_edge

if.end16.do.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23

lor.lhs.false:                                    ; preds = %if.end16
  %20 = ptrtoint ptr %num_pds to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_pds, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool19.not = icmp eq i8 %21, 0
  br i1 %tobool19.not, label %lor.lhs.false.do.end23_crit_edge, label %if.end28

lor.lhs.false.do.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23

do.end23:                                         ; preds = %lor.lhs.false.do.end23_crit_edge, %if.end16.do.end23_crit_edge
  %name25 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name25) #9
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false
  %conv29 = zext i8 %21 to i16
  %mul = shl nuw nsw i16 %conv29, 2
  %add = add nuw nsw i16 %mul, 40
  %conv31 = zext i16 %add to i32
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv31, i32 noundef 3520) #10
  %tobool33.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool33.not, label %do.end37, label %if.end42

do.end37:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %name39 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name39) #9
  br label %cleanup

if.end42:                                         ; preds = %if.end28
  %22 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %handle, align 8
  %conv44 = zext i16 %23 to i32
  %call45 = call i32 @mpt3sas_config_get_raid_volume_pg0(ptr noundef %ioc, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %call9.i.i, i32 noundef 268435456, i32 noundef %conv44, i16 noundef zeroext %add) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end55, label %do.end50

do.end50:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %name52 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name52) #9
  call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %cleanup

if.end55:                                         ; preds = %if.end42
  %24 = ptrtoint ptr %num_pds to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_pds, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %25)
  %cmp57 = icmp ugt i8 %25, 8
  br i1 %cmp57, label %do.end62, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end55
  %26 = ptrtoint ptr %num_pds to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num_pds, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp73285.not = icmp eq i8 %27, 0
  br i1 %cmp73285.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %DevHandle = getelementptr inbounds %struct._MPI2_CONFIG_PAGE_RD_PDISK_0, ptr %pd_pg0, i32 0, i32 1
  %DeviceMaxLBA = getelementptr inbounds %struct._MPI2_CONFIG_PAGE_RD_PDISK_0, ptr %pd_pg0, i32 0, i32 13
  br label %for.body

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %conv56 = zext i8 %25 to i32
  %name64 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %28 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %handle, align 8
  %conv67 = zext i16 %29 to i32
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name64, i32 noundef %conv67, i32 noundef %conv56, i32 noundef 8) #9
  call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %cleanup

for.body:                                         ; preds = %if.end111.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end111.for.body_crit_edge ]
  %PhysDiskNum = getelementptr %struct._MPI2_CONFIG_PAGE_RAID_VOL_0, ptr %call9.i.i, i32 0, i32 17, i32 %indvars.iv, i32 2
  %30 = ptrtoint ptr %PhysDiskNum to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %PhysDiskNum, align 2
  %conv75 = zext i8 %31 to i32
  %call76 = call i32 @mpt3sas_config_get_phys_disk_pg0(ptr noundef %ioc, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %pd_pg0, i32 noundef 268435456, i32 noundef %conv75) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %lor.lhs.false78, label %for.body.do.end85_crit_edge

for.body.do.end85_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end85

lor.lhs.false78:                                  ; preds = %for.body
  %32 = ptrtoint ptr %DevHandle to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %DevHandle, align 4
  %34 = call i16 @llvm.bswap.i16(i16 %33)
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %33)
  %cmp80 = icmp eq i16 %33, -1
  br i1 %cmp80, label %lor.lhs.false78.do.end85_crit_edge, label %if.end97

lor.lhs.false78.do.end85_crit_edge:               ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end85

do.end85:                                         ; preds = %lor.lhs.false78.do.end85_crit_edge, %for.body.do.end85_crit_edge
  %name87 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %35 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %handle, align 8
  %conv90 = zext i16 %36 to i32
  %37 = ptrtoint ptr %PhysDiskNum to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %PhysDiskNum, align 2
  %conv95 = zext i8 %38 to i32
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name87, i32 noundef %conv90, i32 noundef %conv95) #9
  br label %out_error

if.end97:                                         ; preds = %lor.lhs.false78
  %39 = ptrtoint ptr %DeviceMaxLBA to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %DeviceMaxLBA, align 4
  %41 = call i64 @llvm.bswap.i64(i64 %40)
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %41)
  %tobool98.not = icmp ult i64 %41, 4294967296
  br i1 %tobool98.not, label %if.end111, label %do.end102

do.end102:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  %conv79.le = zext i16 %34 to i32
  %name104 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %42 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %handle, align 8
  %conv107 = zext i16 %43 to i32
  %call110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name104, i32 noundef %conv107, i32 noundef %conv79.le, i64 noundef %41) #9
  br label %out_error

if.end111:                                        ; preds = %if.end97
  %arrayidx114 = getelementptr %struct._raid_device, ptr %raid_device, i32 0, i32 18, i32 %indvars.iv
  %44 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %34, ptr %arrayidx114, align 2
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %45 = ptrtoint ptr %num_pds to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %num_pds, align 1
  %47 = zext i8 %46 to i32
  %cmp73 = icmp ult i32 %indvars.iv.next, %47
  br i1 %cmp73, label %if.end111.for.body_crit_edge, label %if.end111.for.end_crit_edge

if.end111.for.end_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end111.for.body_crit_edge:                     ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end111.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %volume_type = getelementptr inbounds %struct._raid_device, ptr %raid_device, i32 0, i32 8
  %48 = ptrtoint ptr %volume_type to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %volume_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp116.not = icmp eq i8 %49, 0
  br i1 %cmp116.not, label %if.end134, label %do.end121

do.end121:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv115 = zext i8 %49 to i32
  %name123 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %50 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %handle, align 8
  %conv126 = zext i16 %51 to i32
  %StripeSize = getelementptr inbounds %struct._MPI2_CONFIG_PAGE_RAID_VOL_0, ptr %call9.i.i, i32 0, i32 7
  %52 = ptrtoint ptr %StripeSize to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %StripeSize, align 8
  %54 = call i32 @llvm.bswap.i32(i32 %53)
  %BlockSize = getelementptr inbounds %struct._MPI2_CONFIG_PAGE_RAID_VOL_0, ptr %call9.i.i, i32 0, i32 8
  %55 = ptrtoint ptr %BlockSize to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %BlockSize, align 4
  %57 = call i16 @llvm.bswap.i16(i16 %56)
  %conv129 = zext i16 %57 to i32
  %mul130 = mul i32 %54, %conv129
  %div280 = lshr i32 %mul130, 10
  %call133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name123, i32 noundef %conv126, i32 noundef %conv115, i32 noundef %div280, i32 noundef %conv129) #9
  br label %out_error

if.end134:                                        ; preds = %for.end
  %StripeSize135 = getelementptr inbounds %struct._MPI2_CONFIG_PAGE_RAID_VOL_0, ptr %call9.i.i, i32 0, i32 7
  %58 = ptrtoint ptr %StripeSize135 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %StripeSize135, align 8
  %60 = call i32 @llvm.bswap.i32(i32 %59)
  %61 = ptrtoint ptr %stripe_sz to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %stripe_sz, align 4
  %call136 = call i32 @_find_first_bit_be(ptr noundef nonnull %stripe_sz, i32 noundef 32) #6
  %conv138 = and i32 %call136, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv138)
  %cmp139 = icmp eq i32 %conv138, 32
  br i1 %cmp139, label %do.end144, label %if.end156

do.end144:                                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  %name146 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %62 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %handle, align 8
  %conv149 = zext i16 %63 to i32
  %64 = ptrtoint ptr %StripeSize135 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %StripeSize135, align 8
  %66 = call i32 @llvm.bswap.i32(i32 %65)
  %BlockSize151 = getelementptr inbounds %struct._MPI2_CONFIG_PAGE_RAID_VOL_0, ptr %call9.i.i, i32 0, i32 8
  %67 = ptrtoint ptr %BlockSize151 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %BlockSize151, align 4
  %69 = call i16 @llvm.bswap.i16(i16 %68)
  %conv152 = zext i16 %69 to i32
  %mul153 = mul i32 %66, %conv152
  %div154279 = lshr i32 %mul153, 10
  %call155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name146, i32 noundef %conv149, i32 noundef %div154279) #9
  br label %out_error

if.end156:                                        ; preds = %if.end134
  %conv137 = trunc i32 %call136 to i8
  %stripe_exponent = getelementptr inbounds %struct._raid_device, ptr %raid_device, i32 0, i32 13
  %70 = ptrtoint ptr %stripe_exponent to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv137, ptr %stripe_exponent, align 1
  %BlockSize157 = getelementptr inbounds %struct._MPI2_CONFIG_PAGE_RAID_VOL_0, ptr %call9.i.i, i32 0, i32 8
  %71 = ptrtoint ptr %BlockSize157 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %BlockSize157, align 4
  %73 = call i16 @llvm.bswap.i16(i16 %72)
  %conv158 = zext i16 %73 to i32
  %74 = ptrtoint ptr %block_sz to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv158, ptr %block_sz, align 4
  %call159 = call i32 @_find_first_bit_be(ptr noundef nonnull %block_sz, i32 noundef 16) #6
  %conv161 = and i32 %call159, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %conv161)
  %cmp162 = icmp eq i32 %conv161, 16
  br i1 %cmp162, label %do.end167, label %if.end176

do.end167:                                        ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #8
  %name169 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %75 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %handle, align 8
  %conv172 = zext i16 %76 to i32
  %77 = ptrtoint ptr %BlockSize157 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %BlockSize157, align 4
  %79 = call i16 @llvm.bswap.i16(i16 %78)
  %conv174 = zext i16 %79 to i32
  %call175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name169, i32 noundef %conv172, i32 noundef %conv174) #9
  br label %out_error

if.end176:                                        ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #8
  %conv160 = trunc i32 %call159 to i8
  %block_exponent = getelementptr inbounds %struct._raid_device, ptr %raid_device, i32 0, i32 14
  %80 = ptrtoint ptr %block_exponent to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv160, ptr %block_exponent, align 2
  %direct_io_enabled = getelementptr inbounds %struct._raid_device, ptr %raid_device, i32 0, i32 12
  %81 = ptrtoint ptr %direct_io_enabled to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %direct_io_enabled, align 8
  %name181 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 4
  %82 = ptrtoint ptr %handle to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %handle, align 8
  %conv184 = zext i16 %83 to i32
  %call185 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name181, i32 noundef %conv184) #9
  %MaxLBA = getelementptr inbounds %struct._MPI2_CONFIG_PAGE_RAID_VOL_0, ptr %call9.i.i, i32 0, i32 6
  %84 = ptrtoint ptr %MaxLBA to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %MaxLBA, align 16
  %86 = call i64 @llvm.bswap.i64(i64 %85)
  %max_lba = getelementptr inbounds %struct._raid_device, ptr %raid_device, i32 0, i32 15
  %87 = ptrtoint ptr %max_lba to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %86, ptr %max_lba, align 8
  %88 = ptrtoint ptr %StripeSize135 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %StripeSize135, align 8
  %90 = call i32 @llvm.bswap.i32(i32 %89)
  %stripe_sz187 = getelementptr inbounds %struct._raid_device, ptr %raid_device, i32 0, i32 16
  %91 = ptrtoint ptr %stripe_sz187 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %stripe_sz187, align 8
  %92 = ptrtoint ptr %BlockSize157 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %BlockSize157, align 4
  %94 = call i16 @llvm.bswap.i16(i16 %93)
  %block_sz189 = getelementptr inbounds %struct._raid_device, ptr %raid_device, i32 0, i32 5
  %95 = ptrtoint ptr %block_sz189 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %block_sz189, align 2
  call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %cleanup

out_error:                                        ; preds = %do.end167, %do.end144, %do.end121, %do.end102, %do.end85
  %direct_io_enabled190 = getelementptr inbounds %struct._raid_device, ptr %raid_device, i32 0, i32 12
  %96 = ptrtoint ptr %direct_io_enabled190 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %direct_io_enabled190, align 8
  %97 = ptrtoint ptr %num_pds to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %num_pds, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %cmp194288.not = icmp eq i8 %98, 0
  br i1 %cmp194288.not, label %out_error.for.end202_crit_edge, label %for.body196.preheader

out_error.for.end202_crit_edge:                   ; preds = %out_error
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end202

for.body196.preheader:                            ; preds = %out_error
  call void @__sanitizer_cov_trace_pc() #8
  %uglygep = getelementptr i8, ptr %raid_device, i32 64
  %99 = zext i8 %98 to i32
  %100 = shl nuw nsw i32 %99, 1
  %101 = call ptr @memset(ptr %uglygep, i32 0, i32 %100)
  br label %for.end202

for.end202:                                       ; preds = %for.body196.preheader, %out_error.for.end202_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end202, %if.end176, %do.end62, %do.end50, %do.end37, %do.end23, %if.then8, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %block_sz) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stripe_sz) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %num_pds) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mpi_reply) #6
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %pd_pg0) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_warpdrive_disable_ddio(ptr noundef %ioc) unnamed_addr #0 align 64 {
entry:
  %vol_pg1 = alloca %struct._MPI2_CONFIG_PAGE_RAID_VOL_1, align 4
  %mpi_reply = alloca %struct._MPI2_CONFIG_REPLY, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vol_pg1) #6
  %0 = call ptr @memset(ptr %vol_pg1, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mpi_reply) #6
  %1 = getelementptr inbounds %struct._MPI2_CONFIG_REPLY, ptr %mpi_reply, i32 0, i32 11
  %2 = call ptr @memset(ptr %mpi_reply, i32 255, i32 24)
  %call22 = call i32 @mpt3sas_config_get_raid_volume_pg1(ptr noundef %ioc, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %vol_pg1, i32 noundef 0, i32 noundef 65535) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool.not23 = icmp eq i32 %call22, 0
  br i1 %tobool.not23, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %DevHandle = getelementptr inbounds %struct._MPI2_CONFIG_PAGE_RAID_VOL_1, ptr %vol_pg1, i32 0, i32 1
  %raid_device_lock = getelementptr inbounds %struct.MPT3SAS_ADAPTER, ptr %ioc, i32 0, i32 128
  br label %while.body

while.body:                                       ; preds = %if.end15.while.body_crit_edge, %while.body.lr.ph
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %1, align 2
  %5 = and i16 %4, -129
  call void @__sanitizer_cov_trace_const_cmp2(i16 8704, i16 %5)
  %cmp = icmp eq i16 %5, 8704
  br i1 %cmp, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end:                                           ; preds = %while.body
  %6 = ptrtoint ptr %DevHandle to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %DevHandle, align 4
  %8 = call i16 @llvm.bswap.i16(i16 %7)
  %call9 = call i32 @_raw_spin_lock_irqsave(ptr noundef %raid_device_lock) #6
  %call12 = call ptr @mpt3sas_raid_device_find_by_handle(ptr noundef %ioc, i16 noundef zeroext %8) #6
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end.if.end15_crit_edge, label %if.then14

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %direct_io_enabled = getelementptr inbounds %struct._raid_device, ptr %call12, i32 0, i32 12
  %9 = ptrtoint ptr %direct_io_enabled to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %direct_io_enabled, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end.if.end15_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %raid_device_lock, i32 noundef %call9) #6
  %conv = zext i16 %8 to i32
  %call = call i32 @mpt3sas_config_get_raid_volume_pg1(ptr noundef %ioc, ptr noundef nonnull %mpi_reply, ptr noundef nonnull %vol_pg1, i32 noundef 0, i32 noundef %conv) #6
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end15.while.body_crit_edge, label %if.end15.while.end_crit_edge

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end15.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mpi_reply) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vol_pg1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt3sas_config_get_number_pds(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt3sas_config_get_raid_volume_pg0(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpt3sas_config_get_phys_disk_pg0(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpt3sas_setup_direct_io(ptr nocapture noundef readnone %ioc, ptr nocapture noundef %scmd, ptr nocapture noundef readonly %raid_device, ptr nocapture noundef %mpi_request) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 16
  %0 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmnd, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %entry.cleanup_crit_edge [
    i8 42, label %entry.if.then19_crit_edge
    i8 40, label %entry.if.then19_crit_edge400
    i8 -120, label %entry.if.else_crit_edge
    i8 -118, label %entry.if.else_crit_edge401
  ]

entry.if.else_crit_edge401:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

entry.if.then19_crit_edge400:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

entry.if.then19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19:                                        ; preds = %entry.if.then19_crit_edge, %entry.if.then19_crit_edge400
  %CDB = getelementptr inbounds %struct._MPI25_SCSI_IO_REQUEST, ptr %mpi_request, i32 0, i32 30
  %arrayidx20 = getelementptr [32 x i8], ptr %CDB, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %arrayidx20, align 1
  %conv22 = zext i32 %6 to i64
  br label %if.end26

if.else:                                          ; preds = %entry.if.else_crit_edge, %entry.if.else_crit_edge401
  %CDB23 = getelementptr inbounds %struct._MPI25_SCSI_IO_REQUEST, ptr %mpi_request, i32 0, i32 30
  %arrayidx24 = getelementptr [32 x i8], ptr %CDB23, i32 0, i32 2
  %7 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %arrayidx24, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then19
  %v_lba.0 = phi i64 [ %conv22, %if.then19 ], [ %8, %if.else ]
  %length.i = getelementptr inbounds %struct.scsi_cmnd, ptr %scmd, i32 0, i32 17, i32 1
  %9 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length.i, align 4
  %block_exponent = getelementptr inbounds %struct._raid_device, ptr %raid_device, i32 0, i32 14
  %11 = ptrtoint ptr %block_exponent to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %block_exponent, align 2
  %conv28 = zext i8 %12 to i32
  %shr = lshr i32 %10, %conv28
  %conv29 = zext i32 %shr to i64
  %add = add i64 %v_lba.0, -1
  %sub = add i64 %add, %conv29
  %max_lba = getelementptr inbounds %struct._raid_device, ptr %raid_device, i32 0, i32 15
  %13 = ptrtoint ptr %max_lba to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %max_lba, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %14)
  %cmp30 = icmp ugt i64 %sub, %14
  br i1 %cmp30, label %if.end26.cleanup_crit_edge, label %if.end33

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end26
  %stripe_sz34 = getelementptr inbounds %struct._raid_device, ptr %raid_device, i32 0, i32 16
  %15 = ptrtoint ptr %stripe_sz34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stripe_sz34, align 8
  %sub36 = add i32 %16, -1
  %conv37 = zext i32 %sub36 to i64
  %and = and i64 %v_lba.0, %conv37
  %add38 = add nuw nsw i64 %and, %conv29
  %conv39 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add38, i64 %conv39)
  %cmp40 = icmp ugt i64 %add38, %conv39
  br i1 %cmp40, label %if.end33.cleanup_crit_edge, label %if.end43

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %if.end33
  %stripe_exponent = getelementptr inbounds %struct._raid_device, ptr %raid_device, i32 0, i32 13
  %17 = ptrtoint ptr %stripe_exponent to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %stripe_exponent, align 1
  %num_pds44 = getelementptr inbounds %struct._raid_device, ptr %raid_device, i32 0, i32 9
  %19 = ptrtoint ptr %num_pds44 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_pds44, align 1
  %sh_prom = zext i8 %18 to i64
  %shr45 = lshr i64 %v_lba.0, %sh_prom
  %conv46 = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr45)
  %cmp223 = icmp ult i64 %shr45, 4294967296
  br i1 %cmp223, label %if.then227, label %if.else233, !prof !60

if.then227:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %conv228 = trunc i64 %shr45 to i32
  %conv228.frozen = freeze i32 %conv228
  %conv46.frozen = freeze i32 %conv46
  %div231 = udiv i32 %conv228.frozen, %conv46.frozen
  %21 = mul i32 %div231, %conv46.frozen
  %rem229.decomposed = sub i32 %conv228.frozen, %21
  %conv232 = zext i32 %div231 to i64
  br label %if.end237

if.else233:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv46, i64 %shr45) #11, !srcloc !61
  %asmresult.i375 = extractvalue { i64, i64 } %22, 0
  %asmresult1.i = extractvalue { i64, i64 } %22, 1
  %shr.i = lshr i64 %asmresult.i375, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end237

if.end237:                                        ; preds = %if.else233, %if.then227
  %p_lba.0 = phi i64 [ %conv232, %if.then227 ], [ %asmresult1.i, %if.else233 ]
  %__rem.0 = phi i32 [ %rem229.decomposed, %if.then227 ], [ %conv.i, %if.else233 ]
  %shl241 = shl i64 %p_lba.0, %sh_prom
  %add242 = add i64 %shl241, %and
  %arrayidx243 = getelementptr %struct._raid_device, ptr %raid_device, i32 0, i32 18, i32 %__rem.0
  %23 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx243, align 2
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  %26 = ptrtoint ptr %mpi_request to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %mpi_request, align 4
  %27 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %3, label %if.else256 [
    i8 42, label %if.end237.if.then251_crit_edge
    i8 40, label %if.end237.if.then251_crit_edge402
  ]

if.end237.if.then251_crit_edge402:                ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then251

if.end237.if.then251_crit_edge:                   ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then251

if.then251:                                       ; preds = %if.end237.if.then251_crit_edge, %if.end237.if.then251_crit_edge402
  %conv253 = trunc i64 %add242 to i32
  %CDB254 = getelementptr inbounds %struct._MPI25_SCSI_IO_REQUEST, ptr %mpi_request, i32 0, i32 30
  %arrayidx255 = getelementptr [32 x i8], ptr %CDB254, i32 0, i32 2
  %28 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %conv253, ptr %arrayidx255, align 1
  br label %if.end259

if.else256:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #8
  %CDB257 = getelementptr inbounds %struct._MPI25_SCSI_IO_REQUEST, ptr %mpi_request, i32 0, i32 30
  %arrayidx258 = getelementptr [32 x i8], ptr %CDB257, i32 0, i32 2
  %29 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %add242, ptr %arrayidx258, align 1
  br label %if.end259

if.end259:                                        ; preds = %if.else256, %if.then251
  %direct_io = getelementptr %struct.scsi_cmnd, ptr %scmd, i32 1, i32 0, i32 0, i32 9
  %30 = ptrtoint ptr %direct_io to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %direct_io, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end259, %if.end33.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpt3sas_raid_device_find_by_handle(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/mpt3sas/mpt3sas_warpdrive.c", i32 130, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mpt3sas_init_warpdrive_properties._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mpt3sas_init_warpdrive_properties._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/mpt3sas/mpt3sas_warpdrive.c", i32 135, i32 3}
!8 = !{ptr @mpt3sas_init_warpdrive_properties._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @mpt3sas_init_warpdrive_properties._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/mpt3sas/mpt3sas_warpdrive.c", i32 140, i32 3}
!12 = !{ptr @mpt3sas_init_warpdrive_properties._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @mpt3sas_init_warpdrive_properties._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/mpt3sas/mpt3sas_warpdrive.c", i32 148, i32 3}
!16 = !{ptr @mpt3sas_init_warpdrive_properties._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @mpt3sas_init_warpdrive_properties._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/mpt3sas/mpt3sas_warpdrive.c", i32 154, i32 3}
!20 = !{ptr @mpt3sas_init_warpdrive_properties._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @mpt3sas_init_warpdrive_properties._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/mpt3sas/mpt3sas_warpdrive.c", i32 164, i32 3}
!24 = !{ptr @mpt3sas_init_warpdrive_properties._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @mpt3sas_init_warpdrive_properties._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/mpt3sas/mpt3sas_warpdrive.c", i32 175, i32 4}
!28 = !{ptr @mpt3sas_init_warpdrive_properties._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mpt3sas_init_warpdrive_properties._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.22, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/mpt3sas/mpt3sas_warpdrive.c", i32 183, i32 4}
!32 = !{ptr @mpt3sas_init_warpdrive_properties._entry.21, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mpt3sas_init_warpdrive_properties._entry_ptr.23, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.25, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/mpt3sas/mpt3sas_warpdrive.c", i32 198, i32 3}
!36 = !{ptr @mpt3sas_init_warpdrive_properties._entry.24, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mpt3sas_init_warpdrive_properties._entry_ptr.26, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.28, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/mpt3sas/mpt3sas_warpdrive.c", i32 209, i32 3}
!40 = !{ptr @mpt3sas_init_warpdrive_properties._entry.27, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mpt3sas_init_warpdrive_properties._entry_ptr.29, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.31, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/mpt3sas/mpt3sas_warpdrive.c", i32 219, i32 3}
!44 = !{ptr @mpt3sas_init_warpdrive_properties._entry.30, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mpt3sas_init_warpdrive_properties._entry_ptr.32, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.34, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/mpt3sas/mpt3sas_warpdrive.c", i32 226, i32 2}
!48 = !{ptr @mpt3sas_init_warpdrive_properties._entry.33, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @mpt3sas_init_warpdrive_properties._entry_ptr.35, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"auto-init"}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{i64 2148608390, i64 2148608670, i64 2148609004, i64 2148609338}
