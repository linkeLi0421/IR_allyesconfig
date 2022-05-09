; ModuleID = '/llk/IR_all_yes/drivers/net/ipa/ipa_mem.c_pt.bc'
source_filename = "../drivers/net/ipa/ipa_mem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ipa = type { %struct.gsi, i32, ptr, %struct.completion, %struct.notifier_block, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, i32, ptr, i32, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.ipa_endpoint], [23 x ptr], [10 x ptr], i8, %struct.atomic_t, ptr, %struct.ipa_qmi, [24 x i8] }
%struct.gsi = type { ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, %struct.mutex, [23 x %struct.gsi_channel], [24 x %struct.gsi_evt_ring], %struct.net_device }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gsi_channel = type { ptr, i8, i8, i8, i16, i16, %struct.gsi_ring, i32, i64, i64, i64, i64, i64, i64, %struct.gsi_trans_info, %struct.napi_struct }
%struct.gsi_ring = type { ptr, i32, i32, i32 }
%struct.gsi_trans_info = type { %struct.atomic_t, %struct.gsi_trans_pool, %struct.gsi_trans_pool, %struct.gsi_trans_pool, %struct.gsi_trans_pool, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.gsi_trans_pool = type { ptr, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.gsi_evt_ring = type { ptr, %struct.gsi_ring }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.102, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.102 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ipa_endpoint = type { ptr, i32, i32, i32, i8, ptr, i32, i32, ptr, [1 x i32], i32, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work }
%struct.ipa_qmi = type { %struct.qmi_handle, %struct.qmi_handle, %struct.sockaddr_qrtr, %struct.work_struct, i8, i8, i8, i8, i8 }
%struct.qmi_handle = type { ptr, %struct.mutex, %struct.sockaddr_qrtr, %struct.work_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.qmi_ops, %struct.idr, %struct.mutex, ptr }
%struct.qmi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sockaddr_qrtr = type { i16, i32, i32 }
%struct.ipa_mem = type { i32, i32, i16, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.gsi_trans = type { %struct.list_head, ptr, i8, i8, i8, i8, i32, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.completion, i64, i64 }
%struct.ipa_mem_data = type { i32, ptr, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@ipa_mem_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 89, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no transaction for memory setup\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ipa_mem_setup\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/net/ipa/ipa_mem.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ipa_mem_setup._entry_ptr = internal global ptr @ipa_mem_setup._entry, section ".printk_index", align 4
@ipa_mem_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 327, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"limiting IPA memory size to 0x%08x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ipa_mem_config\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ipa_mem_config._entry_ptr = internal global ptr @ipa_mem_config._entry, section ".printk_index", align 4
@ipa_mem_config.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.6, ptr @.str.2, ptr @.str.9, i8 0, i8 82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipa\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ignoring larger reported memory size: 0x%08x\0A\00", [50 x i8] zeroinitializer }, align 32
@ipa_mem_config._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 374, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"microcontroller ring not 1024-byte aligned\0A\00", [52 x i8] zeroinitializer }, align 32
@ipa_mem_config._entry_ptr.12 = internal global ptr @ipa_mem_config._entry.10, section ".printk_index", align 4
@ipa_mem_zero_modem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 417, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"no transaction to zero modem memory\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ipa_mem_zero_modem\00", [45 x i8] zeroinitializer }, align 32
@ipa_mem_zero_modem._entry_ptr = internal global ptr @ipa_mem_zero_modem._entry, section ".printk_index", align 4
@ipa_mem_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 624, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error %d setting DMA mask\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ipa_mem_init\00", [19 x i8] zeroinitializer }, align 32
@ipa_mem_init._entry_ptr = internal global ptr @ipa_mem_init._entry, section ".printk_index", align 4
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ipa-shared\00", [21 x i8] zeroinitializer }, align 32
@ipa_mem_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.2, i32 632, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"DT error getting \22ipa-shared\22 memory property\0A\00", [49 x i8] zeroinitializer }, align 32
@ipa_mem_init._entry_ptr.20 = internal global ptr @ipa_mem_init._entry.18, section ".printk_index", align 4
@ipa_mem_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.16, ptr @.str.2, i32 638, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to remap \22ipa-shared\22 memory\0A\00", [59 x i8] zeroinitializer }, align 32
@ipa_mem_init._entry_ptr.23 = internal global ptr @ipa_mem_init._entry.21, section ".printk_index", align 4
@ipa_mem_size_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 292, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"region %u ends beyond memory limit (0x%08x)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ipa_mem_size_valid\00", [45 x i8] zeroinitializer }, align 32
@ipa_mem_size_valid._entry_ptr = internal global ptr @ipa_mem_size_valid._entry, section ".printk_index", align 4
@ipa_mem_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 251, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"too many memory regions (%u > %u)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ipa_mem_valid\00", [18 x i8] zeroinitializer }, align 32
@ipa_mem_valid._entry_ptr = internal global ptr @ipa_mem_valid._entry, section ".printk_index", align 4
@ipa_mem_valid._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 259, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"duplicate memory region %u\0A\00", [36 x i8] zeroinitializer }, align 32
@ipa_mem_valid._entry_ptr.30 = internal global ptr @ipa_mem_valid._entry.28, section ".printk_index", align 4
@ipa_mem_valid._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 272, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"required memory region %u missing\0A\00", [61 x i8] zeroinitializer }, align 32
@ipa_mem_valid._entry_ptr.33 = internal global ptr @ipa_mem_valid._entry.31, section ".printk_index", align 4
@ipa_mem_valid_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 214, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"region id %u not valid\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ipa_mem_valid_one\00", [46 x i8] zeroinitializer }, align 32
@ipa_mem_valid_one._entry_ptr = internal global ptr @ipa_mem_valid_one._entry, section ".printk_index", align 4
@ipa_mem_valid_one._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 219, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"empty memory region %u\0A\00", [40 x i8] zeroinitializer }, align 32
@ipa_mem_valid_one._entry_ptr.38 = internal global ptr @ipa_mem_valid_one._entry.36, section ".printk_index", align 4
@ipa_mem_valid_one._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.2, i32 227, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"region %u size not a multiple of %u bytes\0A\00", [53 x i8] zeroinitializer }, align 32
@ipa_mem_valid_one._entry_ptr.41 = internal global ptr @ipa_mem_valid_one._entry.39, section ".printk_index", align 4
@ipa_mem_valid_one._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.2, i32 229, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"region %u offset not 8-byte aligned\0A\00", [59 x i8] zeroinitializer }, align 32
@ipa_mem_valid_one._entry_ptr.44 = internal global ptr @ipa_mem_valid_one._entry.42, section ".printk_index", align 4
@ipa_mem_valid_one._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.35, ptr @.str.2, i32 232, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"region %u offset too small for %hu canaries\0A\00", [51 x i8] zeroinitializer }, align 32
@ipa_mem_valid_one._entry_ptr.47 = internal global ptr @ipa_mem_valid_one._entry.45, section ".printk_index", align 4
@ipa_mem_valid_one._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.35, ptr @.str.2, i32 234, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"non-zero end marker region size\0A\00", [63 x i8] zeroinitializer }, align 32
@ipa_mem_valid_one._entry_ptr.50 = internal global ptr @ipa_mem_valid_one._entry.48, section ".printk_index", align 4
@ipa_imem_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 459, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"no IOMMU domain found for IMEM\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ipa_imem_init\00", [18 x i8] zeroinitializer }, align 32
@ipa_imem_init._entry_ptr = internal global ptr @ipa_imem_init._entry, section ".printk_index", align 4
@ipa_smem_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 545, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"error %d allocating size %zu SMEM item %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ipa_smem_init\00", [18 x i8] zeroinitializer }, align 32
@ipa_smem_init._entry_ptr = internal global ptr @ipa_smem_init._entry, section ".printk_index", align 4
@ipa_smem_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 553, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error %d getting SMEM item %u\0A\00", [33 x i8] zeroinitializer }, align 32
@ipa_smem_init._entry_ptr.57 = internal global ptr @ipa_smem_init._entry.55, section ".printk_index", align 4
@ipa_smem_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.2, i32 560, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"SMEM item %u has size %zu, expected %zu\0A\00", [55 x i8] zeroinitializer }, align 32
@ipa_smem_init._entry_ptr.60 = internal global ptr @ipa_smem_init._entry.58, section ".printk_index", align 4
@ipa_smem_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.54, ptr @.str.2, i32 566, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"no IOMMU domain found for SMEM\0A\00", [32 x i8] zeroinitializer }, align 32
@ipa_smem_init._entry_ptr.63 = internal global ptr @ipa_smem_init._entry.61, section ".printk_index", align 4
@ipa_imem_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.2, i32 494, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unmapped %zu IMEM bytes, expected %zu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ipa_imem_exit\00", [18 x i8] zeroinitializer }, align 32
@ipa_imem_exit._entry_ptr = internal global ptr @ipa_imem_exit._entry, section ".printk_index", align 4
@ipa_imem_exit._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.2, i32 496, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"couldn't get IPA IOMMU domain for IMEM\0A\00", [56 x i8] zeroinitializer }, align 32
@ipa_imem_exit._entry_ptr.68 = internal global ptr @ipa_imem_exit._entry.66, section ".printk_index", align 4
@ipa_smem_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 598, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unmapped %zu SMEM bytes, expected %zu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ipa_smem_exit\00", [18 x i8] zeroinitializer }, align 32
@ipa_smem_exit._entry_ptr = internal global ptr @ipa_smem_exit._entry, section ".printk_index", align 4
@ipa_smem_exit._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 601, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"couldn't get IPA IOMMU domain for SMEM\0A\00", [56 x i8] zeroinitializer }, align 32
@ipa_smem_exit._entry_ptr.73 = internal global ptr @ipa_smem_exit._entry.71, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [30 x i64] [i64 28, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27]
@__sancov_gen_cov_switch_values.74 = internal global [19 x i64] [i64 17, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 12, i64 13, i64 14, i64 16, i64 17, i64 19]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 89, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 326, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 330, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 374, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 416, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 624, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 629, i32 9 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 631, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 638, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 291, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 250, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 259, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 271, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 214, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 219, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 226, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 229, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 231, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 234, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 459, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 544, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 553, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 559, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 566, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 493, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 496, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 597, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.284 = private constant [29 x i8] c"../drivers/net/ipa/ipa_mem.c\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 601, i32 3 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @ipa_imem_exit._entry, ptr @ipa_imem_exit._entry.66, ptr @ipa_imem_exit._entry_ptr, ptr @ipa_imem_exit._entry_ptr.68, ptr @ipa_imem_init._entry, ptr @ipa_imem_init._entry_ptr, ptr @ipa_mem_config._entry, ptr @ipa_mem_config._entry.10, ptr @ipa_mem_config._entry_ptr, ptr @ipa_mem_config._entry_ptr.12, ptr @ipa_mem_init._entry, ptr @ipa_mem_init._entry.18, ptr @ipa_mem_init._entry.21, ptr @ipa_mem_init._entry_ptr, ptr @ipa_mem_init._entry_ptr.20, ptr @ipa_mem_init._entry_ptr.23, ptr @ipa_mem_setup._entry, ptr @ipa_mem_setup._entry_ptr, ptr @ipa_mem_size_valid._entry, ptr @ipa_mem_size_valid._entry_ptr, ptr @ipa_mem_valid._entry, ptr @ipa_mem_valid._entry.28, ptr @ipa_mem_valid._entry.31, ptr @ipa_mem_valid._entry_ptr, ptr @ipa_mem_valid._entry_ptr.30, ptr @ipa_mem_valid._entry_ptr.33, ptr @ipa_mem_valid_one._entry, ptr @ipa_mem_valid_one._entry.36, ptr @ipa_mem_valid_one._entry.39, ptr @ipa_mem_valid_one._entry.42, ptr @ipa_mem_valid_one._entry.45, ptr @ipa_mem_valid_one._entry.48, ptr @ipa_mem_valid_one._entry_ptr, ptr @ipa_mem_valid_one._entry_ptr.38, ptr @ipa_mem_valid_one._entry_ptr.41, ptr @ipa_mem_valid_one._entry_ptr.44, ptr @ipa_mem_valid_one._entry_ptr.47, ptr @ipa_mem_valid_one._entry_ptr.50, ptr @ipa_mem_zero_modem._entry, ptr @ipa_mem_zero_modem._entry_ptr, ptr @ipa_smem_exit._entry, ptr @ipa_smem_exit._entry.71, ptr @ipa_smem_exit._entry_ptr, ptr @ipa_smem_exit._entry_ptr.73, ptr @ipa_smem_init._entry, ptr @ipa_smem_init._entry.55, ptr @ipa_smem_init._entry.58, ptr @ipa_smem_init._entry.61, ptr @ipa_smem_init._entry_ptr, ptr @ipa_smem_init._entry_ptr.57, ptr @ipa_smem_init._entry_ptr.60, ptr @ipa_smem_init._entry_ptr.63, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_mem_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_mem_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_mem_config._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_mem_zero_modem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_mem_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_mem_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_mem_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_mem_size_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_mem_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_mem_valid._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_mem_valid._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_mem_valid_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_mem_valid_one._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_mem_valid_one._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_mem_valid_one._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_mem_valid_one._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_mem_valid_one._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_imem_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_smem_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_smem_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_smem_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_smem_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_imem_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_imem_exit._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_smem_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_smem_exit._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipa_mem_find(ptr nocapture noundef readonly %ipa, i32 noundef %mem_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_count = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 19
  %0 = ptrtoint ptr %mem_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mem_count, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not = icmp eq i32 %1, 0
  br i1 %cmp8.not, label %entry.cleanup3_crit_edge, label %for.body.lr.ph

entry.cleanup3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup3

for.body.lr.ph:                                   ; preds = %entry
  %mem1 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 20
  %2 = ptrtoint ptr %mem1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem1, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.cond.cleanup3_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup3_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup3

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ipa_mem, ptr %3, i32 %i.09
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %mem_id)
  %cmp2 = icmp eq i32 %5, %mem_id
  br i1 %cmp2, label %for.body.cleanup3_crit_edge, label %for.cond

for.body.cleanup3_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup3

cleanup3:                                         ; preds = %for.body.cleanup3_crit_edge, %for.cond.cleanup3_crit_edge, %entry.cleanup3_crit_edge
  %retval.2 = phi ptr [ null, %entry.cleanup3_crit_edge ], [ null, %for.cond.cleanup3_crit_edge ], [ %arrayidx, %for.body.cleanup3_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipa_mem_setup(ptr noundef %ipa) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %zero_addr = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 25
  %0 = ptrtoint ptr %zero_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %zero_addr, align 8
  %call = tail call ptr @ipa_cmd_trans_alloc(ptr noundef %ipa, i32 noundef 4) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mem_count.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 19
  %4 = ptrtoint ptr %mem_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mem_count.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8.not.i = icmp eq i32 %5, 0
  br i1 %cmp8.not.i, label %ipa_mem_find.exit.thread, label %for.body.lr.ph.i

ipa_mem_find.exit.thread:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 4)
  %6 = load i32, ptr inttoptr (i32 4 to ptr), align 4
  call void @__asan_load2_noabort(i32 8)
  %7 = load i16, ptr inttoptr (i32 8 to ptr), align 8
  br label %if.end10

for.body.lr.ph.i:                                 ; preds = %if.end
  %mem1.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 20
  %8 = ptrtoint ptr %mem1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mem1.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.cond.i.for.body.lr.ph.i42_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.for.body.lr.ph.i42_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph.i42

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ipa_mem, ptr %9, i32 %i.09.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %11)
  %cmp2.i = icmp eq i32 %11, 10
  br i1 %cmp2.i, label %for.body.i.for.body.lr.ph.i42_crit_edge, label %for.cond.i

for.body.i.for.body.lr.ph.i42_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph.i42

for.body.lr.ph.i42:                               ; preds = %for.body.i.for.body.lr.ph.i42_crit_edge, %for.cond.i.for.body.lr.ph.i42_crit_edge
  %retval.2.i = phi ptr [ null, %for.cond.i.for.body.lr.ph.i42_crit_edge ], [ %arrayidx.i, %for.body.i.for.body.lr.ph.i42_crit_edge ]
  %offset2 = getelementptr inbounds %struct.ipa_mem, ptr %retval.2.i, i32 0, i32 1
  %12 = ptrtoint ptr %offset2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset2, align 4
  %size3 = getelementptr inbounds %struct.ipa_mem, ptr %retval.2.i, i32 0, i32 2
  %14 = ptrtoint ptr %size3 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %size3, align 4
  %16 = ptrtoint ptr %mem1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mem1.i, align 4
  br label %for.body.i49

for.cond.i45:                                     ; preds = %for.body.i49
  %inc.i43 = add nuw i32 %i.09.i46, 1
  %exitcond.not.i44 = icmp eq i32 %inc.i43, %5
  br i1 %exitcond.not.i44, label %for.cond.i45.if.end10_crit_edge, label %for.cond.i45.for.body.i49_crit_edge

for.cond.i45.for.body.i49_crit_edge:              ; preds = %for.cond.i45
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i49

for.cond.i45.if.end10_crit_edge:                  ; preds = %for.cond.i45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

for.body.i49:                                     ; preds = %for.cond.i45.for.body.i49_crit_edge, %for.body.lr.ph.i42
  %i.09.i46 = phi i32 [ 0, %for.body.lr.ph.i42 ], [ %inc.i43, %for.cond.i45.for.body.i49_crit_edge ]
  %arrayidx.i47 = getelementptr %struct.ipa_mem, ptr %17, i32 %i.09.i46
  %18 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %19)
  %cmp2.i48 = icmp eq i32 %19, 11
  br i1 %cmp2.i48, label %ipa_mem_find.exit51, label %for.cond.i45

ipa_mem_find.exit51:                              ; preds = %for.body.i49
  %tobool5.not = icmp eq ptr %arrayidx.i47, null
  br i1 %tobool5.not, label %ipa_mem_find.exit51.if.end10_crit_edge, label %if.then6

ipa_mem_find.exit51.if.end10_crit_edge:           ; preds = %ipa_mem_find.exit51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then6:                                         ; preds = %ipa_mem_find.exit51
  call void @__sanitizer_cov_trace_pc() #8
  %size7 = getelementptr %struct.ipa_mem, ptr %17, i32 %i.09.i46, i32 2
  %20 = ptrtoint ptr %size7 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %size7, align 4
  %add = add i16 %21, %15
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %ipa_mem_find.exit51.if.end10_crit_edge, %for.cond.i45.if.end10_crit_edge, %ipa_mem_find.exit.thread
  %22 = phi i32 [ %13, %if.then6 ], [ %13, %ipa_mem_find.exit51.if.end10_crit_edge ], [ %6, %ipa_mem_find.exit.thread ], [ %13, %for.cond.i45.if.end10_crit_edge ]
  %size.0 = phi i16 [ %add, %if.then6 ], [ %15, %ipa_mem_find.exit51.if.end10_crit_edge ], [ %7, %ipa_mem_find.exit.thread ], [ %15, %for.cond.i45.if.end10_crit_edge ]
  tail call void @ipa_cmd_hdr_init_local_add(ptr noundef nonnull %call, i32 noundef %22, i16 noundef zeroext %size.0, i32 noundef %1) #6
  %gsi.i = getelementptr inbounds %struct.gsi_trans, ptr %call, i32 0, i32 1
  %23 = ptrtoint ptr %gsi.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gsi.i, align 8
  %mem_count.i.i = getelementptr inbounds %struct.ipa, ptr %24, i32 0, i32 19
  %25 = ptrtoint ptr %mem_count.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mem_count.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp8.not.i.i = icmp eq i32 %26, 0
  br i1 %cmp8.not.i.i, label %if.end10.ipa_mem_find.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end10.ipa_mem_find.exit.i_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_find.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end10
  %mem1.i.i = getelementptr inbounds %struct.ipa, ptr %24, i32 0, i32 20
  %27 = ptrtoint ptr %mem1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mem1.i.i, align 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %26
  br i1 %exitcond.not.i.i, label %for.cond.i.i.ipa_mem_find.exit.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.cond.i.i.ipa_mem_find.exit.i_crit_edge:       ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_find.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.09.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ipa_mem, ptr %28, i32 %i.09.i.i
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %30)
  %cmp2.i.i = icmp eq i32 %30, 12
  br i1 %cmp2.i.i, label %for.body.i.i.ipa_mem_find.exit.i_crit_edge, label %for.cond.i.i

for.body.i.i.ipa_mem_find.exit.i_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_find.exit.i

ipa_mem_find.exit.i:                              ; preds = %for.body.i.i.ipa_mem_find.exit.i_crit_edge, %for.cond.i.i.ipa_mem_find.exit.i_crit_edge, %if.end10.ipa_mem_find.exit.i_crit_edge
  %retval.2.i.i = phi ptr [ null, %if.end10.ipa_mem_find.exit.i_crit_edge ], [ null, %for.cond.i.i.ipa_mem_find.exit.i_crit_edge ], [ %arrayidx.i.i, %for.body.i.i.ipa_mem_find.exit.i_crit_edge ]
  %size.i = getelementptr inbounds %struct.ipa_mem, ptr %retval.2.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool.not.i = icmp eq i16 %32, 0
  br i1 %tobool.not.i, label %ipa_mem_find.exit.i.ipa_mem_zero_region_add.exit_crit_edge, label %if.end.i

ipa_mem_find.exit.i.ipa_mem_zero_region_add.exit_crit_edge: ; preds = %ipa_mem_find.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_zero_region_add.exit

if.end.i:                                         ; preds = %ipa_mem_find.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %zero_addr.i = getelementptr inbounds %struct.ipa, ptr %24, i32 0, i32 25
  %33 = ptrtoint ptr %zero_addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %zero_addr.i, align 8
  %offset.i = getelementptr inbounds %struct.ipa_mem, ptr %retval.2.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offset.i, align 4
  tail call void @ipa_cmd_dma_shared_mem_add(ptr noundef nonnull %call, i32 noundef %36, i16 noundef zeroext %32, i32 noundef %34, i1 noundef zeroext true) #6
  br label %ipa_mem_zero_region_add.exit

ipa_mem_zero_region_add.exit:                     ; preds = %if.end.i, %ipa_mem_find.exit.i.ipa_mem_zero_region_add.exit_crit_edge
  %37 = ptrtoint ptr %gsi.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %gsi.i, align 8
  %mem_count.i.i53 = getelementptr inbounds %struct.ipa, ptr %38, i32 0, i32 19
  %39 = ptrtoint ptr %mem_count.i.i53 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mem_count.i.i53, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp8.not.i.i54 = icmp eq i32 %40, 0
  br i1 %cmp8.not.i.i54, label %ipa_mem_zero_region_add.exit.ipa_mem_find.exit.i67_crit_edge, label %for.body.lr.ph.i.i56

ipa_mem_zero_region_add.exit.ipa_mem_find.exit.i67_crit_edge: ; preds = %ipa_mem_zero_region_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_find.exit.i67

for.body.lr.ph.i.i56:                             ; preds = %ipa_mem_zero_region_add.exit
  %mem1.i.i55 = getelementptr inbounds %struct.ipa, ptr %38, i32 0, i32 20
  %41 = ptrtoint ptr %mem1.i.i55 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mem1.i.i55, align 4
  br label %for.body.i.i63

for.cond.i.i59:                                   ; preds = %for.body.i.i63
  %inc.i.i57 = add nuw i32 %i.09.i.i60, 1
  %exitcond.not.i.i58 = icmp eq i32 %inc.i.i57, %40
  br i1 %exitcond.not.i.i58, label %for.cond.i.i59.ipa_mem_find.exit.i67_crit_edge, label %for.cond.i.i59.for.body.i.i63_crit_edge

for.cond.i.i59.for.body.i.i63_crit_edge:          ; preds = %for.cond.i.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i63

for.cond.i.i59.ipa_mem_find.exit.i67_crit_edge:   ; preds = %for.cond.i.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_find.exit.i67

for.body.i.i63:                                   ; preds = %for.cond.i.i59.for.body.i.i63_crit_edge, %for.body.lr.ph.i.i56
  %i.09.i.i60 = phi i32 [ 0, %for.body.lr.ph.i.i56 ], [ %inc.i.i57, %for.cond.i.i59.for.body.i.i63_crit_edge ]
  %arrayidx.i.i61 = getelementptr %struct.ipa_mem, ptr %42, i32 %i.09.i.i60
  %43 = ptrtoint ptr %arrayidx.i.i61 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %44)
  %cmp2.i.i62 = icmp eq i32 %44, 13
  br i1 %cmp2.i.i62, label %for.body.i.i63.ipa_mem_find.exit.i67_crit_edge, label %for.cond.i.i59

for.body.i.i63.ipa_mem_find.exit.i67_crit_edge:   ; preds = %for.body.i.i63
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_find.exit.i67

ipa_mem_find.exit.i67:                            ; preds = %for.body.i.i63.ipa_mem_find.exit.i67_crit_edge, %for.cond.i.i59.ipa_mem_find.exit.i67_crit_edge, %ipa_mem_zero_region_add.exit.ipa_mem_find.exit.i67_crit_edge
  %retval.2.i.i64 = phi ptr [ null, %ipa_mem_zero_region_add.exit.ipa_mem_find.exit.i67_crit_edge ], [ null, %for.cond.i.i59.ipa_mem_find.exit.i67_crit_edge ], [ %arrayidx.i.i61, %for.body.i.i63.ipa_mem_find.exit.i67_crit_edge ]
  %size.i65 = getelementptr inbounds %struct.ipa_mem, ptr %retval.2.i.i64, i32 0, i32 2
  %45 = ptrtoint ptr %size.i65 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %size.i65, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool.not.i66 = icmp eq i16 %46, 0
  br i1 %tobool.not.i66, label %ipa_mem_find.exit.i67.ipa_mem_zero_region_add.exit71_crit_edge, label %if.end.i70

ipa_mem_find.exit.i67.ipa_mem_zero_region_add.exit71_crit_edge: ; preds = %ipa_mem_find.exit.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_zero_region_add.exit71

if.end.i70:                                       ; preds = %ipa_mem_find.exit.i67
  call void @__sanitizer_cov_trace_pc() #8
  %zero_addr.i68 = getelementptr inbounds %struct.ipa, ptr %38, i32 0, i32 25
  %47 = ptrtoint ptr %zero_addr.i68 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %zero_addr.i68, align 8
  %offset.i69 = getelementptr inbounds %struct.ipa_mem, ptr %retval.2.i.i64, i32 0, i32 1
  %49 = ptrtoint ptr %offset.i69 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %offset.i69, align 4
  tail call void @ipa_cmd_dma_shared_mem_add(ptr noundef nonnull %call, i32 noundef %50, i16 noundef zeroext %46, i32 noundef %48, i1 noundef zeroext true) #6
  br label %ipa_mem_zero_region_add.exit71

ipa_mem_zero_region_add.exit71:                   ; preds = %if.end.i70, %ipa_mem_find.exit.i67.ipa_mem_zero_region_add.exit71_crit_edge
  %51 = ptrtoint ptr %gsi.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %gsi.i, align 8
  %mem_count.i.i73 = getelementptr inbounds %struct.ipa, ptr %52, i32 0, i32 19
  %53 = ptrtoint ptr %mem_count.i.i73 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mem_count.i.i73, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp8.not.i.i74 = icmp eq i32 %54, 0
  br i1 %cmp8.not.i.i74, label %ipa_mem_zero_region_add.exit71.ipa_mem_find.exit.i87_crit_edge, label %for.body.lr.ph.i.i76

ipa_mem_zero_region_add.exit71.ipa_mem_find.exit.i87_crit_edge: ; preds = %ipa_mem_zero_region_add.exit71
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_find.exit.i87

for.body.lr.ph.i.i76:                             ; preds = %ipa_mem_zero_region_add.exit71
  %mem1.i.i75 = getelementptr inbounds %struct.ipa, ptr %52, i32 0, i32 20
  %55 = ptrtoint ptr %mem1.i.i75 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mem1.i.i75, align 4
  br label %for.body.i.i83

for.cond.i.i79:                                   ; preds = %for.body.i.i83
  %inc.i.i77 = add nuw i32 %i.09.i.i80, 1
  %exitcond.not.i.i78 = icmp eq i32 %inc.i.i77, %54
  br i1 %exitcond.not.i.i78, label %for.cond.i.i79.ipa_mem_find.exit.i87_crit_edge, label %for.cond.i.i79.for.body.i.i83_crit_edge

for.cond.i.i79.for.body.i.i83_crit_edge:          ; preds = %for.cond.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i83

for.cond.i.i79.ipa_mem_find.exit.i87_crit_edge:   ; preds = %for.cond.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_find.exit.i87

for.body.i.i83:                                   ; preds = %for.cond.i.i79.for.body.i.i83_crit_edge, %for.body.lr.ph.i.i76
  %i.09.i.i80 = phi i32 [ 0, %for.body.lr.ph.i.i76 ], [ %inc.i.i77, %for.cond.i.i79.for.body.i.i83_crit_edge ]
  %arrayidx.i.i81 = getelementptr %struct.ipa_mem, ptr %56, i32 %i.09.i.i80
  %57 = ptrtoint ptr %arrayidx.i.i81 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i.i81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %58)
  %cmp2.i.i82 = icmp eq i32 %58, 14
  br i1 %cmp2.i.i82, label %for.body.i.i83.ipa_mem_find.exit.i87_crit_edge, label %for.cond.i.i79

for.body.i.i83.ipa_mem_find.exit.i87_crit_edge:   ; preds = %for.body.i.i83
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_find.exit.i87

ipa_mem_find.exit.i87:                            ; preds = %for.body.i.i83.ipa_mem_find.exit.i87_crit_edge, %for.cond.i.i79.ipa_mem_find.exit.i87_crit_edge, %ipa_mem_zero_region_add.exit71.ipa_mem_find.exit.i87_crit_edge
  %retval.2.i.i84 = phi ptr [ null, %ipa_mem_zero_region_add.exit71.ipa_mem_find.exit.i87_crit_edge ], [ null, %for.cond.i.i79.ipa_mem_find.exit.i87_crit_edge ], [ %arrayidx.i.i81, %for.body.i.i83.ipa_mem_find.exit.i87_crit_edge ]
  %size.i85 = getelementptr inbounds %struct.ipa_mem, ptr %retval.2.i.i84, i32 0, i32 2
  %59 = ptrtoint ptr %size.i85 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %size.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool.not.i86 = icmp eq i16 %60, 0
  br i1 %tobool.not.i86, label %ipa_mem_find.exit.i87.ipa_mem_zero_region_add.exit91_crit_edge, label %if.end.i90

ipa_mem_find.exit.i87.ipa_mem_zero_region_add.exit91_crit_edge: ; preds = %ipa_mem_find.exit.i87
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_zero_region_add.exit91

if.end.i90:                                       ; preds = %ipa_mem_find.exit.i87
  call void @__sanitizer_cov_trace_pc() #8
  %zero_addr.i88 = getelementptr inbounds %struct.ipa, ptr %52, i32 0, i32 25
  %61 = ptrtoint ptr %zero_addr.i88 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %zero_addr.i88, align 8
  %offset.i89 = getelementptr inbounds %struct.ipa_mem, ptr %retval.2.i.i84, i32 0, i32 1
  %63 = ptrtoint ptr %offset.i89 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %offset.i89, align 4
  tail call void @ipa_cmd_dma_shared_mem_add(ptr noundef nonnull %call, i32 noundef %64, i16 noundef zeroext %60, i32 noundef %62, i1 noundef zeroext true) #6
  br label %ipa_mem_zero_region_add.exit91

ipa_mem_zero_region_add.exit91:                   ; preds = %if.end.i90, %ipa_mem_find.exit.i87.ipa_mem_zero_region_add.exit91_crit_edge
  tail call void @gsi_trans_commit_wait(ptr noundef nonnull %call) #6
  %65 = ptrtoint ptr %mem_count.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mem_count.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp8.not.i93 = icmp eq i32 %66, 0
  br i1 %cmp8.not.i93, label %ipa_mem_zero_region_add.exit91.ipa_mem_find.exit104_crit_edge, label %for.body.lr.ph.i95

ipa_mem_zero_region_add.exit91.ipa_mem_find.exit104_crit_edge: ; preds = %ipa_mem_zero_region_add.exit91
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_find.exit104

for.body.lr.ph.i95:                               ; preds = %ipa_mem_zero_region_add.exit91
  %mem1.i94 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 20
  %67 = ptrtoint ptr %mem1.i94 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mem1.i94, align 4
  br label %for.body.i102

for.cond.i98:                                     ; preds = %for.body.i102
  %inc.i96 = add nuw i32 %i.09.i99, 1
  %exitcond.not.i97 = icmp eq i32 %inc.i96, %66
  br i1 %exitcond.not.i97, label %for.cond.i98.ipa_mem_find.exit104_crit_edge, label %for.cond.i98.for.body.i102_crit_edge

for.cond.i98.for.body.i102_crit_edge:             ; preds = %for.cond.i98
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i102

for.cond.i98.ipa_mem_find.exit104_crit_edge:      ; preds = %for.cond.i98
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_find.exit104

for.body.i102:                                    ; preds = %for.cond.i98.for.body.i102_crit_edge, %for.body.lr.ph.i95
  %i.09.i99 = phi i32 [ 0, %for.body.lr.ph.i95 ], [ %inc.i96, %for.cond.i98.for.body.i102_crit_edge ]
  %arrayidx.i100 = getelementptr %struct.ipa_mem, ptr %68, i32 %i.09.i99
  %69 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %70)
  %cmp2.i101 = icmp eq i32 %70, 12
  br i1 %cmp2.i101, label %for.body.i102.ipa_mem_find.exit104_crit_edge, label %for.cond.i98

for.body.i102.ipa_mem_find.exit104_crit_edge:     ; preds = %for.body.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_find.exit104

ipa_mem_find.exit104:                             ; preds = %for.body.i102.ipa_mem_find.exit104_crit_edge, %for.cond.i98.ipa_mem_find.exit104_crit_edge, %ipa_mem_zero_region_add.exit91.ipa_mem_find.exit104_crit_edge
  %retval.2.i103 = phi ptr [ null, %ipa_mem_zero_region_add.exit91.ipa_mem_find.exit104_crit_edge ], [ %arrayidx.i100, %for.body.i102.ipa_mem_find.exit104_crit_edge ], [ null, %for.cond.i98.ipa_mem_find.exit104_crit_edge ]
  %mem_offset = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 17
  %71 = ptrtoint ptr %mem_offset to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mem_offset, align 8
  %offset12 = getelementptr inbounds %struct.ipa_mem, ptr %retval.2.i103, i32 0, i32 1
  %73 = ptrtoint ptr %offset12 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %offset12, align 4
  %add13 = add i32 %74, %72
  %version = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 1
  %75 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %version, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %76)
  %cmp.i = icmp ult i32 %76, 7
  %. = select i1 %cmp.i, i32 131071, i32 262143
  %77 = and i32 %., %add13
  %reg_virt = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 14
  %78 = ptrtoint ptr %reg_virt to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg_virt, align 4
  %add.ptr = getelementptr i8, ptr %79, i32 488
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  tail call void @arm_heavy_mb() #6
  %80 = tail call i32 @llvm.bswap.i32(i32 %77) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %80) #6, !srcloc !135
  br label %cleanup

cleanup:                                          ; preds = %ipa_mem_find.exit104, %do.end
  %retval.0 = phi i32 [ 0, %ipa_mem_find.exit104 ], [ -16, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipa_cmd_trans_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_cmd_hdr_init_local_add(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsi_trans_commit_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipa_mem_config(ptr noundef %ipa) local_unnamed_addr #2 align 64 {
entry:
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #6
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %addr, align 4, !annotation !136
  %reg_virt = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 14
  %3 = ptrtoint ptr %reg_virt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_virt, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 84
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !137
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  %7 = lshr i32 %6, 13
  %mul = and i32 %7, 524280
  %mem_offset = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 17
  %8 = ptrtoint ptr %mem_offset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %mem_offset, align 8
  %and.i106 = shl i32 %6, 3
  %mul4 = and i32 %and.i106, 524280
  %add = add nuw nsw i32 %mul, %mul4
  %mem_size6 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 18
  %9 = ptrtoint ptr %mem_size6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mem_size6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %10)
  %cmp = icmp ult i32 %add, %10
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %mul4) #9
  %11 = ptrtoint ptr %mem_size6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul4, ptr %mem_size6, align 4
  br label %if.end21

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %10)
  %cmp11 = icmp ugt i32 %add, %10
  br i1 %cmp11, label %do.body13, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.body13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipa_mem_config.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipa_mem_config, %if.then17)) #6
          to label %if.end21 [label %if.then17], !srcloc !139

if.then17:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipa_mem_config.__UNIQUE_ID_ddebug337, ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %mul4) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %do.body13, %if.else.if.end21_crit_edge, %do.end
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %mem_size6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mem_size6, align 4
  %mem_count.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 19
  %16 = ptrtoint ptr %mem_count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mem_count.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp19.not.i = icmp eq i32 %17, 0
  br i1 %cmp19.not.i, label %if.end21.if.end24_crit_edge, label %for.body.lr.ph.i

if.end21.if.end24_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

for.body.lr.ph.i:                                 ; preds = %if.end21
  %mem2.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 20
  %18 = ptrtoint ptr %mem2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mem2.i, align 4
  %offset.i122 = getelementptr %struct.ipa_mem, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %offset.i122 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset.i122, align 4
  %size.i123 = getelementptr %struct.ipa_mem, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %size.i123 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %size.i123, align 4
  %conv.i124 = zext i16 %23 to i32
  %add.i125 = add i32 %21, %conv.i124
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i125, i32 %15)
  %cmp3.not.i126 = icmp ugt i32 %add.i125, %15
  br i1 %cmp3.not.i126, label %do.end.i.thread, label %for.body.lr.ph.i.for.inc.critedge.i_crit_edge

for.body.lr.ph.i.for.inc.critedge.i_crit_edge:    ; preds = %for.body.lr.ph.i
  br label %for.inc.critedge.i

do.end.i.thread:                                  ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.24, i32 noundef %25, i32 noundef %15) #9
  br label %cleanup62

for.body.i:                                       ; preds = %for.inc.critedge.i
  %offset.i = getelementptr %struct.ipa_mem, ptr %19, i32 %inc.i, i32 1
  %26 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset.i, align 4
  %size.i = getelementptr %struct.ipa_mem, ptr %19, i32 %inc.i, i32 2
  %28 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %size.i, align 4
  %conv.i = zext i16 %29 to i32
  %add.i = add i32 %27, %conv.i
  %cmp3.not.i = icmp ugt i32 %add.i, %15
  br i1 %cmp3.not.i, label %do.end.i, label %for.body.i.for.inc.critedge.i_crit_edge

for.body.i.for.inc.critedge.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.critedge.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %17)
  %cmp.i.le = icmp ult i32 %inc.i, %17
  %arrayidx.i = getelementptr %struct.ipa_mem, ptr %19, i32 %inc.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.24, i32 noundef %31, i32 noundef %15) #9
  br i1 %cmp.i.le, label %do.end.i.cleanup62_crit_edge, label %do.end.i.if.end24_crit_edge

do.end.i.if.end24_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

do.end.i.cleanup62_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

for.inc.critedge.i:                               ; preds = %for.body.i.for.inc.critedge.i_crit_edge, %for.body.lr.ph.i.for.inc.critedge.i_crit_edge
  %i.020.i127 = phi i32 [ %inc.i, %for.body.i.for.inc.critedge.i_crit_edge ], [ 0, %for.body.lr.ph.i.for.inc.critedge.i_crit_edge ]
  %inc.i = add nuw i32 %i.020.i127, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %17)
  %exitcond.not.i = icmp eq i32 %inc.i, %17
  br i1 %exitcond.not.i, label %for.inc.critedge.i.if.end24_crit_edge, label %for.body.i

for.inc.critedge.i.if.end24_crit_edge:            ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end24:                                         ; preds = %for.inc.critedge.i.if.end24_crit_edge, %do.end.i.if.end24_crit_edge, %if.end21.if.end24_crit_edge
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 8192, ptr noundef nonnull %addr, i32 noundef 3264, i32 noundef 0) #6
  %tobool26.not = icmp eq ptr %call.i, null
  br i1 %tobool26.not, label %if.end24.cleanup62_crit_edge, label %if.end28

if.end24.cleanup62_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

if.end28:                                         ; preds = %if.end24
  %32 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr, align 4
  %zero_addr = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 25
  %34 = ptrtoint ptr %zero_addr to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %zero_addr, align 8
  %zero_virt = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 26
  %35 = ptrtoint ptr %zero_virt to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %zero_virt, align 4
  %zero_size = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 27
  %36 = ptrtoint ptr %zero_size to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8192, ptr %zero_size, align 32
  %37 = ptrtoint ptr %mem_count.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mem_count.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp29129.not = icmp eq i32 %38, 0
  br i1 %cmp29129.not, label %if.end28.for.end_crit_edge, label %for.body.lr.ph

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end28
  %mem30 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 20
  %mem_virt = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0130 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %39 = ptrtoint ptr %mem30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mem30, align 4
  %canary_count31 = getelementptr %struct.ipa_mem, ptr %40, i32 %i.0130, i32 3
  %41 = ptrtoint ptr %canary_count31 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %canary_count31, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool32.not = icmp eq i16 %42, 0
  br i1 %tobool32.not, label %for.body.cleanup_crit_edge, label %if.end34

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34:                                         ; preds = %for.body
  %43 = ptrtoint ptr %mem_virt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mem_virt, align 4
  %45 = ptrtoint ptr %mem_offset to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mem_offset, align 8
  %add.ptr36 = getelementptr i8, ptr %44, i32 %46
  %offset = getelementptr %struct.ipa_mem, ptr %40, i32 %i.0130, i32 1
  %47 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %offset, align 4
  %add.ptr39 = getelementptr i8, ptr %add.ptr36, i32 %48
  br label %do.body40

do.body40:                                        ; preds = %do.body40.do.body40_crit_edge, %if.end34
  %canary_count.0 = phi i16 [ %42, %if.end34 ], [ %dec, %do.body40.do.body40_crit_edge ]
  %canary.0 = phi ptr [ %add.ptr39, %if.end34 ], [ %incdec.ptr, %do.body40.do.body40_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %canary.0, i32 -1
  %49 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -272716322, ptr %incdec.ptr, align 4
  %dec = add i16 %canary_count.0, -1
  %tobool42.not = icmp eq i16 %dec, 0
  br i1 %tobool42.not, label %do.body40.cleanup_crit_edge, label %do.body40.do.body40_crit_edge

do.body40.do.body40_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body40

do.body40.cleanup_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %do.body40.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.0130, 1
  %50 = ptrtoint ptr %mem_count.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mem_count.i, align 128
  %cmp29 = icmp ult i32 %inc, %51
  br i1 %cmp29, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end28.for.end_crit_edge
  %call45 = call zeroext i1 @ipa_table_valid(ptr noundef %ipa) #6
  br i1 %call45, label %if.end47, label %for.end.err_dma_free_crit_edge

for.end.err_dma_free_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_dma_free

if.end47:                                         ; preds = %for.end
  %call48 = call zeroext i1 @ipa_cmd_data_valid(ptr noundef %ipa) #6
  br i1 %call48, label %if.end50, label %if.end47.err_dma_free_crit_edge

if.end47.err_dma_free_crit_edge:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_dma_free

if.end50:                                         ; preds = %if.end47
  %52 = ptrtoint ptr %mem_count.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mem_count.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp8.not.i = icmp eq i32 %53, 0
  br i1 %cmp8.not.i, label %if.end50.cleanup62_crit_edge, label %for.body.lr.ph.i108

if.end50.cleanup62_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

for.body.lr.ph.i108:                              ; preds = %if.end50
  %mem1.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 20
  %54 = ptrtoint ptr %mem1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mem1.i, align 4
  br label %for.body.i112

for.cond.i:                                       ; preds = %for.body.i112
  %inc.i109 = add nuw i32 %i.09.i, 1
  %exitcond.not.i110 = icmp eq i32 %inc.i109, %53
  br i1 %exitcond.not.i110, label %for.cond.i.cleanup62_crit_edge, label %for.cond.i.for.body.i112_crit_edge

for.cond.i.for.body.i112_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i112

for.cond.i.cleanup62_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

for.body.i112:                                    ; preds = %for.cond.i.for.body.i112_crit_edge, %for.body.lr.ph.i108
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i108 ], [ %inc.i109, %for.cond.i.for.body.i112_crit_edge ]
  %arrayidx.i111 = getelementptr %struct.ipa_mem, ptr %55, i32 %i.09.i
  %56 = ptrtoint ptr %arrayidx.i111 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %57)
  %cmp2.i = icmp eq i32 %57, 15
  br i1 %cmp2.i, label %ipa_mem_find.exit, label %for.cond.i

ipa_mem_find.exit:                                ; preds = %for.body.i112
  %tobool52.not = icmp eq ptr %arrayidx.i111, null
  br i1 %tobool52.not, label %ipa_mem_find.exit.cleanup62_crit_edge, label %land.lhs.true

ipa_mem_find.exit.cleanup62_crit_edge:            ; preds = %ipa_mem_find.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

land.lhs.true:                                    ; preds = %ipa_mem_find.exit
  %offset53 = getelementptr %struct.ipa_mem, ptr %55, i32 %i.09.i, i32 1
  %58 = ptrtoint ptr %offset53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %offset53, align 4
  %rem = and i32 %59, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool54.not = icmp eq i32 %rem, 0
  br i1 %tobool54.not, label %land.lhs.true.cleanup62_crit_edge, label %do.end58

land.lhs.true.cleanup62_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup62

do.end58:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %err_dma_free

err_dma_free:                                     ; preds = %do.end58, %if.end47.err_dma_free_crit_edge, %for.end.err_dma_free_crit_edge
  %60 = ptrtoint ptr %zero_virt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %zero_virt, align 4
  %62 = ptrtoint ptr %zero_addr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %zero_addr, align 8
  call void @dma_free_attrs(ptr noundef %dev1, i32 noundef 8192, ptr noundef %61, i32 noundef %63, i32 noundef 0) #6
  br label %cleanup62

cleanup62:                                        ; preds = %err_dma_free, %land.lhs.true.cleanup62_crit_edge, %ipa_mem_find.exit.cleanup62_crit_edge, %for.cond.i.cleanup62_crit_edge, %if.end50.cleanup62_crit_edge, %if.end24.cleanup62_crit_edge, %do.end.i.cleanup62_crit_edge, %do.end.i.thread
  %retval.0 = phi i32 [ -22, %err_dma_free ], [ -12, %if.end24.cleanup62_crit_edge ], [ 0, %land.lhs.true.cleanup62_crit_edge ], [ 0, %ipa_mem_find.exit.cleanup62_crit_edge ], [ 0, %if.end50.cleanup62_crit_edge ], [ -22, %do.end.i.cleanup62_crit_edge ], [ -22, %do.end.i.thread ], [ 0, %for.cond.i.cleanup62_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipa_table_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipa_cmd_data_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_mem_deconfig(ptr nocapture noundef %ipa) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %zero_size = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 27
  %2 = ptrtoint ptr %zero_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %zero_size, align 32
  %zero_virt = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 26
  %4 = ptrtoint ptr %zero_virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %zero_virt, align 4
  %zero_addr = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 25
  %6 = ptrtoint ptr %zero_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %zero_addr, align 8
  tail call void @dma_free_attrs(ptr noundef %dev1, i32 noundef %3, ptr noundef %5, i32 noundef %7, i32 noundef 0) #6
  %8 = ptrtoint ptr %zero_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %zero_size, align 32
  %9 = ptrtoint ptr %zero_virt to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %zero_virt, align 4
  %10 = ptrtoint ptr %zero_addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %zero_addr, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipa_mem_zero_modem(ptr noundef %ipa) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ipa_cmd_trans_alloc(ptr noundef %ipa, i32 noundef 3) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %gsi.i = getelementptr inbounds %struct.gsi_trans, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %gsi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gsi.i, align 8
  %mem_count.i.i = getelementptr inbounds %struct.ipa, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %mem_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mem_count.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp8.not.i.i, label %if.end.ipa_mem_find.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end.ipa_mem_find.exit.i_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_find.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end
  %mem1.i.i = getelementptr inbounds %struct.ipa, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %mem1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem1.i.i, align 4
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %5
  br i1 %exitcond.not.i.i, label %for.cond.i.i.ipa_mem_find.exit.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.cond.i.i.ipa_mem_find.exit.i_crit_edge:       ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_find.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.09.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ipa_mem, ptr %7, i32 %i.09.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %9)
  %cmp2.i.i = icmp eq i32 %9, 10
  br i1 %cmp2.i.i, label %for.body.i.i.ipa_mem_find.exit.i_crit_edge, label %for.cond.i.i

for.body.i.i.ipa_mem_find.exit.i_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_find.exit.i

ipa_mem_find.exit.i:                              ; preds = %for.body.i.i.ipa_mem_find.exit.i_crit_edge, %for.cond.i.i.ipa_mem_find.exit.i_crit_edge, %if.end.ipa_mem_find.exit.i_crit_edge
  %retval.2.i.i = phi ptr [ null, %if.end.ipa_mem_find.exit.i_crit_edge ], [ null, %for.cond.i.i.ipa_mem_find.exit.i_crit_edge ], [ %arrayidx.i.i, %for.body.i.i.ipa_mem_find.exit.i_crit_edge ]
  %size.i = getelementptr inbounds %struct.ipa_mem, ptr %retval.2.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i = icmp eq i16 %11, 0
  br i1 %tobool.not.i, label %ipa_mem_find.exit.i.ipa_mem_zero_region_add.exit_crit_edge, label %if.end.i

ipa_mem_find.exit.i.ipa_mem_zero_region_add.exit_crit_edge: ; preds = %ipa_mem_find.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_zero_region_add.exit

if.end.i:                                         ; preds = %ipa_mem_find.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %zero_addr.i = getelementptr inbounds %struct.ipa, ptr %3, i32 0, i32 25
  %12 = ptrtoint ptr %zero_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %zero_addr.i, align 8
  %offset.i = getelementptr inbounds %struct.ipa_mem, ptr %retval.2.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset.i, align 4
  tail call void @ipa_cmd_dma_shared_mem_add(ptr noundef nonnull %call, i32 noundef %15, i16 noundef zeroext %11, i32 noundef %13, i1 noundef zeroext true) #6
  br label %ipa_mem_zero_region_add.exit

ipa_mem_zero_region_add.exit:                     ; preds = %if.end.i, %ipa_mem_find.exit.i.ipa_mem_zero_region_add.exit_crit_edge
  %16 = ptrtoint ptr %gsi.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gsi.i, align 8
  %mem_count.i.i7 = getelementptr inbounds %struct.ipa, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %mem_count.i.i7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mem_count.i.i7, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp8.not.i.i8 = icmp eq i32 %19, 0
  br i1 %cmp8.not.i.i8, label %ipa_mem_zero_region_add.exit.ipa_mem_find.exit.i21_crit_edge, label %for.body.lr.ph.i.i10

ipa_mem_zero_region_add.exit.ipa_mem_find.exit.i21_crit_edge: ; preds = %ipa_mem_zero_region_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_find.exit.i21

for.body.lr.ph.i.i10:                             ; preds = %ipa_mem_zero_region_add.exit
  %mem1.i.i9 = getelementptr inbounds %struct.ipa, ptr %17, i32 0, i32 20
  %20 = ptrtoint ptr %mem1.i.i9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mem1.i.i9, align 4
  br label %for.body.i.i17

for.cond.i.i13:                                   ; preds = %for.body.i.i17
  %inc.i.i11 = add nuw i32 %i.09.i.i14, 1
  %exitcond.not.i.i12 = icmp eq i32 %inc.i.i11, %19
  br i1 %exitcond.not.i.i12, label %for.cond.i.i13.ipa_mem_find.exit.i21_crit_edge, label %for.cond.i.i13.for.body.i.i17_crit_edge

for.cond.i.i13.for.body.i.i17_crit_edge:          ; preds = %for.cond.i.i13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i17

for.cond.i.i13.ipa_mem_find.exit.i21_crit_edge:   ; preds = %for.cond.i.i13
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_find.exit.i21

for.body.i.i17:                                   ; preds = %for.cond.i.i13.for.body.i.i17_crit_edge, %for.body.lr.ph.i.i10
  %i.09.i.i14 = phi i32 [ 0, %for.body.lr.ph.i.i10 ], [ %inc.i.i11, %for.cond.i.i13.for.body.i.i17_crit_edge ]
  %arrayidx.i.i15 = getelementptr %struct.ipa_mem, ptr %21, i32 %i.09.i.i14
  %22 = ptrtoint ptr %arrayidx.i.i15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %23)
  %cmp2.i.i16 = icmp eq i32 %23, 12
  br i1 %cmp2.i.i16, label %for.body.i.i17.ipa_mem_find.exit.i21_crit_edge, label %for.cond.i.i13

for.body.i.i17.ipa_mem_find.exit.i21_crit_edge:   ; preds = %for.body.i.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_find.exit.i21

ipa_mem_find.exit.i21:                            ; preds = %for.body.i.i17.ipa_mem_find.exit.i21_crit_edge, %for.cond.i.i13.ipa_mem_find.exit.i21_crit_edge, %ipa_mem_zero_region_add.exit.ipa_mem_find.exit.i21_crit_edge
  %retval.2.i.i18 = phi ptr [ null, %ipa_mem_zero_region_add.exit.ipa_mem_find.exit.i21_crit_edge ], [ null, %for.cond.i.i13.ipa_mem_find.exit.i21_crit_edge ], [ %arrayidx.i.i15, %for.body.i.i17.ipa_mem_find.exit.i21_crit_edge ]
  %size.i19 = getelementptr inbounds %struct.ipa_mem, ptr %retval.2.i.i18, i32 0, i32 2
  %24 = ptrtoint ptr %size.i19 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %size.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not.i20 = icmp eq i16 %25, 0
  br i1 %tobool.not.i20, label %ipa_mem_find.exit.i21.ipa_mem_zero_region_add.exit25_crit_edge, label %if.end.i24

ipa_mem_find.exit.i21.ipa_mem_zero_region_add.exit25_crit_edge: ; preds = %ipa_mem_find.exit.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_zero_region_add.exit25

if.end.i24:                                       ; preds = %ipa_mem_find.exit.i21
  call void @__sanitizer_cov_trace_pc() #8
  %zero_addr.i22 = getelementptr inbounds %struct.ipa, ptr %17, i32 0, i32 25
  %26 = ptrtoint ptr %zero_addr.i22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %zero_addr.i22, align 8
  %offset.i23 = getelementptr inbounds %struct.ipa_mem, ptr %retval.2.i.i18, i32 0, i32 1
  %28 = ptrtoint ptr %offset.i23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset.i23, align 4
  tail call void @ipa_cmd_dma_shared_mem_add(ptr noundef nonnull %call, i32 noundef %29, i16 noundef zeroext %25, i32 noundef %27, i1 noundef zeroext true) #6
  br label %ipa_mem_zero_region_add.exit25

ipa_mem_zero_region_add.exit25:                   ; preds = %if.end.i24, %ipa_mem_find.exit.i21.ipa_mem_zero_region_add.exit25_crit_edge
  %30 = ptrtoint ptr %gsi.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gsi.i, align 8
  %mem_count.i.i27 = getelementptr inbounds %struct.ipa, ptr %31, i32 0, i32 19
  %32 = ptrtoint ptr %mem_count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mem_count.i.i27, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp8.not.i.i28 = icmp eq i32 %33, 0
  br i1 %cmp8.not.i.i28, label %ipa_mem_zero_region_add.exit25.ipa_mem_find.exit.i41_crit_edge, label %for.body.lr.ph.i.i30

ipa_mem_zero_region_add.exit25.ipa_mem_find.exit.i41_crit_edge: ; preds = %ipa_mem_zero_region_add.exit25
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_find.exit.i41

for.body.lr.ph.i.i30:                             ; preds = %ipa_mem_zero_region_add.exit25
  %mem1.i.i29 = getelementptr inbounds %struct.ipa, ptr %31, i32 0, i32 20
  %34 = ptrtoint ptr %mem1.i.i29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mem1.i.i29, align 4
  br label %for.body.i.i37

for.cond.i.i33:                                   ; preds = %for.body.i.i37
  %inc.i.i31 = add nuw i32 %i.09.i.i34, 1
  %exitcond.not.i.i32 = icmp eq i32 %inc.i.i31, %33
  br i1 %exitcond.not.i.i32, label %for.cond.i.i33.ipa_mem_find.exit.i41_crit_edge, label %for.cond.i.i33.for.body.i.i37_crit_edge

for.cond.i.i33.for.body.i.i37_crit_edge:          ; preds = %for.cond.i.i33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i37

for.cond.i.i33.ipa_mem_find.exit.i41_crit_edge:   ; preds = %for.cond.i.i33
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_find.exit.i41

for.body.i.i37:                                   ; preds = %for.cond.i.i33.for.body.i.i37_crit_edge, %for.body.lr.ph.i.i30
  %i.09.i.i34 = phi i32 [ 0, %for.body.lr.ph.i.i30 ], [ %inc.i.i31, %for.cond.i.i33.for.body.i.i37_crit_edge ]
  %arrayidx.i.i35 = getelementptr %struct.ipa_mem, ptr %35, i32 %i.09.i.i34
  %36 = ptrtoint ptr %arrayidx.i.i35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %37)
  %cmp2.i.i36 = icmp eq i32 %37, 14
  br i1 %cmp2.i.i36, label %for.body.i.i37.ipa_mem_find.exit.i41_crit_edge, label %for.cond.i.i33

for.body.i.i37.ipa_mem_find.exit.i41_crit_edge:   ; preds = %for.body.i.i37
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_find.exit.i41

ipa_mem_find.exit.i41:                            ; preds = %for.body.i.i37.ipa_mem_find.exit.i41_crit_edge, %for.cond.i.i33.ipa_mem_find.exit.i41_crit_edge, %ipa_mem_zero_region_add.exit25.ipa_mem_find.exit.i41_crit_edge
  %retval.2.i.i38 = phi ptr [ null, %ipa_mem_zero_region_add.exit25.ipa_mem_find.exit.i41_crit_edge ], [ null, %for.cond.i.i33.ipa_mem_find.exit.i41_crit_edge ], [ %arrayidx.i.i35, %for.body.i.i37.ipa_mem_find.exit.i41_crit_edge ]
  %size.i39 = getelementptr inbounds %struct.ipa_mem, ptr %retval.2.i.i38, i32 0, i32 2
  %38 = ptrtoint ptr %size.i39 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %size.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool.not.i40 = icmp eq i16 %39, 0
  br i1 %tobool.not.i40, label %ipa_mem_find.exit.i41.ipa_mem_zero_region_add.exit45_crit_edge, label %if.end.i44

ipa_mem_find.exit.i41.ipa_mem_zero_region_add.exit45_crit_edge: ; preds = %ipa_mem_find.exit.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_zero_region_add.exit45

if.end.i44:                                       ; preds = %ipa_mem_find.exit.i41
  call void @__sanitizer_cov_trace_pc() #8
  %zero_addr.i42 = getelementptr inbounds %struct.ipa, ptr %31, i32 0, i32 25
  %40 = ptrtoint ptr %zero_addr.i42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %zero_addr.i42, align 8
  %offset.i43 = getelementptr inbounds %struct.ipa_mem, ptr %retval.2.i.i38, i32 0, i32 1
  %42 = ptrtoint ptr %offset.i43 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %offset.i43, align 4
  tail call void @ipa_cmd_dma_shared_mem_add(ptr noundef nonnull %call, i32 noundef %43, i16 noundef zeroext %39, i32 noundef %41, i1 noundef zeroext true) #6
  br label %ipa_mem_zero_region_add.exit45

ipa_mem_zero_region_add.exit45:                   ; preds = %if.end.i44, %ipa_mem_find.exit.i41.ipa_mem_zero_region_add.exit45_crit_edge
  tail call void @gsi_trans_commit_wait(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %ipa_mem_zero_region_add.exit45, %do.end
  %retval.0 = phi i32 [ 0, %ipa_mem_zero_region_add.exit45 ], [ -16, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipa_mem_init(ptr nocapture noundef %ipa, ptr nocapture noundef readonly %mem_data) local_unnamed_addr #2 align 64 {
entry:
  %actual.i = alloca i32, align 4
  %regions.i = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regions.i) #6
  %2 = ptrtoint ptr %regions.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %regions.i, align 4
  %3 = ptrtoint ptr %mem_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mem_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %4)
  %cmp.i = icmp ugt i32 %4, 28
  br i1 %cmp.i, label %do.end.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp486.not.i = icmp eq i32 %4, 0
  br i1 %cmp486.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %local.i = getelementptr inbounds %struct.ipa_mem_data, ptr %mem_data, i32 0, i32 1
  %5 = ptrtoint ptr %local.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %local.i, align 4
  %version1.i.i.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 1
  br label %for.body.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %4, i32 noundef 28) #9
  br label %ipa_mem_valid.exit.thread

for.cond.i:                                       ; preds = %if.else35.i.i
  %inc.i = add nuw nsw i32 %i.087.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %4
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.087.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ipa_mem, ptr %6, i32 %i.087.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %rem.i.i = and i32 %8, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %9 = ptrtoint ptr %regions.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %regions.i, align 4
  %or.i.i = or i32 %shl.i.i, %10
  store i32 %or.i.i, ptr %regions.i, align 4
  %11 = and i32 %shl.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  br i1 %tobool.not.i, label %if.end10.i, label %do.end8.i

do.end8.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %13) #9
  br label %ipa_mem_valid.exit.thread

if.end10.i:                                       ; preds = %for.body.i
  %14 = ptrtoint ptr %version1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %version1.i.i.i, align 128
  %16 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.end10.i.do.end.i.i_crit_edge [
    i32 0, label %if.end10.i.if.end.i.i_crit_edge
    i32 1, label %if.end10.i.if.end.i.i_crit_edge220
    i32 2, label %if.end10.i.if.end.i.i_crit_edge221
    i32 3, label %if.end10.i.if.end.i.i_crit_edge222
    i32 4, label %if.end10.i.if.end.i.i_crit_edge223
    i32 5, label %if.end10.i.if.end.i.i_crit_edge224
    i32 6, label %if.end10.i.if.end.i.i_crit_edge225
    i32 7, label %if.end10.i.if.end.i.i_crit_edge226
    i32 8, label %if.end10.i.if.end.i.i_crit_edge227
    i32 9, label %if.end10.i.if.end.i.i_crit_edge228
    i32 10, label %if.end10.i.if.end.i.i_crit_edge229
    i32 11, label %if.end10.i.if.end.i.i_crit_edge230
    i32 12, label %if.end10.i.if.end.i.i_crit_edge231
    i32 13, label %if.end10.i.if.end.i.i_crit_edge232
    i32 14, label %if.end10.i.if.end.i.i_crit_edge233
    i32 15, label %if.end10.i.if.end.i.i_crit_edge234
    i32 16, label %if.end10.i.if.end.i.i_crit_edge235
    i32 17, label %if.end10.i.if.end.i.i_crit_edge236
    i32 18, label %if.end10.i.if.end.i.i_crit_edge237
    i32 27, label %if.end10.i.if.end.i.i_crit_edge238
    i32 19, label %if.end10.i.sw.bb2.i.i.i_crit_edge
    i32 20, label %if.end10.i.sw.bb2.i.i.i_crit_edge239
    i32 21, label %if.end10.i.sw.bb3.i.i.i_crit_edge
    i32 22, label %if.end10.i.sw.bb3.i.i.i_crit_edge240
    i32 23, label %if.end10.i.sw.bb3.i.i.i_crit_edge241
    i32 24, label %if.end10.i.sw.bb3.i.i.i_crit_edge242
    i32 26, label %if.end10.i.sw.bb8.i.i.i_crit_edge
    i32 25, label %if.end10.i.sw.bb8.i.i.i_crit_edge243
  ]

if.end10.i.sw.bb8.i.i.i_crit_edge243:             ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i.i.i

if.end10.i.sw.bb8.i.i.i_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i.i.i

if.end10.i.sw.bb3.i.i.i_crit_edge242:             ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i.i.i

if.end10.i.sw.bb3.i.i.i_crit_edge241:             ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i.i.i

if.end10.i.sw.bb3.i.i.i_crit_edge240:             ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i.i.i

if.end10.i.sw.bb3.i.i.i_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i.i.i

if.end10.i.sw.bb2.i.i.i_crit_edge239:             ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i.i.i

if.end10.i.sw.bb2.i.i.i_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i.i.i

if.end10.i.if.end.i.i_crit_edge238:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end10.i.if.end.i.i_crit_edge237:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end10.i.if.end.i.i_crit_edge236:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end10.i.if.end.i.i_crit_edge235:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end10.i.if.end.i.i_crit_edge234:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end10.i.if.end.i.i_crit_edge233:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end10.i.if.end.i.i_crit_edge232:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end10.i.if.end.i.i_crit_edge231:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end10.i.if.end.i.i_crit_edge230:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end10.i.if.end.i.i_crit_edge229:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end10.i.if.end.i.i_crit_edge228:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end10.i.if.end.i.i_crit_edge227:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end10.i.if.end.i.i_crit_edge226:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end10.i.if.end.i.i_crit_edge225:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end10.i.if.end.i.i_crit_edge224:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end10.i.if.end.i.i_crit_edge223:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end10.i.if.end.i.i_crit_edge222:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end10.i.if.end.i.i_crit_edge221:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end10.i.if.end.i.i_crit_edge220:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end10.i.if.end.i.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end10.i.do.end.i.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

sw.bb2.i.i.i:                                     ; preds = %if.end10.i.sw.bb2.i.i.i_crit_edge, %if.end10.i.sw.bb2.i.i.i_crit_edge239
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp.i.i.i = icmp ult i32 %15, 4
  br i1 %cmp.i.i.i, label %sw.bb2.i.i.i.do.end.i.i_crit_edge, label %sw.bb2.i.i.i.if.end.i.i_crit_edge

sw.bb2.i.i.i.if.end.i.i_crit_edge:                ; preds = %sw.bb2.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

sw.bb2.i.i.i.do.end.i.i_crit_edge:                ; preds = %sw.bb2.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

sw.bb3.i.i.i:                                     ; preds = %if.end10.i.sw.bb3.i.i.i_crit_edge, %if.end10.i.sw.bb3.i.i.i_crit_edge240, %if.end10.i.sw.bb3.i.i.i_crit_edge241, %if.end10.i.sw.bb3.i.i.i_crit_edge242
  %17 = add i32 %15, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %17)
  %18 = icmp ult i32 %17, -3
  br i1 %18, label %sw.bb3.i.i.i.do.end.i.i_crit_edge, label %sw.bb3.i.i.i.if.end.i.i_crit_edge

sw.bb3.i.i.i.if.end.i.i_crit_edge:                ; preds = %sw.bb3.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

sw.bb3.i.i.i.do.end.i.i_crit_edge:                ; preds = %sw.bb3.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

sw.bb8.i.i.i:                                     ; preds = %if.end10.i.sw.bb8.i.i.i_crit_edge, %if.end10.i.sw.bb8.i.i.i_crit_edge243
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %15)
  %cmp9.i.i.i = icmp ult i32 %15, 7
  br i1 %cmp9.i.i.i, label %sw.bb8.i.i.i.do.end.i.i_crit_edge, label %sw.bb8.i.i.i.if.end.i.i_crit_edge

sw.bb8.i.i.i.if.end.i.i_crit_edge:                ; preds = %sw.bb8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

sw.bb8.i.i.i.do.end.i.i_crit_edge:                ; preds = %sw.bb8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %sw.bb8.i.i.i.do.end.i.i_crit_edge, %sw.bb3.i.i.i.do.end.i.i_crit_edge, %sw.bb2.i.i.i.do.end.i.i_crit_edge, %if.end10.i.do.end.i.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34, i32 noundef %13) #9
  br label %ipa_mem_valid.exit.thread

if.end.i.i:                                       ; preds = %sw.bb8.i.i.i.if.end.i.i_crit_edge, %sw.bb3.i.i.i.if.end.i.i_crit_edge, %sw.bb2.i.i.i.if.end.i.i_crit_edge, %if.end10.i.if.end.i.i_crit_edge, %if.end10.i.if.end.i.i_crit_edge220, %if.end10.i.if.end.i.i_crit_edge221, %if.end10.i.if.end.i.i_crit_edge222, %if.end10.i.if.end.i.i_crit_edge223, %if.end10.i.if.end.i.i_crit_edge224, %if.end10.i.if.end.i.i_crit_edge225, %if.end10.i.if.end.i.i_crit_edge226, %if.end10.i.if.end.i.i_crit_edge227, %if.end10.i.if.end.i.i_crit_edge228, %if.end10.i.if.end.i.i_crit_edge229, %if.end10.i.if.end.i.i_crit_edge230, %if.end10.i.if.end.i.i_crit_edge231, %if.end10.i.if.end.i.i_crit_edge232, %if.end10.i.if.end.i.i_crit_edge233, %if.end10.i.if.end.i.i_crit_edge234, %if.end10.i.if.end.i.i_crit_edge235, %if.end10.i.if.end.i.i_crit_edge236, %if.end10.i.if.end.i.i_crit_edge237, %if.end10.i.if.end.i.i_crit_edge238
  %size.i.i = getelementptr %struct.ipa_mem, ptr %6, i32 %i.087.i, i32 2
  %19 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i.i = icmp eq i16 %20, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i.if.end7.i.i_crit_edge

if.end.i.i.if.end7.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %canary_count.i.i = getelementptr %struct.ipa_mem, ptr %6, i32 %i.087.i, i32 3
  %21 = ptrtoint ptr %canary_count.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %canary_count.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool2.not.i.i = icmp eq i16 %22, 0
  br i1 %tobool2.not.i.i, label %do.end6.i.i, label %land.lhs.true.i.i.if.end7.i.i_crit_edge

land.lhs.true.i.i.if.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.i

do.end6.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.37, i32 noundef %13) #9
  br label %ipa_mem_valid.exit.thread

if.end7.i.i:                                      ; preds = %land.lhs.true.i.i.if.end7.i.i_crit_edge, %if.end.i.i.if.end7.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %13)
  %cmp.i.i = icmp eq i32 %13, 14
  %conv9.i.i = zext i16 %20 to i32
  %conv10.i.i = select i1 %cmp.i.i, i32 4, i32 8
  %23 = add nuw nsw i32 %conv10.i.i, 65535
  %rem.i47.i = and i32 %23, %conv9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i47.i)
  %tobool11.not.i.i = icmp eq i32 %rem.i47.i, 0
  br i1 %tobool11.not.i.i, label %if.else.i.i, label %do.end15.i.i

do.end15.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40, i32 noundef %13, i32 noundef %conv10.i.i) #9
  br label %ipa_mem_valid.exit.thread

if.else.i.i:                                      ; preds = %if.end7.i.i
  %offset.i.i = getelementptr %struct.ipa_mem, ptr %6, i32 %i.087.i, i32 1
  %24 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset.i.i, align 4
  %rem17.i.i = and i32 %25, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem17.i.i)
  %tobool18.not.i.i = icmp eq i32 %rem17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.else23.i.i, label %do.end22.i.i

do.end22.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43, i32 noundef %13) #9
  br label %ipa_mem_valid.exit.thread

if.else23.i.i:                                    ; preds = %if.else.i.i
  %canary_count25.i.i = getelementptr %struct.ipa_mem, ptr %6, i32 %i.087.i, i32 3
  %26 = ptrtoint ptr %canary_count25.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %canary_count25.i.i, align 2
  %conv26.i.i = zext i16 %27 to i32
  %mul.i.i = shl nuw nsw i32 %conv26.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %mul.i.i)
  %cmp27.i.i = icmp ult i32 %25, %mul.i.i
  br i1 %cmp27.i.i, label %do.end32.i.i, label %if.else35.i.i

do.end32.i.i:                                     ; preds = %if.else23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv26.i.i.le = zext i16 %27 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.46, i32 noundef %13, i32 noundef %conv26.i.i.le) #9
  br label %ipa_mem_valid.exit.thread

if.else35.i.i:                                    ; preds = %if.else23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %13)
  %cmp36.i.i = icmp ne i32 %13, 27
  %or.cond.i.i = select i1 %cmp36.i.i, i1 true, i1 %tobool.not.i.i
  br i1 %or.cond.i.i, label %for.cond.i, label %do.end45.i.i

do.end45.i.i:                                     ; preds = %if.else35.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.49) #9
  br label %ipa_mem_valid.exit.thread

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %call15.i = call i32 @_find_next_zero_bit_be(ptr noundef nonnull %regions.i, i32 noundef 28, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %call15.i)
  %cmp1789.i = icmp ult i32 %call15.i, 28
  br i1 %cmp1789.i, label %for.body18.lr.ph.i, label %for.end.i.if.end_crit_edge

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body18.lr.ph.i:                               ; preds = %for.end.i
  %version.i.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 1
  br label %for.body18.i

for.body18.i:                                     ; preds = %for.inc25.i.for.body18.i_crit_edge, %for.body18.lr.ph.i
  %mem_id.090.i = phi i32 [ %call15.i, %for.body18.lr.ph.i ], [ %call27.i, %for.inc25.i.for.body18.i_crit_edge ]
  %28 = zext i32 %mem_id.090.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %mem_id.090.i, label %for.body18.i.for.inc25.i_crit_edge [
    i32 0, label %for.body18.i.do.end23.i_crit_edge
    i32 1, label %for.body18.i.do.end23.i_crit_edge244
    i32 2, label %for.body18.i.do.end23.i_crit_edge245
    i32 3, label %for.body18.i.do.end23.i_crit_edge246
    i32 4, label %for.body18.i.do.end23.i_crit_edge247
    i32 5, label %for.body18.i.do.end23.i_crit_edge248
    i32 6, label %for.body18.i.do.end23.i_crit_edge249
    i32 7, label %for.body18.i.do.end23.i_crit_edge250
    i32 8, label %for.body18.i.do.end23.i_crit_edge251
    i32 9, label %for.body18.i.do.end23.i_crit_edge252
    i32 10, label %for.body18.i.do.end23.i_crit_edge253
    i32 12, label %for.body18.i.do.end23.i_crit_edge254
    i32 13, label %for.body18.i.do.end23.i_crit_edge255
    i32 14, label %for.body18.i.do.end23.i_crit_edge256
    i32 16, label %for.body18.i.ipa_mem_id_required.exit.i_crit_edge
    i32 17, label %for.body18.i.ipa_mem_id_required.exit.i_crit_edge257
    i32 19, label %for.body18.i.ipa_mem_id_required.exit.i_crit_edge258
  ]

for.body18.i.ipa_mem_id_required.exit.i_crit_edge258: ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_id_required.exit.i

for.body18.i.ipa_mem_id_required.exit.i_crit_edge257: ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_id_required.exit.i

for.body18.i.ipa_mem_id_required.exit.i_crit_edge: ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_mem_id_required.exit.i

for.body18.i.do.end23.i_crit_edge256:             ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

for.body18.i.do.end23.i_crit_edge255:             ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

for.body18.i.do.end23.i_crit_edge254:             ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

for.body18.i.do.end23.i_crit_edge253:             ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

for.body18.i.do.end23.i_crit_edge252:             ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

for.body18.i.do.end23.i_crit_edge251:             ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

for.body18.i.do.end23.i_crit_edge250:             ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

for.body18.i.do.end23.i_crit_edge249:             ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

for.body18.i.do.end23.i_crit_edge248:             ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

for.body18.i.do.end23.i_crit_edge247:             ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

for.body18.i.do.end23.i_crit_edge246:             ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

for.body18.i.do.end23.i_crit_edge245:             ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

for.body18.i.do.end23.i_crit_edge244:             ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

for.body18.i.do.end23.i_crit_edge:                ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

for.body18.i.for.inc25.i_crit_edge:               ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc25.i

ipa_mem_id_required.exit.i:                       ; preds = %for.body18.i.ipa_mem_id_required.exit.i_crit_edge, %for.body18.i.ipa_mem_id_required.exit.i_crit_edge257, %for.body18.i.ipa_mem_id_required.exit.i_crit_edge258
  %29 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %version.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp.i48.i = icmp ugt i32 %30, 3
  br i1 %cmp.i48.i, label %ipa_mem_id_required.exit.i.do.end23.i_crit_edge, label %ipa_mem_id_required.exit.i.for.inc25.i_crit_edge

ipa_mem_id_required.exit.i.for.inc25.i_crit_edge: ; preds = %ipa_mem_id_required.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc25.i

ipa_mem_id_required.exit.i.do.end23.i_crit_edge:  ; preds = %ipa_mem_id_required.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

do.end23.i:                                       ; preds = %ipa_mem_id_required.exit.i.do.end23.i_crit_edge, %for.body18.i.do.end23.i_crit_edge, %for.body18.i.do.end23.i_crit_edge244, %for.body18.i.do.end23.i_crit_edge245, %for.body18.i.do.end23.i_crit_edge246, %for.body18.i.do.end23.i_crit_edge247, %for.body18.i.do.end23.i_crit_edge248, %for.body18.i.do.end23.i_crit_edge249, %for.body18.i.do.end23.i_crit_edge250, %for.body18.i.do.end23.i_crit_edge251, %for.body18.i.do.end23.i_crit_edge252, %for.body18.i.do.end23.i_crit_edge253, %for.body18.i.do.end23.i_crit_edge254, %for.body18.i.do.end23.i_crit_edge255, %for.body18.i.do.end23.i_crit_edge256
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef %mem_id.090.i) #9
  br label %for.inc25.i

for.inc25.i:                                      ; preds = %do.end23.i, %ipa_mem_id_required.exit.i.for.inc25.i_crit_edge, %for.body18.i.for.inc25.i_crit_edge
  %add.i = add nuw nsw i32 %mem_id.090.i, 1
  %call27.i = call i32 @_find_next_zero_bit_be(ptr noundef nonnull %regions.i, i32 noundef 28, i32 noundef %add.i) #6
  %cmp17.i = icmp ult i32 %call27.i, 28
  br i1 %cmp17.i, label %for.inc25.i.for.body18.i_crit_edge, label %for.inc25.i.if.end_crit_edge

for.inc25.i.if.end_crit_edge:                     ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.inc25.i.for.body18.i_crit_edge:               ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18.i

ipa_mem_valid.exit.thread:                        ; preds = %do.end45.i.i, %do.end32.i.i, %do.end22.i.i, %do.end15.i.i, %do.end6.i.i, %do.end.i.i, %do.end8.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regions.i) #6
  br label %cleanup

if.end:                                           ; preds = %for.inc25.i.if.end_crit_edge, %for.end.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regions.i) #6
  %31 = ptrtoint ptr %mem_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mem_data, align 4
  %mem_count = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 19
  %33 = ptrtoint ptr %mem_count to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %mem_count, align 128
  %local = getelementptr inbounds %struct.ipa_mem_data, ptr %mem_data, i32 0, i32 1
  %34 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %local, align 4
  %mem = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 20
  %36 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %mem, align 4
  %37 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %38, i32 0, i32 3
  %call.i = call i32 @dma_set_mask(ptr noundef %dev3, i64 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i67 = icmp eq i32 %call.i, 0
  br i1 %cmp.i67, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %call.i) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %dev3, i64 noundef -1) #6
  %39 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev, align 4
  %call8 = call ptr @platform_get_resource_byname(ptr noundef %40, i32 noundef 512, ptr noundef nonnull @.str.17) #6
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end13, label %if.end14

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %41 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call8, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call8, i32 0, i32 1
  %43 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %42
  %add.i68 = add i32 %sub.i, %44
  %call16 = call ptr @memremap(i32 noundef %42, i32 noundef %add.i68, i32 noundef 4) #6
  %mem_virt = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 16
  %45 = ptrtoint ptr %mem_virt to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call16, ptr %mem_virt, align 4
  %tobool18.not = icmp eq ptr %call16, null
  br i1 %tobool18.not, label %do.end22, label %if.end23

do.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %46 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %call8, align 4
  %mem_addr = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 15
  %48 = ptrtoint ptr %mem_addr to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %mem_addr, align 16
  %49 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %end.i, align 4
  %51 = load i32, ptr %call8, align 4
  %sub.i70 = add i32 %50, 1
  %add.i71 = sub i32 %sub.i70, %51
  %mem_size = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 18
  %52 = ptrtoint ptr %mem_size to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add.i71, ptr %mem_size, align 4
  %imem_addr = getelementptr inbounds %struct.ipa_mem_data, ptr %mem_data, i32 0, i32 2
  %53 = ptrtoint ptr %imem_addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %imem_addr, align 4
  %imem_size = getelementptr inbounds %struct.ipa_mem_data, ptr %mem_data, i32 0, i32 3
  %55 = ptrtoint ptr %imem_size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %imem_size, align 4
  %57 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdev, align 4
  %dev1.i73 = getelementptr inbounds %struct.platform_device, ptr %58, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i74 = icmp eq i32 %56, 0
  br i1 %tobool.not.i74, label %if.end23.if.end29_crit_edge, label %if.end.i

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end.i:                                         ; preds = %if.end23
  %call.i75 = call ptr @iommu_get_domain_for_dev(ptr noundef %dev1.i73) #6
  %tobool2.not.i = icmp eq ptr %call.i75, null
  br i1 %tobool2.not.i, label %do.end.i76, label %if.end4.i

do.end.i76:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i73, ptr noundef nonnull @.str.51) #9
  br label %err_unmap

if.end4.i:                                        ; preds = %if.end.i
  %and.i = and i32 %54, -4096
  %add.i77 = add i32 %54, 4095
  %sub.i78 = add i32 %add.i77, %56
  %add5.i = sub i32 %sub.i78, %and.i
  %and6.i = and i32 %add5.i, -4096
  %call7.i = call i32 @iommu_map(ptr noundef nonnull %call.i75, i32 noundef %and.i, i32 noundef %and.i, i32 noundef %and6.i, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i79, label %if.end4.i.err_unmap_crit_edge

if.end4.i.err_unmap_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unmap

if.end10.i79:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %imem_iova.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 21
  %59 = ptrtoint ptr %imem_iova.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and.i, ptr %imem_iova.i, align 8
  %imem_size.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 22
  %60 = ptrtoint ptr %imem_size.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %and6.i, ptr %imem_size.i, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end10.i79, %if.end23.if.end29_crit_edge
  %smem_id = getelementptr inbounds %struct.ipa_mem_data, ptr %mem_data, i32 0, i32 4
  %61 = ptrtoint ptr %smem_id to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %smem_id, align 4
  %smem_size = getelementptr inbounds %struct.ipa_mem_data, ptr %mem_data, i32 0, i32 5
  %63 = ptrtoint ptr %smem_size to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %smem_size, align 4
  %65 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev, align 4
  %dev1.i81 = getelementptr inbounds %struct.platform_device, ptr %66, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual.i) #6
  %67 = ptrtoint ptr %actual.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %actual.i, align 4, !annotation !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i82 = icmp eq i32 %64, 0
  br i1 %tobool.not.i82, label %if.end29.ipa_smem_init.exit.thread108_crit_edge, label %if.end.i85

if.end29.ipa_smem_init.exit.thread108_crit_edge:  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_smem_init.exit.thread108

if.end.i85:                                       ; preds = %if.end29
  %call.i83 = call i32 @qcom_smem_alloc(i32 noundef 1, i32 noundef %62, i32 noundef %64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool2.not.i84 = icmp eq i32 %call.i83, 0
  %68 = zext i32 %call.i83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %call.i83, label %do.end.i86 [
    i32 -17, label %if.end.i85.if.end4.i88_crit_edge
    i32 0, label %if.end.i85.if.end4.i88_crit_edge259
  ]

if.end.i85.if.end4.i88_crit_edge259:              ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i88

if.end.i85.if.end4.i88_crit_edge:                 ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i88

do.end.i86:                                       ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i81, ptr noundef nonnull @.str.53, i32 noundef %call.i83, i32 noundef %64, i32 noundef %62) #9
  br label %ipa_smem_init.exit.thread

if.end4.i88:                                      ; preds = %if.end.i85.if.end4.i88_crit_edge, %if.end.i85.if.end4.i88_crit_edge259
  %call5.i = call ptr @qcom_smem_get(i32 noundef 1, i32 noundef %62, ptr noundef nonnull %actual.i) #6
  %cmp.i.i87 = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i87, label %ipa_smem_init.exit, label %if.end12.i

if.end12.i:                                       ; preds = %if.end4.i88
  br i1 %tobool2.not.i84, label %if.end12.i.if.end20.i_crit_edge, label %land.lhs.true14.i

if.end12.i.if.end20.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

land.lhs.true14.i:                                ; preds = %if.end12.i
  %69 = ptrtoint ptr %actual.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %actual.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %64)
  %cmp15.not.i = icmp eq i32 %70, %64
  br i1 %cmp15.not.i, label %land.lhs.true14.i.if.end20.i_crit_edge, label %do.end19.i

land.lhs.true14.i.if.end20.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

do.end19.i:                                       ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i81, ptr noundef nonnull @.str.59, i32 noundef %62, i32 noundef %70, i32 noundef %64) #9
  br label %ipa_smem_init.exit.thread

if.end20.i:                                       ; preds = %land.lhs.true14.i.if.end20.i_crit_edge, %if.end12.i.if.end20.i_crit_edge
  %call21.i = call ptr @iommu_get_domain_for_dev(ptr noundef %dev1.i81) #6
  %tobool22.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool22.not.i, label %do.end26.i, label %if.end27.i

do.end26.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i81, ptr noundef nonnull @.str.62) #9
  br label %ipa_smem_init.exit.thread

if.end27.i:                                       ; preds = %if.end20.i
  %call28.i = call i32 @qcom_smem_virt_to_phys(ptr noundef %call5.i) #6
  %and.i89 = and i32 %call28.i, -4096
  %add30.i = add i32 %64, 4095
  %and31.i = and i32 %add30.i, -4096
  %call32.i = call i32 @iommu_map(ptr noundef nonnull %call21.i, i32 noundef %and.i89, i32 noundef %and.i89, i32 noundef %and31.i, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %if.end27.i.ipa_smem_init.exit.thread_crit_edge

if.end27.i.ipa_smem_init.exit.thread_crit_edge:   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_smem_init.exit.thread

if.end35.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %smem_iova.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 23
  %71 = ptrtoint ptr %smem_iova.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %and.i89, ptr %smem_iova.i, align 16
  %smem_size.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 24
  %72 = ptrtoint ptr %smem_size.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %and31.i, ptr %smem_size.i, align 4
  br label %ipa_smem_init.exit.thread108

ipa_smem_init.exit.thread:                        ; preds = %if.end27.i.ipa_smem_init.exit.thread_crit_edge, %do.end26.i, %do.end19.i, %do.end.i86
  %retval.0.i90.ph = phi i32 [ %call32.i, %if.end27.i.ipa_smem_init.exit.thread_crit_edge ], [ -22, %do.end26.i ], [ -22, %do.end19.i ], [ %call.i83, %do.end.i86 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #6
  br label %err_imem_exit

ipa_smem_init.exit.thread108:                     ; preds = %if.end35.i, %if.end29.ipa_smem_init.exit.thread108_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #6
  br label %cleanup

ipa_smem_init.exit:                               ; preds = %if.end4.i88
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %call5.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i81, ptr noundef nonnull @.str.56, i32 noundef %73, i32 noundef %62) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual.i) #6
  br label %err_imem_exit

err_imem_exit:                                    ; preds = %ipa_smem_init.exit, %ipa_smem_init.exit.thread
  %retval.0.i90106 = phi i32 [ %retval.0.i90.ph, %ipa_smem_init.exit.thread ], [ %73, %ipa_smem_init.exit ]
  %imem_size.i91 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 22
  %74 = ptrtoint ptr %imem_size.i91 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %imem_size.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i92 = icmp eq i32 %75, 0
  br i1 %tobool.not.i92, label %err_imem_exit.err_unmap_crit_edge, label %if.end.i97

err_imem_exit.err_unmap_crit_edge:                ; preds = %err_imem_exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unmap

if.end.i97:                                       ; preds = %err_imem_exit
  %76 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev, align 4
  %dev1.i94 = getelementptr inbounds %struct.platform_device, ptr %77, i32 0, i32 3
  %call.i95 = call ptr @iommu_get_domain_for_dev(ptr noundef %dev1.i94) #6
  %tobool2.not.i96 = icmp eq ptr %call.i95, null
  br i1 %tobool2.not.i96, label %do.end12.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i97
  %imem_iova.i98 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 21
  %78 = ptrtoint ptr %imem_iova.i98 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %imem_iova.i98, align 8
  %80 = ptrtoint ptr %imem_size.i91 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %imem_size.i91, align 4
  %call5.i99 = call i32 @iommu_unmap(ptr noundef nonnull %call.i95, i32 noundef %79, i32 noundef %81) #6
  %82 = ptrtoint ptr %imem_size.i91 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %imem_size.i91, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i99, i32 %83)
  %cmp.not.i = icmp eq i32 %call5.i99, %83
  br i1 %cmp.not.i, label %if.then3.i.if.end13.i_crit_edge, label %do.end.i100

if.then3.i.if.end13.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

do.end.i100:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i94, ptr noundef nonnull @.str.64, i32 noundef %call5.i99, i32 noundef %83) #9
  br label %if.end13.i

do.end12.i:                                       ; preds = %if.end.i97
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i94, ptr noundef nonnull @.str.67) #9
  br label %if.end13.i

if.end13.i:                                       ; preds = %do.end12.i, %do.end.i100, %if.then3.i.if.end13.i_crit_edge
  %84 = ptrtoint ptr %imem_size.i91 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %imem_size.i91, align 4
  %imem_iova15.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 21
  %85 = ptrtoint ptr %imem_iova15.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %imem_iova15.i, align 8
  br label %err_unmap

err_unmap:                                        ; preds = %if.end13.i, %err_imem_exit.err_unmap_crit_edge, %if.end4.i.err_unmap_crit_edge, %do.end.i76
  %ret.0 = phi i32 [ -22, %do.end.i76 ], [ %call7.i, %if.end4.i.err_unmap_crit_edge ], [ %retval.0.i90106, %err_imem_exit.err_unmap_crit_edge ], [ %retval.0.i90106, %if.end13.i ]
  %86 = ptrtoint ptr %mem_virt to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mem_virt, align 4
  call void @memunmap(ptr noundef %87) #6
  br label %cleanup

cleanup:                                          ; preds = %err_unmap, %ipa_smem_init.exit.thread108, %do.end22, %do.end13, %do.end, %ipa_mem_valid.exit.thread
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %ret.0, %err_unmap ], [ -12, %do.end22 ], [ -19, %do.end13 ], [ -22, %ipa_mem_valid.exit.thread ], [ 0, %ipa_smem_init.exit.thread108 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memremap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @memunmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_mem_exit(ptr nocapture noundef %ipa) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call ptr @iommu_get_domain_for_dev(ptr noundef %dev1.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end8.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %smem_iova.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 23
  %2 = ptrtoint ptr %smem_iova.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %smem_iova.i, align 16
  %smem_size.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 24
  %4 = ptrtoint ptr %smem_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %smem_size.i, align 4
  %call2.i = tail call i32 @iommu_unmap(ptr noundef nonnull %call.i, i32 noundef %3, i32 noundef %5) #6
  %6 = ptrtoint ptr %smem_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %smem_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %7)
  %cmp.not.i = icmp eq i32 %call2.i, %7
  br i1 %cmp.not.i, label %if.then.i.ipa_smem_exit.exit_crit_edge, label %do.end.i

if.then.i.ipa_smem_exit.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_smem_exit.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i, ptr noundef nonnull @.str.69, i32 noundef %call2.i, i32 noundef %7) #9
  br label %ipa_smem_exit.exit

do.end8.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.72) #9
  br label %ipa_smem_exit.exit

ipa_smem_exit.exit:                               ; preds = %do.end8.i, %do.end.i, %if.then.i.ipa_smem_exit.exit_crit_edge
  %smem_size10.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 24
  %8 = ptrtoint ptr %smem_size10.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %smem_size10.i, align 4
  %smem_iova11.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 23
  %9 = ptrtoint ptr %smem_iova11.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %smem_iova11.i, align 16
  %imem_size.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 22
  %10 = ptrtoint ptr %imem_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %imem_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i3 = icmp eq i32 %11, 0
  br i1 %tobool.not.i3, label %ipa_smem_exit.exit.ipa_imem_exit.exit_crit_edge, label %if.end.i

ipa_smem_exit.exit.ipa_imem_exit.exit_crit_edge:  ; preds = %ipa_smem_exit.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_imem_exit.exit

if.end.i:                                         ; preds = %ipa_smem_exit.exit
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 4
  %dev1.i5 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %call.i6 = tail call ptr @iommu_get_domain_for_dev(ptr noundef %dev1.i5) #6
  %tobool2.not.i = icmp eq ptr %call.i6, null
  br i1 %tobool2.not.i, label %do.end12.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %imem_iova.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 21
  %14 = ptrtoint ptr %imem_iova.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %imem_iova.i, align 8
  %16 = ptrtoint ptr %imem_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %imem_size.i, align 4
  %call5.i = tail call i32 @iommu_unmap(ptr noundef nonnull %call.i6, i32 noundef %15, i32 noundef %17) #6
  %18 = ptrtoint ptr %imem_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %imem_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %19)
  %cmp.not.i7 = icmp eq i32 %call5.i, %19
  br i1 %cmp.not.i7, label %if.then3.i.if.end13.i_crit_edge, label %do.end.i8

if.then3.i.if.end13.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

do.end.i8:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i5, ptr noundef nonnull @.str.64, i32 noundef %call5.i, i32 noundef %19) #9
  br label %if.end13.i

do.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i5, ptr noundef nonnull @.str.67) #9
  br label %if.end13.i

if.end13.i:                                       ; preds = %do.end12.i, %do.end.i8, %if.then3.i.if.end13.i_crit_edge
  %20 = ptrtoint ptr %imem_size.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %imem_size.i, align 4
  %imem_iova15.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 21
  %21 = ptrtoint ptr %imem_iova15.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %imem_iova15.i, align 8
  br label %ipa_imem_exit.exit

ipa_imem_exit.exit:                               ; preds = %if.end13.i, %ipa_smem_exit.exit.ipa_imem_exit.exit_crit_edge
  %mem_virt = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 16
  %22 = ptrtoint ptr %mem_virt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mem_virt, align 4
  tail call void @memunmap(ptr noundef %23) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_cmd_dma_shared_mem_add(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_get_domain_for_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_map(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_smem_alloc(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_smem_get(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_smem_virt_to_phys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_unmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !121, !123, !124}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ipa/ipa_mem.c", i32 89, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ipa_mem_setup._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ipa_mem_setup._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ipa/ipa_mem.c", i32 326, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ipa_mem_config._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @ipa_mem_config._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ipa/ipa_mem.c", i32 330, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ipa_mem_config.__UNIQUE_ID_ddebug337, !15, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ipa/ipa_mem.c", i32 374, i32 3}
!20 = !{ptr @ipa_mem_config._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @ipa_mem_config._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ipa/ipa_mem.c", i32 416, i32 3}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ipa_mem_zero_modem._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @ipa_mem_zero_modem._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ipa/ipa_mem.c", i32 624, i32 3}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ipa_mem_init._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @ipa_mem_init._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ipa/ipa_mem.c", i32 629, i32 9}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ipa/ipa_mem.c", i32 631, i32 3}
!36 = !{ptr @ipa_mem_init._entry.18, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ipa_mem_init._entry_ptr.20, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ipa/ipa_mem.c", i32 638, i32 3}
!40 = !{ptr @ipa_mem_init._entry.21, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ipa_mem_init._entry_ptr.23, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ipa/ipa_mem.c", i32 291, i32 3}
!44 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ipa_mem_size_valid._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @ipa_mem_size_valid._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ipa/ipa_mem.c", i32 250, i32 3}
!49 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ipa_mem_valid._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @ipa_mem_valid._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ipa/ipa_mem.c", i32 259, i32 4}
!54 = !{ptr @ipa_mem_valid._entry.28, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ipa_mem_valid._entry_ptr.30, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ipa/ipa_mem.c", i32 271, i32 4}
!58 = !{ptr @ipa_mem_valid._entry.31, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ipa_mem_valid._entry_ptr.33, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ipa/ipa_mem.c", i32 214, i32 3}
!62 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ipa_mem_valid_one._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @ipa_mem_valid_one._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ipa/ipa_mem.c", i32 219, i32 3}
!67 = !{ptr @ipa_mem_valid_one._entry.36, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @ipa_mem_valid_one._entry_ptr.38, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ipa/ipa_mem.c", i32 226, i32 3}
!71 = !{ptr @ipa_mem_valid_one._entry.39, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @ipa_mem_valid_one._entry_ptr.41, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.43, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ipa/ipa_mem.c", i32 229, i32 3}
!75 = !{ptr @ipa_mem_valid_one._entry.42, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @ipa_mem_valid_one._entry_ptr.44, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.46, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ipa/ipa_mem.c", i32 231, i32 3}
!79 = !{ptr @ipa_mem_valid_one._entry.45, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @ipa_mem_valid_one._entry_ptr.47, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.49, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ipa/ipa_mem.c", i32 234, i32 3}
!83 = !{ptr @ipa_mem_valid_one._entry.48, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @ipa_mem_valid_one._entry_ptr.50, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.51, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ipa/ipa_mem.c", i32 459, i32 3}
!87 = !{ptr @.str.52, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @ipa_imem_init._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @ipa_imem_init._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.53, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ipa/ipa_mem.c", i32 544, i32 3}
!92 = !{ptr @.str.54, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @ipa_smem_init._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @ipa_smem_init._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.56, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ipa/ipa_mem.c", i32 553, i32 3}
!97 = !{ptr @ipa_smem_init._entry.55, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @ipa_smem_init._entry_ptr.57, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.59, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ipa/ipa_mem.c", i32 559, i32 3}
!101 = !{ptr @ipa_smem_init._entry.58, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @ipa_smem_init._entry_ptr.60, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.62, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ipa/ipa_mem.c", i32 566, i32 3}
!105 = !{ptr @ipa_smem_init._entry.61, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @ipa_smem_init._entry_ptr.63, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.64, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ipa/ipa_mem.c", i32 493, i32 4}
!109 = !{ptr @.str.65, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @ipa_imem_exit._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @ipa_imem_exit._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.67, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ipa/ipa_mem.c", i32 496, i32 3}
!114 = !{ptr @ipa_imem_exit._entry.66, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @ipa_imem_exit._entry_ptr.68, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.69, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ipa/ipa_mem.c", i32 597, i32 4}
!118 = !{ptr @.str.70, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @ipa_smem_exit._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @ipa_smem_exit._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.72, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ipa/ipa_mem.c", i32 601, i32 3}
!123 = !{ptr @ipa_smem_exit._entry.71, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @ipa_smem_exit._entry_ptr.73, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{i64 2153801949}
!135 = !{i64 6259827}
!136 = !{!"auto-init"}
!137 = !{i64 6260245}
!138 = !{i64 2153800594}
!139 = !{i64 2148207068, i64 2148207073, i64 2148207086, i64 2148207130, i64 2148207164, i64 2148207185}
