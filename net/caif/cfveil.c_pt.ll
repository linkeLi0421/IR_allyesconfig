; ModuleID = '/llk/IR_all_yes/net/caif/cfveil.c_pt.bc'
source_filename = "../net/caif/cfveil.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cflayer = type { ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, [16 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.caif_payload_info = type { ptr, i16, i16 }
%struct.cfsrvl = type { %struct.cflayer, i8, i8, i8, i8, ptr, %struct.dev_info, ptr, ptr, %struct.callback_head }
%struct.dev_info = type { ptr, i32 }
%struct.callback_head = type { ptr, ptr }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vei%d\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cfvei_receive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013caif:%s(): caif:Assert detected:'%s'\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cfvei_receive\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/caif/cfveil.c\00", [46 x i8] zeroinitializer }, align 32
@cfvei_receive._entry_ptr = internal global ptr @cfvei_receive._entry, section ".printk_index", align 4
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"layr->up != NULL\00", [47 x i8] zeroinitializer }, align 32
@cfvei_receive._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfvei_receive._entry_ptr.6 = internal global ptr @cfvei_receive._entry.5, section ".printk_index", align 4
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"layr->receive != NULL\00", [42 x i8] zeroinitializer }, align 32
@cfvei_receive._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfvei_receive._entry_ptr.9 = internal global ptr @cfvei_receive._entry.8, section ".printk_index", align 4
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"layr->ctrlcmd != NULL\00", [42 x i8] zeroinitializer }, align 32
@cfvei_receive._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013caif:%s(): Packet is erroneous!\0A\00", [61 x i8] zeroinitializer }, align 32
@cfvei_receive._entry_ptr.13 = internal global ptr @cfvei_receive._entry.11, section ".printk_index", align 4
@cfvei_receive._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014caif:%s(): Unknown VEI control packet %d (0x%x)!\0A\00", [44 x i8] zeroinitializer }, align 32
@cfvei_receive._entry_ptr.16 = internal global ptr @cfvei_receive._entry.14, section ".printk_index", align 4
@cfvei_transmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.17, ptr @.str.3, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cfvei_transmit\00", [17 x i8] zeroinitializer }, align 32
@cfvei_transmit._entry_ptr = internal global ptr @cfvei_transmit._entry, section ".printk_index", align 4
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"layr->dn != NULL\00", [47 x i8] zeroinitializer }, align 32
@cfvei_transmit._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.17, ptr @.str.3, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfvei_transmit._entry_ptr.20 = internal global ptr @cfvei_transmit._entry.19, section ".printk_index", align 4
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"layr->dn->transmit != NULL\00", [37 x i8] zeroinitializer }, align 32
@cfvei_transmit._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.17, ptr @.str.3, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfvei_transmit._entry_ptr.23 = internal global ptr @cfvei_transmit._entry.22, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 128, i64 129, i64 130]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 35, i32 48 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 43, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 44, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 45, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 49, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 69, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 83, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 84, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private constant [21 x i8] c"../net/caif/cfveil.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 87, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @cfvei_receive._entry, ptr @cfvei_receive._entry.11, ptr @cfvei_receive._entry.14, ptr @cfvei_receive._entry.5, ptr @cfvei_receive._entry.8, ptr @cfvei_receive._entry_ptr, ptr @cfvei_receive._entry_ptr.13, ptr @cfvei_receive._entry_ptr.16, ptr @cfvei_receive._entry_ptr.6, ptr @cfvei_receive._entry_ptr.9, ptr @cfvei_transmit._entry, ptr @cfvei_transmit._entry.19, ptr @cfvei_transmit._entry.22, ptr @cfvei_transmit._entry_ptr, ptr @cfvei_transmit._entry_ptr.20, ptr @cfvei_transmit._entry_ptr.23, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.21], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfvei_receive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfvei_receive._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfvei_receive._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfvei_receive._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfvei_receive._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfvei_transmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfvei_transmit._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfvei_transmit._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cfvei_create(i8 noundef zeroext %channel_id, ptr noundef %dev_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 84) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @cfsrvl_init(ptr noundef nonnull %call7.i.i, i8 noundef zeroext %channel_id, ptr noundef %dev_info, i1 noundef zeroext true) #6
  %receive = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %receive to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cfvei_receive, ptr %receive, align 8
  %transmit = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %transmit to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @cfvei_transmit, ptr %transmit, align 4
  %name = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 8
  %conv = zext i8 %channel_id to i32
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfsrvl_init(ptr noundef, i8 noundef zeroext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfvei_receive(ptr noundef %layr, ptr noundef %pkt) #0 align 64 {
entry:
  %cmd = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd) #6
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %cmd, align 1, !annotation !46
  %1 = ptrtoint ptr %layr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %layr, align 4
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %do.end, label %entry.do.body31_crit_edge

entry.do.body31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #10
  %3 = ptrtoint ptr %layr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %layr, align 4
  %cmp3.not = icmp eq ptr %4, null
  br i1 %cmp3.not, label %do.end15, label %do.end.do.body31_crit_edge, !prof !47

do.end.do.body31_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31

do.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 43, i32 noundef 9, ptr noundef null) #6
  br label %do.body31

do.body31:                                        ; preds = %do.end15, %do.end.do.body31_crit_edge, %entry.do.body31_crit_edge
  %receive = getelementptr inbounds %struct.cflayer, ptr %layr, i32 0, i32 3
  %5 = ptrtoint ptr %receive to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %receive, align 4
  %cmp32.not = icmp eq ptr %6, null
  br i1 %cmp32.not, label %do.end36, label %do.body31.do.body76_crit_edge

do.body31.do.body76_crit_edge:                    ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body76

do.end36:                                         ; preds = %do.body31
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.7) #10
  %7 = ptrtoint ptr %receive to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %receive, align 4
  %cmp41.not = icmp eq ptr %8, null
  br i1 %cmp41.not, label %do.end59, label %do.end36.do.body76_crit_edge, !prof !47

do.end36.do.body76_crit_edge:                     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body76

do.end59:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 44, i32 noundef 9, ptr noundef null) #6
  br label %do.body76

do.body76:                                        ; preds = %do.end59, %do.end36.do.body76_crit_edge, %do.body31.do.body76_crit_edge
  %ctrlcmd = getelementptr inbounds %struct.cflayer, ptr %layr, i32 0, i32 5
  %9 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrlcmd, align 4
  %cmp77.not = icmp eq ptr %10, null
  br i1 %cmp77.not, label %do.end81, label %do.body76.do.end120_crit_edge

do.body76.do.end120_crit_edge:                    ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end120

do.end81:                                         ; preds = %do.body76
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10) #10
  %11 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctrlcmd, align 4
  %cmp86.not = icmp eq ptr %12, null
  br i1 %cmp86.not, label %do.end104, label %do.end81.do.end120_crit_edge, !prof !47

do.end81.do.end120_crit_edge:                     ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end120

do.end104:                                        ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 45, i32 noundef 9, ptr noundef null) #6
  br label %do.end120

do.end120:                                        ; preds = %do.end104, %do.end81.do.end120_crit_edge, %do.body76.do.end120_crit_edge
  %call121 = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %cmd, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %cmp122 = icmp slt i32 %call121, 0
  br i1 %cmp122, label %do.end126, label %if.end129

do.end126:                                        ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #8
  %call128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2) #10
  call void @cfpkt_destroy(ptr noundef %pkt) #6
  br label %cleanup

if.end129:                                        ; preds = %do.end120
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cmd, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %14, label %do.end141 [
    i8 0, label %sw.bb
    i8 -127, label %sw.bb134
    i8 -128, label %sw.bb136
    i8 -126, label %sw.bb138
  ]

sw.bb:                                            ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %layr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %layr, align 4
  %receive131 = getelementptr inbounds %struct.cflayer, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %receive131 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %receive131, align 4
  %call133 = call i32 %19(ptr noundef %17, ptr noundef %pkt) #6
  br label %cleanup

sw.bb134:                                         ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrlcmd, align 4
  call void %21(ptr noundef %layr, i32 noundef 0, i32 noundef 0) #6
  call void @cfpkt_destroy(ptr noundef %pkt) #6
  br label %cleanup

sw.bb136:                                         ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctrlcmd, align 4
  call void %23(ptr noundef %layr, i32 noundef 1, i32 noundef 0) #6
  call void @cfpkt_destroy(ptr noundef %pkt) #6
  br label %cleanup

sw.bb138:                                         ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #8
  call void @cfpkt_destroy(ptr noundef %pkt) #6
  br label %cleanup

do.end141:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %14 to i32
  %call145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, i32 noundef %conv, i32 noundef %conv) #10
  call void @cfpkt_destroy(ptr noundef %pkt) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end141, %sw.bb138, %sw.bb136, %sw.bb134, %sw.bb, %do.end126
  %retval.0 = phi i32 [ -71, %do.end126 ], [ -71, %do.end141 ], [ 0, %sw.bb138 ], [ 0, %sw.bb136 ], [ 0, %sw.bb134 ], [ %call133, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfvei_transmit(ptr noundef %layr, ptr noundef %pkt) #0 align 64 {
entry:
  %tmp = alloca i8, align 1
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %tmp, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #6
  %1 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ret, align 4, !annotation !46
  %call = call zeroext i1 @cfsrvl_ready(ptr noundef %layr, ptr noundef nonnull %ret) #6
  br i1 %call, label %do.body, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

do.body:                                          ; preds = %entry
  %dn = getelementptr inbounds %struct.cflayer, ptr %layr, i32 0, i32 1
  %2 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dn, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %do.end, label %do.body.do.body36_crit_edge

do.body.do.body36_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body36

do.end:                                           ; preds = %do.body
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #10
  %4 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dn, align 4
  %cmp7.not = icmp eq ptr %5, null
  br i1 %cmp7.not, label %do.end19, label %do.end.do.body36_crit_edge, !prof !47

do.end.do.body36_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body36

do.end19:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 83, i32 noundef 9, ptr noundef null) #6
  br label %do.body36

do.body36:                                        ; preds = %do.end19, %do.end.do.body36_crit_edge, %do.body.do.body36_crit_edge
  %6 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dn, align 4
  %transmit = getelementptr inbounds %struct.cflayer, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %transmit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transmit, align 4
  %cmp38.not = icmp eq ptr %9, null
  br i1 %cmp38.not, label %do.end42, label %do.body36.do.end82_crit_edge

do.body36.do.end82_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end82

do.end42:                                         ; preds = %do.body36
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.21) #10
  %10 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dn, align 4
  %transmit47 = getelementptr inbounds %struct.cflayer, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %transmit47 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %transmit47, align 4
  %cmp48.not = icmp eq ptr %13, null
  br i1 %cmp48.not, label %do.end66, label %do.end42.do.end82_crit_edge, !prof !47

do.end42.do.end82_crit_edge:                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end82

do.end66:                                         ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 84, i32 noundef 9, ptr noundef null) #6
  br label %do.end82

do.end82:                                         ; preds = %do.end66, %do.end42.do.end82_crit_edge, %do.body36.do.end82_crit_edge
  %call83 = call i32 @cfpkt_add_head(ptr noundef %pkt, ptr noundef nonnull %tmp, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %do.end88, label %if.end91

do.end88:                                         ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #8
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.17) #10
  %14 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -71, ptr %ret, align 4
  br label %err

if.end91:                                         ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #8
  %call92 = call ptr @cfpkt_info(ptr noundef %pkt) #6
  %id = getelementptr inbounds %struct.cflayer, ptr %layr, i32 0, i32 7
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  %conv = trunc i32 %16 to i16
  %channel_id = getelementptr inbounds %struct.caif_payload_info, ptr %call92, i32 0, i32 2
  %17 = ptrtoint ptr %channel_id to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %channel_id, align 2
  %hdr_len = getelementptr inbounds %struct.caif_payload_info, ptr %call92, i32 0, i32 1
  %18 = ptrtoint ptr %hdr_len to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %hdr_len, align 4
  %dev_info = getelementptr inbounds %struct.cfsrvl, ptr %layr, i32 0, i32 6
  %19 = ptrtoint ptr %call92 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev_info, ptr %call92, align 4
  %20 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dn, align 4
  %transmit95 = getelementptr inbounds %struct.cflayer, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %transmit95 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %transmit95, align 4
  %call97 = call i32 %23(ptr noundef %21, ptr noundef %pkt) #6
  br label %cleanup

err:                                              ; preds = %do.end88, %entry.err_crit_edge
  call void @cfpkt_destroy(ptr noundef %pkt) #6
  %24 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end91
  %retval.0 = phi i32 [ %25, %err ], [ %call97, %if.end91 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #6
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_extr_head(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfpkt_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfsrvl_ready(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_add_head(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfpkt_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/caif/cfveil.c", i32 35, i32 48}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/caif/cfveil.c", i32 43, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cfvei_receive._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @cfvei_receive._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cfvei_receive._entry.5, !10, !"_entry", i1 false, i1 false}
!10 = !{!"../net/caif/cfveil.c", i32 44, i32 2}
!11 = !{ptr @cfvei_receive._entry_ptr.6, !10, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @cfvei_receive._entry.8, !14, !"_entry", i1 false, i1 false}
!14 = !{!"../net/caif/cfveil.c", i32 45, i32 2}
!15 = !{ptr @cfvei_receive._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/caif/cfveil.c", i32 49, i32 3}
!19 = !{ptr @cfvei_receive._entry.11, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @cfvei_receive._entry_ptr.13, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/caif/cfveil.c", i32 69, i32 3}
!23 = !{ptr @cfvei_receive._entry.14, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @cfvei_receive._entry_ptr.16, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/caif/cfveil.c", i32 83, i32 2}
!27 = !{ptr @cfvei_transmit._entry, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @cfvei_transmit._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @cfvei_transmit._entry.19, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../net/caif/cfveil.c", i32 84, i32 2}
!32 = !{ptr @cfvei_transmit._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @cfvei_transmit._entry.22, !35, !"_entry", i1 false, i1 false}
!35 = !{!"../net/caif/cfveil.c", i32 87, i32 3}
!36 = !{ptr @cfvei_transmit._entry_ptr.23, !35, !"_entry_ptr", i1 false, i1 false}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"auto-init"}
!47 = !{!"branch_weights", i32 1, i32 2000}
