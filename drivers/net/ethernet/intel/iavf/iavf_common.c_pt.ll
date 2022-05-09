; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/iavf/iavf_common.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/iavf/iavf_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iavf_hw = type { ptr, ptr, %struct.iavf_mac_info, %struct.iavf_bus_info, i16, i16, i16, i16, i8, %struct.iavf_hw_capabilities, %struct.iavf_adminq_info, i32, [16 x i8] }
%struct.iavf_mac_info = type { i32, [6 x i8], [6 x i8], [6 x i8], i16 }
%struct.iavf_bus_info = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.iavf_hw_capabilities = type { i8, i8, i32, i32, i32, i32, i32 }
%struct.iavf_adminq_info = type { %struct.iavf_adminq_ring, %struct.iavf_adminq_ring, i32, i16, i16, i16, i16, i16, i16, i32, i16, i16, %struct.mutex, %struct.mutex, i32, i32 }
%struct.iavf_adminq_ring = type { %struct.iavf_virt_mem, %struct.iavf_dma_mem, %struct.iavf_virt_mem, %union.anon, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct.iavf_dma_mem = type { ptr, i32, i32 }
%struct.iavf_virt_mem = type { ptr, i32 }
%union.anon = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iavf_aq_desc = type { i16, i16, i16, i16, i32, i32, %union.anon.2 }
%union.anon.2 = type { %struct.anon }
%struct.anon = type { i32, i32, i32, i32 }
%struct.iavf_aqc_get_set_rss_lut = type { i16, i16, [4 x i8], i32, i32 }
%struct.iavf_asq_cmd_details = type { ptr, i64, i16, i16, i8, i8, ptr }
%struct.virtchnl_vf_resource = type { i16, i16, i16, i16, i32, i32, i32, [1 x %struct.virtchnl_vsi_resource] }
%struct.virtchnl_vsi_resource = type { i16, i16, i32, i16, [6 x i8] }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OK\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IAVF_AQ_RC_EPERM\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IAVF_AQ_RC_ENOENT\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IAVF_AQ_RC_ESRCH\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IAVF_AQ_RC_EINTR\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IAVF_AQ_RC_EIO\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IAVF_AQ_RC_ENXIO\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IAVF_AQ_RC_E2BIG\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IAVF_AQ_RC_EAGAIN\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IAVF_AQ_RC_ENOMEM\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IAVF_AQ_RC_EACCES\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IAVF_AQ_RC_EFAULT\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IAVF_AQ_RC_EBUSY\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IAVF_AQ_RC_EEXIST\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IAVF_AQ_RC_EINVAL\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IAVF_AQ_RC_ENOTTY\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IAVF_AQ_RC_ENOSPC\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IAVF_AQ_RC_ENOSYS\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IAVF_AQ_RC_ERANGE\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IAVF_AQ_RC_EFLUSHED\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IAVF_AQ_RC_BAD_ADDR\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IAVF_AQ_RC_EMODE\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IAVF_AQ_RC_EFBIG\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IAVF_ERR_NVM\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IAVF_ERR_NVM_CHECKSUM\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IAVF_ERR_PHY\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IAVF_ERR_CONFIG\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IAVF_ERR_PARAM\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IAVF_ERR_MAC_TYPE\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IAVF_ERR_UNKNOWN_PHY\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IAVF_ERR_LINK_SETUP\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IAVF_ERR_ADAPTER_STOPPED\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IAVF_ERR_INVALID_MAC_ADDR\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"IAVF_ERR_DEVICE_NOT_SUPPORTED\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"IAVF_ERR_MASTER_REQUESTS_PENDING\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IAVF_ERR_INVALID_LINK_SETTINGS\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"IAVF_ERR_AUTONEG_NOT_COMPLETE\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IAVF_ERR_RESET_FAILED\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IAVF_ERR_SWFW_SYNC\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IAVF_ERR_NO_AVAILABLE_VSI\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IAVF_ERR_NO_MEMORY\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IAVF_ERR_BAD_PTR\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IAVF_ERR_RING_FULL\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IAVF_ERR_INVALID_PD_ID\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IAVF_ERR_INVALID_QP_ID\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IAVF_ERR_INVALID_CQ_ID\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IAVF_ERR_INVALID_CEQ_ID\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IAVF_ERR_INVALID_AEQ_ID\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IAVF_ERR_INVALID_SIZE\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IAVF_ERR_INVALID_ARP_INDEX\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IAVF_ERR_INVALID_FPM_FUNC_ID\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IAVF_ERR_QP_INVALID_MSG_SIZE\00", [35 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IAVF_ERR_QP_TOOMANY_WRS_POSTED\00", [33 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IAVF_ERR_INVALID_FRAG_COUNT\00", [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IAVF_ERR_QUEUE_EMPTY\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IAVF_ERR_INVALID_ALIGNMENT\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IAVF_ERR_FLUSHED_QUEUE\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"IAVF_ERR_INVALID_PUSH_PAGE_INDEX\00", [63 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IAVF_ERR_INVALID_IMM_DATA_SIZE\00", [33 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IAVF_ERR_TIMEOUT\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IAVF_ERR_OPCODE_MISMATCH\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IAVF_ERR_CQP_COMPL_ERROR\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IAVF_ERR_INVALID_VF_ID\00", [41 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IAVF_ERR_INVALID_HMCFN_ID\00", [38 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IAVF_ERR_BACKING_PAGE_ERROR\00", [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IAVF_ERR_NO_PBLCHUNKS_AVAILABLE\00", [32 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IAVF_ERR_INVALID_PBLE_INDEX\00", [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IAVF_ERR_INVALID_SD_INDEX\00", [38 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"IAVF_ERR_INVALID_PAGE_DESC_INDEX\00", [63 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IAVF_ERR_INVALID_SD_TYPE\00", [39 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IAVF_ERR_MEMCPY_FAILED\00", [41 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IAVF_ERR_INVALID_HMC_OBJ_INDEX\00", [33 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IAVF_ERR_INVALID_HMC_OBJ_COUNT\00", [33 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IAVF_ERR_INVALID_SRQ_ARM_LIMIT\00", [33 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IAVF_ERR_SRQ_ENABLED\00", [43 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IAVF_ERR_ADMIN_QUEUE_ERROR\00", [37 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IAVF_ERR_ADMIN_QUEUE_TIMEOUT\00", [35 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IAVF_ERR_BUF_TOO_SHORT\00", [41 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IAVF_ERR_ADMIN_QUEUE_FULL\00", [38 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IAVF_ERR_ADMIN_QUEUE_NO_WORK\00", [35 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IAVF_ERR_BAD_IWARP_CQE\00", [41 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IAVF_ERR_NVM_BLANK_MODE\00", [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IAVF_ERR_NOT_IMPLEMENTED\00", [39 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"IAVF_ERR_PE_DOORBELL_NOT_ENABLED\00", [63 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IAVF_ERR_DIAG_TEST_FAILED\00", [38 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IAVF_ERR_NOT_READY\00", [45 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IAVF_NOT_SUPPORTED\00", [45 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"IAVF_ERR_FIRMWARE_API_VERSION\00", [34 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"IAVF_ERR_ADMIN_QUEUE_CRITICAL_ERROR\00", [60 x i8] zeroinitializer }, align 32
@iavf_debug_aq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.92, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\016iavf %02x:%02x.%x AQ CMD: opcode 0x%04X, flags 0x%04X, datalen 0x%04X, retval 0x%04X\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iavf_debug_aq\00", [18 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/intel/iavf/iavf_common.c\00", [50 x i8] zeroinitializer }, align 32
@iavf_debug_aq._entry_ptr = internal global ptr @iavf_debug_aq._entry, section ".printk_index", align 4
@iavf_debug_aq._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.91, ptr @.str.92, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016iavf %02x:%02x.%x \09cookie (h,l) 0x%08X 0x%08X\0A\00", [47 x i8] zeroinitializer }, align 32
@iavf_debug_aq._entry_ptr.95 = internal global ptr @iavf_debug_aq._entry.93, section ".printk_index", align 4
@iavf_debug_aq._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.91, ptr @.str.92, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016iavf %02x:%02x.%x \09param (0,1)  0x%08X 0x%08X\0A\00", [47 x i8] zeroinitializer }, align 32
@iavf_debug_aq._entry_ptr.98 = internal global ptr @iavf_debug_aq._entry.96, section ".printk_index", align 4
@iavf_debug_aq._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.91, ptr @.str.92, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016iavf %02x:%02x.%x \09addr (h,l)   0x%08X 0x%08X\0A\00", [47 x i8] zeroinitializer }, align 32
@iavf_debug_aq._entry_ptr.101 = internal global ptr @iavf_debug_aq._entry.99, section ".printk_index", align 4
@iavf_debug_aq._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.91, ptr @.str.92, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016iavf %02x:%02x.%x AQ CMD Buffer:\0A\00", [60 x i8] zeroinitializer }, align 32
@iavf_debug_aq._entry_ptr.104 = internal global ptr @iavf_debug_aq._entry.102, section ".printk_index", align 4
@.str.105 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"iavf %02x:%02x.%x: \090x\00", [41 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@iavf_ptype_lookup = dso_local global { [256 x { i8, i8, i8, i8 }], [256 x i8] } { [256 x { i8, i8, i8, i8 }] [{ i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 0, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 20, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 0, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 0, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 0, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 0, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -128, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -48, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -64, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -64, i8 5, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -64, i8 9, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -64, i8 13, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -64, i8 17, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -62, i8 -63, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -62, i8 -127, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -62, i8 -123, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -62, i8 -119, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -62, i8 -115, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -62, i8 -111, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -61, i8 65, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -61, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -61, i8 5, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -61, i8 9, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -61, i8 13, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -61, i8 17, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -60, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -60, i8 -63, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -60, i8 -127, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -60, i8 -123, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -60, i8 -119, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -60, i8 -115, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -60, i8 -111, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -59, i8 65, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -59, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -59, i8 5, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -59, i8 9, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -59, i8 13, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -59, i8 17, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -58, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -58, i8 -63, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -58, i8 -127, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -58, i8 -123, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -58, i8 -119, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -58, i8 -115, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -58, i8 -111, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -57, i8 65, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -57, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -57, i8 5, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -57, i8 9, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -57, i8 13, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -57, i8 17, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -56, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -56, i8 -63, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -56, i8 -127, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -56, i8 -123, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -56, i8 -119, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -56, i8 -115, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -56, i8 -111, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -55, i8 65, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -55, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -55, i8 5, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -55, i8 9, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -55, i8 13, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -55, i8 17, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -16, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -32, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -32, i8 5, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -32, i8 9, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -32, i8 13, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -32, i8 17, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -30, i8 -63, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -30, i8 -127, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -30, i8 -123, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -30, i8 -119, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -30, i8 -115, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -30, i8 -111, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -29, i8 65, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -29, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -29, i8 5, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -29, i8 9, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -29, i8 13, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -29, i8 17, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -28, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -28, i8 -63, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -28, i8 -127, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -28, i8 -123, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -28, i8 -119, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -28, i8 -115, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -28, i8 -111, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -27, i8 65, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -27, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -27, i8 5, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -27, i8 9, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -27, i8 13, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -27, i8 17, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -26, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -26, i8 -63, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -26, i8 -127, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -26, i8 -123, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -26, i8 -119, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -26, i8 -115, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -26, i8 -111, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -25, i8 65, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -25, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -25, i8 5, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -25, i8 9, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -25, i8 13, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -25, i8 17, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -24, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -24, i8 -63, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -24, i8 -127, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -24, i8 -123, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -24, i8 -119, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -24, i8 -115, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -24, i8 -111, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -23, i8 65, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -23, i8 1, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -23, i8 5, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 -23, i8 9, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -23, i8 13, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 -23, i8 17, i8 -128, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }, { i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 undef }], [256 x i8] zeroinitializer }, align 32
@switch.table.iavf_aq_str = internal constant { [23 x ptr], [36 x i8] } { [23 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], [36 x i8] zeroinitializer }, align 32
@switch.table.iavf_stat_str = internal constant { [67 x ptr], [84 x i8] } { [67 x ptr] [ptr @.str.89, ptr @.str.88, ptr @.str.87, ptr @.str.86, ptr @.str.85, ptr @.str.84, ptr @.str.83, ptr @.str.82, ptr @.str.81, ptr @.str.80, ptr @.str.79, ptr @.str.78, ptr @.str.77, ptr @.str.76, ptr @.str.75, ptr @.str.74, ptr @.str.73, ptr @.str.72, ptr @.str.71, ptr @.str.70, ptr @.str.69, ptr @.str.68, ptr @.str.67, ptr @.str.66, ptr @.str.65, ptr @.str.64, ptr @.str.63, ptr @.str.62, ptr @.str.61, ptr @.str.60, ptr @.str.59, ptr @.str.58, ptr @.str.57, ptr @.str.56, ptr @.str.55, ptr @.str.54, ptr @.str.53, ptr @.str.52, ptr @.str.51, ptr @.str.50, ptr @.str.49, ptr @.str.48, ptr @.str.47, ptr @.str.46, ptr @.str.45, ptr @.str.44, ptr @.str.43, ptr @.str.42, ptr @.str.41, ptr @.str.40, ptr @.str.39, ptr @.str.38, ptr @.str.37, ptr @.str.36, ptr @.str.35, ptr @.str.34, ptr @.str.33, ptr @.str.32, ptr @.str.31, ptr @.str.30, ptr @.str.29, ptr @.str.28, ptr @.str.27, ptr @.str.26, ptr @.str.25, ptr @.str.24, ptr @.str], [84 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 5452, i64 5489, i64 6281, i64 14285]
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 51, i32 10 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 53, i32 10 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 55, i32 10 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 57, i32 10 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 59, i32 10 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 61, i32 10 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 63, i32 10 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 65, i32 10 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 67, i32 10 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 69, i32 10 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 71, i32 10 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 73, i32 10 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 75, i32 10 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 77, i32 10 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 79, i32 10 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 81, i32 10 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 83, i32 10 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 85, i32 10 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 87, i32 10 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 89, i32 10 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 91, i32 10 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 93, i32 10 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 95, i32 10 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 98, i32 45 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 113, i32 10 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 115, i32 10 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 117, i32 10 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 119, i32 10 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 121, i32 10 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 123, i32 10 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 125, i32 10 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 127, i32 10 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 129, i32 10 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 131, i32 10 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 133, i32 10 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 135, i32 10 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 137, i32 10 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 139, i32 10 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 141, i32 10 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 143, i32 10 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 145, i32 10 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 147, i32 10 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 149, i32 10 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 151, i32 10 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 153, i32 10 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 155, i32 10 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 157, i32 10 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 159, i32 10 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 161, i32 10 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 163, i32 10 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 165, i32 10 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 167, i32 10 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 169, i32 10 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 171, i32 10 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 173, i32 10 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 175, i32 10 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 177, i32 10 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 179, i32 10 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 181, i32 10 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 183, i32 10 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 185, i32 10 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 187, i32 10 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 189, i32 10 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 191, i32 10 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 193, i32 10 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 195, i32 10 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 197, i32 10 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 199, i32 10 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 201, i32 10 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 203, i32 10 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 205, i32 10 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 207, i32 10 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 209, i32 10 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 211, i32 10 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 213, i32 10 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 215, i32 10 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 217, i32 10 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 219, i32 10 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 221, i32 10 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 223, i32 10 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 225, i32 10 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 227, i32 10 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 229, i32 10 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 231, i32 10 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 233, i32 10 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 235, i32 10 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 237, i32 10 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 239, i32 10 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 241, i32 10 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 243, i32 10 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 269, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 275, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 278, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 281, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 288, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 296, i32 6 }
@___asan_gen_.416 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 301, i32 19 }
@___asan_gen_.419 = private unnamed_addr constant [18 x i8] c"iavf_ptype_lookup\00", align 1
@___asan_gen_.420 = private constant [49 x i8] c"../drivers/net/ethernet/intel/iavf/iavf_common.c\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.420, i32 546, i32 30 }
@___asan_gen_.422 = private unnamed_addr constant [25 x i8] c"switch.table.iavf_aq_str\00", align 1
@___asan_gen_.423 = private unnamed_addr constant [27 x i8] c"switch.table.iavf_stat_str\00", align 1
@llvm.compiler.used = appending global [112 x ptr] [ptr @iavf_debug_aq._entry, ptr @iavf_debug_aq._entry.102, ptr @iavf_debug_aq._entry.93, ptr @iavf_debug_aq._entry.96, ptr @iavf_debug_aq._entry.99, ptr @iavf_debug_aq._entry_ptr, ptr @iavf_debug_aq._entry_ptr.101, ptr @iavf_debug_aq._entry_ptr.104, ptr @iavf_debug_aq._entry_ptr.95, ptr @iavf_debug_aq._entry_ptr.98, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @iavf_ptype_lookup, ptr @switch.table.iavf_aq_str, ptr @switch.table.iavf_stat_str], section "llvm.metadata"
@0 = internal global [107 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_debug_aq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_debug_aq._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_debug_aq._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_debug_aq._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_debug_aq._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iavf_ptype_lookup to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iavf_aq_str to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iavf_stat_str to i32), i32 268, i32 352, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @iavf_set_mac_type(ptr nocapture noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor_id = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 5
  %0 = ptrtoint ptr %vendor_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %1)
  %cmp = icmp eq i16 %1, -32634
  br i1 %cmp, label %if.then, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %entry
  %device_id = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %device_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device_id, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %sw.default [
    i16 14285, label %if.then.do.end.sink.split_crit_edge
    i16 5452, label %if.then.sw.bb3_crit_edge
    i16 5489, label %if.then.sw.bb3_crit_edge12
    i16 6281, label %if.then.sw.bb3_crit_edge13
  ]

if.then.sw.bb3_crit_edge13:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

if.then.sw.bb3_crit_edge12:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

if.then.sw.bb3_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

if.then.do.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.sink.split

sw.bb3:                                           ; preds = %if.then.sw.bb3_crit_edge, %if.then.sw.bb3_crit_edge12, %if.then.sw.bb3_crit_edge13
  br label %do.end.sink.split

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.sink.split

do.end.sink.split:                                ; preds = %sw.default, %sw.bb3, %if.then.do.end.sink.split_crit_edge
  %.sink = phi i32 [ 5, %sw.default ], [ 2, %sw.bb3 ], [ 4, %if.then.do.end.sink.split_crit_edge ]
  %mac6 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 2
  %5 = ptrtoint ptr %mac6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %mac6, align 4
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %entry.do.end_crit_edge
  %status.0 = phi i32 [ -11, %entry.do.end_crit_edge ], [ 0, %do.end.sink.split ]
  ret i32 %status.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iavf_aq_str(ptr noundef writeonly %hw, i32 noundef %aq_err) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %aq_err)
  %0 = icmp ult i32 %aq_err, 23
  br i1 %0, label %switch.lookup, label %sw.epilog

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %err_str = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 12
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %err_str, i32 noundef 16, ptr noundef nonnull @.str.23, i32 noundef %aq_err)
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [23 x ptr], ptr @switch.table.iavf_aq_str, i32 0, i32 %aq_err
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %sw.epilog
  %retval.0 = phi ptr [ %err_str, %sw.epilog ], [ %switch.load, %switch.lookup ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iavf_stat_str(ptr noundef writeonly %hw, i32 noundef %stat_err) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %stat_err, 66
  call void @__sanitizer_cov_trace_const_cmp4(i32 67, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 67
  br i1 %0, label %switch.lookup, label %sw.epilog

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %err_str = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 12
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %err_str, i32 noundef 16, ptr noundef nonnull @.str.23, i32 noundef %stat_err)
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [67 x ptr], ptr @switch.table.iavf_stat_str, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %sw.epilog
  %retval.0 = phi ptr [ %err_str, %sw.epilog ], [ %switch.load, %switch.lookup ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_debug_aq(ptr nocapture noundef readonly %hw, i32 noundef %mask, ptr noundef readonly %desc, ptr noundef %buffer, i16 noundef zeroext %buf_len) local_unnamed_addr #4 align 64 {
entry:
  %prefix = alloca [27 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %debug_mask = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 11
  %0 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug_mask, align 4
  %and = and i32 %1, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tobool1.not = icmp eq ptr %desc, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  %bus_id = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 6
  %2 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bus_id, align 2
  %conv = zext i16 %3 to i32
  %device = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 4
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  %conv8 = zext i16 %5 to i32
  %func = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %func, align 4
  %conv10 = zext i16 %7 to i32
  %opcode = getelementptr inbounds %struct.iavf_aq_desc, ptr %desc, i32 0, i32 1
  %8 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %opcode, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv11 = zext i16 %10 to i32
  %11 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %desc, align 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv12 = zext i16 %13 to i32
  %datalen = getelementptr inbounds %struct.iavf_aq_desc, ptr %desc, i32 0, i32 2
  %14 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %datalen, align 4
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv13 = zext i16 %16 to i32
  %retval = getelementptr inbounds %struct.iavf_aq_desc, ptr %desc, i32 0, i32 3
  %17 = ptrtoint ptr %retval to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %retval, align 2
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %conv14 = zext i16 %19 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %conv, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %conv14) #12
  %20 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %debug_mask, align 4
  %and20 = and i32 %21, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.end.do.body40_crit_edge, label %do.end25

do.end.do.body40_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body40

do.end25:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %bus_id, align 2
  %conv29 = zext i16 %23 to i32
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %device, align 2
  %conv32 = zext i16 %25 to i32
  %26 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %func, align 4
  %conv35 = zext i16 %27 to i32
  %cookie_high = getelementptr inbounds %struct.iavf_aq_desc, ptr %desc, i32 0, i32 4
  %28 = ptrtoint ptr %cookie_high to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cookie_high, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %cookie_low = getelementptr inbounds %struct.iavf_aq_desc, ptr %desc, i32 0, i32 5
  %31 = ptrtoint ptr %cookie_low to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cookie_low, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %conv29, i32 noundef %conv32, i32 noundef %conv35, i32 noundef %30, i32 noundef %33) #12
  br label %do.body40

do.body40:                                        ; preds = %do.end25, %do.end.do.body40_crit_edge
  %34 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %debug_mask, align 4
  %and42 = and i32 %35, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %do.body40.do.body63_crit_edge, label %do.end47

do.body40.do.body63_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body63

do.end47:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %bus_id, align 2
  %conv51 = zext i16 %37 to i32
  %38 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %device, align 2
  %conv54 = zext i16 %39 to i32
  %40 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %func, align 4
  %conv57 = zext i16 %41 to i32
  %params = getelementptr inbounds %struct.iavf_aq_desc, ptr %desc, i32 0, i32 6
  %42 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %params, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %param1 = getelementptr inbounds %struct.iavf_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 1
  %45 = ptrtoint ptr %param1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %param1, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %conv51, i32 noundef %conv54, i32 noundef %conv57, i32 noundef %44, i32 noundef %47) #12
  br label %do.body63

do.body63:                                        ; preds = %do.end47, %do.body40.do.body63_crit_edge
  %48 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %debug_mask, align 4
  %and65 = and i32 %49, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %do.body63.do.end86_crit_edge, label %do.end70

do.body63.do.end86_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end86

do.end70:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %bus_id, align 2
  %conv74 = zext i16 %51 to i32
  %52 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %device, align 2
  %conv77 = zext i16 %53 to i32
  %54 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %func, align 4
  %conv80 = zext i16 %55 to i32
  %addr_high = getelementptr inbounds %struct.iavf_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 2
  %56 = ptrtoint ptr %addr_high to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %addr_high, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %addr_low = getelementptr inbounds %struct.iavf_aq_desc, ptr %desc, i32 0, i32 6, i32 0, i32 3
  %59 = ptrtoint ptr %addr_low to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %addr_low, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %conv74, i32 noundef %conv77, i32 noundef %conv80, i32 noundef %58, i32 noundef %61) #12
  br label %do.end86

do.end86:                                         ; preds = %do.end70, %do.body63.do.end86_crit_edge
  %tobool87.not = icmp eq ptr %buffer, null
  br i1 %tobool87.not, label %do.end86.cleanup_crit_edge, label %land.lhs.true

do.end86.cleanup_crit_edge:                       ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end86
  %62 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %datalen, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool90.not = icmp eq i16 %63, 0
  br i1 %tobool90.not, label %land.lhs.true.cleanup_crit_edge, label %if.then91

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then91:                                        ; preds = %land.lhs.true
  %64 = tail call i16 @llvm.bswap.i16(i16 %63)
  %65 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %debug_mask, align 4
  %and95 = and i32 %66, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.then91.do.end114_crit_edge, label %do.end100

if.then91.do.end114_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end114

do.end100:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %bus_id, align 2
  %conv104 = zext i16 %68 to i32
  %69 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %device, align 2
  %conv107 = zext i16 %70 to i32
  %71 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %func, align 4
  %conv110 = zext i16 %72 to i32
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, i32 noundef %conv104, i32 noundef %conv107, i32 noundef %conv110) #12
  br label %do.end114

do.end114:                                        ; preds = %do.end100, %if.then91.do.end114_crit_edge
  %73 = ptrtoint ptr %debug_mask to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %debug_mask, align 4
  %and121 = and i32 %74, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %do.end114.cleanup_crit_edge, label %if.then123

do.end114.cleanup_crit_edge:                      ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then123:                                       ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #11
  %75 = tail call i16 @llvm.umin.i16(i16 %64, i16 %buf_len)
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %prefix) #9
  %76 = call ptr @memset(ptr %prefix, i32 255, i32 27)
  %77 = ptrtoint ptr %bus_id to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %bus_id, align 2
  %conv126 = zext i16 %78 to i32
  %79 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %device, align 2
  %conv129 = zext i16 %80 to i32
  %81 = ptrtoint ptr %func to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %func, align 4
  %conv132 = zext i16 %82 to i32
  %call133 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prefix, i32 noundef 27, ptr noundef nonnull @.str.105, i32 noundef %conv126, i32 noundef %conv129, i32 noundef %conv132)
  %conv135 = zext i16 %75 to i32
  call void @print_hex_dump(ptr noundef nonnull @.str.106, ptr noundef nonnull %prefix, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %buffer, i32 noundef %conv135, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %prefix) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then123, %do.end114.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.end86.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @iavf_check_asq_alive(ptr nocapture noundef readonly %hw) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 10, i32 1, i32 10
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  %.mask = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool5 = icmp ne i32 %.mask, 0
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i1 [ %tobool5, %if.then ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iavf_aq_queue_shutdown(ptr noundef %hw, i1 noundef zeroext %unloading) local_unnamed_addr #4 align 64 {
entry:
  %desc = alloca %struct.iavf_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #9
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @iavf_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 3) #9
  br i1 %unloading, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = getelementptr inbounds %struct.iavf_aq_desc, ptr %desc, i32 0, i32 6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16777216, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = call i32 @iavf_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef null, i16 noundef zeroext 0, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iavf_fill_default_direct_cmd_desc(ptr noundef, i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iavf_asq_send_command(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iavf_aq_get_rss_lut(ptr noundef %hw, i16 noundef zeroext %vsi_id, i1 noundef zeroext %pf_lut, ptr noundef %lut, i16 noundef zeroext %lut_size) local_unnamed_addr #4 align 64 {
entry:
  %desc.i = alloca %struct.iavf_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #9
  %0 = getelementptr inbounds %struct.iavf_aq_desc, ptr %desc.i, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @iavf_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 2821) #9
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %desc.i, align 4
  %4 = or i16 %3, 20
  store i16 %4, ptr %desc.i, align 4
  %5 = and i16 %vsi_id, 1023
  %6 = or i16 %5, -32768
  %7 = call i16 @llvm.bswap.i16(i16 %6) #9
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %0, align 4
  br i1 %pf_lut, label %if.then15.i, label %entry.iavf_aq_get_set_rss_lut.exit_crit_edge

entry.iavf_aq_get_set_rss_lut.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_aq_get_set_rss_lut.exit

if.then15.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags16.i = getelementptr inbounds %struct.iavf_aqc_get_set_rss_lut, ptr %0, i32 0, i32 1
  %9 = ptrtoint ptr %flags16.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags16.i, align 2
  %11 = or i16 %10, 256
  store i16 %11, ptr %flags16.i, align 2
  br label %iavf_aq_get_set_rss_lut.exit

iavf_aq_get_set_rss_lut.exit:                     ; preds = %if.then15.i, %entry.iavf_aq_get_set_rss_lut.exit_crit_edge
  %call.i = call i32 @iavf_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %lut, i16 noundef zeroext %lut_size, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iavf_aq_set_rss_lut(ptr noundef %hw, i16 noundef zeroext %vsi_id, i1 noundef zeroext %pf_lut, ptr noundef %lut, i16 noundef zeroext %lut_size) local_unnamed_addr #4 align 64 {
entry:
  %desc.i = alloca %struct.iavf_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #9
  %0 = getelementptr inbounds %struct.iavf_aq_desc, ptr %desc.i, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @iavf_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 2819) #9
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %desc.i, align 4
  %4 = or i16 %3, 20
  store i16 %4, ptr %desc.i, align 4
  %5 = and i16 %vsi_id, 1023
  %6 = or i16 %5, -32768
  %7 = call i16 @llvm.bswap.i16(i16 %6) #9
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %0, align 4
  br i1 %pf_lut, label %if.then15.i, label %entry.iavf_aq_get_set_rss_lut.exit_crit_edge

entry.iavf_aq_get_set_rss_lut.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %iavf_aq_get_set_rss_lut.exit

if.then15.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags16.i = getelementptr inbounds %struct.iavf_aqc_get_set_rss_lut, ptr %0, i32 0, i32 1
  %9 = ptrtoint ptr %flags16.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags16.i, align 2
  %11 = or i16 %10, 256
  store i16 %11, ptr %flags16.i, align 2
  br label %iavf_aq_get_set_rss_lut.exit

iavf_aq_get_set_rss_lut.exit:                     ; preds = %if.then15.i, %entry.iavf_aq_get_set_rss_lut.exit_crit_edge
  %call.i = call i32 @iavf_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %lut, i16 noundef zeroext %lut_size, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iavf_aq_get_rss_key(ptr noundef %hw, i16 noundef zeroext %vsi_id, ptr noundef %key) local_unnamed_addr #4 align 64 {
entry:
  %desc.i = alloca %struct.iavf_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #9
  %0 = getelementptr inbounds %struct.iavf_aq_desc, ptr %desc.i, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @iavf_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 2820) #9
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %desc.i, align 4
  %4 = or i16 %3, 20
  store i16 %4, ptr %desc.i, align 4
  %5 = and i16 %vsi_id, 1023
  %6 = or i16 %5, -32768
  %7 = call i16 @llvm.bswap.i16(i16 %6) #9
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %0, align 4
  %call.i = call i32 @iavf_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %key, i16 noundef zeroext 52, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iavf_aq_set_rss_key(ptr noundef %hw, i16 noundef zeroext %vsi_id, ptr noundef %key) local_unnamed_addr #4 align 64 {
entry:
  %desc.i = alloca %struct.iavf_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #9
  %0 = getelementptr inbounds %struct.iavf_aq_desc, ptr %desc.i, i32 0, i32 6
  %1 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @iavf_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 2818) #9
  %2 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %desc.i, align 4
  %4 = or i16 %3, 20
  store i16 %4, ptr %desc.i, align 4
  %5 = and i16 %vsi_id, 1023
  %6 = or i16 %5, -32768
  %7 = call i16 @llvm.bswap.i16(i16 %6) #9
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %0, align 4
  %call.i = call i32 @iavf_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef %key, i16 noundef zeroext 52, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iavf_aq_send_msg_to_pf(ptr noundef %hw, i32 noundef %v_opcode, i32 noundef %v_retval, ptr noundef %msg, i16 noundef zeroext %msglen, ptr noundef %cmd_details) local_unnamed_addr #4 align 64 {
entry:
  %details = alloca %struct.iavf_asq_cmd_details, align 8
  %desc = alloca %struct.iavf_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %details) #9
  %0 = call ptr @memset(ptr %details, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #9
  %1 = getelementptr inbounds %struct.iavf_aq_desc, ptr %desc, i32 0, i32 4
  %2 = getelementptr inbounds %struct.iavf_aq_desc, ptr %desc, i32 0, i32 5
  %3 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @iavf_fill_default_direct_cmd_desc(ptr noundef nonnull %desc, i16 noundef zeroext 2049) #9
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %desc, align 4
  %6 = or i16 %5, 32
  store i16 %6, ptr %desc, align 4
  %7 = call i32 @llvm.bswap.i32(i32 %v_opcode)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %1, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %v_retval)
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %msglen)
  %tobool.not = icmp eq i16 %msglen, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = getelementptr inbounds %struct.iavf_aq_desc, ptr %desc, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %msglen)
  %cmp = icmp ugt i16 %msglen, 512
  %spec.select.v = select i1 %cmp, i16 54, i16 52
  %spec.select = or i16 %5, %spec.select.v
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %spec.select, ptr %desc, align 4
  %13 = call i16 @llvm.bswap.i16(i16 %msglen)
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %11, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then, %entry.if.end13_crit_edge
  %tobool14.not = icmp eq ptr %cmd_details, null
  br i1 %tobool14.not, label %if.then15, label %if.end13.if.end16_crit_edge

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %15 = call ptr @memset(ptr %details, i32 0, i32 32)
  %async = getelementptr inbounds %struct.iavf_asq_cmd_details, ptr %details, i32 0, i32 4
  %16 = ptrtoint ptr %async to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %async, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13.if.end16_crit_edge
  %cmd_details.addr.0 = phi ptr [ %cmd_details, %if.end13.if.end16_crit_edge ], [ %details, %if.then15 ]
  %call = call i32 @iavf_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc, ptr noundef %msg, i16 noundef zeroext %msglen, ptr noundef nonnull %cmd_details.addr.0) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %details) #9
  ret i32 %call
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iavf_vf_parse_hw_config(ptr nocapture noundef writeonly %hw, ptr nocapture noundef readonly %msg) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %msg, align 4
  %conv = zext i16 %1 to i32
  %dev_caps = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 9
  %num_vsis2 = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %num_vsis2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %num_vsis2, align 4
  %num_queue_pairs = getelementptr inbounds %struct.virtchnl_vf_resource, ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %num_queue_pairs to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num_queue_pairs, align 2
  %conv3 = zext i16 %4 to i32
  %num_rx_qp = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 9, i32 3
  %5 = ptrtoint ptr %num_rx_qp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv3, ptr %num_rx_qp, align 4
  %6 = load i16, ptr %num_queue_pairs, align 2
  %conv6 = zext i16 %6 to i32
  %num_tx_qp = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 9, i32 4
  %7 = ptrtoint ptr %num_tx_qp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv6, ptr %num_tx_qp, align 4
  %max_vectors = getelementptr inbounds %struct.virtchnl_vf_resource, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %max_vectors to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %max_vectors, align 4
  %conv8 = zext i16 %9 to i32
  %num_msix_vectors_vf = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 9, i32 6
  %10 = ptrtoint ptr %num_msix_vectors_vf to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv8, ptr %num_msix_vectors_vf, align 4
  %vf_cap_flags = getelementptr inbounds %struct.virtchnl_vf_resource, ptr %msg, i32 0, i32 4
  %11 = ptrtoint ptr %vf_cap_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vf_cap_flags, align 4
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = ptrtoint ptr %dev_caps to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %dev_caps, align 4
  %fcoe = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %fcoe to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %fcoe, align 1
  %17 = load i16, ptr %msg, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp42.not = icmp eq i16 %17, 0
  br i1 %cmp42.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vsi_res1 = getelementptr inbounds %struct.virtchnl_vf_resource, ptr %msg, i32 0, i32 7
  %perm_addr = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 2, i32 2
  %add.ptr1.i = getelementptr %struct.iavf_hw, ptr %hw, i32 0, i32 2, i32 2, i32 4
  %addr = getelementptr inbounds %struct.iavf_hw, ptr %hw, i32 0, i32 2, i32 1
  %add.ptr1.i40 = getelementptr %struct.iavf_hw, ptr %hw, i32 0, i32 2, i32 1, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %vsi_res.043 = phi ptr [ %vsi_res1, %for.body.lr.ph ], [ %incdec.ptr, %if.end.for.body_crit_edge ]
  %vsi_type = getelementptr inbounds %struct.virtchnl_vsi_resource, ptr %vsi_res.043, i32 0, i32 2
  %18 = ptrtoint ptr %vsi_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vsi_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %19)
  %cmp15 = icmp eq i32 %19, 6
  br i1 %cmp15, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %default_mac_addr = getelementptr inbounds %struct.virtchnl_vsi_resource, ptr %vsi_res.043, i32 0, i32 4
  %20 = ptrtoint ptr %default_mac_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %default_mac_addr, align 4
  %22 = ptrtoint ptr %perm_addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %perm_addr, align 4
  %add.ptr.i = getelementptr %struct.virtchnl_vsi_resource, ptr %vsi_res.043, i32 0, i32 4, i32 4
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i, align 2
  %25 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %add.ptr1.i, align 2
  %26 = load i32, ptr %default_mac_addr, align 4
  %27 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %addr, align 4
  %28 = load i16, ptr %add.ptr.i, align 2
  %29 = ptrtoint ptr %add.ptr1.i40 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %add.ptr1.i40, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %incdec.ptr = getelementptr %struct.virtchnl_vsi_resource, ptr %vsi_res.043, i32 1
  %inc = add nuw nsw i32 %i.045, 1
  %30 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %msg, align 4
  %conv13 = zext i16 %31 to i32
  %cmp = icmp ult i32 %inc, %conv13
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iavf_vf_reset(ptr noundef %hw) local_unnamed_addr #4 align 64 {
entry:
  %details.i = alloca %struct.iavf_asq_cmd_details, align 8
  %desc.i = alloca %struct.iavf_aq_desc, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %details.i) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #9
  %0 = getelementptr inbounds %struct.iavf_aq_desc, ptr %desc.i, i32 0, i32 4
  %1 = getelementptr inbounds %struct.iavf_aq_desc, ptr %desc.i, i32 0, i32 5
  %2 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @iavf_fill_default_direct_cmd_desc(ptr noundef nonnull %desc.i, i16 noundef zeroext 2049) #9
  %3 = ptrtoint ptr %desc.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %desc.i, align 4
  %5 = or i16 %4, 32
  store i16 %5, ptr %desc.i, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 33554432, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %1, align 4
  %8 = call ptr @memset(ptr %details.i, i32 0, i32 32)
  %async.i = getelementptr inbounds %struct.iavf_asq_cmd_details, ptr %details.i, i32 0, i32 4
  %9 = ptrtoint ptr %async.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %async.i, align 4
  %call.i = call i32 @iavf_asq_send_command(ptr noundef %hw, ptr noundef nonnull %desc.i, ptr noundef null, i16 noundef zeroext 0, ptr noundef nonnull %details.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %details.i) #9
  ret i32 %call.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !183, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !206}
!llvm.module.flags = !{!208, !209, !210, !211, !212, !213, !214, !215}
!llvm.ident = !{!216}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 51, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 53, i32 10}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 55, i32 10}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 57, i32 10}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 59, i32 10}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 61, i32 10}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 63, i32 10}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 65, i32 10}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 67, i32 10}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 69, i32 10}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 71, i32 10}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 73, i32 10}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 75, i32 10}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 77, i32 10}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 79, i32 10}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 81, i32 10}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 83, i32 10}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 85, i32 10}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 87, i32 10}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 89, i32 10}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 91, i32 10}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 93, i32 10}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 95, i32 10}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 98, i32 45}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 113, i32 10}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 115, i32 10}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 117, i32 10}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 119, i32 10}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 121, i32 10}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 123, i32 10}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 125, i32 10}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 127, i32 10}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 129, i32 10}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 131, i32 10}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 133, i32 10}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 135, i32 10}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 137, i32 10}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 139, i32 10}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 141, i32 10}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 143, i32 10}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 145, i32 10}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 147, i32 10}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 149, i32 10}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 151, i32 10}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 153, i32 10}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 155, i32 10}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 157, i32 10}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 159, i32 10}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 161, i32 10}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 163, i32 10}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 165, i32 10}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 167, i32 10}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 169, i32 10}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 171, i32 10}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 173, i32 10}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 175, i32 10}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 177, i32 10}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 179, i32 10}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 181, i32 10}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 183, i32 10}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 185, i32 10}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 187, i32 10}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 189, i32 10}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 191, i32 10}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 193, i32 10}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 195, i32 10}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 197, i32 10}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 199, i32 10}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 201, i32 10}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 203, i32 10}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 205, i32 10}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 207, i32 10}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 209, i32 10}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 211, i32 10}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 213, i32 10}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 215, i32 10}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 217, i32 10}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 219, i32 10}
!156 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 221, i32 10}
!158 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 223, i32 10}
!160 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 225, i32 10}
!162 = !{ptr @.str.81, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 227, i32 10}
!164 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 229, i32 10}
!166 = !{ptr @.str.83, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 231, i32 10}
!168 = !{ptr @.str.84, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 233, i32 10}
!170 = !{ptr @.str.85, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 235, i32 10}
!172 = !{ptr @.str.86, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 237, i32 10}
!174 = !{ptr @.str.87, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 239, i32 10}
!176 = !{ptr @.str.88, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 241, i32 10}
!178 = !{ptr @.str.89, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 243, i32 10}
!180 = !{ptr @.str.90, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 269, i32 2}
!182 = !{ptr @.str.91, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.92, !181, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @iavf_debug_aq._entry, !181, !"_entry", i1 false, i1 false}
!185 = !{ptr @iavf_debug_aq._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.94, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 275, i32 2}
!188 = !{ptr @iavf_debug_aq._entry.93, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @iavf_debug_aq._entry_ptr.95, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.97, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 278, i32 2}
!192 = !{ptr @iavf_debug_aq._entry.96, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @iavf_debug_aq._entry_ptr.98, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.100, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 281, i32 2}
!196 = !{ptr @iavf_debug_aq._entry.99, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @iavf_debug_aq._entry_ptr.101, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.103, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 288, i32 3}
!200 = !{ptr @iavf_debug_aq._entry.102, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @iavf_debug_aq._entry_ptr.104, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.105, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 296, i32 6}
!204 = !{ptr @.str.106, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 301, i32 19}
!206 = !{ptr @iavf_ptype_lookup, !207, !"iavf_ptype_lookup", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/intel/iavf/iavf_common.c", i32 546, i32 30}
!208 = !{i32 1, !"wchar_size", i32 2}
!209 = !{i32 1, !"min_enum_size", i32 4}
!210 = !{i32 8, !"branch-target-enforcement", i32 0}
!211 = !{i32 8, !"sign-return-address", i32 0}
!212 = !{i32 8, !"sign-return-address-all", i32 0}
!213 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!214 = !{i32 7, !"uwtable", i32 1}
!215 = !{i32 7, !"frame-pointer", i32 2}
!216 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!217 = !{i64 6076553}
!218 = !{i64 2157563003}
