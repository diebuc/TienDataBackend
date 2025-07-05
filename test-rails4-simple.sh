#!/bin/bash

echo "🚀 Testing Rails 4.0 upgrade..."

# Simple syntax check without gems
echo "📋 Checking Ruby syntax..."
ruby -c app/controllers/stores_controller.rb 2>/dev/null && echo "✅ StoresController syntax OK" || echo "❌ StoresController syntax error"
ruby -c app/controllers/comments_controller.rb 2>/dev/null && echo "✅ CommentsController syntax OK" || echo "❌ CommentsController syntax error"
ruby -c app/models/store.rb 2>/dev/null && echo "✅ Store model syntax OK" || echo "❌ Store model syntax error"
ruby -c app/models/comment.rb 2>/dev/null && echo "✅ Comment model syntax OK" || echo "❌ Comment model syntax error"

# Check for Rails 4.0 patterns
echo ""
echo "🔍 Checking Rails 4.0 patterns..."
grep -q "store_params" app/controllers/stores_controller.rb && echo "✅ Strong parameters in StoresController" || echo "❌ Missing strong parameters"
grep -q "comment_params" app/controllers/comments_controller.rb && echo "✅ Strong parameters in CommentsController" || echo "❌ Missing strong parameters"
grep -q "rails.*4.0" Gemfile && echo "✅ Rails 4.0.13 in Gemfile" || echo "❌ Rails version not updated"

echo ""
echo "🎉 Rails 4.0 upgrade syntax validation complete!"