; ModuleID = '/llk/IR_all_yes/sound/core/seq/seq_dummy.c_pt.bc'
source_filename = "../sound/core/seq/seq_dummy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_seq_dummy_port = type { i32, i32, i32, i32 }
%struct.snd_seq_port_info = type { %struct.snd_seq_addr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, [59 x i8] }
%struct.snd_seq_addr = type { i8, i8 }
%struct.snd_seq_port_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_seq_event = type { i8, i8, i8, i8, %union.snd_seq_timestamp, %struct.snd_seq_addr, %struct.snd_seq_addr, %union.anon.68 }
%union.snd_seq_timestamp = type { %struct.snd_seq_real_time }
%struct.snd_seq_real_time = type { i32, i32 }
%union.anon.68 = type { %struct.snd_seq_ev_ctrl }
%struct.snd_seq_ev_ctrl = type { i8, i8, i8, i8, i32, i32 }

@__UNIQUE_ID_author225 = internal constant [50 x i8] c"snd_seq_dummy.author=Takashi Iwai <tiwai@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description226 = internal constant [61 x i8] c"snd_seq_dummy.description=ALSA sequencer MIDI-through client\00", section ".modinfo", align 1
@__UNIQUE_ID_file227 = internal constant [48 x i8] c"snd_seq_dummy.file=sound/core/seq/snd-seq-dummy\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [26 x i8] c"snd_seq_dummy.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias229 = internal constant [38 x i8] c"snd_seq_dummy.alias=snd-seq-client-14\00", section ".modinfo", align 1
@__param_str_ports = internal constant [20 x i8] c"snd_seq_dummy.ports\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ports = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_ports = internal constant %struct.kernel_param { ptr @__param_str_ports, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @ports } }, section "__param", align 4
@__UNIQUE_ID_portstype230 = internal constant [33 x i8] c"snd_seq_dummy.parmtype=ports:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ports231 = internal constant [55 x i8] c"snd_seq_dummy.parm=ports:number of ports to be created\00", section ".modinfo", align 1
@__param_str_duplex = internal constant [21 x i8] c"snd_seq_dummy.duplex\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@duplex = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_duplex = internal constant %struct.kernel_param { ptr @__param_str_duplex, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @duplex } }, section "__param", align 4
@__UNIQUE_ID_duplextype232 = internal constant [35 x i8] c"snd_seq_dummy.parmtype=duplex:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_duplex233 = internal constant [46 x i8] c"snd_seq_dummy.parm=duplex:create DUPLEX ports\00", section ".modinfo", align 1
@my_client = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__initcall__kmod_snd_seq_dummy__234_212_alsa_seq_dummy_init6 = internal global ptr @alsa_seq_dummy_init, section ".initcall6.init", align 4
@__exitcall_alsa_seq_dummy_exit = internal global ptr @alsa_seq_dummy_exit, section ".exitcall.exit", align 4
@register_client._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013ALSA: seq_dummy: invalid number of ports %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"register_client\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/core/seq/seq_dummy.c\00", [37 x i8] zeroinitializer }, align 32
@register_client._entry_ptr = internal global ptr @register_client._entry, section ".printk_index", align 4
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Midi Through\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Midi Through Port-%d:%c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Midi Through Port-%d\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.6 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 53, i32 12 }
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"duplex\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 54, i32 13 }
@___asan_gen_.12 = private unnamed_addr constant [10 x i8] c"my_client\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 68, i32 12 }
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 157, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 163, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 122, i32 23 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [30 x i8] c"../sound/core/seq/seq_dummy.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 125, i32 23 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_alias229, ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_description226, ptr @__UNIQUE_ID_duplex233, ptr @__UNIQUE_ID_duplextype232, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__UNIQUE_ID_ports231, ptr @__UNIQUE_ID_portstype230, ptr @__exitcall_alsa_seq_dummy_exit, ptr @__initcall__kmod_snd_seq_dummy__234_212_alsa_seq_dummy_init6, ptr @__param_duplex, ptr @__param_ports, ptr @alsa_seq_dummy_exit, ptr @delete_client, ptr @register_client._entry, ptr @register_client._entry_ptr, ptr @ports, ptr @duplex, ptr @my_client, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ports to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @duplex to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @my_client to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_client._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @delete_client() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load i32, ptr @my_client, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @snd_seq_delete_kernel_client(i32 noundef %0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_delete_kernel_client(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @alsa_seq_dummy_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load i32, ptr @my_client, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp.i = icmp sgt i32 %0, -1
  br i1 %cmp.i, label %if.then.i, label %entry.delete_client.exit_crit_edge

entry.delete_client.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %delete_client.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @snd_seq_delete_kernel_client(i32 noundef %0) #7
  br label %delete_client.exit

delete_client.exit:                               ; preds = %if.then.i, %entry.delete_client.exit_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alsa_seq_dummy_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @register_client() #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @register_client() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %0) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snd_seq_create_kernel_client(ptr noundef null, i32 noundef 14, ptr noundef nonnull @.str.3) #7
  store i32 %call1, ptr @my_client, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %1 = load i32, ptr @ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp529 = icmp sgt i32 %1, 0
  br i1 %cmp529, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.030 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call6 = tail call fastcc ptr @create_port(i32 noundef %i.030, i32 noundef 0) #10
  %cmp7 = icmp eq ptr %call6, null
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load i32, ptr @my_client, align 4
  %call9 = tail call i32 @snd_seq_delete_kernel_client(i32 noundef %2) #7
  br label %cleanup

if.end10:                                         ; preds = %for.body
  %3 = load i8, ptr @duplex, align 1, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end10.for.inc_crit_edge, label %if.then11

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then11:                                        ; preds = %if.end10
  %call12 = tail call fastcc ptr @create_port(i32 noundef %i.030, i32 noundef 1) #10
  %cmp13 = icmp eq ptr %call12, null
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %4 = load i32, ptr @my_client, align 4
  %call15 = tail call i32 @snd_seq_delete_kernel_client(i32 noundef %4) #7
  br label %cleanup

if.end16:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %port = getelementptr inbounds %struct.snd_seq_dummy_port, ptr %call12, i32 0, i32 1
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port, align 4
  %connect = getelementptr inbounds %struct.snd_seq_dummy_port, ptr %call6, i32 0, i32 3
  %7 = ptrtoint ptr %connect to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %connect, align 4
  %port17 = getelementptr inbounds %struct.snd_seq_dummy_port, ptr %call6, i32 0, i32 1
  %8 = ptrtoint ptr %port17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port17, align 4
  %connect18 = getelementptr inbounds %struct.snd_seq_dummy_port, ptr %call12, i32 0, i32 3
  %10 = ptrtoint ptr %connect18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %connect18, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %if.end10.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.030, 1
  %11 = load i32, ptr @ports, align 4
  %cmp5 = icmp slt i32 %inc, %11
  br i1 %cmp5, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then14, %if.then8, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %if.then8 ], [ -12, %if.then14 ], [ %call1, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_create_kernel_client(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @create_port(i32 noundef %idx, i32 noundef %type) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %pinfo = alloca %struct.snd_seq_port_info, align 4
  %pcb = alloca %struct.snd_seq_port_callback, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 164, ptr nonnull %pinfo) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pcb) #7
  %0 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %pcb, i32 0, i32 1
  %1 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %pcb, i32 0, i32 6
  %2 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %pcb, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 16) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr @my_client, align 4
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %call7.i.i, align 8
  %6 = load i8, ptr @duplex, align 1, !range !52
  %7 = zext i8 %6 to i32
  %duplex = getelementptr inbounds %struct.snd_seq_dummy_port, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %duplex, align 8
  %connect = getelementptr inbounds %struct.snd_seq_dummy_port, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %connect to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %connect, align 4
  %10 = call ptr @memset(ptr %pinfo, i32 0, i32 164)
  %conv2 = trunc i32 %4 to i8
  %11 = ptrtoint ptr %pinfo to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv2, ptr %pinfo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  %name8 = getelementptr inbounds %struct.snd_seq_port_info, ptr %pinfo, i32 0, i32 1
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %tobool6.not = icmp eq i32 %type, 0
  %cond = select i1 %tobool6.not, i32 65, i32 66
  %call7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name8, ptr noundef nonnull @.str.4, i32 noundef %idx, i32 noundef %cond)
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name8, ptr noundef nonnull @.str.5, i32 noundef %idx)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then5
  %capability = getelementptr inbounds %struct.snd_seq_port_info, ptr %pinfo, i32 0, i32 2
  %12 = load i8, ptr @duplex, align 1, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool13.not = icmp eq i8 %12, 0
  %spec.store.select = select i1 %tobool13.not, i32 99, i32 115
  %13 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.store.select, ptr %capability, align 4
  %type18 = getelementptr inbounds %struct.snd_seq_port_info, ptr %pinfo, i32 0, i32 3
  %14 = ptrtoint ptr %type18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 655362, ptr %type18, align 4
  %15 = call ptr @memset(ptr %pcb, i32 0, i32 24)
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @dummy_input, ptr %1, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @dummy_free, ptr %2, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %0, align 4
  %kernel = getelementptr inbounds %struct.snd_seq_port_info, ptr %pinfo, i32 0, i32 9
  %19 = ptrtoint ptr %kernel to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pcb, ptr %kernel, align 4
  %20 = load i32, ptr @my_client, align 4
  %call19 = call i32 @snd_seq_kernel_client_ctl(i32 noundef %20, i32 noundef -1062972640, ptr noundef nonnull %pinfo) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end22:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %port = getelementptr inbounds %struct.snd_seq_addr, ptr %pinfo, i32 0, i32 1
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %port, align 1
  %conv24 = zext i8 %22 to i32
  %port25 = getelementptr inbounds %struct.snd_seq_dummy_port, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %port25 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv24, ptr %port25, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then21, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then21 ], [ %call7.i.i, %if.end22 ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pcb) #7
  call void @llvm.lifetime.end.p0(i64 164, ptr nonnull %pinfo) #7
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_input(ptr nocapture noundef readonly %ev, i32 noundef %direct, ptr nocapture noundef readonly %private_data, i32 noundef %atomic, i32 noundef %hop) #5 align 64 {
entry:
  %tmpev = alloca %struct.snd_seq_event, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tmpev) #7
  %0 = getelementptr inbounds %struct.snd_seq_event, ptr %tmpev, i32 0, i32 5, i32 1
  %1 = getelementptr inbounds %struct.snd_seq_event, ptr %tmpev, i32 0, i32 6
  %source = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 5
  %2 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %source, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %ev to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -106, i8 %5)
  %cmp3 = icmp eq i8 %5, -106
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %6 = call ptr @memcpy(ptr %tmpev, ptr %ev, i32 28)
  %duplex = getelementptr inbounds %struct.snd_seq_dummy_port, ptr %private_data, i32 0, i32 2
  %7 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %port8 = getelementptr inbounds %struct.snd_seq_dummy_port, ptr %private_data, i32 0, i32 1
  %connect = getelementptr inbounds %struct.snd_seq_dummy_port, ptr %private_data, i32 0, i32 3
  %storemerge.in.in = select i1 %tobool.not, ptr %port8, ptr %connect
  %9 = ptrtoint ptr %storemerge.in.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %storemerge.in = load i32, ptr %storemerge.in.in, align 4
  %storemerge = trunc i32 %storemerge.in to i8
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %storemerge, ptr %0, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -2, ptr %1, align 2
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %private_data, align 4
  %call = call i32 @snd_seq_kernel_client_dispatch(i32 noundef %13, ptr noundef nonnull %tmpev, i32 noundef %atomic, i32 noundef %hop) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tmpev) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dummy_free(ptr noundef %private_data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %private_data) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_kernel_client_ctl(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_kernel_client_dispatch(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !17, !19, !21, !23, !25, !26, !28, !29, !31, !33, !34, !35, !36, !37, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__UNIQUE_ID_author225, !1, !"__UNIQUE_ID_author225", i1 false, i1 false}
!1 = !{!"../sound/core/seq/seq_dummy.c", i32 48, i32 1}
!2 = !{ptr @__UNIQUE_ID_description226, !3, !"__UNIQUE_ID_description226", i1 false, i1 false}
!3 = !{!"../sound/core/seq/seq_dummy.c", i32 49, i32 1}
!4 = !{ptr @__UNIQUE_ID_file227, !5, !"__UNIQUE_ID_file227", i1 false, i1 false}
!5 = !{!"../sound/core/seq/seq_dummy.c", i32 50, i32 1}
!6 = !{ptr @__UNIQUE_ID_license228, !5, !"__UNIQUE_ID_license228", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias229, !8, !"__UNIQUE_ID_alias229", i1 false, i1 false}
!8 = !{!"../sound/core/seq/seq_dummy.c", i32 51, i32 1}
!9 = !{ptr @__param_ports, !10, !"__param_ports", i1 false, i1 false}
!10 = !{!"../sound/core/seq/seq_dummy.c", i32 56, i32 1}
!11 = !{ptr @__UNIQUE_ID_portstype230, !10, !"__UNIQUE_ID_portstype230", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_ports231, !13, !"__UNIQUE_ID_ports231", i1 false, i1 false}
!13 = !{!"../sound/core/seq/seq_dummy.c", i32 57, i32 1}
!14 = !{ptr @__param_duplex, !15, !"__param_duplex", i1 false, i1 false}
!15 = !{!"../sound/core/seq/seq_dummy.c", i32 58, i32 1}
!16 = !{ptr @__UNIQUE_ID_duplextype232, !15, !"__UNIQUE_ID_duplextype232", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_duplex233, !18, !"__UNIQUE_ID_duplex233", i1 false, i1 false}
!18 = !{!"../sound/core/seq/seq_dummy.c", i32 59, i32 1}
!19 = !{ptr @__initcall__kmod_snd_seq_dummy__234_212_alsa_seq_dummy_init6, !20, !"__initcall__kmod_snd_seq_dummy__234_212_alsa_seq_dummy_init6", i1 false, i1 false}
!20 = !{!"../sound/core/seq/seq_dummy.c", i32 212, i32 1}
!21 = !{ptr @__exitcall_alsa_seq_dummy_exit, !22, !"__exitcall_alsa_seq_dummy_exit", i1 false, i1 false}
!22 = !{!"../sound/core/seq/seq_dummy.c", i32 213, i32 1}
!23 = !{ptr @duplex, !24, !"duplex", i1 false, i1 false}
!24 = !{!"../sound/core/seq/seq_dummy.c", i32 54, i32 13}
!25 = !{ptr @__param_str_ports, !10, !"__param_str_ports", i1 false, i1 false}
!26 = !{ptr @ports, !27, !"ports", i1 false, i1 false}
!27 = !{!"../sound/core/seq/seq_dummy.c", i32 53, i32 12}
!28 = !{ptr @__param_str_duplex, !15, !"__param_str_duplex", i1 false, i1 false}
!29 = !{ptr @my_client, !30, !"my_client", i1 false, i1 false}
!30 = !{!"../sound/core/seq/seq_dummy.c", i32 68, i32 12}
!31 = !{ptr @.str, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/core/seq/seq_dummy.c", i32 157, i32 3}
!33 = !{ptr @.str.1, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @register_client._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @register_client._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.3, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/core/seq/seq_dummy.c", i32 163, i32 8}
!39 = !{ptr @.str.4, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/core/seq/seq_dummy.c", i32 122, i32 23}
!41 = !{ptr @.str.5, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/core/seq/seq_dummy.c", i32 125, i32 23}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i8 0, i8 2}
