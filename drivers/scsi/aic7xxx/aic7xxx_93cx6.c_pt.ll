; ModuleID = '/llk/IR_all_yes/drivers/scsi/aic7xxx/aic7xxx_93cx6.c_pt.bc'
source_filename = "../drivers/scsi/aic7xxx/aic7xxx_93cx6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.seeprom_cmd = type { i8, [11 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.seeprom_descriptor = type { ptr, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.seeprom_config = type { [16 x i16], i16, i16, i16, i16, [10 x i16], i16, i16 }

@seeprom_ewen = internal constant { %struct.seeprom_cmd, [20 x i8] } { %struct.seeprom_cmd { i8 9, [11 x i8] c"\01\00\00\01\01\00\00\00\00\00\00" }, [20 x i8] zeroinitializer }, align 32
@seeprom_long_ewen = internal constant { %struct.seeprom_cmd, [20 x i8] } { %struct.seeprom_cmd { i8 11, [11 x i8] c"\01\00\00\01\01\00\00\00\00\00\00" }, [20 x i8] zeroinitializer }, align 32
@ahc_write_seeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ahc_write_seeprom: unsupported seeprom type %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ahc_write_seeprom\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/scsi/aic7xxx/aic7xxx_93cx6.c\00", [59 x i8] zeroinitializer }, align 32
@ahc_write_seeprom._entry_ptr = internal global ptr @ahc_write_seeprom._entry, section ".printk_index", align 4
@seeprom_read = internal constant { { i8, <{ i8, i8, [9 x i8] }> }, [20 x i8] } { { i8, <{ i8, i8, [9 x i8] }> } { i8 3, <{ i8, i8, [9 x i8] }> <{ i8 1, i8 1, [9 x i8] zeroinitializer }> }, [20 x i8] zeroinitializer }, align 32
@seeprom_ewds = internal constant { { i8, <{ i8, [10 x i8] }> }, [20 x i8] } { { i8, <{ i8, [10 x i8] }> } { i8 9, <{ i8, [10 x i8] }> <{ i8 1, [10 x i8] zeroinitializer }> }, [20 x i8] zeroinitializer }, align 32
@seeprom_long_ewds = internal constant { { i8, <{ i8, [10 x i8] }> }, [20 x i8] } { { i8, <{ i8, [10 x i8] }> } { i8 11, <{ i8, [10 x i8] }> <{ i8 1, [10 x i8] zeroinitializer }> }, [20 x i8] zeroinitializer }, align 32
@seeprom_write = internal constant { { i8, <{ i8, i8, i8, [8 x i8] }> }, [20 x i8] } { { i8, <{ i8, i8, i8, [8 x i8] }> } { i8 3, <{ i8, i8, i8, [8 x i8] }> <{ i8 1, i8 0, i8 1, [8 x i8] zeroinitializer }> }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 8]
@___asan_gen_.7 = private unnamed_addr constant [13 x i8] c"seeprom_ewen\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 81, i32 33 }
@___asan_gen_.10 = private unnamed_addr constant [18 x i8] c"seeprom_long_ewen\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 85, i32 33 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 237, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [13 x i8] c"seeprom_read\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 90, i32 33 }
@___asan_gen_.28 = private unnamed_addr constant [13 x i8] c"seeprom_ewds\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 82, i32 33 }
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"seeprom_long_ewds\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 86, i32 33 }
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"seeprom_write\00", align 1
@___asan_gen_.35 = private constant [40 x i8] c"../drivers/scsi/aic7xxx/aic7xxx_93cx6.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 89, i32 33 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @ahc_write_seeprom._entry, ptr @ahc_write_seeprom._entry_ptr, ptr @seeprom_ewen, ptr @seeprom_long_ewen, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @seeprom_read, ptr @seeprom_ewds, ptr @seeprom_long_ewds, ptr @seeprom_write], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seeprom_ewen to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seeprom_long_ewen to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahc_write_seeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seeprom_read to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seeprom_ewds to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seeprom_long_ewds to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seeprom_write to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahc_read_seeprom(ptr noundef readonly %sd, ptr nocapture noundef writeonly %buf, i32 noundef %start_addr, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %count, %start_addr
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %start_addr)
  %cmp199 = icmp ugt i32 %add, %start_addr
  br i1 %cmp199, label %for.body.lr.ph, label %entry.for.end127_crit_edge

entry.for.end127_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end127

for.body.lr.ph:                                   ; preds = %entry
  %sd_MS = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 5
  %sd_CS = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 7
  %sd_chip = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 4
  %sd_DO = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 9
  %sd_control_offset = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 1
  %sd_status_offset = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 2
  %sd_RDY = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 6
  %sd_CK = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 8
  %sd_dataout_offset = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 3
  %sd_DI = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.end124.for.body_crit_edge, %for.body.lr.ph
  %k.0200 = phi i32 [ %start_addr, %for.body.lr.ph ], [ %inc, %for.end124.for.body_crit_edge ]
  tail call fastcc void @send_seeprom_cmd(ptr noundef %sd, ptr noundef nonnull @seeprom_read)
  %0 = ptrtoint ptr %sd_MS to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sd_MS, align 4
  %2 = ptrtoint ptr %sd_CS to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sd_CS, align 4
  %xor189 = xor i16 %3, %1
  %conv2 = trunc i16 %xor189 to i8
  %4 = ptrtoint ptr %sd_chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sd_chip, align 4
  %i.0193 = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0193)
  %cmp4194 = icmp sgt i32 %i.0193, -1
  br i1 %cmp4194, label %for.body.for.body6_crit_edge, label %for.body.for.cond59.preheader_crit_edge

for.body.for.cond59.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond59.preheader

for.body.for.body6_crit_edge:                     ; preds = %for.body
  br label %for.body6

for.cond59.preheader:                             ; preds = %for.inc.for.cond59.preheader_crit_edge, %for.body.for.cond59.preheader_crit_edge
  %temp.0.lcssa = phi i8 [ %conv2, %for.body.for.cond59.preheader_crit_edge ], [ %temp.2, %for.inc.for.cond59.preheader_crit_edge ]
  br label %do.body63

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %for.body.for.body6_crit_edge
  %i.0196 = phi i32 [ %i.0, %for.inc.for.body6_crit_edge ], [ %i.0193, %for.body.for.body6_crit_edge ]
  %temp.0195 = phi i8 [ %temp.2, %for.inc.for.body6_crit_edge ], [ %conv2, %for.body.for.body6_crit_edge ]
  %shl = shl nuw i32 1, %i.0196
  %and = and i32 %shl, %k.0200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp7.not = icmp eq i32 %and, 0
  br i1 %cmp7.not, label %for.body6.do.body_crit_edge, label %if.then

for.body6.do.body_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then:                                          ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %sd_DO to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sd_DO, align 4
  %conv9 = trunc i16 %7 to i8
  %xor11 = xor i8 %temp.0195, %conv9
  br label %do.body

do.body:                                          ; preds = %if.then, %for.body6.do.body_crit_edge
  %temp.1 = phi i8 [ %xor11, %if.then ], [ %temp.0195, %for.body6.do.body_crit_edge ]
  %8 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd, align 4
  %10 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sd_control_offset, align 4
  tail call void @ahc_outb(ptr noundef %9, i32 noundef %11, i8 noundef zeroext %temp.1) #4
  %12 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sd, align 4
  %call.i = tail call zeroext i8 @ahc_inb(ptr noundef %13, i32 noundef 145) #4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %do.body
  %14 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sd, align 4
  %16 = ptrtoint ptr %sd_status_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sd_status_offset, align 4
  %call = tail call zeroext i8 @ahc_inb(ptr noundef %15, i32 noundef %17) #4
  %conv15 = zext i8 %call to i32
  %18 = ptrtoint ptr %sd_RDY to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %sd_RDY, align 2
  %conv16 = zext i16 %19 to i32
  %and17 = and i32 %conv16, %conv15
  %cmp18 = icmp eq i32 %and17, 0
  br i1 %cmp18, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sd, align 4
  %22 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sd_control_offset, align 4
  %call22 = tail call zeroext i8 @ahc_inb(ptr noundef %21, i32 noundef %23) #4
  %24 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sd, align 4
  %26 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sd_control_offset, align 4
  %28 = ptrtoint ptr %sd_CK to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %sd_CK, align 2
  %conv27 = trunc i16 %29 to i8
  %xor28 = xor i8 %temp.1, %conv27
  tail call void @ahc_outb(ptr noundef %25, i32 noundef %27, i8 noundef zeroext %xor28) #4
  %30 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sd, align 4
  %call.i190 = tail call zeroext i8 @ahc_inb(ptr noundef %31, i32 noundef 145) #4
  br label %while.cond33

while.cond33:                                     ; preds = %while.cond33.while.cond33_crit_edge, %while.end
  %32 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sd, align 4
  %34 = ptrtoint ptr %sd_status_offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sd_status_offset, align 4
  %call36 = tail call zeroext i8 @ahc_inb(ptr noundef %33, i32 noundef %35) #4
  %conv37 = zext i8 %call36 to i32
  %36 = ptrtoint ptr %sd_RDY to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %sd_RDY, align 2
  %conv39 = zext i16 %37 to i32
  %and40 = and i32 %conv39, %conv37
  %cmp41 = icmp eq i32 %and40, 0
  br i1 %cmp41, label %while.cond33.while.cond33_crit_edge, label %while.end44

while.cond33.while.cond33_crit_edge:              ; preds = %while.cond33
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond33

while.end44:                                      ; preds = %while.cond33
  %38 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sd, align 4
  %40 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sd_control_offset, align 4
  %call47 = tail call zeroext i8 @ahc_inb(ptr noundef %39, i32 noundef %41) #4
  br i1 %cmp7.not, label %while.end44.for.inc_crit_edge, label %if.then52

while.end44.for.inc_crit_edge:                    ; preds = %while.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then52:                                        ; preds = %while.end44
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %sd_DO to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %sd_DO, align 4
  %conv54 = trunc i16 %43 to i8
  %xor56 = xor i8 %temp.1, %conv54
  br label %for.inc

for.inc:                                          ; preds = %if.then52, %while.end44.for.inc_crit_edge
  %temp.2 = phi i8 [ %xor56, %if.then52 ], [ %temp.1, %while.end44.for.inc_crit_edge ]
  %i.0 = add i32 %i.0196, -1
  %cmp4 = icmp sgt i32 %i.0, -1
  br i1 %cmp4, label %for.inc.for.body6_crit_edge, label %for.inc.for.cond59.preheader_crit_edge

for.inc.for.cond59.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond59.preheader

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body6

do.body63:                                        ; preds = %while.end118.do.body63_crit_edge, %for.cond59.preheader
  %v.0198 = phi i16 [ 0, %for.cond59.preheader ], [ %spec.select, %while.end118.do.body63_crit_edge ]
  %i.1197 = phi i32 [ 16, %for.cond59.preheader ], [ %dec123, %while.end118.do.body63_crit_edge ]
  %44 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sd, align 4
  %46 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sd_control_offset, align 4
  tail call void @ahc_outb(ptr noundef %45, i32 noundef %47, i8 noundef zeroext %temp.0.lcssa) #4
  %48 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sd, align 4
  %call.i191 = tail call zeroext i8 @ahc_inb(ptr noundef %49, i32 noundef 145) #4
  br label %while.cond69

while.cond69:                                     ; preds = %while.cond69.while.cond69_crit_edge, %do.body63
  %50 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sd, align 4
  %52 = ptrtoint ptr %sd_status_offset to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sd_status_offset, align 4
  %call72 = tail call zeroext i8 @ahc_inb(ptr noundef %51, i32 noundef %53) #4
  %conv73 = zext i8 %call72 to i32
  %54 = ptrtoint ptr %sd_RDY to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %sd_RDY, align 2
  %conv75 = zext i16 %55 to i32
  %and76 = and i32 %conv75, %conv73
  %cmp77 = icmp eq i32 %and76, 0
  br i1 %cmp77, label %while.cond69.while.cond69_crit_edge, label %while.end80

while.cond69.while.cond69_crit_edge:              ; preds = %while.cond69
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond69

while.end80:                                      ; preds = %while.cond69
  %56 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sd, align 4
  %58 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sd_control_offset, align 4
  %call83 = tail call zeroext i8 @ahc_inb(ptr noundef %57, i32 noundef %59) #4
  %60 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sd, align 4
  %62 = ptrtoint ptr %sd_dataout_offset to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sd_dataout_offset, align 4
  %call88 = tail call zeroext i8 @ahc_inb(ptr noundef %61, i32 noundef %63) #4
  %conv89 = zext i8 %call88 to i32
  %64 = ptrtoint ptr %sd_DI to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %sd_DI, align 2
  %conv90 = zext i16 %65 to i32
  %and91 = and i32 %conv90, %conv89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool.not = icmp ne i32 %and91, 0
  %66 = zext i1 %tobool.not to i16
  %67 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sd, align 4
  %69 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sd_control_offset, align 4
  %71 = ptrtoint ptr %sd_CK to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %sd_CK, align 2
  %conv101 = trunc i16 %72 to i8
  %xor102 = xor i8 %temp.0.lcssa, %conv101
  tail call void @ahc_outb(ptr noundef %68, i32 noundef %70, i8 noundef zeroext %xor102) #4
  %73 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sd, align 4
  %call.i192 = tail call zeroext i8 @ahc_inb(ptr noundef %74, i32 noundef 145) #4
  br label %while.cond107

while.cond107:                                    ; preds = %while.cond107.while.cond107_crit_edge, %while.end80
  %75 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sd, align 4
  %77 = ptrtoint ptr %sd_status_offset to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sd_status_offset, align 4
  %call110 = tail call zeroext i8 @ahc_inb(ptr noundef %76, i32 noundef %78) #4
  %conv111 = zext i8 %call110 to i32
  %79 = ptrtoint ptr %sd_RDY to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %sd_RDY, align 2
  %conv113 = zext i16 %80 to i32
  %and114 = and i32 %conv113, %conv111
  %cmp115 = icmp eq i32 %and114, 0
  br i1 %cmp115, label %while.cond107.while.cond107_crit_edge, label %while.end118

while.cond107.while.cond107_crit_edge:            ; preds = %while.cond107
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond107

while.end118:                                     ; preds = %while.cond107
  %shl85 = shl i16 %v.0198, 1
  %spec.select = or i16 %shl85, %66
  %81 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sd, align 4
  %83 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sd_control_offset, align 4
  %call121 = tail call zeroext i8 @ahc_inb(ptr noundef %82, i32 noundef %84) #4
  %dec123 = add nsw i32 %i.1197, -1
  %cmp60 = icmp sgt i32 %i.1197, 0
  br i1 %cmp60, label %while.end118.do.body63_crit_edge, label %for.end124

while.end118.do.body63_crit_edge:                 ; preds = %while.end118
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body63

for.end124:                                       ; preds = %while.end118
  %sub125 = sub nuw i32 %k.0200, %start_addr
  %arrayidx = getelementptr i16, ptr %buf, i32 %sub125
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %spec.select, ptr %arrayidx, align 2
  tail call fastcc void @reset_seeprom(ptr noundef %sd)
  %inc = add nuw i32 %k.0200, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %for.end124.for.end127_crit_edge, label %for.end124.for.body_crit_edge

for.end124.for.body_crit_edge:                    ; preds = %for.end124
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end124.for.end127_crit_edge:                  ; preds = %for.end124
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end127

for.end127:                                       ; preds = %for.end124.for.end127_crit_edge, %entry.for.end127_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_seeprom_cmd(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_MS = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %sd_MS to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sd_MS, align 4
  %sd_CS = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 7
  %2 = ptrtoint ptr %sd_CS to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sd_CS, align 4
  %xor122 = xor i16 %3, %1
  %4 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd, align 4
  %sd_control_offset = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 1
  %6 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sd_control_offset, align 4
  %sd_CK = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 8
  %8 = ptrtoint ptr %sd_CK to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sd_CK, align 2
  %xor5123 = xor i16 %9, %xor122
  %conv6 = trunc i16 %xor5123 to i8
  tail call void @ahc_outb(ptr noundef %5, i32 noundef %7, i8 noundef zeroext %conv6) #4
  %10 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd, align 4
  %call.i = tail call zeroext i8 @ahc_inb(ptr noundef %11, i32 noundef 145) #4
  %sd_status_offset = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 2
  %sd_RDY = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 6
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %12 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sd, align 4
  %14 = ptrtoint ptr %sd_status_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sd_status_offset, align 4
  %call = tail call zeroext i8 @ahc_inb(ptr noundef %13, i32 noundef %15) #4
  %conv9 = zext i8 %call to i32
  %16 = ptrtoint ptr %sd_RDY to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sd_RDY, align 2
  %conv10 = zext i16 %17 to i32
  %and = and i32 %conv10, %conv9
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sd, align 4
  %20 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sd_control_offset, align 4
  %call14 = tail call zeroext i8 @ahc_inb(ptr noundef %19, i32 noundef %21) #4
  %22 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cmd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp16127.not = icmp eq i8 %23, 0
  br i1 %cmp16127.not, label %while.end.for.end_crit_edge, label %for.body.lr.ph

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.end
  %conv2 = trunc i16 %xor122 to i8
  %sd_DO = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0129 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %temp.0128 = phi i8 [ %conv2, %for.body.lr.ph ], [ %temp.2, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.seeprom_cmd, ptr %cmd, i32 0, i32 1, i32 %i.0129
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp19.not = icmp eq i8 %25, 0
  br i1 %cmp19.not, label %for.body.do.body25_crit_edge, label %if.then

for.body.do.body25_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body25

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %sd_DO to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sd_DO, align 4
  %conv21 = trunc i16 %27 to i8
  %xor23 = xor i8 %temp.0128, %conv21
  br label %do.body25

do.body25:                                        ; preds = %if.then, %for.body.do.body25_crit_edge
  %temp.1 = phi i8 [ %xor23, %if.then ], [ %temp.0128, %for.body.do.body25_crit_edge ]
  %28 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sd, align 4
  %30 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sd_control_offset, align 4
  tail call void @ahc_outb(ptr noundef %29, i32 noundef %31, i8 noundef zeroext %temp.1) #4
  %32 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sd, align 4
  %call.i124 = tail call zeroext i8 @ahc_inb(ptr noundef %33, i32 noundef 145) #4
  br label %while.cond31

while.cond31:                                     ; preds = %while.cond31.while.cond31_crit_edge, %do.body25
  %34 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sd, align 4
  %36 = ptrtoint ptr %sd_status_offset to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sd_status_offset, align 4
  %call34 = tail call zeroext i8 @ahc_inb(ptr noundef %35, i32 noundef %37) #4
  %conv35 = zext i8 %call34 to i32
  %38 = ptrtoint ptr %sd_RDY to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %sd_RDY, align 2
  %conv37 = zext i16 %39 to i32
  %and38 = and i32 %conv37, %conv35
  %cmp39 = icmp eq i32 %and38, 0
  br i1 %cmp39, label %while.cond31.while.cond31_crit_edge, label %while.end42

while.cond31.while.cond31_crit_edge:              ; preds = %while.cond31
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond31

while.end42:                                      ; preds = %while.cond31
  %40 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sd, align 4
  %42 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sd_control_offset, align 4
  %call45 = tail call zeroext i8 @ahc_inb(ptr noundef %41, i32 noundef %43) #4
  %44 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sd, align 4
  %46 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sd_control_offset, align 4
  %48 = ptrtoint ptr %sd_CK to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %sd_CK, align 2
  %conv51 = trunc i16 %49 to i8
  %xor52 = xor i8 %temp.1, %conv51
  tail call void @ahc_outb(ptr noundef %45, i32 noundef %47, i8 noundef zeroext %xor52) #4
  %50 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sd, align 4
  %call.i125 = tail call zeroext i8 @ahc_inb(ptr noundef %51, i32 noundef 145) #4
  br label %while.cond57

while.cond57:                                     ; preds = %while.cond57.while.cond57_crit_edge, %while.end42
  %52 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sd, align 4
  %54 = ptrtoint ptr %sd_status_offset to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sd_status_offset, align 4
  %call60 = tail call zeroext i8 @ahc_inb(ptr noundef %53, i32 noundef %55) #4
  %conv61 = zext i8 %call60 to i32
  %56 = ptrtoint ptr %sd_RDY to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %sd_RDY, align 2
  %conv63 = zext i16 %57 to i32
  %and64 = and i32 %conv63, %conv61
  %cmp65 = icmp eq i32 %and64, 0
  br i1 %cmp65, label %while.cond57.while.cond57_crit_edge, label %while.end68

while.cond57.while.cond57_crit_edge:              ; preds = %while.cond57
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond57

while.end68:                                      ; preds = %while.cond57
  %58 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sd, align 4
  %60 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sd_control_offset, align 4
  %call71 = tail call zeroext i8 @ahc_inb(ptr noundef %59, i32 noundef %61) #4
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp75.not = icmp eq i8 %63, 0
  br i1 %cmp75.not, label %while.end68.for.inc_crit_edge, label %if.then77

while.end68.for.inc_crit_edge:                    ; preds = %while.end68
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then77:                                        ; preds = %while.end68
  call void @__sanitizer_cov_trace_pc() #6
  %64 = ptrtoint ptr %sd_DO to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %sd_DO, align 4
  %conv79 = trunc i16 %65 to i8
  %xor81 = xor i8 %temp.1, %conv79
  br label %for.inc

for.inc:                                          ; preds = %if.then77, %while.end68.for.inc_crit_edge
  %temp.2 = phi i8 [ %xor81, %if.then77 ], [ %temp.1, %while.end68.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0129, 1
  %66 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %cmd, align 1
  %conv15 = zext i8 %67 to i32
  %cmp16 = icmp ult i32 %inc, %conv15
  br i1 %cmp16, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %while.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahc_outb(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ahc_inb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reset_seeprom(ptr nocapture noundef readonly %sd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_MS = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %sd_MS to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sd_MS, align 4
  %conv = trunc i16 %1 to i8
  %2 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd, align 4
  %sd_control_offset = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 1
  %4 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sd_control_offset, align 4
  tail call void @ahc_outb(ptr noundef %3, i32 noundef %5, i8 noundef zeroext %conv) #4
  %6 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd, align 4
  %call.i = tail call zeroext i8 @ahc_inb(ptr noundef %7, i32 noundef 145) #4
  %sd_status_offset = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 2
  %sd_RDY = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 6
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %8 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd, align 4
  %10 = ptrtoint ptr %sd_status_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sd_status_offset, align 4
  %call = tail call zeroext i8 @ahc_inb(ptr noundef %9, i32 noundef %11) #4
  %conv3 = zext i8 %call to i32
  %12 = ptrtoint ptr %sd_RDY to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sd_RDY, align 2
  %conv4 = zext i16 %13 to i32
  %and = and i32 %conv4, %conv3
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sd, align 4
  %16 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sd_control_offset, align 4
  %call8 = tail call zeroext i8 @ahc_inb(ptr noundef %15, i32 noundef %17) #4
  %18 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sd, align 4
  %20 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sd_control_offset, align 4
  %sd_CK = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 8
  %22 = ptrtoint ptr %sd_CK to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sd_CK, align 2
  %xor81 = xor i16 %23, %1
  %conv14 = trunc i16 %xor81 to i8
  tail call void @ahc_outb(ptr noundef %19, i32 noundef %21, i8 noundef zeroext %conv14) #4
  %24 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sd, align 4
  %call.i82 = tail call zeroext i8 @ahc_inb(ptr noundef %25, i32 noundef 145) #4
  br label %while.cond18

while.cond18:                                     ; preds = %while.cond18.while.cond18_crit_edge, %while.end
  %26 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sd, align 4
  %28 = ptrtoint ptr %sd_status_offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sd_status_offset, align 4
  %call21 = tail call zeroext i8 @ahc_inb(ptr noundef %27, i32 noundef %29) #4
  %conv22 = zext i8 %call21 to i32
  %30 = ptrtoint ptr %sd_RDY to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %sd_RDY, align 2
  %conv24 = zext i16 %31 to i32
  %and25 = and i32 %conv24, %conv22
  %cmp26 = icmp eq i32 %and25, 0
  br i1 %cmp26, label %while.cond18.while.cond18_crit_edge, label %while.end29

while.cond18.while.cond18_crit_edge:              ; preds = %while.cond18
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond18

while.end29:                                      ; preds = %while.cond18
  %32 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sd, align 4
  %34 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sd_control_offset, align 4
  %call32 = tail call zeroext i8 @ahc_inb(ptr noundef %33, i32 noundef %35) #4
  %36 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sd, align 4
  %38 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sd_control_offset, align 4
  tail call void @ahc_outb(ptr noundef %37, i32 noundef %39, i8 noundef zeroext %conv) #4
  %40 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sd, align 4
  %call.i83 = tail call zeroext i8 @ahc_inb(ptr noundef %41, i32 noundef 145) #4
  br label %while.cond39

while.cond39:                                     ; preds = %while.cond39.while.cond39_crit_edge, %while.end29
  %42 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sd, align 4
  %44 = ptrtoint ptr %sd_status_offset to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sd_status_offset, align 4
  %call42 = tail call zeroext i8 @ahc_inb(ptr noundef %43, i32 noundef %45) #4
  %conv43 = zext i8 %call42 to i32
  %46 = ptrtoint ptr %sd_RDY to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %sd_RDY, align 2
  %conv45 = zext i16 %47 to i32
  %and46 = and i32 %conv45, %conv43
  %cmp47 = icmp eq i32 %and46, 0
  br i1 %cmp47, label %while.cond39.while.cond39_crit_edge, label %while.end50

while.cond39.while.cond39_crit_edge:              ; preds = %while.cond39
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond39

while.end50:                                      ; preds = %while.cond39
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sd, align 4
  %50 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sd_control_offset, align 4
  %call53 = tail call zeroext i8 @ahc_inb(ptr noundef %49, i32 noundef %51) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahc_write_seeprom(ptr noundef readonly %sd, ptr nocapture noundef readonly %buf, i32 noundef %start_addr, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_chip = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 4
  %0 = ptrtoint ptr %sd_chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sd_chip, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 6, label %entry.if.end6_crit_edge
    i32 8, label %if.then3
  ]

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %1) #7
  br label %cleanup

if.end6:                                          ; preds = %if.then3, %entry.if.end6_crit_edge
  %ewen.0 = phi ptr [ @seeprom_long_ewen, %if.then3 ], [ @seeprom_ewen, %entry.if.end6_crit_edge ]
  %ewds.0 = phi ptr [ @seeprom_long_ewds, %if.then3 ], [ @seeprom_ewds, %entry.if.end6_crit_edge ]
  tail call fastcc void @send_seeprom_cmd(ptr noundef %sd, ptr noundef nonnull %ewen.0)
  tail call fastcc void @reset_seeprom(ptr noundef %sd)
  %sd_MS = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 5
  %sd_CS = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 7
  %add = add i32 %count, %start_addr
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %start_addr)
  %cmp9365 = icmp ugt i32 %add, %start_addr
  br i1 %cmp9365, label %for.body.lr.ph, label %if.end6.for.end240_crit_edge

if.end6.for.end240_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end240

for.body.lr.ph:                                   ; preds = %if.end6
  %3 = ptrtoint ptr %sd_CS to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sd_CS, align 4
  %5 = ptrtoint ptr %sd_MS to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sd_MS, align 4
  %xor350 = xor i16 %4, %6
  %conv8 = trunc i16 %xor350 to i8
  %sd_DO = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 9
  %sd_control_offset = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 1
  %sd_status_offset = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 2
  %sd_RDY = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 6
  %sd_CK = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 8
  %sd_dataout_offset = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 3
  %sd_DI = getelementptr inbounds %struct.seeprom_descriptor, ptr %sd, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %do.end238.for.body_crit_edge, %for.body.lr.ph
  %k.0367 = phi i32 [ %start_addr, %for.body.lr.ph ], [ %inc, %do.end238.for.body_crit_edge ]
  %temp.0366 = phi i8 [ %conv8, %for.body.lr.ph ], [ %conv181, %do.end238.for.body_crit_edge ]
  tail call fastcc void @send_seeprom_cmd(ptr noundef %sd, ptr noundef nonnull @seeprom_write)
  %7 = ptrtoint ptr %sd_chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sd_chip, align 4
  %i.0359 = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0359)
  %cmp13360 = icmp sgt i32 %i.0359, -1
  br i1 %cmp13360, label %for.body.for.body15_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body15_crit_edge:                    ; preds = %for.body
  br label %for.body15

for.body15:                                       ; preds = %for.inc.for.body15_crit_edge, %for.body.for.body15_crit_edge
  %i.0362 = phi i32 [ %i.0, %for.inc.for.body15_crit_edge ], [ %i.0359, %for.body.for.body15_crit_edge ]
  %temp.1361 = phi i8 [ %temp.3, %for.inc.for.body15_crit_edge ], [ %temp.0366, %for.body.for.body15_crit_edge ]
  %shl = shl nuw i32 1, %i.0362
  %and = and i32 %shl, %k.0367
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp16.not = icmp eq i32 %and, 0
  br i1 %cmp16.not, label %for.body15.do.body24_crit_edge, label %if.then18

for.body15.do.body24_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body24

if.then18:                                        ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %sd_DO to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sd_DO, align 4
  %conv19 = trunc i16 %10 to i8
  %xor21 = xor i8 %temp.1361, %conv19
  br label %do.body24

do.body24:                                        ; preds = %if.then18, %for.body15.do.body24_crit_edge
  %temp.2 = phi i8 [ %xor21, %if.then18 ], [ %temp.1361, %for.body15.do.body24_crit_edge ]
  %11 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sd, align 4
  %13 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sd_control_offset, align 4
  tail call void @ahc_outb(ptr noundef %12, i32 noundef %14, i8 noundef zeroext %temp.2) #4
  %15 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sd, align 4
  %call.i = tail call zeroext i8 @ahc_inb(ptr noundef %16, i32 noundef 145) #4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %do.body24
  %17 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sd, align 4
  %19 = ptrtoint ptr %sd_status_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sd_status_offset, align 4
  %call29 = tail call zeroext i8 @ahc_inb(ptr noundef %18, i32 noundef %20) #4
  %conv30 = zext i8 %call29 to i32
  %21 = ptrtoint ptr %sd_RDY to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sd_RDY, align 2
  %conv31 = zext i16 %22 to i32
  %and32 = and i32 %conv31, %conv30
  %cmp33 = icmp eq i32 %and32, 0
  br i1 %cmp33, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sd, align 4
  %25 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sd_control_offset, align 4
  %call37 = tail call zeroext i8 @ahc_inb(ptr noundef %24, i32 noundef %26) #4
  %27 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sd, align 4
  %29 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sd_control_offset, align 4
  %31 = ptrtoint ptr %sd_CK to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sd_CK, align 2
  %conv42 = trunc i16 %32 to i8
  %xor43 = xor i8 %temp.2, %conv42
  tail call void @ahc_outb(ptr noundef %28, i32 noundef %30, i8 noundef zeroext %xor43) #4
  %33 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sd, align 4
  %call.i353 = tail call zeroext i8 @ahc_inb(ptr noundef %34, i32 noundef 145) #4
  br label %while.cond48

while.cond48:                                     ; preds = %while.cond48.while.cond48_crit_edge, %while.end
  %35 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sd, align 4
  %37 = ptrtoint ptr %sd_status_offset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sd_status_offset, align 4
  %call51 = tail call zeroext i8 @ahc_inb(ptr noundef %36, i32 noundef %38) #4
  %conv52 = zext i8 %call51 to i32
  %39 = ptrtoint ptr %sd_RDY to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %sd_RDY, align 2
  %conv54 = zext i16 %40 to i32
  %and55 = and i32 %conv54, %conv52
  %cmp56 = icmp eq i32 %and55, 0
  br i1 %cmp56, label %while.cond48.while.cond48_crit_edge, label %while.end59

while.cond48.while.cond48_crit_edge:              ; preds = %while.cond48
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond48

while.end59:                                      ; preds = %while.cond48
  %41 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sd, align 4
  %43 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sd_control_offset, align 4
  %call62 = tail call zeroext i8 @ahc_inb(ptr noundef %42, i32 noundef %44) #4
  br i1 %cmp16.not, label %while.end59.for.inc_crit_edge, label %if.then67

while.end59.for.inc_crit_edge:                    ; preds = %while.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then67:                                        ; preds = %while.end59
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %sd_DO to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %sd_DO, align 4
  %conv69 = trunc i16 %46 to i8
  %xor71 = xor i8 %temp.2, %conv69
  br label %for.inc

for.inc:                                          ; preds = %if.then67, %while.end59.for.inc_crit_edge
  %temp.3 = phi i8 [ %xor71, %if.then67 ], [ %temp.2, %while.end59.for.inc_crit_edge ]
  %i.0 = add i32 %i.0362, -1
  %cmp13 = icmp sgt i32 %i.0, -1
  br i1 %cmp13, label %for.inc.for.body15_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body15_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body15

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %temp.1.lcssa = phi i8 [ %temp.0366, %for.body.for.end_crit_edge ], [ %temp.3, %for.inc.for.end_crit_edge ]
  %sub74 = sub nuw i32 %k.0367, %start_addr
  %arrayidx = getelementptr i16, ptr %buf, i32 %sub74
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx, align 2
  %conv79 = zext i16 %48 to i32
  br label %for.body78

for.body78:                                       ; preds = %for.inc150.for.body78_crit_edge, %for.end
  %i.1364 = phi i32 [ 15, %for.end ], [ %dec151, %for.inc150.for.body78_crit_edge ]
  %temp.4363 = phi i8 [ %temp.1.lcssa, %for.end ], [ %temp.6, %for.inc150.for.body78_crit_edge ]
  %shl80 = shl nuw i32 1, %i.1364
  %and81 = and i32 %shl80, %conv79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %cmp82.not = icmp eq i32 %and81, 0
  br i1 %cmp82.not, label %for.body78.do.body91_crit_edge, label %if.then84

for.body78.do.body91_crit_edge:                   ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body91

if.then84:                                        ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %sd_DO to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %sd_DO, align 4
  %conv86 = trunc i16 %50 to i8
  %xor88 = xor i8 %temp.4363, %conv86
  br label %do.body91

do.body91:                                        ; preds = %if.then84, %for.body78.do.body91_crit_edge
  %temp.5 = phi i8 [ %xor88, %if.then84 ], [ %temp.4363, %for.body78.do.body91_crit_edge ]
  %51 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sd, align 4
  %53 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sd_control_offset, align 4
  tail call void @ahc_outb(ptr noundef %52, i32 noundef %54, i8 noundef zeroext %temp.5) #4
  %55 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sd, align 4
  %call.i354 = tail call zeroext i8 @ahc_inb(ptr noundef %56, i32 noundef 145) #4
  br label %while.cond97

while.cond97:                                     ; preds = %while.cond97.while.cond97_crit_edge, %do.body91
  %57 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sd, align 4
  %59 = ptrtoint ptr %sd_status_offset to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sd_status_offset, align 4
  %call100 = tail call zeroext i8 @ahc_inb(ptr noundef %58, i32 noundef %60) #4
  %conv101 = zext i8 %call100 to i32
  %61 = ptrtoint ptr %sd_RDY to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %sd_RDY, align 2
  %conv103 = zext i16 %62 to i32
  %and104 = and i32 %conv103, %conv101
  %cmp105 = icmp eq i32 %and104, 0
  br i1 %cmp105, label %while.cond97.while.cond97_crit_edge, label %while.end108

while.cond97.while.cond97_crit_edge:              ; preds = %while.cond97
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond97

while.end108:                                     ; preds = %while.cond97
  %63 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sd, align 4
  %65 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sd_control_offset, align 4
  %call111 = tail call zeroext i8 @ahc_inb(ptr noundef %64, i32 noundef %66) #4
  %67 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sd, align 4
  %69 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %sd_control_offset, align 4
  %71 = ptrtoint ptr %sd_CK to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %sd_CK, align 2
  %conv117 = trunc i16 %72 to i8
  %xor118 = xor i8 %temp.5, %conv117
  tail call void @ahc_outb(ptr noundef %68, i32 noundef %70, i8 noundef zeroext %xor118) #4
  %73 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sd, align 4
  %call.i355 = tail call zeroext i8 @ahc_inb(ptr noundef %74, i32 noundef 145) #4
  br label %while.cond123

while.cond123:                                    ; preds = %while.cond123.while.cond123_crit_edge, %while.end108
  %75 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sd, align 4
  %77 = ptrtoint ptr %sd_status_offset to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sd_status_offset, align 4
  %call126 = tail call zeroext i8 @ahc_inb(ptr noundef %76, i32 noundef %78) #4
  %conv127 = zext i8 %call126 to i32
  %79 = ptrtoint ptr %sd_RDY to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %sd_RDY, align 2
  %conv129 = zext i16 %80 to i32
  %and130 = and i32 %conv129, %conv127
  %cmp131 = icmp eq i32 %and130, 0
  br i1 %cmp131, label %while.cond123.while.cond123_crit_edge, label %while.end134

while.cond123.while.cond123_crit_edge:            ; preds = %while.cond123
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond123

while.end134:                                     ; preds = %while.cond123
  %81 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sd, align 4
  %83 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sd_control_offset, align 4
  %call137 = tail call zeroext i8 @ahc_inb(ptr noundef %82, i32 noundef %84) #4
  br i1 %cmp82.not, label %while.end134.for.inc150_crit_edge, label %if.then143

while.end134.for.inc150_crit_edge:                ; preds = %while.end134
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc150

if.then143:                                       ; preds = %while.end134
  call void @__sanitizer_cov_trace_pc() #6
  %85 = ptrtoint ptr %sd_DO to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %sd_DO, align 4
  %conv145 = trunc i16 %86 to i8
  %xor147 = xor i8 %temp.5, %conv145
  br label %for.inc150

for.inc150:                                       ; preds = %if.then143, %while.end134.for.inc150_crit_edge
  %temp.6 = phi i8 [ %xor147, %if.then143 ], [ %temp.5, %while.end134.for.inc150_crit_edge ]
  %dec151 = add nsw i32 %i.1364, -1
  %cmp76 = icmp sgt i32 %i.1364, 0
  br i1 %cmp76, label %for.inc150.for.body78_crit_edge, label %for.end152

for.inc150.for.body78_crit_edge:                  ; preds = %for.inc150
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body78

for.end152:                                       ; preds = %for.inc150
  %87 = ptrtoint ptr %sd_MS to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %sd_MS, align 4
  %conv154 = trunc i16 %88 to i8
  %89 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sd, align 4
  %91 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sd_control_offset, align 4
  tail call void @ahc_outb(ptr noundef %90, i32 noundef %92, i8 noundef zeroext %conv154) #4
  %93 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sd, align 4
  %call.i356 = tail call zeroext i8 @ahc_inb(ptr noundef %94, i32 noundef 145) #4
  br label %while.cond161

while.cond161:                                    ; preds = %while.cond161.while.cond161_crit_edge, %for.end152
  %95 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %sd, align 4
  %97 = ptrtoint ptr %sd_status_offset to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %sd_status_offset, align 4
  %call164 = tail call zeroext i8 @ahc_inb(ptr noundef %96, i32 noundef %98) #4
  %conv165 = zext i8 %call164 to i32
  %99 = ptrtoint ptr %sd_RDY to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %sd_RDY, align 2
  %conv167 = zext i16 %100 to i32
  %and168 = and i32 %conv167, %conv165
  %cmp169 = icmp eq i32 %and168, 0
  br i1 %cmp169, label %while.cond161.while.cond161_crit_edge, label %while.end172

while.cond161.while.cond161_crit_edge:            ; preds = %while.cond161
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond161

while.end172:                                     ; preds = %while.cond161
  %101 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sd, align 4
  %103 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %sd_control_offset, align 4
  %call175 = tail call zeroext i8 @ahc_inb(ptr noundef %102, i32 noundef %104) #4
  %105 = ptrtoint ptr %sd_MS to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %sd_MS, align 4
  %107 = ptrtoint ptr %sd_CS to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %sd_CS, align 4
  %xor180351 = xor i16 %108, %106
  %conv181 = trunc i16 %xor180351 to i8
  br label %do.body182

do.body182:                                       ; preds = %while.end226.do.body182_crit_edge, %while.end172
  %109 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %sd, align 4
  %111 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %sd_control_offset, align 4
  tail call void @ahc_outb(ptr noundef %110, i32 noundef %112, i8 noundef zeroext %conv181) #4
  %113 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %sd, align 4
  %call.i357 = tail call zeroext i8 @ahc_inb(ptr noundef %114, i32 noundef 145) #4
  br label %while.cond189

while.cond189:                                    ; preds = %while.cond189.while.cond189_crit_edge, %do.body182
  %115 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %sd, align 4
  %117 = ptrtoint ptr %sd_status_offset to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %sd_status_offset, align 4
  %call192 = tail call zeroext i8 @ahc_inb(ptr noundef %116, i32 noundef %118) #4
  %conv193 = zext i8 %call192 to i32
  %119 = ptrtoint ptr %sd_RDY to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %sd_RDY, align 2
  %conv195 = zext i16 %120 to i32
  %and196 = and i32 %conv195, %conv193
  %cmp197 = icmp eq i32 %and196, 0
  br i1 %cmp197, label %while.cond189.while.cond189_crit_edge, label %while.end200

while.cond189.while.cond189_crit_edge:            ; preds = %while.cond189
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond189

while.end200:                                     ; preds = %while.cond189
  %121 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %sd, align 4
  %123 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %sd_control_offset, align 4
  %call203 = tail call zeroext i8 @ahc_inb(ptr noundef %122, i32 noundef %124) #4
  %125 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %sd, align 4
  %127 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %sd_control_offset, align 4
  %129 = ptrtoint ptr %sd_CK to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %sd_CK, align 2
  %xor210352 = xor i16 %130, %xor180351
  %conv211 = trunc i16 %xor210352 to i8
  tail call void @ahc_outb(ptr noundef %126, i32 noundef %128, i8 noundef zeroext %conv211) #4
  %131 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %sd, align 4
  %call.i358 = tail call zeroext i8 @ahc_inb(ptr noundef %132, i32 noundef 145) #4
  br label %while.cond215

while.cond215:                                    ; preds = %while.cond215.while.cond215_crit_edge, %while.end200
  %133 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %sd, align 4
  %135 = ptrtoint ptr %sd_status_offset to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %sd_status_offset, align 4
  %call218 = tail call zeroext i8 @ahc_inb(ptr noundef %134, i32 noundef %136) #4
  %conv219 = zext i8 %call218 to i32
  %137 = ptrtoint ptr %sd_RDY to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %sd_RDY, align 2
  %conv221 = zext i16 %138 to i32
  %and222 = and i32 %conv221, %conv219
  %cmp223 = icmp eq i32 %and222, 0
  br i1 %cmp223, label %while.cond215.while.cond215_crit_edge, label %while.end226

while.cond215.while.cond215_crit_edge:            ; preds = %while.cond215
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond215

while.end226:                                     ; preds = %while.cond215
  %139 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %sd, align 4
  %141 = ptrtoint ptr %sd_control_offset to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %sd_control_offset, align 4
  %call229 = tail call zeroext i8 @ahc_inb(ptr noundef %140, i32 noundef %142) #4
  %143 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %sd, align 4
  %145 = ptrtoint ptr %sd_dataout_offset to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %sd_dataout_offset, align 4
  %call232 = tail call zeroext i8 @ahc_inb(ptr noundef %144, i32 noundef %146) #4
  %conv233 = zext i8 %call232 to i32
  %147 = ptrtoint ptr %sd_DI to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %sd_DI, align 2
  %conv234 = zext i16 %148 to i32
  %and235 = and i32 %conv234, %conv233
  %cmp236 = icmp eq i32 %and235, 0
  br i1 %cmp236, label %while.end226.do.body182_crit_edge, label %do.end238

while.end226.do.body182_crit_edge:                ; preds = %while.end226
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body182

do.end238:                                        ; preds = %while.end226
  tail call fastcc void @reset_seeprom(ptr noundef %sd)
  %inc = add nuw i32 %k.0367, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %do.end238.for.end240_crit_edge, label %do.end238.for.body_crit_edge

do.end238.for.body_crit_edge:                     ; preds = %do.end238
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.end238.for.end240_crit_edge:                   ; preds = %do.end238
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end240

for.end240:                                       ; preds = %do.end238.for.end240_crit_edge, %if.end6.for.end240_crit_edge
  tail call fastcc void @send_seeprom_cmd(ptr noundef %sd, ptr noundef nonnull %ewds.0)
  tail call fastcc void @reset_seeprom(ptr noundef %sd)
  br label %cleanup

cleanup:                                          ; preds = %for.end240, %do.end
  %retval.0 = phi i32 [ 1, %for.end240 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ahc_verify_cksum(ptr nocapture noundef readonly %sc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sc to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sc, align 2
  %conv = zext i16 %1 to i32
  %arrayidx.1 = getelementptr i16, ptr %sc, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.1, align 2
  %conv.1 = zext i16 %3 to i32
  %add.1 = add nuw nsw i32 %conv, %conv.1
  %arrayidx.2 = getelementptr i16, ptr %sc, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.2, align 2
  %conv.2 = zext i16 %5 to i32
  %add.2 = add nuw nsw i32 %add.1, %conv.2
  %arrayidx.3 = getelementptr i16, ptr %sc, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.3, align 2
  %conv.3 = zext i16 %7 to i32
  %add.3 = add nuw nsw i32 %add.2, %conv.3
  %arrayidx.4 = getelementptr i16, ptr %sc, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.4, align 2
  %conv.4 = zext i16 %9 to i32
  %add.4 = add nuw nsw i32 %add.3, %conv.4
  %arrayidx.5 = getelementptr i16, ptr %sc, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.5, align 2
  %conv.5 = zext i16 %11 to i32
  %add.5 = add nuw nsw i32 %add.4, %conv.5
  %arrayidx.6 = getelementptr i16, ptr %sc, i32 6
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.6, align 2
  %conv.6 = zext i16 %13 to i32
  %add.6 = add nuw nsw i32 %add.5, %conv.6
  %arrayidx.7 = getelementptr i16, ptr %sc, i32 7
  %14 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.7, align 2
  %conv.7 = zext i16 %15 to i32
  %add.7 = add nuw nsw i32 %add.6, %conv.7
  %arrayidx.8 = getelementptr i16, ptr %sc, i32 8
  %16 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.8, align 2
  %conv.8 = zext i16 %17 to i32
  %add.8 = add nuw nsw i32 %add.7, %conv.8
  %arrayidx.9 = getelementptr i16, ptr %sc, i32 9
  %18 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.9, align 2
  %conv.9 = zext i16 %19 to i32
  %add.9 = add nuw nsw i32 %add.8, %conv.9
  %arrayidx.10 = getelementptr i16, ptr %sc, i32 10
  %20 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.10, align 2
  %conv.10 = zext i16 %21 to i32
  %add.10 = add nuw nsw i32 %add.9, %conv.10
  %arrayidx.11 = getelementptr i16, ptr %sc, i32 11
  %22 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.11, align 2
  %conv.11 = zext i16 %23 to i32
  %add.11 = add nuw nsw i32 %add.10, %conv.11
  %arrayidx.12 = getelementptr i16, ptr %sc, i32 12
  %24 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.12, align 2
  %conv.12 = zext i16 %25 to i32
  %add.12 = add nuw nsw i32 %add.11, %conv.12
  %arrayidx.13 = getelementptr i16, ptr %sc, i32 13
  %26 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.13, align 2
  %conv.13 = zext i16 %27 to i32
  %add.13 = add nuw nsw i32 %add.12, %conv.13
  %arrayidx.14 = getelementptr i16, ptr %sc, i32 14
  %28 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.14, align 2
  %conv.14 = zext i16 %29 to i32
  %add.14 = add nuw nsw i32 %add.13, %conv.14
  %arrayidx.15 = getelementptr i16, ptr %sc, i32 15
  %30 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.15, align 2
  %conv.15 = zext i16 %31 to i32
  %add.15 = add nuw nsw i32 %add.14, %conv.15
  %arrayidx.16 = getelementptr i16, ptr %sc, i32 16
  %32 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.16, align 2
  %conv.16 = zext i16 %33 to i32
  %add.16 = add nuw nsw i32 %add.15, %conv.16
  %arrayidx.17 = getelementptr i16, ptr %sc, i32 17
  %34 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.17, align 2
  %conv.17 = zext i16 %35 to i32
  %add.17 = add nuw nsw i32 %add.16, %conv.17
  %arrayidx.18 = getelementptr i16, ptr %sc, i32 18
  %36 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.18, align 2
  %conv.18 = zext i16 %37 to i32
  %add.18 = add nuw nsw i32 %add.17, %conv.18
  %arrayidx.19 = getelementptr i16, ptr %sc, i32 19
  %38 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx.19, align 2
  %conv.19 = zext i16 %39 to i32
  %add.19 = add nuw nsw i32 %add.18, %conv.19
  %arrayidx.20 = getelementptr i16, ptr %sc, i32 20
  %40 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.20, align 2
  %conv.20 = zext i16 %41 to i32
  %add.20 = add nuw nsw i32 %add.19, %conv.20
  %arrayidx.21 = getelementptr i16, ptr %sc, i32 21
  %42 = ptrtoint ptr %arrayidx.21 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.21, align 2
  %conv.21 = zext i16 %43 to i32
  %add.21 = add nuw nsw i32 %add.20, %conv.21
  %arrayidx.22 = getelementptr i16, ptr %sc, i32 22
  %44 = ptrtoint ptr %arrayidx.22 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.22, align 2
  %conv.22 = zext i16 %45 to i32
  %add.22 = add nuw nsw i32 %add.21, %conv.22
  %arrayidx.23 = getelementptr i16, ptr %sc, i32 23
  %46 = ptrtoint ptr %arrayidx.23 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx.23, align 2
  %conv.23 = zext i16 %47 to i32
  %add.23 = add nuw nsw i32 %add.22, %conv.23
  %arrayidx.24 = getelementptr i16, ptr %sc, i32 24
  %48 = ptrtoint ptr %arrayidx.24 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx.24, align 2
  %conv.24 = zext i16 %49 to i32
  %add.24 = add nuw nsw i32 %add.23, %conv.24
  %arrayidx.25 = getelementptr i16, ptr %sc, i32 25
  %50 = ptrtoint ptr %arrayidx.25 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.25, align 2
  %conv.25 = zext i16 %51 to i32
  %add.25 = add nuw nsw i32 %add.24, %conv.25
  %arrayidx.26 = getelementptr i16, ptr %sc, i32 26
  %52 = ptrtoint ptr %arrayidx.26 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx.26, align 2
  %conv.26 = zext i16 %53 to i32
  %add.26 = add nuw nsw i32 %add.25, %conv.26
  %arrayidx.27 = getelementptr i16, ptr %sc, i32 27
  %54 = ptrtoint ptr %arrayidx.27 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx.27, align 2
  %conv.27 = zext i16 %55 to i32
  %add.27 = add nuw nsw i32 %add.26, %conv.27
  %arrayidx.28 = getelementptr i16, ptr %sc, i32 28
  %56 = ptrtoint ptr %arrayidx.28 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx.28, align 2
  %conv.28 = zext i16 %57 to i32
  %add.28 = add nuw nsw i32 %add.27, %conv.28
  %arrayidx.29 = getelementptr i16, ptr %sc, i32 29
  %58 = ptrtoint ptr %arrayidx.29 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx.29, align 2
  %conv.29 = zext i16 %59 to i32
  %add.29 = add nuw nsw i32 %add.28, %conv.29
  %arrayidx.30 = getelementptr i16, ptr %sc, i32 30
  %60 = ptrtoint ptr %arrayidx.30 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx.30, align 2
  %conv.30 = zext i16 %61 to i32
  %add.30 = add nuw nsw i32 %add.29, %conv.30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.30)
  %cmp1 = icmp eq i32 %add.30, 0
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %checksum3 = getelementptr inbounds %struct.seeprom_config, ptr %sc, i32 0, i32 7
  %62 = ptrtoint ptr %checksum3 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %checksum3, align 2
  %64 = trunc i32 %add.30 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %63, i16 %64)
  %cmp5.not = icmp eq i16 %63, %64
  %spec.select = zext i1 %cmp5.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/aic7xxx/aic7xxx_93cx6.c", i32 237, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ahc_write_seeprom._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ahc_write_seeprom._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @seeprom_read, !7, !"seeprom_read", i1 false, i1 false}
!7 = !{!"../drivers/scsi/aic7xxx/aic7xxx_93cx6.c", i32 90, i32 33}
!8 = !{ptr @seeprom_ewen, !9, !"seeprom_ewen", i1 false, i1 false}
!9 = !{!"../drivers/scsi/aic7xxx/aic7xxx_93cx6.c", i32 81, i32 33}
!10 = !{ptr @seeprom_ewds, !11, !"seeprom_ewds", i1 false, i1 false}
!11 = !{!"../drivers/scsi/aic7xxx/aic7xxx_93cx6.c", i32 82, i32 33}
!12 = !{ptr @seeprom_long_ewen, !13, !"seeprom_long_ewen", i1 false, i1 false}
!13 = !{!"../drivers/scsi/aic7xxx/aic7xxx_93cx6.c", i32 85, i32 33}
!14 = !{ptr @seeprom_long_ewds, !15, !"seeprom_long_ewds", i1 false, i1 false}
!15 = !{!"../drivers/scsi/aic7xxx/aic7xxx_93cx6.c", i32 86, i32 33}
!16 = !{ptr @seeprom_write, !17, !"seeprom_write", i1 false, i1 false}
!17 = !{!"../drivers/scsi/aic7xxx/aic7xxx_93cx6.c", i32 89, i32 33}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
