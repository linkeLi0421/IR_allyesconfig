; ModuleID = '/llk/IR_all_yes/net/caif/cfdgml.c_pt.bc'
source_filename = "../net/caif/cfdgml.c"
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

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dgm%d\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cfdgml_receive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013caif:%s(): caif:Assert detected:'%s'\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cfdgml_receive\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/caif/cfdgml.c\00", [46 x i8] zeroinitializer }, align 32
@cfdgml_receive._entry_ptr = internal global ptr @cfdgml_receive._entry, section ".printk_index", align 4
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"layr->up != NULL\00", [47 x i8] zeroinitializer }, align 32
@cfdgml_receive._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfdgml_receive._entry_ptr.6 = internal global ptr @cfdgml_receive._entry.5, section ".printk_index", align 4
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"layr->receive != NULL\00", [42 x i8] zeroinitializer }, align 32
@cfdgml_receive._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfdgml_receive._entry_ptr.9 = internal global ptr @cfdgml_receive._entry.8, section ".printk_index", align 4
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"layr->ctrlcmd != NULL\00", [42 x i8] zeroinitializer }, align 32
@cfdgml_receive._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013caif:%s(): Packet is erroneous!\0A\00", [61 x i8] zeroinitializer }, align 32
@cfdgml_receive._entry_ptr.13 = internal global ptr @cfdgml_receive._entry.11, section ".printk_index", align 4
@cfdgml_receive._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfdgml_receive._entry_ptr.15 = internal global ptr @cfdgml_receive._entry.14, section ".printk_index", align 4
@cfdgml_receive._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016caif:%s(): Unknown datagram control %d (0x%x)\0A\00", [47 x i8] zeroinitializer }, align 32
@cfdgml_receive._entry_ptr.18 = internal global ptr @cfdgml_receive._entry.16, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 128, i64 129]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 36, i32 48 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 45, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 46, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 47, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 50, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 57, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [21 x i8] c"../net/caif/cfdgml.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 76, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @cfdgml_receive._entry, ptr @cfdgml_receive._entry.11, ptr @cfdgml_receive._entry.14, ptr @cfdgml_receive._entry.16, ptr @cfdgml_receive._entry.5, ptr @cfdgml_receive._entry.8, ptr @cfdgml_receive._entry_ptr, ptr @cfdgml_receive._entry_ptr.13, ptr @cfdgml_receive._entry_ptr.15, ptr @cfdgml_receive._entry_ptr.18, ptr @cfdgml_receive._entry_ptr.6, ptr @cfdgml_receive._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.17], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfdgml_receive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfdgml_receive._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfdgml_receive._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfdgml_receive._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfdgml_receive._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfdgml_receive._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cfdgml_create(i8 noundef zeroext %channel_id, ptr noundef %dev_info) local_unnamed_addr #0 align 64 {
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
  store ptr @cfdgml_receive, ptr %receive, align 8
  %transmit = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %transmit to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @cfdgml_transmit, ptr %transmit, align 4
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
define internal i32 @cfdgml_receive(ptr noundef %layr, ptr noundef %pkt) #0 align 64 {
entry:
  %cmd = alloca i8, align 1
  %dgmhdr = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd) #6
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %cmd, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %dgmhdr) #6
  %1 = ptrtoint ptr %dgmhdr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %dgmhdr, align 1, !annotation !37
  %2 = getelementptr inbounds [3 x i8], ptr %dgmhdr, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !37
  %4 = getelementptr inbounds [3 x i8], ptr %dgmhdr, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %4, align 1, !annotation !37
  %6 = ptrtoint ptr %layr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %layr, align 4
  %cmp.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %do.end, label %entry.do.body31_crit_edge

entry.do.body31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #10
  %8 = ptrtoint ptr %layr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %layr, align 4
  %cmp3.not = icmp eq ptr %9, null
  br i1 %cmp3.not, label %do.end15, label %do.end.do.body31_crit_edge, !prof !38

do.end.do.body31_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31

do.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 45, i32 noundef 9, ptr noundef null) #6
  br label %do.body31

do.body31:                                        ; preds = %do.end15, %do.end.do.body31_crit_edge, %entry.do.body31_crit_edge
  %receive = getelementptr inbounds %struct.cflayer, ptr %layr, i32 0, i32 3
  %10 = ptrtoint ptr %receive to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %receive, align 4
  %cmp32.not = icmp eq ptr %11, null
  br i1 %cmp32.not, label %do.end36, label %do.body31.do.body76_crit_edge

do.body31.do.body76_crit_edge:                    ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body76

do.end36:                                         ; preds = %do.body31
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.7) #10
  %12 = ptrtoint ptr %receive to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %receive, align 4
  %cmp41.not = icmp eq ptr %13, null
  br i1 %cmp41.not, label %do.end59, label %do.end36.do.body76_crit_edge, !prof !38

do.end36.do.body76_crit_edge:                     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body76

do.end59:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 46, i32 noundef 9, ptr noundef null) #6
  br label %do.body76

do.body76:                                        ; preds = %do.end59, %do.end36.do.body76_crit_edge, %do.body31.do.body76_crit_edge
  %ctrlcmd = getelementptr inbounds %struct.cflayer, ptr %layr, i32 0, i32 5
  %14 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctrlcmd, align 4
  %cmp77.not = icmp eq ptr %15, null
  br i1 %cmp77.not, label %do.end81, label %do.body76.do.end120_crit_edge

do.body76.do.end120_crit_edge:                    ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end120

do.end81:                                         ; preds = %do.body76
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10) #10
  %16 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrlcmd, align 4
  %cmp86.not = icmp eq ptr %17, null
  br i1 %cmp86.not, label %do.end104, label %do.end81.do.end120_crit_edge, !prof !38

do.end81.do.end120_crit_edge:                     ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end120

do.end104:                                        ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 47, i32 noundef 9, ptr noundef null) #6
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
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cmd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp130 = icmp sgt i8 %19, -1
  br i1 %cmp130, label %if.then132, label %if.end147

if.then132:                                       ; preds = %if.end129
  %call133 = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %dgmhdr, i16 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %do.end139, label %if.end142

do.end139:                                        ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #8
  %call141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2) #10
  call void @cfpkt_destroy(ptr noundef %pkt) #6
  br label %cleanup

if.end142:                                        ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %layr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %layr, align 4
  %receive144 = getelementptr inbounds %struct.cflayer, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %receive144 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %receive144, align 4
  %call146 = call i32 %23(ptr noundef %21, ptr noundef %pkt) #6
  br label %cleanup

if.end147:                                        ; preds = %if.end129
  %24 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i8 %19, label %sw.default [
    i8 -127, label %sw.bb
    i8 -128, label %sw.bb150
  ]

sw.bb:                                            ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctrlcmd, align 4
  call void %26(ptr noundef %layr, i32 noundef 0, i32 noundef 0) #6
  call void @cfpkt_destroy(ptr noundef %pkt) #6
  br label %cleanup

sw.bb150:                                         ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctrlcmd, align 4
  call void %28(ptr noundef %layr, i32 noundef 1, i32 noundef 0) #6
  call void @cfpkt_destroy(ptr noundef %pkt) #6
  br label %cleanup

sw.default:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #8
  call void @cfpkt_destroy(ptr noundef %pkt) #6
  %29 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %cmd, align 1
  %conv156 = zext i8 %30 to i32
  %call158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.2, i32 noundef %conv156, i32 noundef %conv156) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb150, %sw.bb, %if.end142, %do.end139, %do.end126
  %retval.0 = phi i32 [ -71, %do.end126 ], [ -71, %do.end139 ], [ %call146, %if.end142 ], [ -71, %sw.default ], [ 0, %sw.bb150 ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %dgmhdr) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cfdgml_transmit(ptr noundef %layr, ptr noundef %pkt) #0 align 64 {
entry:
  %packet_type = alloca i8, align 1
  %zero = alloca i32, align 4
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %packet_type) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zero) #6
  %0 = ptrtoint ptr %zero to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %zero, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #6
  %1 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ret, align 4, !annotation !37
  %call = call zeroext i1 @cfsrvl_ready(ptr noundef %layr, ptr noundef nonnull %ret) #6
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @cfpkt_destroy(ptr noundef %pkt) #6
  %2 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ret, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call zeroext i16 @cfpkt_getlen(ptr noundef %pkt) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 1500, i16 %call1)
  %cmp = icmp ugt i16 %call1, 1500
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @cfpkt_destroy(ptr noundef %pkt) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = call i32 @cfpkt_add_head(ptr noundef %pkt, ptr noundef nonnull %zero, i16 noundef zeroext 3) #6
  %4 = ptrtoint ptr %packet_type to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 8, ptr %packet_type, align 1
  %call6 = call i32 @cfpkt_add_head(ptr noundef %pkt, ptr noundef nonnull %packet_type, i16 noundef zeroext 1) #6
  %call7 = call ptr @cfpkt_info(ptr noundef %pkt) #6
  %id = getelementptr inbounds %struct.cflayer, ptr %layr, i32 0, i32 7
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %conv8 = trunc i32 %6 to i16
  %channel_id = getelementptr inbounds %struct.caif_payload_info, ptr %call7, i32 0, i32 2
  %7 = ptrtoint ptr %channel_id to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv8, ptr %channel_id, align 2
  %hdr_len = getelementptr inbounds %struct.caif_payload_info, ptr %call7, i32 0, i32 1
  %8 = ptrtoint ptr %hdr_len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 4, ptr %hdr_len, align 4
  %dev_info = getelementptr inbounds %struct.cfsrvl, ptr %layr, i32 0, i32 6
  %9 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev_info, ptr %call7, align 4
  %dn = getelementptr inbounds %struct.cflayer, ptr %layr, i32 0, i32 1
  %10 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dn, align 4
  %transmit = getelementptr inbounds %struct.cflayer, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %transmit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %transmit, align 4
  %call11 = call i32 %13(ptr noundef %11, ptr noundef %pkt) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  %retval.0 = phi i32 [ -90, %if.then3 ], [ %call11, %if.end4 ], [ %3, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zero) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %packet_type) #6
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
declare dso_local zeroext i16 @cfpkt_getlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_add_head(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfpkt_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/caif/cfdgml.c", i32 36, i32 48}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/caif/cfdgml.c", i32 45, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cfdgml_receive._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @cfdgml_receive._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cfdgml_receive._entry.5, !10, !"_entry", i1 false, i1 false}
!10 = !{!"../net/caif/cfdgml.c", i32 46, i32 2}
!11 = !{ptr @cfdgml_receive._entry_ptr.6, !10, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @cfdgml_receive._entry.8, !14, !"_entry", i1 false, i1 false}
!14 = !{!"../net/caif/cfdgml.c", i32 47, i32 2}
!15 = !{ptr @cfdgml_receive._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/caif/cfdgml.c", i32 50, i32 3}
!19 = !{ptr @cfdgml_receive._entry.11, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @cfdgml_receive._entry_ptr.13, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @cfdgml_receive._entry.14, !22, !"_entry", i1 false, i1 false}
!22 = !{!"../net/caif/cfdgml.c", i32 57, i32 4}
!23 = !{ptr @cfdgml_receive._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/caif/cfdgml.c", i32 76, i32 3}
!26 = !{ptr @cfdgml_receive._entry.16, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @cfdgml_receive._entry_ptr.18, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"auto-init"}
!38 = !{!"branch_weights", i32 1, i32 2000}
