; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/broadcom/bnxt/bnxt_hwrm.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/bnxt/bnxt_hwrm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.bnxt = type { ptr, ptr, ptr, i32, i16, i8, [32 x i8], [32 x i8], ptr, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i16, i32, i16, i8, i8, [8 x %struct.bnxt_queue_info], [8 x i8], [8 x i8], i8, i32, %struct.timer_list, i32, ptr, i32, [6 x i8], ptr, ptr, i8, i8, i8, i32, i32, i32, i32, i16, i16, ptr, %struct.hlist_head, %struct.rtnl_link_stats64, %struct.bnxt_stats_mem, %struct.bnxt_stats_mem, %struct.bnxt_stats_mem, i16, i16, i16, [8 x i8], i8, i16, i16, i32, i32, %struct.mutex, %struct.hwrm_ver_get_output, [32 x i8], [32 x i8], [32 x i8], i64, i16, i16, i16, i16, i8, i8, i16, %struct.bnxt_coal_cap, %struct.bnxt_coal, %struct.bnxt_coal, i32, %struct.work_struct, i32, %struct.delayed_work, i32, i16, i16, i32, ptr, %struct.bnxt_hw_resc, %struct.bnxt_pf_info, ptr, i32, %struct.bnxt_vf_info, %struct.wait_queue_head, i8, %struct.mutex, %struct.spinlock, i32, [512 x %struct.hlist_head], %struct.spinlock, ptr, i32, %struct.mutex, %struct.bnxt_link_info, %struct.ethtool_eee, i32, i32, i8, i8, ptr, i8, i8, i8, [4 x %struct.bnxt_led_info], i16, ptr, ptr, ptr, %struct.devlink_port, i32, ptr, ptr, [8 x i8], ptr, %struct.list_head, ptr, ptr, i32 }
%struct.bnxt_queue_info = type { i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bnxt_stats_mem = type { ptr, ptr, ptr, i32, i32 }
%struct.hwrm_ver_get_output = type { i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8, i8, i8, i16, i16, i16, i8, [2 x i8], i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i8], i8 }
%struct.bnxt_coal_cap = type { i32, i32, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.bnxt_coal = type { i16, i16, i16, i16, i16, i8, i8, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.bnxt_hw_resc = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.bnxt_pf_info = type { i16, i16, [6 x i8], i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, ptr, i16, i8, [4 x ptr], [4 x i32], ptr }
%struct.bnxt_vf_info = type { i16, [6 x i8], [6 x i8], i16, i16, i32, i32, i32, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bnxt_link_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i32, %struct.hwrm_port_phy_qcfg_output }
%struct.hwrm_port_phy_qcfg_output = type { i16, i16, i16, i16, i8, i8, i16, i8, i8, i16, i16, i8, i8, i16, i16, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i16, i32, i16, i8, i8, [16 x i8], [16 x i8], i16, i16, i16, i8, i8 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.bnxt_led_info = type { i8, i8, i8, i8, i16, i16 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.144 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.144 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.list_head = type { ptr, ptr }
%struct.input = type { i16, i16, i16, i16, i64 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.156, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.156 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bnxt_hwrm_wait_token = type { %struct.callback_head, %struct.hlist_node, i32, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.hwrm_short_input = type { i16, i16, i16, i16, i64 }
%struct.bnxt_hwrm_ctx = type { i64, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32 }
%struct.bnxt_fw_health = type { i32, i32, i32, i32, i32, i32, [4 x i32], [4 x i32], i32, i32, i32, i8, i8, i8, i8, [16 x i32], [16 x i32], [16 x i32], i32, i32, ptr, %struct.mutex, i32, i32, i32, i32, i32, i32, i32 }
%struct.output = type { i16, i16, i16, i16 }

@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"HWRM context already owned, req_type = %u\0A\00", [53 x i8] zeroinitializer }, align 32
@hwrm_update_token.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/broadcom/bnxt/bnxt_hwrm.c\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid hwrm seq id %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"HWRM refusing to reallocate DMA slice, req_type = %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"null HWRM request\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"HWRM sentinel mismatch, req_type = %u\0A\00", [57 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__hwrm_send.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.1, ptr @.str.12, i8 0, i8 120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bnxt_en\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"__hwrm_send\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"hwrm req_type 0x%x skipped, FW channel down\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Ring completions not supported for KONG commands, req_type = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@__hwrm_send.__UNIQUE_ID_ddebug622 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.1, ptr @.str.14, i8 0, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Resp cmpl intr abandoning msg: 0x%x due to firmware status: 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@__hwrm_send.__UNIQUE_ID_ddebug624 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.1, ptr @.str.15, i8 0, i8 -111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Resp cmpl intr err msg: 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Discarding out of seq response: 0x%x for msg {0x%x 0x%x}\0A\00", [38 x i8] zeroinitializer }, align 32
@__hwrm_send.__UNIQUE_ID_ddebug629 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.1, ptr @.str.17, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Abandoning msg {0x%x 0x%x} len: %d due to firmware status: 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@__hwrm_send.__UNIQUE_ID_ddebug630 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.1, ptr @.str.18, i8 0, i8 -96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Error (timeout: %u) msg {0x%x 0x%x} len:%d\0A\00", [52 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__hwrm_send.__UNIQUE_ID_ddebug631 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.1, ptr @.str.19, i8 0, i8 -90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Error (timeout: %u) msg {0x%x 0x%x} len:%d v:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"FW returned busy, hwrm req_type 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@__hwrm_send.__UNIQUE_ID_ddebug632 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.1, ptr @.str.21, i8 0, i8 -86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"hwrm req_type 0x%x seq id 0x%x error 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__const.hwrm_req_dbg.opt = private unnamed_addr constant [32 x i8] c"\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" ring %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" tgt 0x%x\0A\00", [21 x i8] zeroinitializer }, align 32
@hwrm_req_dbg.__UNIQUE_ID_ddebug617 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.24, ptr @.str.1, ptr @.str.25, i8 0, i8 109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hwrm_req_dbg\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"sent hwrm req_type 0x%x seq id 0x%x%s\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [19 x i64] [i64 17, i64 16, i64 151, i64 152, i64 156, i64 157, i64 158, i64 245, i64 246, i64 247, i64 248, i64 249, i64 259, i64 260, i64 261, i64 262, i64 263, i64 264, i64 265]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 4096, i64 4608]
@__sancov_gen_cov_switch_values.27 = internal global [16 x i64] [i64 14, i64 16, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 16, i64 17, i64 18, i64 65535]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 288, i32 23 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 410, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 418, i32 22 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 800, i32 23 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 107, i32 23 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 116, i32 23 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 695, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 723, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 480, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 496, i32 24 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 572, i32 6 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 582, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 613, i32 27 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 627, i32 6 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 639, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 662, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 676, i32 24 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 679, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 430, i32 21 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 433, i32 39 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [50 x i8] c"../drivers/net/ethernet/broadcom/bnxt/bnxt_hwrm.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 435, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__hwrm_req_init(ptr nocapture noundef readonly %bp, ptr nocapture noundef writeonly %req, i16 noundef zeroext %req_type, i32 noundef %req_len) local_unnamed_addr #0 align 64 {
entry:
  %dma_handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_handle) #10
  %0 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma_handle, align 4, !annotation !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 4040, i32 %req_len)
  %cmp = icmp ugt i32 %req_len, 4040
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %hwrm_dma_pool = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 79
  %1 = ptrtoint ptr %hwrm_dma_pool to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hwrm_dma_pool, align 8
  %call = call ptr @dma_pool_alloc(ptr noundef %2, i32 noundef 3520, ptr noundef nonnull %dma_handle) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %call, i32 4040
  %3 = ptrtoint ptr %add.ptr to i32
  %conv.i = zext i16 %req_type to i32
  %add.i = add i32 %3, %conv.i
  %conv1.i = zext i32 %add.i to i64
  %xor.i = xor i64 %conv1.i, -5268659016163547157
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %xor.i, ptr %add.ptr, align 8
  %req_len4 = getelementptr i8, ptr %call, i32 4072
  %5 = ptrtoint ptr %req_len4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %req_len, ptr %req_len4, align 8
  %req5 = getelementptr i8, ptr %call, i32 4056
  %6 = ptrtoint ptr %req5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %req5, align 8
  %add.ptr6 = getelementptr i8, ptr %call, i32 4096
  %resp = getelementptr i8, ptr %call, i32 4052
  %7 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr6, ptr %resp, align 4
  %8 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_handle, align 4
  %dma_handle7 = getelementptr i8, ptr %call, i32 4048
  %10 = ptrtoint ptr %dma_handle7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dma_handle7, align 8
  %flags = getelementptr i8, ptr %call, i32 4076
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %flags, align 4
  %hwrm_cmd_timeout = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 92
  %12 = ptrtoint ptr %hwrm_cmd_timeout to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwrm_cmd_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not = icmp eq i32 %13, 0
  %. = select i1 %tobool8.not, i32 500, i32 %13
  %timeout = getelementptr i8, ptr %call, i32 4080
  %14 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %., ptr %timeout, align 8
  %allocated = getelementptr i8, ptr %call, i32 4084
  %15 = ptrtoint ptr %allocated to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4152, ptr %allocated, align 4
  %gfp = getelementptr i8, ptr %call, i32 4088
  %16 = ptrtoint ptr %gfp to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3264, ptr %gfp, align 8
  %slice_addr = getelementptr i8, ptr %call, i32 4064
  %17 = ptrtoint ptr %slice_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %slice_addr, align 8
  %18 = call i16 @llvm.bswap.i16(i16 %req_type)
  %19 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %call, align 8
  %20 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_handle, align 4
  %add = add i32 %21, 4096
  %conv = zext i32 %add to i64
  %22 = call i64 @llvm.bswap.i64(i64 %conv)
  %resp_addr = getelementptr inbounds %struct.input, ptr %call, i32 0, i32 4
  %23 = ptrtoint ptr %resp_addr to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %resp_addr, align 8
  %cmpl_ring = getelementptr inbounds %struct.input, ptr %call, i32 0, i32 1
  %24 = ptrtoint ptr %cmpl_ring to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %cmpl_ring, align 2
  %target_id = getelementptr inbounds %struct.input, ptr %call, i32 0, i32 3
  %25 = ptrtoint ptr %target_id to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %target_id, align 2
  %26 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call, ptr %req, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -7, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_handle) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hwrm_req_timeout(ptr nocapture noundef readonly %bp, ptr noundef %req, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %req, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.5) #13
  br label %__hwrm_ctx.exit.thread

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %req, i32 4040
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %req, align 8
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #10
  %5 = ptrtoint ptr %add.ptr.i to i32
  %conv.i.i = zext i16 %4 to i32
  %add.i.i = add i32 %conv.i.i, %5
  %conv1.i.i = zext i32 %add.i.i to i64
  %xor.i.i = xor i64 %conv1.i.i, -5268659016163547157
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %xor.i.i)
  %cmp.not.i = icmp eq i64 %7, %xor.i.i
  br i1 %cmp.not.i, label %__hwrm_ctx.exit, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev3.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %8 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef %conv.i.i) #13
  br label %__hwrm_ctx.exit.thread

__hwrm_ctx.exit.thread:                           ; preds = %if.then2.i, %if.then.i
  tail call void @dump_stack() #13
  br label %if.end

__hwrm_ctx.exit:                                  ; preds = %if.end.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %__hwrm_ctx.exit.if.end_crit_edge, label %if.then

__hwrm_ctx.exit.if.end_crit_edge:                 ; preds = %__hwrm_ctx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %__hwrm_ctx.exit
  call void @__sanitizer_cov_trace_pc() #12
  %timeout1 = getelementptr i8, ptr %req, i32 4080
  %10 = ptrtoint ptr %timeout1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %timeout, ptr %timeout1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %__hwrm_ctx.exit.if.end_crit_edge, %__hwrm_ctx.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hwrm_req_alloc_flags(ptr nocapture noundef readonly %bp, ptr noundef %req, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %req, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.5) #13
  br label %__hwrm_ctx.exit.thread

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %req, i32 4040
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %req, align 8
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #10
  %5 = ptrtoint ptr %add.ptr.i to i32
  %conv.i.i = zext i16 %4 to i32
  %add.i.i = add i32 %conv.i.i, %5
  %conv1.i.i = zext i32 %add.i.i to i64
  %xor.i.i = xor i64 %conv1.i.i, -5268659016163547157
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %xor.i.i)
  %cmp.not.i = icmp eq i64 %7, %xor.i.i
  br i1 %cmp.not.i, label %__hwrm_ctx.exit, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev3.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %8 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef %conv.i.i) #13
  br label %__hwrm_ctx.exit.thread

__hwrm_ctx.exit.thread:                           ; preds = %if.then2.i, %if.then.i
  tail call void @dump_stack() #13
  br label %if.end

__hwrm_ctx.exit:                                  ; preds = %if.end.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %__hwrm_ctx.exit.if.end_crit_edge, label %if.then

__hwrm_ctx.exit.if.end_crit_edge:                 ; preds = %__hwrm_ctx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %__hwrm_ctx.exit
  call void @__sanitizer_cov_trace_pc() #12
  %gfp1 = getelementptr i8, ptr %req, i32 4088
  %10 = ptrtoint ptr %gfp1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %gfp, ptr %gfp1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %__hwrm_ctx.exit.if.end_crit_edge, %__hwrm_ctx.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hwrm_req_replace(ptr nocapture noundef readonly %bp, ptr noundef %req, ptr noundef %new_req, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %req, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.5) #13
  br label %__hwrm_ctx.exit.thread

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %req, i32 4040
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %req, align 8
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #10
  %5 = ptrtoint ptr %add.ptr.i to i32
  %conv.i.i = zext i16 %4 to i32
  %add.i.i = add i32 %conv.i.i, %5
  %conv1.i.i = zext i32 %add.i.i to i64
  %xor.i.i = xor i64 %conv1.i.i, -5268659016163547157
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %xor.i.i)
  %cmp.not.i = icmp eq i64 %7, %xor.i.i
  br i1 %cmp.not.i, label %__hwrm_ctx.exit, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev3.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %8 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef %conv.i.i) #13
  br label %__hwrm_ctx.exit.thread

__hwrm_ctx.exit.thread:                           ; preds = %if.then2.i, %if.then.i
  tail call void @dump_stack() #13
  br label %cleanup

__hwrm_ctx.exit:                                  ; preds = %if.end.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %__hwrm_ctx.exit.cleanup_crit_edge, label %if.end

__hwrm_ctx.exit.cleanup_crit_edge:                ; preds = %__hwrm_ctx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %__hwrm_ctx.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4040, i32 %len)
  %cmp = icmp ugt i32 %len, 4040
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %allocated = getelementptr i8, ptr %req, i32 4084
  %10 = ptrtoint ptr %allocated to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4152, ptr %allocated, align 4
  %slice_addr = getelementptr i8, ptr %req, i32 4064
  %11 = ptrtoint ptr %slice_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %slice_addr, align 8
  %tobool3.not = icmp eq ptr %12, null
  br i1 %tobool3.not, label %if.end2.if.end7_crit_edge, label %if.then4

if.end2.if.end7_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 9
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %slice_size = getelementptr i8, ptr %req, i32 4068
  %15 = ptrtoint ptr %slice_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slice_size, align 4
  %slice_handle = getelementptr i8, ptr %req, i32 4060
  %17 = ptrtoint ptr %slice_handle to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %slice_handle, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %16, ptr noundef nonnull %12, i32 noundef %18, i32 noundef 0) #10
  %19 = ptrtoint ptr %slice_addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %slice_addr, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end2.if.end7_crit_edge
  %gfp = getelementptr i8, ptr %req, i32 4088
  %20 = ptrtoint ptr %gfp to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3264, ptr %gfp, align 8
  %fw_cap = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 74
  %21 = ptrtoint ptr %fw_cap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fw_cap, align 8
  %and = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %if.end7.if.then11_crit_edge

if.end7.if.then11_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.end7
  %hwrm_max_req_len = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 90
  %23 = ptrtoint ptr %hwrm_max_req_len to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %hwrm_max_req_len, align 4
  %conv = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %len)
  %cmp9 = icmp ult i32 %conv, %len
  br i1 %cmp9, label %lor.lhs.false.if.then11_crit_edge, label %if.else

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %if.end7.if.then11_crit_edge
  %25 = call ptr @memcpy(ptr %req, ptr %new_req, i32 %len)
  br label %if.end15

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %new_req to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %new_req, align 8
  %28 = ptrtoint ptr %req to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %req, align 8
  %req14 = getelementptr i8, ptr %req, i32 4056
  %29 = ptrtoint ptr %req14 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %new_req, ptr %req14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then11
  %req_len = getelementptr i8, ptr %req, i32 4072
  %30 = ptrtoint ptr %req_len to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %len, ptr %req_len, align 8
  %dma_handle = getelementptr i8, ptr %req, i32 4048
  %31 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_handle, align 8
  %add = add i32 %32, 4096
  %conv16 = zext i32 %add to i64
  %33 = tail call i64 @llvm.bswap.i64(i64 %conv16)
  %req17 = getelementptr i8, ptr %req, i32 4056
  %34 = ptrtoint ptr %req17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %req17, align 8
  %resp_addr = getelementptr inbounds %struct.input, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %resp_addr to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %33, ptr %resp_addr, align 8
  %37 = ptrtoint ptr %req to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %req, align 8
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  %conv.i = zext i16 %39 to i32
  %add.i = add i32 %conv.i, %5
  %conv1.i = zext i32 %add.i to i64
  %xor.i = xor i64 %conv1.i, -5268659016163547157
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %xor.i, ptr %add.ptr.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end.cleanup_crit_edge, %__hwrm_ctx.exit.cleanup_crit_edge, %__hwrm_ctx.exit.thread
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -22, %__hwrm_ctx.exit.cleanup_crit_edge ], [ -7, %if.end.cleanup_crit_edge ], [ -22, %__hwrm_ctx.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hwrm_req_flags(ptr nocapture noundef readonly %bp, ptr noundef %req, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %req, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.5) #13
  br label %__hwrm_ctx.exit.thread

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %req, i32 4040
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %req, align 8
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #10
  %5 = ptrtoint ptr %add.ptr.i to i32
  %conv.i.i = zext i16 %4 to i32
  %add.i.i = add i32 %conv.i.i, %5
  %conv1.i.i = zext i32 %add.i.i to i64
  %xor.i.i = xor i64 %conv1.i.i, -5268659016163547157
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %xor.i.i)
  %cmp.not.i = icmp eq i64 %7, %xor.i.i
  br i1 %cmp.not.i, label %__hwrm_ctx.exit, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev3.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %8 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef %conv.i.i) #13
  br label %__hwrm_ctx.exit.thread

__hwrm_ctx.exit.thread:                           ; preds = %if.then2.i, %if.then.i
  tail call void @dump_stack() #13
  br label %if.end

__hwrm_ctx.exit:                                  ; preds = %if.end.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %__hwrm_ctx.exit.if.end_crit_edge, label %if.then

__hwrm_ctx.exit.if.end_crit_edge:                 ; preds = %__hwrm_ctx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %__hwrm_ctx.exit
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %flags, 12
  %flags1 = getelementptr i8, ptr %req, i32 4076
  %10 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags1, align 4
  %or = or i32 %11, %and
  store i32 %or, ptr %flags1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %__hwrm_ctx.exit.if.end_crit_edge, %__hwrm_ctx.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hwrm_req_hold(ptr nocapture noundef readonly %bp, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %req, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.5) #13
  br label %__hwrm_ctx.exit.thread

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %req, i32 4040
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %req, align 8
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #10
  %5 = ptrtoint ptr %add.ptr.i to i32
  %conv.i.i = zext i16 %4 to i32
  %add.i.i = add i32 %conv.i.i, %5
  %conv1.i.i = zext i32 %add.i.i to i64
  %xor.i.i = xor i64 %conv1.i.i, -5268659016163547157
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %xor.i.i)
  %cmp.not.i = icmp eq i64 %7, %xor.i.i
  br i1 %cmp.not.i, label %__hwrm_ctx.exit, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev3.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %8 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef %conv.i.i) #13
  br label %__hwrm_ctx.exit.thread

__hwrm_ctx.exit.thread:                           ; preds = %if.then2.i, %if.then.i
  tail call void @dump_stack() #13
  br label %cleanup

__hwrm_ctx.exit:                                  ; preds = %if.end.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %__hwrm_ctx.exit.cleanup_crit_edge, label %if.end

__hwrm_ctx.exit.cleanup_crit_edge:                ; preds = %__hwrm_ctx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %__hwrm_ctx.exit
  %flags = getelementptr i8, ptr %req, i32 4076
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %req to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %req, align 8
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv = zext i16 %16 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str, i32 noundef %conv) #13
  tail call void @dump_stack() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %11, 1
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or, ptr %flags, align 4
  %add.ptr = getelementptr i8, ptr %req, i32 4096
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %__hwrm_ctx.exit.cleanup_crit_edge, %__hwrm_ctx.exit.thread
  %retval.0 = phi ptr [ null, %if.then2 ], [ %add.ptr, %if.end3 ], [ null, %__hwrm_ctx.exit.cleanup_crit_edge ], [ null, %__hwrm_ctx.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hwrm_req_drop(ptr nocapture noundef readonly %bp, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %req, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.5) #13
  br label %__hwrm_ctx.exit.thread

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %req, i32 4040
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %req, align 8
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #10
  %5 = ptrtoint ptr %add.ptr.i to i32
  %conv.i.i = zext i16 %4 to i32
  %add.i.i = add i32 %conv.i.i, %5
  %conv1.i.i = zext i32 %add.i.i to i64
  %xor.i.i = xor i64 %conv1.i.i, -5268659016163547157
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %xor.i.i)
  %cmp.not.i = icmp eq i64 %7, %xor.i.i
  br i1 %cmp.not.i, label %__hwrm_ctx.exit, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev3.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %8 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef %conv.i.i) #13
  br label %__hwrm_ctx.exit.thread

__hwrm_ctx.exit.thread:                           ; preds = %if.then2.i, %if.then.i
  tail call void @dump_stack() #13
  br label %if.end

__hwrm_ctx.exit:                                  ; preds = %if.end.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %__hwrm_ctx.exit.if.end_crit_edge, label %if.then

__hwrm_ctx.exit.if.end_crit_edge:                 ; preds = %__hwrm_ctx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %__hwrm_ctx.exit
  %dma_handle1.i = getelementptr i8, ptr %req, i32 4048
  %10 = ptrtoint ptr %dma_handle1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_handle1.i, align 8
  %slice_addr.i = getelementptr i8, ptr %req, i32 4064
  %12 = ptrtoint ptr %slice_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %slice_addr.i, align 8
  %tobool.not.i4 = icmp eq ptr %13, null
  br i1 %tobool.not.i4, label %if.then.if.end.i7_crit_edge, label %if.then.i6

if.then.if.end.i7_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i7

if.then.i6:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 9
  %14 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev.i, align 8
  %dev.i5 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %slice_size.i = getelementptr i8, ptr %req, i32 4068
  %16 = ptrtoint ptr %slice_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slice_size.i, align 4
  %slice_handle.i = getelementptr i8, ptr %req, i32 4060
  %18 = ptrtoint ptr %slice_handle.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %slice_handle.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i5, i32 noundef %17, ptr noundef nonnull %13, i32 noundef %19, i32 noundef 0) #10
  br label %if.end.i7

if.end.i7:                                        ; preds = %if.then.i6, %if.then.if.end.i7_crit_edge
  %20 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not.i = icmp eq i32 %11, 0
  br i1 %tobool3.not.i, label %if.end.i7.if.end_crit_edge, label %if.then4.i

if.end.i7.if.end_crit_edge:                       ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then4.i:                                       ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #12
  %hwrm_dma_pool.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 79
  %21 = ptrtoint ptr %hwrm_dma_pool.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hwrm_dma_pool.i, align 8
  tail call void @dma_pool_free(ptr noundef %22, ptr noundef nonnull %req, i32 noundef %11) #10
  br label %if.end

if.end:                                           ; preds = %if.then4.i, %if.end.i7.if.end_crit_edge, %__hwrm_ctx.exit.if.end_crit_edge, %__hwrm_ctx.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hwrm_update_token(ptr noundef %bp, i16 noundef zeroext %seq_id, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !69
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b52 = load i1, ptr @hwrm_update_token.__warned, align 1
  br i1 %.b52, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @hwrm_update_token.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 410, ptr noundef nonnull @.str.2) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %hwrm_pending_list = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 80
  %4 = ptrtoint ptr %hwrm_pending_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hwrm_pending_list, align 4
  %tobool10.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -8
  %tobool12.not7780 = icmp eq ptr %add.ptr, null
  %tobool12.not77 = or i1 %tobool10.not, %tobool12.not7780
  br i1 %tobool12.not77, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %token.078 = phi ptr [ %add.ptr39, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %seq_id13 = getelementptr inbounds %struct.bnxt_hwrm_wait_token, ptr %token.078, i32 0, i32 4
  %6 = ptrtoint ptr %seq_id13 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %seq_id13, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %seq_id)
  %cmp = icmp eq i16 %7, %seq_id
  br i1 %cmp, label %do.body21, label %for.inc

do.body21:                                        ; preds = %for.body
  %state22 = getelementptr inbounds %struct.bnxt_hwrm_wait_token, ptr %token.078, i32 0, i32 2
  %8 = ptrtoint ptr %state22 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %state, ptr %state22, align 4
  %call.i54 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i54, label %do.body21.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i57

do.body21.rcu_read_unlock.exit_crit_edge:         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i57:                                ; preds = %do.body21
  %call1.i55 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55)
  %tobool.not.i56 = icmp eq i32 %call1.i55, 0
  br i1 %tobool.not.i56, label %land.lhs.true.i57.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i59

land.lhs.true.i57.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i59:                               ; preds = %land.lhs.true.i57
  %.b4.i58 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i58, label %land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge, label %if.then.i60

land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i60:                                      ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i60, %land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i57.rcu_read_unlock.exit_crit_edge, %do.body21.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !70
  %9 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i.i.i.i61 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i61 to ptr
  %preempt_count.i.i.i.i62 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i62, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i62, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %node = getelementptr inbounds %struct.bnxt_hwrm_wait_token, ptr %token.078, i32 0, i32 1
  %13 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %node, align 4
  %tobool35.not = icmp eq ptr %14, null
  %add.ptr39 = getelementptr i8, ptr %14, i32 -8
  %tobool12.not82 = icmp eq ptr %add.ptr39, null
  %tobool12.not = or i1 %tobool35.not, %tobool12.not82
  br i1 %tobool12.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i63 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i63, label %for.end.rcu_read_unlock.exit73_crit_edge, label %land.lhs.true.i66

for.end.rcu_read_unlock.exit73_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit73

land.lhs.true.i66:                                ; preds = %for.end
  %call1.i64 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i64)
  %tobool.not.i65 = icmp eq i32 %call1.i64, 0
  br i1 %tobool.not.i65, label %land.lhs.true.i66.rcu_read_unlock.exit73_crit_edge, label %land.lhs.true2.i68

land.lhs.true.i66.rcu_read_unlock.exit73_crit_edge: ; preds = %land.lhs.true.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit73

land.lhs.true2.i68:                               ; preds = %land.lhs.true.i66
  %.b4.i67 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i67, label %land.lhs.true2.i68.rcu_read_unlock.exit73_crit_edge, label %if.then.i69

land.lhs.true2.i68.rcu_read_unlock.exit73_crit_edge: ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit73

if.then.i69:                                      ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_unlock.exit73

rcu_read_unlock.exit73:                           ; preds = %if.then.i69, %land.lhs.true2.i68.rcu_read_unlock.exit73_crit_edge, %land.lhs.true.i66.rcu_read_unlock.exit73_crit_edge, %for.end.rcu_read_unlock.exit73_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !70
  %15 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i.i.i.i70 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i70 to ptr
  %preempt_count.i.i.i.i71 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i71, align 4
  %sub.i.i.i72 = add i32 %18, -1
  store volatile i32 %sub.i.i.i72, ptr %preempt_count.i.i.i.i71, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %conv43 = zext i16 %seq_id to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.3, i32 noundef %conv43) #13
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit73, %rcu_read_unlock.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %req, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.5) #13
  br label %__hwrm_ctx.exit.thread

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %req, i32 4040
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %req, align 8
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #10
  %5 = ptrtoint ptr %add.ptr.i to i32
  %conv.i.i = zext i16 %4 to i32
  %add.i.i = add i32 %conv.i.i, %5
  %conv1.i.i = zext i32 %add.i.i to i64
  %xor.i.i = xor i64 %conv1.i.i, -5268659016163547157
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %xor.i.i)
  %cmp.not.i = icmp eq i64 %7, %xor.i.i
  br i1 %cmp.not.i, label %__hwrm_ctx.exit, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev3.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %8 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef %conv.i.i) #13
  br label %__hwrm_ctx.exit.thread

__hwrm_ctx.exit.thread:                           ; preds = %if.then2.i, %if.then.i
  tail call void @dump_stack() #13
  br label %cleanup

__hwrm_ctx.exit:                                  ; preds = %if.end.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %__hwrm_ctx.exit.cleanup_crit_edge, label %if.end

__hwrm_ctx.exit.cleanup_crit_edge:                ; preds = %__hwrm_ctx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %__hwrm_ctx.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call fastcc i32 @__hwrm_send(ptr noundef %bp, ptr noundef nonnull %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %__hwrm_ctx.exit.cleanup_crit_edge, %__hwrm_ctx.exit.thread
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %__hwrm_ctx.exit.cleanup_crit_edge ], [ -22, %__hwrm_ctx.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__hwrm_send(ptr noundef %bp, ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  %short_input = alloca %struct.hwrm_short_input, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %short_input) #10
  %0 = call ptr @memset(ptr %short_input, i32 0, i32 16)
  %hwrm_max_req_len = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 90
  %1 = ptrtoint ptr %hwrm_max_req_len to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %hwrm_max_req_len, align 4
  %req = getelementptr inbounds %struct.bnxt_hwrm_ctx, ptr %ctx, i32 0, i32 3
  %3 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %req, align 8
  %req_len = getelementptr inbounds %struct.bnxt_hwrm_ctx, ptr %ctx, i32 0, i32 7
  %5 = ptrtoint ptr %req_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req_len, align 8
  %flags = getelementptr inbounds %struct.bnxt_hwrm_ctx, ptr %ctx, i32 0, i32 8
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %resp = getelementptr inbounds %struct.bnxt_hwrm_ctx, ptr %ctx, i32 0, i32 2
  %9 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resp, align 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 4096)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %req, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 8
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv = zext i16 %16 to i32
  %state = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 64
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state, align 4
  %19 = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool3.not = icmp eq i32 %19, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end
  %pdev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 9
  %20 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev, align 8
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 43
  %22 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.i.not = icmp eq i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4352, i16 %15)
  %cmp.not = icmp eq i16 %15, 4352
  %or.cond = select i1 %cmp.i.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %lor.lhs.false.if.end17_crit_edge, label %lor.lhs.false.do.body8_crit_edge

lor.lhs.false.do.body8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 4352, i16 %15)
  %cmp.not.old = icmp eq i16 %15, 4352
  br i1 %cmp.not.old, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true.do.body8_crit_edge

land.lhs.true.do.body8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.body8:                                         ; preds = %land.lhs.true.do.body8_crit_edge, %lor.lhs.false.do.body8_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__hwrm_send.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hwrm_send, %if.then13)) #10
          to label %exit [label %if.then13], !srcloc !71

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__hwrm_send.__UNIQUE_ID_ddebug618, ptr noundef %25, ptr noundef nonnull @.str.12, i32 noundef %conv) #10
  br label %if.end477

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %lor.lhs.false.if.end17_crit_edge
  %26 = ptrtoint ptr %hwrm_max_req_len to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %hwrm_max_req_len, align 4
  %conv19 = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv19)
  %cmp20 = icmp ugt i32 %6, %conv19
  br i1 %cmp20, label %land.lhs.true22, label %if.end17.if.end27_crit_edge

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true22:                                  ; preds = %if.end17
  %hwrm_max_ext_req_len = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 91
  %28 = ptrtoint ptr %hwrm_max_ext_req_len to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %hwrm_max_ext_req_len, align 2
  %conv23 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv23)
  %cmp24 = icmp ugt i32 %6, %conv23
  br i1 %cmp24, label %land.lhs.true22.if.end477_crit_edge, label %land.lhs.true22.if.end27_crit_edge

land.lhs.true22.if.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true22.if.end477_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end477

if.end27:                                         ; preds = %land.lhs.true22.if.end27_crit_edge, %if.end17.if.end27_crit_edge
  %fw_cap.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 74
  %30 = ptrtoint ptr %fw_cap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fw_cap.i, align 8
  %and.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end27.if.end38_crit_edge, label %land.rhs.i

if.end27.if.end38_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

land.rhs.i:                                       ; preds = %if.end27
  %32 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i16 %16, label %bnxt_kong_hwrm_message.exit [
    i16 151, label %land.rhs.i.if.then30_crit_edge
    i16 152, label %land.rhs.i.if.then30_crit_edge862
    i16 264, label %land.rhs.i.if.then30_crit_edge863
    i16 265, label %land.rhs.i.if.then30_crit_edge864
    i16 156, label %land.rhs.i.if.then30_crit_edge865
    i16 157, label %land.rhs.i.if.then30_crit_edge866
    i16 158, label %land.rhs.i.if.then30_crit_edge867
    i16 259, label %land.rhs.i.if.then30_crit_edge868
    i16 260, label %land.rhs.i.if.then30_crit_edge869
    i16 263, label %land.rhs.i.if.then30_crit_edge870
    i16 261, label %land.rhs.i.if.then30_crit_edge871
    i16 262, label %land.rhs.i.if.then30_crit_edge872
    i16 245, label %land.rhs.i.if.then30_crit_edge873
    i16 246, label %land.rhs.i.if.then30_crit_edge874
    i16 247, label %land.rhs.i.if.then30_crit_edge875
    i16 248, label %land.rhs.i.if.then30_crit_edge876
    i16 249, label %land.rhs.i.if.then30_crit_edge877
  ]

land.rhs.i.if.then30_crit_edge877:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

land.rhs.i.if.then30_crit_edge876:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

land.rhs.i.if.then30_crit_edge875:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

land.rhs.i.if.then30_crit_edge874:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

land.rhs.i.if.then30_crit_edge873:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

land.rhs.i.if.then30_crit_edge872:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

land.rhs.i.if.then30_crit_edge871:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

land.rhs.i.if.then30_crit_edge870:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

land.rhs.i.if.then30_crit_edge869:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

land.rhs.i.if.then30_crit_edge868:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

land.rhs.i.if.then30_crit_edge867:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

land.rhs.i.if.then30_crit_edge866:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

land.rhs.i.if.then30_crit_edge865:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

land.rhs.i.if.then30_crit_edge864:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

land.rhs.i.if.then30_crit_edge863:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

land.rhs.i.if.then30_crit_edge862:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

land.rhs.i.if.then30_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

bnxt_kong_hwrm_message.exit:                      ; preds = %land.rhs.i
  %target_id.i = getelementptr inbounds %struct.input, ptr %13, i32 0, i32 3
  %33 = ptrtoint ptr %target_id.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %target_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1537, i16 %34)
  %cmp.i680 = icmp eq i16 %34, -1537
  br i1 %cmp.i680, label %bnxt_kong_hwrm_message.exit.if.then30_crit_edge, label %bnxt_kong_hwrm_message.exit.if.end38_crit_edge

bnxt_kong_hwrm_message.exit.if.end38_crit_edge:   ; preds = %bnxt_kong_hwrm_message.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

bnxt_kong_hwrm_message.exit.if.then30_crit_edge:  ; preds = %bnxt_kong_hwrm_message.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

if.then30:                                        ; preds = %bnxt_kong_hwrm_message.exit.if.then30_crit_edge, %land.rhs.i.if.then30_crit_edge, %land.rhs.i.if.then30_crit_edge862, %land.rhs.i.if.then30_crit_edge863, %land.rhs.i.if.then30_crit_edge864, %land.rhs.i.if.then30_crit_edge865, %land.rhs.i.if.then30_crit_edge866, %land.rhs.i.if.then30_crit_edge867, %land.rhs.i.if.then30_crit_edge868, %land.rhs.i.if.then30_crit_edge869, %land.rhs.i.if.then30_crit_edge870, %land.rhs.i.if.then30_crit_edge871, %land.rhs.i.if.then30_crit_edge872, %land.rhs.i.if.then30_crit_edge873, %land.rhs.i.if.then30_crit_edge874, %land.rhs.i.if.then30_crit_edge875, %land.rhs.i.if.then30_crit_edge876, %land.rhs.i.if.then30_crit_edge877
  %cmpl_ring = getelementptr inbounds %struct.input, ptr %13, i32 0, i32 1
  %35 = ptrtoint ptr %cmpl_ring to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %cmpl_ring, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %36)
  %cmp33.not = icmp eq i16 %36, -1
  br i1 %cmp33.not, label %if.then30.if.end38_crit_edge, label %if.then35

if.then30.if.end38_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then35:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  %dev36 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %37 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev36, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %38, ptr noundef nonnull @.str.13, i32 noundef %conv) #13
  br label %if.end477

if.end38:                                         ; preds = %if.then30.if.end38_crit_edge, %bnxt_kong_hwrm_message.exit.if.end38_crit_edge, %if.end27.if.end38_crit_edge
  %bar_offset.0 = phi i32 [ 2560, %if.then30.if.end38_crit_edge ], [ 0, %bnxt_kong_hwrm_message.exit.if.end38_crit_edge ], [ 0, %if.end27.if.end38_crit_edge ]
  %cmp.i682 = phi i1 [ false, %if.then30.if.end38_crit_edge ], [ true, %bnxt_kong_hwrm_message.exit.if.end38_crit_edge ], [ true, %if.end27.if.end38_crit_edge ]
  %dst.0 = phi i32 [ 1, %if.then30.if.end38_crit_edge ], [ 0, %bnxt_kong_hwrm_message.exit.if.end38_crit_edge ], [ 0, %if.end27.if.end38_crit_edge ]
  %doorbell_offset.0 = phi i32 [ 2816, %if.then30.if.end38_crit_edge ], [ 256, %bnxt_kong_hwrm_message.exit.if.end38_crit_edge ], [ 256, %if.end27.if.end38_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 28) #14
  %tobool.not.i681 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i681, label %if.end38.if.end477_crit_edge, label %if.end.i

if.end38.if.end477_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end477

if.end.i:                                         ; preds = %if.end38
  %hwrm_cmd_lock.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 94
  tail call void @mutex_lock_nested(ptr noundef %hwrm_cmd_lock.i, i32 noundef 0) #10
  %dst1.i = getelementptr inbounds %struct.bnxt_hwrm_wait_token, ptr %call7.i.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %dst1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %dst.0, ptr %dst1.i, align 4
  %state.i = getelementptr inbounds %struct.bnxt_hwrm_wait_token, ptr %call7.i.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %state.i, align 8
  br i1 %cmp.i682, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  %hwrm_cmd_seq.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 77
  %42 = ptrtoint ptr %hwrm_cmd_seq.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %hwrm_cmd_seq.i, align 4
  %inc.i = add i16 %43, 1
  store i16 %inc.i, ptr %hwrm_cmd_seq.i, align 4
  %seq_id.i = getelementptr inbounds %struct.bnxt_hwrm_wait_token, ptr %call7.i.i.i, i32 0, i32 4
  %44 = ptrtoint ptr %seq_id.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %seq_id.i, align 8
  %node.i = getelementptr inbounds %struct.bnxt_hwrm_wait_token, ptr %call7.i.i.i, i32 0, i32 1
  %hwrm_pending_list.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 80
  %45 = ptrtoint ptr %hwrm_pending_list.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hwrm_pending_list.i, align 4
  %47 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %node.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.bnxt_hwrm_wait_token, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %hwrm_pending_list.i, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  %49 = ptrtoint ptr %hwrm_pending_list.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %node.i, ptr %hwrm_pending_list.i, align 4
  %tobool.not.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i, label %if.then2.i.if.end42_crit_edge, label %do.body49.i.i

if.then2.i.if.end42_crit_edge:                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

do.body49.i.i:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %46, i32 0, i32 1
  %50 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %node.i, ptr %pprev51.i.i, align 4
  br label %if.end42

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %hwrm_cmd_kong_seq.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 78
  %51 = ptrtoint ptr %hwrm_cmd_kong_seq.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %hwrm_cmd_kong_seq.i, align 2
  %inc3.i = add i16 %52, 1
  store i16 %inc3.i, ptr %hwrm_cmd_kong_seq.i, align 2
  %seq_id4.i = getelementptr inbounds %struct.bnxt_hwrm_wait_token, ptr %call7.i.i.i, i32 0, i32 4
  %53 = ptrtoint ptr %seq_id4.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %seq_id4.i, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.else.i, %do.body49.i.i, %if.then2.i.if.end42_crit_edge
  %seq_id = getelementptr inbounds %struct.bnxt_hwrm_wait_token, ptr %call7.i.i.i, i32 0, i32 4
  %54 = ptrtoint ptr %seq_id to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %seq_id, align 8
  %56 = tail call i16 @llvm.bswap.i16(i16 %55)
  %57 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %req, align 8
  %seq_id44 = getelementptr inbounds %struct.input, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %seq_id44 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %56, ptr %seq_id44, align 4
  %60 = ptrtoint ptr %fw_cap.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %fw_cap.i, align 8
  %and45 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %lor.lhs.false47, label %if.end42.if.then52_crit_edge

if.end42.if.then52_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

lor.lhs.false47:                                  ; preds = %if.end42
  %62 = ptrtoint ptr %hwrm_max_req_len to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %hwrm_max_req_len, align 4
  %conv49 = zext i16 %63 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv49)
  %cmp50 = icmp ugt i32 %6, %conv49
  br i1 %cmp50, label %lor.lhs.false47.if.then52_crit_edge, label %lor.lhs.false47.do.body59_crit_edge

lor.lhs.false47.do.body59_crit_edge:              ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body59

lor.lhs.false47.if.then52_crit_edge:              ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then52

if.then52:                                        ; preds = %lor.lhs.false47.if.then52_crit_edge, %if.end42.if.then52_crit_edge
  %64 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %req, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %65, align 8
  %68 = ptrtoint ptr %short_input to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %short_input, align 8
  %signature = getelementptr inbounds %struct.hwrm_short_input, ptr %short_input, i32 0, i32 1
  %69 = ptrtoint ptr %signature to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 8515, ptr %signature, align 2
  %conv56 = trunc i32 %6 to i16
  %70 = tail call i16 @llvm.bswap.i16(i16 %conv56)
  %size = getelementptr inbounds %struct.hwrm_short_input, ptr %short_input, i32 0, i32 3
  %71 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %size, align 2
  %dma_handle = getelementptr inbounds %struct.bnxt_hwrm_ctx, ptr %ctx, i32 0, i32 1
  %72 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dma_handle, align 8
  %conv57 = zext i32 %73 to i64
  %74 = tail call i64 @llvm.bswap.i64(i64 %conv57)
  %req_addr = getelementptr inbounds %struct.hwrm_short_input, ptr %short_input, i32 0, i32 4
  %75 = ptrtoint ptr %req_addr to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %req_addr, align 8
  br label %do.body59

do.body59:                                        ; preds = %if.then52, %lor.lhs.false47.do.body59_crit_edge
  %msg_len.0 = phi i32 [ 16, %if.then52 ], [ %6, %lor.lhs.false47.do.body59_crit_edge ]
  %data.0 = phi ptr [ %short_input, %if.then52 ], [ %4, %lor.lhs.false47.do.body59_crit_edge ]
  %max_req_len.0 = phi i16 [ 16, %if.then52 ], [ %2, %lor.lhs.false47.do.body59_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !73
  tail call void @arm_heavy_mb() #10
  %76 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bp, align 8
  %add.ptr = getelementptr i8, ptr %77, i32 %bar_offset.0
  %div657 = lshr i32 %msg_len.0, 2
  call void @__iowrite32_copy(ptr noundef %add.ptr, ptr noundef %data.0, i32 noundef %div657) #10
  %conv62 = zext i16 %max_req_len.0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %msg_len.0, i32 %conv62)
  %cmp63792 = icmp ult i32 %msg_len.0, %conv62
  br i1 %cmp63792, label %do.body59.do.body65_crit_edge, label %do.body59.do.body71_crit_edge

do.body59.do.body71_crit_edge:                    ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body71

do.body59.do.body65_crit_edge:                    ; preds = %do.body59
  br label %do.body65

do.body65:                                        ; preds = %do.body65.do.body65_crit_edge, %do.body59.do.body65_crit_edge
  %i.0793 = phi i32 [ %add, %do.body65.do.body65_crit_edge ], [ %msg_len.0, %do.body59.do.body65_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !74
  call void @arm_heavy_mb() #10
  %78 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bp, align 8
  %add.ptr69 = getelementptr i8, ptr %79, i32 %bar_offset.0
  %add.ptr70 = getelementptr i8, ptr %add.ptr69, i32 %i.0793
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 0) #10, !srcloc !75
  %add = add nuw nsw i32 %i.0793, 4
  %cmp63 = icmp ult i32 %add, %conv62
  br i1 %cmp63, label %do.body65.do.body65_crit_edge, label %do.body65.do.body71_crit_edge

do.body65.do.body71_crit_edge:                    ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body71

do.body65.do.body65_crit_edge:                    ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body65

do.body71:                                        ; preds = %do.body65.do.body71_crit_edge, %do.body59.do.body71_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !76
  call void @arm_heavy_mb() #10
  %80 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bp, align 8
  %add.ptr75 = getelementptr i8, ptr %81, i32 %doorbell_offset.0
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 16777216) #10, !srcloc !75
  %82 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %req, align 8
  call fastcc void @hwrm_req_dbg(ptr noundef %bp, ptr noundef %83)
  %pdev77 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 9
  %84 = ptrtoint ptr %pdev77 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdev77, align 8
  %enable_cnt.i = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 51
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %enable_cnt.i, i32 noundef 4) #10
  %86 = ptrtoint ptr %enable_cnt.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %enable_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp.i683 = icmp slt i32 %87, 1
  br i1 %cmp.i683, label %do.body71.exit_crit_edge, label %if.end81

do.body71.exit_crit_edge:                         ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end81:                                         ; preds = %do.body71
  %timeout82 = getelementptr inbounds %struct.bnxt_hwrm_ctx, ptr %ctx, i32 0, i32 9
  %88 = ptrtoint ptr %timeout82 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %timeout82, align 8
  %hwrm_cmd_max_timeout = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 93
  %90 = ptrtoint ptr %hwrm_cmd_max_timeout to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %hwrm_cmd_max_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool83.not = icmp eq i32 %91, 0
  %. = select i1 %tobool83.not, i32 40000, i32 %91
  %92 = call i32 @llvm.umin.i32(i32 %89, i32 %.)
  %mul = mul i32 %92, 1000
  %sub92 = add i32 %mul, 9
  %div93 = udiv i32 %sub92, 25
  %add94 = add nuw nsw i32 %div93, 5
  %93 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %req, align 8
  %cmpl_ring96 = getelementptr inbounds %struct.input, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %cmpl_ring96 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %cmpl_ring96, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %96)
  %cmp98.not = icmp eq i16 %96, -1
  br i1 %cmp98.not, label %if.else200, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end81
  %97 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %98)
  %cmp106794 = icmp ult i32 %98, 2
  br i1 %cmp106794, label %land.rhs.lr.ph, label %while.cond.preheader.do.end154_crit_edge

while.cond.preheader.do.end154_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end154

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.i685 = icmp eq i16 %15, 0
  %fw_health.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 118
  br label %land.rhs

land.rhs:                                         ; preds = %if.end151.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.1796 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %if.end151.land.rhs_crit_edge ]
  %inc = add nuw nsw i32 %i.1796, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1796, i32 %add94)
  %exitcond.not = icmp eq i32 %i.1796, %add94
  br i1 %exitcond.not, label %land.rhs.do.end154_crit_edge, label %while.body

land.rhs.do.end154_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end154

while.body:                                       ; preds = %land.rhs
  %99 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %state, align 4
  %101 = and i32 %100, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool112.not = icmp eq i32 %101, 0
  br i1 %tobool112.not, label %if.end114, label %while.body.exit_crit_edge

while.body.exit_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end114:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.1796)
  %cmp115 = icmp ult i32 %i.1796, 4
  br i1 %cmp115, label %if.then117, label %if.else

if.then117:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #10
  br label %if.end151

if.else:                                          ; preds = %if.end114
  br i1 %cmp.i685, label %if.else.if.end150_crit_edge, label %if.end.i687

if.else.if.end150_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

if.end.i687:                                      ; preds = %if.else
  %102 = ptrtoint ptr %fw_health.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %fw_health.i, align 4
  %tobool.not.i686 = icmp eq ptr %103, null
  br i1 %tobool.not.i686, label %if.end.i687.if.end150_crit_edge, label %lor.lhs.false.i

if.end.i687.if.end150_crit_edge:                  ; preds = %if.end.i687
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

lor.lhs.false.i:                                  ; preds = %if.end.i687
  %status_reliable.i = getelementptr inbounds %struct.bnxt_fw_health, ptr %103, i32 0, i32 11
  %104 = ptrtoint ptr %status_reliable.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %bf.load.i = load i8, ptr %status_reliable.i, align 4
  %105 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool2.not.i = icmp eq i8 %105, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end150_crit_edge, label %hwrm_wait_must_abort.exit

lor.lhs.false.i.if.end150_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

hwrm_wait_must_abort.exit:                        ; preds = %lor.lhs.false.i
  %call.i = call i32 @bnxt_fw_health_readl(ptr noundef %bp, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp ne i32 %call.i, 0
  %and.i688 = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %and.i688)
  %cmp6.i = icmp ne i32 %and.i688, 32768
  %106 = and i1 %tobool5.not.i, %cmp6.i
  br i1 %106, label %do.body120, label %hwrm_wait_must_abort.exit.if.end150_crit_edge

hwrm_wait_must_abort.exit.if.end150_crit_edge:    ; preds = %hwrm_wait_must_abort.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

do.body120:                                       ; preds = %hwrm_wait_must_abort.exit
  %107 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %flags, align 4
  %and122 = and i32 %108, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.else145, label %do.body126

do.body126:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__hwrm_send.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hwrm_send, %if.then138)) #10
          to label %exit [label %if.then138], !srcloc !71

if.then138:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #12
  %dev139 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %109 = ptrtoint ptr %dev139 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev139, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__hwrm_send.__UNIQUE_ID_ddebug622, ptr noundef %110, ptr noundef nonnull @.str.14, i32 noundef %conv, i32 noundef %call.i) #10
  br label %exit

if.else145:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #12
  %dev146 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %111 = ptrtoint ptr %dev146 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev146, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %112, ptr noundef nonnull @.str.14, i32 noundef %conv, i32 noundef %call.i) #13
  br label %exit

if.end150:                                        ; preds = %hwrm_wait_must_abort.exit.if.end150_crit_edge, %lor.lhs.false.i.if.end150_crit_edge, %if.end.i687.if.end150_crit_edge, %if.else.if.end150_crit_edge
  call void @usleep_range_state(i32 noundef 25, i32 noundef 40, i32 noundef 2) #10
  br label %if.end151

if.end151:                                        ; preds = %if.end150, %if.then117
  %113 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %state.i, align 8
  %cmp106 = icmp ult i32 %114, 2
  br i1 %cmp106, label %if.end151.land.rhs_crit_edge, label %if.end151.do.end154_crit_edge

if.end151.do.end154_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end154

if.end151.land.rhs_crit_edge:                     ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

do.end154:                                        ; preds = %if.end151.do.end154_crit_edge, %land.rhs.do.end154_crit_edge, %while.cond.preheader.do.end154_crit_edge
  %115 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %116)
  %cmp157.not = icmp eq i32 %116, 2
  br i1 %cmp157.not, label %do.end193, label %do.body160

do.body160:                                       ; preds = %do.end154
  %117 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %flags, align 4
  %and162 = and i32 %118, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.else185, label %do.body166

do.body166:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__hwrm_send.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hwrm_send, %if.then178)) #10
          to label %exit [label %if.then178], !srcloc !71

if.then178:                                       ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #12
  %dev179 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %119 = ptrtoint ptr %dev179 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev179, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__hwrm_send.__UNIQUE_ID_ddebug624, ptr noundef %120, ptr noundef nonnull @.str.15, i32 noundef %conv) #10
  br label %exit

if.else185:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #12
  %dev186 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %121 = ptrtoint ptr %dev186 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev186, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %122, ptr noundef nonnull @.str.15, i32 noundef %conv) #13
  br label %exit

do.end193:                                        ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #12
  %resp195 = getelementptr inbounds %struct.bnxt_hwrm_ctx, ptr %ctx, i32 0, i32 2
  %123 = ptrtoint ptr %resp195 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %resp195, align 4
  %resp_len = getelementptr inbounds %struct.output, ptr %124, i32 0, i32 3
  %125 = ptrtoint ptr %resp_len to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load volatile i16, ptr %resp_len, align 2
  %127 = call i16 @llvm.bswap.i16(i16 %126)
  %conv197 = zext i16 %127 to i32
  %add.ptr198 = getelementptr i8, ptr %124, i32 %conv197
  %add.ptr199 = getelementptr i8, ptr %add.ptr198, i32 -1
  br label %if.end421

if.else200:                                       ; preds = %if.end81
  %seq_id202 = getelementptr inbounds %struct.input, ptr %94, i32 0, i32 2
  %128 = ptrtoint ptr %seq_id202 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %seq_id202, align 4
  %resp227 = getelementptr inbounds %struct.bnxt_hwrm_ctx, ptr %ctx, i32 0, i32 2
  %dev250 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.i695 = icmp eq i16 %15, 0
  %fw_health.i696 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 118
  br label %for.body206

for.body206:                                      ; preds = %for.inc303.for.body206_crit_edge, %if.else200
  %token.0801 = phi ptr [ %call7.i.i.i, %if.else200 ], [ %token.1, %for.inc303.for.body206_crit_edge ]
  %i.2799 = phi i32 [ 0, %if.else200 ], [ %inc304, %for.inc303.for.body206_crit_edge ]
  %seen_out_of_seq.0798 = phi i16 [ %129, %if.else200 ], [ %seen_out_of_seq.3, %for.inc303.for.body206_crit_edge ]
  %130 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %state, align 4
  %132 = and i32 %131, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool209.not = icmp eq i32 %132, 0
  br i1 %tobool209.not, label %if.end211, label %for.body206.exit_crit_edge

for.body206.exit_crit_edge:                       ; preds = %for.body206
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end211:                                        ; preds = %for.body206
  %tobool212.not = icmp eq ptr %token.0801, null
  br i1 %tobool212.not, label %if.end211.do.end225_crit_edge, label %do.end216

if.end211.do.end225_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end225

do.end216:                                        ; preds = %if.end211
  %state218 = getelementptr inbounds %struct.bnxt_hwrm_wait_token, ptr %token.0801, i32 0, i32 2
  %133 = ptrtoint ptr %state218 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %state218, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %134)
  %cmp219 = icmp eq i32 %134, 1
  br i1 %cmp219, label %if.then221, label %do.end216.do.end225_crit_edge

do.end216.do.end225_crit_edge:                    ; preds = %do.end216
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end225

if.then221:                                       ; preds = %do.end216
  %dst.i = getelementptr inbounds %struct.bnxt_hwrm_wait_token, ptr %token.0801, i32 0, i32 3
  %135 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %dst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %cmp.i690 = icmp eq i32 %136, 0
  br i1 %cmp.i690, label %if.then.i, label %if.else.i693

if.then.i:                                        ; preds = %if.then221
  %node.i691 = getelementptr inbounds %struct.bnxt_hwrm_wait_token, ptr %token.0801, i32 0, i32 1
  %137 = ptrtoint ptr %node.i691 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %node.i691, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.bnxt_hwrm_wait_token, ptr %token.0801, i32 0, i32 1, i32 1
  %139 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %pprev2.i.i.i, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %138, ptr %140, align 4
  %tobool.not.i.i.i = icmp eq ptr %138, null
  br i1 %tobool.not.i.i.i, label %if.then.i.do.end.i_crit_edge, label %do.body13.i.i.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.body13.i.i.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %138, i32 0, i32 1
  %142 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %140, ptr %pprev14.i.i.i, align 4
  br label %do.end.i

do.end.i:                                         ; preds = %do.body13.i.i.i, %if.then.i.do.end.i_crit_edge
  %143 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  call void @kvfree_call_rcu(ptr noundef nonnull %token.0801, ptr noundef null) #10
  br label %__hwrm_release_token.exit

if.else.i693:                                     ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %token.0801) #10
  br label %__hwrm_release_token.exit

__hwrm_release_token.exit:                        ; preds = %if.else.i693, %do.end.i
  call void @mutex_unlock(ptr noundef %hwrm_cmd_lock.i) #10
  br label %do.end225

do.end225:                                        ; preds = %__hwrm_release_token.exit, %do.end216.do.end225_crit_edge, %if.end211.do.end225_crit_edge
  %token.1 = phi ptr [ null, %__hwrm_release_token.exit ], [ %token.0801, %do.end216.do.end225_crit_edge ], [ null, %if.end211.do.end225_crit_edge ]
  %144 = ptrtoint ptr %resp227 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %resp227, align 4
  %resp_len228 = getelementptr inbounds %struct.output, ptr %145, i32 0, i32 3
  %146 = ptrtoint ptr %resp_len228 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load volatile i16, ptr %resp_len228, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %147)
  %tobool229.not = icmp eq i16 %147, 0
  br i1 %tobool229.not, label %do.end225.if.end256_crit_edge, label %if.then230

do.end225.if.end256_crit_edge:                    ; preds = %do.end225
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end256

if.then230:                                       ; preds = %do.end225
  %seq_id236 = getelementptr inbounds %struct.output, ptr %145, i32 0, i32 2
  %148 = ptrtoint ptr %seq_id236 to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load volatile i16, ptr %seq_id236, align 2
  %150 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %req, align 8
  %seq_id239 = getelementptr inbounds %struct.input, ptr %151, i32 0, i32 2
  %152 = ptrtoint ptr %seq_id239 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %seq_id239, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %149, i16 %153)
  %cmp241 = icmp eq i16 %149, %153
  br i1 %cmp241, label %if.end349, label %if.end244

if.end244:                                        ; preds = %if.then230
  call void @__sanitizer_cov_trace_cmp2(i16 %149, i16 %seen_out_of_seq.0798)
  %cmp247.not = icmp eq i16 %149, %seen_out_of_seq.0798
  br i1 %cmp247.not, label %if.end244.if.end256_crit_edge, label %if.then249

if.end244.if.end256_crit_edge:                    ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end256

if.then249:                                       ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #12
  %154 = ptrtoint ptr %dev250 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev250, align 4
  %156 = call i16 @llvm.bswap.i16(i16 %149)
  %conv251 = zext i16 %156 to i32
  %157 = call i16 @llvm.bswap.i16(i16 %153)
  %conv254 = zext i16 %157 to i32
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %155, ptr noundef nonnull @.str.16, i32 noundef %conv251, i32 noundef %conv, i32 noundef %conv254) #13
  br label %if.end256

if.end256:                                        ; preds = %if.then249, %if.end244.if.end256_crit_edge, %do.end225.if.end256_crit_edge
  %seen_out_of_seq.3 = phi i16 [ %seen_out_of_seq.0798, %do.end225.if.end256_crit_edge ], [ %seen_out_of_seq.0798, %if.end244.if.end256_crit_edge ], [ %149, %if.then249 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.2799)
  %cmp257 = icmp ult i32 %i.2799, 5
  br i1 %cmp257, label %if.then259, label %if.else260

if.then259:                                       ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #12
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #10
  br label %for.inc303

if.else260:                                       ; preds = %if.end256
  br i1 %cmp.i695, label %if.else260.if.end301_crit_edge, label %if.end.i698

if.else260.if.end301_crit_edge:                   ; preds = %if.else260
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end301

if.end.i698:                                      ; preds = %if.else260
  %158 = ptrtoint ptr %fw_health.i696 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %fw_health.i696, align 4
  %tobool.not.i697 = icmp eq ptr %159, null
  br i1 %tobool.not.i697, label %if.end.i698.if.end301_crit_edge, label %lor.lhs.false.i702

if.end.i698.if.end301_crit_edge:                  ; preds = %if.end.i698
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end301

lor.lhs.false.i702:                               ; preds = %if.end.i698
  %status_reliable.i699 = getelementptr inbounds %struct.bnxt_fw_health, ptr %159, i32 0, i32 11
  %160 = ptrtoint ptr %status_reliable.i699 to i32
  call void @__asan_load1_noabort(i32 %160)
  %bf.load.i700 = load i8, ptr %status_reliable.i699, align 4
  %161 = and i8 %bf.load.i700, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool2.not.i701 = icmp eq i8 %161, 0
  br i1 %tobool2.not.i701, label %lor.lhs.false.i702.if.end301_crit_edge, label %hwrm_wait_must_abort.exit709

lor.lhs.false.i702.if.end301_crit_edge:           ; preds = %lor.lhs.false.i702
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end301

hwrm_wait_must_abort.exit709:                     ; preds = %lor.lhs.false.i702
  %call.i703 = call i32 @bnxt_fw_health_readl(ptr noundef %bp, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i703)
  %tobool5.not.i704 = icmp ne i32 %call.i703, 0
  %and.i705 = and i32 %call.i703, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %and.i705)
  %cmp6.i706 = icmp ne i32 %and.i705, 32768
  %162 = and i1 %tobool5.not.i704, %cmp6.i706
  br i1 %162, label %do.body263, label %hwrm_wait_must_abort.exit709.if.end301_crit_edge

hwrm_wait_must_abort.exit709.if.end301_crit_edge: ; preds = %hwrm_wait_must_abort.exit709
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end301

do.body263:                                       ; preds = %hwrm_wait_must_abort.exit709
  %163 = call i16 @llvm.bswap.i16(i16 %147)
  %164 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %flags, align 4
  %and265 = and i32 %165, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and265)
  %tobool266.not = icmp eq i32 %and265, 0
  br i1 %tobool266.not, label %if.else292, label %do.body269

do.body269:                                       ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__hwrm_send.__UNIQUE_ID_ddebug629, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hwrm_send, %if.then281)) #10
          to label %exit [label %if.then281], !srcloc !71

if.then281:                                       ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #12
  %166 = ptrtoint ptr %dev250 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dev250, align 4
  %168 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %req, align 8
  %seq_id284 = getelementptr inbounds %struct.input, ptr %169, i32 0, i32 2
  %170 = ptrtoint ptr %seq_id284 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %seq_id284, align 4
  %172 = call i16 @llvm.bswap.i16(i16 %171)
  %conv285 = zext i16 %172 to i32
  %conv286 = zext i16 %163 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__hwrm_send.__UNIQUE_ID_ddebug629, ptr noundef %167, ptr noundef nonnull @.str.17, i32 noundef %conv, i32 noundef %conv285, i32 noundef %conv286, i32 noundef %call.i703) #10
  br label %exit

if.else292:                                       ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #12
  %173 = ptrtoint ptr %dev250 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev250, align 4
  %175 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %req, align 8
  %seq_id295 = getelementptr inbounds %struct.input, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %seq_id295 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %seq_id295, align 4
  %179 = call i16 @llvm.bswap.i16(i16 %178)
  %conv296 = zext i16 %179 to i32
  %conv297 = zext i16 %163 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %174, ptr noundef nonnull @.str.17, i32 noundef %conv, i32 noundef %conv296, i32 noundef %conv297, i32 noundef %call.i703) #13
  br label %exit

if.end301:                                        ; preds = %hwrm_wait_must_abort.exit709.if.end301_crit_edge, %lor.lhs.false.i702.if.end301_crit_edge, %if.end.i698.if.end301_crit_edge, %if.else260.if.end301_crit_edge
  call void @usleep_range_state(i32 noundef 25, i32 noundef 40, i32 noundef 2) #10
  br label %for.inc303

for.inc303:                                       ; preds = %if.end301, %if.then259
  %inc304 = add nuw nsw i32 %i.2799, 1
  %exitcond818.not = icmp eq i32 %inc304, %add94
  br i1 %exitcond818.not, label %do.body309, label %for.inc303.for.body206_crit_edge

for.inc303.for.body206_crit_edge:                 ; preds = %for.inc303
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body206

do.body309:                                       ; preds = %for.inc303
  %180 = call i16 @llvm.bswap.i16(i16 %147)
  %phi.cast.le = zext i16 %180 to i32
  %181 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %flags, align 4
  %and311 = and i32 %182, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and311)
  %tobool312.not = icmp eq i32 %and311, 0
  br i1 %tobool312.not, label %if.else339, label %do.body315

do.body315:                                       ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__hwrm_send.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hwrm_send, %if.then327)) #10
          to label %exit [label %if.then327], !srcloc !71

if.then327:                                       ; preds = %do.body315
  call void @__sanitizer_cov_trace_pc() #12
  %183 = ptrtoint ptr %dev250 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev250, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub92)
  %185 = icmp ult i32 %sub92, 25
  %mul.i = mul nuw nsw i32 %add94, 3
  %186 = mul i32 %add94, 25
  %add.i = add i32 %186, -110
  %cond.i = select i1 %185, i32 %mul.i, i32 %add.i
  %187 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %req, align 8
  %seq_id331 = getelementptr inbounds %struct.input, ptr %188, i32 0, i32 2
  %189 = ptrtoint ptr %seq_id331 to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %seq_id331, align 4
  %191 = call i16 @llvm.bswap.i16(i16 %190)
  %conv332 = zext i16 %191 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__hwrm_send.__UNIQUE_ID_ddebug630, ptr noundef %184, ptr noundef nonnull @.str.18, i32 noundef %cond.i, i32 noundef %conv, i32 noundef %conv332, i32 noundef %phi.cast.le) #10
  br label %exit

if.else339:                                       ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #12
  %192 = ptrtoint ptr %dev250 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dev250, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %sub92)
  %194 = icmp ult i32 %sub92, 25
  %mul.i712 = mul nuw nsw i32 %add94, 3
  %195 = mul i32 %add94, 25
  %add.i713 = add i32 %195, -110
  %cond.i714 = select i1 %194, i32 %mul.i712, i32 %add.i713
  %196 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %req, align 8
  %seq_id343 = getelementptr inbounds %struct.input, ptr %197, i32 0, i32 2
  %198 = ptrtoint ptr %seq_id343 to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %seq_id343, align 4
  %200 = call i16 @llvm.bswap.i16(i16 %199)
  %conv344 = zext i16 %200 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %193, ptr noundef nonnull @.str.18, i32 noundef %cond.i714, i32 noundef %conv, i32 noundef %conv344, i32 noundef %phi.cast.le) #13
  br label %exit

if.end349:                                        ; preds = %if.then230
  %201 = call i16 @llvm.bswap.i16(i16 %147)
  %202 = ptrtoint ptr %resp227 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %resp227, align 4
  %conv351 = zext i16 %201 to i32
  %add.ptr352 = getelementptr i8, ptr %203, i32 %conv351
  %add.ptr353 = getelementptr i8, ptr %add.ptr352, i32 -1
  br label %for.body357

for.body357:                                      ; preds = %if.end367.for.body357_crit_edge, %if.end349
  %j.0806 = phi i32 [ 0, %if.end349 ], [ %add366, %if.end367.for.body357_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  %204 = ptrtoint ptr %add.ptr353 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %add.ptr353, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool358.not = icmp eq i8 %205, 0
  br i1 %tobool358.not, label %if.end360, label %for.body357.if.end421_crit_edge

for.body357.if.end421_crit_edge:                  ; preds = %for.body357
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end421

if.end360:                                        ; preds = %for.body357
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %j.0806)
  %cmp361 = icmp ult i32 %j.0806, 10
  br i1 %cmp361, label %if.then363, label %if.else365

if.then363:                                       ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %206 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %206(i32 noundef 214748) #10
  br label %if.end367

if.else365:                                       ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #12
  call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #10
  br label %if.end367

if.end367:                                        ; preds = %if.else365, %if.then363
  %.sink = phi i32 [ 20, %if.else365 ], [ 1, %if.then363 ]
  %add366 = add nuw nsw i32 %j.0806, %.sink
  %cmp355 = icmp ult i32 %add366, 50000
  br i1 %cmp355, label %if.end367.for.body357_crit_edge, label %do.body372

if.end367.for.body357_crit_edge:                  ; preds = %if.end367
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body357

do.body372:                                       ; preds = %if.end367
  %207 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %flags, align 4
  %and374 = and i32 %208, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and374)
  %tobool375.not = icmp eq i32 %and374, 0
  br i1 %tobool375.not, label %if.else404, label %do.body378

do.body378:                                       ; preds = %do.body372
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__hwrm_send.__UNIQUE_ID_ddebug631, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hwrm_send, %if.then390)) #10
          to label %exit [label %if.then390], !srcloc !71

if.then390:                                       ; preds = %do.body378
  call void @__sanitizer_cov_trace_pc() #12
  %209 = ptrtoint ptr %dev250 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dev250, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.2799)
  %cmp.i715 = icmp ult i32 %i.2799, 6
  %mul.i716 = mul i32 %i.2799, 3
  %211 = mul i32 %i.2799, 25
  %add.i717 = add i32 %211, -110
  %cond.i718 = select i1 %cmp.i715, i32 %mul.i716, i32 %add.i717
  %add393 = add i32 %add366, %cond.i718
  %212 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %req, align 8
  %seq_id395 = getelementptr inbounds %struct.input, ptr %213, i32 0, i32 2
  %214 = ptrtoint ptr %seq_id395 to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %seq_id395, align 4
  %216 = call i16 @llvm.bswap.i16(i16 %215)
  %conv396 = zext i16 %216 to i32
  %217 = ptrtoint ptr %add.ptr353 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %add.ptr353, align 1
  %conv398 = zext i8 %218 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__hwrm_send.__UNIQUE_ID_ddebug631, ptr noundef %210, ptr noundef nonnull @.str.19, i32 noundef %add393, i32 noundef %conv, i32 noundef %conv396, i32 noundef %conv351, i32 noundef %conv398) #10
  br label %exit

if.else404:                                       ; preds = %do.body372
  call void @__sanitizer_cov_trace_pc() #12
  %219 = ptrtoint ptr %dev250 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dev250, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.2799)
  %cmp.i719 = icmp ult i32 %i.2799, 6
  %mul.i720 = mul i32 %i.2799, 3
  %221 = mul i32 %i.2799, 25
  %add.i721 = add i32 %221, -110
  %cond.i722 = select i1 %cmp.i719, i32 %mul.i720, i32 %add.i721
  %add407 = add i32 %add366, %cond.i722
  %222 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %req, align 8
  %seq_id409 = getelementptr inbounds %struct.input, ptr %223, i32 0, i32 2
  %224 = ptrtoint ptr %seq_id409 to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %seq_id409, align 4
  %226 = call i16 @llvm.bswap.i16(i16 %225)
  %conv410 = zext i16 %226 to i32
  %227 = ptrtoint ptr %add.ptr353 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %add.ptr353, align 1
  %conv412 = zext i8 %228 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %220, ptr noundef nonnull @.str.19, i32 noundef %add407, i32 noundef %conv, i32 noundef %conv410, i32 noundef %conv351, i32 noundef %conv412) #13
  br label %exit

if.end421:                                        ; preds = %for.body357.if.end421_crit_edge, %do.end193
  %valid.1 = phi ptr [ %add.ptr199, %do.end193 ], [ %add.ptr353, %for.body357.if.end421_crit_edge ]
  %token.4 = phi ptr [ %call7.i.i.i, %do.end193 ], [ %token.1, %for.body357.if.end421_crit_edge ]
  %229 = ptrtoint ptr %valid.1 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 0, ptr %valid.1, align 1
  %resp422 = getelementptr inbounds %struct.bnxt_hwrm_ctx, ptr %ctx, i32 0, i32 2
  %230 = ptrtoint ptr %resp422 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %resp422, align 4
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %231, align 2
  %234 = call i16 @llvm.bswap.i16(i16 %233)
  %conv423 = zext i16 %234 to i32
  %235 = zext i16 %233 to i64
  call void @__sanitizer_cov_trace_switch(i64 %235, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %233, label %if.end421.do.body438_crit_edge [
    i16 4096, label %land.lhs.true426
    i16 0, label %if.end421.if.end473_crit_edge
    i16 4608, label %if.end421.if.end473_crit_edge878
  ]

if.end421.if.end473_crit_edge878:                 ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end473

if.end421.if.end473_crit_edge:                    ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end473

if.end421.do.body438_crit_edge:                   ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body438

land.lhs.true426:                                 ; preds = %if.end421
  %236 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %flags, align 4
  %and428 = and i32 %237, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and428)
  %tobool429.not = icmp eq i32 %and428, 0
  br i1 %tobool429.not, label %if.then430, label %land.lhs.true426.do.body438_crit_edge

land.lhs.true426.do.body438_crit_edge:            ; preds = %land.lhs.true426
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body438

if.then430:                                       ; preds = %land.lhs.true426
  call void @__sanitizer_cov_trace_pc() #12
  %dev431 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %238 = ptrtoint ptr %dev431 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %dev431, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %239, ptr noundef nonnull @.str.20, i32 noundef %conv) #13
  br label %if.end473

do.body438:                                       ; preds = %land.lhs.true426.do.body438_crit_edge, %if.end421.do.body438_crit_edge
  %240 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %flags, align 4
  %and440 = and i32 %241, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and440)
  %tobool441.not = icmp eq i32 %and440, 0
  br i1 %tobool441.not, label %if.else465, label %do.body444

do.body444:                                       ; preds = %do.body438
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__hwrm_send.__UNIQUE_ID_ddebug632, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__hwrm_send, %if.then456)) #10
          to label %if.end473 [label %if.then456], !srcloc !71

if.then456:                                       ; preds = %do.body444
  call void @__sanitizer_cov_trace_pc() #12
  %dev457 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %242 = ptrtoint ptr %dev457 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %dev457, align 4
  %seq_id458 = getelementptr inbounds %struct.bnxt_hwrm_wait_token, ptr %token.4, i32 0, i32 4
  %244 = ptrtoint ptr %seq_id458 to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %seq_id458, align 4
  %conv459 = zext i16 %245 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__hwrm_send.__UNIQUE_ID_ddebug632, ptr noundef %243, ptr noundef nonnull @.str.21, i32 noundef %conv, i32 noundef %conv459, i32 noundef %conv423) #10
  br label %if.end473

if.else465:                                       ; preds = %do.body438
  call void @__sanitizer_cov_trace_pc() #12
  %dev466 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %246 = ptrtoint ptr %dev466 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %dev466, align 4
  %seq_id467 = getelementptr inbounds %struct.bnxt_hwrm_wait_token, ptr %token.4, i32 0, i32 4
  %248 = ptrtoint ptr %seq_id467 to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %seq_id467, align 4
  %conv468 = zext i16 %249 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %247, ptr noundef nonnull @.str.21, i32 noundef %conv, i32 noundef %conv468, i32 noundef %conv423) #13
  br label %if.end473

if.end473:                                        ; preds = %if.else465, %if.then456, %do.body444, %if.then430, %if.end421.if.end473_crit_edge, %if.end421.if.end473_crit_edge878
  %250 = zext i16 %234 to i64
  call void @__sanitizer_cov_trace_switch(i64 %250, ptr @__sancov_gen_cov_switch_values.27)
  switch i16 %234, label %sw.default.i [
    i16 0, label %if.end473.exit_crit_edge
    i16 17, label %sw.bb1.i
    i16 3, label %sw.bb2.i
    i16 4, label %sw.bb3.i
    i16 2, label %if.end473.sw.bb4.i_crit_edge
    i16 5, label %if.end473.sw.bb4.i_crit_edge879
    i16 6, label %if.end473.sw.bb4.i_crit_edge880
    i16 7, label %if.end473.sw.bb4.i_crit_edge881
    i16 9, label %if.end473.sw.bb4.i_crit_edge882
    i16 8, label %sw.bb5.i
    i16 10, label %if.end473.sw.bb6.i_crit_edge
    i16 16, label %if.end473.sw.bb6.i_crit_edge883
    i16 -1, label %sw.bb7.i
    i16 18, label %sw.bb8.i
  ]

if.end473.sw.bb6.i_crit_edge883:                  ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i

if.end473.sw.bb6.i_crit_edge:                     ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb6.i

if.end473.sw.bb4.i_crit_edge882:                  ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

if.end473.sw.bb4.i_crit_edge881:                  ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

if.end473.sw.bb4.i_crit_edge880:                  ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

if.end473.sw.bb4.i_crit_edge879:                  ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

if.end473.sw.bb4.i_crit_edge:                     ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb4.i

if.end473.exit_crit_edge:                         ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

sw.bb1.i:                                         ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

sw.bb2.i:                                         ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

sw.bb3.i:                                         ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

sw.bb4.i:                                         ; preds = %if.end473.sw.bb4.i_crit_edge, %if.end473.sw.bb4.i_crit_edge879, %if.end473.sw.bb4.i_crit_edge880, %if.end473.sw.bb4.i_crit_edge881, %if.end473.sw.bb4.i_crit_edge882
  br label %exit

sw.bb5.i:                                         ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

sw.bb6.i:                                         ; preds = %if.end473.sw.bb6.i_crit_edge, %if.end473.sw.bb6.i_crit_edge883
  br label %exit

sw.bb7.i:                                         ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

sw.bb8.i:                                         ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

sw.default.i:                                     ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

exit:                                             ; preds = %sw.default.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end473.exit_crit_edge, %if.else404, %if.then390, %do.body378, %if.else339, %if.then327, %do.body315, %if.else292, %if.then281, %do.body269, %for.body206.exit_crit_edge, %if.else185, %if.then178, %do.body166, %if.else145, %if.then138, %do.body126, %while.body.exit_crit_edge, %do.body71.exit_crit_edge, %do.body8
  %rc.0 = phi i32 [ -16, %if.then138 ], [ -16, %if.else145 ], [ -16, %if.then178 ], [ -16, %if.else185 ], [ -19, %do.body71.exit_crit_edge ], [ -16, %do.body8 ], [ -16, %do.body126 ], [ -16, %do.body166 ], [ -16, %do.body378 ], [ -16, %do.body315 ], [ -16, %do.body269 ], [ -5, %sw.default.i ], [ -19, %sw.bb8.i ], [ -95, %sw.bb7.i ], [ -11, %sw.bb6.i ], [ -12, %sw.bb5.i ], [ -22, %sw.bb4.i ], [ -28, %sw.bb3.i ], [ -13, %sw.bb2.i ], [ -30, %sw.bb1.i ], [ 0, %if.end473.exit_crit_edge ], [ -16, %if.then281 ], [ -16, %if.else292 ], [ -16, %if.then327 ], [ -16, %if.else339 ], [ -16, %if.then390 ], [ -16, %if.else404 ], [ -16, %for.body206.exit_crit_edge ], [ -16, %while.body.exit_crit_edge ]
  %token.5 = phi ptr [ %call7.i.i.i, %if.then138 ], [ %call7.i.i.i, %if.else145 ], [ %call7.i.i.i, %if.then178 ], [ %call7.i.i.i, %if.else185 ], [ %call7.i.i.i, %do.body71.exit_crit_edge ], [ null, %do.body8 ], [ %call7.i.i.i, %do.body126 ], [ %call7.i.i.i, %do.body166 ], [ %token.1, %do.body378 ], [ %token.1, %do.body315 ], [ %token.1, %do.body269 ], [ %token.4, %sw.default.i ], [ %token.4, %sw.bb8.i ], [ %token.4, %sw.bb7.i ], [ %token.4, %sw.bb6.i ], [ %token.4, %sw.bb5.i ], [ %token.4, %sw.bb4.i ], [ %token.4, %sw.bb3.i ], [ %token.4, %sw.bb2.i ], [ %token.4, %sw.bb1.i ], [ %token.4, %if.end473.exit_crit_edge ], [ %token.1, %if.then281 ], [ %token.1, %if.else292 ], [ %token.1, %if.then327 ], [ %token.1, %if.else339 ], [ %token.1, %if.then390 ], [ %token.1, %if.else404 ], [ %token.0801, %for.body206.exit_crit_edge ], [ %call7.i.i.i, %while.body.exit_crit_edge ]
  %tobool475.not = icmp eq ptr %token.5, null
  br i1 %tobool475.not, label %exit.if.end477_crit_edge, label %if.then476

exit.if.end477_crit_edge:                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end477

if.then476:                                       ; preds = %exit
  %dst.i724 = getelementptr inbounds %struct.bnxt_hwrm_wait_token, ptr %token.5, i32 0, i32 3
  %251 = ptrtoint ptr %dst.i724 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %dst.i724, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %cmp.i725 = icmp eq i32 %252, 0
  br i1 %cmp.i725, label %if.then.i729, label %if.else.i735

if.then.i729:                                     ; preds = %if.then476
  %node.i726 = getelementptr inbounds %struct.bnxt_hwrm_wait_token, ptr %token.5, i32 0, i32 1
  %253 = ptrtoint ptr %node.i726 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %node.i726, align 4
  %pprev2.i.i.i727 = getelementptr inbounds %struct.bnxt_hwrm_wait_token, ptr %token.5, i32 0, i32 1, i32 1
  %255 = ptrtoint ptr %pprev2.i.i.i727 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %pprev2.i.i.i727, align 4
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_store4_noabort(i32 %257)
  store volatile ptr %254, ptr %256, align 4
  %tobool.not.i.i.i728 = icmp eq ptr %254, null
  br i1 %tobool.not.i.i.i728, label %if.then.i729.do.end.i734_crit_edge, label %do.body13.i.i.i731

if.then.i729.do.end.i734_crit_edge:               ; preds = %if.then.i729
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i734

do.body13.i.i.i731:                               ; preds = %if.then.i729
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i.i730 = getelementptr inbounds %struct.hlist_node, ptr %254, i32 0, i32 1
  %258 = ptrtoint ptr %pprev14.i.i.i730 to i32
  call void @__asan_store4_noabort(i32 %258)
  store volatile ptr %256, ptr %pprev14.i.i.i730, align 4
  br label %do.end.i734

do.end.i734:                                      ; preds = %do.body13.i.i.i731, %if.then.i729.do.end.i734_crit_edge
  %259 = ptrtoint ptr %pprev2.i.i.i727 to i32
  call void @__asan_store4_noabort(i32 %259)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i727, align 4
  call void @kvfree_call_rcu(ptr noundef nonnull %token.5, ptr noundef null) #10
  br label %__hwrm_release_token.exit737

if.else.i735:                                     ; preds = %if.then476
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %token.5) #10
  br label %__hwrm_release_token.exit737

__hwrm_release_token.exit737:                     ; preds = %if.else.i735, %do.end.i734
  %hwrm_cmd_lock.i736 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 94
  call void @mutex_unlock(ptr noundef %hwrm_cmd_lock.i736) #10
  br label %if.end477

if.end477:                                        ; preds = %__hwrm_release_token.exit737, %exit.if.end477_crit_edge, %if.end38.if.end477_crit_edge, %if.then35, %land.lhs.true22.if.end477_crit_edge, %if.then13
  %rc.0776 = phi i32 [ %rc.0, %__hwrm_release_token.exit737 ], [ %rc.0, %exit.if.end477_crit_edge ], [ -12, %if.end38.if.end477_crit_edge ], [ -7, %land.lhs.true22.if.end477_crit_edge ], [ -22, %if.then35 ], [ -16, %if.then13 ]
  %260 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %flags, align 4
  %and479 = and i32 %261, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and479)
  %tobool480.not = icmp eq i32 %and479, 0
  br i1 %tobool480.not, label %if.else483, label %if.then481

if.then481:                                       ; preds = %if.end477
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %261, 2
  %262 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %or, ptr %flags, align 4
  br label %cleanup485

if.else483:                                       ; preds = %if.end477
  %add.ptr.i = getelementptr i8, ptr %ctx, i32 -4040
  %dma_handle1.i = getelementptr inbounds %struct.bnxt_hwrm_ctx, ptr %ctx, i32 0, i32 1
  %263 = ptrtoint ptr %dma_handle1.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %dma_handle1.i, align 8
  %slice_addr.i = getelementptr inbounds %struct.bnxt_hwrm_ctx, ptr %ctx, i32 0, i32 5
  %265 = ptrtoint ptr %slice_addr.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %slice_addr.i, align 8
  %tobool.not.i738 = icmp eq ptr %266, null
  br i1 %tobool.not.i738, label %if.else483.if.end.i740_crit_edge, label %if.then.i739

if.else483.if.end.i740_crit_edge:                 ; preds = %if.else483
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i740

if.then.i739:                                     ; preds = %if.else483
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 9
  %267 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %268, i32 0, i32 44
  %slice_size.i = getelementptr inbounds %struct.bnxt_hwrm_ctx, ptr %ctx, i32 0, i32 6
  %269 = ptrtoint ptr %slice_size.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %slice_size.i, align 4
  %slice_handle.i = getelementptr inbounds %struct.bnxt_hwrm_ctx, ptr %ctx, i32 0, i32 4
  %271 = ptrtoint ptr %slice_handle.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %slice_handle.i, align 4
  call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %270, ptr noundef nonnull %266, i32 noundef %272, i32 noundef 0) #10
  br label %if.end.i740

if.end.i740:                                      ; preds = %if.then.i739, %if.else483.if.end.i740_crit_edge
  %273 = call ptr @memset(ptr %ctx, i32 0, i32 56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %264)
  %tobool3.not.i = icmp eq i32 %264, 0
  br i1 %tobool3.not.i, label %if.end.i740.cleanup485_crit_edge, label %if.then4.i

if.end.i740.cleanup485_crit_edge:                 ; preds = %if.end.i740
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup485

if.then4.i:                                       ; preds = %if.end.i740
  call void @__sanitizer_cov_trace_pc() #12
  %hwrm_dma_pool.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 79
  %274 = ptrtoint ptr %hwrm_dma_pool.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %hwrm_dma_pool.i, align 8
  call void @dma_pool_free(ptr noundef %275, ptr noundef %add.ptr.i, i32 noundef %264) #10
  br label %cleanup485

cleanup485:                                       ; preds = %if.then4.i, %if.end.i740.cleanup485_crit_edge, %if.then481
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %short_input) #10
  ret i32 %rc.0776
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hwrm_req_send_silent(ptr noundef %bp, ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %req, null
  br i1 %tobool.not.i.i, label %if.then.i.i5, label %if.end.i.i

if.end.i.i:                                       ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %req, i32 4040
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %req, align 8
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #10
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  %conv.i.i.i = zext i16 %2 to i32
  %add.i.i.i = add i32 %conv.i.i.i, %3
  %conv1.i.i.i = zext i32 %add.i.i.i to i64
  %xor.i.i.i = xor i64 %conv1.i.i.i, -5268659016163547157
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %xor.i.i.i)
  %cmp.not.i.i = icmp eq i64 %5, %xor.i.i.i
  br i1 %cmp.not.i.i, label %__hwrm_ctx.exit.i, label %hwrm_req_flags.exit

__hwrm_ctx.exit.i:                                ; preds = %if.end.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %__hwrm_ctx.exit.i.if.end.i.i12_crit_edge, label %if.then.i

__hwrm_ctx.exit.i.if.end.i.i12_crit_edge:         ; preds = %__hwrm_ctx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i12

if.then.i:                                        ; preds = %__hwrm_ctx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags1.i = getelementptr i8, ptr %req, i32 4076
  %6 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags1.i, align 4
  %or.i = or i32 %7, 4
  store i32 %or.i, ptr %flags1.i, align 4
  br label %if.end.i.i12

hwrm_req_flags.exit:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev3.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %8 = ptrtoint ptr %dev3.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef %conv.i.i.i) #13
  tail call void @dump_stack() #13
  br label %if.end.i.i12

if.then.i.i5:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %10 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.5) #13
  tail call void @dump_stack() #13
  %12 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.5) #13
  br label %__hwrm_ctx.exit.thread.i15

if.end.i.i12:                                     ; preds = %hwrm_req_flags.exit, %if.then.i, %__hwrm_ctx.exit.i.if.end.i.i12_crit_edge
  %14 = ptrtoint ptr %req to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %req, align 8
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #10
  %conv.i.i.i7 = zext i16 %16 to i32
  %add.i.i.i8 = add i32 %conv.i.i.i7, %3
  %conv1.i.i.i9 = zext i32 %add.i.i.i8 to i64
  %xor.i.i.i10 = xor i64 %conv1.i.i.i9, -5268659016163547157
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %add.ptr.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %xor.i.i.i10)
  %cmp.not.i.i11 = icmp eq i64 %18, %xor.i.i.i10
  br i1 %cmp.not.i.i11, label %__hwrm_ctx.exit.i17, label %if.then2.i.i14

if.then2.i.i14:                                   ; preds = %if.end.i.i12
  call void @__sanitizer_cov_trace_pc() #12
  %dev3.i.i13 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %19 = ptrtoint ptr %dev3.i.i13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev3.i.i13, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.6, i32 noundef %conv.i.i.i7) #13
  br label %__hwrm_ctx.exit.thread.i15

__hwrm_ctx.exit.thread.i15:                       ; preds = %if.then2.i.i14, %if.then.i.i5
  tail call void @dump_stack() #13
  br label %hwrm_req_send.exit

__hwrm_ctx.exit.i17:                              ; preds = %if.end.i.i12
  %tobool.not.i16 = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i16, label %__hwrm_ctx.exit.i17.hwrm_req_send.exit_crit_edge, label %if.end.i

__hwrm_ctx.exit.i17.hwrm_req_send.exit_crit_edge: ; preds = %__hwrm_ctx.exit.i17
  call void @__sanitizer_cov_trace_pc() #12
  br label %hwrm_req_send.exit

if.end.i:                                         ; preds = %__hwrm_ctx.exit.i17
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call fastcc i32 @__hwrm_send(ptr noundef %bp, ptr noundef nonnull %add.ptr.i.i) #10
  br label %hwrm_req_send.exit

hwrm_req_send.exit:                               ; preds = %if.end.i, %__hwrm_ctx.exit.i17.hwrm_req_send.exit_crit_edge, %__hwrm_ctx.exit.thread.i15
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -22, %__hwrm_ctx.exit.i17.hwrm_req_send.exit_crit_edge ], [ -22, %__hwrm_ctx.exit.thread.i15 ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @hwrm_req_dma_slice(ptr nocapture noundef readonly %bp, ptr noundef %req, i32 noundef %size, ptr noundef %dma_handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %req, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.5) #13
  br label %__hwrm_ctx.exit.thread

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %req, i32 4040
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %req, align 8
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #10
  %5 = ptrtoint ptr %add.ptr.i to i32
  %conv.i.i = zext i16 %4 to i32
  %add.i.i = add i32 %conv.i.i, %5
  %conv1.i.i = zext i32 %add.i.i to i64
  %xor.i.i = xor i64 %conv1.i.i, -5268659016163547157
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %xor.i.i)
  %cmp.not.i = icmp eq i64 %7, %xor.i.i
  br i1 %cmp.not.i, label %__hwrm_ctx.exit, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev3.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %8 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.6, i32 noundef %conv.i.i) #13
  br label %__hwrm_ctx.exit.thread

__hwrm_ctx.exit.thread:                           ; preds = %if.then2.i, %if.then.i
  tail call void @dump_stack() #13
  br label %cleanup

__hwrm_ctx.exit:                                  ; preds = %if.end.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %__hwrm_ctx.exit.cleanup_crit_edge, label %if.end

__hwrm_ctx.exit.cleanup_crit_edge:                ; preds = %__hwrm_ctx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %__hwrm_ctx.exit
  %allocated = getelementptr i8, ptr %req, i32 4084
  %10 = ptrtoint ptr %allocated to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %allocated, align 4
  %sub = sub i32 8192, %11
  %sub1 = sub i32 %sub, %size
  %and = and i32 %sub1, -16
  %add.ptr3 = getelementptr i8, ptr %req, i32 %and
  %add.ptr4 = getelementptr i8, ptr %req, i32 %sub
  %cmp = icmp ult ptr %add.ptr3, %add.ptr4
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %req_len = getelementptr i8, ptr %req, i32 4072
  %12 = ptrtoint ptr %req_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %req_len, align 8
  %add.ptr5 = getelementptr i8, ptr %req, i32 %13
  %cmp6.not = icmp ugt ptr %add.ptr5, %add.ptr3
  br i1 %cmp6.not, label %land.lhs.true.if.end11_crit_edge, label %if.then7

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %gepdiff = sub i32 8192, %and
  %14 = ptrtoint ptr %allocated to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %gepdiff, ptr %allocated, align 4
  %dma_handle9 = getelementptr i8, ptr %req, i32 4048
  %15 = ptrtoint ptr %dma_handle9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_handle9, align 8
  %add10 = add i32 %16, %and
  %17 = ptrtoint ptr %dma_handle to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add10, ptr %dma_handle, align 4
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %slice_addr = getelementptr i8, ptr %req, i32 4064
  %18 = ptrtoint ptr %slice_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slice_addr, align 8
  %tobool12.not = icmp eq ptr %19, null
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %22 = ptrtoint ptr %req to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %req, align 8
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %conv = zext i16 %24 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.4, i32 noundef %conv) #13
  tail call void @dump_stack() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %pdev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 9
  %25 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev, align 8
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %gfp = getelementptr i8, ptr %req, i32 4088
  %27 = ptrtoint ptr %gfp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gfp, align 8
  %and.i = lshr i32 %28, 5
  %29 = and i32 %and.i, 256
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev15, i32 noundef %size, ptr noundef %dma_handle, i32 noundef %28, i32 noundef %29) #10
  %tobool17.not = icmp eq ptr %call.i, null
  br i1 %tobool17.not, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %slice_addr to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %slice_addr, align 8
  %slice_size = getelementptr i8, ptr %req, i32 4068
  %31 = ptrtoint ptr %slice_size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %size, ptr %slice_size, align 4
  %32 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_handle, align 4
  %slice_handle = getelementptr i8, ptr %req, i32 4060
  %34 = ptrtoint ptr %slice_handle to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %slice_handle, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end14.cleanup_crit_edge, %if.then13, %if.then7, %__hwrm_ctx.exit.cleanup_crit_edge, %__hwrm_ctx.exit.thread
  %retval.0 = phi ptr [ %add.ptr3, %if.then7 ], [ null, %if.then13 ], [ %call.i, %if.end19 ], [ null, %__hwrm_ctx.exit.cleanup_crit_edge ], [ null, %if.end14.cleanup_crit_edge ], [ null, %__hwrm_ctx.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iowrite32_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hwrm_req_dbg(ptr nocapture noundef readonly %bp, ptr nocapture noundef readonly %req) unnamed_addr #0 align 64 {
entry:
  %opt = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmpl_ring = getelementptr inbounds %struct.input, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %cmpl_ring to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cmpl_ring, align 2
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %req, align 8
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv1 = zext i16 %4 to i32
  %target_id = getelementptr inbounds %struct.input, ptr %req, i32 0, i32 3
  %5 = ptrtoint ptr %target_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %target_id, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv2 = zext i16 %7 to i32
  %seq_id = getelementptr inbounds %struct.input, ptr %req, i32 0, i32 2
  %8 = ptrtoint ptr %seq_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %seq_id, align 4
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv3 = zext i16 %10 to i32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %opt) #10
  %11 = call ptr @memcpy(ptr %opt, ptr @__const.hwrm_req_dbg.opt, i32 32)
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp.not = icmp eq i16 %1, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then, !prof !78

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %12 to i32
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %opt, i32 noundef 16, ptr noundef nonnull @.str.22, i32 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %6)
  %cmp6.not = icmp eq i16 %6, -1
  br i1 %cmp6.not, label %if.end.do.body21_crit_edge, label %if.then14, !prof !78

if.end.do.body21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = call i32 @strlen(ptr noundef nonnull %opt) #15
  %add.ptr = getelementptr i8, ptr %opt, i32 %call17
  %add.ptr18 = getelementptr i8, ptr %add.ptr, i32 -1
  %call19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr18, i32 noundef 16, ptr noundef nonnull @.str.23, i32 noundef %conv2)
  br label %do.body21

do.body21:                                        ; preds = %if.then14, %if.end.do.body21_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hwrm_req_dbg.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hwrm_req_dbg, %if.then30)) #10
          to label %do.end34 [label %if.then30], !srcloc !71

if.then30:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @hwrm_req_dbg.__UNIQUE_ID_ddebug617, ptr noundef %14, ptr noundef nonnull @.str.25, i32 noundef %conv1, i32 noundef %conv3, ptr noundef nonnull %opt) #10
  br label %do.end34

do.end34:                                         ; preds = %if.then30, %do.body21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %opt) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_fw_health_readl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !17, !18, !20, !21, !23, !24, !25, !26, !28, !30, !31, !33, !34, !36, !38, !39, !41, !42, !44, !45, !47, !49, !50, !52, !54, !56, !57}
!llvm.named.register.sp = !{!58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_hwrm.c", i32 288, i32 23}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_hwrm.c", i32 410, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_hwrm.c", i32 418, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_hwrm.c", i32 800, i32 23}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_hwrm.c", i32 107, i32 23}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_hwrm.c", i32 116, i32 23}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_hwrm.c", i32 480, i32 3}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__hwrm_send.__UNIQUE_ID_ddebug618, !22, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_hwrm.c", i32 496, i32 24}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_hwrm.c", i32 572, i32 6}
!30 = !{ptr @__hwrm_send.__UNIQUE_ID_ddebug622, !29, !"__UNIQUE_ID_ddebug622", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_hwrm.c", i32 582, i32 4}
!33 = !{ptr @__hwrm_send.__UNIQUE_ID_ddebug624, !32, !"__UNIQUE_ID_ddebug624", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_hwrm.c", i32 613, i32 27}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_hwrm.c", i32 627, i32 6}
!38 = !{ptr @__hwrm_send.__UNIQUE_ID_ddebug629, !37, !"__UNIQUE_ID_ddebug629", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_hwrm.c", i32 639, i32 4}
!41 = !{ptr @__hwrm_send.__UNIQUE_ID_ddebug630, !40, !"__UNIQUE_ID_ddebug630", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_hwrm.c", i32 662, i32 4}
!44 = !{ptr @__hwrm_send.__UNIQUE_ID_ddebug631, !43, !"__UNIQUE_ID_ddebug631", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_hwrm.c", i32 676, i32 24}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_hwrm.c", i32 679, i32 3}
!49 = !{ptr @__hwrm_send.__UNIQUE_ID_ddebug632, !48, !"__UNIQUE_ID_ddebug632", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_hwrm.c", i32 430, i32 21}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_hwrm.c", i32 433, i32 39}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_hwrm.c", i32 435, i32 2}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @hwrm_req_dbg.__UNIQUE_ID_ddebug617, !55, !"__UNIQUE_ID_ddebug617", i1 false, i1 false}
!58 = !{!"sp"}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"auto-init"}
!69 = !{i64 2149336465}
!70 = !{i64 2149336731}
!71 = !{i64 2148363305, i64 2148363310, i64 2148363323, i64 2148363367, i64 2148363401, i64 2148363422}
!72 = !{i64 2149438076}
!73 = !{i64 2159261184}
!74 = !{i64 2159261404}
!75 = !{i64 6241326}
!76 = !{i64 2159261802}
!77 = !{i64 2159303498}
!78 = !{!"branch_weights", i32 2000, i32 1}
