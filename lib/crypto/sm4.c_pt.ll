; ModuleID = '/llk/IR_all_yes/lib/crypto/sm4.c_pt.bc'
source_filename = "../lib/crypto/sm4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sm4_expandkey\22, \22a\22\09"
module asm "\09.weak\09__crc_sm4_expandkey\09\09\09\09"
module asm "\09.long\09__crc_sm4_expandkey\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sm4_expandkey:\09\09\09\09\09"
module asm "\09.asciz \09\22sm4_expandkey\22\09\09\09\09\09"
module asm "__kstrtabns_sm4_expandkey:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sm4_crypt_block\22, \22a\22\09"
module asm "\09.weak\09__crc_sm4_crypt_block\09\09\09\09"
module asm "\09.long\09__crc_sm4_crypt_block\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sm4_crypt_block:\09\09\09\09\09"
module asm "\09.asciz \09\22sm4_crypt_block\22\09\09\09\09\09"
module asm "__kstrtabns_sm4_crypt_block:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sm4_ctx = type { [32 x i32], [32 x i32] }

@ck = internal unnamed_addr constant [32 x i32] [i32 462357, i32 472066609, i32 943670861, i32 1415275113, i32 1886879365, i32 -1936483679, i32 -1464879427, i32 -993275175, i32 -521670923, i32 -66909679, i32 404694573, i32 876298825, i32 1347903077, i32 1819507329, i32 -2003855715, i32 -1532251463, i32 -1060647211, i32 -589042959, i32 -117504499, i32 337322537, i32 808926789, i32 1280531041, i32 1752135293, i32 -2071227751, i32 -1599623499, i32 -1128019247, i32 -656414995, i32 -184876535, i32 269950501, i32 741554753, i32 1213159005, i32 1684763257], align 128
@__kstrtab_sm4_expandkey = external dso_local constant [0 x i8], align 1
@__kstrtabns_sm4_expandkey = external dso_local constant [0 x i8], align 1
@__ksymtab_sm4_expandkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sm4_expandkey to i32), ptr @__kstrtab_sm4_expandkey, ptr @__kstrtabns_sm4_expandkey }, section "___ksymtab_gpl+sm4_expandkey", align 4
@__kstrtab_sm4_crypt_block = external dso_local constant [0 x i8], align 1
@__kstrtabns_sm4_crypt_block = external dso_local constant [0 x i8], align 1
@__ksymtab_sm4_crypt_block = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sm4_crypt_block to i32), ptr @__kstrtab_sm4_crypt_block, ptr @__kstrtabns_sm4_crypt_block }, section "___ksymtab_gpl+sm4_crypt_block", align 4
@__UNIQUE_ID_description173 = internal constant [39 x i8] c"libsm4.description=Generic SM4 library\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [30 x i8] c"libsm4.file=lib/crypto/libsm4\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [22 x i8] c"libsm4.license=GPL v2\00", section ".modinfo", align 1
@sbox = internal unnamed_addr constant [256 x i8] c"\D6\90\E9\FE\CC\E1=\B7\16\B6\14\C2(\FB,\05+g\9Av*\BE\04\C3\AAD\13&I\86\06\99\9CBP\F4\91\EF\98z3T\0BC\ED\CF\ACb\E4\B3\1C\A9\C9\08\E8\95\80\DF\94\FAu\8F?\A6G\07\A7\FC\F3s\17\BA\83Y<\19\E6\85O\A8hk\81\B2qd\DA\8B\F8\EB\0FKpV\9D5\1E$\0E^cX\D1\A2%\22|;\01!x\87\D4\00FW\9F\D3'RL6\02\E7\A0\C4\C8\9E\EA\BF\8A\D2@\C78\B5\A3\F7\F2\CE\F9a\15\A1\E0\AE]\A4\9B4\1AU\AD\9320\F5\8C\B1\E3\1D\F6\E2.\82f\CA`\C0)#\AB\0DSNo\D5\DB7E\DE\FD\8E/\03\FFjrml[Q\8D\1B\AF\92\BB\DD\BC\7F\11\D9\\A\1F\10Z\D8\0A\C11\88\A5\CD{\BD-t\D0\12\B8\E5\B4\B0\89i\97J\0C\96w~e\B9\F1\09\C5n\C6\84\18\F0}\EC:\DCM y\EE_>\D7\CB9H", align 128
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__ksymtab_sm4_crypt_block, ptr @__ksymtab_sm4_expandkey], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm4_expandkey(ptr nocapture noundef writeonly %ctx, ptr nocapture noundef readonly %in_key, i32 noundef %key_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %key_len)
  %cmp.not = icmp eq i32 %key_len, 16
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %in_key to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %in_key, align 1
  %xor = xor i32 %1, -1548633402
  %arrayidx2 = getelementptr i32, ptr %in_key, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %arrayidx2, align 1
  %xor4 = xor i32 %3, 1453994832
  %arrayidx6 = getelementptr i32, ptr %in_key, i32 2
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %arrayidx6, align 1
  %xor8 = xor i32 %5, 1736282519
  %arrayidx10 = getelementptr i32, ptr %in_key, i32 3
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %arrayidx10, align 1
  %xor12 = xor i32 %7, -1301273892
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.0209 = phi i32 [ 0, %if.end ], [ %add87, %for.body.for.body_crit_edge ]
  %rk.sroa.0.0208 = phi i32 [ %xor, %if.end ], [ %xor24, %for.body.for.body_crit_edge ]
  %rk.sroa.11.0207 = phi i32 [ %xor4, %if.end ], [ %xor35, %for.body.for.body_crit_edge ]
  %rk.sroa.20.0206 = phi i32 [ %xor8, %if.end ], [ %xor46, %for.body.for.body_crit_edge ]
  %rk.sroa.29.0205 = phi i32 [ %xor12, %if.end ], [ %xor57, %for.body.for.body_crit_edge ]
  %arrayidx20 = getelementptr [32 x i32], ptr @ck, i32 0, i32 %i.0209
  %8 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx20, align 16
  %xor17 = xor i32 %rk.sroa.20.0206, %rk.sroa.29.0205
  %xor19 = xor i32 %xor17, %rk.sroa.11.0207
  %xor21 = xor i32 %xor19, %9
  %and.i.i = and i32 %xor21, 255
  %arrayidx.i.i = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %and.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %11 to i32
  %shr.i.i = lshr i32 %xor21, 8
  %and1.i.i = and i32 %shr.i.i, 255
  %arrayidx2.i.i = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %and1.i.i
  %12 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx2.i.i, align 1
  %conv3.i.i = zext i8 %13 to i32
  %shl.i.i = shl nuw nsw i32 %conv3.i.i, 8
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  %shr4.i.i = lshr i32 %xor21, 16
  %and5.i.i = and i32 %shr4.i.i, 255
  %arrayidx6.i.i = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %and5.i.i
  %14 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx6.i.i, align 1
  %conv7.i.i = zext i8 %15 to i32
  %shl8.i.i = shl nuw nsw i32 %conv7.i.i, 16
  %or9.i.i = or i32 %or.i.i, %shl8.i.i
  %shr10.i.i = lshr i32 %xor21, 24
  %arrayidx12.i.i = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %shr10.i.i
  %16 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx12.i.i, align 1
  %conv13.i.i = zext i8 %17 to i32
  %shl14.i.i = shl nuw i32 %conv13.i.i, 24
  %or15.i.i = or i32 %or9.i.i, %shl14.i.i
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %or9.i.i, i32 %or15.i.i, i32 13) #2
  %or.i5.i.i = tail call i32 @llvm.fshl.i32(i32 %or.i.i, i32 %or15.i.i, i32 23) #2
  %xor.i.i = xor i32 %or15.i.i, %rk.sroa.0.0208
  %xor2.i.i = xor i32 %xor.i.i, %or.i.i.i
  %xor24 = xor i32 %xor2.i.i, %or.i5.i.i
  %add30 = or i32 %i.0209, 1
  %arrayidx31 = getelementptr [32 x i32], ptr @ck, i32 0, i32 %add30
  %18 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx31, align 4
  %xor29 = xor i32 %xor17, %19
  %xor32 = xor i32 %xor29, %xor24
  %and.i.i133 = and i32 %xor32, 255
  %arrayidx.i.i134 = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %and.i.i133
  %20 = ptrtoint ptr %arrayidx.i.i134 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.i134, align 1
  %conv.i.i135 = zext i8 %21 to i32
  %shr.i.i136 = lshr i32 %xor32, 8
  %and1.i.i137 = and i32 %shr.i.i136, 255
  %arrayidx2.i.i138 = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %and1.i.i137
  %22 = ptrtoint ptr %arrayidx2.i.i138 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx2.i.i138, align 1
  %conv3.i.i139 = zext i8 %23 to i32
  %shl.i.i140 = shl nuw nsw i32 %conv3.i.i139, 8
  %or.i.i141 = or i32 %shl.i.i140, %conv.i.i135
  %shr4.i.i142 = lshr i32 %xor32, 16
  %and5.i.i143 = and i32 %shr4.i.i142, 255
  %arrayidx6.i.i144 = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %and5.i.i143
  %24 = ptrtoint ptr %arrayidx6.i.i144 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx6.i.i144, align 1
  %conv7.i.i145 = zext i8 %25 to i32
  %shl8.i.i146 = shl nuw nsw i32 %conv7.i.i145, 16
  %or9.i.i147 = or i32 %or.i.i141, %shl8.i.i146
  %shr10.i.i148 = lshr i32 %xor32, 24
  %arrayidx12.i.i149 = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %shr10.i.i148
  %26 = ptrtoint ptr %arrayidx12.i.i149 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx12.i.i149, align 1
  %conv13.i.i150 = zext i8 %27 to i32
  %shl14.i.i151 = shl nuw i32 %conv13.i.i150, 24
  %or15.i.i152 = or i32 %or9.i.i147, %shl14.i.i151
  %or.i.i.i153 = tail call i32 @llvm.fshl.i32(i32 %or9.i.i147, i32 %or15.i.i152, i32 13) #2
  %or.i5.i.i155 = tail call i32 @llvm.fshl.i32(i32 %or.i.i141, i32 %or15.i.i152, i32 23) #2
  %xor.i.i154 = xor i32 %or15.i.i152, %rk.sroa.11.0207
  %xor2.i.i156 = xor i32 %xor.i.i154, %or.i.i.i153
  %xor35 = xor i32 %xor2.i.i156, %or.i5.i.i155
  %xor38 = xor i32 %xor24, %rk.sroa.29.0205
  %add41 = or i32 %i.0209, 2
  %arrayidx42 = getelementptr [32 x i32], ptr @ck, i32 0, i32 %add41
  %28 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx42, align 8
  %xor40 = xor i32 %xor38, %29
  %xor43 = xor i32 %xor40, %xor35
  %and.i.i157 = and i32 %xor43, 255
  %arrayidx.i.i158 = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %and.i.i157
  %30 = ptrtoint ptr %arrayidx.i.i158 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.i158, align 1
  %conv.i.i159 = zext i8 %31 to i32
  %shr.i.i160 = lshr i32 %xor43, 8
  %and1.i.i161 = and i32 %shr.i.i160, 255
  %arrayidx2.i.i162 = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %and1.i.i161
  %32 = ptrtoint ptr %arrayidx2.i.i162 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx2.i.i162, align 1
  %conv3.i.i163 = zext i8 %33 to i32
  %shl.i.i164 = shl nuw nsw i32 %conv3.i.i163, 8
  %or.i.i165 = or i32 %shl.i.i164, %conv.i.i159
  %shr4.i.i166 = lshr i32 %xor43, 16
  %and5.i.i167 = and i32 %shr4.i.i166, 255
  %arrayidx6.i.i168 = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %and5.i.i167
  %34 = ptrtoint ptr %arrayidx6.i.i168 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx6.i.i168, align 1
  %conv7.i.i169 = zext i8 %35 to i32
  %shl8.i.i170 = shl nuw nsw i32 %conv7.i.i169, 16
  %or9.i.i171 = or i32 %or.i.i165, %shl8.i.i170
  %shr10.i.i172 = lshr i32 %xor43, 24
  %arrayidx12.i.i173 = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %shr10.i.i172
  %36 = ptrtoint ptr %arrayidx12.i.i173 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx12.i.i173, align 1
  %conv13.i.i174 = zext i8 %37 to i32
  %shl14.i.i175 = shl nuw i32 %conv13.i.i174, 24
  %or15.i.i176 = or i32 %or9.i.i171, %shl14.i.i175
  %or.i.i.i177 = tail call i32 @llvm.fshl.i32(i32 %or9.i.i171, i32 %or15.i.i176, i32 13) #2
  %or.i5.i.i179 = tail call i32 @llvm.fshl.i32(i32 %or.i.i165, i32 %or15.i.i176, i32 23) #2
  %xor.i.i178 = xor i32 %or15.i.i176, %rk.sroa.20.0206
  %xor2.i.i180 = xor i32 %xor.i.i178, %or.i.i.i177
  %xor46 = xor i32 %xor2.i.i180, %or.i5.i.i179
  %xor49 = xor i32 %xor35, %xor24
  %add52 = or i32 %i.0209, 3
  %arrayidx53 = getelementptr [32 x i32], ptr @ck, i32 0, i32 %add52
  %38 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx53, align 4
  %xor51 = xor i32 %xor49, %39
  %xor54 = xor i32 %xor51, %xor46
  %and.i.i181 = and i32 %xor54, 255
  %arrayidx.i.i182 = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %and.i.i181
  %40 = ptrtoint ptr %arrayidx.i.i182 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i.i182, align 1
  %conv.i.i183 = zext i8 %41 to i32
  %shr.i.i184 = lshr i32 %xor54, 8
  %and1.i.i185 = and i32 %shr.i.i184, 255
  %arrayidx2.i.i186 = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %and1.i.i185
  %42 = ptrtoint ptr %arrayidx2.i.i186 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx2.i.i186, align 1
  %conv3.i.i187 = zext i8 %43 to i32
  %shl.i.i188 = shl nuw nsw i32 %conv3.i.i187, 8
  %or.i.i189 = or i32 %shl.i.i188, %conv.i.i183
  %shr4.i.i190 = lshr i32 %xor54, 16
  %and5.i.i191 = and i32 %shr4.i.i190, 255
  %arrayidx6.i.i192 = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %and5.i.i191
  %44 = ptrtoint ptr %arrayidx6.i.i192 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx6.i.i192, align 1
  %conv7.i.i193 = zext i8 %45 to i32
  %shl8.i.i194 = shl nuw nsw i32 %conv7.i.i193, 16
  %or9.i.i195 = or i32 %or.i.i189, %shl8.i.i194
  %shr10.i.i196 = lshr i32 %xor54, 24
  %arrayidx12.i.i197 = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %shr10.i.i196
  %46 = ptrtoint ptr %arrayidx12.i.i197 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx12.i.i197, align 1
  %conv13.i.i198 = zext i8 %47 to i32
  %shl14.i.i199 = shl nuw i32 %conv13.i.i198, 24
  %or15.i.i200 = or i32 %or9.i.i195, %shl14.i.i199
  %or.i.i.i201 = tail call i32 @llvm.fshl.i32(i32 %or9.i.i195, i32 %or15.i.i200, i32 13) #2
  %or.i5.i.i203 = tail call i32 @llvm.fshl.i32(i32 %or.i.i189, i32 %or15.i.i200, i32 23) #2
  %xor.i.i202 = xor i32 %or15.i.i200, %rk.sroa.29.0205
  %xor2.i.i204 = xor i32 %xor.i.i202, %or.i.i.i201
  %xor57 = xor i32 %xor2.i.i204, %or.i5.i.i203
  %arrayidx60 = getelementptr [32 x i32], ptr %ctx, i32 0, i32 %i.0209
  %48 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %xor24, ptr %arrayidx60, align 4
  %arrayidx64 = getelementptr [32 x i32], ptr %ctx, i32 0, i32 %add30
  %49 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %xor35, ptr %arrayidx64, align 4
  %arrayidx68 = getelementptr [32 x i32], ptr %ctx, i32 0, i32 %add41
  %50 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %xor46, ptr %arrayidx68, align 4
  %arrayidx72 = getelementptr [32 x i32], ptr %ctx, i32 0, i32 %add52
  %51 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %xor57, ptr %arrayidx72, align 4
  %sub = sub nuw nsw i32 31, %i.0209
  %arrayidx74 = getelementptr %struct.sm4_ctx, ptr %ctx, i32 0, i32 1, i32 %sub
  %52 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %xor24, ptr %arrayidx74, align 4
  %sub77 = sub nuw nsw i32 30, %i.0209
  %arrayidx78 = getelementptr %struct.sm4_ctx, ptr %ctx, i32 0, i32 1, i32 %sub77
  %53 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %xor35, ptr %arrayidx78, align 4
  %sub81 = sub nuw nsw i32 29, %i.0209
  %arrayidx82 = getelementptr %struct.sm4_ctx, ptr %ctx, i32 0, i32 1, i32 %sub81
  %54 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %xor46, ptr %arrayidx82, align 4
  %sub85 = sub nuw nsw i32 28, %i.0209
  %arrayidx86 = getelementptr %struct.sm4_ctx, ptr %ctx, i32 0, i32 1, i32 %sub85
  %55 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %xor57, ptr %arrayidx86, align 4
  %add87 = add nuw nsw i32 %i.0209, 4
  %cmp14 = icmp ult i32 %i.0209, 28
  br i1 %cmp14, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sm4_crypt_block(ptr nocapture noundef readonly %rk, ptr nocapture noundef writeonly %out, ptr nocapture noundef readonly %in) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %in to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %in, align 1
  %add.ptr1 = getelementptr i8, ptr %in, i32 4
  %2 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr1, align 1
  %add.ptr4 = getelementptr i8, ptr %in, i32 8
  %4 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr4, align 1
  %add.ptr7 = getelementptr i8, ptr %in, i32 12
  %6 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %add.ptr7, align 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0180 = phi i32 [ 0, %entry ], [ %add41, %for.body.for.body_crit_edge ]
  %x.sroa.0.0179 = phi i32 [ %1, %entry ], [ %xor3.i, %for.body.for.body_crit_edge ]
  %x.sroa.10.0178 = phi i32 [ %3, %entry ], [ %xor3.i111, %for.body.for.body_crit_edge ]
  %x.sroa.18.0177 = phi i32 [ %5, %entry ], [ %xor3.i143, %for.body.for.body_crit_edge ]
  %x.sroa.26.0176 = phi i32 [ %7, %entry ], [ %xor3.i175, %for.body.for.body_crit_edge ]
  %arrayidx14 = getelementptr i32, ptr %rk, i32 %i.0180
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx14, align 4
  %xor.i = xor i32 %x.sroa.18.0177, %x.sroa.26.0176
  %xor1.i = xor i32 %xor.i, %x.sroa.10.0178
  %xor2.i = xor i32 %xor1.i, %9
  %and.i.i.i = and i32 %xor2.i, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %and.i.i.i
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %11 to i32
  %shr.i.i.i = lshr i32 %xor2.i, 8
  %and1.i.i.i = and i32 %shr.i.i.i, 255
  %arrayidx2.i.i.i = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %and1.i.i.i
  %12 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx2.i.i.i, align 1
  %conv3.i.i.i = zext i8 %13 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv3.i.i.i, 8
  %or.i.i.i = or i32 %shl.i.i.i, %conv.i.i.i
  %shr4.i.i.i = lshr i32 %xor2.i, 16
  %and5.i.i.i = and i32 %shr4.i.i.i, 255
  %arrayidx6.i.i.i = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %and5.i.i.i
  %14 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx6.i.i.i, align 1
  %conv7.i.i.i = zext i8 %15 to i32
  %shl8.i.i.i = shl nuw nsw i32 %conv7.i.i.i, 16
  %or9.i.i.i = or i32 %or.i.i.i, %shl8.i.i.i
  %shr10.i.i.i = lshr i32 %xor2.i, 24
  %arrayidx12.i.i.i = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %shr10.i.i.i
  %16 = ptrtoint ptr %arrayidx12.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx12.i.i.i, align 1
  %conv13.i.i.i = zext i8 %17 to i32
  %shl14.i.i.i = shl nuw i32 %conv13.i.i.i, 24
  %or15.i.i.i = or i32 %or9.i.i.i, %shl14.i.i.i
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %or15.i.i.i, i32 %shl14.i.i.i, i32 2) #2
  %or.i11.i.i.i = tail call i32 @llvm.fshl.i32(i32 %or9.i.i.i, i32 %or15.i.i.i, i32 10) #2
  %or.i12.i.i.i = tail call i32 @llvm.fshl.i32(i32 %or.i.i.i, i32 %or15.i.i.i, i32 18) #2
  %or.i13.i.i.i = tail call i32 @llvm.fshl.i32(i32 %conv.i.i.i, i32 %or15.i.i.i, i32 24) #2
  %xor.i.i.i = xor i32 %or15.i.i.i, %x.sroa.0.0179
  %xor2.i.i.i = xor i32 %xor.i.i.i, %or.i.i.i.i
  %xor4.i.i.i = xor i32 %xor2.i.i.i, %or.i11.i.i.i
  %xor6.i.i.i = xor i32 %xor4.i.i.i, %or.i12.i.i.i
  %xor3.i = xor i32 %xor6.i.i.i, %or.i13.i.i.i
  %add21 = or i32 %i.0180, 1
  %arrayidx22 = getelementptr i32, ptr %rk, i32 %add21
  %18 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx22, align 4
  %xor1.i81 = xor i32 %xor.i, %19
  %xor2.i82 = xor i32 %xor1.i81, %xor3.i
  %and.i.i.i83 = and i32 %xor2.i82, 255
  %arrayidx.i.i.i84 = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %and.i.i.i83
  %20 = ptrtoint ptr %arrayidx.i.i.i84 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.i.i84, align 1
  %conv.i.i.i85 = zext i8 %21 to i32
  %shr.i.i.i86 = lshr i32 %xor2.i82, 8
  %and1.i.i.i87 = and i32 %shr.i.i.i86, 255
  %arrayidx2.i.i.i88 = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %and1.i.i.i87
  %22 = ptrtoint ptr %arrayidx2.i.i.i88 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx2.i.i.i88, align 1
  %conv3.i.i.i89 = zext i8 %23 to i32
  %shl.i.i.i90 = shl nuw nsw i32 %conv3.i.i.i89, 8
  %or.i.i.i91 = or i32 %shl.i.i.i90, %conv.i.i.i85
  %shr4.i.i.i92 = lshr i32 %xor2.i82, 16
  %and5.i.i.i93 = and i32 %shr4.i.i.i92, 255
  %arrayidx6.i.i.i94 = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %and5.i.i.i93
  %24 = ptrtoint ptr %arrayidx6.i.i.i94 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx6.i.i.i94, align 1
  %conv7.i.i.i95 = zext i8 %25 to i32
  %shl8.i.i.i96 = shl nuw nsw i32 %conv7.i.i.i95, 16
  %or9.i.i.i97 = or i32 %or.i.i.i91, %shl8.i.i.i96
  %shr10.i.i.i98 = lshr i32 %xor2.i82, 24
  %arrayidx12.i.i.i99 = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %shr10.i.i.i98
  %26 = ptrtoint ptr %arrayidx12.i.i.i99 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx12.i.i.i99, align 1
  %conv13.i.i.i100 = zext i8 %27 to i32
  %shl14.i.i.i101 = shl nuw i32 %conv13.i.i.i100, 24
  %or15.i.i.i102 = or i32 %or9.i.i.i97, %shl14.i.i.i101
  %or.i.i.i.i103 = tail call i32 @llvm.fshl.i32(i32 %or15.i.i.i102, i32 %shl14.i.i.i101, i32 2) #2
  %or.i11.i.i.i104 = tail call i32 @llvm.fshl.i32(i32 %or9.i.i.i97, i32 %or15.i.i.i102, i32 10) #2
  %or.i12.i.i.i105 = tail call i32 @llvm.fshl.i32(i32 %or.i.i.i91, i32 %or15.i.i.i102, i32 18) #2
  %or.i13.i.i.i106 = tail call i32 @llvm.fshl.i32(i32 %conv.i.i.i85, i32 %or15.i.i.i102, i32 24) #2
  %xor.i.i.i107 = xor i32 %or15.i.i.i102, %x.sroa.10.0178
  %xor2.i.i.i108 = xor i32 %xor.i.i.i107, %or.i.i.i.i103
  %xor4.i.i.i109 = xor i32 %xor2.i.i.i108, %or.i11.i.i.i104
  %xor6.i.i.i110 = xor i32 %xor4.i.i.i109, %or.i12.i.i.i105
  %xor3.i111 = xor i32 %xor6.i.i.i110, %or.i13.i.i.i106
  %add29 = or i32 %i.0180, 2
  %arrayidx30 = getelementptr i32, ptr %rk, i32 %add29
  %28 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx30, align 4
  %xor.i112 = xor i32 %xor3.i, %x.sroa.26.0176
  %xor1.i113 = xor i32 %xor.i112, %29
  %xor2.i114 = xor i32 %xor1.i113, %xor3.i111
  %and.i.i.i115 = and i32 %xor2.i114, 255
  %arrayidx.i.i.i116 = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %and.i.i.i115
  %30 = ptrtoint ptr %arrayidx.i.i.i116 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.i.i116, align 1
  %conv.i.i.i117 = zext i8 %31 to i32
  %shr.i.i.i118 = lshr i32 %xor2.i114, 8
  %and1.i.i.i119 = and i32 %shr.i.i.i118, 255
  %arrayidx2.i.i.i120 = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %and1.i.i.i119
  %32 = ptrtoint ptr %arrayidx2.i.i.i120 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx2.i.i.i120, align 1
  %conv3.i.i.i121 = zext i8 %33 to i32
  %shl.i.i.i122 = shl nuw nsw i32 %conv3.i.i.i121, 8
  %or.i.i.i123 = or i32 %shl.i.i.i122, %conv.i.i.i117
  %shr4.i.i.i124 = lshr i32 %xor2.i114, 16
  %and5.i.i.i125 = and i32 %shr4.i.i.i124, 255
  %arrayidx6.i.i.i126 = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %and5.i.i.i125
  %34 = ptrtoint ptr %arrayidx6.i.i.i126 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx6.i.i.i126, align 1
  %conv7.i.i.i127 = zext i8 %35 to i32
  %shl8.i.i.i128 = shl nuw nsw i32 %conv7.i.i.i127, 16
  %or9.i.i.i129 = or i32 %or.i.i.i123, %shl8.i.i.i128
  %shr10.i.i.i130 = lshr i32 %xor2.i114, 24
  %arrayidx12.i.i.i131 = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %shr10.i.i.i130
  %36 = ptrtoint ptr %arrayidx12.i.i.i131 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx12.i.i.i131, align 1
  %conv13.i.i.i132 = zext i8 %37 to i32
  %shl14.i.i.i133 = shl nuw i32 %conv13.i.i.i132, 24
  %or15.i.i.i134 = or i32 %or9.i.i.i129, %shl14.i.i.i133
  %or.i.i.i.i135 = tail call i32 @llvm.fshl.i32(i32 %or15.i.i.i134, i32 %shl14.i.i.i133, i32 2) #2
  %or.i11.i.i.i136 = tail call i32 @llvm.fshl.i32(i32 %or9.i.i.i129, i32 %or15.i.i.i134, i32 10) #2
  %or.i12.i.i.i137 = tail call i32 @llvm.fshl.i32(i32 %or.i.i.i123, i32 %or15.i.i.i134, i32 18) #2
  %or.i13.i.i.i138 = tail call i32 @llvm.fshl.i32(i32 %conv.i.i.i117, i32 %or15.i.i.i134, i32 24) #2
  %xor.i.i.i139 = xor i32 %or15.i.i.i134, %x.sroa.18.0177
  %xor2.i.i.i140 = xor i32 %xor.i.i.i139, %or.i.i.i.i135
  %xor4.i.i.i141 = xor i32 %xor2.i.i.i140, %or.i11.i.i.i136
  %xor6.i.i.i142 = xor i32 %xor4.i.i.i141, %or.i12.i.i.i137
  %xor3.i143 = xor i32 %xor6.i.i.i142, %or.i13.i.i.i138
  %add37 = or i32 %i.0180, 3
  %arrayidx38 = getelementptr i32, ptr %rk, i32 %add37
  %38 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx38, align 4
  %xor.i144 = xor i32 %xor3.i111, %xor3.i
  %xor1.i145 = xor i32 %xor.i144, %39
  %xor2.i146 = xor i32 %xor1.i145, %xor3.i143
  %and.i.i.i147 = and i32 %xor2.i146, 255
  %arrayidx.i.i.i148 = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %and.i.i.i147
  %40 = ptrtoint ptr %arrayidx.i.i.i148 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i.i.i148, align 1
  %conv.i.i.i149 = zext i8 %41 to i32
  %shr.i.i.i150 = lshr i32 %xor2.i146, 8
  %and1.i.i.i151 = and i32 %shr.i.i.i150, 255
  %arrayidx2.i.i.i152 = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %and1.i.i.i151
  %42 = ptrtoint ptr %arrayidx2.i.i.i152 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx2.i.i.i152, align 1
  %conv3.i.i.i153 = zext i8 %43 to i32
  %shl.i.i.i154 = shl nuw nsw i32 %conv3.i.i.i153, 8
  %or.i.i.i155 = or i32 %shl.i.i.i154, %conv.i.i.i149
  %shr4.i.i.i156 = lshr i32 %xor2.i146, 16
  %and5.i.i.i157 = and i32 %shr4.i.i.i156, 255
  %arrayidx6.i.i.i158 = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %and5.i.i.i157
  %44 = ptrtoint ptr %arrayidx6.i.i.i158 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx6.i.i.i158, align 1
  %conv7.i.i.i159 = zext i8 %45 to i32
  %shl8.i.i.i160 = shl nuw nsw i32 %conv7.i.i.i159, 16
  %or9.i.i.i161 = or i32 %or.i.i.i155, %shl8.i.i.i160
  %shr10.i.i.i162 = lshr i32 %xor2.i146, 24
  %arrayidx12.i.i.i163 = getelementptr [256 x i8], ptr @sbox, i32 0, i32 %shr10.i.i.i162
  %46 = ptrtoint ptr %arrayidx12.i.i.i163 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx12.i.i.i163, align 1
  %conv13.i.i.i164 = zext i8 %47 to i32
  %shl14.i.i.i165 = shl nuw i32 %conv13.i.i.i164, 24
  %or15.i.i.i166 = or i32 %or9.i.i.i161, %shl14.i.i.i165
  %or.i.i.i.i167 = tail call i32 @llvm.fshl.i32(i32 %or15.i.i.i166, i32 %shl14.i.i.i165, i32 2) #2
  %or.i11.i.i.i168 = tail call i32 @llvm.fshl.i32(i32 %or9.i.i.i161, i32 %or15.i.i.i166, i32 10) #2
  %or.i12.i.i.i169 = tail call i32 @llvm.fshl.i32(i32 %or.i.i.i155, i32 %or15.i.i.i166, i32 18) #2
  %or.i13.i.i.i170 = tail call i32 @llvm.fshl.i32(i32 %conv.i.i.i149, i32 %or15.i.i.i166, i32 24) #2
  %xor.i.i.i171 = xor i32 %or15.i.i.i166, %x.sroa.26.0176
  %xor2.i.i.i172 = xor i32 %xor.i.i.i171, %or.i.i.i.i167
  %xor4.i.i.i173 = xor i32 %xor2.i.i.i172, %or.i11.i.i.i168
  %xor6.i.i.i174 = xor i32 %xor4.i.i.i173, %or.i12.i.i.i169
  %xor3.i175 = xor i32 %xor6.i.i.i174, %or.i13.i.i.i170
  %add41 = add nuw nsw i32 %i.0180, 4
  %cmp = icmp ult i32 %i.0180, 28
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %48 = ptrtoint ptr %out to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %xor3.i175, ptr %out, align 1
  %add.ptr45 = getelementptr i8, ptr %out, i32 4
  %49 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %xor3.i143, ptr %add.ptr45, align 1
  %add.ptr47 = getelementptr i8, ptr %out, i32 8
  %50 = ptrtoint ptr %add.ptr47 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %xor3.i111, ptr %add.ptr47, align 1
  %add.ptr49 = getelementptr i8, ptr %out, i32 12
  %51 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %xor3.i, ptr %add.ptr49, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__ksymtab_sm4_expandkey, !1, !"__ksymtab_sm4_expandkey", i1 false, i1 false}
!1 = !{!"../lib/crypto/sm4.c", i32 144, i32 1}
!2 = !{ptr @__ksymtab_sm4_crypt_block, !3, !"__ksymtab_sm4_crypt_block", i1 false, i1 false}
!3 = !{!"../lib/crypto/sm4.c", i32 173, i32 1}
!4 = !{ptr @__UNIQUE_ID_description173, !5, !"__UNIQUE_ID_description173", i1 false, i1 false}
!5 = !{!"../lib/crypto/sm4.c", i32 175, i32 1}
!6 = !{ptr @__UNIQUE_ID_file174, !7, !"__UNIQUE_ID_file174", i1 false, i1 false}
!7 = !{!"../lib/crypto/sm4.c", i32 176, i32 1}
!8 = !{ptr @__UNIQUE_ID_license175, !7, !"__UNIQUE_ID_license175", i1 false, i1 false}
!9 = distinct !{null, !10, !"fk", i1 false, i1 false}
!10 = !{!"../lib/crypto/sm4.c", i32 14, i32 18}
!11 = !{ptr @sbox, !12, !"sbox", i1 false, i1 false}
!12 = !{!"../lib/crypto/sm4.c", i32 29, i32 39}
!13 = !{ptr @ck, !14, !"ck", i1 false, i1 false}
!14 = !{!"../lib/crypto/sm4.c", i32 18, i32 40}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
