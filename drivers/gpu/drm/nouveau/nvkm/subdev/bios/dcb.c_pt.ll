; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/bios/dcb.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/dcb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.140, i8 }
%union.anon.140 = type { %struct.anon.144 }
%struct.anon.144 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }

@dcb_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 37, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: DCB table not found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dcb_table\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/bios/dcb.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dcb_table._entry_ptr = internal global ptr @dcb_table._entry, section ".printk_index", align 4
@dcb_table._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 44, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: DCB version 0x%02x unknown\0A\00", [32 x i8] zeroinitializer }, align 32
@dcb_table._entry_ptr.7 = internal global ptr @dcb_table._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DEV_REC\00", [24 x i8] zeroinitializer }, align 32
@dcb_table._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 90, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: DCB contains no useful data\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dcb_table._entry_ptr.12 = internal global ptr @dcb_table._entry.9, section ".printk_index", align 4
@dcb_table._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 94, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: DCB header validation failed\0A\00", [62 x i8] zeroinitializer }, align 32
@dcb_table._entry_ptr.15 = internal global ptr @dcb_table._entry.13, section ".printk_index", align 4
@switch.table.dcb_outp_parse = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 6, i32 10, i32 20], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 6]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 15]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 37, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 44, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 65, i32 37 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 90, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/dcb.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 94, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [28 x i8] c"switch.table.dcb_outp_parse\00", align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @dcb_table._entry, ptr @dcb_table._entry.13, ptr @dcb_table._entry.5, ptr @dcb_table._entry.9, ptr @dcb_table._entry_ptr, ptr @dcb_table._entry_ptr.12, ptr @dcb_table._entry_ptr.15, ptr @dcb_table._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @switch.table.dcb_outp_parse], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcb_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcb_table._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcb_table._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dcb_table._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dcb_outp_parse to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @dcb_table(ptr noundef %bios, ptr nocapture noundef writeonly %ver, ptr nocapture noundef writeonly %hdr, ptr nocapture noundef writeonly %cnt, ptr nocapture noundef writeonly %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %card_type = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %card_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %card_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp ugt i32 %3, 4
  br i1 %cmp, label %if.end, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.end:                                           ; preds = %entry
  %call = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef 54) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %if.end11

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp4 = icmp ugt i32 %5, 1
  br i1 %cmp4, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef %name) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %conv = zext i16 %call to i32
  %call12 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv) #4
  %10 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call12, ptr %ver, align 1
  %conv13 = zext i8 %call12 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %call12)
  %cmp14 = icmp ugt i8 %call12, 65
  br i1 %cmp14, label %do.body17, label %if.else

do.body17:                                        ; preds = %if.end11
  %debug19 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %11 = ptrtoint ptr %debug19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %debug19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp20 = icmp ugt i32 %12, 1
  br i1 %cmp20, label %do.end25, label %do.body17.cleanup_crit_edge

do.body17.cleanup_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end25:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device2, align 4
  %dev27 = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev27, align 8
  %name28 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %16, ptr noundef nonnull @.str.6, ptr noundef %name28, i32 noundef %conv13) #7
  br label %cleanup

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %call12)
  %cmp35 = icmp ugt i8 %call12, 47
  br i1 %cmp35, label %if.then37, label %if.else53

if.then37:                                        ; preds = %if.else
  %add = add nuw nsw i32 %conv, 6
  %call39 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1323089355, i32 %call39)
  %cmp40 = icmp eq i32 %call39, 1323089355
  br i1 %cmp40, label %if.then42, label %if.then37.do.body112_crit_edge

if.then37.do.body112_crit_edge:                   ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body112

if.then42:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #6
  %add44 = add nuw nsw i32 %conv, 1
  %call45 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add44) #4
  %17 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %call45, ptr %hdr, align 1
  %add47 = add nuw nsw i32 %conv, 2
  %call48 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add47) #4
  %18 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call48, ptr %cnt, align 1
  %add50 = add nuw nsw i32 %conv, 3
  %call51 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %add50) #4
  %19 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %call51, ptr %len, align 1
  br label %cleanup

if.else53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %call12)
  %cmp55 = icmp ugt i8 %call12, 31
  br i1 %cmp55, label %if.then57, label %if.else71

if.then57:                                        ; preds = %if.else53
  %add59 = add nuw nsw i32 %conv, 4
  %call60 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add59) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1323089355, i32 %call60)
  %cmp61 = icmp eq i32 %call60, 1323089355
  br i1 %cmp61, label %if.then63, label %if.then57.do.body112_crit_edge

if.then57.do.body112_crit_edge:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body112

if.then63:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  %add65 = add nuw nsw i32 %conv, 2
  %call66 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add65) #4
  %20 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 8, ptr %hdr, align 1
  %conv67 = zext i16 %call66 to i32
  %sub = sub nsw i32 %conv67, %conv
  %div = sdiv i32 %sub, 8
  %conv69 = trunc i32 %div to i8
  %21 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv69, ptr %cnt, align 1
  %22 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 8, ptr %len, align 1
  br label %cleanup

if.else71:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %call12)
  %cmp73 = icmp ugt i8 %call12, 20
  br i1 %cmp73, label %if.then75, label %do.body92

if.then75:                                        ; preds = %if.else71
  %sub77 = add nsw i32 %conv, -7
  %call78 = tail call i32 @nvbios_memcmp(ptr noundef %bios, i32 noundef %sub77, ptr noundef nonnull @.str.8, i32 noundef 7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then80, label %if.then75.do.body112_crit_edge

if.then75.do.body112_crit_edge:                   ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body112

if.then80:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #6
  %add83 = add nuw nsw i32 %conv, 2
  %call84 = tail call zeroext i16 @nvbios_rd16(ptr noundef %bios, i32 noundef %add83) #4
  %23 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 4, ptr %hdr, align 1
  %conv85 = zext i16 %call84 to i32
  %sub87 = sub nsw i32 %conv85, %conv
  %div88 = sdiv i32 %sub87, 10
  %conv89 = trunc i32 %div88 to i8
  %24 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv89, ptr %cnt, align 1
  %25 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 10, ptr %len, align 1
  br label %cleanup

do.body92:                                        ; preds = %if.else71
  %debug94 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %26 = ptrtoint ptr %debug94 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %debug94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp95 = icmp ugt i32 %27, 3
  br i1 %cmp95, label %do.end100, label %do.body92.cleanup_crit_edge

do.body92.cleanup_crit_edge:                      ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end100:                                        ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device2, align 4
  %dev102 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev102 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev102, align 8
  %name103 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.10, ptr noundef %name103) #7
  br label %cleanup

do.body112:                                       ; preds = %if.then75.do.body112_crit_edge, %if.then57.do.body112_crit_edge, %if.then37.do.body112_crit_edge
  %debug114 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 5
  %32 = ptrtoint ptr %debug114 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %debug114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp115 = icmp ugt i32 %33, 1
  br i1 %cmp115, label %do.end120, label %do.body112.cleanup_crit_edge

do.body112.cleanup_crit_edge:                     ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end120:                                        ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device2, align 4
  %dev122 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %dev122 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev122, align 8
  %name123 = getelementptr inbounds %struct.nvkm_subdev, ptr %bios, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %37, ptr noundef nonnull @.str.14, ptr noundef %name123) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end120, %do.body112.cleanup_crit_edge, %do.end100, %do.body92.cleanup_crit_edge, %if.then80, %if.then63, %if.then42, %do.end25, %do.body17.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i16 [ %call, %if.then42 ], [ %call, %if.then63 ], [ %call, %if.then80 ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %do.end25 ], [ 0, %do.body17.cleanup_crit_edge ], [ 0, %do.end100 ], [ 0, %do.body92.cleanup_crit_edge ], [ 0, %do.end120 ], [ 0, %do.body112.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_rd16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_memcmp(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @dcb_outp(ptr noundef %bios, i8 noundef zeroext %idx, ptr nocapture noundef writeonly %ver, ptr nocapture noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %hdr = alloca i8, align 1
  %cnt = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr) #4
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %hdr, align 1, !annotation !32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt) #4
  %1 = ptrtoint ptr %cnt to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %cnt, align 1, !annotation !32
  %call = call zeroext i16 @dcb_table(ptr noundef %bios, ptr noundef %ver, ptr noundef nonnull %hdr, ptr noundef nonnull %cnt, ptr noundef %len)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cnt, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %idx)
  %cmp = icmp ugt i8 %3, %idx
  br i1 %cmp, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %conv1 = zext i8 %idx to i16
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hdr, align 1
  %conv5 = zext i8 %5 to i16
  %add = add i16 %call, %conv5
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %len, align 1
  %conv7 = zext i8 %7 to i16
  %mul = mul nuw i16 %conv7, %conv1
  %add8 = add i16 %add, %mul
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %add8, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr) #4
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @dcb_outp_parse(ptr noundef %bios, i8 noundef zeroext %idx, ptr nocapture noundef %ver, ptr nocapture noundef %len, ptr noundef %outp) local_unnamed_addr #0 align 64 {
entry:
  %hdr.i = alloca i8, align 1
  %cnt.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr.i) #4
  %0 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %hdr.i, align 1, !annotation !32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt.i) #4
  %1 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %cnt.i, align 1, !annotation !32
  %call.i = call zeroext i16 @dcb_table(ptr noundef %bios, ptr noundef %ver, ptr noundef nonnull %hdr.i, ptr noundef nonnull %cnt.i, ptr noundef %len) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i, label %entry.dcb_outp.exit.thread_crit_edge, label %land.lhs.true.i

entry.dcb_outp.exit.thread_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %dcb_outp.exit.thread

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cnt.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %idx)
  %cmp.i = icmp ugt i8 %3, %idx
  br i1 %cmp.i, label %dcb_outp.exit, label %land.lhs.true.i.dcb_outp.exit.thread_crit_edge

land.lhs.true.i.dcb_outp.exit.thread_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dcb_outp.exit.thread

dcb_outp.exit.thread:                             ; preds = %land.lhs.true.i.dcb_outp.exit.thread_crit_edge, %entry.dcb_outp.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #4
  %4 = call ptr @memset(ptr %outp, i32 0, i32 40)
  br label %if.end70

dcb_outp.exit:                                    ; preds = %land.lhs.true.i
  %conv1.i = zext i8 %idx to i16
  %5 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hdr.i, align 1
  %conv5.i = zext i8 %6 to i16
  %add.i = add i16 %call.i, %conv5.i
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len, align 1
  %conv7.i = zext i8 %8 to i16
  %mul.i = mul nuw i16 %conv7.i, %conv1.i
  %add8.i = add i16 %add.i, %mul.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #4
  %9 = call ptr @memset(ptr %outp, i32 0, i32 40)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add8.i)
  %tobool.not = icmp eq i16 %add8.i, 0
  br i1 %tobool.not, label %dcb_outp.exit.if.end70_crit_edge, label %if.then

dcb_outp.exit.if.end70_crit_edge:                 ; preds = %dcb_outp.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70

if.then:                                          ; preds = %dcb_outp.exit
  %10 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %11)
  %cmp = icmp ugt i8 %11, 31
  br i1 %cmp, label %if.end, label %if.then.if.end67_crit_edge

if.then.if.end67_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end67

if.end:                                           ; preds = %if.then
  %conv3 = zext i16 %add8.i to i32
  %call4 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %conv3) #4
  %and = lshr i32 %call4, 24
  %12 = trunc i32 %and to i8
  %conv5 = and i8 %12, 15
  %or = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 9
  %13 = ptrtoint ptr %or to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv5, ptr %or, align 1
  %and6 = lshr i32 %call4, 20
  %14 = trunc i32 %and6 to i8
  %conv8 = and i8 %14, 3
  %location = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 8
  %15 = ptrtoint ptr %location to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv8, ptr %location, align 4
  %and9 = lshr i32 %call4, 16
  %16 = trunc i32 %and9 to i8
  %conv11 = and i8 %16, 15
  %bus = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 7
  %17 = ptrtoint ptr %bus to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv11, ptr %bus, align 1
  %and12 = lshr i32 %call4, 12
  %18 = trunc i32 %and12 to i8
  %conv14 = and i8 %18, 15
  %connector = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 6
  %19 = ptrtoint ptr %connector to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv14, ptr %connector, align 2
  %and15 = lshr i32 %call4, 8
  %20 = trunc i32 %and15 to i8
  %conv17 = and i8 %20, 15
  %heads = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 5
  %21 = ptrtoint ptr %heads to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv17, ptr %heads, align 1
  %22 = trunc i32 %call4 to i8
  %23 = lshr i8 %22, 4
  %i2c_index = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 4
  %24 = ptrtoint ptr %i2c_index to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %i2c_index, align 4
  %and21 = and i32 %call4, 15
  %type = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 3
  %25 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and21, ptr %type, align 4
  %link = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 10
  %26 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %link, align 2
  %27 = ptrtoint ptr %ver to i32
  call void @__asan_load1_noabort(i32 %27)
  %.pr = load i8, ptr %ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %.pr)
  %cmp23 = icmp ugt i8 %.pr, 63
  br i1 %cmp23, label %if.then25, label %if.end.if.end67_crit_edge

if.end.if.end67_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end67

if.then25:                                        ; preds = %if.end
  %add27 = add nuw nsw i32 %conv3, 4
  %call28 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %add27) #4
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %29, label %if.then25.if.end67_crit_edge [
    i32 6, label %sw.bb
    i32 2, label %if.then25.sw.bb47_crit_edge
    i32 3, label %if.then25.sw.bb47_crit_edge127
  ]

if.then25.sw.bb47_crit_edge127:                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb47

if.then25.sw.bb47_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb47

if.then25.if.end67_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end67

sw.bb:                                            ; preds = %if.then25
  %and30 = lshr i32 %call28, 21
  %31 = and i32 %and30, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %32 = icmp ult i32 %31, 3
  br i1 %32, label %switch.lookup, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.lookup:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.dcb_outp_parse, i32 0, i32 %31
  %33 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %33)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %sw.bb.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 30, %sw.bb.sw.epilog_crit_edge ]
  %link_bw37 = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 13, i32 0, i32 2
  %34 = ptrtoint ptr %link_bw37 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink, ptr %link_bw37, align 4
  %and38 = lshr i32 %call28, 24
  %shr39 = and i32 %and38, 15
  %35 = zext i32 %shr39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %shr39, label %sw.default44 [
    i32 15, label %sw.epilog.sw.bb47.sink.split_crit_edge
    i32 4, label %sw.epilog.sw.bb47.sink.split_crit_edge128
    i32 3, label %sw.epilog.sw.bb41_crit_edge
    i32 2, label %sw.epilog.sw.bb41_crit_edge129
  ]

sw.epilog.sw.bb41_crit_edge129:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb41

sw.epilog.sw.bb41_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb41

sw.epilog.sw.bb47.sink.split_crit_edge128:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb47.sink.split

sw.epilog.sw.bb47.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb47.sink.split

sw.bb41:                                          ; preds = %sw.epilog.sw.bb41_crit_edge, %sw.epilog.sw.bb41_crit_edge129
  br label %sw.bb47.sink.split

sw.default44:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb47.sink.split

sw.bb47.sink.split:                               ; preds = %sw.default44, %sw.bb41, %sw.epilog.sw.bb47.sink.split_crit_edge, %sw.epilog.sw.bb47.sink.split_crit_edge128
  %.sink126 = phi i32 [ 2, %sw.bb41 ], [ 1, %sw.default44 ], [ 4, %sw.epilog.sw.bb47.sink.split_crit_edge ], [ 4, %sw.epilog.sw.bb47.sink.split_crit_edge128 ]
  %link_nr = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 13, i32 0, i32 1
  %36 = ptrtoint ptr %link_nr to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink126, ptr %link_nr, align 4
  br label %sw.bb47

sw.bb47:                                          ; preds = %sw.bb47.sink.split, %if.then25.sw.bb47_crit_edge, %if.then25.sw.bb47_crit_edge127
  %37 = trunc i32 %call28 to i8
  %38 = lshr i8 %37, 4
  %conv50 = and i8 %38, 3
  %39 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv50, ptr %link, align 2
  %conv53 = zext i8 %conv50 to i32
  %40 = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 13
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv53, ptr %40, align 4
  %extdev = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 12
  %42 = ptrtoint ptr %extdev to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %extdev, align 4
  %43 = ptrtoint ptr %location to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %location, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp57.not = icmp eq i8 %44, 0
  br i1 %cmp57.not, label %sw.bb47.if.end67_crit_edge, label %if.then59

sw.bb47.if.end67_crit_edge:                       ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end67

if.then59:                                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #6
  %and60 = lshr i32 %call28, 8
  %conv62 = trunc i32 %and60 to i8
  %45 = ptrtoint ptr %extdev to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv62, ptr %extdev, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then59, %sw.bb47.if.end67_crit_edge, %if.then25.if.end67_crit_edge, %if.end.if.end67_crit_edge, %if.then.if.end67_crit_edge
  %dcb.0125 = phi i16 [ %add8.i, %if.then59 ], [ %add8.i, %sw.bb47.if.end67_crit_edge ], [ %add8.i, %if.then25.if.end67_crit_edge ], [ %add8.i, %if.end.if.end67_crit_edge ], [ 0, %if.then.if.end67_crit_edge ]
  %extdev.i = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 12
  %46 = ptrtoint ptr %extdev.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %extdev.i, align 4
  %conv.i = zext i8 %47 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %location.i = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 8
  %48 = ptrtoint ptr %location.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %location.i, align 4
  %conv1.i113 = zext i8 %49 to i32
  %shl2.i = shl nuw nsw i32 %conv1.i113, 4
  %type.i = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 3
  %50 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %type.i, align 4
  %or.i = or i32 %51, %shl.i
  %or3.i = or i32 %or.i, %shl2.i
  %conv4.i = trunc i32 %or3.i to i16
  %hasht = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 1
  %52 = ptrtoint ptr %hasht to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv4.i, ptr %hasht, align 4
  %heads.i = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 5
  %53 = ptrtoint ptr %heads.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %heads.i, align 1
  %conv.i114 = zext i8 %54 to i16
  %shl.i115 = shl nuw i16 %conv.i114, 8
  %link.i = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 10
  %55 = ptrtoint ptr %link.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %link.i, align 2
  %conv1.i116 = zext i8 %56 to i16
  %shl2.i117 = shl nuw nsw i16 %conv1.i116, 6
  %or.i118 = or i16 %shl2.i117, %shl.i115
  %or3.i119 = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 9
  %57 = ptrtoint ptr %or3.i119 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %or3.i119, align 1
  %conv4.i120 = zext i8 %58 to i16
  %or5.i = or i16 %or.i118, %conv4.i120
  %hashm = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 2
  %59 = ptrtoint ptr %hashm to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %or5.i, ptr %hashm, align 2
  br label %if.end70

if.end70:                                         ; preds = %if.end67, %dcb_outp.exit.if.end70_crit_edge, %dcb_outp.exit.thread
  %dcb.1 = phi i16 [ %dcb.0125, %if.end67 ], [ 0, %dcb_outp.exit.if.end70_crit_edge ], [ 0, %dcb_outp.exit.thread ]
  ret i16 %dcb.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @dcb_outp_match(ptr noundef %bios, i16 noundef zeroext %type, i16 noundef zeroext %mask, ptr nocapture noundef %ver, ptr nocapture noundef %len, ptr noundef %outp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %heads.i = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 5
  %call26 = tail call zeroext i16 @dcb_outp_parse(ptr noundef %bios, i8 noundef zeroext 0, ptr noundef %ver, ptr noundef %len, ptr noundef %outp)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call26)
  %tobool.not27 = icmp eq i16 %call26, 0
  br i1 %tobool.not27, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %location.i = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 8
  %type.i = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 3
  %link.i = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 10
  %or3.i24 = getelementptr inbounds %struct.dcb_output, ptr %outp, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %if.end14.while.body_crit_edge, %while.body.lr.ph
  %call29 = phi i16 [ %call26, %while.body.lr.ph ], [ %call, %if.end14.while.body_crit_edge ]
  %inc28 = phi i16 [ 1, %while.body.lr.ph ], [ %inc, %if.end14.while.body_crit_edge ]
  %0 = ptrtoint ptr %location.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %location.i, align 4
  %conv1.i = zext i8 %1 to i32
  %shl2.i = shl nuw nsw i32 %conv1.i, 4
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  %or3.i = or i32 %shl2.i, %3
  %conv4.i = trunc i32 %or3.i to i16
  %4 = xor i16 %conv4.i, %type
  %5 = and i16 %4, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp = icmp eq i16 %5, 0
  br i1 %cmp, label %if.then, label %while.body.if.end14_crit_edge

while.body.if.end14_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then:                                          ; preds = %while.body
  %6 = ptrtoint ptr %heads.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %heads.i, align 1
  %conv.i19 = zext i8 %7 to i16
  %shl.i20 = shl nuw i16 %conv.i19, 8
  %8 = ptrtoint ptr %link.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %link.i, align 2
  %conv1.i21 = zext i8 %9 to i16
  %shl2.i22 = shl nuw nsw i16 %conv1.i21, 6
  %or.i23 = or i16 %shl2.i22, %shl.i20
  %10 = ptrtoint ptr %or3.i24 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %or3.i24, align 1
  %conv4.i25 = zext i8 %11 to i16
  %or5.i = or i16 %or.i23, %conv4.i25
  %and918 = and i16 %or5.i, %mask
  call void @__sanitizer_cov_trace_cmp2(i16 %and918, i16 %mask)
  %cmp11 = icmp eq i16 %and918, %mask
  br i1 %cmp11, label %if.then.while.end_crit_edge, label %if.then.if.end14_crit_edge

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end14:                                         ; preds = %if.then.if.end14_crit_edge, %while.body.if.end14_crit_edge
  %inc = add i16 %inc28, 1
  %conv = trunc i16 %inc28 to i8
  %call = tail call zeroext i16 @dcb_outp_parse(ptr noundef %bios, i8 noundef zeroext %conv, ptr noundef %ver, ptr noundef %len, ptr noundef %outp)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %if.end14.while.end_crit_edge, label %if.end14.while.body_crit_edge

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end14.while.end_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end14.while.end_crit_edge, %if.then.while.end_crit_edge, %entry.while.end_crit_edge
  %call.lcssa = phi i16 [ 0, %entry.while.end_crit_edge ], [ %call29, %if.then.while.end_crit_edge ], [ 0, %if.end14.while.end_crit_edge ]
  ret i16 %call.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dcb_outp_foreach(ptr noundef %bios, ptr noundef %data, ptr nocapture noundef readonly %exec) local_unnamed_addr #0 align 64 {
entry:
  %hdr.i = alloca i8, align 1
  %cnt.i = alloca i8, align 1
  %ver = alloca i8, align 1
  %len = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ver) #4
  %0 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %ver, align 1, !annotation !32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #4
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %len, align 1, !annotation !32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr.i) #4
  %2 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %hdr.i, align 1, !annotation !32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt.i) #4
  %3 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %cnt.i, align 1, !annotation !32
  %call.i45 = call zeroext i16 @dcb_table(ptr noundef %bios, ptr noundef nonnull %ver, ptr noundef nonnull %hdr.i, ptr noundef nonnull %cnt.i, ptr noundef nonnull %len) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i45)
  %tobool.not.i46 = icmp eq i16 %call.i45, 0
  br i1 %tobool.not.i46, label %entry.dcb_outp.exit.thread_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.dcb_outp.exit.thread_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %dcb_outp.exit.thread

land.lhs.true.i:                                  ; preds = %while.cond.backedge.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call.i48 = phi i16 [ %call.i, %while.cond.backedge.land.lhs.true.i_crit_edge ], [ %call.i45, %entry.land.lhs.true.i_crit_edge ]
  %inc47 = phi i32 [ %inc, %while.cond.backedge.land.lhs.true.i_crit_edge ], [ 0, %entry.land.lhs.true.i_crit_edge ]
  %conv = trunc i32 %inc47 to i8
  %4 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cnt.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %conv)
  %cmp.i = icmp ugt i8 %5, %conv
  br i1 %cmp.i, label %dcb_outp.exit, label %land.lhs.true.i.dcb_outp.exit.thread_crit_edge

land.lhs.true.i.dcb_outp.exit.thread_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dcb_outp.exit.thread

dcb_outp.exit.thread:                             ; preds = %while.cond.backedge.dcb_outp.exit.thread_crit_edge, %land.lhs.true.i.dcb_outp.exit.thread_crit_edge, %entry.dcb_outp.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #4
  br label %cleanup

dcb_outp.exit:                                    ; preds = %land.lhs.true.i
  %6 = trunc i32 %inc47 to i16
  %conv1.i = and i16 %6, 255
  %7 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hdr.i, align 1
  %conv5.i = zext i8 %8 to i16
  %add.i = add i16 %call.i48, %conv5.i
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %len, align 1
  %conv7.i = zext i8 %10 to i16
  %mul.i = mul nuw i16 %conv1.i, %conv7.i
  %add8.i = add i16 %add.i, %mul.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cnt.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %hdr.i) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add8.i)
  %tobool.not = icmp eq i16 %add8.i, 0
  br i1 %tobool.not, label %dcb_outp.exit.cleanup_crit_edge, label %while.body

dcb_outp.exit.cleanup_crit_edge:                  ; preds = %dcb_outp.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.body:                                       ; preds = %dcb_outp.exit
  %conv1 = zext i16 %add8.i to i32
  %call2 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %conv1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %while.body
  %call5 = tail call i32 @nvbios_rd32(ptr noundef %bios, i32 noundef %conv1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv1) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %call11)
  %cmp13 = icmp eq i8 %call11, 15
  br i1 %cmp13, label %if.end9.while.cond.backedge_crit_edge, label %if.end16

if.end9.while.cond.backedge_crit_edge:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end23.while.cond.backedge_crit_edge, %if.end9.while.cond.backedge_crit_edge
  %inc = add i32 %inc47, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %hdr.i) #4
  %11 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %hdr.i, align 1, !annotation !32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cnt.i) #4
  %12 = ptrtoint ptr %cnt.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %cnt.i, align 1, !annotation !32
  %call.i = call zeroext i16 @dcb_table(ptr noundef %bios, ptr noundef nonnull %ver, ptr noundef nonnull %hdr.i, ptr noundef nonnull %cnt.i, ptr noundef nonnull %len) #4
  %tobool.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i, label %while.cond.backedge.dcb_outp.exit.thread_crit_edge, label %while.cond.backedge.land.lhs.true.i_crit_edge

while.cond.backedge.land.lhs.true.i_crit_edge:    ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

while.cond.backedge.dcb_outp.exit.thread_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %dcb_outp.exit.thread

if.end16:                                         ; preds = %if.end9
  %call18 = tail call zeroext i8 @nvbios_rd08(ptr noundef %bios, i32 noundef %conv1) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %call18)
  %cmp20 = icmp eq i8 %call18, 14
  br i1 %cmp20, label %if.end16.cleanup_crit_edge, label %if.end23

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %call24 = tail call i32 %exec(ptr noundef %bios, ptr noundef %data, i32 noundef %inc47, i16 noundef zeroext %add8.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end23.while.cond.backedge_crit_edge, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end23.while.cond.backedge_crit_edge:           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.backedge

cleanup:                                          ; preds = %if.end23.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %while.body.cleanup_crit_edge, %dcb_outp.exit.cleanup_crit_edge, %dcb_outp.exit.thread
  %retval.0 = phi i32 [ 0, %dcb_outp.exit.thread ], [ 0, %dcb_outp.exit.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ %call24, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ver) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !19, !21, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/dcb.c", i32 37, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @dcb_table._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @dcb_table._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/dcb.c", i32 44, i32 3}
!10 = !{ptr @dcb_table._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @dcb_table._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/dcb.c", i32 65, i32 37}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/dcb.c", i32 90, i32 3}
!16 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @dcb_table._entry.9, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @dcb_table._entry_ptr.12, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/bios/dcb.c", i32 94, i32 2}
!21 = !{ptr @dcb_table._entry.13, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @dcb_table._entry_ptr.15, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"auto-init"}
