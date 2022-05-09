; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp_eth.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp_eth.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.75 = type { i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%union.eth_table_entry = type { %struct.anon }
%struct.anon = type { i64, i64, [6 x i8], [2 x i8], i64 }
%struct.nfp_eth_table = type { i32, i32, [0 x %struct.nfp_eth_table_port] }
%struct.nfp_eth_table_port = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i8, i8, i8, i8, i8, i8, i8, i32, i8, i32 }

@__nfp_eth_read_ports._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 257, ptr @.str.3, ptr @.str.4 }, align 1
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nfp: reading port table failed %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__nfp_eth_read_ports\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp_eth.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__nfp_eth_read_ports._entry_ptr = internal global ptr @__nfp_eth_read_ports._entry, section ".printk_index", align 4
@__nfp_eth_read_ports._entry.5 = internal constant %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 271, ptr @.str.3, ptr @.str.4 }, align 1
@.str.6 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"nfp: table entry count reported (%d) does not match entries present (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@__nfp_eth_read_ports._entry_ptr.7 = internal global ptr @__nfp_eth_read_ports._entry.5, section ".printk_index", align 4
@nfp_eth_config_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 316, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfp_eth_config_start\00", [43 x i8] zeroinitializer }, align 32
@nfp_eth_config_start._entry_ptr = internal global ptr @nfp_eth_config_start._entry, section ".printk_index", align 4
@nfp_eth_config_start._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 322, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"nfp: trying to set port state on disabled port %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nfp_eth_config_start._entry_ptr.12 = internal global ptr @nfp_eth_config_start._entry.9, section ".printk_index", align 4
@__nfp_eth_set_speed._entry = internal constant %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 586, ptr @.str.11, ptr @.str.4 }, align 1
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"nfp: could not find matching lane rate for speed %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__nfp_eth_set_speed\00", [44 x i8] zeroinitializer }, align 32
@__nfp_eth_set_speed._entry_ptr = internal global ptr @__nfp_eth_set_speed._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nsp_eth_rate_tbl = internal constant { [6 x %struct.anon.75], [48 x i8] } { [6 x %struct.anon.75] [%struct.anon.75 zeroinitializer, %struct.anon.75 { i32 1, i32 10 }, %struct.anon.75 { i32 2, i32 100 }, %struct.anon.75 { i32 3, i32 1000 }, %struct.anon.75 { i32 4, i32 10000 }, %struct.anon.75 { i32 5, i32 25000 }], [48 x i8] zeroinitializer }, align 32
@nfp_eth_calc_port_geometry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 196, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nfp: Port %d subport %d is a duplicate\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfp_eth_calc_port_geometry\00", [37 x i8] zeroinitializer }, align 32
@nfp_eth_calc_port_geometry._entry_ptr = internal global ptr @nfp_eth_calc_port_geometry._entry, section ".printk_index", align 4
@nfp_eth_set_bit_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 475, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"nfp: set operations not supported, please update flash\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nfp_eth_set_bit_config\00", [41 x i8] zeroinitializer }, align 32
@nfp_eth_set_bit_config._entry_ptr = internal global ptr @nfp_eth_set_bit_config._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 45]
@__sancov_gen_cov_switch_values.19 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 10, i64 100, i64 1000, i64 10000, i64 25000]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 257, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 270, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 316, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 321, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 584, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"nsp_eth_rate_tbl\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 85, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 193, i32 5 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [60 x i8] c"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp_eth.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 474, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__nfp_eth_read_ports._entry, ptr @__nfp_eth_read_ports._entry.5, ptr @__nfp_eth_read_ports._entry_ptr, ptr @__nfp_eth_read_ports._entry_ptr.7, ptr @__nfp_eth_set_speed._entry, ptr @__nfp_eth_set_speed._entry_ptr, ptr @nfp_eth_calc_port_geometry._entry, ptr @nfp_eth_calc_port_geometry._entry_ptr, ptr @nfp_eth_config_start._entry, ptr @nfp_eth_config_start._entry.9, ptr @nfp_eth_config_start._entry_ptr, ptr @nfp_eth_config_start._entry_ptr.12, ptr @nfp_eth_set_bit_config._entry, ptr @nfp_eth_set_bit_config._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @nsp_eth_rate_tbl, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_eth_config_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_eth_config_start._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsp_eth_rate_tbl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_eth_calc_port_geometry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_eth_set_bit_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_eth_read_ports(ptr noundef %cpp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_nsp_open(ptr noundef %cpp) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call ptr @__nfp_eth_read_ports(ptr noundef %cpp, ptr noundef %call)
  tail call void @nfp_nsp_close(ptr noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_nsp_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__nfp_eth_read_ports(ptr noundef %cpp, ptr noundef %nsp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1536) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nfp_nsp_read_eth_table(ptr noundef %nsp, ptr noundef nonnull %call7.i.i, i32 noundef 1536) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #6
  %parent = getelementptr inbounds %struct.device, ptr %call3, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %call1) #10
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %cnt.096 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %i.095 = phi i32 [ %inc9, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %union.eth_table_entry, ptr %call7.i.i, i32 %i.095
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %arrayidx, align 8
  %and = and i64 %4, 1080863910568919040
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool6.not = icmp ne i64 %and, 0
  %inc = zext i1 %tobool6.not to i32
  %spec.select = add i32 %cnt.096, %inc
  %inc9 = add nuw nsw i32 %i.095, 1
  %exitcond.not = icmp eq i32 %inc9, 48
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool10.not = icmp eq i32 %call1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %spec.select)
  %cmp11.not = icmp eq i32 %call1, %spec.select
  %or.cond = select i1 %tobool10.not, i1 true, i1 %cmp11.not
  br i1 %or.cond, label %if.end8.i.i, label %do.end15

do.end15:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #6
  %parent17 = getelementptr inbounds %struct.device, ptr %call16, i32 0, i32 1
  %5 = ptrtoint ptr %parent17 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent17, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6, i32 noundef %call1, i32 noundef %spec.select) #10
  br label %cleanup.sink.split

if.end8.i.i:                                      ; preds = %for.end
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select, i32 68) #6
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0
  %10 = add nuw i32 %9, 8
  %retval.0.i = select i1 %8, i32 -1, i32 %10
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #11
  %tobool21.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool21.not, label %if.end8.i.i.cleanup.sink.split_crit_edge, label %if.end23

if.end8.i.i.cleanup.sink.split_crit_edge:         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end23:                                         ; preds = %if.end8.i.i
  %11 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %call9.i.i, align 128
  br label %for.body26

for.body26:                                       ; preds = %for.inc36.for.body26_crit_edge, %if.end23
  %j.099 = phi i32 [ 0, %if.end23 ], [ %j.1, %for.inc36.for.body26_crit_edge ]
  %i.197 = phi i32 [ 0, %if.end23 ], [ %inc37, %for.inc36.for.body26_crit_edge ]
  %arrayidx27 = getelementptr %union.eth_table_entry, ptr %call7.i.i, i32 %i.197
  %12 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx27, align 8
  %and29 = and i64 %13, 1080863910568919040
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and29)
  %tobool30.not = icmp eq i64 %and29, 0
  br i1 %tobool30.not, label %for.body26.for.inc36_crit_edge, label %if.then31

for.body26.for.inc36_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc36

if.then31:                                        ; preds = %for.body26
  %inc33 = add i32 %j.099, 1
  %arrayidx34 = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %j.099
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #6
  %state2.i = getelementptr inbounds %struct.anon, ptr %arrayidx27, i32 0, i32 1
  %15 = ptrtoint ptr %state2.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %state2.i, align 8
  %17 = tail call i64 @llvm.bswap.i64(i64 %16) #6
  %18 = trunc i64 %14 to i32
  %19 = lshr i32 %18, 8
  %conv.i = and i32 %19, 255
  %20 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv.i, ptr %arrayidx34, align 4
  %index15.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %j.099, i32 1
  %21 = ptrtoint ptr %index15.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %i.197, ptr %index15.i, align 4
  %i.197.frozen = freeze i32 %i.197
  %div.i = udiv i32 %i.197.frozen, 24
  %nbi.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %j.099, i32 2
  %22 = ptrtoint ptr %nbi.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div.i, ptr %nbi.i, align 4
  %23 = mul i32 %div.i, 24
  %rem.i.decomposed = sub i32 %i.197.frozen, %23
  %base.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %j.099, i32 3
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %rem.i.decomposed, ptr %base.i, align 4
  %conv34.i = and i32 %18, 15
  %lanes.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %j.099, i32 4
  %25 = ptrtoint ptr %lanes.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv34.i, ptr %lanes.i, align 4
  %enabled.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %j.099, i32 13
  %26 = trunc i64 %17 to i8
  %27 = lshr i8 %26, 1
  %28 = and i8 %27, 1
  %29 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %enabled.i, align 4
  %tx_enabled.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %j.099, i32 14
  %30 = lshr i8 %26, 2
  %31 = and i8 %30, 1
  %32 = ptrtoint ptr %tx_enabled.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %tx_enabled.i, align 1
  %rx_enabled.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %j.099, i32 15
  %33 = lshr i8 %26, 3
  %34 = and i8 %33, 1
  %35 = ptrtoint ptr %rx_enabled.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %rx_enabled.i, align 2
  %36 = trunc i64 %17 to i32
  %37 = lshr i32 %36, 8
  %conv111.i = and i32 %37, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %conv111.i)
  %switch.i = icmp ult i32 %conv111.i, 6
  br i1 %switch.i, label %if.then.i.i88, label %if.then31.nfp_eth_rate2speed.exit.i_crit_edge

if.then31.nfp_eth_rate2speed.exit.i_crit_edge:    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_eth_rate2speed.exit.i

if.then.i.i88:                                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %speed.i.i = getelementptr [6 x %struct.anon.75], ptr @nsp_eth_rate_tbl, i32 0, i32 %conv111.i, i32 1
  %38 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %speed.i.i, align 4
  br label %nfp_eth_rate2speed.exit.i

nfp_eth_rate2speed.exit.i:                        ; preds = %if.then.i.i88, %if.then31.nfp_eth_rate2speed.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %39, %if.then.i.i88 ], [ 0, %if.then31.nfp_eth_rate2speed.exit.i_crit_edge ]
  %mul.i = mul i32 %retval.0.i.i, %conv34.i
  %speed.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %j.099, i32 5
  %40 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul.i, ptr %speed.i, align 4
  %41 = lshr i32 %36, 12
  %conv131.i = and i32 %41, 255
  %interface.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %j.099, i32 6
  %42 = ptrtoint ptr %interface.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv131.i, ptr %interface.i, align 4
  %43 = lshr i32 %36, 20
  %conv150.i = and i32 %43, 3
  %media.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %j.099, i32 7
  %44 = ptrtoint ptr %media.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv150.i, ptr %media.i, align 4
  %mac_addr.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %j.099, i32 10
  %mac_addr151.i = getelementptr inbounds %struct.anon, ptr %arrayidx27, i32 0, i32 2
  %45 = ptrtoint ptr %mac_addr151.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %mac_addr151.i, align 8
  %arrayidx2.i.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %j.099, i32 10, i32 5
  %47 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx2.i.i, align 1
  %arrayidx.1.i.i = getelementptr %struct.anon, ptr %arrayidx27, i32 0, i32 2, i32 1
  %48 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.1.i.i, align 1
  %arrayidx2.1.i.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %j.099, i32 10, i32 4
  %50 = ptrtoint ptr %arrayidx2.1.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx2.1.i.i, align 4
  %arrayidx.2.i.i = getelementptr %struct.anon, ptr %arrayidx27, i32 0, i32 2, i32 2
  %51 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.2.i.i, align 2
  %arrayidx2.2.i.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %j.099, i32 10, i32 3
  %53 = ptrtoint ptr %arrayidx2.2.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx2.2.i.i, align 1
  %arrayidx.3.i.i = getelementptr %struct.anon, ptr %arrayidx27, i32 0, i32 2, i32 3
  %54 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.3.i.i, align 1
  %arrayidx2.3.i.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %j.099, i32 10, i32 2
  %56 = ptrtoint ptr %arrayidx2.3.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %arrayidx2.3.i.i, align 2
  %arrayidx.4.i.i = getelementptr %struct.anon, ptr %arrayidx27, i32 0, i32 2, i32 4
  %57 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.4.i.i, align 4
  %arrayidx2.4.i.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %j.099, i32 10, i32 1
  %59 = ptrtoint ptr %arrayidx2.4.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx2.4.i.i, align 1
  %arrayidx.5.i.i = getelementptr %struct.anon, ptr %arrayidx27, i32 0, i32 2, i32 5
  %60 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.5.i.i, align 1
  %62 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %mac_addr.i, align 4
  %and169.i = lshr i64 %14, 54
  %63 = trunc i64 %and169.i to i8
  %conv171.i = and i8 %63, 63
  %label_port.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %j.099, i32 11
  %64 = ptrtoint ptr %label_port.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv171.i, ptr %label_port.i, align 2
  %and188.i = lshr i64 %14, 48
  %65 = trunc i64 %and188.i to i8
  %conv190.i = and i8 %65, 63
  %label_subport.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %j.099, i32 12
  %66 = ptrtoint ptr %label_subport.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv190.i, ptr %label_subport.i, align 1
  %call191.i = tail call zeroext i16 @nfp_nsp_get_abi_ver_minor(ptr noundef %nsp) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %call191.i)
  %cmp.i = icmp ult i16 %call191.i, 17
  br i1 %cmp.i, label %nfp_eth_rate2speed.exit.i.for.inc36_crit_edge, label %do.end208.i

nfp_eth_rate2speed.exit.i.for.inc36_crit_edge:    ; preds = %nfp_eth_rate2speed.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc36

do.end208.i:                                      ; preds = %nfp_eth_rate2speed.exit.i
  %override_changed.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %j.099, i32 16
  %67 = lshr i64 %17, 22
  %68 = trunc i64 %67 to i8
  %69 = and i8 %68, 1
  %70 = ptrtoint ptr %override_changed.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %override_changed.i, align 1
  %71 = lshr i32 %36, 23
  %conv232.i = and i32 %71, 7
  %aneg.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %j.099, i32 9
  %72 = ptrtoint ptr %aneg.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv232.i, ptr %aneg.i, align 4
  %call233.i = tail call zeroext i16 @nfp_nsp_get_abi_ver_minor(ptr noundef %nsp) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 22, i16 %call233.i)
  %cmp235.i = icmp ult i16 %call233.i, 22
  br i1 %cmp235.i, label %do.end208.i.for.inc36_crit_edge, label %do.end253.i

do.end208.i.for.inc36_crit_edge:                  ; preds = %do.end208.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc36

do.end253.i:                                      ; preds = %do.end208.i
  call void @__sanitizer_cov_trace_pc() #8
  %sh.diff.i = lshr i64 %14, 59
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %fec_modes_supported.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %j.099, i32 20
  %73 = ptrtoint ptr %fec_modes_supported.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fec_modes_supported.i, align 4
  %or.i = and i32 %tr.sh.diff.i, 6
  %or279.i = or i32 %74, %or.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or279.i)
  %tobool281.not.i = icmp eq i32 %or279.i, 0
  %or284.i = or i32 %or279.i, 9
  %spec.select.i = select i1 %tobool281.not.i, i32 0, i32 %or284.i
  %75 = ptrtoint ptr %fec_modes_supported.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %spec.select.i, ptr %fec_modes_supported.i, align 4
  %76 = lshr i32 %36, 26
  %sh_prom.i = and i32 %76, 3
  %shl304.i = shl nuw nsw i32 1, %sh_prom.i
  %fec305.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %j.099, i32 8
  %77 = ptrtoint ptr %fec305.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %shl304.i, ptr %fec305.i, align 4
  br label %for.inc36

for.inc36:                                        ; preds = %do.end253.i, %do.end208.i.for.inc36_crit_edge, %nfp_eth_rate2speed.exit.i.for.inc36_crit_edge, %for.body26.for.inc36_crit_edge
  %j.1 = phi i32 [ %j.099, %for.body26.for.inc36_crit_edge ], [ %inc33, %nfp_eth_rate2speed.exit.i.for.inc36_crit_edge ], [ %inc33, %do.end208.i.for.inc36_crit_edge ], [ %inc33, %do.end253.i ]
  %inc37 = add nuw nsw i32 %i.197, 1
  %exitcond103.not = icmp eq i32 %inc37, 48
  br i1 %exitcond103.not, label %for.end38, label %for.inc36.for.body26_crit_edge

for.inc36.for.body26_crit_edge:                   ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body26

for.end38:                                        ; preds = %for.inc36
  %78 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp80.not.i = icmp eq i32 %79, 0
  br i1 %cmp80.not.i, label %for.end38.cleanup.sink.split_crit_edge, label %for.body.lr.ph.i

for.end38.cleanup.sink.split_crit_edge:           ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.body.lr.ph.i:                                 ; preds = %for.end38
  %max_index.i = getelementptr inbounds %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 1
  br label %for.body6.lr.ph.i

for.body6.lr.ph.i:                                ; preds = %for.inc44.i.for.body6.lr.ph.i_crit_edge, %for.body.lr.ph.i
  %i.081.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc45.i, %for.inc44.i.for.body6.lr.ph.i_crit_edge ]
  %80 = ptrtoint ptr %max_index.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %max_index.i, align 4
  %index.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %i.081.i, i32 1
  %82 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %index.i, align 4
  %84 = tail call i32 @llvm.umax.i32(i32 %81, i32 %83) #6
  %85 = ptrtoint ptr %max_index.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %max_index.i, align 4
  %label_port.i89 = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %i.081.i, i32 11
  %port_lanes.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %i.081.i, i32 18
  %label_subport.i90 = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %i.081.i, i32 12
  %is_split.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %i.081.i, i32 19
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.inc.i.for.body6.i_crit_edge, %for.body6.lr.ph.i
  %j.078.i = phi i32 [ 0, %for.body6.lr.ph.i ], [ %inc.i, %for.inc.i.for.body6.i_crit_edge ]
  %86 = ptrtoint ptr %label_port.i89 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %label_port.i89, align 2
  %label_port11.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %j.078.i, i32 11
  %88 = ptrtoint ptr %label_port11.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %label_port11.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %87, i8 %89)
  %cmp13.not.i = icmp eq i8 %87, %89
  br i1 %cmp13.not.i, label %if.end.i, label %for.body6.i.for.inc.i_crit_edge

for.body6.i.for.inc.i_crit_edge:                  ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body6.i
  %lanes.i91 = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %j.078.i, i32 4
  %90 = ptrtoint ptr %lanes.i91 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %lanes.i91, align 4
  %92 = ptrtoint ptr %port_lanes.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %port_lanes.i, align 4
  %add.i = add i32 %93, %91
  store i32 %add.i, ptr %port_lanes.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.081.i, i32 %j.078.i)
  %cmp19.i = icmp eq i32 %i.081.i, %j.078.i
  br i1 %cmp19.i, label %if.end.i.for.inc.i_crit_edge, label %if.end22.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end22.i:                                       ; preds = %if.end.i
  %94 = ptrtoint ptr %label_subport.i90 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %label_subport.i90, align 1
  %label_subport28.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %j.078.i, i32 12
  %96 = ptrtoint ptr %label_subport28.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %label_subport28.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %95, i8 %97)
  %cmp30.i = icmp eq i8 %95, %97
  br i1 %cmp30.i, label %do.end.i, label %if.end22.i.if.end41.i_crit_edge

if.end22.i.if.end41.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

do.end.i:                                         ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #6
  %parent.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 1
  %98 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %parent.i, align 8
  %100 = ptrtoint ptr %label_port.i89 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %label_port.i89, align 2
  %conv36.i = zext i8 %101 to i32
  %102 = ptrtoint ptr %label_subport.i90 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %label_subport.i90, align 1
  %conv40.i = zext i8 %103 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %99, ptr noundef nonnull @.str.15, i32 noundef %conv36.i, i32 noundef %conv40.i) #10
  br label %if.end41.i

if.end41.i:                                       ; preds = %do.end.i, %if.end22.i.if.end41.i_crit_edge
  %104 = ptrtoint ptr %is_split.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %is_split.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end41.i, %if.end.i.for.inc.i_crit_edge, %for.body6.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %j.078.i, 1
  %105 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %call9.i.i, align 128
  %cmp5.i = icmp ult i32 %inc.i, %106
  br i1 %cmp5.i, label %for.inc.i.for.body6.i_crit_edge, label %for.inc44.i

for.inc.i.for.body6.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6.i

for.inc44.i:                                      ; preds = %for.inc.i
  %inc45.i = add nuw i32 %i.081.i, 1
  %cmp.i92 = icmp ult i32 %inc45.i, %106
  br i1 %cmp.i92, label %for.inc44.i.for.body6.lr.ph.i_crit_edge, label %nfp_eth_calc_port_geometry.exit

for.inc44.i.for.body6.lr.ph.i_crit_edge:          ; preds = %for.inc44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6.lr.ph.i

nfp_eth_calc_port_geometry.exit:                  ; preds = %for.inc44.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp41100.not = icmp eq i32 %106, 0
  br i1 %cmp41100.not, label %nfp_eth_calc_port_geometry.exit.cleanup.sink.split_crit_edge, label %nfp_eth_calc_port_geometry.exit.for.body42_crit_edge

nfp_eth_calc_port_geometry.exit.for.body42_crit_edge: ; preds = %nfp_eth_calc_port_geometry.exit
  br label %for.body42

nfp_eth_calc_port_geometry.exit.cleanup.sink.split_crit_edge: ; preds = %nfp_eth_calc_port_geometry.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.body42:                                       ; preds = %nfp_eth_calc_port_type.exit.for.body42_crit_edge, %nfp_eth_calc_port_geometry.exit.for.body42_crit_edge
  %i.2101 = phi i32 [ %inc46, %nfp_eth_calc_port_type.exit.for.body42_crit_edge ], [ 0, %nfp_eth_calc_port_geometry.exit.for.body42_crit_edge ]
  %interface.i93 = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %i.2101, i32 6
  %107 = ptrtoint ptr %interface.i93 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %interface.i93, align 4
  %109 = zext i32 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values)
  switch i32 %108, label %if.end6.i [
    i32 0, label %if.then.i
    i32 45, label %if.then4.i
  ]

if.then.i:                                        ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #8
  %port_type.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %i.2101, i32 17
  %110 = ptrtoint ptr %port_type.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 -17, ptr %port_type.i, align 4
  br label %nfp_eth_calc_port_type.exit

if.then4.i:                                       ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #8
  %port_type5.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %i.2101, i32 17
  %111 = ptrtoint ptr %port_type5.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %port_type5.i, align 4
  br label %nfp_eth_calc_port_type.exit

if.end6.i:                                        ; preds = %for.body42
  %media.i94 = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %i.2101, i32 7
  %112 = ptrtoint ptr %media.i94 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %media.i94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %113)
  %cmp7.i = icmp eq i32 %113, 2
  %port_type9.i = getelementptr %struct.nfp_eth_table, ptr %call9.i.i, i32 0, i32 2, i32 %i.2101, i32 17
  br i1 %cmp7.i, label %if.then8.i, label %if.else10.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %114 = ptrtoint ptr %port_type9.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 3, ptr %port_type9.i, align 4
  br label %nfp_eth_calc_port_type.exit

if.else10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %115 = ptrtoint ptr %port_type9.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 5, ptr %port_type9.i, align 4
  br label %nfp_eth_calc_port_type.exit

nfp_eth_calc_port_type.exit:                      ; preds = %if.else10.i, %if.then8.i, %if.then4.i, %if.then.i
  %inc46 = add nuw i32 %i.2101, 1
  %116 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %call9.i.i, align 128
  %cmp41 = icmp ult i32 %inc46, %117
  br i1 %cmp41, label %nfp_eth_calc_port_type.exit.for.body42_crit_edge, label %nfp_eth_calc_port_type.exit.cleanup.sink.split_crit_edge

nfp_eth_calc_port_type.exit.cleanup.sink.split_crit_edge: ; preds = %nfp_eth_calc_port_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

nfp_eth_calc_port_type.exit.for.body42_crit_edge: ; preds = %nfp_eth_calc_port_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body42

cleanup.sink.split:                               ; preds = %nfp_eth_calc_port_type.exit.cleanup.sink.split_crit_edge, %nfp_eth_calc_port_geometry.exit.cleanup.sink.split_crit_edge, %for.end38.cleanup.sink.split_crit_edge, %if.end8.i.i.cleanup.sink.split_crit_edge, %do.end15, %do.end
  %retval.0.ph = phi ptr [ %call9.i.i, %for.end38.cleanup.sink.split_crit_edge ], [ %call9.i.i, %nfp_eth_calc_port_geometry.exit.cleanup.sink.split_crit_edge ], [ null, %if.end8.i.i.cleanup.sink.split_crit_edge ], [ null, %do.end15 ], [ null, %do.end ], [ %call9.i.i, %nfp_eth_calc_port_type.exit.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_nsp_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_nsp_read_eth_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_eth_config_start(ptr noundef %cpp, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1536) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @nfp_nsp_open(ptr noundef %cpp) #6
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @nfp_nsp_read_eth_table(ptr noundef %call2, ptr noundef nonnull %call7.i.i, i32 noundef 1536) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #6
  %parent = getelementptr inbounds %struct.device, ptr %call8, i32 0, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %call6) #10
  br label %err

if.end9:                                          ; preds = %if.end5
  %arrayidx = getelementptr %union.eth_table_entry, ptr %call7.i.i, i32 %idx
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %arrayidx, align 8
  %and = and i64 %4, 1080863910568919040
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool10.not = icmp eq i64 %and, 0
  br i1 %tobool10.not, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call ptr @nfp_cpp_device(ptr noundef %cpp) #6
  %parent16 = getelementptr inbounds %struct.device, ptr %call15, i32 0, i32 1
  %5 = ptrtoint ptr %parent16 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent16, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.10, i32 noundef %idx) #10
  br label %err

if.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nfp_nsp_config_set_state(ptr noundef %call2, ptr noundef nonnull %call7.i.i, i32 noundef %idx) #6
  br label %cleanup

err:                                              ; preds = %do.end14, %do.end
  tail call void @nfp_nsp_close(ptr noundef %call2) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end17, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.then4 ], [ inttoptr (i32 -5 to ptr), %err ], [ %call2, %if.end17 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_nsp_config_set_state(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_eth_config_cleanup_end(ptr noundef %nsp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_nsp_config_entries(ptr noundef %nsp) #6
  tail call void @nfp_nsp_config_set_modified(ptr noundef %nsp, i1 noundef zeroext false) #6
  tail call void @nfp_nsp_config_clear_state(ptr noundef %nsp) #6
  tail call void @nfp_nsp_close(ptr noundef %nsp) #6
  tail call void @kfree(ptr noundef %call) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_nsp_config_entries(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_nsp_config_set_modified(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_nsp_config_clear_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_eth_config_commit_end(ptr noundef %nsp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_nsp_config_entries(ptr noundef %nsp) #6
  %call1 = tail call zeroext i1 @nfp_nsp_config_modified(ptr noundef %nsp) #6
  br i1 %call1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @nfp_nsp_write_eth_table(ptr noundef %nsp, ptr noundef %call, i32 noundef 1536) #6
  %0 = tail call i32 @llvm.smin.i32(i32 %call2, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %0, %if.then ], [ 1, %entry.if.end_crit_edge ]
  %call.i = tail call ptr @nfp_nsp_config_entries(ptr noundef %nsp) #6
  tail call void @nfp_nsp_config_set_modified(ptr noundef %nsp, i1 noundef zeroext false) #6
  tail call void @nfp_nsp_config_clear_state(ptr noundef %nsp) #6
  tail call void @nfp_nsp_close(ptr noundef %nsp) #6
  tail call void @kfree(ptr noundef %call.i) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfp_nsp_config_modified(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_nsp_write_eth_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_eth_set_mod_enable(ptr noundef %cpp, i32 noundef %idx, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_eth_config_start(ptr noundef %cpp, i32 noundef %idx)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @nfp_nsp_config_entries(ptr noundef %call) #6
  %arrayidx = getelementptr %union.eth_table_entry, ptr %call3, i32 %idx
  %state = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 1
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %state, align 8
  %3 = and i64 %2, 144115188075855872
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %4 = icmp eq i64 %3, 0
  %cmp.not = xor i1 %4, %enable
  br i1 %cmp.not, label %if.end.if.end48_crit_edge, label %if.then17

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %control = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 4
  %5 = ptrtoint ptr %control to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %control, align 8
  %7 = and i64 %6, -144115188075855873
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %shl = select i1 %enable, i64 2, i64 0
  %or = or i64 %8, %shl
  %9 = tail call i64 @llvm.bswap.i64(i64 %or)
  %10 = ptrtoint ptr %control to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %control, align 8
  tail call void @nfp_nsp_config_set_modified(ptr noundef %call, i1 noundef zeroext true) #6
  br label %if.end48

if.end48:                                         ; preds = %if.then17, %if.end.if.end48_crit_edge
  %call49 = tail call i32 @nfp_eth_config_commit_end(ptr noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call49, %if.end48 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_eth_set_configured(ptr noundef %cpp, i32 noundef %idx, i1 noundef zeroext %configed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_eth_config_start(ptr noundef %cpp, i32 noundef %idx)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call zeroext i16 @nfp_nsp_get_abi_ver_minor(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %call3)
  %cmp = icmp ult i16 %call3, 20
  %call.i = tail call ptr @nfp_nsp_config_entries(ptr noundef %call) #6
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nfp_nsp_config_set_modified(ptr noundef %call, i1 noundef zeroext false) #6
  tail call void @nfp_nsp_config_clear_state(ptr noundef %call) #6
  tail call void @nfp_nsp_close(ptr noundef %call) #6
  tail call void @kfree(ptr noundef %call.i) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %arrayidx = getelementptr %union.eth_table_entry, ptr %call.i, i32 %idx
  %state = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 1
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %state, align 8
  %3 = lshr i64 %2, 56
  %conv8 = zext i1 %configed to i64
  %and = and i64 %3, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %conv8)
  %cmp21.not = icmp eq i64 %and, %conv8
  br i1 %cmp21.not, label %if.end6.if.end54_crit_edge, label %if.then23

if.end6.if.end54_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then23:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %control = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 4
  %4 = ptrtoint ptr %control to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %control, align 8
  %6 = and i64 %5, -72057594037927937
  %7 = tail call i64 @llvm.bswap.i64(i64 %6)
  %or = or i64 %7, %conv8
  %8 = tail call i64 @llvm.bswap.i64(i64 %or)
  %9 = ptrtoint ptr %control to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %control, align 8
  tail call void @nfp_nsp_config_set_modified(ptr noundef %call, i1 noundef zeroext true) #6
  br label %if.end54

if.end54:                                         ; preds = %if.then23, %if.end6.if.end54_crit_edge
  %call55 = tail call i32 @nfp_eth_config_commit_end(ptr noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then5, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ -95, %if.then5 ], [ %call55, %if.end54 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nfp_nsp_get_abi_ver_minor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__nfp_eth_set_aneg(ptr noundef %nsp, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nfp_eth_set_bit_config(ptr noundef %nsp, i32 noundef 1, i64 noundef 58720256, i32 noundef 23, i32 noundef %mode, i64 noundef 64)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_eth_set_bit_config(ptr noundef %nsp, i32 noundef %raw_idx, i64 noundef %mask, i32 noundef %shift, i32 noundef %val, i64 noundef %ctrl_bit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_nsp_config_entries(ptr noundef %nsp) #6
  %call1 = tail call i32 @nfp_nsp_config_idx(ptr noundef %nsp) #6
  %call2 = tail call zeroext i16 @nfp_nsp_get_abi_ver_minor(ptr noundef %nsp) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %call2)
  %cmp = icmp ult i16 %call2, 17
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call ptr @nfp_nsp_cpp(ptr noundef %nsp) #6
  %call5 = tail call ptr @nfp_cpp_device(ptr noundef %call4) #6
  %parent = getelementptr inbounds %struct.device, ptr %call5, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %union.eth_table_entry, ptr %call, i32 %call1
  %arrayidx6 = getelementptr [4 x i64], ptr %arrayidx, i32 0, i32 %raw_idx
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx6, align 8
  %4 = tail call i64 @llvm.bswap.i64(i64 %3)
  %conv7 = zext i32 %val to i64
  %and = and i64 %4, %mask
  %sh_prom = zext i32 %shift to i64
  %shr = lshr i64 %and, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv7)
  %cmp8 = icmp eq i64 %shr, %conv7
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %neg = xor i64 %mask, -1
  %and12 = and i64 %4, %neg
  %shl = shl i32 %val, %shift
  %conv13 = zext i32 %shl to i64
  %and14 = and i64 %conv13, %mask
  %or = or i64 %and12, %and14
  %5 = tail call i64 @llvm.bswap.i64(i64 %or)
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %arrayidx6, align 8
  %7 = tail call i64 @llvm.bswap.i64(i64 %ctrl_bit)
  %control = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 4
  %8 = ptrtoint ptr %control to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %control, align 8
  %or18 = or i64 %9, %7
  store i64 %or18, ptr %control, align 8
  tail call void @nfp_nsp_config_set_modified(ptr noundef %nsp, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ 0, %if.end11 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_eth_set_fec(ptr noundef %cpp, i32 noundef %idx, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_eth_config_start(ptr noundef %cpp, i32 noundef %idx)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %__nfp_eth_set_fec.exit

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

__nfp_eth_set_fec.exit:                           ; preds = %entry
  %call.i = tail call fastcc i32 @nfp_eth_set_bit_config(ptr noundef %call, i32 noundef 1, i64 noundef 201326592, i32 noundef 26, i32 noundef %mode, i64 noundef 128) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %__nfp_eth_set_fec.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i13 = tail call ptr @nfp_nsp_config_entries(ptr noundef %call) #6
  tail call void @nfp_nsp_config_set_modified(ptr noundef %call, i1 noundef zeroext false) #6
  tail call void @nfp_nsp_config_clear_state(ptr noundef %call) #6
  tail call void @nfp_nsp_close(ptr noundef %call) #6
  tail call void @kfree(ptr noundef %call.i13) #6
  br label %cleanup

if.end5:                                          ; preds = %__nfp_eth_set_fec.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 @nfp_eth_config_commit_end(ptr noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call.i, %if.then4 ], [ %call6, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__nfp_eth_set_speed(ptr noundef %nsp, i32 noundef %speed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %speed, label %entry.do.end_crit_edge [
    i32 0, label %entry.nfp_eth_speed2rate.exit_crit_edge
    i32 10, label %if.then.fold.split.i
    i32 100, label %if.then.fold.split10.i
    i32 1000, label %if.then.fold.split11.i
    i32 10000, label %if.then.fold.split12.i
    i32 25000, label %if.then.fold.split13.i
  ]

entry.nfp_eth_speed2rate.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_eth_speed2rate.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_eth_speed2rate.exit

if.then.fold.split10.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_eth_speed2rate.exit

if.then.fold.split11.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_eth_speed2rate.exit

if.then.fold.split12.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_eth_speed2rate.exit

if.then.fold.split13.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_eth_speed2rate.exit

nfp_eth_speed2rate.exit:                          ; preds = %if.then.fold.split13.i, %if.then.fold.split12.i, %if.then.fold.split11.i, %if.then.fold.split10.i, %if.then.fold.split.i, %entry.nfp_eth_speed2rate.exit_crit_edge
  %i.08.lcssa.i = phi i32 [ %speed, %entry.nfp_eth_speed2rate.exit_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split10.i ], [ 3, %if.then.fold.split11.i ], [ 4, %if.then.fold.split12.i ], [ 5, %if.then.fold.split13.i ]
  %arrayidx.i = getelementptr [6 x %struct.anon.75], ptr @nsp_eth_rate_tbl, i32 0, i32 %i.08.lcssa.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %nfp_eth_speed2rate.exit.do.end_crit_edge, label %do.end19

nfp_eth_speed2rate.exit.do.end_crit_edge:         ; preds = %nfp_eth_speed2rate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %nfp_eth_speed2rate.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call1 = tail call ptr @nfp_nsp_cpp(ptr noundef %nsp) #6
  %call2 = tail call ptr @nfp_cpp_device(ptr noundef %call1) #6
  %parent = getelementptr inbounds %struct.device, ptr %call2, i32 0, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.13, i32 noundef %speed) #10
  br label %cleanup

do.end19:                                         ; preds = %nfp_eth_speed2rate.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call fastcc i32 @nfp_eth_set_bit_config(ptr noundef %nsp, i32 noundef 1, i64 noundef 3840, i32 noundef 8, i32 noundef %2, i64 noundef 16)
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call20, %do.end19 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_nsp_cpp(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__nfp_eth_set_split(ptr noundef %nsp, i32 noundef %lanes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nfp_eth_set_bit_config(ptr noundef %nsp, i32 noundef 0, i64 noundef 15, i32 noundef 0, i32 noundef %lanes, i64 noundef 32)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_nsp_config_idx(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !30, !31, !32, !33, !35, !36, !37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp_eth.c", i32 257, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__nfp_eth_read_ports._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @__nfp_eth_read_ports._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp_eth.c", i32 270, i32 3}
!10 = !{ptr @__nfp_eth_read_ports._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @__nfp_eth_read_ports._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp_eth.c", i32 316, i32 3}
!14 = !{ptr @nfp_eth_config_start._entry, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @nfp_eth_config_start._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp_eth.c", i32 321, i32 3}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nfp_eth_config_start._entry.9, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @nfp_eth_config_start._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp_eth.c", i32 584, i32 3}
!23 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__nfp_eth_set_speed._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @__nfp_eth_set_speed._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @nsp_eth_rate_tbl, !27, !"nsp_eth_rate_tbl", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp_eth.c", i32 85, i32 3}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp_eth.c", i32 193, i32 5}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @nfp_eth_calc_port_geometry._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @nfp_eth_calc_port_geometry._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_nsp_eth.c", i32 474, i32 3}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @nfp_eth_set_bit_config._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @nfp_eth_set_bit_config._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
