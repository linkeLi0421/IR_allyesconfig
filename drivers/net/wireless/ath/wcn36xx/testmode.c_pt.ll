; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/wcn36xx/testmode.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/wcn36xx/testmode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon.109 }
%union.anon.109 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.130, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.130 = type { i32, i16 }
%struct.wcn36xx = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, [4 x i32], i8, [65 x i8], [65 x i8], i8, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.mutex, ptr, i32, %struct.mutex, %struct.completion, ptr, %struct.work_struct, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, ptr, %struct.mutex, i8, %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch, %struct.wcn36xx_dxe_ch, %struct.spinlock, i8, %struct.wcn36xx_dxe_mem_pool, %struct.wcn36xx_dxe_mem_pool, ptr, %struct.timer_list, %struct.sk_buff_head, i32, %struct.wcn36xx_dfs_entry }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wcn36xx_dxe_ch = type { %struct.spinlock, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.wcn36xx_dxe_mem_pool = type { i32, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.wcn36xx_dfs_entry = type { ptr, %struct.wcn36xx_dfs_file, %struct.wcn36xx_dfs_file }
%struct.wcn36xx_dfs_file = type { ptr, i32 }
%struct.ftm_rsp_msg = type { i16, i16, i32, [0 x i8] }

@wcn36xx_dbg_mask = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Data:\00", [26 x i8] zeroinitializer }, align 32
@wcn36xx_tm_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.109 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 5000, %union.anon.109 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@wcn36xx_tm_cmd_ptt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017testmode cmd wmi msg_id 0x%04X msg_len %d buf %pK buf_len %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wcn36xx_tm_cmd_ptt\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/wireless/ath/wcn36xx/testmode.c\00", [52 x i8] zeroinitializer }, align 32
@wcn36xx_tm_cmd_ptt._entry_ptr = internal global ptr @wcn36xx_tm_cmd_ptt._entry, section ".printk_index", align 4
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"REQ \00", [27 x i8] zeroinitializer }, align 32
@wcn36xx_tm_cmd_ptt._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017PPT Request >> HAL size %d\0A\00", [34 x i8] zeroinitializer }, align 32
@wcn36xx_tm_cmd_ptt._entry_ptr.8 = internal global ptr @wcn36xx_tm_cmd_ptt._entry.6, section ".printk_index", align 4
@wcn36xx_tm_cmd_ptt._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017Response status = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@wcn36xx_tm_cmd_ptt._entry_ptr.11 = internal global ptr @wcn36xx_tm_cmd_ptt._entry.9, section ".printk_index", align 4
@wcn36xx_tm_cmd_ptt._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017PPT Response << HAL size %d\0A\00", [33 x i8] zeroinitializer }, align 32
@wcn36xx_tm_cmd_ptt._entry_ptr.14 = internal global ptr @wcn36xx_tm_cmd_ptt._entry.12, section ".printk_index", align 4
@wcn36xx_tm_cmd_ptt._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014WARNING No response! Echoing request with response status %d\0A\00", [32 x i8] zeroinitializer }, align 32
@wcn36xx_tm_cmd_ptt._entry_ptr.17 = internal global ptr @wcn36xx_tm_cmd_ptt._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RSP \00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 134, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"wcn36xx_tm_policy\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 27, i32 32 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 58, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 63, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 80, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 87, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 91, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 98, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [47 x i8] c"../drivers/net/wireless/ath/wcn36xx/testmode.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 101, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @wcn36xx_tm_cmd_ptt._entry, ptr @wcn36xx_tm_cmd_ptt._entry.12, ptr @wcn36xx_tm_cmd_ptt._entry.15, ptr @wcn36xx_tm_cmd_ptt._entry.6, ptr @wcn36xx_tm_cmd_ptt._entry.9, ptr @wcn36xx_tm_cmd_ptt._entry_ptr, ptr @wcn36xx_tm_cmd_ptt._entry_ptr.11, ptr @wcn36xx_tm_cmd_ptt._entry_ptr.14, ptr @wcn36xx_tm_cmd_ptt._entry_ptr.17, ptr @wcn36xx_tm_cmd_ptt._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @wcn36xx_tm_policy, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_tm_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_tm_cmd_ptt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_tm_cmd_ptt._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_tm_cmd_ptt._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_tm_cmd_ptt._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcn36xx_tm_cmd_ptt._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wcn36xx_tm_cmd(ptr nocapture noundef readonly %hw, ptr noundef %vif, ptr noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %rsp.i = alloca ptr, align 4
  %tb = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb) #4
  %2 = ptrtoint ptr %tb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb, align 4, !annotation !40
  %3 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !40
  %5 = getelementptr inbounds [3 x ptr], ptr %tb, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %7 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @print_hex_dump(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %data, i32 noundef %len, i1 noundef zeroext false) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %call.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 2, ptr noundef %data, i32 noundef %len, ptr noundef nonnull @wcn36xx_tm_policy, i32 noundef 0, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end3, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %do.end
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %11)
  %cmp.not = icmp eq i16 %11, 3
  br i1 %cmp.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsp.i) #4
  %12 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rsp.i, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end11.wcn36xx_tm_cmd_ptt.exit_crit_edge, label %if.end.i

if.end11.wcn36xx_tm_cmd_ptt.exit_crit_edge:       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %wcn36xx_tm_cmd_ptt.exit

if.end.i:                                         ; preds = %if.end11
  %add.ptr.i.i20 = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %14, align 2
  %conv.i.i = zext i16 %16 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %17 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and.i = and i32 %17, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end.i.do.body12.i_crit_edge, label %do.end.i

if.end.i.do.body12.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body12.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %add.ptr.i.i20 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %add.ptr.i.i20, align 1
  %conv.i = zext i16 %19 to i32
  %msg_body_length.i = getelementptr i8, ptr %14, i32 6
  %20 = ptrtoint ptr %msg_body_length.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %msg_body_length.i, align 1
  %conv7.i = zext i16 %21 to i32
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %conv.i, i32 noundef %conv7.i, ptr noundef %add.ptr.i.i20, i32 noundef %sub.i.i) #7
  br label %do.body12.i

do.body12.i:                                      ; preds = %do.end.i, %if.end.i.do.body12.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %22 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and13.i = and i32 %22, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %do.body12.i.do.end18.i_crit_edge, label %if.then15.i

do.body12.i.do.end18.i_crit_edge:                 ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end18.i

if.then15.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @print_hex_dump(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %add.ptr.i.i20, i32 noundef %sub.i.i, i1 noundef zeroext false) #4
  br label %do.end18.i

do.end18.i:                                       ; preds = %if.then15.i, %do.body12.i.do.end18.i_crit_edge
  %23 = ptrtoint ptr %add.ptr.i.i20 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %add.ptr.i.i20, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 12962, i16 %24)
  %cmp.i = icmp eq i16 %24, 12962
  br i1 %cmp.i, label %if.then22.i, label %do.body27.i

if.then22.i:                                      ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  %msg_response.i = getelementptr i8, ptr %14, i32 12
  %fw_major.i = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 8
  %25 = ptrtoint ptr %fw_major.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %fw_major.i, align 1
  %conv23.i = zext i8 %26 to i16
  %27 = ptrtoint ptr %msg_response.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %conv23.i, ptr %msg_response.i, align 1
  %fw_minor.i = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %fw_minor.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %fw_minor.i, align 2
  %conv24.i = zext i8 %29 to i16
  %drv_minor.i = getelementptr i8, ptr %14, i32 14
  %30 = ptrtoint ptr %drv_minor.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 %conv24.i, ptr %drv_minor.i, align 1
  %fw_version.i = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 6
  %31 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fw_version.i, align 1
  %conv25.i = zext i8 %32 to i16
  %drv_patch.i = getelementptr i8, ptr %14, i32 16
  %33 = ptrtoint ptr %drv_patch.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %conv25.i, ptr %drv_patch.i, align 1
  %fw_revision.i = getelementptr inbounds %struct.wcn36xx, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %fw_revision.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %fw_revision.i, align 4
  %conv26.i = zext i8 %35 to i16
  %drv_build.i = getelementptr i8, ptr %14, i32 18
  %36 = ptrtoint ptr %drv_build.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 %conv26.i, ptr %drv_build.i, align 1
  %ptt_max.i = getelementptr i8, ptr %14, i32 20
  %37 = ptrtoint ptr %ptt_max.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 2)
  store i16 10, ptr %ptt_max.i, align 1
  %ptt_min.i = getelementptr i8, ptr %14, i32 22
  %38 = ptrtoint ptr %ptt_min.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 0, ptr %ptt_min.i, align 1
  %39 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr.i.i20, ptr %rsp.i, align 4
  %resp_status.i = getelementptr i8, ptr %14, i32 8
  %40 = ptrtoint ptr %resp_status.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 0, ptr %resp_status.i, align 1
  br label %if.end75.i

do.body27.i:                                      ; preds = %do.end18.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %41 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and28.i = and i32 %41, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %do.body27.i.do.end40.i_crit_edge, label %do.end33.i

do.body27.i.do.end40.i_crit_edge:                 ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end40.i

do.end33.i:                                       ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #6
  %msg_body_length35.i = getelementptr i8, ptr %14, i32 6
  %42 = ptrtoint ptr %msg_body_length35.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %msg_body_length35.i, align 1
  %conv36.i = zext i16 %43 to i32
  %call37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv36.i) #7
  br label %do.end40.i

do.end40.i:                                       ; preds = %do.end33.i, %do.body27.i.do.end40.i_crit_edge
  %msg_body_length41.i = getelementptr i8, ptr %14, i32 6
  %44 = ptrtoint ptr %msg_body_length41.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %msg_body_length41.i, align 1
  %conv42.i = zext i16 %45 to i32
  %call43.i = call i32 @wcn36xx_smd_process_ptt_msg(ptr noundef %1, ptr noundef %vif, ptr noundef %add.ptr.i.i20, i32 noundef %conv42.i, ptr noundef nonnull %rsp.i) #4
  %resp_status44.i = getelementptr i8, ptr %14, i32 8
  %46 = ptrtoint ptr %resp_status44.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %call43.i, ptr %resp_status44.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %47 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and46.i = and i32 %47, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %do.end40.i.do.end57.i_crit_edge, label %do.end51.i

do.end40.i.do.end57.i_crit_edge:                  ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end57.i

do.end51.i:                                       ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #6
  %call54.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %call43.i) #7
  br label %do.end57.i

do.end57.i:                                       ; preds = %do.end51.i, %do.end40.i.do.end57.i_crit_edge
  %48 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rsp.i, align 4
  %tobool58.not.i = icmp eq ptr %49, null
  br i1 %tobool58.not.i, label %do.end57.i.if.then77.i_crit_edge, label %do.body60.i

do.end57.i.if.then77.i_crit_edge:                 ; preds = %do.end57.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then77.i

do.body60.i:                                      ; preds = %do.end57.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %50 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and61.i = and i32 %50, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  br i1 %tobool62.not.i, label %do.body60.i.if.end75.i_crit_edge, label %do.end66.i

do.body60.i.if.end75.i_crit_edge:                 ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end75.i

do.end66.i:                                       ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #6
  %msg_body_length68.i = getelementptr inbounds %struct.ftm_rsp_msg, ptr %49, i32 0, i32 1
  %51 = ptrtoint ptr %msg_body_length68.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %msg_body_length68.i, align 1
  %conv69.i = zext i16 %52 to i32
  %call70.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv69.i) #7
  br label %if.end75.i

if.end75.i:                                       ; preds = %do.end66.i, %do.body60.i.if.end75.i_crit_edge, %if.then22.i
  %53 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr.i = load ptr, ptr %rsp.i, align 4
  %tobool76.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool76.not.i, label %if.end75.i.if.then77.i_crit_edge, label %if.end75.i.do.body85.i_crit_edge

if.end75.i.do.body85.i_crit_edge:                 ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body85.i

if.end75.i.if.then77.i_crit_edge:                 ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then77.i

if.then77.i:                                      ; preds = %if.end75.i.if.then77.i_crit_edge, %do.end57.i.if.then77.i_crit_edge
  %54 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr.i.i20, ptr %rsp.i, align 4
  %resp_status82.i = getelementptr i8, ptr %14, i32 8
  %55 = ptrtoint ptr %resp_status82.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %resp_status82.i, align 1
  %call83.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %56) #7
  br label %do.body85.i

do.body85.i:                                      ; preds = %if.then77.i, %if.end75.i.do.body85.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @wcn36xx_dbg_mask to i32))
  %57 = load i32, ptr @wcn36xx_dbg_mask, align 4
  %and86.i = and i32 %57, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %tobool87.not.i = icmp eq i32 %and86.i, 0
  br i1 %tobool87.not.i, label %do.body85.i.do.end93.i_crit_edge, label %if.then88.i

do.body85.i.do.end93.i_crit_edge:                 ; preds = %do.body85.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end93.i

if.then88.i:                                      ; preds = %do.body85.i
  call void @__sanitizer_cov_trace_pc() #6
  %58 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rsp.i, align 4
  %msg_body_length89.i = getelementptr inbounds %struct.ftm_rsp_msg, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %msg_body_length89.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %msg_body_length89.i, align 1
  %conv90.i = zext i16 %61 to i32
  call void @print_hex_dump(ptr noundef nonnull @.str, ptr noundef nonnull @.str.18, i32 noundef 2, i32 noundef 32, i32 noundef 1, ptr noundef %59, i32 noundef %conv90.i, i1 noundef zeroext false) #4
  br label %do.end93.i

do.end93.i:                                       ; preds = %if.then88.i, %do.body85.i.do.end93.i_crit_edge
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wiphy.i, align 8
  %msg_body_length94.i = getelementptr i8, ptr %14, i32 6
  %66 = ptrtoint ptr %msg_body_length94.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %msg_body_length94.i, align 1
  %conv95.i = zext i16 %67 to i32
  %sub.i150.i = add nuw nsw i32 %conv95.i, 7
  %and.i.i = and i32 %sub.i150.i, 131068
  %call.i.i = call ptr @__cfg80211_alloc_reply_skb(ptr noundef %65, i32 noundef 45, i32 noundef 69, i32 noundef %and.i.i) #4
  %tobool98.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool98.not.i, label %do.end93.i.out.i_crit_edge, label %if.end100.i

do.end93.i.out.i_crit_edge:                       ; preds = %do.end93.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.i

if.end100.i:                                      ; preds = %do.end93.i
  %68 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rsp.i, align 4
  %msg_body_length101.i = getelementptr inbounds %struct.ftm_rsp_msg, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %msg_body_length101.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %msg_body_length101.i, align 1
  %conv102.i = zext i16 %71 to i32
  %call103.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 2, i32 noundef %conv102.i, ptr noundef %69) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103.i)
  %tobool104.not.i = icmp eq i32 %call103.i, 0
  br i1 %tobool104.not.i, label %if.end106.i, label %if.then105.i

if.then105.i:                                     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #4
  br label %out.i

if.end106.i:                                      ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i151.i = call i32 @cfg80211_vendor_cmd_reply(ptr noundef nonnull %call.i.i) #4
  br label %out.i

out.i:                                            ; preds = %if.end106.i, %if.then105.i, %do.end93.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %call103.i, %if.then105.i ], [ %call.i151.i, %if.end106.i ], [ -12, %do.end93.i.out.i_crit_edge ]
  %72 = ptrtoint ptr %rsp.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rsp.i, align 4
  %cmp108.not.i = icmp eq ptr %73, %add.ptr.i.i20
  br i1 %cmp108.not.i, label %out.i.wcn36xx_tm_cmd_ptt.exit_crit_edge, label %if.then110.i

out.i.wcn36xx_tm_cmd_ptt.exit_crit_edge:          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %wcn36xx_tm_cmd_ptt.exit

if.then110.i:                                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree(ptr noundef %73) #4
  br label %wcn36xx_tm_cmd_ptt.exit

wcn36xx_tm_cmd_ptt.exit:                          ; preds = %if.then110.i, %out.i.wcn36xx_tm_cmd_ptt.exit_crit_edge, %if.end11.wcn36xx_tm_cmd_ptt.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.end11.wcn36xx_tm_cmd_ptt.exit_crit_edge ], [ %ret.0.i, %if.then110.i ], [ %ret.0.i, %out.i.wcn36xx_tm_cmd_ptt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsp.i) #4
  br label %cleanup

cleanup:                                          ; preds = %wcn36xx_tm_cmd_ptt.exit, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %wcn36xx_tm_cmd_ptt.exit ], [ %call.i, %do.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -95, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcn36xx_smd_process_ptt_msg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__cfg80211_alloc_reply_skb(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfg80211_vendor_cmd_reply(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/wcn36xx/testmode.c", i32 134, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @wcn36xx_tm_policy, !4, !"wcn36xx_tm_policy", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/wcn36xx/testmode.c", i32 27, i32 32}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/wcn36xx/testmode.c", i32 58, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @wcn36xx_tm_cmd_ptt._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @wcn36xx_tm_cmd_ptt._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/ath/wcn36xx/testmode.c", i32 63, i32 2}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/ath/wcn36xx/testmode.c", i32 80, i32 3}
!15 = !{ptr @wcn36xx_tm_cmd_ptt._entry.6, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @wcn36xx_tm_cmd_ptt._entry_ptr.8, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/ath/wcn36xx/testmode.c", i32 87, i32 3}
!19 = !{ptr @wcn36xx_tm_cmd_ptt._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @wcn36xx_tm_cmd_ptt._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/ath/wcn36xx/testmode.c", i32 91, i32 4}
!23 = !{ptr @wcn36xx_tm_cmd_ptt._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @wcn36xx_tm_cmd_ptt._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/ath/wcn36xx/testmode.c", i32 98, i32 3}
!27 = !{ptr @wcn36xx_tm_cmd_ptt._entry.15, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @wcn36xx_tm_cmd_ptt._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/ath/wcn36xx/testmode.c", i32 101, i32 2}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"auto-init"}
