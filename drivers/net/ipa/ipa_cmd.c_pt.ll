; ModuleID = '/llk/IR_all_yes/drivers/net/ipa/ipa_cmd.c_pt.bc'
source_filename = "../drivers/net/ipa/ipa_cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.99, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.99 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
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
%struct.atomic_t = type { i32 }
%struct.ipa_qmi = type { %struct.qmi_handle, %struct.qmi_handle, %struct.sockaddr_qrtr, %struct.work_struct, i8, i8, i8, i8, i8 }
%struct.qmi_handle = type { ptr, %struct.mutex, %struct.sockaddr_qrtr, %struct.work_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.qmi_ops, %struct.idr, %struct.mutex, ptr }
%struct.qmi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sockaddr_qrtr = type { i16, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ipa_mem = type { i32, i32, i16, i16 }
%struct.gsi_trans = type { %struct.list_head, ptr, i8, i8, i8, i8, i32, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.completion, i64, i64 }
%struct.ipa_cmd_hw_ip_fltrt_init = type { i64, i64, i64 }
%struct.ipa_cmd_hw_hdr_init_local = type { i64, i32, i32 }
%struct.ipa_cmd_register_write = type { i16, i16, i32, i32, i32 }
%struct.ipa_cmd_hw_dma_mem_mem = type { i16, i16, i16, i16, i64 }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"route\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"filter\00", [25 x i8] zeroinitializer }, align 32
@ipa_cmd_table_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 184, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s table region size too large\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ipa_cmd_table_valid\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/net/ipa/ipa_cmd.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ipa_cmd_table_valid._entry_ptr = internal global ptr @ipa_cmd_table_valid._entry, section ".printk_index", align 4
@ipa_cmd_table_valid._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 186, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"    (0x%04x > 0x%04x)\0A\00", [41 x i8] zeroinitializer }, align 32
@ipa_cmd_table_valid._entry_ptr.9 = internal global ptr @ipa_cmd_table_valid._entry.7, section ".printk_index", align 4
@ipa_cmd_table_valid._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 194, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s table region offset too large\0A\00", [62 x i8] zeroinitializer }, align 32
@ipa_cmd_table_valid._entry_ptr.12 = internal global ptr @ipa_cmd_table_valid._entry.10, section ".printk_index", align 4
@ipa_cmd_table_valid._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 196, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"    (0x%04x + 0x%04x > 0x%04x)\0A\00", [32 x i8] zeroinitializer }, align 32
@ipa_cmd_table_valid._entry_ptr.15 = internal global ptr @ipa_cmd_table_valid._entry.13, section ".printk_index", align 4
@ipa_cmd_table_valid._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 204, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s table region out of range\0A\00", [34 x i8] zeroinitializer }, align 32
@ipa_cmd_table_valid._entry_ptr.18 = internal global ptr @ipa_cmd_table_valid._entry.16, section ".printk_index", align 4
@ipa_cmd_table_valid._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 206, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ipa_cmd_table_valid._entry_ptr.20 = internal global ptr @ipa_cmd_table_valid._entry.19, section ".printk_index", align 4
@ipa_cmd_header_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 241, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"header table region offset too large\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ipa_cmd_header_valid\00", [43 x i8] zeroinitializer }, align 32
@ipa_cmd_header_valid._entry_ptr = internal global ptr @ipa_cmd_header_valid._entry, section ".printk_index", align 4
@ipa_cmd_header_valid._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.22, ptr @.str.4, i32 243, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ipa_cmd_header_valid._entry_ptr.24 = internal global ptr @ipa_cmd_header_valid._entry.23, section ".printk_index", align 4
@ipa_cmd_header_valid._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.4, i32 255, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"header table region size too large\0A\00", [60 x i8] zeroinitializer }, align 32
@ipa_cmd_header_valid._entry_ptr.27 = internal global ptr @ipa_cmd_header_valid._entry.25, section ".printk_index", align 4
@ipa_cmd_header_valid._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.22, ptr @.str.4, i32 256, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"    (0x%04x > 0x%08x)\0A\00", [41 x i8] zeroinitializer }, align 32
@ipa_cmd_header_valid._entry_ptr.30 = internal global ptr @ipa_cmd_header_valid._entry.28, section ".printk_index", align 4
@ipa_cmd_header_valid._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.22, ptr @.str.4, i32 263, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"header table region out of range\0A\00", [62 x i8] zeroinitializer }, align 32
@ipa_cmd_header_valid._entry_ptr.33 = internal global ptr @ipa_cmd_header_valid._entry.31, section ".printk_index", align 4
@ipa_cmd_header_valid._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.22, ptr @.str.4, i32 265, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@ipa_cmd_header_valid._entry_ptr.35 = internal global ptr @ipa_cmd_header_valid._entry.34, section ".printk_index", align 4
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"filter/route hash flush\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"maximal endpoint status\00", [40 x i8] zeroinitializer }, align 32
@ipa_cmd_register_write_offset_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 299, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s offset too large 0x%04x + 0x%04x > 0x%04x)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ipa_cmd_register_write_offset_valid\00", [60 x i8] zeroinitializer }, align 32
@ipa_cmd_register_write_offset_valid._entry_ptr = internal global ptr @ipa_cmd_register_write_offset_valid._entry, section ".printk_index", align 4
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 179, i32 30 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 179, i32 40 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 184, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 185, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 194, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 195, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 204, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 205, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 241, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 242, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 255, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 256, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 263, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 264, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 317, i32 10 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 330, i32 9 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private constant [29 x i8] c"../drivers/net/ipa/ipa_cmd.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 298, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @ipa_cmd_header_valid._entry, ptr @ipa_cmd_header_valid._entry.23, ptr @ipa_cmd_header_valid._entry.25, ptr @ipa_cmd_header_valid._entry.28, ptr @ipa_cmd_header_valid._entry.31, ptr @ipa_cmd_header_valid._entry.34, ptr @ipa_cmd_header_valid._entry_ptr, ptr @ipa_cmd_header_valid._entry_ptr.24, ptr @ipa_cmd_header_valid._entry_ptr.27, ptr @ipa_cmd_header_valid._entry_ptr.30, ptr @ipa_cmd_header_valid._entry_ptr.33, ptr @ipa_cmd_header_valid._entry_ptr.35, ptr @ipa_cmd_register_write_offset_valid._entry, ptr @ipa_cmd_register_write_offset_valid._entry_ptr, ptr @ipa_cmd_table_valid._entry, ptr @ipa_cmd_table_valid._entry.10, ptr @ipa_cmd_table_valid._entry.13, ptr @ipa_cmd_table_valid._entry.16, ptr @ipa_cmd_table_valid._entry.19, ptr @ipa_cmd_table_valid._entry.7, ptr @ipa_cmd_table_valid._entry_ptr, ptr @ipa_cmd_table_valid._entry_ptr.12, ptr @ipa_cmd_table_valid._entry_ptr.15, ptr @ipa_cmd_table_valid._entry_ptr.18, ptr @ipa_cmd_table_valid._entry_ptr.20, ptr @ipa_cmd_table_valid._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.21, ptr @.str.22, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_cmd_table_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_cmd_table_valid._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_cmd_table_valid._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_cmd_table_valid._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_cmd_table_valid._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_cmd_table_valid._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_cmd_header_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_cmd_header_valid._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_cmd_header_valid._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_cmd_header_valid._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_cmd_header_valid._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_cmd_header_valid._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_cmd_register_write_offset_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ipa_cmd_table_valid(ptr nocapture noundef readonly %ipa, ptr nocapture noundef readonly %mem, i1 noundef zeroext %route) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %route, ptr @.str, ptr @.str.1
  %pdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %size = getelementptr inbounds %struct.ipa_mem, ptr %mem, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %size, align 4
  %conv5 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %3)
  %cmp = icmp ugt i16 %3, 4095
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.2, ptr noundef nonnull %cond) #9
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %size, align 4
  %conv11 = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.8, i32 noundef %conv11, i32 noundef 4095) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %offset = getelementptr inbounds %struct.ipa_mem, ptr %mem, i32 0, i32 1
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %7)
  %cmp12 = icmp ugt i32 %7, 65535
  br i1 %cmp12, label %if.end.do.end20_crit_edge, label %lor.lhs.false

if.end.do.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20

lor.lhs.false:                                    ; preds = %if.end
  %mem_offset = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 17
  %8 = ptrtoint ptr %mem_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mem_offset, align 8
  %sub = sub nuw nsw i32 65535, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %sub)
  %cmp15 = icmp ugt i32 %9, %sub
  br i1 %cmp15, label %lor.lhs.false.do.end20_crit_edge, label %if.end26

lor.lhs.false.do.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20

do.end20:                                         ; preds = %lor.lhs.false.do.end20_crit_edge, %if.end.do.end20_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.11, ptr noundef nonnull %cond) #9
  %mem_offset24 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 17
  %10 = ptrtoint ptr %mem_offset24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mem_offset24, align 8
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.14, i32 noundef %11, i32 noundef %13, i32 noundef 65535) #9
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false
  %mem_size = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 18
  %14 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mem_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %7)
  %cmp28 = icmp ult i32 %15, %7
  %sub35 = sub i32 %15, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub35, i32 %conv5)
  %cmp36 = icmp ult i32 %sub35, %conv5
  %or.cond = select i1 %cmp28, i1 true, i1 %cmp36
  br i1 %or.cond, label %do.end41, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end41:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.17, ptr noundef nonnull %cond) #9
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %size, align 4
  %conv47 = zext i16 %19 to i32
  %20 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mem_size, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.14, i32 noundef %17, i32 noundef %conv47, i32 noundef %21) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %if.end26.cleanup_crit_edge, %do.end20, %do.end
  %retval.0 = phi i1 [ false, %do.end ], [ false, %do.end20 ], [ false, %do.end41 ], [ true, %if.end26.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ipa_cmd_data_valid(ptr noundef %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %0 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call4.i = tail call ptr @ipa_mem_find(ptr noundef %ipa, i32 noundef 10) #6
  %offset5.i = getelementptr inbounds %struct.ipa_mem, ptr %call4.i, i32 0, i32 1
  %2 = ptrtoint ptr %offset5.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset5.i, align 4
  %size6.i = getelementptr inbounds %struct.ipa_mem, ptr %call4.i, i32 0, i32 2
  %4 = ptrtoint ptr %size6.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %size6.i, align 4
  %conv7.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %3)
  %cmp.i = icmp ugt i32 %3, 65535
  br i1 %cmp.i, label %entry.do.end.i_crit_edge, label %lor.lhs.false.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %entry
  %mem_offset.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 17
  %6 = ptrtoint ptr %mem_offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mem_offset.i, align 8
  %sub.i = sub nuw nsw i32 65535, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub.i)
  %cmp9.i = icmp ugt i32 %7, %sub.i
  br i1 %cmp9.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.21) #9
  %mem_offset14.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 17
  %8 = ptrtoint ptr %mem_offset14.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mem_offset14.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.14, i32 noundef %9, i32 noundef %3, i32 noundef 65535) #9
  br label %return

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call15.i = tail call ptr @ipa_mem_find(ptr noundef %ipa, i32 noundef 11) #6
  %tobool.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end19.i_crit_edge, label %if.then16.i

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %size17.i = getelementptr inbounds %struct.ipa_mem, ptr %call15.i, i32 0, i32 2
  %10 = ptrtoint ptr %size17.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %size17.i, align 4
  %conv18.i = zext i16 %11 to i32
  %add.i = add nuw nsw i32 %conv18.i, %conv7.i
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %if.end.i.if.end19.i_crit_edge
  %size.0.i = phi i32 [ %add.i, %if.then16.i ], [ %conv7.i, %if.end.i.if.end19.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %size.0.i)
  %cmp20.i = icmp ugt i32 %size.0.i, 4095
  br i1 %cmp20.i, label %do.end25.i, label %if.end29.i

do.end25.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.26) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.29, i32 noundef %size.0.i, i32 noundef 4095) #9
  br label %return

if.end29.i:                                       ; preds = %if.end19.i
  %mem_size.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 18
  %12 = ptrtoint ptr %mem_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mem_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %size.0.i)
  %cmp30.i = icmp ult i32 %13, %size.0.i
  %sub34.i = sub i32 %13, %size.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub34.i)
  %cmp35.i = icmp ugt i32 %3, %sub34.i
  %or.cond.i = select i1 %cmp30.i, i1 true, i1 %cmp35.i
  br i1 %or.cond.i, label %do.end40.i, label %if.end

do.end40.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.32) #9
  %14 = ptrtoint ptr %mem_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mem_size.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.14, i32 noundef %3, i32 noundef %size.0.i, i32 noundef %15) #9
  br label %return

if.end:                                           ; preds = %if.end29.i
  %version.i.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 1
  %16 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %version.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %17)
  %cmp.i.not.i = icmp eq i32 %17, 6
  br i1 %cmp.i.not.i, label %if.end.if.end4.i_crit_edge, label %if.then.i

if.end.if.end4.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp.i14.i = icmp ult i32 %17, 4
  %..i.i = select i1 %cmp.i14.i, i32 144, i32 332
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp.i16.i = icmp ugt i32 %17, 3
  %shr.i.i = select i1 %cmp.i16.i, i32 1048575, i32 65535
  %18 = ptrtoint ptr %mem_offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mem_offset.i, align 8
  %sub6.i.i = sub nuw nsw i32 %shr.i.i, %..i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %sub6.i.i)
  %cmp7.i.i = icmp ugt i32 %19, %sub6.i.i
  br i1 %cmp7.i.i, label %ipa_cmd_register_write_offset_valid.exit.i, label %if.then.i.if.end4.i_crit_edge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

ipa_cmd_register_write_offset_valid.exit.i:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i32 noundef %19, i32 noundef %..i.i, i32 noundef %shr.i.i) #9
  br label %return

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %if.end.if.end4.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp.i18.i = icmp ugt i32 %17, 3
  %shr.i19.i = select i1 %cmp.i18.i, i32 1048575, i32 65535
  %22 = ptrtoint ptr %mem_offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mem_offset.i, align 8
  %sub6.i21.i = add nsw i32 %shr.i19.i, -3120
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %sub6.i21.i)
  %cmp7.i22.i = icmp ugt i32 %23, %sub6.i21.i
  br i1 %cmp7.i22.i, label %do.end11.i25.i, label %if.end4.i.ipa_cmd_register_write_offset_valid.exit26.i_crit_edge

if.end4.i.ipa_cmd_register_write_offset_valid.exit26.i_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipa_cmd_register_write_offset_valid.exit26.i

do.end11.i25.i:                                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev.i, align 4
  %dev1.i24.i = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i24.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef %23, i32 noundef 3120, i32 noundef %shr.i19.i) #9
  br label %ipa_cmd_register_write_offset_valid.exit26.i

ipa_cmd_register_write_offset_valid.exit26.i:     ; preds = %do.end11.i25.i, %if.end4.i.ipa_cmd_register_write_offset_valid.exit26.i_crit_edge
  %26 = xor i1 %cmp7.i22.i, true
  br label %return

return:                                           ; preds = %ipa_cmd_register_write_offset_valid.exit26.i, %ipa_cmd_register_write_offset_valid.exit.i, %do.end40.i, %do.end25.i, %do.end.i
  %retval.0 = phi i1 [ false, %ipa_cmd_register_write_offset_valid.exit.i ], [ %26, %ipa_cmd_register_write_offset_valid.exit26.i ], [ false, %do.end.i ], [ false, %do.end25.i ], [ false, %do.end40.i ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipa_cmd_pool_init(ptr noundef %channel, i32 noundef %tre_max) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %cmd_pool = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 14, i32 3
  %tlv_count = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 3
  %4 = ptrtoint ptr %tlv_count to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tlv_count, align 2
  %conv = zext i8 %5 to i32
  %call = tail call i32 @gsi_trans_pool_init_dma(ptr noundef %3, ptr noundef %cmd_pool, i32 noundef 24, i32 noundef %tre_max, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %info_pool = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 14, i32 4
  %6 = ptrtoint ptr %tlv_count to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tlv_count, align 2
  %conv4 = zext i8 %7 to i32
  %call5 = tail call i32 @gsi_trans_pool_init(ptr noundef %info_pool, i32 noundef 8, i32 noundef %tre_max, i32 noundef %conv4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gsi_trans_pool_exit_dma(ptr noundef %3, ptr noundef %cmd_pool) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call5, %if.then7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsi_trans_pool_init_dma(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gsi_trans_pool_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsi_trans_pool_exit_dma(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_cmd_pool_exit(ptr noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %info_pool = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 14, i32 4
  tail call void @gsi_trans_pool_exit(ptr noundef %info_pool) #6
  %cmd_pool = getelementptr inbounds %struct.gsi_channel, ptr %channel, i32 0, i32 14, i32 3
  tail call void @gsi_trans_pool_exit_dma(ptr noundef %3, ptr noundef %cmd_pool) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsi_trans_pool_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_cmd_table_init_add(ptr noundef %trans, i32 noundef %opcode, i16 noundef zeroext %size, i32 noundef %offset, i32 noundef %addr, i16 noundef zeroext %hash_size, i32 noundef %hash_offset, i32 noundef %hash_addr) local_unnamed_addr #0 align 64 {
entry:
  %payload_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gsi = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 1
  %0 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsi, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %payload_addr) #6
  %2 = ptrtoint ptr %payload_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %payload_addr, align 4, !annotation !72
  %mem_offset = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 17
  %conv1 = zext i16 %size to i64
  %3 = ptrtoint ptr %mem_offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mem_offset, align 8
  %add = add i32 %4, %offset
  %conv = zext i32 %add to i64
  %and223.i = shl i64 %conv, 40
  %mul.i = and i64 %and223.i, 72056494526300160
  %and223.i34 = shl nuw nsw i64 %conv1, 28
  %mul.i35 = and i64 %and223.i34, 1099243192320
  %or = or i64 %mul.i, %mul.i35
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %hash_size)
  %tobool.not = icmp eq i16 %hash_size, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %u64_encode_bits.exit49

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

u64_encode_bits.exit49:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %mem_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mem_offset, align 8
  %add4 = add i32 %6, %hash_offset
  %conv5 = zext i32 %add4 to i64
  %and223.i41 = shl nuw nsw i64 %conv5, 12
  %mul.i42 = and i64 %and223.i41, 268431360
  %7 = and i16 %hash_size, 4095
  %and223.i48 = zext i16 %7 to i64
  %or7 = or i64 %or, %and223.i48
  %or10 = or i64 %or7, %mul.i42
  br label %if.end

if.end:                                           ; preds = %u64_encode_bits.exit49, %entry.if.end_crit_edge
  %val.0 = phi i64 [ %or10, %u64_encode_bits.exit49 ], [ %or, %entry.if.end_crit_edge ]
  %name_map.i = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 35
  %8 = ptrtoint ptr %name_map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name_map.i, align 4
  %channel_id.i = getelementptr inbounds %struct.ipa_endpoint, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel_id.i, align 4
  %cmd_pool.i = getelementptr %struct.gsi, ptr %1, i32 0, i32 14, i32 %11, i32 14, i32 3
  %call.i = call ptr @gsi_trans_pool_alloc_dma(ptr noundef %cmd_pool.i, ptr noundef nonnull %payload_addr) #6
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %if.then13

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv14 = zext i32 %hash_addr to i64
  %12 = call i64 @llvm.bswap.i64(i64 %conv14)
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %call.i, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end.if.end15_crit_edge
  %14 = call i64 @llvm.bswap.i64(i64 %val.0)
  %flags = getelementptr inbounds %struct.ipa_cmd_hw_ip_fltrt_init, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %flags, align 8
  %conv16 = zext i32 %addr to i64
  %16 = call i64 @llvm.bswap.i64(i64 %conv16)
  %nhash_rules_addr = getelementptr inbounds %struct.ipa_cmd_hw_ip_fltrt_init, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %nhash_rules_addr to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %nhash_rules_addr, align 8
  %18 = ptrtoint ptr %payload_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %payload_addr, align 4
  call void @gsi_trans_cmd_add(ptr noundef %trans, ptr noundef %call.i, i32 noundef 24, i32 noundef %19, i32 noundef 1, i32 noundef %opcode) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %payload_addr) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gsi_trans_cmd_add(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_cmd_hdr_init_local_add(ptr noundef %trans, i32 noundef %offset, i16 noundef zeroext %size, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  %payload_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gsi = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 1
  %0 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsi, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %payload_addr) #6
  %2 = ptrtoint ptr %payload_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %payload_addr, align 4, !annotation !72
  %mem_offset = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %mem_offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mem_offset, align 8
  %name_map.i = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 35
  %5 = ptrtoint ptr %name_map.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name_map.i, align 4
  %channel_id.i = getelementptr inbounds %struct.ipa_endpoint, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel_id.i, align 4
  %cmd_pool.i = getelementptr %struct.gsi, ptr %1, i32 0, i32 14, i32 %8, i32 14, i32 3
  %call.i = call ptr @gsi_trans_pool_alloc_dma(ptr noundef %cmd_pool.i, ptr noundef nonnull %payload_addr) #6
  %conv = zext i32 %addr to i64
  %9 = call i64 @llvm.bswap.i64(i64 %conv)
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %call.i, align 8
  %add = add i32 %4, %offset
  %11 = and i16 %size, 4095
  %conv8.i = zext i16 %11 to i32
  %12 = shl i32 %add, 12
  %13 = and i32 %12, 268431360
  %or = or i32 %13, %conv8.i
  %14 = call i32 @llvm.bswap.i32(i32 %or)
  %flags4 = getelementptr inbounds %struct.ipa_cmd_hw_hdr_init_local, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %flags4, align 8
  %16 = ptrtoint ptr %payload_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %payload_addr, align 4
  call void @gsi_trans_cmd_add(ptr noundef %trans, ptr noundef %call.i, i32 noundef 16, i32 noundef %17, i32 noundef 1, i32 noundef 9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %payload_addr) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_cmd_register_write_add(ptr noundef %trans, i32 noundef %offset, i32 noundef %value, i32 noundef %mask, i1 noundef zeroext %clear_full) local_unnamed_addr #0 align 64 {
entry:
  %payload_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gsi = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 1
  %0 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsi, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %payload_addr) #6
  %2 = ptrtoint ptr %payload_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %payload_addr, align 4, !annotation !72
  %cond = select i1 %clear_full, i32 2, i32 0
  %version = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %version, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp ugt i32 %4, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv8.i = shl nuw nsw i32 %cond, 9
  %5 = or i32 %conv8.i, 12
  %and = and i32 %offset, 65535
  %sum.shift = lshr i32 %offset, 13
  %6 = trunc i32 %sum.shift to i16
  %phi.bo47 = and i16 %6, 120
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %phi.bo = shl nuw nsw i32 %cond, 24
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %opcode.0 = phi i32 [ %5, %if.then ], [ 12, %if.else ]
  %options.0 = phi i32 [ 0, %if.then ], [ %phi.bo, %if.else ]
  %flags.0 = phi i16 [ %phi.bo47, %if.then ], [ 0, %if.else ]
  %offset.addr.0 = phi i32 [ %and, %if.then ], [ %offset, %if.else ]
  %name_map.i = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 35
  %7 = ptrtoint ptr %name_map.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name_map.i, align 4
  %channel_id.i = getelementptr inbounds %struct.ipa_endpoint, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channel_id.i, align 4
  %cmd_pool.i = getelementptr %struct.gsi, ptr %1, i32 0, i32 14, i32 %10, i32 14, i32 3
  %call.i = call ptr @gsi_trans_pool_alloc_dma(ptr noundef %cmd_pool.i, ptr noundef nonnull %payload_addr) #6
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %flags.0, ptr %call.i, align 4
  %conv10 = trunc i32 %offset.addr.0 to i16
  %12 = call i16 @llvm.bswap.i16(i16 %conv10)
  %offset11 = getelementptr inbounds %struct.ipa_cmd_register_write, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %offset11 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %offset11, align 2
  %14 = call i32 @llvm.bswap.i32(i32 %value)
  %value12 = getelementptr inbounds %struct.ipa_cmd_register_write, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %value12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %value12, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %mask)
  %value_mask = getelementptr inbounds %struct.ipa_cmd_register_write, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %value_mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %value_mask, align 4
  %clear_options = getelementptr inbounds %struct.ipa_cmd_register_write, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %clear_options to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %options.0, ptr %clear_options, align 4
  %19 = ptrtoint ptr %payload_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %payload_addr, align 4
  call void @gsi_trans_cmd_add(ptr noundef %trans, ptr noundef %call.i, i32 noundef 16, i32 noundef %20, i32 noundef 3, i32 noundef %opcode.0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %payload_addr) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_cmd_dma_shared_mem_add(ptr noundef %trans, i32 noundef %offset, i16 noundef zeroext %size, i32 noundef %addr, i1 noundef zeroext %toward_ipa) local_unnamed_addr #0 align 64 {
entry:
  %payload_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gsi = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 1
  %0 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsi, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %payload_addr) #6
  %2 = ptrtoint ptr %payload_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %payload_addr, align 4, !annotation !72
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %size)
  %tobool.not = icmp eq i16 %size, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end45_crit_edge, !prof !73

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 561, i32 noundef 9, ptr noundef null) #6
  br label %if.end45

if.end45:                                         ; preds = %do.end, %entry.if.end45_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %offset)
  %cmp54 = icmp ugt i32 %offset, 65535
  br i1 %cmp54, label %if.end45.do.end73_crit_edge, label %lor.rhs

if.end45.do.end73_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end73

lor.rhs:                                          ; preds = %if.end45
  %mem_offset = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %mem_offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mem_offset, align 8
  %sub = sub nuw nsw i32 65535, %offset
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %sub)
  %cmp56 = icmp ugt i32 %4, %sub
  br i1 %cmp56, label %lor.rhs.do.end73_crit_edge, label %lor.rhs.if.end79_crit_edge, !prof !73

lor.rhs.if.end79_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

lor.rhs.do.end73_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end73

do.end73:                                         ; preds = %lor.rhs.do.end73_crit_edge, %if.end45.do.end73_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 563, i32 noundef 9, ptr noundef null) #6
  br label %if.end79

if.end79:                                         ; preds = %do.end73, %lor.rhs.if.end79_crit_edge
  %mem_offset87 = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %mem_offset87 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mem_offset87, align 8
  %add = add i32 %6, %offset
  %name_map.i = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 35
  %7 = ptrtoint ptr %name_map.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name_map.i, align 4
  %channel_id.i = getelementptr inbounds %struct.ipa_endpoint, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %channel_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channel_id.i, align 4
  %cmd_pool.i = getelementptr %struct.gsi, ptr %1, i32 0, i32 14, i32 %10, i32 14, i32 3
  %call.i = call ptr @gsi_trans_pool_alloc_dma(ptr noundef %cmd_pool.i, ptr noundef nonnull %payload_addr) #6
  %11 = call i16 @llvm.bswap.i16(i16 %size)
  %size88 = getelementptr inbounds %struct.ipa_cmd_hw_dma_mem_mem, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %size88 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %size88, align 2
  %conv89 = trunc i32 %add to i16
  %13 = call i16 @llvm.bswap.i16(i16 %conv89)
  %local_addr = getelementptr inbounds %struct.ipa_cmd_hw_dma_mem_mem, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %local_addr to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %local_addr, align 4
  %15 = select i1 %toward_ipa, i16 0, i16 256
  %flags93 = getelementptr inbounds %struct.ipa_cmd_hw_dma_mem_mem, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %flags93 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %flags93, align 2
  %conv94 = zext i32 %addr to i64
  %17 = call i64 @llvm.bswap.i64(i64 %conv94)
  %system_addr = getelementptr inbounds %struct.ipa_cmd_hw_dma_mem_mem, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %system_addr to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %system_addr, align 8
  %cond97 = select i1 %toward_ipa, i32 1, i32 2
  %19 = ptrtoint ptr %payload_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %payload_addr, align 4
  call void @gsi_trans_cmd_add(ptr noundef %trans, ptr noundef %call.i, i32 noundef 16, i32 noundef %20, i32 noundef %cond97, i32 noundef 19) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %payload_addr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_cmd_pipeline_clear_add(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  %payload_addr.i18 = alloca i32, align 4
  %payload_addr.i12 = alloca i32, align 4
  %payload_addr.i6 = alloca i32, align 4
  %payload_addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gsi = getelementptr inbounds %struct.gsi_trans, ptr %trans, i32 0, i32 1
  %0 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gsi, align 8
  %completion = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %completion, align 4
  %3 = load ptr, ptr %gsi, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %payload_addr.i) #6
  %4 = ptrtoint ptr %payload_addr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %payload_addr.i, align 4, !annotation !72
  %version.i = getelementptr inbounds %struct.ipa, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %version.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp.i = icmp ugt i32 %6, 3
  %spec.select = select i1 %cmp.i, i32 1036, i32 12
  %spec.select24 = select i1 %cmp.i, i32 0, i32 33554432
  %name_map.i.i = getelementptr inbounds %struct.ipa, ptr %3, i32 0, i32 35
  %7 = ptrtoint ptr %name_map.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name_map.i.i, align 4
  %channel_id.i.i = getelementptr inbounds %struct.ipa_endpoint, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %channel_id.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channel_id.i.i, align 4
  %cmd_pool.i.i = getelementptr %struct.gsi, ptr %3, i32 0, i32 14, i32 %10, i32 14, i32 3
  %call.i.i = call ptr @gsi_trans_pool_alloc_dma(ptr noundef %cmd_pool.i.i, ptr noundef nonnull %payload_addr.i) #6
  %clear_options.i = getelementptr inbounds %struct.ipa_cmd_register_write, ptr %call.i.i, i32 0, i32 4
  %11 = call ptr @memset(ptr %call.i.i, i32 0, i32 12)
  %12 = ptrtoint ptr %clear_options.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select24, ptr %clear_options.i, align 4
  %13 = ptrtoint ptr %payload_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %payload_addr.i, align 4
  call void @gsi_trans_cmd_add(ptr noundef %trans, ptr noundef %call.i.i, i32 noundef 16, i32 noundef %14, i32 noundef 3, i32 noundef %spec.select) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %payload_addr.i) #6
  %arrayidx = getelementptr %struct.ipa, ptr %1, i32 0, i32 35, i32 1
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %endpoint_id = getelementptr inbounds %struct.ipa_endpoint, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %endpoint_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %endpoint_id, align 4
  %19 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gsi, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %payload_addr.i6) #6
  %21 = ptrtoint ptr %payload_addr.i6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %payload_addr.i6, align 4, !annotation !72
  %name_map.i.i8 = getelementptr inbounds %struct.ipa, ptr %20, i32 0, i32 35
  %22 = ptrtoint ptr %name_map.i.i8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name_map.i.i8, align 4
  %channel_id.i.i9 = getelementptr inbounds %struct.ipa_endpoint, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %channel_id.i.i9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channel_id.i.i9, align 4
  %cmd_pool.i.i10 = getelementptr %struct.gsi, ptr %20, i32 0, i32 14, i32 %25, i32 14, i32 3
  %call.i.i11 = call ptr @gsi_trans_pool_alloc_dma(ptr noundef %cmd_pool.i.i10, ptr noundef nonnull %payload_addr.i6) #6
  %conv = trunc i32 %18 to i8
  %26 = and i8 %conv, 31
  %27 = ptrtoint ptr %call.i.i11 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %call.i.i11, align 1
  %28 = ptrtoint ptr %payload_addr.i6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %payload_addr.i6, align 4
  call void @gsi_trans_cmd_add(ptr noundef %trans, ptr noundef %call.i.i11, i32 noundef 8, i32 noundef %29, i32 noundef 1, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %payload_addr.i6) #6
  %30 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gsi, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %payload_addr.i12) #6
  %32 = ptrtoint ptr %payload_addr.i12 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %payload_addr.i12, align 4, !annotation !72
  %name_map.i.i14 = getelementptr inbounds %struct.ipa, ptr %31, i32 0, i32 35
  %33 = ptrtoint ptr %name_map.i.i14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name_map.i.i14, align 4
  %channel_id.i.i15 = getelementptr inbounds %struct.ipa_endpoint, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %channel_id.i.i15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %channel_id.i.i15, align 4
  %cmd_pool.i.i16 = getelementptr %struct.gsi, ptr %31, i32 0, i32 14, i32 %36, i32 14, i32 3
  %call.i.i17 = call ptr @gsi_trans_pool_alloc_dma(ptr noundef %cmd_pool.i.i16, ptr noundef nonnull %payload_addr.i12) #6
  %37 = ptrtoint ptr %call.i.i17 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 0, ptr %call.i.i17, align 8
  %38 = ptrtoint ptr %payload_addr.i12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %payload_addr.i12, align 4
  call void @gsi_trans_cmd_add(ptr noundef %trans, ptr noundef %call.i.i17, i32 noundef 8, i32 noundef %39, i32 noundef 1, i32 noundef 20) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %payload_addr.i12) #6
  %40 = ptrtoint ptr %gsi to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %gsi, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %payload_addr.i18) #6
  %42 = ptrtoint ptr %payload_addr.i18 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %payload_addr.i18, align 4, !annotation !72
  %name_map.i.i20 = getelementptr inbounds %struct.ipa, ptr %41, i32 0, i32 35
  %43 = ptrtoint ptr %name_map.i.i20 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name_map.i.i20, align 4
  %channel_id.i.i21 = getelementptr inbounds %struct.ipa_endpoint, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %channel_id.i.i21 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %channel_id.i.i21, align 4
  %cmd_pool.i.i22 = getelementptr %struct.gsi, ptr %41, i32 0, i32 14, i32 %46, i32 14, i32 3
  %call.i.i23 = call ptr @gsi_trans_pool_alloc_dma(ptr noundef %cmd_pool.i.i22, ptr noundef nonnull %payload_addr.i18) #6
  %47 = ptrtoint ptr %payload_addr.i18 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %payload_addr.i18, align 4
  call void @gsi_trans_cmd_add(ptr noundef %trans, ptr noundef %call.i.i23, i32 noundef 24, i32 noundef %48, i32 noundef 1, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %payload_addr.i18) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ipa_cmd_pipeline_clear_count() local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_cmd_pipeline_clear_wait(ptr noundef %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %completion = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 3
  tail call void @wait_for_completion(ptr noundef %completion) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipa_cmd_trans_alloc(ptr noundef %ipa, i32 noundef %tre_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %name_map = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 35
  %0 = ptrtoint ptr %name_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name_map, align 4
  %channel_id = getelementptr inbounds %struct.ipa_endpoint, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel_id, align 4
  %call = tail call ptr @gsi_channel_trans_alloc(ptr noundef %ipa, i32 noundef %3, i32 noundef %tre_count, i32 noundef 3) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %channel_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel_id, align 4
  %info_pool.i = getelementptr %struct.gsi, ptr %5, i32 0, i32 14, i32 %7, i32 14, i32 4
  %call.i = tail call ptr @gsi_trans_pool_alloc(ptr noundef %info_pool.i, i32 noundef %tre_count) #6
  %info = getelementptr inbounds %struct.gsi_trans, ptr %call, i32 0, i32 9
  %8 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %info, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gsi_channel_trans_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipa_mem_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gsi_trans_pool_alloc_dma(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gsi_trans_pool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !36, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !58, !60, !61, !62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ipa/ipa_cmd.c", i32 179, i32 30}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ipa/ipa_cmd.c", i32 179, i32 40}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ipa/ipa_cmd.c", i32 184, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ipa_cmd_table_valid._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @ipa_cmd_table_valid._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ipa/ipa_cmd.c", i32 185, i32 3}
!14 = !{ptr @ipa_cmd_table_valid._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @ipa_cmd_table_valid._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ipa/ipa_cmd.c", i32 194, i32 3}
!18 = !{ptr @ipa_cmd_table_valid._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @ipa_cmd_table_valid._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ipa/ipa_cmd.c", i32 195, i32 3}
!22 = !{ptr @ipa_cmd_table_valid._entry.13, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @ipa_cmd_table_valid._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ipa/ipa_cmd.c", i32 204, i32 3}
!26 = !{ptr @ipa_cmd_table_valid._entry.16, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ipa_cmd_table_valid._entry_ptr.18, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @ipa_cmd_table_valid._entry.19, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../drivers/net/ipa/ipa_cmd.c", i32 205, i32 3}
!30 = !{ptr @ipa_cmd_table_valid._entry_ptr.20, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ipa/ipa_cmd.c", i32 241, i32 3}
!33 = !{ptr @.str.22, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ipa_cmd_header_valid._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @ipa_cmd_header_valid._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @ipa_cmd_header_valid._entry.23, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/net/ipa/ipa_cmd.c", i32 242, i32 3}
!38 = !{ptr @ipa_cmd_header_valid._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.26, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ipa/ipa_cmd.c", i32 255, i32 3}
!41 = !{ptr @ipa_cmd_header_valid._entry.25, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ipa_cmd_header_valid._entry_ptr.27, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.29, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ipa/ipa_cmd.c", i32 256, i32 3}
!45 = !{ptr @ipa_cmd_header_valid._entry.28, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ipa_cmd_header_valid._entry_ptr.30, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.32, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ipa/ipa_cmd.c", i32 263, i32 3}
!49 = !{ptr @ipa_cmd_header_valid._entry.31, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ipa_cmd_header_valid._entry_ptr.33, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @ipa_cmd_header_valid._entry.34, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../drivers/net/ipa/ipa_cmd.c", i32 264, i32 3}
!53 = !{ptr @ipa_cmd_header_valid._entry_ptr.35, !52, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.36, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ipa/ipa_cmd.c", i32 317, i32 10}
!56 = !{ptr @.str.37, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ipa/ipa_cmd.c", i32 330, i32 9}
!58 = !{ptr @.str.38, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ipa/ipa_cmd.c", i32 298, i32 3}
!60 = !{ptr @.str.39, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @ipa_cmd_register_write_offset_valid._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @ipa_cmd_register_write_offset_valid._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"auto-init"}
!73 = !{!"branch_weights", i32 1, i32 2000}
