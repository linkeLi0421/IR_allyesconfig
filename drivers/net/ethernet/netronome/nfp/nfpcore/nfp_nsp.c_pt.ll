; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfp_nsp = type { ptr, ptr, %struct.anon, i8, i32, ptr }
%struct.anon = type { i16, i16 }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.nfp_nsp_command_arg = type { i16, i8, i32, i32, i64, ptr, i8 }
%struct.nfp_nsp_command_buf_arg = type { %struct.nfp_nsp_command_arg, ptr, i32, ptr, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.anon.77 = type { i32, i32, ptr }
%struct.page = type { i32, %union.anon.5, %union.anon.69, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.69 = type { %struct.atomic_t }
%struct.nfp_nsp_dma_buf = type { i32, [3 x i32], [0 x %struct.anon.76] }
%struct.anon.76 = type { i32, i32, i64 }
%struct.eeprom_buf = type <{ i8, i16, i16, i16, i8, [0 x i8] }>

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nfp.sp\00", [25 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nfp_nsp_wait.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfp\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nfp_nsp_wait\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"nfp_nsp: Waiting for NSP to respond (%u sec max).\0A\00", [45 x i8] zeroinitializer }, align 32
@nfp_nsp_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 722, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nfp_nsp: NSP failed to respond %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_nsp_wait._entry_ptr = internal global ptr @nfp_nsp_wait._entry, section ".printk_index", align 4
@__const.nfp_nsp_load_stored_fw.arg = private unnamed_addr constant { i16, i8, [1 x i8], i32, i32, [4 x i8], i64, ptr, i8, [3 x i8] } { i16 16, i8 0, [1 x i8] zeroinitializer, i32 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr @nfp_nsp_load_fw_extended_msg, i8 0, [3 x i8] zeroinitializer }, align 8
@nfp_nsp_hwinfo_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 930, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"nfp_nsp: NSP HWinfo value not NULL-terminated\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfp_nsp_hwinfo_lookup\00", [42 x i8] zeroinitializer }, align 32
@nfp_nsp_hwinfo_lookup._entry_ptr = internal global ptr @nfp_nsp_hwinfo_lookup._entry, section ".printk_index", align 4
@nfp_nsp_hwinfo_lookup_optional._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 962, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nfp_nsp: NSP HWinfo lookup failed: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nfp_nsp_hwinfo_lookup_optional\00", [33 x i8] zeroinitializer }, align 32
@nfp_nsp_hwinfo_lookup_optional._entry_ptr = internal global ptr @nfp_nsp_hwinfo_lookup_optional._entry, section ".printk_index", align 4
@nfp_nsp_hwinfo_lookup_optional._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.11, ptr @.str.3, i32 967, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@nfp_nsp_hwinfo_lookup_optional._entry_ptr.13 = internal global ptr @nfp_nsp_hwinfo_lookup_optional._entry.12, section ".printk_index", align 4
@__const.nfp_nsp_fw_loaded.arg = private unnamed_addr constant { i16, i8, [1 x i8], i32, i32, [4 x i8], i64, ptr, i8, [3 x i8] } { i16 19, i8 0, [1 x i8] zeroinitializer, i32 0, i32 0, [4 x i8] zeroinitializer, i64 0, ptr null, i8 0, [3 x i8] zeroinitializer }, align 8
@nfp_nsp_versions_get.id2off = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26], [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfp_nsp_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 242, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"nfp_nsp: Cannot detect NFP Service Processor\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfp_nsp_check\00", [18 x i8] zeroinitializer }, align 32
@nfp_nsp_check._entry_ptr = internal global ptr @nfp_nsp_check._entry, section ".printk_index", align 4
@nfp_nsp_check._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 251, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nfp_nsp: Unsupported ABI %hu.%hu\0A\00", [62 x i8] zeroinitializer }, align 32
@nfp_nsp_check._entry_ptr.18 = internal global ptr @nfp_nsp_check._entry.16, section ".printk_index", align 4
@nfp_nsp_check._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.3, i32 256, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"nfp_nsp: ABI too old to support NIC operation (%u.%hu < %u.%u), please update the management FW on the flash\0A\00", [50 x i8] zeroinitializer }, align 32
@nfp_nsp_check._entry_ptr.21 = internal global ptr @nfp_nsp_check._entry.19, section ".printk_index", align 4
@nfp_nsp_check._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.3, i32 261, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nfp_nsp: Service processor busy!\0A\00", [62 x i8] zeroinitializer }, align 32
@nfp_nsp_check._entry_ptr.24 = internal global ptr @nfp_nsp_check._entry.22, section ".printk_index", align 4
@nfp_nsp_load_fw_extended_msg.major_msg = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27], [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Firmware from driver loaded\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Firmware from flash loaded\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Firmware loading failure\00", [39 x i8] zeroinitializer }, align 32
@nfp_nsp_load_fw_extended_msg.minor_msg = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no named partition on flash\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error reading from flash\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"can not deflate\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"not a trusted file\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"can not parse FW file\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MIP not found in FW file\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"null firmware name in MIP\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FW version none\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FW build number none\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"no FW selection policy HWInfo key found\00", [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"static FW selection policy\00", [37 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FW version has precedence\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"different FW application load requested\00", [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"development build\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nfp_nsp_load_fw_extended_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 780, ptr null, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nfp_nsp: FW loading status: %x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nfp_nsp_load_fw_extended_msg\00", [35 x i8] zeroinitializer }, align 32
@nfp_nsp_load_fw_extended_msg._entry_ptr = internal global ptr @nfp_nsp_load_fw_extended_msg._entry, section ".printk_index", align 4
@nfp_nsp_load_fw_extended_msg._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 783, ptr null, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nfp_nsp: %s, reason code: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@nfp_nsp_load_fw_extended_msg._entry_ptr.49 = internal global ptr @nfp_nsp_load_fw_extended_msg._entry.47, section ".printk_index", align 4
@nfp_nsp_load_fw_extended_msg._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.3, i32 787, ptr null, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfp_nsp: %s%c %s\0A\00", [46 x i8] zeroinitializer }, align 32
@nfp_nsp_load_fw_extended_msg._entry_ptr.52 = internal global ptr @nfp_nsp_load_fw_extended_msg._entry.50, section ".printk_index", align 4
@nfp_nsp_command_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 666, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"nfp_nsp: NSP: Code 0x%04x with buffer not supported (ABI %hu.%hu)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfp_nsp_command_buf\00", [44 x i8] zeroinitializer }, align 32
@nfp_nsp_command_buf._entry_ptr = internal global ptr @nfp_nsp_command_buf._entry, section ".printk_index", align 4
@nfp_nsp_command_buf._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.3, i32 689, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"nfp_nsp: NSP: default buffer too small for command 0x%04x (%u < %u)\0A\00", [59 x i8] zeroinitializer }, align 32
@nfp_nsp_command_buf._entry_ptr.57 = internal global ptr @nfp_nsp_command_buf._entry.55, section ".printk_index", align 4
@nfp_nsp_command_buf_def._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 472, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"nfp_nsp: Buffer out of reach %08x %016llx\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfp_nsp_command_buf_def\00", [40 x i8] zeroinitializer }, align 32
@nfp_nsp_command_buf_def._entry_ptr = internal global ptr @nfp_nsp_command_buf_def._entry, section ".printk_index", align 4
@nfp_nsp_command_buf_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 644, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"nfp_nsp: NSP: can't service non-SG DMA for command 0x%04x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfp_nsp_command_buf_dma\00", [40 x i8] zeroinitializer }, align 32
@nfp_nsp_command_buf_dma._entry_ptr = internal global ptr @nfp_nsp_command_buf_dma._entry, section ".printk_index", align 4
@nfp_nsp_command_buf_dma_sg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unaligned DMA address: %pad %lu %zd\0A\00", [59 x i8] zeroinitializer }, align 32
@nfp_nsp_command_buf_dma_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 617, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"nfp_nsp: NSP: SG DMA failed for command 0x%04x: %d (sz:%d cord:%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfp_nsp_command_buf_dma_sg\00", [37 x i8] zeroinitializer }, align 32
@nfp_nsp_command_buf_dma_sg._entry_ptr = internal global ptr @nfp_nsp_command_buf_dma_sg._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__nfp_nsp_command._entry = internal constant %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 393, ptr @.str.6, ptr @.str.7 }, align 1
@.str.67 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"nfp_nsp: Error %d waiting for code 0x%04x to start\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__nfp_nsp_command\00", [46 x i8] zeroinitializer }, align 32
@__nfp_nsp_command._entry_ptr = internal global ptr @__nfp_nsp_command._entry, section ".printk_index", align 4
@__nfp_nsp_command._entry.69 = internal constant %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.3, i32 402, ptr @.str.6, ptr @.str.7 }, align 1
@.str.70 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"nfp_nsp: Error %d waiting for code 0x%04x to complete\0A\00", [41 x i8] zeroinitializer }, align 32
@__nfp_nsp_command._entry_ptr.71 = internal global ptr @__nfp_nsp_command._entry.69, section ".printk_index", align 4
@__nfp_nsp_command._entry.72 = internal constant %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.3, i32 415, ptr @.str.74, ptr @.str.7 }, align 1
@.str.73 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"nfp_nsp: Result (error) code set: %d (%d) command: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@__nfp_nsp_command._entry_ptr.75 = internal global ptr @__nfp_nsp_command._entry.72, section ".printk_index", align 4
@nfp_nsp_print_extended_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.3, i32 224, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfp_nsp: err msg: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nfp_nsp_print_extended_error\00", [35 x i8] zeroinitializer }, align 32
@nfp_nsp_print_extended_error._entry_ptr = internal global ptr @nfp_nsp_print_extended_error._entry, section ".printk_index", align 4
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not map to phy for port\00", [34 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"not an allowed rate/lanes for port\00", [61 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"high/low error, change other port first\00", [56 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"config not found in flash\00", [38 x i8] zeroinitializer }, align 32
@switch.table.nfp_nsp_print_extended_error = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.78, ptr @.str.79, ptr @.str.79, ptr @.str.80, ptr @.str.81], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 278, i32 34 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 701, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 722, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 930, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 962, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 967, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"id2off\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1014, i32 19 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 242, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 250, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 255, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 261, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [10 x i8] c"major_msg\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 739, i32 28 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 740, i32 11 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 741, i32 11 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 742, i32 11 }
@___asan_gen_.175 = private unnamed_addr constant [10 x i8] c"minor_msg\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 744, i32 28 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 745, i32 12 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 746, i32 12 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 747, i32 12 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 748, i32 12 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 749, i32 12 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 750, i32 12 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 751, i32 12 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 752, i32 12 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 753, i32 12 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 754, i32 12 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 755, i32 12 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 756, i32 12 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 757, i32 12 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 758, i32 12 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 759, i32 12 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 772, i32 11 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 776, i32 11 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 779, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 782, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 785, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 665, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 688, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 471, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 643, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 555, i32 7 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 616, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 326, i32 6 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 392, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 401, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 414, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 224, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 119, i32 10 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 120, i32 10 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 122, i32 10 }
@___asan_gen_.334 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.335 = private constant [56 x i8] c"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 123, i32 10 }
@___asan_gen_.337 = private unnamed_addr constant [42 x i8] c"switch.table.nfp_nsp_print_extended_error\00", align 1
@llvm.compiler.used = appending global [108 x ptr] [ptr @__nfp_nsp_command._entry, ptr @__nfp_nsp_command._entry.69, ptr @__nfp_nsp_command._entry.72, ptr @__nfp_nsp_command._entry_ptr, ptr @__nfp_nsp_command._entry_ptr.71, ptr @__nfp_nsp_command._entry_ptr.75, ptr @nfp_nsp_check._entry, ptr @nfp_nsp_check._entry.16, ptr @nfp_nsp_check._entry.19, ptr @nfp_nsp_check._entry.22, ptr @nfp_nsp_check._entry_ptr, ptr @nfp_nsp_check._entry_ptr.18, ptr @nfp_nsp_check._entry_ptr.21, ptr @nfp_nsp_check._entry_ptr.24, ptr @nfp_nsp_command_buf._entry, ptr @nfp_nsp_command_buf._entry.55, ptr @nfp_nsp_command_buf._entry_ptr, ptr @nfp_nsp_command_buf._entry_ptr.57, ptr @nfp_nsp_command_buf_def._entry, ptr @nfp_nsp_command_buf_def._entry_ptr, ptr @nfp_nsp_command_buf_dma._entry, ptr @nfp_nsp_command_buf_dma._entry_ptr, ptr @nfp_nsp_command_buf_dma_sg._entry, ptr @nfp_nsp_command_buf_dma_sg._entry_ptr, ptr @nfp_nsp_hwinfo_lookup._entry, ptr @nfp_nsp_hwinfo_lookup._entry_ptr, ptr @nfp_nsp_hwinfo_lookup_optional._entry, ptr @nfp_nsp_hwinfo_lookup_optional._entry.12, ptr @nfp_nsp_hwinfo_lookup_optional._entry_ptr, ptr @nfp_nsp_hwinfo_lookup_optional._entry_ptr.13, ptr @nfp_nsp_load_fw_extended_msg._entry, ptr @nfp_nsp_load_fw_extended_msg._entry.47, ptr @nfp_nsp_load_fw_extended_msg._entry.50, ptr @nfp_nsp_load_fw_extended_msg._entry_ptr, ptr @nfp_nsp_load_fw_extended_msg._entry_ptr.49, ptr @nfp_nsp_load_fw_extended_msg._entry_ptr.52, ptr @nfp_nsp_print_extended_error._entry, ptr @nfp_nsp_print_extended_error._entry_ptr, ptr @nfp_nsp_wait._entry, ptr @nfp_nsp_wait._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @nfp_nsp_versions_get.id2off, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @nfp_nsp_load_fw_extended_msg.major_msg, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @nfp_nsp_load_fw_extended_msg.minor_msg, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @switch.table.nfp_nsp_print_extended_error], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_nsp_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_nsp_hwinfo_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_nsp_hwinfo_lookup_optional._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_nsp_hwinfo_lookup_optional._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_nsp_versions_get.id2off to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_nsp_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_nsp_check._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_nsp_check._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_nsp_check._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_nsp_load_fw_extended_msg.major_msg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_nsp_load_fw_extended_msg.minor_msg to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_nsp_load_fw_extended_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_nsp_load_fw_extended_msg._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_nsp_load_fw_extended_msg._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_nsp_command_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_nsp_command_buf._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_nsp_command_buf_def._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_nsp_command_buf_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_nsp_command_buf_dma_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_nsp_print_extended_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nfp_nsp_print_extended_error to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @nfp_nsp_cpp(ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nfp_nsp_config_modified(ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %modified = getelementptr inbounds %struct.nfp_nsp, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %modified to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %modified, align 4, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nfp_nsp_config_set_modified(ptr nocapture noundef writeonly %state, i1 noundef zeroext %modified) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %modified to i8
  %modified1 = getelementptr inbounds %struct.nfp_nsp, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %modified1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %modified1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @nfp_nsp_config_entries(ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %entries = getelementptr inbounds %struct.nfp_nsp, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entries, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nfp_nsp_config_idx(ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.nfp_nsp, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nfp_nsp_config_set_state(ptr nocapture noundef writeonly %state, ptr noundef %entries, i32 noundef %idx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %entries1 = getelementptr inbounds %struct.nfp_nsp, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %entries1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %entries, ptr %entries1, align 4
  %idx2 = getelementptr inbounds %struct.nfp_nsp, ptr %state, i32 0, i32 4
  %1 = ptrtoint ptr %idx2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %idx, ptr %idx2, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nfp_nsp_config_clear_state(ptr nocapture noundef writeonly %state) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %entries = getelementptr inbounds %struct.nfp_nsp, ptr %state, i32 0, i32 5
  %0 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %entries, align 4
  %idx = getelementptr inbounds %struct.nfp_nsp, ptr %state, i32 0, i32 4
  %1 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %idx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_nsp_open(ptr noundef %cpp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_resource_acquire(ptr noundef %cpp, ptr noundef nonnull @.str) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nfp_resource_release(ptr noundef %call) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cpp, ptr %call7.i.i, align 8
  %res7 = getelementptr inbounds %struct.nfp_nsp, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %res7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %res7, align 4
  %call8 = tail call fastcc i32 @nfp_nsp_check(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end5.cleanup_crit_edge, label %if.then10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %res7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %res7, align 4
  tail call void @nfp_resource_release(ptr noundef %4) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  %5 = inttoptr i32 %call8 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end5.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %5, %if.then10 ], [ inttoptr (i32 -12 to ptr), %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end5.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_resource_acquire(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_resource_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_nsp_check(ptr nocapture noundef %state) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg) #12
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %reg, align 8, !annotation !173
  %res = getelementptr inbounds %struct.nfp_nsp, ptr %state, i32 0, i32 1
  %3 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %res, align 4
  %call = tail call i32 @nfp_resource_cpp_id(ptr noundef %4) #12
  %5 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %res, align 4
  %call3 = tail call i64 @nfp_resource_address(ptr noundef %6) #12
  %call4 = call i32 @nfp_cpp_readq(ptr noundef %1, i32 noundef %call, i64 noundef %call3, ptr noundef nonnull %reg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end16

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end16:                                         ; preds = %entry
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %reg, align 8
  %shr.mask = and i64 %8, -281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6120391893596504064, i64 %shr.mask)
  %cmp17.not = icmp eq i64 %shr.mask, -6120391893596504064
  br i1 %cmp17.not, label %do.end38, label %do.end21

do.end21:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = call ptr @nfp_cpp_device(ptr noundef %1) #12
  %parent = getelementptr inbounds %struct.device, ptr %call22, i32 0, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.14) #16
  br label %cleanup

do.end38:                                         ; preds = %do.end16
  %and40 = lshr i64 %8, 44
  %11 = trunc i64 %and40 to i16
  %conv = and i16 %11, 15
  %ver = getelementptr inbounds %struct.nfp_nsp, ptr %state, i32 0, i32 2
  %12 = ptrtoint ptr %ver to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %ver, align 4
  %and58 = lshr i64 %8, 32
  %13 = trunc i64 %and58 to i16
  %conv60 = and i16 %13, 4095
  %minor = getelementptr inbounds %struct.nfp_nsp, ptr %state, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %minor to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv60, ptr %minor, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %cmp65.not = icmp eq i16 %conv, 0
  br i1 %cmp65.not, label %if.end79, label %do.end70

do.end70:                                         ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #14
  %call71 = call ptr @nfp_cpp_device(ptr noundef %1) #12
  %parent72 = getelementptr inbounds %struct.device, ptr %call71, i32 0, i32 1
  %15 = ptrtoint ptr %parent72 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent72, align 8
  %17 = ptrtoint ptr %ver to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ver, align 4
  %conv75 = zext i16 %18 to i32
  %19 = ptrtoint ptr %minor to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %minor, align 2
  %conv78 = zext i16 %20 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.17, i32 noundef %conv75, i32 noundef %conv78) #16
  br label %cleanup

if.end79:                                         ; preds = %do.end38
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %conv60)
  %cmp83 = icmp ult i16 %conv60, 8
  br i1 %cmp83, label %do.end88, label %if.end94

do.end88:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  %call89 = call ptr @nfp_cpp_device(ptr noundef %1) #12
  %parent90 = getelementptr inbounds %struct.device, ptr %call89, i32 0, i32 1
  %21 = ptrtoint ptr %parent90 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent90, align 8
  %23 = ptrtoint ptr %minor to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %minor, align 2
  %conv93 = zext i16 %24 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.20, i32 noundef 0, i32 noundef %conv93, i32 noundef 0, i32 noundef 8) #16
  br label %cleanup

if.end94:                                         ; preds = %if.end79
  %and95 = and i64 %8, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and95)
  %tobool.not = icmp eq i64 %and95, 0
  br i1 %tobool.not, label %if.end94.cleanup_crit_edge, label %do.end99

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end99:                                         ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  %call100 = call ptr @nfp_cpp_device(ptr noundef %1) #12
  %parent101 = getelementptr inbounds %struct.device, ptr %call100, i32 0, i32 1
  %25 = ptrtoint ptr %parent101 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent101, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.23) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end99, %if.end94.cleanup_crit_edge, %do.end88, %do.end70, %do.end21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end21 ], [ -22, %do.end70 ], [ -22, %do.end88 ], [ -16, %do.end99 ], [ %call4, %entry.cleanup_crit_edge ], [ 0, %if.end94.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_nsp_close(ptr noundef %state) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %res = getelementptr inbounds %struct.nfp_nsp, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  tail call void @nfp_resource_release(ptr noundef %1) #12
  tail call void @kfree(ptr noundef %state) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @nfp_nsp_get_abi_ver_major(ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ver = getelementptr inbounds %struct.nfp_nsp, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ver, align 4
  ret i16 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @nfp_nsp_get_abi_ver_minor(ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %minor = getelementptr inbounds %struct.nfp_nsp, ptr %state, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %minor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %minor, align 2
  ret i16 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_nsp_wait(ptr noundef %state) local_unnamed_addr #2 align 64 {
entry:
  %arg.i = alloca %struct.nfp_nsp_command_arg, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 3000
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nfp_nsp_wait.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nfp_nsp_wait, %if.then)) #12
          to label %for.cond [label %if.then], !srcloc !174

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 4
  %call3 = tail call ptr @nfp_cpp_device(ptr noundef %2) #12
  %parent = getelementptr inbounds %struct.device, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nfp_nsp_wait.__UNIQUE_ID_ddebug371, ptr noundef %4, ptr noundef nonnull @.str.4, i32 noundef 30) #12
  br label %for.cond

for.cond:                                         ; preds = %if.end10.for.cond_crit_edge, %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %arg.i) #12
  %6 = call ptr @memset(ptr %arg.i, i32 0, i32 32)
  %call.i = call fastcc i32 @__nfp_nsp_command(ptr noundef %state, ptr noundef nonnull %arg.i) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %arg.i) #12
  %7 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %for.cond.do.end18_crit_edge [
    i32 -11, label %if.end6
    i32 0, label %for.cond.if.end22_crit_edge
  ]

for.cond.if.end22_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

for.cond.do.end18_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end18

if.end6:                                          ; preds = %for.cond
  %call7 = tail call i32 @msleep_interruptible(i32 noundef 25) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.do.end18_crit_edge

if.end6.do.end18_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end18

if.end10:                                         ; preds = %if.end6
  %sub = sub i32 %add, %5
  %cmp11 = icmp slt i32 %sub, 0
  br i1 %cmp11, label %if.end10.do.end18_crit_edge, label %if.end10.for.cond_crit_edge

if.end10.for.cond_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.end10.do.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end18

do.end18:                                         ; preds = %if.end10.do.end18_crit_edge, %if.end6.do.end18_crit_edge, %for.cond.do.end18_crit_edge
  %err.0.ph38 = phi i32 [ -512, %if.end6.do.end18_crit_edge ], [ -110, %if.end10.do.end18_crit_edge ], [ %call.i, %for.cond.do.end18_crit_edge ]
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state, align 4
  %call20 = tail call ptr @nfp_cpp_device(ptr noundef %9) #12
  %parent21 = getelementptr inbounds %struct.device, ptr %call20, i32 0, i32 1
  %10 = ptrtoint ptr %parent21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent21, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.5, i32 noundef %err.0.ph38) #16
  br label %if.end22

if.end22:                                         ; preds = %do.end18, %for.cond.if.end22_crit_edge
  %err.0.ph39 = phi i32 [ %err.0.ph38, %do.end18 ], [ %call.i, %for.cond.if.end22_crit_edge ]
  ret i32 %err.0.ph39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_nsp_device_soft_reset(ptr noundef %state) local_unnamed_addr #2 align 64 {
entry:
  %arg.i = alloca %struct.nfp_nsp_command_arg, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %arg.i) #12
  %0 = call ptr @memset(ptr %arg.i, i32 0, i32 32)
  %1 = ptrtoint ptr %arg.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1, ptr %arg.i, align 8
  %call.i = call fastcc i32 @__nfp_nsp_command(ptr noundef %state, ptr noundef nonnull %arg.i) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %arg.i) #12
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_nsp_mac_reinit(ptr noundef %state) local_unnamed_addr #2 align 64 {
entry:
  %arg.i = alloca %struct.nfp_nsp_command_arg, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %arg.i) #12
  %0 = call ptr @memset(ptr %arg.i, i32 0, i32 32)
  %1 = ptrtoint ptr %arg.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 4, ptr %arg.i, align 8
  %call.i = call fastcc i32 @__nfp_nsp_command(ptr noundef %state, ptr noundef nonnull %arg.i) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %arg.i) #12
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_nsp_load_fw(ptr noundef %state, ptr nocapture noundef readonly %fw) local_unnamed_addr #2 align 64 {
entry:
  %load_fw = alloca %struct.nfp_nsp_command_buf_arg, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %load_fw) #12
  %0 = call ptr @memset(ptr %load_fw, i32 255, i32 32)
  %1 = ptrtoint ptr %load_fw to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 6, ptr %load_fw, align 8
  %dma = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %load_fw, i32 0, i32 1
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %dma, align 2
  %timeout_sec = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %load_fw, i32 0, i32 2
  %3 = ptrtoint ptr %timeout_sec to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %timeout_sec, align 4
  %option = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %load_fw, i32 0, i32 3
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw, align 4
  %6 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %option, align 8
  %buf = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %load_fw, i32 0, i32 4
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %buf, align 8
  %error_cb = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %load_fw, i32 0, i32 5
  %8 = ptrtoint ptr %error_cb to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nfp_nsp_load_fw_extended_msg, ptr %error_cb, align 8
  %error_quiet = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %load_fw, i32 0, i32 6
  %9 = ptrtoint ptr %error_quiet to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %error_quiet, align 4
  %in_buf = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %load_fw, i32 0, i32 1
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %in_buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %in_buf, align 8
  %in_size = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %load_fw, i32 0, i32 2
  %13 = ptrtoint ptr %in_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %5, ptr %in_size, align 4
  %out_buf = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %load_fw, i32 0, i32 3
  %14 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %out_buf, align 8
  %out_size = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %load_fw, i32 0, i32 4
  %15 = ptrtoint ptr %out_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %out_size, align 4
  %call = call fastcc i32 @nfp_nsp_command_buf(ptr noundef %state, ptr noundef nonnull %load_fw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @nfp_nsp_load_fw_extended_msg(ptr noundef %state, i32 noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %load_fw) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_nsp_load_fw_extended_msg(ptr nocapture noundef readonly %state, i32 noundef %ret_val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %ret_val, 8
  %shr = and i32 %and, 255
  %and29 = lshr i32 %ret_val, 16
  %shr30 = and i32 %and29, 255
  %minor.i.i = getelementptr inbounds %struct.nfp_nsp, ptr %state, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %minor.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %minor.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 23, i16 %1)
  %cmp.i = icmp ugt i16 %1, 23
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %trunc = trunc i32 %and to i8
  %2 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %trunc, label %if.end38 [
    i8 0, label %land.lhs.true
    i8 2, label %if.end.if.end38.thread_crit_edge
  ]

if.end.if.end38.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.thread

land.lhs.true:                                    ; preds = %if.end
  %trunc94 = trunc i32 %and29 to i8
  %3 = zext i8 %trunc94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %trunc94, label %land.lhs.true.if.else47_crit_edge [
    i8 0, label %land.lhs.true.if.end38.thread_crit_edge
    i8 10, label %land.lhs.true.if.end38.thread_crit_edge95
  ]

land.lhs.true.if.end38.thread_crit_edge95:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.thread

land.lhs.true.if.end38.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.thread

land.lhs.true.if.else47_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else47

if.end38.thread:                                  ; preds = %land.lhs.true.if.end38.thread_crit_edge, %land.lhs.true.if.end38.thread_crit_edge95, %if.end.if.end38.thread_crit_edge
  %level.0.ph = phi ptr [ @.str.6, %if.end.if.end38.thread_crit_edge ], [ @.str.43, %land.lhs.true.if.end38.thread_crit_edge ], [ @.str.43, %land.lhs.true.if.end38.thread_crit_edge95 ]
  br label %if.else47

if.end38:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr)
  %cmp39 = icmp ugt i32 %shr, 2
  br i1 %cmp39, label %do.end45, label %if.end38.if.else47_crit_edge

if.end38.if.else47_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else47

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  %call46 = tail call ptr @nfp_cpp_device(ptr noundef %5) #12
  %parent = getelementptr inbounds %struct.device, ptr %call46, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.44, ptr noundef %7, ptr noundef nonnull @.str.45, i32 noundef %ret_val) #16
  br label %cleanup

if.else47:                                        ; preds = %if.end38.if.else47_crit_edge, %if.end38.thread, %land.lhs.true.if.else47_crit_edge
  %level.091 = phi ptr [ %level.0.ph, %if.end38.thread ], [ @.str.44, %if.end38.if.else47_crit_edge ], [ @.str.44, %land.lhs.true.if.else47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %shr30)
  %cmp48 = icmp ugt i32 %shr30, 14
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state, align 4
  %call56 = tail call ptr @nfp_cpp_device(ptr noundef %9) #12
  %parent57 = getelementptr inbounds %struct.device, ptr %call56, i32 0, i32 1
  %10 = ptrtoint ptr %parent57 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent57, align 8
  %arrayidx = getelementptr [3 x ptr], ptr @nfp_nsp_load_fw_extended_msg.major_msg, i32 0, i32 %shr
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  br i1 %cmp48, label %do.end54, label %do.end63

do.end54:                                         ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull %level.091, ptr noundef %11, ptr noundef nonnull @.str.48, ptr noundef %13, i32 noundef %shr30) #16
  br label %cleanup

do.end63:                                         ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr30)
  %tobool.not = icmp eq i32 %shr30, 0
  %cond = select i1 %tobool.not, i32 46, i32 44
  %arrayidx68 = getelementptr [15 x ptr], ptr @nfp_nsp_load_fw_extended_msg.minor_msg, i32 0, i32 %shr30
  %14 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx68, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull %level.091, ptr noundef %11, ptr noundef nonnull @.str.51, ptr noundef %13, i32 noundef %cond, ptr noundef %15) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %do.end54, %do.end45, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_nsp_command_buf(ptr noundef %nsp, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  %addr.i.i = alloca i32, align 4
  %reg.i142 = alloca i64, align 8
  %reg.i = alloca i64, align 8
  %reg = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nsp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nsp, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg) #12
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %reg, align 8, !annotation !173
  %minor = getelementptr inbounds %struct.nfp_nsp, ptr %nsp, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %minor to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %minor, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %4)
  %cmp = icmp ult i16 %4, 13
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ver = getelementptr inbounds %struct.nfp_nsp, ptr %nsp, i32 0, i32 2
  %call = tail call ptr @nfp_cpp_device(ptr noundef %1) #12
  %parent = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %7 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arg, align 8
  %conv4 = zext i16 %8 to i32
  %9 = ptrtoint ptr %ver to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ver, align 4
  %conv6 = zext i16 %10 to i32
  %11 = ptrtoint ptr %minor to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %minor, align 2
  %conv9 = zext i16 %12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.53, i32 noundef %conv4, i32 noundef %conv6, i32 noundef %conv9) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %res = getelementptr inbounds %struct.nfp_nsp, ptr %nsp, i32 0, i32 1
  %13 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %res, align 4
  %call10 = tail call i32 @nfp_resource_cpp_id(ptr noundef %14) #12
  %15 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %res, align 4
  %call12 = tail call i64 @nfp_resource_address(ptr noundef %16) #12
  %add = add i64 %call12, 32
  %call13 = call i32 @nfp_cpp_readq(ptr noundef %1, i32 noundef %call10, i64 noundef %add, ptr noundef nonnull %reg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %out_buf = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %arg, i32 0, i32 3
  %17 = ptrtoint ptr %out_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %out_buf, align 8
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.end17.if.end27_crit_edge, label %land.lhs.true

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end17
  %out_size = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %arg, i32 0, i32 4
  %19 = ptrtoint ptr %out_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %out_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool18.not = icmp eq i32 %20, 0
  br i1 %tobool18.not, label %land.lhs.true.if.end27_crit_edge, label %land.lhs.true19

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

land.lhs.true19:                                  ; preds = %land.lhs.true
  %in_size = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %arg, i32 0, i32 2
  %21 = ptrtoint ptr %in_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %in_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp21 = icmp ugt i32 %20, %22
  br i1 %cmp21, label %if.then23, label %land.lhs.true19.if.end27_crit_edge

land.lhs.true19.if.end27_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then23:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 %20, %22
  %23 = call ptr @memset(ptr %18, i32 0, i32 %sub)
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %land.lhs.true19.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge, %if.end17.if.end27_crit_edge
  %in_size28 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %arg, i32 0, i32 2
  %24 = ptrtoint ptr %in_size28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %in_size28, align 4
  %out_size29 = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %arg, i32 0, i32 4
  %26 = ptrtoint ptr %out_size29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %out_size29, align 4
  %28 = call i32 @llvm.umax.i32(i32 %25, i32 %27)
  %29 = ptrtoint ptr %reg to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %reg, align 8
  %and = shl i64 %30, 20
  %mul = and i64 %and, 267386880
  %31 = shl i64 %30, 4
  %mul66 = and i64 %31, 1044480
  %add67 = or i64 %mul, %mul66
  %conv68 = trunc i64 %add67 to i32
  %shr86 = lshr i64 %30, 58
  %conv87 = trunc i64 %shr86 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv68)
  %cmp88.not = icmp ugt i32 %28, %conv68
  br i1 %cmp88.not, label %if.else, label %if.then90

if.then90:                                        ; preds = %if.end27
  %32 = ptrtoint ptr %nsp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nsp, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg.i) #12
  %34 = ptrtoint ptr %reg.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 -1, ptr %reg.i, align 8, !annotation !173
  %35 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %res, align 4
  %call.i = call i32 @nfp_resource_cpp_id(ptr noundef %36) #12
  %37 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %res, align 4
  %call3.i = call i64 @nfp_resource_address(ptr noundef %38) #12
  %add.i = add i64 %call3.i, 24
  %call4.i = call i32 @nfp_cpp_readq(ptr noundef %33, i32 noundef %call.i, i64 noundef %add.i, ptr noundef nonnull %reg.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %if.then90.nfp_nsp_command_buf_def.exit_crit_edge, label %do.end16.i

if.then90.nfp_nsp_command_buf_def.exit_crit_edge: ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_nsp_command_buf_def.exit

do.end16.i:                                       ; preds = %if.then90
  %39 = ptrtoint ptr %reg.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %reg.i, align 8
  %41 = lshr i64 %40, 32
  %42 = trunc i64 %41 to i32
  %conv.i = and i32 %42, -256
  %and33.i = and i64 %40, 1099511627775
  %in_buf.i = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %arg, i32 0, i32 1
  %43 = ptrtoint ptr %in_buf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %in_buf.i, align 8
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %do.end16.i.if.end44.i_crit_edge, label %land.lhs.true.i

do.end16.i.if.end44.i_crit_edge:                  ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i

land.lhs.true.i:                                  ; preds = %do.end16.i
  %45 = ptrtoint ptr %in_size28 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %in_size28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool35.not.i = icmp eq i32 %46, 0
  br i1 %tobool35.not.i, label %land.lhs.true.i.if.end44.i_crit_edge, label %if.then36.i

land.lhs.true.i.if.end44.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i

if.then36.i:                                      ; preds = %land.lhs.true.i
  %call39.i = call i32 @nfp_cpp_write(ptr noundef %33, i32 noundef %conv.i, i64 noundef %and33.i, ptr noundef nonnull %44, i32 noundef %46) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %cmp40.i = icmp slt i32 %call39.i, 0
  br i1 %cmp40.i, label %if.then36.i.nfp_nsp_command_buf_def.exit_crit_edge, label %if.then36.i.if.end44.i_crit_edge

if.then36.i.if.end44.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44.i

if.then36.i.nfp_nsp_command_buf_def.exit_crit_edge: ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_nsp_command_buf_def.exit

if.end44.i:                                       ; preds = %if.then36.i.if.end44.i_crit_edge, %land.lhs.true.i.if.end44.i_crit_edge, %do.end16.i.if.end44.i_crit_edge
  %47 = ptrtoint ptr %out_buf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %out_buf, align 8
  %tobool45.not.i = icmp eq ptr %48, null
  br i1 %tobool45.not.i, label %if.end44.i.do.body122.i_crit_edge, label %land.lhs.true46.i

if.end44.i.do.body122.i_crit_edge:                ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body122.i

land.lhs.true46.i:                                ; preds = %if.end44.i
  %49 = ptrtoint ptr %out_size29 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %out_size29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool47.not.i = icmp eq i32 %50, 0
  br i1 %tobool47.not.i, label %land.lhs.true46.i.do.body122.i_crit_edge, label %land.lhs.true48.i

land.lhs.true46.i.do.body122.i_crit_edge:         ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body122.i

land.lhs.true48.i:                                ; preds = %land.lhs.true46.i
  %51 = ptrtoint ptr %in_size28 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %in_size28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp51.i = icmp ugt i32 %50, %52
  br i1 %cmp51.i, label %if.then53.i, label %land.lhs.true48.i.do.body122.i_crit_edge

land.lhs.true48.i.do.body122.i_crit_edge:         ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body122.i

if.then53.i:                                      ; preds = %land.lhs.true48.i
  %conv55.i = zext i32 %52 to i64
  %add56.i = add nuw nsw i64 %and33.i, %conv55.i
  %sub.i = sub i32 %50, %52
  %call60.i = call i32 @nfp_cpp_write(ptr noundef %33, i32 noundef %conv.i, i64 noundef %add56.i, ptr noundef nonnull %48, i32 noundef %sub.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %cmp61.i = icmp slt i32 %call60.i, 0
  br i1 %cmp61.i, label %if.then53.i.nfp_nsp_command_buf_def.exit_crit_edge, label %if.then53.i.do.body122.i_crit_edge

if.then53.i.do.body122.i_crit_edge:               ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body122.i

if.then53.i.nfp_nsp_command_buf_def.exit_crit_edge: ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_nsp_command_buf_def.exit

do.body122.i:                                     ; preds = %if.then53.i.do.body122.i_crit_edge, %land.lhs.true48.i.do.body122.i_crit_edge, %land.lhs.true46.i.do.body122.i_crit_edge, %if.end44.i.do.body122.i_crit_edge
  %shr123.i = lshr i32 %42, 8
  %conv140.i = zext i32 %shr123.i to i64
  %shl141.i = shl nuw i64 %conv140.i, 40
  %or.i = or i64 %shl141.i, %and33.i
  %buf.i = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %arg, i32 0, i32 4
  %53 = ptrtoint ptr %buf.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %or.i, ptr %buf.i, align 8
  %call169.i = call fastcc i32 @__nfp_nsp_command(ptr noundef %nsp, ptr noundef %arg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169.i)
  %cmp170.i = icmp slt i32 %call169.i, 0
  br i1 %cmp170.i, label %do.body122.i.nfp_nsp_command_buf_def.exit_crit_edge, label %if.end173.i

do.body122.i.nfp_nsp_command_buf_def.exit_crit_edge: ; preds = %do.body122.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_nsp_command_buf_def.exit

if.end173.i:                                      ; preds = %do.body122.i
  %54 = ptrtoint ptr %out_buf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %out_buf, align 8
  %tobool175.not.i = icmp eq ptr %55, null
  br i1 %tobool175.not.i, label %if.end173.i.if.end187.i_crit_edge, label %land.lhs.true176.i

if.end173.i.if.end187.i_crit_edge:                ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end187.i

land.lhs.true176.i:                               ; preds = %if.end173.i
  %56 = ptrtoint ptr %out_size29 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %out_size29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool178.not.i = icmp eq i32 %57, 0
  br i1 %tobool178.not.i, label %land.lhs.true176.i.if.end187.i_crit_edge, label %if.then179.i

land.lhs.true176.i.if.end187.i_crit_edge:         ; preds = %land.lhs.true176.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end187.i

if.then179.i:                                     ; preds = %land.lhs.true176.i
  %call182.i = call i32 @nfp_cpp_read(ptr noundef %33, i32 noundef %conv.i, i64 noundef %and33.i, ptr noundef nonnull %55, i32 noundef %57) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182.i)
  %cmp183.i = icmp slt i32 %call182.i, 0
  br i1 %cmp183.i, label %if.then179.i.nfp_nsp_command_buf_def.exit_crit_edge, label %if.then179.i.if.end187.i_crit_edge

if.then179.i.if.end187.i_crit_edge:               ; preds = %if.then179.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end187.i

if.then179.i.nfp_nsp_command_buf_def.exit_crit_edge: ; preds = %if.then179.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_nsp_command_buf_def.exit

if.end187.i:                                      ; preds = %if.then179.i.if.end187.i_crit_edge, %land.lhs.true176.i.if.end187.i_crit_edge, %if.end173.i.if.end187.i_crit_edge
  br label %nfp_nsp_command_buf_def.exit

nfp_nsp_command_buf_def.exit:                     ; preds = %if.end187.i, %if.then179.i.nfp_nsp_command_buf_def.exit_crit_edge, %do.body122.i.nfp_nsp_command_buf_def.exit_crit_edge, %if.then53.i.nfp_nsp_command_buf_def.exit_crit_edge, %if.then36.i.nfp_nsp_command_buf_def.exit_crit_edge, %if.then90.nfp_nsp_command_buf_def.exit_crit_edge
  %retval.0.i = phi i32 [ %call169.i, %if.end187.i ], [ %call4.i, %if.then90.nfp_nsp_command_buf_def.exit_crit_edge ], [ %call39.i, %if.then36.i.nfp_nsp_command_buf_def.exit_crit_edge ], [ %call60.i, %if.then53.i.nfp_nsp_command_buf_def.exit_crit_edge ], [ %call169.i, %do.body122.i.nfp_nsp_command_buf_def.exit_crit_edge ], [ %call182.i, %if.then179.i.nfp_nsp_command_buf_def.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg.i) #12
  br label %cleanup

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv87)
  %tobool92.not = icmp eq i32 %conv87, 0
  br i1 %tobool92.not, label %do.end96, label %if.end103

do.end96:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call97 = call ptr @nfp_cpp_device(ptr noundef %1) #12
  %parent98 = getelementptr inbounds %struct.device, ptr %call97, i32 0, i32 1
  %58 = ptrtoint ptr %parent98 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %parent98, align 8
  %60 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arg, align 8
  %conv101 = zext i16 %61 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.56, i32 noundef %conv101, i32 noundef %conv68, i32 noundef %28) #16
  br label %cleanup

if.end103:                                        ; preds = %if.else
  %62 = ptrtoint ptr %nsp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %nsp, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg.i142) #12
  %64 = ptrtoint ptr %reg.i142 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 -1, ptr %reg.i142, align 8, !annotation !173
  %sub.i423.i = add i32 %28, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i423.i)
  %tobool.not.i.i.i424.i = icmp eq i32 %sub.i423.i, 0
  %65 = call i32 @llvm.ctlz.i32(i32 %sub.i423.i, i1 true) #12, !range !175
  %sub.i.i.i425.i = sub nuw nsw i32 32, %65
  %notmask.i = shl nsw i32 -1, %sub.i.i.i425.i
  %sub.i428.i = xor i32 %notmask.i, -1
  %66 = call i32 @llvm.ctlz.i32(i32 %sub.i428.i, i1 true) #12, !range !175
  %add.i.i = sub nuw nsw i32 32, %66
  %cond268.i = select i1 %tobool.not.i.i.i424.i, i32 0, i32 %add.i.i
  %67 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %res, align 4
  %call269.i = call i32 @nfp_resource_cpp_id(ptr noundef %68) #12
  %69 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %res, align 4
  %call271.i = call i64 @nfp_resource_address(ptr noundef %70) #12
  %add272.i = add i64 %call271.i, 40
  %call273.i = call i32 @nfp_cpp_readq(ptr noundef %63, i32 noundef %call269.i, i64 noundef %add272.i, ptr noundef nonnull %reg.i142) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call273.i)
  %cmp274.i = icmp slt i32 %call273.i, 0
  br i1 %cmp274.i, label %if.end103.nfp_nsp_command_buf_dma.exit_crit_edge, label %if.end.i

if.end103.nfp_nsp_command_buf_dma.exit_crit_edge: ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_nsp_command_buf_dma.exit

if.end.i:                                         ; preds = %if.end103
  %71 = ptrtoint ptr %reg.i142 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %reg.i142, align 8
  %73 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arg, align 8
  %conv277.i = zext i16 %74 to i32
  %sub278.i = add nsw i32 %conv277.i, -1
  %sh_prom.i = zext i32 %sub278.i to i64
  %shl279.i = shl nuw i64 1, %sh_prom.i
  %and.i = and i64 %shl279.i, %72
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i147 = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i147, label %if.then281.i, label %if.else.i

if.then281.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond268.i, i32 %conv87)
  %cmp282.i = icmp ugt i32 %cond268.i, %conv87
  br i1 %cmp282.i, label %do.end.i, label %if.then281.i.if.end296.i_crit_edge

if.then281.i.if.end296.i_crit_edge:               ; preds = %if.then281.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end296.i

do.end.i:                                         ; preds = %if.then281.i
  call void @__sanitizer_cov_trace_pc() #14
  %call285.i = call ptr @nfp_cpp_device(ptr noundef %63) #12
  %parent.i = getelementptr inbounds %struct.device, ptr %call285.i, i32 0, i32 1
  %75 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %parent.i, align 8
  %77 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arg, align 8
  %conv288.i = zext i16 %78 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.60, i32 noundef %conv288.i) #16
  br label %nfp_nsp_command_buf_dma.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %79 = call i32 @llvm.umin.i32(i32 %conv87, i32 12) #12
  br label %if.end296.i

if.end296.i:                                      ; preds = %if.else.i, %if.then281.i.if.end296.i_crit_edge
  %chunk_order.0.i = phi i32 [ %79, %if.else.i ], [ %cond268.i, %if.then281.i.if.end296.i_crit_edge ]
  %80 = ptrtoint ptr %nsp to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %nsp, align 4
  %sh_prom.i.i = zext i32 %chunk_order.0.i to i64
  %shl.i429.i = shl nuw i64 1, %sh_prom.i.i
  %conv.i.i = trunc i64 %shl.i429.i to i32
  %shl3.i.i = shl nuw i64 1, %shr86
  %conv4.i.i = trunc i64 %shl3.i.i to i32
  %add.i430.i = add i32 %conv.i.i, -1
  %sub.i431.i = add i32 %add.i430.i, %28
  %div.i.i = udiv i32 %sub.i431.i, %conv.i.i
  %82 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div.i.i, i32 12) #12
  %83 = extractvalue { i32, i1 } %82, 1
  %84 = extractvalue { i32, i1 } %82, 0
  %retval.0.i.i.i = select i1 %83, i32 -1, i32 %84
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i.i, i32 noundef 3520) #17
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end296.i.nfp_nsp_command_buf_dma.exit_crit_edge, label %for.cond.preheader.i.i

if.end296.i.nfp_nsp_command_buf_dma.exit_crit_edge: ; preds = %if.end296.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_nsp_command_buf_dma.exit

for.cond.preheader.i.i:                           ; preds = %if.end296.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i.i)
  %cmp423.i.i = icmp sgt i32 %div.i.i, 0
  br i1 %cmp423.i.i, label %for.body.lr.ph.i.i, label %for.end.thread.i.i

for.end.thread.i.i:                               ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call45463.i.i = call ptr @nfp_cpp_device(ptr noundef %81) #12
  %parent464.i.i = getelementptr inbounds %struct.device, ptr %call45463.i.i, i32 0, i32 1
  %85 = ptrtoint ptr %parent464.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %parent464.i.i, align 8
  br label %for.end120.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %conv13.i.i = and i64 %shl.i429.i, 4294967295
  %in_buf.i.i = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %arg, i32 0, i32 1
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %for.inc.i.i.if.end8.i.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0426.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.if.end8.i.i.i_crit_edge ]
  %off.0424.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add44.i.i, %for.inc.i.i.if.end8.i.i.i_crit_edge ]
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %conv.i.i, i32 noundef 11456) #17
  %chunk.i.i = getelementptr %struct.anon.77, ptr %call9.i.i.i.i, i32 %i.0426.i.i, i32 2
  %87 = ptrtoint ptr %chunk.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call9.i.i.i, ptr %chunk.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool10.not.i.i, label %if.end8.i.i.i.exit_free_prev.i.i_crit_edge, label %if.end12.i.i

if.end8.i.i.i.exit_free_prev.i.i_crit_edge:       ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_free_prev.i.i

if.end12.i.i:                                     ; preds = %if.end8.i.i.i
  %sub14.i.i = sub i32 %28, %off.0424.i.i
  %conv15.i.i = zext i32 %sub14.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv13.i.i, i64 %conv15.i.i)
  %cmp16.i.i = icmp ult i64 %conv13.i.i, %conv15.i.i
  %cond.off0.i.i = select i1 %cmp16.i.i, i32 %conv.i.i, i32 %sub14.i.i
  %len.i.i = getelementptr %struct.anon.77, ptr %call9.i.i.i.i, i32 %i.0426.i.i, i32 1
  %88 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %cond.off0.i.i, ptr %len.i.i, align 4
  %89 = ptrtoint ptr %in_size28 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %in_size28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %off.0424.i.i)
  %cmp20.i.i = icmp ugt i32 %90, %off.0424.i.i
  br i1 %cmp20.i.i, label %if.then22.i.i, label %if.end12.i.i.for.inc.i.i_crit_edge

if.end12.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then22.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub24.i.i = sub i32 %90, %off.0424.i.i
  %conv25.i.i = zext i32 %sub24.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv13.i.i, i64 %conv25.i.i)
  %cmp28.i.i = icmp ugt i64 %conv13.i.i, %conv25.i.i
  %cond33.off0.i.i = select i1 %cmp28.i.i, i32 %sub24.i.i, i32 %conv.i.i
  %91 = ptrtoint ptr %in_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %in_buf.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %92, i32 %off.0424.i.i
  %93 = call ptr @memcpy(ptr %call9.i.i.i, ptr %add.ptr.i.i, i32 %cond33.off0.i.i)
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then22.i.i, %if.end12.i.i.for.inc.i.i_crit_edge
  %coff.0.i.i = phi i32 [ %cond33.off0.i.i, %if.then22.i.i ], [ 0, %if.end12.i.i.for.inc.i.i_crit_edge ]
  %94 = ptrtoint ptr %chunk.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %chunk.i.i, align 4
  %add.ptr40.i.i = getelementptr i8, ptr %95, i32 %coff.0.i.i
  %sub41.i.i = sub i32 %conv.i.i, %coff.0.i.i
  %96 = call ptr @memset(ptr %add.ptr40.i.i, i32 0, i32 %sub41.i.i)
  %97 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %len.i.i, align 4
  %add44.i.i = add i32 %98, %off.0424.i.i
  %inc.i.i = add nuw nsw i32 %i.0426.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %div.i.i
  br i1 %exitcond.not.i.i, label %for.body49.lr.ph.i.i, label %for.inc.i.i.if.end8.i.i.i_crit_edge

for.inc.i.i.if.end8.i.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i.i

for.body49.lr.ph.i.i:                             ; preds = %for.inc.i.i
  %call45.i.i = call ptr @nfp_cpp_device(ptr noundef %81) #12
  %parent.i.i = getelementptr inbounds %struct.device, ptr %call45.i.i, i32 0, i32 1
  %99 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %parent.i.i, align 8
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %100, i32 0, i32 3
  %neg.i.i = sub i32 0, %conv4.i.i
  br label %for.body49.i.i

for.body49.i.i:                                   ; preds = %for.inc118.i.i.for.body49.i.i_crit_edge, %for.body49.lr.ph.i.i
  %i.1429.i.i = phi i32 [ 0, %for.body49.lr.ph.i.i ], [ %inc119.i.i, %for.inc118.i.i.for.body49.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i.i) #12
  %101 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 -1, ptr %addr.i.i, align 4, !annotation !173
  %arrayidx50.i.i = getelementptr %struct.anon.77, ptr %call9.i.i.i.i, i32 %i.1429.i.i
  %chunk51.i.i = getelementptr %struct.anon.77, ptr %call9.i.i.i.i, i32 %i.1429.i.i, i32 2
  %102 = ptrtoint ptr %chunk51.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %chunk51.i.i, align 4
  %len53.i.i = getelementptr %struct.anon.77, ptr %call9.i.i.i.i, i32 %i.1429.i.i, i32 1
  %104 = ptrtoint ptr %len53.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %len53.i.i, align 4
  %call.i.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %103) #12
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %for.body49.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge, label %if.then.i374.i.i, !prof !176

land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit.i.i

if.then.i374.i.i:                                 ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = call ptr @dev_driver_string(ptr noundef %100) #12
  %106 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i373.i.i = icmp eq ptr %107, null
  br i1 %tobool.not.i.i373.i.i, label %if.end.i.i375.i.i, label %if.then.i374.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i374.i.i.dev_name.exit.i.i.i_crit_edge:   ; preds = %if.then.i374.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i.i

if.end.i.i375.i.i:                                ; preds = %if.then.i374.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %108 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %100, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i375.i.i, %if.then.i374.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %109, %if.end.i.i375.i.i ], [ %107, %if.then.i374.i.i.dev_name.exit.i.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.65, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.66, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #12
  br label %dma_map_single_attrs.exit.i.i

if.end39.i.i.i:                                   ; preds = %for.body49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @debug_dma_map_single(ptr noundef %100, ptr noundef %103, i32 noundef %105) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %110 = load ptr, ptr @mem_map, align 4
  %111 = ptrtoint ptr %103 to i32
  %sub.i.i.i = add i32 %111, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %110, i32 %shr.i.i.i
  %and.i.i.i = and i32 %111, 4095
  %call41.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %100, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef %105, i32 noundef 0, i32 noundef 0) #12
  br label %dma_map_single_attrs.exit.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge
  %retval.0.i376.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge ]
  %112 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %retval.0.i376.i.i, ptr %addr.i.i, align 4
  %113 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %retval.0.i376.i.i, ptr %arrayidx50.i.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %100, i32 noundef %retval.0.i376.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i376.i.i)
  %cmp.i377.i.i = icmp eq i32 %retval.0.i376.i.i, -1
  br i1 %cmp.i377.i.i, label %dma_map_single_attrs.exit.i.i.cleanup115.thread.i.i_crit_edge, label %if.end59.i.i

dma_map_single_attrs.exit.i.i.cleanup115.thread.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup115.thread.i.i

if.end59.i.i:                                     ; preds = %dma_map_single_attrs.exit.i.i
  %114 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %addr.i.i, align 4
  %116 = ptrtoint ptr %len53.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %len53.i.i, align 4
  %add63.i.i = add i32 %115, -1
  %sub64.i.i = add i32 %add63.i.i, %117
  %118 = xor i32 %sub64.i.i, %115
  %119 = and i32 %118, %neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp68.not.i.i = icmp eq i32 %119, 0
  br i1 %cmp68.not.i.i, label %for.inc118.i.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.end59.i.i
  %.b334.i.i = load i1, ptr @nfp_nsp_command_buf_dma_sg.__already_done, align 1
  br i1 %.b334.i.i, label %land.rhs.i.i.if.then112.i.i_crit_edge, label %if.then78.i.i, !prof !176

land.rhs.i.i.if.then112.i.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then112.i.i

if.then78.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nfp_nsp_command_buf_dma_sg.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 558, i32 noundef 9, ptr noundef nonnull @.str.62, ptr noundef nonnull %addr.i.i, i32 noundef %117, i32 noundef %conv4.i.i) #12
  br label %if.then112.i.i

if.then112.i.i:                                   ; preds = %if.then78.i.i, %land.rhs.i.i.if.then112.i.i_crit_edge
  %inc113.i.i = add nuw nsw i32 %i.1429.i.i, 1
  br label %cleanup115.thread.i.i

cleanup115.thread.i.i:                            ; preds = %if.then112.i.i, %dma_map_single_attrs.exit.i.i.cleanup115.thread.i.i_crit_edge
  %i.2.ph.i.i = phi i32 [ %inc113.i.i, %if.then112.i.i ], [ %i.1429.i.i, %dma_map_single_attrs.exit.i.i.cleanup115.thread.i.i_crit_edge ]
  %ret.0.ph.i.i = phi i32 [ -14, %if.then112.i.i ], [ -12, %dma_map_single_attrs.exit.i.i.cleanup115.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i) #12
  br label %exit_unmap_prev.i.i

for.inc118.i.i:                                   ; preds = %if.end59.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i.i) #12
  %inc119.i.i = add nuw nsw i32 %i.1429.i.i, 1
  %exitcond448.not.i.i = icmp eq i32 %inc119.i.i, %div.i.i
  br i1 %exitcond448.not.i.i, label %for.inc118.i.i.for.end120.i.i_crit_edge, label %for.inc118.i.i.for.body49.i.i_crit_edge

for.inc118.i.i.for.body49.i.i_crit_edge:          ; preds = %for.inc118.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body49.i.i

for.inc118.i.i.for.end120.i.i_crit_edge:          ; preds = %for.inc118.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end120.i.i

for.end120.i.i:                                   ; preds = %for.inc118.i.i.for.end120.i.i_crit_edge, %for.end.thread.i.i
  %120 = phi ptr [ %86, %for.end.thread.i.i ], [ %100, %for.inc118.i.i.for.end120.i.i_crit_edge ]
  %121 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div.i.i, i32 16) #12
  %122 = extractvalue { i32, i1 } %121, 1
  %123 = extractvalue { i32, i1 } %121, 0
  %spec.select.i.i.i = call i32 @llvm.uadd.sat.i32(i32 %123, i32 16) #12
  %retval.0.i378.i.i = select i1 %122, i32 -1, i32 %spec.select.i.i.i
  %call9.i367.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i378.i.i, i32 noundef 3264) #17
  %tobool123.not.i.i = icmp eq ptr %call9.i367.i.i, null
  br i1 %tobool123.not.i.i, label %for.end120.i.i.exit_unmap_prev.i.i_crit_edge, label %if.end125.i.i

for.end120.i.i.exit_unmap_prev.i.i_crit_edge:     ; preds = %for.end120.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_unmap_prev.i.i

if.end125.i.i:                                    ; preds = %for.end120.i.i
  %124 = call i32 @llvm.bswap.i32(i32 %div.i.i) #12
  %125 = ptrtoint ptr %call9.i367.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %call9.i367.i.i, align 128
  br i1 %cmp423.i.i, label %if.end125.i.i.for.body129.i.i_crit_edge, label %if.end125.i.i.for.end141.i.i_crit_edge

if.end125.i.i.for.end141.i.i_crit_edge:           ; preds = %if.end125.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end141.i.i

if.end125.i.i.for.body129.i.i_crit_edge:          ; preds = %if.end125.i.i
  br label %for.body129.i.i

for.body129.i.i:                                  ; preds = %for.body129.i.i.for.body129.i.i_crit_edge, %if.end125.i.i.for.body129.i.i_crit_edge
  %i.3431.i.i = phi i32 [ %inc140.i.i, %for.body129.i.i.for.body129.i.i_crit_edge ], [ 0, %if.end125.i.i.for.body129.i.i_crit_edge ]
  %arrayidx130.i.i = getelementptr %struct.anon.77, ptr %call9.i.i.i.i, i32 %i.3431.i.i
  %len131.i.i = getelementptr %struct.anon.77, ptr %call9.i.i.i.i, i32 %i.3431.i.i, i32 1
  %126 = ptrtoint ptr %len131.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %len131.i.i, align 4
  %128 = call i32 @llvm.bswap.i32(i32 %127) #12
  %arrayidx132.i.i = getelementptr %struct.nfp_nsp_dma_buf, ptr %call9.i367.i.i, i32 0, i32 2, i32 %i.3431.i.i
  %129 = ptrtoint ptr %arrayidx132.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %arrayidx132.i.i, align 16
  %130 = ptrtoint ptr %arrayidx130.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx130.i.i, align 4
  %conv135.i.i = zext i32 %131 to i64
  %132 = call i64 @llvm.bswap.i64(i64 %conv135.i.i) #12
  %addr138.i.i = getelementptr %struct.nfp_nsp_dma_buf, ptr %call9.i367.i.i, i32 0, i32 2, i32 %i.3431.i.i, i32 2
  %133 = ptrtoint ptr %addr138.i.i to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %132, ptr %addr138.i.i, align 8
  %inc140.i.i = add nuw nsw i32 %i.3431.i.i, 1
  %exitcond449.not.i.i = icmp eq i32 %inc140.i.i, %div.i.i
  br i1 %exitcond449.not.i.i, label %for.body129.i.i.for.end141.i.i_crit_edge, label %for.body129.i.i.for.body129.i.i_crit_edge

for.body129.i.i.for.body129.i.i_crit_edge:        ; preds = %for.body129.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body129.i.i

for.body129.i.i.for.end141.i.i_crit_edge:         ; preds = %for.body129.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end141.i.i

for.end141.i.i:                                   ; preds = %for.body129.i.i.for.end141.i.i_crit_edge, %if.end125.i.i.for.end141.i.i_crit_edge
  %call.i379.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i367.i.i) #12
  br i1 %call.i379.i.i, label %land.rhs.i381.i.i, label %dma_map_single_attrs.exit396.i.i

land.rhs.i381.i.i:                                ; preds = %for.end141.i.i
  %.b1.i380.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i380.i.i, label %land.rhs.i381.i.i.dma_map_single_attrs.exit396.thread.i.i_crit_edge, label %if.then.i385.i.i, !prof !176

land.rhs.i381.i.i.dma_map_single_attrs.exit396.thread.i.i_crit_edge: ; preds = %land.rhs.i381.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_map_single_attrs.exit396.thread.i.i

if.then.i385.i.i:                                 ; preds = %land.rhs.i381.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i382.i.i = call ptr @dev_driver_string(ptr noundef %120) #12
  %init_name.i.i383.i.i = getelementptr inbounds %struct.device, ptr %120, i32 0, i32 3
  %134 = ptrtoint ptr %init_name.i.i383.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %init_name.i.i383.i.i, align 8
  %tobool.not.i.i384.i.i = icmp eq ptr %135, null
  br i1 %tobool.not.i.i384.i.i, label %if.end.i.i386.i.i, label %if.then.i385.i.i.dev_name.exit.i388.i.i_crit_edge

if.then.i385.i.i.dev_name.exit.i388.i.i_crit_edge: ; preds = %if.then.i385.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i388.i.i

if.end.i.i386.i.i:                                ; preds = %if.then.i385.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %136 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %120, align 4
  br label %dev_name.exit.i388.i.i

dev_name.exit.i388.i.i:                           ; preds = %if.end.i.i386.i.i, %if.then.i385.i.i.dev_name.exit.i388.i.i_crit_edge
  %retval.0.i.i387.i.i = phi ptr [ %137, %if.end.i.i386.i.i ], [ %135, %if.then.i385.i.i.dev_name.exit.i388.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.65, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.66, ptr noundef %call16.i382.i.i, ptr noundef %retval.0.i.i387.i.i) #12
  br label %dma_map_single_attrs.exit396.thread.i.i

dma_map_single_attrs.exit396.thread.i.i:          ; preds = %dev_name.exit.i388.i.i, %land.rhs.i381.i.i.dma_map_single_attrs.exit396.thread.i.i_crit_edge
  call void @debug_dma_mapping_error(ptr noundef %120, i32 noundef -1) #12
  br label %exit_free_desc.i.i

dma_map_single_attrs.exit396.i.i:                 ; preds = %for.end141.i.i
  call void @debug_dma_map_single(ptr noundef %120, ptr noundef nonnull %call9.i367.i.i, i32 noundef %retval.0.i378.i.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %138 = load ptr, ptr @mem_map, align 4
  %139 = ptrtoint ptr %call9.i367.i.i to i32
  %sub.i389.i.i = add i32 %139, 1073741824
  %shr.i390.i.i = lshr i32 %sub.i389.i.i, 12
  %add.ptr.i391.i.i = getelementptr %struct.page, ptr %138, i32 %shr.i390.i.i
  %and.i392.i.i = and i32 %139, 3968
  %call41.i393.i.i = call i32 @dma_map_page_attrs(ptr noundef %120, ptr noundef %add.ptr.i391.i.i, i32 noundef %and.i392.i.i, i32 noundef %retval.0.i378.i.i, i32 noundef 1, i32 noundef 0) #12
  call void @debug_dma_mapping_error(ptr noundef %120, i32 noundef %call41.i393.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i393.i.i)
  %cmp.i397.i.i = icmp eq i32 %call41.i393.i.i, -1
  br i1 %cmp.i397.i.i, label %dma_map_single_attrs.exit396.i.i.exit_free_desc.i.i_crit_edge, label %if.end146.i.i

dma_map_single_attrs.exit396.i.i.exit_free_desc.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit396.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_free_desc.i.i

if.end146.i.i:                                    ; preds = %dma_map_single_attrs.exit396.i.i
  %dma.i.i = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %arg, i32 0, i32 1
  %140 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 1, ptr %dma.i.i, align 2
  %conv148.i.i = zext i32 %call41.i393.i.i to i64
  %buf.i.i = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %arg, i32 0, i32 4
  %141 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %conv148.i.i, ptr %buf.i.i, align 8
  %call151.i.i = call fastcc i32 @__nfp_nsp_command(ptr noundef %nsp, ptr noundef %arg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151.i.i)
  %cmp152.i.i = icmp slt i32 %call151.i.i, 0
  br i1 %cmp152.i.i, label %if.end146.i.i.exit_unmap_desc.i.i_crit_edge, label %while.cond.preheader.i.i

if.end146.i.i.exit_unmap_desc.i.i_crit_edge:      ; preds = %if.end146.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_unmap_desc.i.i

while.cond.preheader.i.i:                         ; preds = %if.end146.i.i
  %142 = ptrtoint ptr %out_size29 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %out_size29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp156432.not.i.i = icmp eq i32 %143, 0
  br i1 %cmp156432.not.i.i, label %while.cond.preheader.i.i.exit_unmap_desc.i.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.exit_unmap_desc.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_unmap_desc.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %144 = phi i32 [ %154, %while.body.i.i.while.body.i.i_crit_edge ], [ %143, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %i.4434.i.i = phi i32 [ %inc177.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %off.2433.i.i = phi i32 [ %add176.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %len160.i.i = getelementptr %struct.anon.77, ptr %call9.i.i.i.i, i32 %i.4434.i.i, i32 1
  %145 = ptrtoint ptr %len160.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %len160.i.i, align 4
  %sub163.i.i = sub i32 %144, %off.2433.i.i
  %147 = call i32 @llvm.umin.i32(i32 %146, i32 %sub163.i.i) #12
  %148 = ptrtoint ptr %out_buf to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %out_buf, align 8
  %add.ptr173.i.i = getelementptr i8, ptr %149, i32 %off.2433.i.i
  %chunk175.i.i = getelementptr %struct.anon.77, ptr %call9.i.i.i.i, i32 %i.4434.i.i, i32 2
  %150 = ptrtoint ptr %chunk175.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %chunk175.i.i, align 4
  %152 = call ptr @memcpy(ptr %add.ptr173.i.i, ptr %151, i32 %147)
  %add176.i.i = add i32 %147, %off.2433.i.i
  %inc177.i.i = add i32 %i.4434.i.i, 1
  %153 = ptrtoint ptr %out_size29 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %out_size29, align 4
  %cmp156.i.i = icmp ugt i32 %154, %add176.i.i
  br i1 %cmp156.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.exit_unmap_desc.i.i_crit_edge

while.body.i.i.exit_unmap_desc.i.i_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_unmap_desc.i.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

exit_unmap_desc.i.i:                              ; preds = %while.body.i.i.exit_unmap_desc.i.i_crit_edge, %while.cond.preheader.i.i.exit_unmap_desc.i.i_crit_edge, %if.end146.i.i.exit_unmap_desc.i.i_crit_edge
  call void @dma_unmap_page_attrs(ptr noundef %120, i32 noundef %call41.i393.i.i, i32 noundef %retval.0.i378.i.i, i32 noundef 1, i32 noundef 0) #12
  br label %exit_free_desc.i.i

exit_free_desc.i.i:                               ; preds = %exit_unmap_desc.i.i, %dma_map_single_attrs.exit396.i.i.exit_free_desc.i.i_crit_edge, %dma_map_single_attrs.exit396.thread.i.i
  %ret.1.i.i = phi i32 [ %call151.i.i, %exit_unmap_desc.i.i ], [ -12, %dma_map_single_attrs.exit396.i.i.exit_free_desc.i.i_crit_edge ], [ -12, %dma_map_single_attrs.exit396.thread.i.i ]
  call void @kfree(ptr noundef nonnull %call9.i367.i.i) #12
  br label %exit_unmap_prev.i.i

exit_unmap_prev.i.i:                              ; preds = %exit_free_desc.i.i, %for.end120.i.i.exit_unmap_prev.i.i_crit_edge, %cleanup115.thread.i.i
  %155 = phi ptr [ %120, %for.end120.i.i.exit_unmap_prev.i.i_crit_edge ], [ %120, %exit_free_desc.i.i ], [ %100, %cleanup115.thread.i.i ]
  %i.5.i.i = phi i32 [ %div.i.i, %for.end120.i.i.exit_unmap_prev.i.i_crit_edge ], [ %div.i.i, %exit_free_desc.i.i ], [ %i.2.ph.i.i, %cleanup115.thread.i.i ]
  %ret.3.i.i = phi i32 [ -12, %for.end120.i.i.exit_unmap_prev.i.i_crit_edge ], [ %ret.1.i.i, %exit_free_desc.i.i ], [ %ret.0.ph.i.i, %cleanup115.thread.i.i ]
  %dec435.i.i = add i32 %i.5.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec435.i.i)
  %cmp179436.i.i = icmp sgt i32 %dec435.i.i, -1
  br i1 %cmp179436.i.i, label %exit_unmap_prev.i.i.while.body181.i.i_crit_edge, label %exit_unmap_prev.i.i.exit_free_prev.i.i_crit_edge

exit_unmap_prev.i.i.exit_free_prev.i.i_crit_edge: ; preds = %exit_unmap_prev.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_free_prev.i.i

exit_unmap_prev.i.i.while.body181.i.i_crit_edge:  ; preds = %exit_unmap_prev.i.i
  br label %while.body181.i.i

while.body181.i.i:                                ; preds = %while.body181.i.i.while.body181.i.i_crit_edge, %exit_unmap_prev.i.i.while.body181.i.i_crit_edge
  %dec437.i.i = phi i32 [ %dec.i.i, %while.body181.i.i.while.body181.i.i_crit_edge ], [ %dec435.i.i, %exit_unmap_prev.i.i.while.body181.i.i_crit_edge ]
  %arrayidx182.i.i = getelementptr %struct.anon.77, ptr %call9.i.i.i.i, i32 %dec437.i.i
  %156 = ptrtoint ptr %arrayidx182.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx182.i.i, align 4
  %len185.i.i = getelementptr %struct.anon.77, ptr %call9.i.i.i.i, i32 %dec437.i.i, i32 1
  %158 = ptrtoint ptr %len185.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %len185.i.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %155, i32 noundef %157, i32 noundef %159, i32 noundef 0, i32 noundef 0) #12
  %dec.i.i = add nsw i32 %dec437.i.i, -1
  %cmp179.i.not.i = icmp eq i32 %dec437.i.i, 0
  br i1 %cmp179.i.not.i, label %while.body181.i.i.exit_free_prev.i.i_crit_edge, label %while.body181.i.i.while.body181.i.i_crit_edge

while.body181.i.i.while.body181.i.i_crit_edge:    ; preds = %while.body181.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body181.i.i

while.body181.i.i.exit_free_prev.i.i_crit_edge:   ; preds = %while.body181.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %exit_free_prev.i.i

exit_free_prev.i.i:                               ; preds = %while.body181.i.i.exit_free_prev.i.i_crit_edge, %exit_unmap_prev.i.i.exit_free_prev.i.i_crit_edge, %if.end8.i.i.i.exit_free_prev.i.i_crit_edge
  %i.7.i.i = phi i32 [ %div.i.i, %exit_unmap_prev.i.i.exit_free_prev.i.i_crit_edge ], [ %div.i.i, %while.body181.i.i.exit_free_prev.i.i_crit_edge ], [ %i.0426.i.i, %if.end8.i.i.i.exit_free_prev.i.i_crit_edge ]
  %ret.4.i.i = phi i32 [ %ret.3.i.i, %exit_unmap_prev.i.i.exit_free_prev.i.i_crit_edge ], [ %ret.3.i.i, %while.body181.i.i.exit_free_prev.i.i_crit_edge ], [ -12, %if.end8.i.i.i.exit_free_prev.i.i_crit_edge ]
  %dec188438.i.i = add i32 %i.7.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec188438.i.i)
  %cmp189439.i.i = icmp sgt i32 %dec188438.i.i, -1
  br i1 %cmp189439.i.i, label %exit_free_prev.i.i.while.body191.i.i_crit_edge, label %exit_free_prev.i.i.while.end194.i.i_crit_edge

exit_free_prev.i.i.while.end194.i.i_crit_edge:    ; preds = %exit_free_prev.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end194.i.i

exit_free_prev.i.i.while.body191.i.i_crit_edge:   ; preds = %exit_free_prev.i.i
  br label %while.body191.i.i

while.body191.i.i:                                ; preds = %while.body191.i.i.while.body191.i.i_crit_edge, %exit_free_prev.i.i.while.body191.i.i_crit_edge
  %dec188440.i.i = phi i32 [ %dec188.i.i, %while.body191.i.i.while.body191.i.i_crit_edge ], [ %dec188438.i.i, %exit_free_prev.i.i.while.body191.i.i_crit_edge ]
  %chunk193.i.i = getelementptr %struct.anon.77, ptr %call9.i.i.i.i, i32 %dec188440.i.i, i32 2
  %160 = ptrtoint ptr %chunk193.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %chunk193.i.i, align 4
  call void @kfree(ptr noundef %161) #12
  %dec188.i.i = add nsw i32 %dec188440.i.i, -1
  %cmp189.i.not.i = icmp eq i32 %dec188440.i.i, 0
  br i1 %cmp189.i.not.i, label %while.body191.i.i.while.end194.i.i_crit_edge, label %while.body191.i.i.while.body191.i.i_crit_edge

while.body191.i.i.while.body191.i.i_crit_edge:    ; preds = %while.body191.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body191.i.i

while.body191.i.i.while.end194.i.i_crit_edge:     ; preds = %while.body191.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end194.i.i

while.end194.i.i:                                 ; preds = %while.body191.i.i.while.end194.i.i_crit_edge, %exit_free_prev.i.i.while.end194.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4.i.i)
  %cmp195.i.i = icmp slt i32 %ret.4.i.i, 0
  br i1 %cmp195.i.i, label %do.end200.i.i, label %while.end194.i.i.nfp_nsp_command_buf_dma.exit_crit_edge

while.end194.i.i.nfp_nsp_command_buf_dma.exit_crit_edge: ; preds = %while.end194.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_nsp_command_buf_dma.exit

do.end200.i.i:                                    ; preds = %while.end194.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call201.i.i = call ptr @nfp_cpp_device(ptr noundef %81) #12
  %parent202.i.i = getelementptr inbounds %struct.device, ptr %call201.i.i, i32 0, i32 1
  %162 = ptrtoint ptr %parent202.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %parent202.i.i, align 8
  %164 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %arg, align 8
  %conv204.i.i = zext i16 %165 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %163, ptr noundef nonnull @.str.63, i32 noundef %conv204.i.i, i32 noundef %ret.4.i.i, i32 noundef %28, i32 noundef %chunk_order.0.i) #16
  br label %nfp_nsp_command_buf_dma.exit

nfp_nsp_command_buf_dma.exit:                     ; preds = %do.end200.i.i, %while.end194.i.i.nfp_nsp_command_buf_dma.exit_crit_edge, %if.end296.i.nfp_nsp_command_buf_dma.exit_crit_edge, %do.end.i, %if.end103.nfp_nsp_command_buf_dma.exit_crit_edge
  %retval.0.i148 = phi i32 [ -12, %do.end.i ], [ %call273.i, %if.end103.nfp_nsp_command_buf_dma.exit_crit_edge ], [ -12, %if.end296.i.nfp_nsp_command_buf_dma.exit_crit_edge ], [ %ret.4.i.i, %do.end200.i.i ], [ %ret.4.i.i, %while.end194.i.i.nfp_nsp_command_buf_dma.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg.i142) #12
  br label %cleanup

cleanup:                                          ; preds = %nfp_nsp_command_buf_dma.exit, %do.end96, %nfp_nsp_command_buf_def.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ %retval.0.i, %nfp_nsp_command_buf_def.exit ], [ %retval.0.i148, %nfp_nsp_command_buf_dma.exit ], [ -22, %do.end96 ], [ %call13, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_nsp_write_flash(ptr noundef %state, ptr nocapture noundef readonly %fw) local_unnamed_addr #2 align 64 {
entry:
  %write_flash = alloca %struct.nfp_nsp_command_buf_arg, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %write_flash) #12
  %0 = call ptr @memset(ptr %write_flash, i32 255, i32 32)
  %1 = ptrtoint ptr %write_flash to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 11, ptr %write_flash, align 8
  %dma = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %write_flash, i32 0, i32 1
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %dma, align 2
  %timeout_sec = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %write_flash, i32 0, i32 2
  %3 = ptrtoint ptr %timeout_sec to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 900, ptr %timeout_sec, align 4
  %option = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %write_flash, i32 0, i32 3
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw, align 4
  %6 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %option, align 8
  %buf = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %write_flash, i32 0, i32 4
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %buf, align 8
  %error_cb = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %write_flash, i32 0, i32 5
  %8 = ptrtoint ptr %error_cb to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %error_cb, align 8
  %error_quiet = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %write_flash, i32 0, i32 6
  %9 = ptrtoint ptr %error_quiet to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %error_quiet, align 4
  %in_buf = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %write_flash, i32 0, i32 1
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %in_buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %in_buf, align 8
  %in_size = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %write_flash, i32 0, i32 2
  %13 = ptrtoint ptr %in_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %5, ptr %in_size, align 4
  %out_buf = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %write_flash, i32 0, i32 3
  %14 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %out_buf, align 8
  %out_size = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %write_flash, i32 0, i32 4
  %15 = ptrtoint ptr %out_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %out_size, align 4
  %call = call fastcc i32 @nfp_nsp_command_buf(ptr noundef %state, ptr noundef nonnull %write_flash)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %write_flash) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_nsp_read_eth_table(ptr noundef %state, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  %eth_rescan = alloca %struct.nfp_nsp_command_buf_arg, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %eth_rescan) #12
  %0 = call ptr @memset(ptr %eth_rescan, i32 0, i32 32)
  %1 = ptrtoint ptr %eth_rescan to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 7, ptr %eth_rescan, align 8
  %option = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %eth_rescan, i32 0, i32 3
  %2 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %size, ptr %option, align 8
  %in_buf = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %eth_rescan, i32 0, i32 1
  %3 = ptrtoint ptr %in_buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %in_buf, align 8
  %in_size = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %eth_rescan, i32 0, i32 2
  %4 = ptrtoint ptr %in_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %in_size, align 4
  %out_buf = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %eth_rescan, i32 0, i32 3
  %5 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buf, ptr %out_buf, align 8
  %out_size = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %eth_rescan, i32 0, i32 4
  %6 = ptrtoint ptr %out_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %size, ptr %out_size, align 4
  %call = call fastcc i32 @nfp_nsp_command_buf(ptr noundef %state, ptr noundef nonnull %eth_rescan)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %eth_rescan) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_nsp_write_eth_table(ptr noundef %state, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  %eth_ctrl = alloca %struct.nfp_nsp_command_buf_arg, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %eth_ctrl) #12
  %0 = call ptr @memset(ptr %eth_ctrl, i32 0, i32 32)
  %1 = ptrtoint ptr %eth_ctrl to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 8, ptr %eth_ctrl, align 8
  %option = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %eth_ctrl, i32 0, i32 3
  %2 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %size, ptr %option, align 8
  %in_buf = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %eth_ctrl, i32 0, i32 1
  %3 = ptrtoint ptr %in_buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %buf, ptr %in_buf, align 8
  %in_size = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %eth_ctrl, i32 0, i32 2
  %4 = ptrtoint ptr %in_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %size, ptr %in_size, align 4
  %out_buf = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %eth_ctrl, i32 0, i32 3
  %5 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %out_buf, align 8
  %out_size = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %eth_ctrl, i32 0, i32 4
  %6 = ptrtoint ptr %out_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %out_size, align 4
  %call = call fastcc i32 @nfp_nsp_command_buf(ptr noundef %state, ptr noundef nonnull %eth_ctrl)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %eth_ctrl) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_nsp_read_identify(ptr noundef %state, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  %identify = alloca %struct.nfp_nsp_command_buf_arg, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %identify) #12
  %0 = call ptr @memset(ptr %identify, i32 0, i32 32)
  %1 = ptrtoint ptr %identify to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 13, ptr %identify, align 8
  %option = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %identify, i32 0, i32 3
  %2 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %size, ptr %option, align 8
  %in_buf = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %identify, i32 0, i32 1
  %3 = ptrtoint ptr %in_buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %in_buf, align 8
  %in_size = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %identify, i32 0, i32 2
  %4 = ptrtoint ptr %in_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %in_size, align 4
  %out_buf = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %identify, i32 0, i32 3
  %5 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buf, ptr %out_buf, align 8
  %out_size = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %identify, i32 0, i32 4
  %6 = ptrtoint ptr %out_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %size, ptr %out_size, align 4
  %call = call fastcc i32 @nfp_nsp_command_buf(ptr noundef %state, ptr noundef nonnull %identify)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %identify) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_nsp_read_sensors(ptr noundef %state, i32 noundef %sensor_mask, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  %sensors = alloca %struct.nfp_nsp_command_buf_arg, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %sensors) #12
  %0 = call ptr @memset(ptr %sensors, i32 0, i32 32)
  %1 = ptrtoint ptr %sensors to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 12, ptr %sensors, align 8
  %option = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %sensors, i32 0, i32 3
  %2 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sensor_mask, ptr %option, align 8
  %in_buf = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %sensors, i32 0, i32 1
  %3 = ptrtoint ptr %in_buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %in_buf, align 8
  %in_size = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %sensors, i32 0, i32 2
  %4 = ptrtoint ptr %in_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %in_size, align 4
  %out_buf = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %sensors, i32 0, i32 3
  %5 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buf, ptr %out_buf, align 8
  %out_size = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %sensors, i32 0, i32 4
  %6 = ptrtoint ptr %out_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %size, ptr %out_size, align 4
  %call = call fastcc i32 @nfp_nsp_command_buf(ptr noundef %state, ptr noundef nonnull %sensors)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %sensors) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_nsp_load_stored_fw(ptr noundef %state) local_unnamed_addr #2 align 64 {
entry:
  %arg = alloca %struct.nfp_nsp_command_arg, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %arg) #12
  %0 = call ptr @memcpy(ptr %arg, ptr @__const.nfp_nsp_load_stored_fw.arg, i32 32)
  %call = call fastcc i32 @__nfp_nsp_command(ptr noundef %state, ptr noundef nonnull %arg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nfp_nsp_load_fw_extended_msg(ptr noundef %state, i32 noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %arg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__nfp_nsp_command(ptr noundef %state, ptr nocapture noundef readonly %arg) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i64, align 8
  %ret_val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg) #12
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %reg, align 8, !annotation !173
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret_val) #12
  %1 = ptrtoint ptr %ret_val to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %ret_val, align 8, !annotation !173
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %res = getelementptr inbounds %struct.nfp_nsp, ptr %state, i32 0, i32 1
  %4 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res, align 4
  %call = tail call i32 @nfp_resource_cpp_id(ptr noundef %5) #12
  %6 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %res, align 4
  %call3 = tail call i64 @nfp_resource_address(ptr noundef %7) #12
  %add4 = add i64 %call3, 8
  %call6 = tail call fastcc i32 @nfp_nsp_check(ptr noundef %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add5 = add i64 %call3, 16
  %buf = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %arg, i32 0, i32 4
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %buf, align 8
  %call7 = tail call i32 @nfp_cpp_writeq(ptr noundef %3, i32 noundef %call, i64 noundef %add5, i64 noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %option = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %arg, i32 0, i32 3
  %10 = ptrtoint ptr %option to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %option, align 8
  %conv27 = zext i32 %11 to i64
  %shl = shl nuw i64 %conv27, 32
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arg, align 8
  %conv54 = zext i16 %13 to i64
  %shl55 = shl nuw nsw i64 %conv54, 16
  %dma = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %arg, i32 0, i32 1
  %14 = ptrtoint ptr %dma to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dma, align 2, !range !172
  %16 = shl nuw nsw i8 %15, 1
  %shl86 = zext i8 %16 to i64
  %or = or i64 %shl, %shl55
  %or88 = or i64 %or, %shl86
  %or105 = or i64 %or88, 1
  %call106 = tail call i32 @nfp_cpp_writeq(ptr noundef %3, i32 noundef %call, i64 noundef %add4, i64 noundef %or105) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp107 = icmp slt i32 %call106, 0
  br i1 %cmp107, label %if.end9.cleanup_crit_edge, label %if.end110

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end110:                                        ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %17, 3000
  br label %for.cond.i

for.cond.i:                                       ; preds = %cleanup.i.for.cond.i_crit_edge, %if.end110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %call.i = call i32 @nfp_cpp_readq(ptr noundef %3, i32 noundef %call, i64 noundef %add4, ptr noundef nonnull %reg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %for.cond.i.do.end116_crit_edge, label %if.end.i

for.cond.i.do.end116_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end116

if.end.i:                                         ; preds = %for.cond.i
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %reg, align 8
  %and.i = and i64 %20, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %cmp1.i = icmp eq i64 %and.i, 0
  br i1 %cmp1.i, label %if.end120, label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i
  call void @msleep(i32 noundef 25) #12
  %sub.i = sub i32 %add.i, %18
  %cmp4.i = icmp slt i32 %sub.i, 0
  br i1 %cmp4.i, label %cleanup.i.do.end116_crit_edge, label %cleanup.i.for.cond.i_crit_edge

cleanup.i.for.cond.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

cleanup.i.do.end116_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end116

do.end116:                                        ; preds = %cleanup.i.do.end116_crit_edge, %for.cond.i.do.end116_crit_edge
  %retval.13.i.ph = phi i32 [ %call.i, %for.cond.i.do.end116_crit_edge ], [ -110, %cleanup.i.do.end116_crit_edge ]
  %call117 = call ptr @nfp_cpp_device(ptr noundef %3) #12
  %parent = getelementptr inbounds %struct.device, ptr %call117, i32 0, i32 1
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent, align 8
  %23 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arg, align 8
  %conv119 = zext i16 %24 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.67, i32 noundef %retval.13.i.ph, i32 noundef %conv119) #16
  br label %cleanup

if.end120:                                        ; preds = %if.end.i
  %timeout_sec = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %arg, i32 0, i32 2
  %25 = ptrtoint ptr %timeout_sec to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %timeout_sec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool121.not = icmp eq i32 %26, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %.op = mul i32 %26, 100
  %mul.i = select i1 %tobool121.not, i32 3000, i32 %.op
  %add.i258 = add i32 %mul.i, %27
  br label %for.cond.i261

for.cond.i261:                                    ; preds = %cleanup.i267.for.cond.i261_crit_edge, %if.end120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %call.i259 = call i32 @nfp_cpp_readq(ptr noundef %3, i32 noundef %call, i64 noundef %call3, ptr noundef nonnull %reg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259)
  %cmp.i260 = icmp slt i32 %call.i259, 0
  br i1 %cmp.i260, label %for.cond.i261.do.end129_crit_edge, label %if.end.i264

for.cond.i261.do.end129_crit_edge:                ; preds = %for.cond.i261
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end129

if.end.i264:                                      ; preds = %for.cond.i261
  %29 = ptrtoint ptr %reg to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %reg, align 8
  %and.i262 = and i64 %30, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i262)
  %cmp1.i263 = icmp eq i64 %and.i262, 0
  br i1 %cmp1.i263, label %if.end134, label %cleanup.i267

cleanup.i267:                                     ; preds = %if.end.i264
  call void @msleep(i32 noundef 25) #12
  %sub.i265 = sub i32 %add.i258, %28
  %cmp4.i266 = icmp slt i32 %sub.i265, 0
  br i1 %cmp4.i266, label %cleanup.i267.do.end129_crit_edge, label %cleanup.i267.for.cond.i261_crit_edge

cleanup.i267.for.cond.i261_crit_edge:             ; preds = %cleanup.i267
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i261

cleanup.i267.do.end129_crit_edge:                 ; preds = %cleanup.i267
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end129

do.end129:                                        ; preds = %cleanup.i267.do.end129_crit_edge, %for.cond.i261.do.end129_crit_edge
  %retval.13.i268.ph = phi i32 [ %call.i259, %for.cond.i261.do.end129_crit_edge ], [ -110, %cleanup.i267.do.end129_crit_edge ]
  %call130 = call ptr @nfp_cpp_device(ptr noundef %3) #12
  %parent131 = getelementptr inbounds %struct.device, ptr %call130, i32 0, i32 1
  %31 = ptrtoint ptr %parent131 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent131, align 8
  %33 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arg, align 8
  %conv133 = zext i16 %34 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.70, i32 noundef %retval.13.i268.ph, i32 noundef %conv133) #16
  br label %cleanup

if.end134:                                        ; preds = %if.end.i264
  %call135 = call i32 @nfp_cpp_readq(ptr noundef %3, i32 noundef %call, i64 noundef %add4, ptr noundef nonnull %ret_val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %cmp136 = icmp slt i32 %call135, 0
  br i1 %cmp136, label %if.end134.cleanup_crit_edge, label %do.end154

if.end134.cleanup_crit_edge:                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end154:                                        ; preds = %if.end134
  %35 = ptrtoint ptr %ret_val to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %ret_val, align 8
  %shr = lshr i64 %36, 32
  store i64 %shr, ptr %ret_val, align 8
  %37 = ptrtoint ptr %reg to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %reg, align 8
  %39 = trunc i64 %38 to i32
  %40 = lshr i32 %39, 8
  %conv175 = and i32 %40, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv175)
  %tobool176.not = icmp eq i32 %conv175, 0
  br i1 %tobool176.not, label %if.end196, label %if.then177

if.then177:                                       ; preds = %do.end154
  %error_quiet = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %arg, i32 0, i32 6
  %41 = ptrtoint ptr %error_quiet to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %error_quiet, align 4, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool178.not = icmp eq i8 %42, 0
  br i1 %tobool178.not, label %do.end182, label %if.then177.if.end188_crit_edge

if.then177.if.end188_crit_edge:                   ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end188

do.end182:                                        ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #14
  %call183 = call ptr @nfp_cpp_device(ptr noundef %3) #12
  %parent184 = getelementptr inbounds %struct.device, ptr %call183, i32 0, i32 1
  %43 = ptrtoint ptr %parent184 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %parent184, align 8
  %sub = sub nsw i32 0, %conv175
  %45 = ptrtoint ptr %ret_val to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %ret_val, align 8
  %conv185 = trunc i64 %46 to i32
  %47 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arg, align 8
  %conv187 = zext i16 %48 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.73, i32 noundef %sub, i32 noundef %conv185, i32 noundef %conv187) #16
  br label %if.end188

if.end188:                                        ; preds = %do.end182, %if.then177.if.end188_crit_edge
  %error_cb = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %arg, i32 0, i32 5
  %49 = ptrtoint ptr %error_cb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %error_cb, align 8
  %tobool189.not = icmp eq ptr %50, null
  %51 = ptrtoint ptr %ret_val to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %ret_val, align 8
  %conv193 = trunc i64 %52 to i32
  br i1 %tobool189.not, label %if.else, label %if.then190

if.then190:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #14
  call void %50(ptr noundef %state, i32 noundef %conv193) #12
  br label %if.end194

if.else:                                          ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @nfp_nsp_print_extended_error(ptr noundef %state, i32 noundef %conv193)
  br label %if.end194

if.end194:                                        ; preds = %if.else, %if.then190
  %sub195 = sub nsw i32 0, %conv175
  br label %cleanup

if.end196:                                        ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #14
  %conv197 = trunc i64 %shr to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end196, %if.end194, %if.end134.cleanup_crit_edge, %do.end129, %do.end116, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.13.i.ph, %do.end116 ], [ %retval.13.i268.ph, %do.end129 ], [ %sub195, %if.end194 ], [ %conv197, %if.end196 ], [ %call6, %entry.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ], [ %call106, %if.end9.cleanup_crit_edge ], [ %call135, %if.end134.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret_val) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_nsp_hwinfo_lookup(ptr noundef %state, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  %hwinfo_lookup.i = alloca %struct.nfp_nsp_command_buf_arg, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %size, i32 4095)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %hwinfo_lookup.i) #12
  %1 = call ptr @memset(ptr %hwinfo_lookup.i, i32 0, i32 32)
  %2 = ptrtoint ptr %hwinfo_lookup.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 17, ptr %hwinfo_lookup.i, align 8
  %option.i = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %hwinfo_lookup.i, i32 0, i32 3
  %3 = ptrtoint ptr %option.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %0, ptr %option.i, align 8
  %in_buf.i = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %hwinfo_lookup.i, i32 0, i32 1
  %4 = ptrtoint ptr %in_buf.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %buf, ptr %in_buf.i, align 8
  %in_size.i = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %hwinfo_lookup.i, i32 0, i32 2
  %5 = ptrtoint ptr %in_size.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %0, ptr %in_size.i, align 4
  %out_buf.i = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %hwinfo_lookup.i, i32 0, i32 3
  %6 = ptrtoint ptr %out_buf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %buf, ptr %out_buf.i, align 8
  %out_size.i = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %hwinfo_lookup.i, i32 0, i32 4
  %7 = ptrtoint ptr %out_size.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %0, ptr %out_size.i, align 4
  %call.i = call fastcc i32 @nfp_nsp_command_buf(ptr noundef %state, ptr noundef nonnull %hwinfo_lookup.i) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %hwinfo_lookup.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @strnlen(ptr noundef %buf, i32 noundef %0) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %0)
  %cmp2 = icmp eq i32 %call1, %0
  br i1 %cmp2, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state, align 4
  %call4 = call ptr @nfp_cpp_device(ptr noundef %9) #12
  %parent = getelementptr inbounds %struct.device, ptr %call4, i32 0, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.8) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_nsp_hwinfo_lookup_optional(ptr noundef %state, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readonly %default_val) local_unnamed_addr #2 align 64 {
entry:
  %hwinfo_lookup.i = alloca %struct.nfp_nsp_command_buf_arg, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strnlen(ptr noundef %default_val, i32 noundef %size) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %size)
  %cmp = icmp eq i32 %call, %size
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %minor.i.i = getelementptr inbounds %struct.nfp_nsp, ptr %state, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %minor.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %minor.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %1)
  %cmp.i = icmp ugt i16 %1, 24
  br i1 %cmp.i, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call3 = tail call ptr @strcpy(ptr noundef %buf, ptr noundef %default_val) #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = tail call i32 @llvm.umin.i32(i32 %size, i32 4095)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %hwinfo_lookup.i) #12
  %3 = call ptr @memset(ptr %hwinfo_lookup.i, i32 0, i32 32)
  %4 = ptrtoint ptr %hwinfo_lookup.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 17, ptr %hwinfo_lookup.i, align 8
  %option.i = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %hwinfo_lookup.i, i32 0, i32 3
  %5 = ptrtoint ptr %option.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %2, ptr %option.i, align 8
  %error_quiet.i = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %hwinfo_lookup.i, i32 0, i32 6
  %6 = ptrtoint ptr %error_quiet.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %error_quiet.i, align 4
  %in_buf.i = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %hwinfo_lookup.i, i32 0, i32 1
  %7 = ptrtoint ptr %in_buf.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buf, ptr %in_buf.i, align 8
  %in_size.i = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %hwinfo_lookup.i, i32 0, i32 2
  %8 = ptrtoint ptr %in_size.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %2, ptr %in_size.i, align 4
  %out_buf.i = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %hwinfo_lookup.i, i32 0, i32 3
  %9 = ptrtoint ptr %out_buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf, ptr %out_buf.i, align 8
  %out_size.i = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %hwinfo_lookup.i, i32 0, i32 4
  %10 = ptrtoint ptr %out_size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %2, ptr %out_size.i, align 4
  %call.i = call fastcc i32 @nfp_nsp_command_buf(ptr noundef %state, ptr noundef nonnull %hwinfo_lookup.i) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %hwinfo_lookup.i) #12
  %11 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %call.i, label %do.end [
    i32 0, label %if.end13
    i32 -2, label %if.then9
  ]

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %call10 = call ptr @strcpy(ptr noundef %buf, ptr noundef %default_val) #18
  br label %cleanup

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state, align 4
  %call12 = call ptr @nfp_cpp_device(ptr noundef %13) #12
  %parent = getelementptr inbounds %struct.device, ptr %call12, i32 0, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.10, i32 noundef %call.i) #16
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %call14 = call i32 @strnlen(ptr noundef %buf, i32 noundef %2) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call14, i32 %2)
  %cmp15 = icmp eq i32 %call14, %2
  br i1 %cmp15, label %do.end19, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state, align 4
  %call21 = call ptr @nfp_cpp_device(ptr noundef %17) #12
  %parent22 = getelementptr inbounds %struct.device, ptr %call21, i32 0, i32 1
  %18 = ptrtoint ptr %parent22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent22, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.8) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.end13.cleanup_crit_edge, %do.end, %if.then9, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then9 ], [ %call.i, %do.end ], [ -22, %do.end19 ], [ 0, %if.then2 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_nsp_hwinfo_set(ptr noundef %state, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  %hwinfo_set = alloca %struct.nfp_nsp_command_buf_arg, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %hwinfo_set) #12
  %0 = call ptr @memset(ptr %hwinfo_set, i32 0, i32 32)
  %1 = ptrtoint ptr %hwinfo_set to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 18, ptr %hwinfo_set, align 8
  %option = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %hwinfo_set, i32 0, i32 3
  %2 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %size, ptr %option, align 8
  %in_buf = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %hwinfo_set, i32 0, i32 1
  %3 = ptrtoint ptr %in_buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %buf, ptr %in_buf, align 8
  %in_size = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %hwinfo_set, i32 0, i32 2
  %4 = ptrtoint ptr %in_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %size, ptr %in_size, align 4
  %out_buf = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %hwinfo_set, i32 0, i32 3
  %5 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %out_buf, align 8
  %out_size = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %hwinfo_set, i32 0, i32 4
  %6 = ptrtoint ptr %out_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %out_size, align 4
  %call = call fastcc i32 @nfp_nsp_command_buf(ptr noundef %state, ptr noundef nonnull %hwinfo_set)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %hwinfo_set) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_nsp_fw_loaded(ptr noundef %state) local_unnamed_addr #2 align 64 {
entry:
  %arg = alloca %struct.nfp_nsp_command_arg, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %arg) #12
  %0 = call ptr @memcpy(ptr %arg, ptr @__const.nfp_nsp_fw_loaded.arg, i32 32)
  %call = call fastcc i32 @__nfp_nsp_command(ptr noundef %state, ptr noundef nonnull %arg)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %arg) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_nsp_versions(ptr noundef %state, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #2 align 64 {
entry:
  %versions = alloca %struct.nfp_nsp_command_buf_arg, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %versions) #12
  %0 = call ptr @memset(ptr %versions, i32 0, i32 32)
  %1 = ptrtoint ptr %versions to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 21, ptr %versions, align 8
  %option = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %versions, i32 0, i32 3
  %2 = tail call i32 @llvm.umin.i32(i32 %size, i32 4095)
  %3 = ptrtoint ptr %option to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %option, align 8
  %in_buf = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %versions, i32 0, i32 1
  %4 = ptrtoint ptr %in_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %in_buf, align 8
  %in_size = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %versions, i32 0, i32 2
  %5 = ptrtoint ptr %in_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %in_size, align 4
  %out_buf = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %versions, i32 0, i32 3
  %6 = ptrtoint ptr %out_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %buf, ptr %out_buf, align 8
  %out_size = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %versions, i32 0, i32 4
  %7 = ptrtoint ptr %out_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %2, ptr %out_size, align 4
  %call = call fastcc i32 @nfp_nsp_command_buf(ptr noundef %state, ptr noundef nonnull %versions)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %versions) #12
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @nfp_nsp_versions_get(i32 noundef %id, i1 noundef zeroext %flash, ptr noundef readonly %buf, i32 noundef %size) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %id)
  %cmp = icmp ugt i32 %id, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %mul = shl nuw nsw i32 %id, 1
  %conv = zext i1 %flash to i32
  %add = or i32 %mul, %conv
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %buf, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #12
  %conv3 = zext i16 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv3)
  %cmp4.not = icmp ult i32 %add, %conv3
  br i1 %cmp4.not, label %if.end8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %arrayidx = getelementptr [7 x i32], ptr @nfp_nsp_versions_get.id2off, i32 0, i32 %id
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 %4
  %mul12 = select i1 %flash, i32 2, i32 0
  %add.ptr13 = getelementptr i8, ptr %add.ptr, i32 %mul12
  %5 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %add.ptr13, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #12
  %conv15 = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool16.not = icmp eq i16 %6, 0
  br i1 %tobool16.not, label %if.end8.cleanup_crit_edge, label %if.end19

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_cmp4(i32 %conv15, i32 %size)
  %cmp20.not = icmp ult i32 %conv15, %size
  br i1 %cmp20.not, label %if.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx25 = getelementptr i8, ptr %buf, i32 %conv15
  %sub = sub i32 %size, %conv15
  %call26 = tail call i32 @strnlen(ptr noundef %arrayidx25, i32 noundef %sub) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call26, i32 %sub)
  %cmp28 = icmp eq i32 %call26, %sub
  %spec.select = select i1 %cmp28, ptr inttoptr (i32 -22 to ptr), ptr %arrayidx25
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end19.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end8.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end19.cleanup_crit_edge ], [ %spec.select, %if.end24 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_nsp_read_module_eeprom(ptr noundef %state, i32 noundef %eth_index, i32 noundef %offset, ptr nocapture noundef writeonly %data, i32 noundef %len, ptr nocapture noundef %read_len) local_unnamed_addr #2 align 64 {
entry:
  %module_eeprom.i = alloca %struct.nfp_nsp_command_buf_arg, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %len, -1
  %or = or i32 %sub, 7
  %add = add i32 %or, 1
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %add, i32 8) #12
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i, i32 noundef 3520) #17
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %call9.i.i, align 128
  %conv = trunc i32 %len to i16
  %1 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %length = getelementptr inbounds %struct.eeprom_buf, ptr %call9.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 %1, ptr %length, align 1
  %conv2 = trunc i32 %offset to i16
  %3 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %offset3 = getelementptr inbounds %struct.eeprom_buf, ptr %call9.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %offset3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %3, ptr %offset3, align 1
  %conv4 = trunc i32 %eth_index to i8
  %eth_index5 = getelementptr inbounds %struct.eeprom_buf, ptr %call9.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %eth_index5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv4, ptr %eth_index5, align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %module_eeprom.i) #12
  %6 = call ptr @memset(ptr %module_eeprom.i, i32 0, i32 32)
  %7 = ptrtoint ptr %module_eeprom.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 22, ptr %module_eeprom.i, align 8
  %option.i = getelementptr inbounds %struct.nfp_nsp_command_arg, ptr %module_eeprom.i, i32 0, i32 3
  %8 = ptrtoint ptr %option.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select.i, ptr %option.i, align 8
  %in_buf.i = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %module_eeprom.i, i32 0, i32 1
  %9 = ptrtoint ptr %in_buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9.i.i, ptr %in_buf.i, align 8
  %in_size.i = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %module_eeprom.i, i32 0, i32 2
  %10 = ptrtoint ptr %in_size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select.i, ptr %in_size.i, align 4
  %out_buf.i = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %module_eeprom.i, i32 0, i32 3
  %11 = ptrtoint ptr %out_buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i.i, ptr %out_buf.i, align 8
  %out_size.i = getelementptr inbounds %struct.nfp_nsp_command_buf_arg, ptr %module_eeprom.i, i32 0, i32 4
  %12 = ptrtoint ptr %out_size.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select.i, ptr %out_size.i, align 4
  %call.i = call fastcc i32 @nfp_nsp_command_buf(ptr noundef %state, ptr noundef nonnull %module_eeprom.i) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %module_eeprom.i) #12
  %readlen = getelementptr inbounds %struct.eeprom_buf, ptr %call9.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %readlen to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %readlen, align 1
  %15 = call i16 @llvm.bswap.i16(i16 %14)
  %conv7 = zext i16 %15 to i32
  %16 = call i32 @llvm.umin.i32(i32 %conv7, i32 %len)
  %17 = ptrtoint ptr %read_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %read_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool9.not = icmp eq i32 %16, 0
  br i1 %tobool9.not, label %if.end.if.end12_crit_edge, label %if.then10

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %data11 = getelementptr inbounds %struct.eeprom_buf, ptr %call9.i.i, i32 0, i32 5
  %18 = call ptr @memcpy(ptr %data, ptr %data11, i32 %16)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %land.lhs.true, label %if.end12.if.end17_crit_edge

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %read_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %read_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %len)
  %cmp14 = icmp ult i32 %20, %len
  %spec.select = select i1 %cmp14, i32 -5, i32 0
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true, %if.end12.if.end17_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end12.if.end17_crit_edge ], [ %spec.select, %land.lhs.true ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end17 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_resource_cpp_id(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nfp_resource_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_readq(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_write(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_read(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_writeq(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nfp_nsp_print_extended_error(ptr nocapture noundef readonly %state, i32 noundef %ret_val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %ret_val, -6010
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 5
  br i1 %0, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.nfp_nsp_print_extended_error, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %call.1 = tail call ptr @nfp_cpp_device(ptr noundef %3) #12
  %parent.1 = getelementptr inbounds %struct.device, ptr %call.1, i32 0, i32 1
  %4 = ptrtoint ptr %parent.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.76, ptr noundef nonnull %switch.load) #16
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !127, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !153, !155, !157, !159, !161}
!llvm.module.flags = !{!163, !164, !165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 278, i32 34}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 701, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @nfp_nsp_wait.__UNIQUE_ID_ddebug371, !3, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 722, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @nfp_nsp_wait._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @nfp_nsp_wait._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 930, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nfp_nsp_hwinfo_lookup._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @nfp_nsp_hwinfo_lookup._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 962, i32 3}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @nfp_nsp_hwinfo_lookup_optional._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @nfp_nsp_hwinfo_lookup_optional._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @nfp_nsp_hwinfo_lookup_optional._entry.12, !25, !"_entry", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 967, i32 3}
!26 = !{ptr @nfp_nsp_hwinfo_lookup_optional._entry_ptr.13, !25, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @nfp_nsp_versions_get.id2off, !28, !"id2off", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 1014, i32 19}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 242, i32 3}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @nfp_nsp_check._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @nfp_nsp_check._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 250, i32 3}
!36 = !{ptr @nfp_nsp_check._entry.16, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @nfp_nsp_check._entry_ptr.18, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 255, i32 3}
!40 = !{ptr @nfp_nsp_check._entry.19, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @nfp_nsp_check._entry_ptr.21, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 261, i32 3}
!44 = !{ptr @nfp_nsp_check._entry.22, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @nfp_nsp_check._entry_ptr.24, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 740, i32 11}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 741, i32 11}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 742, i32 11}
!52 = !{ptr @nfp_nsp_load_fw_extended_msg.major_msg, !53, !"major_msg", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 739, i32 28}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 745, i32 12}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 746, i32 12}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 747, i32 12}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 748, i32 12}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 749, i32 12}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 750, i32 12}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 751, i32 12}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 752, i32 12}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 753, i32 12}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 754, i32 12}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 755, i32 12}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 756, i32 12}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 757, i32 12}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 758, i32 12}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 759, i32 12}
!84 = !{ptr @nfp_nsp_load_fw_extended_msg.minor_msg, !85, !"minor_msg", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 744, i32 28}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 772, i32 11}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 776, i32 11}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 779, i32 3}
!92 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @nfp_nsp_load_fw_extended_msg._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @nfp_nsp_load_fw_extended_msg._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 782, i32 3}
!97 = !{ptr @nfp_nsp_load_fw_extended_msg._entry.47, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @nfp_nsp_load_fw_extended_msg._entry_ptr.49, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 785, i32 3}
!101 = !{ptr @nfp_nsp_load_fw_extended_msg._entry.50, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @nfp_nsp_load_fw_extended_msg._entry_ptr.52, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 665, i32 3}
!105 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @nfp_nsp_command_buf._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @nfp_nsp_command_buf._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 688, i32 3}
!110 = !{ptr @nfp_nsp_command_buf._entry.55, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @nfp_nsp_command_buf._entry_ptr.57, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 471, i32 3}
!114 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @nfp_nsp_command_buf_def._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @nfp_nsp_command_buf_def._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 643, i32 4}
!119 = !{ptr @.str.61, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @nfp_nsp_command_buf_dma._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @nfp_nsp_command_buf_dma._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = distinct !{null, !123, !"__already_done", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 555, i32 7}
!124 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.63, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 616, i32 3}
!127 = !{ptr @.str.64, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @nfp_nsp_command_buf_dma_sg._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @nfp_nsp_command_buf_dma_sg._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = distinct !{null, !131, !"__already_done", i1 false, i1 false}
!131 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!132 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.66, !131, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 392, i32 3}
!136 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @__nfp_nsp_command._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @__nfp_nsp_command._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.70, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 401, i32 3}
!141 = !{ptr @__nfp_nsp_command._entry.69, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @__nfp_nsp_command._entry_ptr.71, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.73, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 414, i32 4}
!145 = !{ptr @.str.74, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @__nfp_nsp_command._entry.72, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @__nfp_nsp_command._entry_ptr.75, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.76, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 224, i32 4}
!150 = !{ptr @.str.77, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @nfp_nsp_print_extended_error._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @nfp_nsp_print_extended_error._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.78, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 119, i32 10}
!155 = !{ptr @.str.79, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 120, i32 10}
!157 = !{ptr @.str.80, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 122, i32 10}
!159 = !{ptr @.str.81, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 123, i32 10}
!161 = distinct !{null, !162, !"nsp_errors", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp.c", i32 118, i32 3}
!163 = !{i32 1, !"wchar_size", i32 2}
!164 = !{i32 1, !"min_enum_size", i32 4}
!165 = !{i32 8, !"branch-target-enforcement", i32 0}
!166 = !{i32 8, !"sign-return-address", i32 0}
!167 = !{i32 8, !"sign-return-address-all", i32 0}
!168 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!169 = !{i32 7, !"uwtable", i32 1}
!170 = !{i32 7, !"frame-pointer", i32 2}
!171 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!172 = !{i8 0, i8 2}
!173 = !{!"auto-init"}
!174 = !{i64 2148825395, i64 2148825400, i64 2148825413, i64 2148825457, i64 2148825491, i64 2148825512}
!175 = !{i32 0, i32 33}
!176 = !{!"branch_weights", i32 2000, i32 1}
