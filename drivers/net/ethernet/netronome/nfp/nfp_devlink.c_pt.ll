; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/nfp_devlink.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/nfp_devlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.devlink_ops = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfp_devlink_versions = type { i32, ptr }
%struct.nfp_pf = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i32, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nfp_app = type { ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nfp_app_type = type { i32, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.4 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.4 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.nfp_port = type { ptr, i32, i32, i32, ptr, %struct.devlink_port, %union.anon.162, %struct.list_head }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.162 = type { %struct.anon.164 }
%struct.anon.164 = type { i32, i32, i8, i32, ptr }

@nfp_devlink_ops = dso_local constant { %struct.devlink_ops, [52 x i8] } { %struct.devlink_ops { i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr @nfp_devlink_port_split, ptr @nfp_devlink_port_unsplit, ptr @nfp_devlink_sb_pool_get, ptr @nfp_devlink_sb_pool_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfp_devlink_eswitch_mode_get, ptr @nfp_devlink_eswitch_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @nfp_devlink_info_get, ptr @nfp_devlink_flash_update, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nfp\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"assembly.vendor\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"assembly.partno\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"assembly.serial\00", [16 x i8] zeroinitializer }, align 32
@nfp_devlink_info_get.__msg = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nfp: can't access NSP\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfp_devlink_versions_nsp = internal constant { [7 x %struct.nfp_devlink_versions], [40 x i8] } { [7 x %struct.nfp_devlink_versions] [%struct.nfp_devlink_versions { i32 3, ptr @.str.4 }, %struct.nfp_devlink_versions { i32 0, ptr @.str.5 }, %struct.nfp_devlink_versions { i32 1, ptr @.str.6 }, %struct.nfp_devlink_versions { i32 2, ptr @.str.7 }, %struct.nfp_devlink_versions { i32 4, ptr @.str.8 }, %struct.nfp_devlink_versions { i32 5, ptr @.str.9 }, %struct.nfp_devlink_versions { i32 6, ptr @.str.10 }], [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fw.bundle_id\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fw.mgmt\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fw.cpld\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fw.app\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fw.undi\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fw.ncsi\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"chip.init\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"board.id\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"board.rev\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"assembly.revision\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"board.manufacture\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"board.model\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"assembly.model\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"nfp_devlink_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 339, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 264, i32 42 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 268, i32 41 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 269, i32 39 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 270, i32 37 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 292, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [25 x i8] c"nfp_devlink_versions_nsp\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 210, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 211, i32 25 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 212, i32 22 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 213, i32 23 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 214, i32 22 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 215, i32 23 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 216, i32 23 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 217, i32 23 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 177, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 178, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 178, i32 44 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 179, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 180, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [52 x i8] c"../drivers/net/ethernet/netronome/nfp/nfp_devlink.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 180, i32 36 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @nfp_devlink_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @nfp_devlink_info_get.__msg, ptr @nfp_devlink_versions_nsp, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_devlink_ops to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_devlink_info_get.__msg to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_devlink_versions_nsp to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_devlink_port_split(ptr noundef %devlink, i32 noundef %port_index, i32 noundef %count, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #7
  %lock = getelementptr inbounds %struct.nfp_pf, ptr %call, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  tail call void @rtnl_lock() #7
  %call.i = tail call ptr @nfp_port_from_id(ptr noundef %call, i32 noundef 1, i32 noundef %port_index) #7
  %call.i.i = tail call ptr @__nfp_port_get_eth_port(ptr noundef %call.i) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %nfp_devlink_fill_eth_port_from_id.exit, label %if.end

nfp_devlink_fill_eth_port_from_id.exit:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtnl_unlock() #7
  br label %out

if.end:                                           ; preds = %entry
  %eth_port.sroa.4.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 4
  %0 = ptrtoint ptr %eth_port.sroa.4.0.call.i.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %eth_port.sroa.4.0.copyload = load i32, ptr %eth_port.sroa.4.0.call.i.i.sroa_idx, align 4
  %eth_port.sroa.521.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 16
  %1 = ptrtoint ptr %eth_port.sroa.521.0.call.i.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %eth_port.sroa.521.0.copyload = load i32, ptr %eth_port.sroa.521.0.call.i.i.sroa_idx, align 4
  %eth_port.sroa.622.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 56
  %2 = ptrtoint ptr %eth_port.sroa.622.0.call.i.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %eth_port.sroa.622.0.copyload = load i32, ptr %eth_port.sroa.622.0.call.i.i.sroa_idx, align 4
  tail call void @rtnl_unlock() #7
  %eth_port.sroa.622.0.copyload.frozen = freeze i32 %eth_port.sroa.622.0.copyload
  %div = udiv i32 %eth_port.sroa.622.0.copyload.frozen, %count
  %3 = mul i32 %div, %count
  %rem.decomposed = sub i32 %eth_port.sroa.622.0.copyload.frozen, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool2.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end4:                                          ; preds = %if.end
  %cpp.i = getelementptr inbounds %struct.nfp_pf, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %cpp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpp.i, align 4
  %call.i20 = tail call ptr @nfp_eth_config_start(ptr noundef %5, i32 noundef %eth_port.sroa.4.0.copyload) #7
  %cmp.i.i = icmp ugt ptr %call.i20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call.i20 to i32
  br label %out

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %eth_port.sroa.521.0.copyload)
  %cmp = icmp eq i32 %eth_port.sroa.521.0.copyload, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp7 = icmp eq i32 %count, 2
  %or.cond = and i1 %cmp7, %cmp
  %lanes.0 = select i1 %or.cond, i32 4, i32 %div
  %call3.i = tail call i32 @__nfp_eth_set_split(ptr noundef %call.i20, i32 noundef %lanes.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nfp_eth_config_cleanup_end(ptr noundef %call.i20) #7
  br label %out

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @nfp_eth_config_commit_end(ptr noundef %call.i20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %if.end5.i.out_crit_edge, label %if.end8.i

if.end5.i.out_crit_edge:                          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end8.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool9.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end8.i.out_crit_edge

if.end8.i.out_crit_edge:                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end11.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i = tail call i32 @nfp_net_refresh_port_table_sync(ptr noundef %call) #7
  br label %out

out:                                              ; preds = %if.end11.i, %if.end8.i.out_crit_edge, %if.end5.i.out_crit_edge, %if.then4.i, %if.then.i, %if.end.out_crit_edge, %nfp_devlink_fill_eth_port_from_id.exit
  %ret.0 = phi i32 [ -22, %nfp_devlink_fill_eth_port_from_id.exit ], [ -22, %if.end.out_crit_edge ], [ %6, %if.then.i ], [ %call3.i, %if.then4.i ], [ %call12.i, %if.end11.i ], [ %call6.i, %if.end5.i.out_crit_edge ], [ 0, %if.end8.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_devlink_port_unsplit(ptr noundef %devlink, i32 noundef %port_index, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #7
  %lock = getelementptr inbounds %struct.nfp_pf, ptr %call, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  tail call void @rtnl_lock() #7
  %call.i = tail call ptr @nfp_port_from_id(ptr noundef %call, i32 noundef 1, i32 noundef %port_index) #7
  %call.i.i = tail call ptr @__nfp_port_get_eth_port(ptr noundef %call.i) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %nfp_devlink_fill_eth_port_from_id.exit, label %if.end

nfp_devlink_fill_eth_port_from_id.exit:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtnl_unlock() #7
  br label %out

if.end:                                           ; preds = %entry
  %eth_port.sroa.4.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 4
  %0 = ptrtoint ptr %eth_port.sroa.4.0.call.i.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %eth_port.sroa.4.0.copyload = load i32, ptr %eth_port.sroa.4.0.call.i.i.sroa_idx, align 4
  %eth_port.sroa.515.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 56
  %1 = ptrtoint ptr %eth_port.sroa.515.0.call.i.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %eth_port.sroa.515.0.copyload = load i32, ptr %eth_port.sroa.515.0.call.i.i.sroa_idx, align 4
  %eth_port.sroa.6.0.call.i.i.sroa_idx = getelementptr inbounds i8, ptr %call.i.i, i32 60
  %2 = ptrtoint ptr %eth_port.sroa.6.0.call.i.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %eth_port.sroa.6.0.copyload = load i8, ptr %eth_port.sroa.6.0.call.i.i.sroa_idx, align 4
  tail call void @rtnl_unlock() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %eth_port.sroa.6.0.copyload)
  %tobool2.not = icmp eq i8 %eth_port.sroa.6.0.copyload, 0
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end4:                                          ; preds = %if.end
  %cpp.i = getelementptr inbounds %struct.nfp_pf, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %cpp.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cpp.i, align 4
  %call.i14 = tail call ptr @nfp_eth_config_start(ptr noundef %4, i32 noundef %eth_port.sroa.4.0.copyload) #7
  %cmp.i.i = icmp ugt ptr %call.i14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call.i14 to i32
  br label %out

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %eth_port.sroa.515.0.copyload)
  %cmp = icmp eq i32 %eth_port.sroa.515.0.copyload, 8
  %spec.store.select = select i1 %cmp, i32 10, i32 %eth_port.sroa.515.0.copyload
  %call3.i = tail call i32 @__nfp_eth_set_split(ptr noundef %call.i14, i32 noundef %spec.store.select) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nfp_eth_config_cleanup_end(ptr noundef %call.i14) #7
  br label %out

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @nfp_eth_config_commit_end(ptr noundef %call.i14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %if.end5.i.out_crit_edge, label %if.end8.i

if.end5.i.out_crit_edge:                          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end8.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool9.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end8.i.out_crit_edge

if.end8.i.out_crit_edge:                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end11.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i = tail call i32 @nfp_net_refresh_port_table_sync(ptr noundef %call) #7
  br label %out

out:                                              ; preds = %if.end11.i, %if.end8.i.out_crit_edge, %if.end5.i.out_crit_edge, %if.then4.i, %if.then.i, %if.end.out_crit_edge, %nfp_devlink_fill_eth_port_from_id.exit
  %ret.0 = phi i32 [ -22, %nfp_devlink_fill_eth_port_from_id.exit ], [ -22, %if.end.out_crit_edge ], [ %5, %if.then.i ], [ %call3.i, %if.then4.i ], [ %call12.i, %if.end11.i ], [ %call6.i, %if.end5.i.out_crit_edge ], [ 0, %if.end8.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_devlink_sb_pool_get(ptr noundef %devlink, i32 noundef %sb_index, i16 noundef zeroext %pool_index, ptr noundef %pool_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #7
  %call1 = tail call i32 @nfp_shared_buf_pool_get(ptr noundef %call, i32 noundef %sb_index, i16 noundef zeroext %pool_index, ptr noundef %pool_info) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_devlink_sb_pool_set(ptr noundef %devlink, i32 noundef %sb_index, i16 noundef zeroext %pool_index, i32 noundef %size, i32 noundef %threshold_type, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #7
  %call1 = tail call i32 @nfp_shared_buf_pool_set(ptr noundef %call, i32 noundef %sb_index, i16 noundef zeroext %pool_index, i32 noundef %size, i32 noundef %threshold_type) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_devlink_eswitch_mode_get(ptr noundef %devlink, ptr nocapture noundef writeonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #7
  %app = getelementptr inbounds %struct.nfp_pf, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %type.i = getelementptr inbounds %struct.nfp_app, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %eswitch_mode_get.i = getelementptr inbounds %struct.nfp_app_type, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %eswitch_mode_get.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eswitch_mode_get.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.nfp_app_eswitch_mode_get.exit_crit_edge, label %if.end.i

entry.nfp_app_eswitch_mode_get.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_app_eswitch_mode_get.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %5(ptr noundef %1) #7
  %conv.i = trunc i32 %call.i to i16
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %mode, align 2
  br label %nfp_app_eswitch_mode_get.exit

nfp_app_eswitch_mode_get.exit:                    ; preds = %if.end.i, %entry.nfp_app_eswitch_mode_get.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -95, %entry.nfp_app_eswitch_mode_get.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_devlink_eswitch_mode_set(ptr noundef %devlink, i16 noundef zeroext %mode, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #7
  %lock = getelementptr inbounds %struct.nfp_pf, ptr %call, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %app = getelementptr inbounds %struct.nfp_pf, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %type.i = getelementptr inbounds %struct.nfp_app, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %eswitch_mode_set.i = getelementptr inbounds %struct.nfp_app_type, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %eswitch_mode_set.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eswitch_mode_set.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.nfp_app_eswitch_mode_set.exit_crit_edge, label %if.end.i

entry.nfp_app_eswitch_mode_set.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_app_eswitch_mode_set.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %5(ptr noundef %1, i16 noundef zeroext %mode) #7
  br label %nfp_app_eswitch_mode_set.exit

nfp_app_eswitch_mode_set.exit:                    ; preds = %if.end.i, %entry.nfp_app_eswitch_mode_set.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ -95, %entry.nfp_app_eswitch_mode_set.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_devlink_info_get(ptr noundef %devlink, ptr noundef %req, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #7
  %call1 = tail call i32 @devlink_info_driver_name_put(ptr noundef %req, ptr noundef nonnull @.str) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup58_crit_edge

entry.cleanup58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup58

if.end:                                           ; preds = %entry
  %hwinfo = getelementptr inbounds %struct.nfp_pf, ptr %call, i32 0, i32 21
  %0 = ptrtoint ptr %hwinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwinfo, align 4
  %call2 = tail call ptr @nfp_hwinfo_lookup(ptr noundef %1, ptr noundef nonnull @.str.1) #7
  %2 = ptrtoint ptr %hwinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwinfo, align 4
  %call4 = tail call ptr @nfp_hwinfo_lookup(ptr noundef %3, ptr noundef nonnull @.str.2) #7
  %4 = ptrtoint ptr %hwinfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hwinfo, align 4
  %call6 = tail call ptr @nfp_hwinfo_lookup(ptr noundef %5, ptr noundef nonnull @.str.3) #7
  %tobool7.not = icmp eq ptr %call2, null
  %tobool8.not = icmp eq ptr %call4, null
  %or.cond = select i1 %tobool7.not, i1 true, i1 %tobool8.not
  %tobool10.not = icmp eq ptr %call6, null
  %or.cond103 = select i1 %or.cond, i1 true, i1 %tobool10.not
  br i1 %or.cond103, label %if.end.if.end29_crit_edge, label %if.end8.i

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.end8.i:                                        ; preds = %if.end
  %call14 = tail call i32 @strlen(ptr noundef nonnull %call4) #10
  %call13 = tail call i32 @strlen(ptr noundef nonnull %call2) #10
  %add = add i32 %call14, %call13
  %call15 = tail call i32 @strlen(ptr noundef nonnull %call6) #10
  %add16 = add i32 %add, %call15
  %add17 = add i32 %add16, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add17, i32 noundef 3264) #11
  %tobool19.not = icmp eq ptr %call9.i, null
  br i1 %tobool19.not, label %if.end8.i.cleanup58_crit_edge, label %cleanup

if.end8.i.cleanup58_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup58

cleanup:                                          ; preds = %if.end8.i
  %6 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %call9.i, align 128
  %call22 = tail call ptr @strcat(ptr noundef nonnull %call9.i, ptr noundef nonnull %call2)
  %call23 = tail call ptr @strcat(ptr noundef nonnull %call9.i, ptr noundef nonnull %call4)
  %call24 = tail call ptr @strcat(ptr noundef nonnull %call9.i, ptr noundef nonnull %call6)
  %call25 = tail call i32 @devlink_info_serial_number_put(ptr noundef %req, ptr noundef nonnull %call9.i) #7
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %cleanup.if.end29_crit_edge, label %cleanup.cleanup58_crit_edge

cleanup.cleanup58_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup58

cleanup.if.end29_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.end29:                                         ; preds = %cleanup.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpp, align 4
  %call30 = tail call ptr @nfp_nsp_open(ptr noundef %8) #7
  %cmp.i104 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %do.body, label %if.end37

do.body:                                          ; preds = %if.end29
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_devlink_info_get.__msg) #7
  %tobool33.not = icmp eq ptr %extack, null
  br i1 %tobool33.not, label %do.body.if.end35_crit_edge, label %if.then34

do.body.if.end35_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @nfp_devlink_info_get.__msg, ptr %extack, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %do.body.if.end35_crit_edge
  %10 = ptrtoint ptr %call30 to i32
  br label %cleanup58

if.end37:                                         ; preds = %if.end29
  %call.i = tail call zeroext i16 @nfp_nsp_get_abi_ver_minor(ptr noundef %call30) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 27, i16 %call.i)
  %cmp.i105 = icmp ugt i16 %call.i, 27
  br i1 %cmp.i105, label %if.then39, label %if.end37.if.end56_crit_edge

if.end37.if.end56_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then39:                                        ; preds = %if.end37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 1024) #12
  %tobool41.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool41.not, label %if.then39.err_close_nsp_crit_edge, label %if.end43

if.then39.err_close_nsp_crit_edge:                ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_close_nsp

if.end43:                                         ; preds = %if.then39
  %call44 = tail call i32 @nfp_nsp_versions(ptr noundef %call30, ptr noundef nonnull %call7.i.i, i32 noundef 1024) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.err_free_buf_crit_edge

if.end43.err_free_buf_crit_edge:                  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_buf

if.end47:                                         ; preds = %if.end43
  %call48 = tail call fastcc i32 @nfp_devlink_versions_get_nsp(ptr noundef %req, i1 noundef zeroext false, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.err_free_buf_crit_edge

if.end47.err_free_buf_crit_edge:                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_buf

if.end51:                                         ; preds = %if.end47
  %call52 = tail call fastcc i32 @nfp_devlink_versions_get_nsp(ptr noundef %req, i1 noundef zeroext true, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.err_free_buf_crit_edge

if.end51.err_free_buf_crit_edge:                  ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_buf

if.end55:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.end37.if.end56_crit_edge
  tail call void @nfp_nsp_close(ptr noundef %call30) #7
  %12 = ptrtoint ptr %hwinfo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hwinfo, align 4
  %call.i106 = tail call ptr @nfp_hwinfo_lookup(ptr noundef %13, ptr noundef nonnull @.str.2) #7
  %tobool.not.i = icmp eq ptr %call.i106, null
  br i1 %tobool.not.i, label %if.end56.for.inc.i_crit_edge, label %if.end.i107

if.end56.for.inc.i_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i107:                                      ; preds = %if.end56
  %call2.i = tail call i32 @devlink_info_version_fixed_put(ptr noundef %req, ptr noundef nonnull @.str.11, ptr noundef nonnull %call.i106) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i107.for.inc.i_crit_edge, label %if.end.i107.cleanup58_crit_edge

if.end.i107.cleanup58_crit_edge:                  ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup58

if.end.i107.for.inc.i_crit_edge:                  ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i107.for.inc.i_crit_edge, %if.end56.for.inc.i_crit_edge
  %14 = ptrtoint ptr %hwinfo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hwinfo, align 4
  %call.1.i = tail call ptr @nfp_hwinfo_lookup(ptr noundef %15, ptr noundef nonnull @.str.13) #7
  %tobool.not.1.i = icmp eq ptr %call.1.i, null
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  %call2.1.i = tail call i32 @devlink_info_version_fixed_put(ptr noundef %req, ptr noundef nonnull @.str.12, ptr noundef nonnull %call.1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1.i)
  %tobool3.not.1.i = icmp eq i32 %call2.1.i, 0
  br i1 %tobool3.not.1.i, label %if.end.1.i.for.inc.1.i_crit_edge, label %if.end.1.i.cleanup58_crit_edge

if.end.1.i.cleanup58_crit_edge:                   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup58

if.end.1.i.for.inc.1.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %16 = ptrtoint ptr %hwinfo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hwinfo, align 4
  %call.2.i = tail call ptr @nfp_hwinfo_lookup(ptr noundef %17, ptr noundef nonnull @.str.1) #7
  %tobool.not.2.i = icmp eq ptr %call.2.i, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  %call2.2.i = tail call i32 @devlink_info_version_fixed_put(ptr noundef %req, ptr noundef nonnull @.str.14, ptr noundef nonnull %call.2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2.i)
  %tobool3.not.2.i = icmp eq i32 %call2.2.i, 0
  br i1 %tobool3.not.2.i, label %if.end.2.i.for.inc.2.i_crit_edge, label %if.end.2.i.cleanup58_crit_edge

if.end.2.i.cleanup58_crit_edge:                   ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup58

if.end.2.i.for.inc.2.i_crit_edge:                 ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %18 = ptrtoint ptr %hwinfo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hwinfo, align 4
  %call.3.i = tail call ptr @nfp_hwinfo_lookup(ptr noundef %19, ptr noundef nonnull @.str.16) #7
  %tobool.not.3.i = icmp eq ptr %call.3.i, null
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.end.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

if.end.3.i:                                       ; preds = %for.inc.2.i
  %call2.3.i = tail call i32 @devlink_info_version_fixed_put(ptr noundef %req, ptr noundef nonnull @.str.15, ptr noundef nonnull %call.3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.3.i)
  %tobool3.not.3.i = icmp eq i32 %call2.3.i, 0
  br i1 %tobool3.not.3.i, label %if.end.3.i.for.inc.3.i_crit_edge, label %if.end.3.i.cleanup58_crit_edge

if.end.3.i.cleanup58_crit_edge:                   ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup58

if.end.3.i.for.inc.3.i_crit_edge:                 ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.end.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  br label %cleanup58

err_free_buf:                                     ; preds = %if.end51.err_free_buf_crit_edge, %if.end47.err_free_buf_crit_edge, %if.end43.err_free_buf_crit_edge
  %err.0 = phi i32 [ %call44, %if.end43.err_free_buf_crit_edge ], [ %call48, %if.end47.err_free_buf_crit_edge ], [ %call52, %if.end51.err_free_buf_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %err_close_nsp

err_close_nsp:                                    ; preds = %err_free_buf, %if.then39.err_close_nsp_crit_edge
  %err.1 = phi i32 [ %err.0, %err_free_buf ], [ -12, %if.then39.err_close_nsp_crit_edge ]
  tail call void @nfp_nsp_close(ptr noundef %call30) #7
  br label %cleanup58

cleanup58:                                        ; preds = %err_close_nsp, %for.inc.3.i, %if.end.3.i.cleanup58_crit_edge, %if.end.2.i.cleanup58_crit_edge, %if.end.1.i.cleanup58_crit_edge, %if.end.i107.cleanup58_crit_edge, %if.end35, %cleanup.cleanup58_crit_edge, %if.end8.i.cleanup58_crit_edge, %entry.cleanup58_crit_edge
  %retval.1 = phi i32 [ %10, %if.end35 ], [ %err.1, %err_close_nsp ], [ %call25, %cleanup.cleanup58_crit_edge ], [ %call1, %entry.cleanup58_crit_edge ], [ %call2.i, %if.end.i107.cleanup58_crit_edge ], [ %call2.1.i, %if.end.1.i.cleanup58_crit_edge ], [ %call2.2.i, %if.end.2.i.cleanup58_crit_edge ], [ %call2.3.i, %if.end.3.i.cleanup58_crit_edge ], [ 0, %for.inc.3.i ], [ -12, %if.end8.i.cleanup58_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_devlink_flash_update(ptr noundef %devlink, ptr nocapture noundef readonly %params, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %devlink) #7
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %call1 = tail call i32 @nfp_flash_update_common(ptr noundef %call, ptr noundef %1, ptr noundef %extack) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_devlink_port_register(ptr nocapture noundef readonly %app, ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %attrs = alloca %struct.devlink_port_attrs, align 4
  %serial = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %attrs) #7
  %0 = call ptr @memset(ptr %attrs, i32 0, i32 60)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %serial) #7
  %1 = ptrtoint ptr %serial to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %serial, align 4, !annotation !51
  tail call void @rtnl_lock() #7
  %call.i = tail call ptr @__nfp_port_get_eth_port(ptr noundef %port) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %nfp_devlink_fill_eth_port.exit, label %if.end

nfp_devlink_fill_eth_port.exit:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtnl_unlock() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %eth_port.sroa.4.0.call.i.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 46
  %2 = ptrtoint ptr %eth_port.sroa.4.0.call.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %eth_port.sroa.4.0.copyload = load i8, ptr %eth_port.sroa.4.0.call.i.sroa_idx, align 2
  %eth_port.sroa.5.0.call.i.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 47
  %3 = ptrtoint ptr %eth_port.sroa.5.0.call.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %eth_port.sroa.5.0.copyload = load i8, ptr %eth_port.sroa.5.0.call.i.sroa_idx, align 1
  %eth_port.sroa.630.0.call.i.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 56
  %4 = ptrtoint ptr %eth_port.sroa.630.0.call.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %eth_port.sroa.630.0.copyload = load i32, ptr %eth_port.sroa.630.0.call.i.sroa_idx, align 4
  %eth_port.sroa.7.0.call.i.sroa_idx = getelementptr inbounds i8, ptr %call.i, i32 60
  %5 = ptrtoint ptr %eth_port.sroa.7.0.call.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %eth_port.sroa.7.0.copyload = load i8, ptr %eth_port.sroa.7.0.call.i.sroa_idx, align 4
  tail call void @rtnl_unlock() #7
  %6 = ptrtoint ptr %attrs to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %attrs, align 4
  %bf.shl = shl nuw i8 %eth_port.sroa.7.0.copyload, 7
  %bf.clear = and i8 %bf.load, 63
  %bf.set = or i8 %bf.clear, %bf.shl
  %bf.value6 = shl nuw nsw i8 %eth_port.sroa.7.0.copyload, 6
  %7 = or i8 %bf.set, %bf.value6
  %bf.set9 = xor i8 %7, 64
  store i8 %bf.set9, ptr %attrs, align 4
  %lanes = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs, i32 0, i32 1
  %8 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %eth_port.sroa.630.0.copyload, ptr %lanes, align 4
  %flavour = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs, i32 0, i32 2
  %9 = ptrtoint ptr %flavour to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %flavour, align 4
  %conv10 = zext i8 %eth_port.sroa.4.0.copyload to i32
  %10 = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv10, ptr %10, align 4
  %conv11 = zext i8 %eth_port.sroa.5.0.copyload to i32
  %split_subport_number = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs, i32 0, i32 4, i32 0, i32 1
  %12 = ptrtoint ptr %split_subport_number to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv11, ptr %split_subport_number, align 4
  %app12 = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 4
  %13 = ptrtoint ptr %app12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %app12, align 4
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cpp, align 4
  %call13 = call i32 @nfp_cpp_serial(ptr noundef %16, ptr noundef nonnull %serial) #7
  %switch_id = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs, i32 0, i32 3
  %17 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %serial, align 4
  %19 = call ptr @memcpy(ptr %switch_id, ptr %18, i32 %call13)
  %conv14 = trunc i32 %call13 to i8
  %id_len = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %id_len to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv14, ptr %id_len, align 4
  %dl_port = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 5
  call void @devlink_port_attrs_set(ptr noundef %dl_port, ptr noundef nonnull %attrs) #7
  %pf = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 1
  %21 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pf, align 4
  %call16 = call ptr @priv_to_devlink(ptr noundef %22) #7
  %23 = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 6
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %call18 = call i32 @devlink_port_register(ptr noundef %call16, ptr noundef %dl_port, i32 noundef %25) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %nfp_devlink_fill_eth_port.exit
  %retval.0 = phi i32 [ %call18, %if.end ], [ -22, %nfp_devlink_fill_eth_port.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %serial) #7
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %attrs) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_serial(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_attrs_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_port_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_devlink_port_unregister(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dl_port = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 5
  tail call void @devlink_port_unregister(ptr noundef %dl_port) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_devlink_port_type_eth_set(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dl_port = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  tail call void @devlink_port_type_eth_set(ptr noundef %dl_port, ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_type_eth_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_devlink_port_type_clear(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dl_port = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 5
  tail call void @devlink_port_type_clear(ptr noundef %dl_port) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_type_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_devlink_get_devlink_port(ptr noundef %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_port_from_netdev(ptr noundef %netdev) #7
  %tobool.not = icmp eq ptr %call, null
  %dl_port = getelementptr inbounds %struct.nfp_port, ptr %call, i32 0, i32 5
  %retval.0 = select i1 %tobool.not, ptr null, ptr %dl_port
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_port_from_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_port_from_id(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_eth_config_start(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nfp_eth_set_split(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_eth_config_cleanup_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_eth_config_commit_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_net_refresh_port_table_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_shared_buf_pool_get(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_shared_buf_pool_set(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_driver_name_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_hwinfo_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_serial_number_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_nsp_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_nsp_versions(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_devlink_versions_get_nsp(ptr noundef %req, i1 noundef zeroext %flash, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [7 x %struct.nfp_devlink_versions], ptr @nfp_devlink_versions_nsp, i32 0, i32 %i.07
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %call = tail call ptr @nfp_nsp_versions_get(i32 noundef %1, i1 noundef zeroext %flash, ptr noundef %buf, i32 noundef 1024) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %cmp3 = icmp eq ptr %call, inttoptr (i32 -2 to ptr)
  br i1 %cmp3, label %if.then.for.inc_crit_edge, label %cleanup17.split.loop.exit

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %key = getelementptr [7 x %struct.nfp_devlink_versions], ptr @nfp_devlink_versions_nsp, i32 0, i32 %i.07, i32 1
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  br i1 %flash, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 @devlink_info_version_stored_put(ptr noundef %req, ptr noundef %3, ptr noundef %call) #7
  br label %if.end12

if.else9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 @devlink_info_version_running_put(ptr noundef %req, ptr noundef %3, ptr noundef %call) #7
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.then7
  %err.0 = phi i32 [ %call8, %if.then7 ], [ %call11, %if.else9 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool13.not = icmp eq i32 %err.0, 0
  br i1 %tobool13.not, label %if.end12.for.inc_crit_edge, label %if.end12.cleanup17_crit_edge

if.end12.cleanup17_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup17

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.end12.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.inc.cleanup17_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup17_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup17

cleanup17.split.loop.exit:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call to i32
  br label %cleanup17

cleanup17:                                        ; preds = %cleanup17.split.loop.exit, %for.inc.cleanup17_crit_edge, %if.end12.cleanup17_crit_edge
  %retval.2 = phi i32 [ %4, %cleanup17.split.loop.exit ], [ %err.0, %if.end12.cleanup17_crit_edge ], [ 0, %for.inc.cleanup17_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_nsp_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nfp_nsp_get_abi_ver_minor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_nsp_versions_get(i32 noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_version_stored_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_version_running_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_version_fixed_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_flash_update_common(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nfp_port_get_eth_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @nfp_devlink_ops, !1, !"nfp_devlink_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_devlink.c", i32 339, i32 26}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_devlink.c", i32 264, i32 42}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_devlink.c", i32 268, i32 41}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_devlink.c", i32 269, i32 39}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_devlink.c", i32 270, i32 37}
!10 = !{ptr @nfp_devlink_info_get.__msg, !11, !"__msg", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_devlink.c", i32 292, i32 3}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_devlink.c", i32 211, i32 25}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_devlink.c", i32 212, i32 22}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_devlink.c", i32 213, i32 23}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_devlink.c", i32 214, i32 22}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_devlink.c", i32 215, i32 23}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_devlink.c", i32 216, i32 23}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_devlink.c", i32 217, i32 23}
!26 = !{ptr @nfp_devlink_versions_nsp, !27, !"nfp_devlink_versions_nsp", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_devlink.c", i32 210, i32 3}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_devlink.c", i32 177, i32 4}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_devlink.c", i32 178, i32 4}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_devlink.c", i32 178, i32 44}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_devlink.c", i32 179, i32 4}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_devlink.c", i32 180, i32 4}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_devlink.c", i32 180, i32 36}
!40 = distinct !{null, !41, !"nfp_devlink_versions_hwinfo", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_devlink.c", i32 176, i32 3}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"auto-init"}
