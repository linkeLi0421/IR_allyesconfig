; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intersil/orinoco/hermes_dld.c_pt.bc'
source_filename = "../drivers/net/wireless/intersil/orinoco/hermes_dld.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.anon.4 = type { i16, i16, [10 x i8] }
%struct.anon.5 = type { i16, i16, [4 x i8] }
%struct.anon.6 = type { i16, i16, [10 x i8] }
%struct.anon.7 = type { i16, i16, [2 x i8] }
%struct.anon.8 = type { i16, i16, [28 x i8] }
%struct.anon.9 = type { i16, i16, [256 x i8] }
%struct.hermes = type { ptr, i32, i16, i8, ptr, ptr }
%struct.pdi = type { i16, i16, [0 x i8] }
%struct.pdr = type { i32, i32, i32, [0 x i8] }
%struct.hermes_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dblock = type <{ i32, i16, [0 x i8] }>

@hermes_program.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"orinoco\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hermes_program\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/wireless/intersil/orinoco/hermes_dld.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"hermes_dld: Programming block of length %d to address 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@hermes_apply_pda_with_defaults.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"hermes_apply_pda_with_defaults\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"hermes_dld: Found record 0x%04x at %p\0A\00", [57 x i8] zeroinitializer }, align 32
@hermes_apply_pda_with_defaults.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"hermes_dld: Using outdoor record 0x%04x at %p\0A\00", [49 x i8] zeroinitializer }, align 32
@default_pdr_data_0x0005 = internal constant { %struct.anon.4, [18 x i8] } { %struct.anon.4 { i16 1536, i16 1280, [10 x i8] c"\00\00\06\00\01\00\01\00\01\00" }, [18 x i8] zeroinitializer }, align 32
@default_pdr_data_0x0108 = internal constant { %struct.anon.5, [24 x i8] } { %struct.anon.5 { i16 768, i16 2049, [4 x i8] zeroinitializer }, [24 x i8] zeroinitializer }, align 32
@default_pdr_data_0x0109 = internal constant { %struct.anon.6, [18 x i8] } { %struct.anon.6 { i16 1536, i16 2305, [10 x i8] c"\00\00\00\00\03\00\00\00\00\00" }, [18 x i8] zeroinitializer }, align 32
@default_pdr_data_0x0150 = internal constant { %struct.anon.7, [26 x i8] } { %struct.anon.7 { i16 512, i16 20481, [2 x i8] c"\00?" }, [26 x i8] zeroinitializer }, align 32
@default_pdr_data_0x0160 = internal constant { %struct.anon.8, [32 x i8] } { %struct.anon.8 { i16 3840, i16 24577, [28 x i8] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@default_pdr_data_0x0161 = internal constant { %struct.anon.9, [92 x i8] } { %struct.anon.9 { i16 -32512, i16 24833, [256 x i8] c"?\01?\01?\01?\01?\01?\01?\01?\01?\01?\01?\01?\01?\01?\01?\01?\01?\01>\01>\01=\01=\01<\01<\01;\01;\01:\01:\019\019\018\018\017\017\016\016\015\015\014\014\013\013\012\012\011\011\010\010\01{\01{\01z\01z\01y\01y\01x\01x\01w\01w\01v\01v\01u\01u\01t\01t\01s\01s\01r\01r\01q\01q\01p\01p\01h\01h\01g\01g\01f\01f\01e\01e\01W\01W\01V\01V\01U\01U\01T\01T\01S\01S\01R\01R\01Q\01Q\01P\01P\01H\01H\01G\01G\01F\01F\01E\01E\01D\01D\01C\01C\01B\01B\01A\01A\01@\01@\01@\01@\01@\01@\01@\01@\01@\01@\01@\01@\01@\01@\01@\01@\01@\01" }, [92 x i8] zeroinitializer }, align 32
@hermes_apply_pda_with_defaults.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.7, i8 0, i8 115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"hermes_dld: Using default record 0x%04x at %p\0A\00", [49 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 5, i64 264, i64 265, i64 272, i64 288, i64 336, i64 352, i64 353]
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 294, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 419, i32 4 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 430, i32 5 }
@___asan_gen_.29 = private unnamed_addr constant [24 x i8] c"default_pdr_data_0x0005\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 330, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [24 x i8] c"default_pdr_data_0x0108\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 333, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant [24 x i8] c"default_pdr_data_0x0109\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 336, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant [24 x i8] c"default_pdr_data_0x0150\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 339, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant [24 x i8] c"default_pdr_data_0x0160\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 342, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant [24 x i8] c"default_pdr_data_0x0161\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 349, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [54 x i8] c"../drivers/net/wireless/intersil/orinoco/hermes_dld.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 460, i32 4 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @default_pdr_data_0x0005, ptr @default_pdr_data_0x0108, ptr @default_pdr_data_0x0109, ptr @default_pdr_data_0x0150, ptr @default_pdr_data_0x0160, ptr @default_pdr_data_0x0161, ptr @.str.7], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_pdr_data_0x0005 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_pdr_data_0x0108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_pdr_data_0x0109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_pdr_data_0x0150 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_pdr_data_0x0160 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_pdr_data_0x0161 to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hermes_apply_pda(ptr noundef %hw, ptr noundef readonly %first_pdr, ptr noundef readnone %pdr_end, ptr noundef %pda, ptr noundef readnone %pda_end) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pda_end, i32 -4
  %add.ptr1 = getelementptr i16, ptr %pda, i32 2
  %cmp.not17 = icmp ugt ptr %add.ptr1, %add.ptr
  br i1 %cmp.not17, label %entry.cleanup_crit_edge, label %land.rhs.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %pdr_end, i32 -12
  %cmp.not14.i.i = icmp ult ptr %add.ptr.i.i, %first_pdr
  %ops.i = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 4
  br label %land.rhs

land.rhs:                                         ; preds = %if.end.land.rhs_crit_edge, %land.rhs.lr.ph
  %pdi.018 = phi ptr [ %add.ptr1, %land.rhs.lr.ph ], [ %arrayidx, %if.end.land.rhs_crit_edge ]
  %id.i = getelementptr inbounds %struct.pdi, ptr %pdi.018, i32 0, i32 1
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %id.i, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #4
  %conv.i = zext i16 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp2.not = icmp eq i16 %1, 0
  br i1 %cmp2.not, label %land.rhs.cleanup_crit_edge, label %while.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  br i1 %cmp.not14.i.i, label %while.body.if.end_crit_edge, label %while.body.land.rhs.i.i_crit_edge

while.body.land.rhs.i.i_crit_edge:                ; preds = %while.body
  br label %land.rhs.i.i

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs.i.i:                                     ; preds = %if.end7.i.i.land.rhs.i.i_crit_edge, %while.body.land.rhs.i.i_crit_edge
  %pdr.015.i.i = phi ptr [ %next.i.i, %if.end7.i.i.land.rhs.i.i_crit_edge ], [ %first_pdr, %while.body.land.rhs.i.i_crit_edge ]
  %3 = ptrtoint ptr %pdr.015.i.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %pdr.015.i.i, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1.not.i.i = icmp eq i32 %4, 0
  br i1 %cmp1.not.i.i, label %land.rhs.i.i.if.end_crit_edge, label %while.body.i.i

land.rhs.i.i.if.end_crit_edge:                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %len.i.i.i = getelementptr inbounds %struct.pdr, ptr %pdr.015.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %len.i.i.i, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp3.i.i = icmp ult i32 %8, 2
  br i1 %cmp3.i.i, label %while.body.i.i.if.end_crit_edge, label %if.end.i.i

while.body.i.i.if.end_crit_edge:                  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i)
  %cmp5.i.i = icmp eq i32 %5, %conv.i
  br i1 %cmp5.i.i, label %hermes_find_pdr.exit.i, label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %next.i.i = getelementptr inbounds %struct.pdr, ptr %pdr.015.i.i, i32 0, i32 3
  %cmp.not.i.i = icmp ugt ptr %next.i.i, %add.ptr.i.i
  br i1 %cmp.not.i.i, label %if.end7.i.i.if.end_crit_edge, label %if.end7.i.i.land.rhs.i.i_crit_edge

if.end7.i.i.land.rhs.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i.i

if.end7.i.i.if.end_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

hermes_find_pdr.exit.i:                           ; preds = %if.end.i.i
  %tobool.not.i = icmp eq ptr %pdr.015.i.i, null
  br i1 %tobool.not.i, label %hermes_find_pdr.exit.i.if.end_crit_edge, label %if.end.i

hermes_find_pdr.exit.i.if.end_crit_edge:          ; preds = %hermes_find_pdr.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %hermes_find_pdr.exit.i
  %9 = ptrtoint ptr %pdi.018 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %pdi.018, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #4
  %conv.i15.i = zext i16 %11 to i32
  %sub.i.i = shl nuw nsw i32 %conv.i15.i, 1
  %mul.i.i = add nsw i32 %sub.i.i, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %8)
  %cmp.not.i = icmp eq i32 %mul.i.i, %8
  br i1 %cmp.not.i, label %if.end5.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %program.i = getelementptr inbounds %struct.hermes_ops, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %program.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %program.i, align 4
  %data.i = getelementptr inbounds %struct.pdi, ptr %pdi.018, i32 0, i32 2
  %addr.i.i = getelementptr inbounds %struct.pdr, ptr %pdr.015.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %addr.i.i, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #4
  %call8.i = tail call i32 %15(ptr noundef %hw, ptr noundef %data.i, i32 noundef %18, i32 noundef %8) #4
  br label %if.end

if.end:                                           ; preds = %if.end5.i, %hermes_find_pdr.exit.i.if.end_crit_edge, %if.end7.i.i.if.end_crit_edge, %while.body.i.i.if.end_crit_edge, %land.rhs.i.i.if.end_crit_edge, %while.body.if.end_crit_edge
  %19 = ptrtoint ptr %pdi.018 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %pdi.018, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #4
  %conv.i13 = zext i16 %21 to i32
  %sub.i = shl nuw nsw i32 %conv.i13, 1
  %mul.i = add nsw i32 %sub.i, -2
  %arrayidx = getelementptr %struct.pdi, ptr %pdi.018, i32 0, i32 2, i32 %mul.i
  %cmp.not = icmp ugt ptr %arrayidx, %add.ptr
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hermes_blocks_length(ptr noundef readonly %first_block, ptr noundef readnone %end) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %end, i32 -6
  %cmp.not10 = icmp ult ptr %add.ptr, %first_block
  br i1 %cmp.not10, label %entry.while.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %total_len.012 = phi i32 [ %add3, %while.body.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %blk.011 = phi ptr [ %arrayidx, %while.body.land.rhs_crit_edge ], [ %first_block, %entry.land.rhs_crit_edge ]
  %0 = ptrtoint ptr %blk.011 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %blk.011, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp1.not = icmp eq i32 %1, -1
  br i1 %cmp1.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %len.i = getelementptr inbounds %struct.dblock, ptr %blk.011, i32 0, i32 1
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %len.i, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #4
  %conv.i = zext i16 %4 to i32
  %add = add i32 %total_len.012, 6
  %add3 = add i32 %add, %conv.i
  %arrayidx = getelementptr %struct.dblock, ptr %blk.011, i32 0, i32 2, i32 %conv.i
  %cmp.not = icmp ugt ptr %arrayidx, %add.ptr
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %total_len.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %add3, %while.body.while.end_crit_edge ], [ %total_len.012, %land.rhs.while.end_crit_edge ]
  ret i32 %total_len.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hermes_program(ptr noundef %hw, ptr noundef %first_block, ptr noundef readnone %end) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %end, i32 -6
  %cmp = icmp ult ptr %add.ptr, %first_block
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %first_block to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %first_block, align 1
  %len.i = getelementptr inbounds %struct.dblock, ptr %first_block, i32 0, i32 1
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %len.i, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #4
  %blklen.044 = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp2.not45 = icmp eq i32 %1, -1
  %add.ptr346 = getelementptr i8, ptr %first_block, i32 %blklen.044
  %cmp4.not47 = icmp ugt ptr %add.ptr346, %end
  %or.cond48 = select i1 %cmp2.not45, i1 true, i1 %cmp4.not47
  br i1 %or.cond48, label %if.end.cleanup_crit_edge, label %do.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body.lr.ph:                                    ; preds = %if.end
  %5 = tail call i32 @llvm.bswap.i32(i32 %1) #4
  %ops = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %if.end18.do.body_crit_edge, %do.body.lr.ph
  %blklen.052 = phi i32 [ %blklen.044, %do.body.lr.ph ], [ %blklen.0, %if.end18.do.body_crit_edge ]
  %blk.051 = phi ptr [ %first_block, %do.body.lr.ph ], [ %arrayidx, %if.end18.do.body_crit_edge ]
  %blkaddr.049 = phi i32 [ %5, %do.body.lr.ph ], [ %12, %if.end18.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hermes_program.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hermes_program, %if.then8)) #4
          to label %do.end [label %if.then8], !srcloc !37

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hermes_program.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.3, i32 noundef %blklen.052, i32 noundef %blkaddr.049) #4
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %program = getelementptr inbounds %struct.hermes_ops, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %program to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %program, align 4
  %data = getelementptr inbounds %struct.dblock, ptr %blk.051, i32 0, i32 2
  %call10 = tail call i32 %9(ptr noundef %hw, ptr noundef %data, i32 noundef %blkaddr.049, i32 noundef %blklen.052) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %arrayidx = getelementptr %struct.dblock, ptr %blk.051, i32 0, i32 2, i32 %blklen.052
  %cmp16 = icmp ugt ptr %arrayidx, %add.ptr
  br i1 %cmp16, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %arrayidx, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #4
  %len.i41 = getelementptr inbounds %struct.dblock, ptr %arrayidx, i32 0, i32 1
  %13 = ptrtoint ptr %len.i41 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %len.i41, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #4
  %blklen.0 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp2.not = icmp eq i32 %11, -1
  %add.ptr3 = getelementptr i8, ptr %arrayidx, i32 %blklen.0
  %cmp4.not = icmp ugt ptr %add.ptr3, %end
  %or.cond = select i1 %cmp2.not, i1 true, i1 %cmp4.not
  br i1 %or.cond, label %if.end18.cleanup_crit_edge, label %if.end18.do.body_crit_edge

if.end18.do.body_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -5, %if.end13.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ %call10, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hermes_apply_pda_with_defaults(ptr noundef %hw, ptr noundef readonly %first_pdr, ptr noundef readnone %pdr_end, ptr noundef %pda, ptr noundef readnone %pda_end) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i16, ptr %pda, i32 2
  %add.ptr = getelementptr i8, ptr %pdr_end, i32 -12
  %cmp.not164 = icmp ult ptr %add.ptr, %first_pdr
  br i1 %cmp.not164, label %entry.while.end_crit_edge, label %land.rhs.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %pda_end, i32 -4
  %cmp.not14.i = icmp ult ptr %add.ptr.i, %arrayidx
  %ops = getelementptr inbounds %struct.hermes, ptr %hw, i32 0, i32 4
  br label %land.rhs

land.rhs:                                         ; preds = %if.end77.land.rhs_crit_edge, %land.rhs.lr.ph
  %pdr.0165 = phi ptr [ %first_pdr, %land.rhs.lr.ph ], [ %incdec.ptr, %if.end77.land.rhs_crit_edge ]
  %0 = ptrtoint ptr %pdr.0165 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %pdr.0165, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.not = icmp eq i32 %1, 0
  br i1 %cmp1.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %len.i = getelementptr inbounds %struct.pdr, ptr %pdr.0165, i32 0, i32 2
  %3 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %len.i, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp3 = icmp ult i32 %5, 2
  br i1 %cmp3, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end:                                           ; preds = %while.body
  br i1 %cmp.not14.i, label %if.end.if.end13_crit_edge, label %if.end.land.rhs.i_crit_edge

if.end.land.rhs.i_crit_edge:                      ; preds = %if.end
  br label %land.rhs.i

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

land.rhs.i:                                       ; preds = %if.end.i.land.rhs.i_crit_edge, %if.end.land.rhs.i_crit_edge
  %pdi.015.i = phi ptr [ %arrayidx.i, %if.end.i.land.rhs.i_crit_edge ], [ %arrayidx, %if.end.land.rhs.i_crit_edge ]
  %id.i.i = getelementptr inbounds %struct.pdi, ptr %pdi.015.i, i32 0, i32 1
  %6 = ptrtoint ptr %id.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %id.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp1.not.i = icmp eq i16 %7, 0
  br i1 %cmp1.not.i, label %land.rhs.i.if.end13_crit_edge, label %while.body.i

land.rhs.i.if.end13_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

while.body.i:                                     ; preds = %land.rhs.i
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #4
  %conv.i.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv.i.i)
  %cmp3.i = icmp eq i32 %2, %conv.i.i
  br i1 %cmp3.i, label %hermes_find_pdi.exit, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %9 = ptrtoint ptr %pdi.015.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %pdi.015.i, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #4
  %conv.i13.i = zext i16 %11 to i32
  %sub.i.i = shl nuw nsw i32 %conv.i13.i, 1
  %mul.i.i = add nsw i32 %sub.i.i, -2
  %arrayidx.i = getelementptr %struct.pdi, ptr %pdi.015.i, i32 0, i32 2, i32 %mul.i.i
  %cmp.not.i = icmp ugt ptr %arrayidx.i, %add.ptr.i
  br i1 %cmp.not.i, label %if.end.i.if.end13_crit_edge, label %if.end.i.land.rhs.i_crit_edge

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i

if.end.i.if.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

hermes_find_pdi.exit:                             ; preds = %while.body.i
  %tobool.not = icmp eq ptr %pdi.015.i, null
  br i1 %tobool.not, label %hermes_find_pdi.exit.if.end13_crit_edge, label %do.body

hermes_find_pdi.exit.if.end13_crit_edge:          ; preds = %hermes_find_pdi.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

do.body:                                          ; preds = %hermes_find_pdi.exit
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hermes_apply_pda_with_defaults.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hermes_apply_pda_with_defaults, %if.then11)) #4
          to label %if.end13 [label %if.then11], !srcloc !37

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hermes_apply_pda_with_defaults.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.5, i32 noundef %2, ptr noundef nonnull %pdi.015.i) #4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.body, %hermes_find_pdi.exit.if.end13_crit_edge, %if.end.i.if.end13_crit_edge, %land.rhs.i.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %retval.0.i112139 = phi ptr [ %pdi.015.i, %if.then11 ], [ null, %hermes_find_pdi.exit.if.end13_crit_edge ], [ %pdi.015.i, %do.body ], [ null, %if.end.if.end13_crit_edge ], [ null, %land.rhs.i.if.end13_crit_edge ], [ null, %if.end.i.if.end13_crit_edge ]
  %12 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %if.end13.sw.epilog.thread_crit_edge [
    i32 272, label %if.end13.sw.bb_crit_edge
    i32 288, label %if.end13.sw.bb_crit_edge179
    i32 5, label %if.end13.sw.epilog_crit_edge
    i32 264, label %sw.bb36
    i32 265, label %sw.bb37
    i32 336, label %sw.bb38
    i32 352, label %sw.bb39
    i32 353, label %sw.bb40
  ]

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end13.sw.bb_crit_edge179:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end13.sw.bb_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end13.sw.epilog.thread_crit_edge:              ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.thread

sw.bb:                                            ; preds = %if.end13.sw.bb_crit_edge, %if.end13.sw.bb_crit_edge179
  %add = add nuw nsw i32 %2, 1
  br i1 %cmp.not14.i, label %sw.bb.sw.epilog.thread_crit_edge, label %sw.bb.land.rhs.i118_crit_edge

sw.bb.land.rhs.i118_crit_edge:                    ; preds = %sw.bb
  br label %land.rhs.i118

sw.bb.sw.epilog.thread_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.thread

land.rhs.i118:                                    ; preds = %if.end.i127.land.rhs.i118_crit_edge, %sw.bb.land.rhs.i118_crit_edge
  %pdi.015.i115 = phi ptr [ %arrayidx.i125, %if.end.i127.land.rhs.i118_crit_edge ], [ %arrayidx, %sw.bb.land.rhs.i118_crit_edge ]
  %id.i.i116 = getelementptr inbounds %struct.pdi, ptr %pdi.015.i115, i32 0, i32 1
  %13 = ptrtoint ptr %id.i.i116 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %id.i.i116, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp1.not.i117 = icmp eq i16 %14, 0
  br i1 %cmp1.not.i117, label %land.rhs.i118.sw.epilog.thread_crit_edge, label %while.body.i121

land.rhs.i118.sw.epilog.thread_crit_edge:         ; preds = %land.rhs.i118
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.thread

while.body.i121:                                  ; preds = %land.rhs.i118
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #4
  %conv.i.i119 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv.i.i119)
  %cmp3.i120 = icmp eq i32 %add, %conv.i.i119
  br i1 %cmp3.i120, label %hermes_find_pdi.exit129, label %if.end.i127

if.end.i127:                                      ; preds = %while.body.i121
  %16 = ptrtoint ptr %pdi.015.i115 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %pdi.015.i115, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #4
  %conv.i13.i122 = zext i16 %18 to i32
  %sub.i.i123 = shl nuw nsw i32 %conv.i13.i122, 1
  %mul.i.i124 = add nsw i32 %sub.i.i123, -2
  %arrayidx.i125 = getelementptr %struct.pdi, ptr %pdi.015.i115, i32 0, i32 2, i32 %mul.i.i124
  %cmp.not.i126 = icmp ugt ptr %arrayidx.i125, %add.ptr.i
  br i1 %cmp.not.i126, label %if.end.i127.sw.epilog.thread_crit_edge, label %if.end.i127.land.rhs.i118_crit_edge

if.end.i127.land.rhs.i118_crit_edge:              ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs.i118

if.end.i127.sw.epilog.thread_crit_edge:           ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.thread

hermes_find_pdi.exit129:                          ; preds = %while.body.i121
  %tobool15.not = icmp eq ptr %pdi.015.i115, null
  br i1 %tobool15.not, label %hermes_find_pdi.exit129.sw.epilog.thread_crit_edge, label %if.then16

hermes_find_pdi.exit129.sw.epilog.thread_crit_edge: ; preds = %hermes_find_pdi.exit129
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.thread

if.then16:                                        ; preds = %hermes_find_pdi.exit129
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hermes_apply_pda_with_defaults.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hermes_apply_pda_with_defaults, %if.end60.thread158)) #4
          to label %sw.epilog [label %if.end60.thread158], !srcloc !37

if.end60.thread158:                               ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hermes_apply_pda_with_defaults.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.6, i32 noundef %add, ptr noundef nonnull %pdi.015.i115) #4
  br label %if.then62

sw.bb36:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %hermes_find_pdi.exit129.sw.epilog.thread_crit_edge, %if.end.i127.sw.epilog.thread_crit_edge, %land.rhs.i118.sw.epilog.thread_crit_edge, %sw.bb.sw.epilog.thread_crit_edge, %if.end13.sw.epilog.thread_crit_edge
  %tobool41.not147.not = icmp eq ptr %retval.0.i112139, null
  br i1 %tobool41.not147.not, label %sw.epilog.thread.if.end77_crit_edge, label %sw.epilog.thread.if.then62_crit_edge

sw.epilog.thread.if.then62_crit_edge:             ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then62

sw.epilog.thread.if.end77_crit_edge:              ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77

sw.epilog:                                        ; preds = %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %if.then16, %if.end13.sw.epilog_crit_edge
  %tobool42.not = phi i1 [ false, %sw.bb40 ], [ false, %sw.bb39 ], [ false, %sw.bb38 ], [ false, %sw.bb37 ], [ false, %sw.bb36 ], [ false, %if.end13.sw.epilog_crit_edge ], [ true, %if.then16 ]
  %default_pdi.0 = phi ptr [ @default_pdr_data_0x0161, %sw.bb40 ], [ @default_pdr_data_0x0160, %sw.bb39 ], [ @default_pdr_data_0x0150, %sw.bb38 ], [ @default_pdr_data_0x0109, %sw.bb37 ], [ @default_pdr_data_0x0108, %sw.bb36 ], [ @default_pdr_data_0x0005, %if.end13.sw.epilog_crit_edge ], [ null, %if.then16 ]
  %pdi.0 = phi ptr [ %retval.0.i112139, %sw.bb40 ], [ %retval.0.i112139, %sw.bb39 ], [ %retval.0.i112139, %sw.bb38 ], [ %retval.0.i112139, %sw.bb37 ], [ %retval.0.i112139, %sw.bb36 ], [ %retval.0.i112139, %if.end13.sw.epilog_crit_edge ], [ %pdi.015.i115, %if.then16 ]
  %tobool41.not = icmp ne ptr %pdi.0, null
  %brmerge = or i1 %tobool42.not, %tobool41.not
  br i1 %brmerge, label %sw.epilog.if.end60_crit_edge, label %if.then43

sw.epilog.if.end60_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.then43:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hermes_apply_pda_with_defaults.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hermes_apply_pda_with_defaults, %if.then56)) #4
          to label %if.end60 [label %if.then56], !srcloc !37

if.then56:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hermes_apply_pda_with_defaults.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.7, i32 noundef %2, ptr noundef %default_pdi.0) #4
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %if.then43, %sw.epilog.if.end60_crit_edge
  %pdi.1 = phi ptr [ %pdi.0, %sw.epilog.if.end60_crit_edge ], [ %default_pdi.0, %if.then56 ], [ %default_pdi.0, %if.then43 ]
  %tobool61.not = icmp eq ptr %pdi.1, null
  br i1 %tobool61.not, label %if.end60.if.end77_crit_edge, label %if.end60.if.then62_crit_edge

if.end60.if.then62_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then62

if.end60.if.end77_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77

if.then62:                                        ; preds = %if.end60.if.then62_crit_edge, %sw.epilog.thread.if.then62_crit_edge, %if.end60.thread158
  %pdi.1161 = phi ptr [ %pdi.015.i115, %if.end60.thread158 ], [ %pdi.1, %if.end60.if.then62_crit_edge ], [ %retval.0.i112139, %sw.epilog.thread.if.then62_crit_edge ]
  %19 = ptrtoint ptr %pdi.1161 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %pdi.1161, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #4
  %conv.i = zext i16 %21 to i32
  %sub.i = shl nuw nsw i32 %conv.i, 1
  %mul.i = add nsw i32 %sub.i, -2
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %len.i, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %24)
  %cmp65 = icmp eq i32 %mul.i, %24
  br i1 %cmp65, label %land.lhs.true66, label %if.then62.if.end77_crit_edge

if.then62.if.end77_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77

land.lhs.true66:                                  ; preds = %if.then62
  %data = getelementptr inbounds %struct.pdi, ptr %pdi.1161, i32 0, i32 2
  %add.ptr68 = getelementptr i8, ptr %data, i32 %mul.i
  %cmp69 = icmp ult ptr %add.ptr68, %pda_end
  br i1 %cmp69, label %if.then70, label %land.lhs.true66.if.end77_crit_edge

land.lhs.true66.if.end77_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77

if.then70:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops, align 4
  %program = getelementptr inbounds %struct.hermes_ops, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %program to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %program, align 4
  %addr.i = getelementptr inbounds %struct.pdr, ptr %pdr.0165, i32 0, i32 1
  %29 = ptrtoint ptr %addr.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %addr.i, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #4
  %call75 = tail call i32 %28(ptr noundef %hw, ptr noundef %data, i32 noundef %31, i32 noundef %mul.i) #4
  br label %if.end77

if.end77:                                         ; preds = %if.then70, %land.lhs.true66.if.end77_crit_edge, %if.then62.if.end77_crit_edge, %if.end60.if.end77_crit_edge, %sw.epilog.thread.if.end77_crit_edge
  %incdec.ptr = getelementptr %struct.pdr, ptr %pdr.0165, i32 1
  %cmp.not = icmp ugt ptr %incdec.ptr, %add.ptr
  br i1 %cmp.not, label %if.end77.while.end_crit_edge, label %if.end77.land.rhs_crit_edge

if.end77.land.rhs_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

if.end77.while.end_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end77.while.end_crit_edge, %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intersil/orinoco/hermes_dld.c", i32 294, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @hermes_program.__UNIQUE_ID_ddebug271, !1, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/intersil/orinoco/hermes_dld.c", i32 419, i32 4}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @hermes_apply_pda_with_defaults.__UNIQUE_ID_ddebug272, !7, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intersil/orinoco/hermes_dld.c", i32 430, i32 5}
!12 = !{ptr @hermes_apply_pda_with_defaults.__UNIQUE_ID_ddebug273, !11, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intersil/orinoco/hermes_dld.c", i32 460, i32 4}
!15 = !{ptr @hermes_apply_pda_with_defaults.__UNIQUE_ID_ddebug274, !14, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!16 = !{ptr @default_pdr_data_0x0005, !17, !"default_pdr_data_0x0005", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intersil/orinoco/hermes_dld.c", i32 330, i32 1}
!18 = !{ptr @default_pdr_data_0x0108, !19, !"default_pdr_data_0x0108", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intersil/orinoco/hermes_dld.c", i32 333, i32 1}
!20 = !{ptr @default_pdr_data_0x0109, !21, !"default_pdr_data_0x0109", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intersil/orinoco/hermes_dld.c", i32 336, i32 1}
!22 = !{ptr @default_pdr_data_0x0150, !23, !"default_pdr_data_0x0150", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/intersil/orinoco/hermes_dld.c", i32 339, i32 1}
!24 = !{ptr @default_pdr_data_0x0160, !25, !"default_pdr_data_0x0160", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/intersil/orinoco/hermes_dld.c", i32 342, i32 1}
!26 = !{ptr @default_pdr_data_0x0161, !27, !"default_pdr_data_0x0161", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/intersil/orinoco/hermes_dld.c", i32 349, i32 1}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2148964563, i64 2148964568, i64 2148964581, i64 2148964625, i64 2148964659, i64 2148964680}
