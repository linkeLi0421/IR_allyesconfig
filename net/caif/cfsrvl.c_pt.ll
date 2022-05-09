; ModuleID = '/llk/IR_all_yes/net/caif/cfsrvl.c_pt.bc'
source_filename = "../net/caif/cfsrvl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+caif_free_client\22, \22a\22\09"
module asm "\09.weak\09__crc_caif_free_client\09\09\09\09"
module asm "\09.long\09__crc_caif_free_client\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_caif_free_client:\09\09\09\09\09"
module asm "\09.asciz \09\22caif_free_client\22\09\09\09\09\09"
module asm "__kstrtabns_caif_free_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+caif_client_register_refcnt\22, \22a\22\09"
module asm "\09.weak\09__crc_caif_client_register_refcnt\09\09\09\09"
module asm "\09.long\09__crc_caif_client_register_refcnt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_caif_client_register_refcnt:\09\09\09\09\09"
module asm "\09.asciz \09\22caif_client_register_refcnt\22\09\09\09\09\09"
module asm "__kstrtabns_caif_client_register_refcnt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cfsrvl = type { %struct.cflayer, i8, i8, i8, i8, ptr, %struct.dev_info, ptr, ptr, %struct.callback_head }
%struct.cflayer = type { ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, [16 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.dev_info = type { ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.caif_payload_info = type { ptr, i16, i16 }

@__kstrtab_caif_free_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_caif_free_client = external dso_local constant [0 x i8], align 1
@__ksymtab_caif_free_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @caif_free_client to i32), ptr @__kstrtab_caif_free_client, ptr @__kstrtabns_caif_free_client }, section "___ksymtab+caif_free_client", align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/caif/cfsrvl.c\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_caif_client_register_refcnt = external dso_local constant [0 x i8], align 1
@__kstrtabns_caif_client_register_refcnt = external dso_local constant [0 x i8], align 1
@__ksymtab_caif_client_register_refcnt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @caif_client_register_refcnt to i32), ptr @__kstrtab_caif_client_register_refcnt, ptr @__kstrtabns_caif_client_register_refcnt }, section "___ksymtab+caif_client_register_refcnt", align 4
@cfservl_ctrlcmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014caif:%s(): Unexpected ctrl in cfsrvl (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cfservl_ctrlcmd\00", [16 x i8] zeroinitializer }, align 32
@cfservl_ctrlcmd._entry_ptr = internal global ptr @cfservl_ctrlcmd._entry, section ".printk_index", align 4
@cfservl_modemcmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013caif:%s(): caif:Assert detected:'%s'\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cfservl_modemcmd\00", [47 x i8] zeroinitializer }, align 32
@cfservl_modemcmd._entry_ptr = internal global ptr @cfservl_modemcmd._entry, section ".printk_index", align 4
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"layr != NULL\00", [19 x i8] zeroinitializer }, align 32
@cfservl_modemcmd._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfservl_modemcmd._entry_ptr.7 = internal global ptr @cfservl_modemcmd._entry.6, section ".printk_index", align 4
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"layr->dn != NULL\00", [47 x i8] zeroinitializer }, align 32
@cfservl_modemcmd._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfservl_modemcmd._entry_ptr.10 = internal global ptr @cfservl_modemcmd._entry.9, section ".printk_index", align 4
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"layr->dn->transmit != NULL\00", [37 x i8] zeroinitializer }, align 32
@cfservl_modemcmd._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013caif:%s(): Packet is erroneous!\0A\00", [61 x i8] zeroinitializer }, align 32
@cfservl_modemcmd._entry_ptr.14 = internal global ptr @cfservl_modemcmd._entry.12, section ".printk_index", align 4
@cfservl_modemcmd._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfservl_modemcmd._entry_ptr.16 = internal global ptr @cfservl_modemcmd._entry.15, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 214, i32 6 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 86, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 98, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 99, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 100, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 116, i32 5 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private constant [21 x i8] c"../net/caif/cfsrvl.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 137, i32 5 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__ksymtab_caif_client_register_refcnt, ptr @__ksymtab_caif_free_client, ptr @cfservl_ctrlcmd._entry, ptr @cfservl_ctrlcmd._entry_ptr, ptr @cfservl_modemcmd._entry, ptr @cfservl_modemcmd._entry.12, ptr @cfservl_modemcmd._entry.15, ptr @cfservl_modemcmd._entry.6, ptr @cfservl_modemcmd._entry.9, ptr @cfservl_modemcmd._entry_ptr, ptr @cfservl_modemcmd._entry_ptr.10, ptr @cfservl_modemcmd._entry_ptr.14, ptr @cfservl_modemcmd._entry_ptr.16, ptr @cfservl_modemcmd._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.13], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfservl_ctrlcmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfservl_modemcmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfservl_modemcmd._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfservl_modemcmd._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfservl_modemcmd._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfservl_modemcmd._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cfsrvl_init(ptr nocapture noundef writeonly %service, i8 noundef zeroext %channel_id, ptr nocapture noundef readonly %dev_info, i1 noundef zeroext %supports_flowctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %supports_flowctrl to i8
  %open = getelementptr inbounds %struct.cfsrvl, ptr %service, i32 0, i32 1
  %0 = ptrtoint ptr %open to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %open, align 4
  %modem_flow_on = getelementptr inbounds %struct.cfsrvl, ptr %service, i32 0, i32 3
  %1 = ptrtoint ptr %modem_flow_on to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %modem_flow_on, align 2
  %phy_flow_on = getelementptr inbounds %struct.cfsrvl, ptr %service, i32 0, i32 2
  %2 = ptrtoint ptr %phy_flow_on to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %phy_flow_on, align 1
  %conv = zext i8 %channel_id to i32
  %id = getelementptr inbounds %struct.cflayer, ptr %service, i32 0, i32 7
  %3 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %id, align 4
  %ctrlcmd = getelementptr inbounds %struct.cflayer, ptr %service, i32 0, i32 5
  %4 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cfservl_ctrlcmd, ptr %ctrlcmd, align 4
  %modemcmd = getelementptr inbounds %struct.cflayer, ptr %service, i32 0, i32 6
  %5 = ptrtoint ptr %modemcmd to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cfservl_modemcmd, ptr %modemcmd, align 4
  %dev_info3 = getelementptr inbounds %struct.cfsrvl, ptr %service, i32 0, i32 6
  %6 = ptrtoint ptr %dev_info to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %dev_info, align 4
  %8 = ptrtoint ptr %dev_info3 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %7, ptr %dev_info3, align 4
  %supports_flowctrl4 = getelementptr inbounds %struct.cfsrvl, ptr %service, i32 0, i32 4
  %9 = ptrtoint ptr %supports_flowctrl4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %supports_flowctrl4, align 1
  %release = getelementptr inbounds %struct.cfsrvl, ptr %service, i32 0, i32 5
  %10 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @cfsrvl_release, ptr %release, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cfservl_ctrlcmd(ptr nocapture noundef %layr, i32 noundef %ctrl, i32 noundef %phyid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %layr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layr, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ctrlcmd = getelementptr inbounds %struct.cflayer, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrlcmd, align 4
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = zext i32 %ctrl to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ctrl, label %do.end [
    i32 3, label %sw.bb
    i32 4, label %if.end.sw.bb6_crit_edge
    i32 5, label %if.end.sw.bb6_crit_edge113
    i32 6, label %sw.bb11
    i32 7, label %sw.bb20
    i32 0, label %sw.bb34
    i32 1, label %sw.bb43
    i32 8, label %sw.bb52
    i32 2, label %sw.bb56
  ]

if.end.sw.bb6_crit_edge113:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

if.end.sw.bb6_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %open = getelementptr inbounds %struct.cfsrvl, ptr %layr, i32 0, i32 1
  %5 = ptrtoint ptr %open to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %open, align 4
  %6 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrlcmd, align 4
  tail call void %7(ptr noundef nonnull %1, i32 noundef 3, i32 noundef %phyid) #6
  br label %cleanup

sw.bb6:                                           ; preds = %if.end.sw.bb6_crit_edge, %if.end.sw.bb6_crit_edge113
  %open7 = getelementptr inbounds %struct.cfsrvl, ptr %layr, i32 0, i32 1
  %8 = ptrtoint ptr %open7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %open7, align 4
  %9 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrlcmd, align 4
  tail call void %10(ptr noundef nonnull %1, i32 noundef %ctrl, i32 noundef %phyid) #6
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.cfsrvl, ptr %layr, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %phyid)
  %cmp12.not = icmp eq i32 %12, %phyid
  br i1 %cmp12.not, label %if.end14, label %sw.bb11.cleanup_crit_edge

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %sw.bb11
  %modem_flow_on = getelementptr inbounds %struct.cfsrvl, ptr %layr, i32 0, i32 3
  %13 = ptrtoint ptr %modem_flow_on to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %modem_flow_on, align 2, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.end14.if.end19_crit_edge, label %if.then15

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then15:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef nonnull %1, i32 noundef 0, i32 noundef %phyid) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end14.if.end19_crit_edge
  %phy_flow_on = getelementptr inbounds %struct.cfsrvl, ptr %layr, i32 0, i32 2
  %15 = ptrtoint ptr %phy_flow_on to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %phy_flow_on, align 1
  br label %cleanup

sw.bb20:                                          ; preds = %if.end
  %id22 = getelementptr inbounds %struct.cfsrvl, ptr %layr, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %id22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %phyid)
  %cmp23.not = icmp eq i32 %17, %phyid
  br i1 %cmp23.not, label %if.end25, label %sw.bb20.cleanup_crit_edge

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %sw.bb20
  %modem_flow_on26 = getelementptr inbounds %struct.cfsrvl, ptr %layr, i32 0, i32 3
  %18 = ptrtoint ptr %modem_flow_on26 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %modem_flow_on26, align 2, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool27.not = icmp eq i8 %19, 0
  br i1 %tobool27.not, label %if.end25.if.end32_crit_edge, label %if.then28

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef nonnull %1, i32 noundef 1, i32 noundef %phyid) #6
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.end25.if.end32_crit_edge
  %phy_flow_on33 = getelementptr inbounds %struct.cfsrvl, ptr %layr, i32 0, i32 2
  %20 = ptrtoint ptr %phy_flow_on33 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %phy_flow_on33, align 1
  br label %cleanup

sw.bb34:                                          ; preds = %if.end
  %phy_flow_on35 = getelementptr inbounds %struct.cfsrvl, ptr %layr, i32 0, i32 2
  %21 = ptrtoint ptr %phy_flow_on35 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %phy_flow_on35, align 1, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool36.not = icmp eq i8 %22, 0
  br i1 %tobool36.not, label %sw.bb34.if.end41_crit_edge, label %if.then37

sw.bb34.if.end41_crit_edge:                       ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then37:                                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef nonnull %1, i32 noundef 0, i32 noundef %phyid) #6
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %sw.bb34.if.end41_crit_edge
  %modem_flow_on42 = getelementptr inbounds %struct.cfsrvl, ptr %layr, i32 0, i32 3
  %23 = ptrtoint ptr %modem_flow_on42 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %modem_flow_on42, align 2
  br label %cleanup

sw.bb43:                                          ; preds = %if.end
  %phy_flow_on44 = getelementptr inbounds %struct.cfsrvl, ptr %layr, i32 0, i32 2
  %24 = ptrtoint ptr %phy_flow_on44 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %phy_flow_on44, align 1, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool45.not = icmp eq i8 %25, 0
  br i1 %tobool45.not, label %sw.bb43.if.end50_crit_edge, label %if.then46

sw.bb43.if.end50_crit_edge:                       ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then46:                                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef nonnull %1, i32 noundef 1, i32 noundef %phyid) #6
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %sw.bb43.if.end50_crit_edge
  %modem_flow_on51 = getelementptr inbounds %struct.cfsrvl, ptr %layr, i32 0, i32 3
  %26 = ptrtoint ptr %modem_flow_on51 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %modem_flow_on51, align 2
  br label %cleanup

sw.bb52:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef nonnull %1, i32 noundef 2, i32 noundef %phyid) #6
  br label %cleanup

sw.bb56:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef nonnull %1, i32 noundef 2, i32 noundef %phyid) #6
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %ctrl) #9
  %27 = ptrtoint ptr %layr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %layr, align 4
  %ctrlcmd62 = getelementptr inbounds %struct.cflayer, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %ctrlcmd62 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctrlcmd62, align 4
  tail call void %30(ptr noundef %28, i32 noundef %ctrl, i32 noundef %phyid) #6
  %phy_flow_on64 = getelementptr inbounds %struct.cfsrvl, ptr %layr, i32 0, i32 2
  %31 = ptrtoint ptr %phy_flow_on64 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %phy_flow_on64, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb56, %sw.bb52, %if.end50, %if.end41, %if.end32, %sw.bb20.cleanup_crit_edge, %if.end19, %sw.bb11.cleanup_crit_edge, %sw.bb6, %sw.bb, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfservl_modemcmd(ptr noundef %layr, i32 noundef %ctrl) #1 align 64 {
entry:
  %flow_on = alloca i8, align 1
  %flow_off = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %layr, null
  br i1 %cmp.not, label %do.end, label %entry.do.body31_crit_edge

entry.do.body31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef null) #6
  br label %do.body31

do.body31:                                        ; preds = %do.end, %entry.do.body31_crit_edge
  %dn = getelementptr inbounds %struct.cflayer, ptr %layr, i32 0, i32 1
  %0 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dn, align 4
  %cmp32.not = icmp eq ptr %1, null
  br i1 %cmp32.not, label %do.end36, label %do.body31.do.body76_crit_edge

do.body31.do.body76_crit_edge:                    ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body76

do.end36:                                         ; preds = %do.body31
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.8) #9
  %2 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dn, align 4
  %cmp41.not = icmp eq ptr %3, null
  br i1 %cmp41.not, label %do.end59, label %do.end36.do.body76_crit_edge, !prof !42

do.end36.do.body76_crit_edge:                     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body76

do.end59:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 99, i32 noundef 9, ptr noundef null) #6
  br label %do.body76

do.body76:                                        ; preds = %do.end59, %do.end36.do.body76_crit_edge, %do.body31.do.body76_crit_edge
  %4 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dn, align 4
  %transmit = getelementptr inbounds %struct.cflayer, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %transmit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transmit, align 4
  %cmp78.not = icmp eq ptr %7, null
  br i1 %cmp78.not, label %do.end82, label %do.body76.do.end122_crit_edge

do.body76.do.end122_crit_edge:                    ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end122

do.end82:                                         ; preds = %do.body76
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #9
  %8 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dn, align 4
  %transmit87 = getelementptr inbounds %struct.cflayer, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %transmit87 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %transmit87, align 4
  %cmp88.not = icmp eq ptr %11, null
  br i1 %cmp88.not, label %do.end106, label %do.end82.do.end122_crit_edge, !prof !42

do.end82.do.end122_crit_edge:                     ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end122

do.end106:                                        ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef null) #6
  br label %do.end122

do.end122:                                        ; preds = %do.end106, %do.end82.do.end122_crit_edge, %do.body76.do.end122_crit_edge
  %supports_flowctrl = getelementptr inbounds %struct.cfsrvl, ptr %layr, i32 0, i32 4
  %12 = ptrtoint ptr %supports_flowctrl to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %supports_flowctrl, align 1, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool123.not = icmp eq i8 %13, 0
  br i1 %tobool123.not, label %do.end122.cleanup179_crit_edge, label %if.end125

do.end122.cleanup179_crit_edge:                   ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup179

if.end125:                                        ; preds = %do.end122
  %14 = zext i32 %ctrl to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %ctrl, label %if.end125.cleanup179_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb147
  ]

if.end125.cleanup179_crit_edge:                   ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup179

sw.bb:                                            ; preds = %if.end125
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flow_on) #6
  %15 = ptrtoint ptr %flow_on to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -128, ptr %flow_on, align 1
  %call126 = tail call ptr @cfpkt_create(i16 noundef zeroext 1) #6
  %tobool127.not = icmp eq ptr %call126, null
  br i1 %tobool127.not, label %sw.bb.cleanup_crit_edge, label %if.end129

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end129:                                        ; preds = %sw.bb
  %call130 = call i32 @cfpkt_add_head(ptr noundef nonnull %call126, ptr noundef nonnull %flow_on, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %cmp131 = icmp slt i32 %call130, 0
  br i1 %cmp131, label %do.end135, label %if.end138

do.end135:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #8
  %call137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.4) #9
  call void @cfpkt_destroy(ptr noundef nonnull %call126) #6
  br label %cleanup

if.end138:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #8
  %call139 = call ptr @cfpkt_info(ptr noundef nonnull %call126) #6
  %id = getelementptr inbounds %struct.cflayer, ptr %layr, i32 0, i32 7
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 4
  %conv = trunc i32 %17 to i16
  %channel_id = getelementptr inbounds %struct.caif_payload_info, ptr %call139, i32 0, i32 2
  %18 = ptrtoint ptr %channel_id to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %channel_id, align 2
  %hdr_len = getelementptr inbounds %struct.caif_payload_info, ptr %call139, i32 0, i32 1
  %19 = ptrtoint ptr %hdr_len to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %hdr_len, align 4
  %dev_info = getelementptr inbounds %struct.cfsrvl, ptr %layr, i32 0, i32 6
  %20 = ptrtoint ptr %call139 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev_info, ptr %call139, align 4
  call void @cfpkt_set_prio(ptr noundef nonnull %call126, i32 noundef 7) #6
  %21 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dn, align 4
  %transmit142 = getelementptr inbounds %struct.cflayer, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %transmit142 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %transmit142, align 4
  %call144 = call i32 %24(ptr noundef %22, ptr noundef nonnull %call126) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end138, %do.end135, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -71, %do.end135 ], [ %call144, %if.end138 ], [ -12, %sw.bb.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flow_on) #6
  br label %cleanup179

sw.bb147:                                         ; preds = %if.end125
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flow_off) #6
  %25 = ptrtoint ptr %flow_off to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -127, ptr %flow_off, align 1
  %call150 = tail call ptr @cfpkt_create(i16 noundef zeroext 1) #6
  %tobool151.not = icmp eq ptr %call150, null
  br i1 %tobool151.not, label %sw.bb147.cleanup176_crit_edge, label %if.end153

sw.bb147.cleanup176_crit_edge:                    ; preds = %sw.bb147
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup176

if.end153:                                        ; preds = %sw.bb147
  %call154 = call i32 @cfpkt_add_head(ptr noundef nonnull %call150, ptr noundef nonnull %flow_off, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %cmp155 = icmp slt i32 %call154, 0
  br i1 %cmp155, label %do.end160, label %if.end163

do.end160:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #8
  %call162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.4) #9
  call void @cfpkt_destroy(ptr noundef nonnull %call150) #6
  br label %cleanup176

if.end163:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #8
  %call164 = call ptr @cfpkt_info(ptr noundef nonnull %call150) #6
  %id166 = getelementptr inbounds %struct.cflayer, ptr %layr, i32 0, i32 7
  %26 = ptrtoint ptr %id166 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id166, align 4
  %conv167 = trunc i32 %27 to i16
  %channel_id168 = getelementptr inbounds %struct.caif_payload_info, ptr %call164, i32 0, i32 2
  %28 = ptrtoint ptr %channel_id168 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv167, ptr %channel_id168, align 2
  %hdr_len169 = getelementptr inbounds %struct.caif_payload_info, ptr %call164, i32 0, i32 1
  %29 = ptrtoint ptr %hdr_len169 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %hdr_len169, align 4
  %dev_info170 = getelementptr inbounds %struct.cfsrvl, ptr %layr, i32 0, i32 6
  %30 = ptrtoint ptr %call164 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dev_info170, ptr %call164, align 4
  call void @cfpkt_set_prio(ptr noundef nonnull %call150, i32 noundef 7) #6
  %31 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dn, align 4
  %transmit173 = getelementptr inbounds %struct.cflayer, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %transmit173 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %transmit173, align 4
  %call175 = call i32 %34(ptr noundef %32, ptr noundef nonnull %call150) #6
  br label %cleanup176

cleanup176:                                       ; preds = %if.end163, %do.end160, %sw.bb147.cleanup176_crit_edge
  %retval.1 = phi i32 [ -71, %do.end160 ], [ %call175, %if.end163 ], [ -12, %sw.bb147.cleanup176_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flow_off) #6
  br label %cleanup179

cleanup179:                                       ; preds = %cleanup176, %cleanup, %if.end125.cleanup179_crit_edge, %do.end122.cleanup179_crit_edge
  %retval.2 = phi i32 [ %retval.1, %cleanup176 ], [ %retval.0, %cleanup ], [ 0, %do.end122.cleanup179_crit_edge ], [ -22, %if.end125.cleanup179_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cfsrvl_release(ptr noundef %layer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %layer) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cfsrvl_ready(ptr nocapture noundef readonly %service, ptr nocapture noundef writeonly %err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %open = getelementptr inbounds %struct.cfsrvl, ptr %service, i32 0, i32 1
  %0 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %open, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -107, ptr %err, align 4
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %3 = xor i1 %tobool.not, true
  ret i1 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @cfsrvl_getphyid(ptr nocapture noundef readonly %layer) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.cfsrvl, ptr %layer, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %conv = trunc i32 %1 to i8
  ret i8 %conv
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cfsrvl_phyid_match(ptr nocapture noundef readonly %layer, i32 noundef %phyid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.cfsrvl, ptr %layer, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %phyid)
  %cmp = icmp eq i32 %1, %phyid
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @caif_free_client(ptr noundef readonly %adap_layer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %adap_layer, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dn = getelementptr inbounds %struct.cflayer, ptr %adap_layer, i32 0, i32 1
  %0 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dn, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %release = getelementptr inbounds %struct.cfsrvl, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release, align 4
  tail call void %3(ptr noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @caif_client_register_refcnt(ptr noundef readonly %adapt_layer, ptr noundef %hold, ptr noundef %put) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %adapt_layer, null
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %dn = getelementptr inbounds %struct.cflayer, ptr %adapt_layer, i32 0, i32 1
  %0 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dn, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.rhs.do.end_crit_edge, label %if.end22, !prof !42

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 214, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end22:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %hold25 = getelementptr inbounds %struct.cfsrvl, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %hold25 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %hold, ptr %hold25, align 4
  %put26 = getelementptr inbounds %struct.cfsrvl, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %put26 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %put, ptr %put26, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfpkt_create(i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_add_head(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfpkt_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfpkt_info(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfpkt_set_prio(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__ksymtab_caif_free_client, !1, !"__ksymtab_caif_free_client", i1 false, i1 false}
!1 = !{!"../net/caif/cfsrvl.c", i32 206, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/caif/cfsrvl.c", i32 214, i32 6}
!4 = !{ptr @__ksymtab_caif_client_register_refcnt, !5, !"__ksymtab_caif_client_register_refcnt", i1 false, i1 false}
!5 = !{!"../net/caif/cfsrvl.c", i32 220, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/caif/cfsrvl.c", i32 86, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cfservl_ctrlcmd._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @cfservl_ctrlcmd._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/caif/cfsrvl.c", i32 98, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @cfservl_modemcmd._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @cfservl_modemcmd._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @cfservl_modemcmd._entry.6, !18, !"_entry", i1 false, i1 false}
!18 = !{!"../net/caif/cfsrvl.c", i32 99, i32 2}
!19 = !{ptr @cfservl_modemcmd._entry_ptr.7, !18, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cfservl_modemcmd._entry.9, !22, !"_entry", i1 false, i1 false}
!22 = !{!"../net/caif/cfsrvl.c", i32 100, i32 2}
!23 = !{ptr @cfservl_modemcmd._entry_ptr.10, !22, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/caif/cfsrvl.c", i32 116, i32 5}
!27 = !{ptr @cfservl_modemcmd._entry.12, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @cfservl_modemcmd._entry_ptr.14, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @cfservl_modemcmd._entry.15, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../net/caif/cfsrvl.c", i32 137, i32 5}
!31 = !{ptr @cfservl_modemcmd._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i8 0, i8 2}
!42 = !{!"branch_weights", i32 1, i32 2000}
