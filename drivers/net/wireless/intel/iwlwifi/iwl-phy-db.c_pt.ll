; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/iwl-phy-db.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/iwl-phy-db.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_phy_db = type { %struct.iwl_phy_db_entry, %struct.iwl_phy_db_entry, i32, ptr, i32, ptr, ptr }
%struct.iwl_phy_db_entry = type { i16, ptr }
%struct.iwl_rx_packet = type { i32, %struct.iwl_cmd_header, [0 x i8] }
%struct.iwl_cmd_header = type { i8, i8, i16 }
%struct.iwl_calib_res_notif_phy_db = type { i16, i16, [0 x i8] }
%struct.iwl_trans = type { i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, [52 x i8], [3 x i32], i8, i8, i8, i8, i8, ptr, i32, i8, %struct.wait_queue_head, i8, i32, ptr, ptr, [50 x i8], ptr, %struct.lockdep_map, %struct.iwl_trans_debug, %struct.iwl_self_init_dram, i32, ptr, %struct.iwl_trans_txqs, [0 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_trans_debug = type { i8, i8, ptr, [32 x ptr], ptr, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, [5 x %struct.iwl_fw_ini_allocation_tlv], [5 x %struct.iwl_fw_mon], %struct.iwl_dram_data, i8, i32, i64, [64 x ptr], %struct.list_head, [27 x %struct.iwl_dbg_tlv_time_point_data], %struct.list_head, i32, i32, i8, i32 }
%struct.iwl_fw_ini_allocation_tlv = type { %struct.iwl_fw_ini_header, i32, i32, i32, i32, i32 }
%struct.iwl_fw_ini_header = type { i32, i32 }
%struct.iwl_fw_mon = type { i32, ptr }
%struct.iwl_dram_data = type { i32, ptr, i32 }
%struct.iwl_dbg_tlv_time_point_data = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.iwl_self_init_dram = type { ptr, i32, ptr, i32 }
%struct.iwl_trans_txqs = type { [16 x i32], [16 x i32], [512 x ptr], ptr, i32, i8, i8, i8, ptr, %struct.anon.117, %struct.anon.118, %struct.iwl_dma_ptr }
%struct.anon.117 = type { i8, i8, i32 }
%struct.anon.118 = type { i8, i16, i8 }
%struct.iwl_dma_ptr = type { i32, ptr, i32 }
%struct.iwl_phy_db_cmd = type { i16, i16, [0 x i8] }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }

@__func__.iwl_phy_db_set_section = private unnamed_addr constant [23 x i8] c"iwl_phy_db_set_section\00", align 1
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(%d): [PHYDB]SET: Type %d , Size: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.iwl_send_phy_db_data = private unnamed_addr constant [21 x i8] c"iwl_send_phy_db_data\00", align 1
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Sending phy db data and configuration to runtime image\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot get Phy DB cfg section\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Cannot send HCMD of  Phy DB cfg section\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Cannot get Phy DB non specific channel section\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Cannot send HCMD of Phy DB non specific channel section\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cannot send channel specific PAPD groups\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Cannot send channel specific TX power groups\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Finished sending phy db non channel data\0A\00", [54 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.iwl_phy_db_get_section_data = private unnamed_addr constant [28 x i8] c"iwl_phy_db_get_section_data\00", align 1
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(%d): [PHYDB] GET: Type %d , Size: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.iwl_send_phy_db_cmd = private unnamed_addr constant [20 x i8] c"iwl_send_phy_db_cmd\00", align 1
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Sending PHY-DB hcmd of type %d, of length %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Can't SEND phy_db section %d (%d), err %d\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.iwl_phy_db_send_all_channel_groups = private unnamed_addr constant [35 x i8] c"iwl_phy_db_send_all_channel_groups\00", align 1
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Sent PHY_DB HCMD, type = %d num = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1024, i64 1280]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 213, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 383, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 390, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 396, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 404, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 411, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 421, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 431, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 436, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 304, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 319, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 363, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [51 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-phy-db.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 369, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @iwl_phy_db_init(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %trans1 = getelementptr inbounds %struct.iwl_phy_db, ptr %call7.i.i, i32 0, i32 6
  %1 = ptrtoint ptr %trans1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %trans, ptr %trans1, align 8
  %n_group_txp = getelementptr inbounds %struct.iwl_phy_db, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %n_group_txp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %n_group_txp, align 8
  %n_group_papd = getelementptr inbounds %struct.iwl_phy_db, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %n_group_papd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %n_group_papd, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_phy_db_free(ptr noundef %phy_db) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %phy_db, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i.i24

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i24:                                     ; preds = %entry
  %data.i = getelementptr inbounds %struct.iwl_phy_db_entry, ptr %phy_db, i32 0, i32 1
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  tail call void @kfree(ptr noundef %1) #6
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %data.i, align 4
  %3 = ptrtoint ptr %phy_db to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %phy_db, align 4
  %calib_nch.i.i = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %calib_nch.i.i, null
  br i1 %tobool.not.i, label %if.end.i.i24.iwl_phy_db_free_section.exit26_crit_edge, label %if.end.i

if.end.i.i24.iwl_phy_db_free_section.exit26_crit_edge: ; preds = %if.end.i.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_phy_db_free_section.exit26

if.end.i:                                         ; preds = %if.end.i.i24
  call void @__sanitizer_cov_trace_pc() #8
  %data.i25 = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %data.i25 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i25, align 4
  tail call void @kfree(ptr noundef %5) #6
  %6 = ptrtoint ptr %data.i25 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %data.i25, align 4
  %7 = ptrtoint ptr %calib_nch.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %calib_nch.i.i, align 4
  br label %iwl_phy_db_free_section.exit26

iwl_phy_db_free_section.exit26:                   ; preds = %if.end.i, %if.end.i.i24.iwl_phy_db_free_section.exit26_crit_edge
  %n_group_papd = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 2
  %8 = ptrtoint ptr %n_group_papd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_group_papd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp39 = icmp sgt i32 %9, 0
  br i1 %cmp39, label %if.end.i.i28.lr.ph, label %iwl_phy_db_free_section.exit26.for.end_crit_edge

iwl_phy_db_free_section.exit26.for.end_crit_edge: ; preds = %iwl_phy_db_free_section.exit26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end.i.i28.lr.ph:                               ; preds = %iwl_phy_db_free_section.exit26
  %calib_ch_group_papd.i.i = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 3
  br label %if.end.i.i28

if.end.i.i28:                                     ; preds = %iwl_phy_db_free_section.exit32.if.end.i.i28_crit_edge, %if.end.i.i28.lr.ph
  %10 = phi i32 [ %9, %if.end.i.i28.lr.ph ], [ %18, %iwl_phy_db_free_section.exit32.if.end.i.i28_crit_edge ]
  %i.040 = phi i32 [ 0, %if.end.i.i28.lr.ph ], [ %inc, %iwl_phy_db_free_section.exit32.if.end.i.i28_crit_edge ]
  %conv.i.i = and i32 %i.040, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv.i.i)
  %cmp3.not.i.i = icmp sgt i32 %10, %conv.i.i
  br i1 %cmp3.not.i.i, label %if.end6.i.i, label %if.end.i.i28.iwl_phy_db_free_section.exit32_crit_edge

if.end.i.i28.iwl_phy_db_free_section.exit32_crit_edge: ; preds = %if.end.i.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_phy_db_free_section.exit32

if.end6.i.i:                                      ; preds = %if.end.i.i28
  %11 = ptrtoint ptr %calib_ch_group_papd.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %calib_ch_group_papd.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.iwl_phy_db_entry, ptr %12, i32 %conv.i.i
  %tobool.not.i29 = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i29, label %if.end6.i.i.iwl_phy_db_free_section.exit32_crit_edge, label %if.end.i31

if.end6.i.i.iwl_phy_db_free_section.exit32_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_phy_db_free_section.exit32

if.end.i31:                                       ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i30 = getelementptr %struct.iwl_phy_db_entry, ptr %12, i32 %conv.i.i, i32 1
  %13 = ptrtoint ptr %data.i30 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i30, align 4
  tail call void @kfree(ptr noundef %14) #6
  %15 = ptrtoint ptr %data.i30 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %data.i30, align 4
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %arrayidx.i.i, align 4
  br label %iwl_phy_db_free_section.exit32

iwl_phy_db_free_section.exit32:                   ; preds = %if.end.i31, %if.end6.i.i.iwl_phy_db_free_section.exit32_crit_edge, %if.end.i.i28.iwl_phy_db_free_section.exit32_crit_edge
  %inc = add nuw nsw i32 %i.040, 1
  %17 = ptrtoint ptr %n_group_papd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_group_papd, align 4
  %cmp = icmp slt i32 %inc, %18
  br i1 %cmp, label %iwl_phy_db_free_section.exit32.if.end.i.i28_crit_edge, label %iwl_phy_db_free_section.exit32.for.end_crit_edge

iwl_phy_db_free_section.exit32.for.end_crit_edge: ; preds = %iwl_phy_db_free_section.exit32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

iwl_phy_db_free_section.exit32.if.end.i.i28_crit_edge: ; preds = %iwl_phy_db_free_section.exit32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i28

for.end:                                          ; preds = %iwl_phy_db_free_section.exit32.for.end_crit_edge, %iwl_phy_db_free_section.exit26.for.end_crit_edge
  %calib_ch_group_papd = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 3
  %19 = ptrtoint ptr %calib_ch_group_papd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %calib_ch_group_papd, align 4
  tail call void @kfree(ptr noundef %20) #6
  %n_group_txp = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 4
  %21 = ptrtoint ptr %n_group_txp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_group_txp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp241 = icmp sgt i32 %22, 0
  br i1 %cmp241, label %if.end.i.i34.lr.ph, label %for.end.for.end8_crit_edge

for.end.for.end8_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end8

if.end.i.i34.lr.ph:                               ; preds = %for.end
  %calib_ch_group_txp.i.i = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 5
  br label %if.end.i.i34

if.end.i.i34:                                     ; preds = %iwl_phy_db_free_section.exit38.if.end.i.i34_crit_edge, %if.end.i.i34.lr.ph
  %23 = phi i32 [ %22, %if.end.i.i34.lr.ph ], [ %31, %iwl_phy_db_free_section.exit38.if.end.i.i34_crit_edge ]
  %i.142 = phi i32 [ 0, %if.end.i.i34.lr.ph ], [ %inc7, %iwl_phy_db_free_section.exit38.if.end.i.i34_crit_edge ]
  %conv8.i.i = and i32 %i.142, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv8.i.i)
  %cmp9.not.i.i = icmp sgt i32 %23, %conv8.i.i
  br i1 %cmp9.not.i.i, label %if.end12.i.i, label %if.end.i.i34.iwl_phy_db_free_section.exit38_crit_edge

if.end.i.i34.iwl_phy_db_free_section.exit38_crit_edge: ; preds = %if.end.i.i34
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_phy_db_free_section.exit38

if.end12.i.i:                                     ; preds = %if.end.i.i34
  %24 = ptrtoint ptr %calib_ch_group_txp.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %calib_ch_group_txp.i.i, align 4
  %arrayidx14.i.i = getelementptr %struct.iwl_phy_db_entry, ptr %25, i32 %conv8.i.i
  %tobool.not.i35 = icmp eq ptr %arrayidx14.i.i, null
  br i1 %tobool.not.i35, label %if.end12.i.i.iwl_phy_db_free_section.exit38_crit_edge, label %if.end.i37

if.end12.i.i.iwl_phy_db_free_section.exit38_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_phy_db_free_section.exit38

if.end.i37:                                       ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i36 = getelementptr %struct.iwl_phy_db_entry, ptr %25, i32 %conv8.i.i, i32 1
  %26 = ptrtoint ptr %data.i36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i36, align 4
  tail call void @kfree(ptr noundef %27) #6
  %28 = ptrtoint ptr %data.i36 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %data.i36, align 4
  %29 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %arrayidx14.i.i, align 4
  br label %iwl_phy_db_free_section.exit38

iwl_phy_db_free_section.exit38:                   ; preds = %if.end.i37, %if.end12.i.i.iwl_phy_db_free_section.exit38_crit_edge, %if.end.i.i34.iwl_phy_db_free_section.exit38_crit_edge
  %inc7 = add nuw nsw i32 %i.142, 1
  %30 = ptrtoint ptr %n_group_txp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_group_txp, align 4
  %cmp2 = icmp slt i32 %inc7, %31
  br i1 %cmp2, label %iwl_phy_db_free_section.exit38.if.end.i.i34_crit_edge, label %iwl_phy_db_free_section.exit38.for.end8_crit_edge

iwl_phy_db_free_section.exit38.for.end8_crit_edge: ; preds = %iwl_phy_db_free_section.exit38
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end8

iwl_phy_db_free_section.exit38.if.end.i.i34_crit_edge: ; preds = %iwl_phy_db_free_section.exit38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i34

for.end8:                                         ; preds = %iwl_phy_db_free_section.exit38.for.end8_crit_edge, %for.end.for.end8_crit_edge
  %calib_ch_group_txp = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 5
  %32 = ptrtoint ptr %calib_ch_group_txp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %calib_ch_group_txp, align 4
  tail call void @kfree(ptr noundef %33) #6
  tail call void @kfree(ptr noundef nonnull %phy_db) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end8, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_phy_db_set_section(ptr noundef %phy_db, ptr noundef %pkt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %pkt, align 1
  %2 = and i32 %1, -12648448
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  %sub.i = add nsw i32 %3, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp = icmp ult i32 %sub.i, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %data, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %length = getelementptr inbounds %struct.iwl_calib_res_notif_phy_db, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %length, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv3 = zext i16 %9 to i32
  %add = add nuw nsw i32 %conv3, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %add)
  %cmp4 = icmp ult i32 %sub.i, %add
  %tobool.not = icmp eq ptr %phy_db, null
  %or.cond = or i1 %tobool.not, %cmp4
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %10 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %if.end9.if.end52_crit_edge [
    i16 1024, label %if.then12
    i16 1280, label %if.then32
  ]

if.end9.if.end52_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then12:                                        ; preds = %if.end9
  %data13 = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 1, i32 1
  %11 = ptrtoint ptr %data13 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %data13, align 2
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #6
  %calib_ch_group_papd = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 3
  %14 = ptrtoint ptr %calib_ch_group_papd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %calib_ch_group_papd, align 4
  %tobool17.not = icmp eq ptr %15, null
  br i1 %tobool17.not, label %if.then18, label %if.then12.if.end52_crit_edge

if.then12.if.end52_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then18:                                        ; preds = %if.then12
  %conv19 = zext i16 %13 to i32
  %add20 = add nuw nsw i32 %conv19, 1
  %16 = shl nuw nsw i32 %add20, 3
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 2848) #10
  %17 = ptrtoint ptr %calib_ch_group_papd to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8.i.i, ptr %calib_ch_group_papd, align 4
  %tobool24.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool24.not, label %if.then18.cleanup_crit_edge, label %if.end26

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %n_group_papd = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 2
  %18 = ptrtoint ptr %n_group_papd to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add20, ptr %n_group_papd, align 4
  br label %if.end52

if.then32:                                        ; preds = %if.end9
  %data33 = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 1, i32 1
  %19 = ptrtoint ptr %data33 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %data33, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #6
  %calib_ch_group_txp = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 5
  %22 = ptrtoint ptr %calib_ch_group_txp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %calib_ch_group_txp, align 4
  %tobool38.not = icmp eq ptr %23, null
  br i1 %tobool38.not, label %if.then39, label %if.then32.if.end52_crit_edge

if.then32.if.end52_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then39:                                        ; preds = %if.then32
  %conv40 = zext i16 %21 to i32
  %add41 = add nuw nsw i32 %conv40, 1
  %24 = shl nuw nsw i32 %add41, 3
  %call8.i.i140 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 2848) #10
  %25 = ptrtoint ptr %calib_ch_group_txp to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call8.i.i140, ptr %calib_ch_group_txp, align 4
  %tobool45.not = icmp eq ptr %call8.i.i140, null
  br i1 %tobool45.not, label %if.then39.cleanup_crit_edge, label %if.end47

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end47:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  %n_group_txp = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 4
  %26 = ptrtoint ptr %n_group_txp to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add41, ptr %n_group_txp, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end47, %if.then32.if.end52_crit_edge, %if.end26, %if.then12.if.end52_crit_edge, %if.end9.if.end52_crit_edge
  %chg_id.0 = phi i16 [ %13, %if.then12.if.end52_crit_edge ], [ %13, %if.end26 ], [ %21, %if.then32.if.end52_crit_edge ], [ %21, %if.end47 ], [ 0, %if.end9.if.end52_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %6)
  %cmp.i = icmp ugt i16 %6, 5
  br i1 %cmp.i, label %if.end52.cleanup_crit_edge, label %if.end.i

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end52
  %27 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %6, label %if.end.i.cleanup_crit_edge [
    i16 1, label %if.end.i.if.end56_crit_edge
    i16 2, label %sw.bb1.i
    i16 4, label %sw.bb2.i
    i16 5, label %sw.bb7.i
  ]

if.end.i.if.end56_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %calib_nch.i = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 1
  br label %iwl_phy_db_get_section.exit

sw.bb2.i:                                         ; preds = %if.end.i
  %conv.i = zext i16 %chg_id.0 to i32
  %n_group_papd.i = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 2
  %28 = ptrtoint ptr %n_group_papd.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n_group_papd.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv.i)
  %cmp3.not.i = icmp sgt i32 %29, %conv.i
  br i1 %cmp3.not.i, label %if.end6.i, label %sw.bb2.i.cleanup_crit_edge

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.i:                                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  %calib_ch_group_papd.i = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 3
  %30 = ptrtoint ptr %calib_ch_group_papd.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %calib_ch_group_papd.i, align 4
  %arrayidx.i = getelementptr %struct.iwl_phy_db_entry, ptr %31, i32 %conv.i
  br label %iwl_phy_db_get_section.exit

sw.bb7.i:                                         ; preds = %if.end.i
  %conv8.i = zext i16 %chg_id.0 to i32
  %n_group_txp.i = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 4
  %32 = ptrtoint ptr %n_group_txp.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n_group_txp.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv8.i)
  %cmp9.not.i = icmp sgt i32 %33, %conv8.i
  br i1 %cmp9.not.i, label %if.end12.i, label %sw.bb7.i.cleanup_crit_edge

sw.bb7.i.cleanup_crit_edge:                       ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12.i:                                       ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #8
  %calib_ch_group_txp.i = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 5
  %34 = ptrtoint ptr %calib_ch_group_txp.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %calib_ch_group_txp.i, align 4
  %arrayidx14.i = getelementptr %struct.iwl_phy_db_entry, ptr %35, i32 %conv8.i
  br label %iwl_phy_db_get_section.exit

iwl_phy_db_get_section.exit:                      ; preds = %if.end12.i, %if.end6.i, %sw.bb1.i
  %retval.0.i = phi ptr [ %arrayidx14.i, %if.end12.i ], [ %arrayidx.i, %if.end6.i ], [ %calib_nch.i, %sw.bb1.i ]
  %tobool54.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool54.not, label %iwl_phy_db_get_section.exit.cleanup_crit_edge, label %iwl_phy_db_get_section.exit.if.end56_crit_edge

iwl_phy_db_get_section.exit.if.end56_crit_edge:   ; preds = %iwl_phy_db_get_section.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

iwl_phy_db_get_section.exit.cleanup_crit_edge:    ; preds = %iwl_phy_db_get_section.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end56:                                         ; preds = %iwl_phy_db_get_section.exit.if.end56_crit_edge, %if.end.i.if.end56_crit_edge
  %retval.0.i153 = phi ptr [ %retval.0.i, %iwl_phy_db_get_section.exit.if.end56_crit_edge ], [ %phy_db, %if.end.i.if.end56_crit_edge ]
  %data57 = getelementptr inbounds %struct.iwl_phy_db_entry, ptr %retval.0.i153, i32 0, i32 1
  %36 = ptrtoint ptr %data57 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data57, align 4
  tail call void @kfree(ptr noundef %37) #6
  %data58 = getelementptr inbounds %struct.iwl_rx_packet, ptr %pkt, i32 1, i32 1
  %call61 = tail call ptr @kmemdup(ptr noundef %data58, i32 noundef %conv3, i32 noundef 2592) #6
  %38 = ptrtoint ptr %data57 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call61, ptr %data57, align 4
  %tobool64.not = icmp eq ptr %call61, null
  br i1 %tobool64.not, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %retval.0.i153 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %retval.0.i153, align 4
  br label %cleanup

if.end67:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %retval.0.i153 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %9, ptr %retval.0.i153, align 4
  %trans = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 6
  %41 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %trans, align 4
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %44, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_phy_db_set_section, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.iwl_phy_db_set_section, i32 noundef 215, i32 noundef %conv, i32 noundef %conv3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.then65, %iwl_phy_db_get_section.exit.cleanup_crit_edge, %sw.bb7.i.cleanup_crit_edge, %sw.bb2.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end67 ], [ -12, %if.then65 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.then18.cleanup_crit_edge ], [ -12, %if.then39.cleanup_crit_edge ], [ -22, %iwl_phy_db_get_section.exit.cleanup_crit_edge ], [ -22, %if.end52.cleanup_crit_edge ], [ -22, %sw.bb2.i.cleanup_crit_edge ], [ -22, %sw.bb7.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_send_phy_db_data(ptr noundef %phy_db) local_unnamed_addr #0 align 64 {
entry:
  %phy_db_cmd.i119 = alloca %struct.iwl_phy_db_cmd, align 2
  %cmd.i120 = alloca %struct.iwl_host_cmd, align 4
  %phy_db_cmd.i = alloca %struct.iwl_phy_db_cmd, align 2
  %cmd.i = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %trans = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 6
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans, align 4
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %3, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_send_phy_db_data, ptr noundef nonnull @.str.1) #6
  %tobool.not.i = icmp eq ptr %phy_db, null
  br i1 %tobool.not.i, label %do.end7, label %if.end

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trans, align 4
  %dev9 = getelementptr inbounds %struct.iwl_trans, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev9, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %7, i32 noundef 0, ptr noundef nonnull @.str.2) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %data12.i = getelementptr inbounds %struct.iwl_phy_db_entry, ptr %phy_db, i32 0, i32 1
  %8 = ptrtoint ptr %data12.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data12.i, align 4
  %10 = ptrtoint ptr %phy_db to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %phy_db, align 4
  %12 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trans, align 4
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  %conv.i = zext i16 %11 to i32
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %15, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_phy_db_get_section_data, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.iwl_phy_db_get_section_data, i32 noundef 306, i32 noundef 1, i32 noundef %conv.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_db_cmd.i) #6
  %16 = getelementptr inbounds %struct.iwl_phy_db_cmd, ptr %phy_db_cmd.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i) #6
  %17 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %18 = call ptr @memset(ptr %17, i32 0, i32 28)
  %19 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd.i, i32 0, i32 5
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 108, ptr %19, align 4
  %21 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %trans, align 4
  %dev.i110 = getelementptr inbounds %struct.iwl_trans, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %dev.i110 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i110, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %24, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_send_phy_db_cmd, ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef %conv.i) #6
  %25 = ptrtoint ptr %phy_db_cmd.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 256, ptr %phy_db_cmd.i, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %11) #6
  %27 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %16, align 2
  %28 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %phy_db_cmd.i, ptr %cmd.i, align 4
  %len.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6
  %29 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 4, ptr %len.i, align 4
  %arrayidx10.i = getelementptr inbounds [2 x ptr], ptr %cmd.i, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %9, ptr %arrayidx10.i, align 4
  %arrayidx12.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6, i32 1
  %31 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %11, ptr %arrayidx12.i, align 2
  %arrayidx13.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 7, i32 1
  %32 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %arrayidx13.i, align 1
  %33 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %trans, align 4
  %call.i = call i32 @iwl_trans_send_cmd(ptr noundef %34, ptr noundef nonnull %cmd.i) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_db_cmd.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end.i.i112, label %do.end18

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %trans, align 4
  %dev20 = getelementptr inbounds %struct.iwl_trans, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev20, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %38, i32 noundef 0, ptr noundef nonnull @.str.3) #6
  br label %cleanup

if.end.i.i112:                                    ; preds = %if.end
  %calib_nch.i.i = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 1
  %tobool9.not.i = icmp eq ptr %calib_nch.i.i, null
  br i1 %tobool9.not.i, label %do.end30, label %if.end35

do.end30:                                         ; preds = %if.end.i.i112
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %trans, align 4
  %dev32 = getelementptr inbounds %struct.iwl_trans, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev32, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %42, i32 noundef 0, ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.end35:                                         ; preds = %if.end.i.i112
  %data12.i113 = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %data12.i113 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data12.i113, align 4
  %45 = ptrtoint ptr %calib_nch.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %calib_nch.i.i, align 4
  %47 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %trans, align 4
  %dev.i115 = getelementptr inbounds %struct.iwl_trans, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %dev.i115 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i115, align 8
  %conv.i116 = zext i16 %46 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %50, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_phy_db_get_section_data, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.iwl_phy_db_get_section_data, i32 noundef 306, i32 noundef 2, i32 noundef %conv.i116) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_db_cmd.i119) #6
  %51 = getelementptr inbounds %struct.iwl_phy_db_cmd, ptr %phy_db_cmd.i119, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i120) #6
  %52 = getelementptr inbounds i8, ptr %cmd.i120, i32 8
  %53 = call ptr @memset(ptr %52, i32 0, i32 28)
  %54 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd.i120, i32 0, i32 5
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 108, ptr %54, align 4
  %56 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %trans, align 4
  %dev.i122 = getelementptr inbounds %struct.iwl_trans, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %dev.i122 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i122, align 8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %59, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_send_phy_db_cmd, ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef %conv.i116) #6
  %60 = ptrtoint ptr %phy_db_cmd.i119 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 512, ptr %phy_db_cmd.i119, align 2
  %61 = call i16 @llvm.bswap.i16(i16 %46) #6
  %62 = ptrtoint ptr %51 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %51, align 2
  %63 = ptrtoint ptr %cmd.i120 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %phy_db_cmd.i119, ptr %cmd.i120, align 4
  %len.i124 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i120, i32 0, i32 6
  %64 = ptrtoint ptr %len.i124 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 4, ptr %len.i124, align 4
  %arrayidx10.i125 = getelementptr inbounds [2 x ptr], ptr %cmd.i120, i32 0, i32 1
  %65 = ptrtoint ptr %arrayidx10.i125 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %44, ptr %arrayidx10.i125, align 4
  %arrayidx12.i126 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i120, i32 0, i32 6, i32 1
  %66 = ptrtoint ptr %arrayidx12.i126 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %46, ptr %arrayidx12.i126, align 2
  %arrayidx13.i127 = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i120, i32 0, i32 7, i32 1
  %67 = ptrtoint ptr %arrayidx13.i127 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %arrayidx13.i127, align 1
  %68 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %trans, align 4
  %call.i128 = call i32 @iwl_trans_send_cmd(ptr noundef %69, ptr noundef nonnull %cmd.i120) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i120) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_db_cmd.i119) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool37.not = icmp eq i32 %call.i128, 0
  br i1 %tobool37.not, label %if.end47, label %do.end42

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %trans, align 4
  %dev44 = getelementptr inbounds %struct.iwl_trans, ptr %71, i32 0, i32 8
  %72 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev44, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %73, i32 noundef 0, ptr noundef nonnull @.str.5) #6
  br label %cleanup

if.end47:                                         ; preds = %if.end35
  %n_group_papd = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 2
  %74 = ptrtoint ptr %n_group_papd to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %n_group_papd, align 4
  %conv = trunc i32 %75 to i8
  %call48 = call fastcc i32 @iwl_phy_db_send_all_channel_groups(ptr noundef nonnull %phy_db, i32 noundef 4, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end59, label %do.end54

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %trans, align 4
  %dev56 = getelementptr inbounds %struct.iwl_trans, ptr %77, i32 0, i32 8
  %78 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev56, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %79, i32 noundef 0, ptr noundef nonnull @.str.6) #6
  br label %cleanup

if.end59:                                         ; preds = %if.end47
  %n_group_txp = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 4
  %80 = ptrtoint ptr %n_group_txp to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %n_group_txp, align 4
  %conv60 = trunc i32 %81 to i8
  %call61 = call fastcc i32 @iwl_phy_db_send_all_channel_groups(ptr noundef nonnull %phy_db, i32 noundef 5, i8 noundef zeroext %conv60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  %82 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %trans, align 4
  %dev78 = getelementptr inbounds %struct.iwl_trans, ptr %83, i32 0, i32 8
  %84 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev78, align 8
  br i1 %tobool62.not, label %do.end76, label %do.end67

do.end67:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %85, i32 noundef 0, ptr noundef nonnull @.str.7) #6
  br label %cleanup

do.end76:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %85, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_send_phy_db_data, ptr noundef nonnull @.str.8) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end76, %do.end67, %do.end54, %do.end42, %do.end30, %do.end18, %do.end7
  %retval.0 = phi i32 [ -22, %do.end7 ], [ %call.i, %do.end18 ], [ -22, %do.end30 ], [ %call.i128, %do.end42 ], [ %call48, %do.end54 ], [ %call61, %do.end67 ], [ 0, %do.end76 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_phy_db_send_all_channel_groups(ptr noundef readonly %phy_db, i32 noundef %type, i8 noundef zeroext %max_ch_groups) unnamed_addr #0 align 64 {
entry:
  %phy_db_cmd.i = alloca %struct.iwl_phy_db_cmd, align 2
  %cmd.i = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %max_ch_groups)
  %cmp51.not = icmp eq i8 %max_ch_groups, 0
  br i1 %cmp51.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not.i = icmp eq ptr %phy_db, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %type)
  %cmp.i = icmp ugt i32 %type, 5
  %or.cond.i = or i1 %tobool.not.i, %cmp.i
  %n_group_txp.i = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 4
  %calib_ch_group_txp.i = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 5
  %n_group_papd.i = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 2
  %calib_ch_group_papd.i = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 3
  %calib_nch.i = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 1
  %conv7 = trunc i32 %type to i16
  %0 = getelementptr inbounds %struct.iwl_phy_db_cmd, ptr %phy_db_cmd.i, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %cmd.i, i32 8
  %2 = getelementptr inbounds { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8], [2 x i8] }, ptr %cmd.i, i32 0, i32 5
  %trans.i = getelementptr inbounds %struct.iwl_phy_db, ptr %phy_db, i32 0, i32 6
  %conv.i43 = and i32 %type, 65535
  %3 = call i16 @llvm.bswap.i16(i16 %conv7) #6
  %len.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6
  %arrayidx10.i = getelementptr inbounds [2 x ptr], ptr %cmd.i, i32 0, i32 1
  %arrayidx12.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 6, i32 1
  %arrayidx13.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %cmd.i, i32 0, i32 7, i32 1
  br i1 %or.cond.i, label %for.body.lr.ph.cleanup_crit_edge, label %for.body.lr.ph.split

for.body.lr.ph.cleanup_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.split:                             ; preds = %for.body.lr.ph
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %type, label %for.body.lr.ph.split.cleanup_crit_edge [
    i32 1, label %for.body.lr.ph.split.for.body.lr.ph.split.split_crit_edge
    i32 2, label %for.body.lr.ph.split.for.body.lr.ph.split.split_crit_edge64
    i32 4, label %for.body.lr.ph.split.for.body.lr.ph.split.split_crit_edge65
    i32 5, label %for.body.lr.ph.split.for.body.lr.ph.split.split_crit_edge66
  ]

for.body.lr.ph.split.for.body.lr.ph.split.split_crit_edge66: ; preds = %for.body.lr.ph.split
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph.split.split

for.body.lr.ph.split.for.body.lr.ph.split.split_crit_edge65: ; preds = %for.body.lr.ph.split
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph.split.split

for.body.lr.ph.split.for.body.lr.ph.split.split_crit_edge64: ; preds = %for.body.lr.ph.split
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph.split.split

for.body.lr.ph.split.for.body.lr.ph.split.split_crit_edge: ; preds = %for.body.lr.ph.split
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.lr.ph.split.split

for.body.lr.ph.split.cleanup_crit_edge:           ; preds = %for.body.lr.ph.split
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.split.split:                       ; preds = %for.body.lr.ph.split.for.body.lr.ph.split.split_crit_edge, %for.body.lr.ph.split.for.body.lr.ph.split.split_crit_edge64, %for.body.lr.ph.split.for.body.lr.ph.split.split_crit_edge65, %for.body.lr.ph.split.for.body.lr.ph.split.split_crit_edge66
  %wide.trip.count = zext i8 %max_ch_groups to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph.split.split
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph.split.split ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %5 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %type, label %sw.bb7.i [
    i32 1, label %for.body.if.end_crit_edge
    i32 2, label %for.body.iwl_phy_db_get_section.exit_crit_edge
    i32 4, label %sw.bb2.i
  ]

for.body.iwl_phy_db_get_section.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_phy_db_get_section.exit

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb2.i:                                         ; preds = %for.body
  %6 = ptrtoint ptr %n_group_papd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_group_papd.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %indvars.iv)
  %cmp3.not.i = icmp sgt i32 %7, %indvars.iv
  br i1 %cmp3.not.i, label %sw.bb2.i.iwl_phy_db_get_section.exit.sink.split_crit_edge, label %sw.bb2.i.cleanup_crit_edge

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2.i.iwl_phy_db_get_section.exit.sink.split_crit_edge: ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_phy_db_get_section.exit.sink.split

sw.bb7.i:                                         ; preds = %for.body
  %8 = ptrtoint ptr %n_group_txp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_group_txp.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %indvars.iv)
  %cmp9.not.i = icmp sgt i32 %9, %indvars.iv
  br i1 %cmp9.not.i, label %sw.bb7.i.iwl_phy_db_get_section.exit.sink.split_crit_edge, label %sw.bb7.i.cleanup_crit_edge

sw.bb7.i.cleanup_crit_edge:                       ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb7.i.iwl_phy_db_get_section.exit.sink.split_crit_edge: ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iwl_phy_db_get_section.exit.sink.split

iwl_phy_db_get_section.exit.sink.split:           ; preds = %sw.bb7.i.iwl_phy_db_get_section.exit.sink.split_crit_edge, %sw.bb2.i.iwl_phy_db_get_section.exit.sink.split_crit_edge
  %calib_ch_group_papd.i.sink = phi ptr [ %calib_ch_group_papd.i, %sw.bb2.i.iwl_phy_db_get_section.exit.sink.split_crit_edge ], [ %calib_ch_group_txp.i, %sw.bb7.i.iwl_phy_db_get_section.exit.sink.split_crit_edge ]
  %10 = ptrtoint ptr %calib_ch_group_papd.i.sink to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %calib_ch_group_papd.i.sink, align 4
  %arrayidx.i = getelementptr %struct.iwl_phy_db_entry, ptr %11, i32 %indvars.iv
  br label %iwl_phy_db_get_section.exit

iwl_phy_db_get_section.exit:                      ; preds = %iwl_phy_db_get_section.exit.sink.split, %for.body.iwl_phy_db_get_section.exit_crit_edge
  %retval.0.i = phi ptr [ %calib_nch.i, %for.body.iwl_phy_db_get_section.exit_crit_edge ], [ %arrayidx.i, %iwl_phy_db_get_section.exit.sink.split ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %iwl_phy_db_get_section.exit.cleanup_crit_edge, label %iwl_phy_db_get_section.exit.if.end_crit_edge

iwl_phy_db_get_section.exit.if.end_crit_edge:     ; preds = %iwl_phy_db_get_section.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

iwl_phy_db_get_section.exit.cleanup_crit_edge:    ; preds = %iwl_phy_db_get_section.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %iwl_phy_db_get_section.exit.if.end_crit_edge, %for.body.if.end_crit_edge
  %retval.0.i49 = phi ptr [ %retval.0.i, %iwl_phy_db_get_section.exit.if.end_crit_edge ], [ %phy_db, %for.body.if.end_crit_edge ]
  %12 = ptrtoint ptr %retval.0.i49 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %retval.0.i49, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool4.not = icmp eq i16 %13, 0
  br i1 %tobool4.not, label %if.end.for.inc_crit_edge, label %if.end6

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end6:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.iwl_phy_db_entry, ptr %retval.0.i49, i32 0, i32 1
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_db_cmd.i) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %cmd.i) #6
  %16 = call ptr @memset(ptr %1, i32 0, i32 28)
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 108, ptr %2, align 4
  %18 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trans.i, align 4
  %dev.i = getelementptr inbounds %struct.iwl_trans, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 8
  %conv2.i = zext i16 %13 to i32
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %21, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_send_phy_db_cmd, ptr noundef nonnull @.str.11, i32 noundef %conv.i43, i32 noundef %conv2.i) #6
  %22 = ptrtoint ptr %phy_db_cmd.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %3, ptr %phy_db_cmd.i, align 2
  %23 = call i16 @llvm.bswap.i16(i16 %13) #6
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %0, align 2
  %25 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %phy_db_cmd.i, ptr %cmd.i, align 4
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 4, ptr %len.i, align 4
  %27 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %15, ptr %arrayidx10.i, align 4
  %28 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %13, ptr %arrayidx12.i, align 2
  %29 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %arrayidx13.i, align 1
  %30 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %trans.i, align 4
  %call.i = call i32 @iwl_trans_send_cmd(ptr noundef %31, ptr noundef nonnull %cmd.i) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %cmd.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_db_cmd.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  %32 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %trans.i, align 4
  %dev22 = getelementptr inbounds %struct.iwl_trans, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev22, align 8
  br i1 %tobool10.not, label %do.end20, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %35, i32 noundef 0, ptr noundef nonnull @.str.12, i32 noundef %type, i32 noundef %indvars.iv, i32 noundef %call.i) #6
  br label %cleanup

do.end20:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %35, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_phy_db_send_all_channel_groups, ptr noundef nonnull @.str.13, i32 noundef %type, i32 noundef %indvars.iv) #6
  br label %for.inc

for.inc:                                          ; preds = %do.end20, %if.end.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %iwl_phy_db_get_section.exit.cleanup_crit_edge, %sw.bb7.i.cleanup_crit_edge, %sw.bb2.i.cleanup_crit_edge, %for.body.lr.ph.split.cleanup_crit_edge, %for.body.lr.ph.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ -22, %for.body.lr.ph.cleanup_crit_edge ], [ -22, %for.body.lr.ph.split.cleanup_crit_edge ], [ -22, %iwl_phy_db_get_section.exit.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -22, %sw.bb2.i.cleanup_crit_edge ], [ -22, %sw.bb7.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_trans_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !28, !30, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__func__.iwl_phy_db_set_section, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-phy-db.c", i32 213, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.iwl_send_phy_db_data, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-phy-db.c", i32 383, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-phy-db.c", i32 390, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-phy-db.c", i32 396, i32 3}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-phy-db.c", i32 404, i32 3}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-phy-db.c", i32 411, i32 3}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-phy-db.c", i32 421, i32 3}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-phy-db.c", i32 431, i32 3}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-phy-db.c", i32 436, i32 2}
!20 = !{ptr @__func__.iwl_phy_db_get_section_data, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-phy-db.c", i32 304, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-phy-db.c", i32 248, i32 6}
!25 = !{ptr @__func__.iwl_send_phy_db_cmd, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-phy-db.c", i32 319, i32 2}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-phy-db.c", i32 363, i32 4}
!30 = !{ptr @__func__.iwl_phy_db_send_all_channel_groups, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-phy-db.c", i32 369, i32 3}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
